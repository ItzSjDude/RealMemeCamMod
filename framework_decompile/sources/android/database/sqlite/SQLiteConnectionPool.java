package android.database.sqlite;

import android.database.sqlite.SQLiteDebug;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.OperationCanceledException;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public final class SQLiteConnectionPool implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int CONNECTION_FLAG_INTERACTIVE = 4;
    public static final int CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY = 2;
    public static final int CONNECTION_FLAG_READ_ONLY = 1;
    private static final long CONNECTION_POOL_BUSY_MILLIS = 30000;
    private static final String TAG = "SQLiteConnectionPool";
    private SQLiteConnection mAvailablePrimaryConnection;
    private final SQLiteDatabaseConfiguration mConfiguration;
    private ConnectionWaiter mConnectionWaiterPool;
    private ConnectionWaiter mConnectionWaiterQueue;
    private IdleConnectionHandler mIdleConnectionHandler;
    private boolean mIsOpen;
    private int mMaxConnectionPoolSize;
    private int mNextConnectionId;
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private final Object mLock = new Object();
    private final AtomicBoolean mConnectionLeaked = new AtomicBoolean();
    private final ArrayList<SQLiteConnection> mAvailableNonPrimaryConnections = new ArrayList<>();
    private final AtomicLong mTotalStatementsTime = new AtomicLong(0);
    private final AtomicLong mTotalStatementsCount = new AtomicLong(0);
    private final WeakHashMap<SQLiteConnection, AcquiredConnectionStatus> mAcquiredConnections = new WeakHashMap<>();

    enum AcquiredConnectionStatus {
        NORMAL,
        RECONFIGURE,
        DISCARD
    }

    private SQLiteConnectionPool(SQLiteDatabaseConfiguration configuration) {
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = new SQLiteDatabaseConfiguration(configuration);
        this.mConfiguration = sQLiteDatabaseConfiguration;
        setMaxConnectionPoolSizeLocked();
        if (sQLiteDatabaseConfiguration.idleConnectionTimeoutMs != Long.MAX_VALUE) {
            setupIdleConnectionHandler(Looper.getMainLooper(), sQLiteDatabaseConfiguration.idleConnectionTimeoutMs);
        }
    }

    protected void finalize() throws Throwable {
        try {
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    public static SQLiteConnectionPool open(SQLiteDatabaseConfiguration configuration) {
        if (configuration == null) {
            throw new IllegalArgumentException("configuration must not be null.");
        }
        SQLiteConnectionPool pool = new SQLiteConnectionPool(configuration);
        pool.open();
        return pool;
    }

    private void open() {
        this.mAvailablePrimaryConnection = openConnectionLocked(this.mConfiguration, true);
        synchronized (this.mLock) {
            IdleConnectionHandler idleConnectionHandler = this.mIdleConnectionHandler;
            if (idleConnectionHandler != null) {
                idleConnectionHandler.connectionReleased(this.mAvailablePrimaryConnection);
            }
        }
        this.mIsOpen = true;
        this.mCloseGuard.open("SQLiteConnectionPool.close");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        dispose(false);
    }

    private void dispose(boolean finalized) {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            if (finalized) {
                closeGuard.warnIfOpen();
            }
            this.mCloseGuard.close();
        }
        if (!finalized) {
            synchronized (this.mLock) {
                throwIfClosedLocked();
                this.mIsOpen = false;
                closeAvailableConnectionsAndLogExceptionsLocked();
                int pendingCount = this.mAcquiredConnections.size();
                if (pendingCount != 0) {
                    Log.i(TAG, "The connection pool for " + this.mConfiguration.label + " has been closed but there are still " + pendingCount + " connections in use.  They will be closed as they are released back to the pool.");
                }
                wakeConnectionWaitersLocked();
            }
        }
    }

    public void reconfigure(SQLiteDatabaseConfiguration configuration) {
        if (configuration == null) {
            throw new IllegalArgumentException("configuration must not be null.");
        }
        synchronized (this.mLock) {
            throwIfClosedLocked();
            boolean isWalCurrentMode = this.mConfiguration.resolveJournalMode().equalsIgnoreCase(SQLiteDatabase.JOURNAL_MODE_WAL);
            boolean isWalNewMode = configuration.resolveJournalMode().equalsIgnoreCase(SQLiteDatabase.JOURNAL_MODE_WAL);
            boolean walModeChanged = isWalCurrentMode ^ isWalNewMode;
            if (walModeChanged) {
                if (!this.mAcquiredConnections.isEmpty()) {
                    throw new IllegalStateException("Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first.");
                }
                closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked();
            }
            boolean foreignKeyModeChanged = configuration.foreignKeyConstraintsEnabled != this.mConfiguration.foreignKeyConstraintsEnabled;
            if (foreignKeyModeChanged && !this.mAcquiredConnections.isEmpty()) {
                throw new IllegalStateException("Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first.");
            }
            boolean onlyCompatWalChanged = (this.mConfiguration.openFlags ^ configuration.openFlags) == Integer.MIN_VALUE;
            if (!onlyCompatWalChanged && this.mConfiguration.openFlags != configuration.openFlags) {
                if (walModeChanged) {
                    closeAvailableConnectionsAndLogExceptionsLocked();
                }
                SQLiteConnection newPrimaryConnection = openConnectionLocked(configuration, true);
                closeAvailableConnectionsAndLogExceptionsLocked();
                discardAcquiredConnectionsLocked();
                this.mAvailablePrimaryConnection = newPrimaryConnection;
                this.mConfiguration.updateParametersFrom(configuration);
                setMaxConnectionPoolSizeLocked();
            } else {
                this.mConfiguration.updateParametersFrom(configuration);
                setMaxConnectionPoolSizeLocked();
                closeExcessConnectionsAndLogExceptionsLocked();
                reconfigureAllConnectionsLocked();
            }
            wakeConnectionWaitersLocked();
        }
    }

    public SQLiteConnection acquireConnection(String sql, int connectionFlags, CancellationSignal cancellationSignal) throws Throwable {
        SQLiteConnection con = waitForConnection(sql, connectionFlags, cancellationSignal);
        synchronized (this.mLock) {
            IdleConnectionHandler idleConnectionHandler = this.mIdleConnectionHandler;
            if (idleConnectionHandler != null) {
                idleConnectionHandler.connectionAcquired(con);
            }
        }
        return con;
    }

    public void releaseConnection(SQLiteConnection connection) {
        synchronized (this.mLock) {
            IdleConnectionHandler idleConnectionHandler = this.mIdleConnectionHandler;
            if (idleConnectionHandler != null) {
                idleConnectionHandler.connectionReleased(connection);
            }
            AcquiredConnectionStatus status = this.mAcquiredConnections.remove(connection);
            if (status == null) {
                throw new IllegalStateException("Cannot perform this operation because the specified connection was not acquired from this pool or has already been released.");
            }
            if (!this.mIsOpen) {
                closeConnectionAndLogExceptionsLocked(connection);
            } else if (connection.isPrimaryConnection()) {
                if (recycleConnectionLocked(connection, status)) {
                    this.mAvailablePrimaryConnection = connection;
                }
                wakeConnectionWaitersLocked();
            } else if (this.mAvailableNonPrimaryConnections.size() >= this.mMaxConnectionPoolSize - 1) {
                closeConnectionAndLogExceptionsLocked(connection);
            } else {
                if (recycleConnectionLocked(connection, status)) {
                    this.mAvailableNonPrimaryConnections.add(connection);
                }
                wakeConnectionWaitersLocked();
            }
        }
    }

    private boolean recycleConnectionLocked(SQLiteConnection connection, AcquiredConnectionStatus status) {
        if (status == AcquiredConnectionStatus.RECONFIGURE) {
            try {
                connection.reconfigure(this.mConfiguration);
            } catch (RuntimeException ex) {
                Log.e(TAG, "Failed to reconfigure released connection, closing it: " + connection, ex);
                status = AcquiredConnectionStatus.DISCARD;
            }
        }
        if (status == AcquiredConnectionStatus.DISCARD) {
            closeConnectionAndLogExceptionsLocked(connection);
            return false;
        }
        return true;
    }

    public boolean shouldYieldConnection(SQLiteConnection connection, int connectionFlags) {
        synchronized (this.mLock) {
            if (!this.mAcquiredConnections.containsKey(connection)) {
                throw new IllegalStateException("Cannot perform this operation because the specified connection was not acquired from this pool or has already been released.");
            }
            if (!this.mIsOpen) {
                return false;
            }
            return isSessionBlockingImportantConnectionWaitersLocked(connection.isPrimaryConnection(), connectionFlags);
        }
    }

    public void collectDbStats(ArrayList<SQLiteDebug.DbStats> dbStatsList) {
        synchronized (this.mLock) {
            SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
            if (sQLiteConnection != null) {
                sQLiteConnection.collectDbStats(dbStatsList);
            }
            Iterator<SQLiteConnection> it = this.mAvailableNonPrimaryConnections.iterator();
            while (it.hasNext()) {
                SQLiteConnection connection = it.next();
                connection.collectDbStats(dbStatsList);
            }
            for (SQLiteConnection connection2 : this.mAcquiredConnections.keySet()) {
                connection2.collectDbStatsUnsafe(dbStatsList);
            }
        }
    }

    private SQLiteConnection openConnectionLocked(SQLiteDatabaseConfiguration configuration, boolean primaryConnection) {
        int connectionId = this.mNextConnectionId;
        this.mNextConnectionId = connectionId + 1;
        return SQLiteConnection.open(this, configuration, connectionId, primaryConnection);
    }

    void onConnectionLeaked() {
        Log.w(TAG, "A SQLiteConnection object for database '" + this.mConfiguration.label + "' was leaked!  Please fix your application to end transactions in progress properly and to close the database when it is no longer needed.");
        this.mConnectionLeaked.set(true);
    }

    void onStatementExecuted(long executionTimeMs) {
        this.mTotalStatementsTime.addAndGet(executionTimeMs);
        this.mTotalStatementsCount.incrementAndGet();
    }

    private void closeAvailableConnectionsAndLogExceptionsLocked() {
        closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked();
        SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
        if (sQLiteConnection != null) {
            closeConnectionAndLogExceptionsLocked(sQLiteConnection);
            this.mAvailablePrimaryConnection = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean closeAvailableConnectionLocked(int connectionId) {
        int count = this.mAvailableNonPrimaryConnections.size();
        for (int i = count - 1; i >= 0; i--) {
            SQLiteConnection c = this.mAvailableNonPrimaryConnections.get(i);
            if (c.getConnectionId() == connectionId) {
                closeConnectionAndLogExceptionsLocked(c);
                this.mAvailableNonPrimaryConnections.remove(i);
                return true;
            }
        }
        SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
        if (sQLiteConnection != null && sQLiteConnection.getConnectionId() == connectionId) {
            closeConnectionAndLogExceptionsLocked(this.mAvailablePrimaryConnection);
            this.mAvailablePrimaryConnection = null;
            return true;
        }
        return false;
    }

    private void closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked() {
        int count = this.mAvailableNonPrimaryConnections.size();
        for (int i = 0; i < count; i++) {
            closeConnectionAndLogExceptionsLocked(this.mAvailableNonPrimaryConnections.get(i));
        }
        this.mAvailableNonPrimaryConnections.clear();
    }

    void closeAvailableNonPrimaryConnectionsAndLogExceptions() {
        synchronized (this.mLock) {
            closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked();
        }
    }

    private void closeExcessConnectionsAndLogExceptionsLocked() {
        int availableCount = this.mAvailableNonPrimaryConnections.size();
        while (true) {
            int availableCount2 = availableCount - 1;
            if (availableCount > this.mMaxConnectionPoolSize - 1) {
                SQLiteConnection connection = this.mAvailableNonPrimaryConnections.remove(availableCount2);
                closeConnectionAndLogExceptionsLocked(connection);
                availableCount = availableCount2;
            } else {
                return;
            }
        }
    }

    private void closeConnectionAndLogExceptionsLocked(SQLiteConnection connection) {
        try {
            connection.close();
            IdleConnectionHandler idleConnectionHandler = this.mIdleConnectionHandler;
            if (idleConnectionHandler != null) {
                idleConnectionHandler.connectionClosed(connection);
            }
        } catch (RuntimeException ex) {
            Log.e(TAG, "Failed to close connection, its fate is now in the hands of the merciful GC: " + connection, ex);
        }
    }

    private void discardAcquiredConnectionsLocked() {
        markAcquiredConnectionsLocked(AcquiredConnectionStatus.DISCARD);
    }

    private void reconfigureAllConnectionsLocked() {
        SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
        if (sQLiteConnection != null) {
            try {
                sQLiteConnection.reconfigure(this.mConfiguration);
            } catch (RuntimeException ex) {
                Log.e(TAG, "Failed to reconfigure available primary connection, closing it: " + this.mAvailablePrimaryConnection, ex);
                closeConnectionAndLogExceptionsLocked(this.mAvailablePrimaryConnection);
                this.mAvailablePrimaryConnection = null;
            }
        }
        int count = this.mAvailableNonPrimaryConnections.size();
        int i = 0;
        while (i < count) {
            SQLiteConnection connection = this.mAvailableNonPrimaryConnections.get(i);
            try {
                connection.reconfigure(this.mConfiguration);
            } catch (RuntimeException ex2) {
                Log.e(TAG, "Failed to reconfigure available non-primary connection, closing it: " + connection, ex2);
                closeConnectionAndLogExceptionsLocked(connection);
                this.mAvailableNonPrimaryConnections.remove(i);
                count--;
                i--;
            }
            i++;
        }
        markAcquiredConnectionsLocked(AcquiredConnectionStatus.RECONFIGURE);
    }

    private void markAcquiredConnectionsLocked(AcquiredConnectionStatus status) {
        if (!this.mAcquiredConnections.isEmpty()) {
            ArrayList<SQLiteConnection> keysToUpdate = new ArrayList<>(this.mAcquiredConnections.size());
            for (Map.Entry<SQLiteConnection, AcquiredConnectionStatus> entry : this.mAcquiredConnections.entrySet()) {
                AcquiredConnectionStatus oldStatus = entry.getValue();
                if (status != oldStatus && oldStatus != AcquiredConnectionStatus.DISCARD) {
                    keysToUpdate.add(entry.getKey());
                }
            }
            int updateCount = keysToUpdate.size();
            for (int i = 0; i < updateCount; i++) {
                this.mAcquiredConnections.put(keysToUpdate.get(i), status);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x009d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d2  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:? -> B:80:0x00e2). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.database.sqlite.SQLiteConnection waitForConnection(java.lang.String r22, int r23, android.os.CancellationSignal r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.database.sqlite.SQLiteConnectionPool.waitForConnection(java.lang.String, int, android.os.CancellationSignal):android.database.sqlite.SQLiteConnection");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelConnectionWaiterLocked(ConnectionWaiter waiter) {
        if (waiter.mAssignedConnection != null || waiter.mException != null) {
            return;
        }
        ConnectionWaiter predecessor = null;
        for (ConnectionWaiter current = this.mConnectionWaiterQueue; current != waiter; current = current.mNext) {
            predecessor = current;
        }
        if (predecessor != null) {
            predecessor.mNext = waiter.mNext;
        } else {
            this.mConnectionWaiterQueue = waiter.mNext;
        }
        waiter.mException = new OperationCanceledException();
        LockSupport.unpark(waiter.mThread);
        wakeConnectionWaitersLocked();
    }

    private void logConnectionPoolBusyLocked(long waitMillis, int connectionFlags) {
        Thread thread = Thread.currentThread();
        StringBuilder msg = new StringBuilder();
        msg.append("The connection pool for database '").append(this.mConfiguration.label);
        msg.append("' has been unable to grant a connection to thread ");
        msg.append(thread.getId()).append(" (").append(thread.getName()).append(") ");
        msg.append("with flags 0x").append(Integer.toHexString(connectionFlags));
        msg.append(" for ").append(waitMillis * 0.001f).append(" seconds.\n");
        ArrayList<String> requests = new ArrayList<>();
        int activeConnections = 0;
        int idleConnections = 0;
        if (!this.mAcquiredConnections.isEmpty()) {
            for (SQLiteConnection connection : this.mAcquiredConnections.keySet()) {
                String description = connection.describeCurrentOperationUnsafe();
                if (description != null) {
                    requests.add(description);
                    activeConnections++;
                } else {
                    idleConnections++;
                }
            }
        }
        int availableConnections = this.mAvailableNonPrimaryConnections.size();
        if (this.mAvailablePrimaryConnection != null) {
            availableConnections++;
        }
        msg.append("Connections: ").append(activeConnections).append(" active, ");
        msg.append(idleConnections).append(" idle, ");
        msg.append(availableConnections).append(" available.\n");
        if (!requests.isEmpty()) {
            msg.append("\nRequests in progress:\n");
            Iterator<String> it = requests.iterator();
            while (it.hasNext()) {
                String request = it.next();
                msg.append("  ").append(request).append("\n");
            }
        }
        Log.w(TAG, msg.toString());
    }

    private void wakeConnectionWaitersLocked() {
        ConnectionWaiter predecessor = null;
        ConnectionWaiter waiter = this.mConnectionWaiterQueue;
        boolean primaryConnectionNotAvailable = false;
        boolean nonPrimaryConnectionNotAvailable = false;
        while (waiter != null) {
            boolean unpark = false;
            if (!this.mIsOpen) {
                unpark = true;
            } else {
                SQLiteConnection connection = null;
                try {
                    if (!waiter.mWantPrimaryConnection && !nonPrimaryConnectionNotAvailable && (connection = tryAcquireNonPrimaryConnectionLocked(waiter.mSql, waiter.mConnectionFlags)) == null) {
                        nonPrimaryConnectionNotAvailable = true;
                    }
                    if (connection == null && !primaryConnectionNotAvailable && (connection = tryAcquirePrimaryConnectionLocked(waiter.mConnectionFlags)) == null) {
                        primaryConnectionNotAvailable = true;
                    }
                    if (connection != null) {
                        waiter.mAssignedConnection = connection;
                        unpark = true;
                    } else if (nonPrimaryConnectionNotAvailable && primaryConnectionNotAvailable) {
                        return;
                    }
                } catch (RuntimeException ex) {
                    waiter.mException = ex;
                    unpark = true;
                }
            }
            ConnectionWaiter successor = waiter.mNext;
            if (unpark) {
                if (predecessor != null) {
                    predecessor.mNext = successor;
                } else {
                    this.mConnectionWaiterQueue = successor;
                }
                waiter.mNext = null;
                LockSupport.unpark(waiter.mThread);
            } else {
                predecessor = waiter;
            }
            waiter = successor;
        }
    }

    private SQLiteConnection tryAcquirePrimaryConnectionLocked(int connectionFlags) {
        SQLiteConnection connection = this.mAvailablePrimaryConnection;
        if (connection != null) {
            this.mAvailablePrimaryConnection = null;
            finishAcquireConnectionLocked(connection, connectionFlags);
            return connection;
        }
        for (SQLiteConnection acquiredConnection : this.mAcquiredConnections.keySet()) {
            if (acquiredConnection.isPrimaryConnection()) {
                return null;
            }
        }
        SQLiteConnection connection2 = openConnectionLocked(this.mConfiguration, true);
        finishAcquireConnectionLocked(connection2, connectionFlags);
        return connection2;
    }

    private SQLiteConnection tryAcquireNonPrimaryConnectionLocked(String sql, int connectionFlags) {
        int availableCount = this.mAvailableNonPrimaryConnections.size();
        if (availableCount > 1 && sql != null) {
            for (int i = 0; i < availableCount; i++) {
                SQLiteConnection connection = this.mAvailableNonPrimaryConnections.get(i);
                if (connection.isPreparedStatementInCache(sql)) {
                    this.mAvailableNonPrimaryConnections.remove(i);
                    finishAcquireConnectionLocked(connection, connectionFlags);
                    return connection;
                }
            }
        }
        if (availableCount > 0) {
            SQLiteConnection connection2 = this.mAvailableNonPrimaryConnections.remove(availableCount - 1);
            finishAcquireConnectionLocked(connection2, connectionFlags);
            return connection2;
        }
        int openConnections = this.mAcquiredConnections.size();
        if (this.mAvailablePrimaryConnection != null) {
            openConnections++;
        }
        if (openConnections >= this.mMaxConnectionPoolSize) {
            return null;
        }
        SQLiteConnection connection3 = openConnectionLocked(this.mConfiguration, false);
        finishAcquireConnectionLocked(connection3, connectionFlags);
        return connection3;
    }

    private void finishAcquireConnectionLocked(SQLiteConnection connection, int connectionFlags) {
        boolean readOnly = (connectionFlags & 1) != 0;
        try {
            connection.setOnlyAllowReadOnlyOperations(readOnly);
            this.mAcquiredConnections.put(connection, AcquiredConnectionStatus.NORMAL);
        } catch (RuntimeException ex) {
            Log.e(TAG, "Failed to prepare acquired connection for session, closing it: " + connection + ", connectionFlags=" + connectionFlags);
            closeConnectionAndLogExceptionsLocked(connection);
            throw ex;
        }
    }

    private boolean isSessionBlockingImportantConnectionWaitersLocked(boolean holdingPrimaryConnection, int connectionFlags) {
        ConnectionWaiter waiter = this.mConnectionWaiterQueue;
        if (waiter != null) {
            int priority = getPriority(connectionFlags);
            while (priority <= waiter.mPriority) {
                if (holdingPrimaryConnection || !waiter.mWantPrimaryConnection) {
                    return true;
                }
                waiter = waiter.mNext;
                if (waiter == null) {
                    return false;
                }
            }
            return false;
        }
        return false;
    }

    private static int getPriority(int connectionFlags) {
        return (connectionFlags & 4) != 0 ? 1 : 0;
    }

    private void setMaxConnectionPoolSizeLocked() {
        if (this.mConfiguration.resolveJournalMode().equalsIgnoreCase(SQLiteDatabase.JOURNAL_MODE_WAL)) {
            this.mMaxConnectionPoolSize = SQLiteGlobal.getWALConnectionPoolSize();
        } else {
            this.mMaxConnectionPoolSize = 1;
        }
    }

    public void setupIdleConnectionHandler(Looper looper, long timeoutMs) {
        synchronized (this.mLock) {
            this.mIdleConnectionHandler = new IdleConnectionHandler(looper, timeoutMs);
        }
    }

    void disableIdleConnectionHandler() {
        synchronized (this.mLock) {
            this.mIdleConnectionHandler = null;
        }
    }

    private void throwIfClosedLocked() {
        if (!this.mIsOpen) {
            throw new IllegalStateException("Cannot perform this operation because the connection pool has been closed.");
        }
    }

    private ConnectionWaiter obtainConnectionWaiterLocked(Thread thread, long startTime, int priority, boolean wantPrimaryConnection, String sql, int connectionFlags) {
        ConnectionWaiter waiter = this.mConnectionWaiterPool;
        if (waiter != null) {
            this.mConnectionWaiterPool = waiter.mNext;
            waiter.mNext = null;
        } else {
            waiter = new ConnectionWaiter();
        }
        waiter.mThread = thread;
        waiter.mStartTime = startTime;
        waiter.mPriority = priority;
        waiter.mWantPrimaryConnection = wantPrimaryConnection;
        waiter.mSql = sql;
        waiter.mConnectionFlags = connectionFlags;
        return waiter;
    }

    private void recycleConnectionWaiterLocked(ConnectionWaiter waiter) {
        waiter.mNext = this.mConnectionWaiterPool;
        waiter.mThread = null;
        waiter.mSql = null;
        waiter.mAssignedConnection = null;
        waiter.mException = null;
        waiter.mNonce++;
        this.mConnectionWaiterPool = waiter;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x013a A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x015c A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0191 A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x01b4 A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01b8 A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01ca A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01e2 A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01f4 A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x022f A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x023d A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x029a A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00ad A[Catch: all -> 0x02a1, TryCatch #0 {, blocks: (B:5:0x000b, B:6:0x001b, B:8:0x00ad, B:9:0x00d0, B:11:0x013a, B:12:0x0154, B:14:0x015c, B:15:0x0184, B:17:0x0191, B:18:0x01ab, B:20:0x01b4, B:22:0x01bd, B:24:0x01ca, B:26:0x01d3, B:29:0x01e7, B:31:0x01f4, B:32:0x01fe, B:34:0x0204, B:37:0x0234, B:39:0x023d, B:41:0x0246, B:44:0x029f, B:43:0x029a, B:36:0x022f, B:28:0x01e2, B:21:0x01b8), top: B:49:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dump(android.util.Printer r11, boolean r12, android.util.ArraySet<java.lang.String> r13) {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.database.sqlite.SQLiteConnectionPool.dump(android.util.Printer, boolean, android.util.ArraySet):void");
    }

    public long getTotalStatementsTime() {
        return this.mTotalStatementsTime.get();
    }

    public long getTotalStatementsCount() {
        return this.mTotalStatementsCount.get();
    }

    public String toString() {
        return "SQLiteConnectionPool: " + this.mConfiguration.path;
    }

    public String getPath() {
        return this.mConfiguration.path;
    }

    private static final class ConnectionWaiter {
        public SQLiteConnection mAssignedConnection;
        public int mConnectionFlags;
        public RuntimeException mException;
        public ConnectionWaiter mNext;
        public int mNonce;
        public int mPriority;
        public String mSql;
        public long mStartTime;
        public Thread mThread;
        public boolean mWantPrimaryConnection;

        private ConnectionWaiter() {
        }
    }

    private class IdleConnectionHandler extends Handler {
        private final long mTimeout;

        IdleConnectionHandler(Looper looper, long timeout) {
            super(looper);
            this.mTimeout = timeout;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            synchronized (SQLiteConnectionPool.this.mLock) {
                if (this != SQLiteConnectionPool.this.mIdleConnectionHandler) {
                    return;
                }
                if (SQLiteConnectionPool.this.closeAvailableConnectionLocked(msg.what) && Log.isLoggable(SQLiteConnectionPool.TAG, 3)) {
                    Log.d(SQLiteConnectionPool.TAG, "Closed idle connection " + SQLiteConnectionPool.this.mConfiguration.label + " " + msg.what + " after " + this.mTimeout);
                }
            }
        }

        void connectionReleased(SQLiteConnection con) {
            sendEmptyMessageDelayed(con.getConnectionId(), this.mTimeout);
        }

        void connectionAcquired(SQLiteConnection con) {
            removeMessages(con.getConnectionId());
        }

        void connectionClosed(SQLiteConnection con) {
            removeMessages(con.getConnectionId());
        }
    }
}
