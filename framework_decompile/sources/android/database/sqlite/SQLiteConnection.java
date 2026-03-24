package android.database.sqlite;

import android.database.CursorWindow;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDebug;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.os.Trace;
import android.telephony.ims.RcsContactPresenceTuple;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import android.util.LruCache;
import android.util.Pair;
import android.util.Printer;
import dalvik.system.BlockGuard;
import dalvik.system.CloseGuard;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.UnaryOperator;

/* loaded from: classes.dex */
public final class SQLiteConnection implements CancellationSignal.OnCancelListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean DEBUG = false;
    private static final String TAG = "SQLiteConnection";
    private int mCancellationSignalAttachCount;
    private final CloseGuard mCloseGuard;
    private final SQLiteDatabaseConfiguration mConfiguration;
    private final int mConnectionId;
    private long mConnectionPtr;
    private final boolean mIsPrimaryConnection;
    private final boolean mIsReadOnlyConnection;
    private boolean mOnlyAllowReadOnlyOperations;
    private final SQLiteConnectionPool mPool;
    private final PreparedStatementCache mPreparedStatementCache;
    private PreparedStatement mPreparedStatementPool;
    private final OperationLog mRecentOperations;
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

    private static native void nativeBindBlob(long j, long j2, int i, byte[] bArr);

    private static native void nativeBindDouble(long j, long j2, int i, double d);

    private static native void nativeBindLong(long j, long j2, int i, long j3);

    private static native void nativeBindNull(long j, long j2, int i);

    private static native void nativeBindString(long j, long j2, int i, String str);

    private static native void nativeCancel(long j);

    private static native void nativeClose(long j);

    private static native void nativeExecute(long j, long j2, boolean z);

    private static native int nativeExecuteForBlobFileDescriptor(long j, long j2);

    private static native int nativeExecuteForChangedRowCount(long j, long j2);

    private static native long nativeExecuteForCursorWindow(long j, long j2, long j3, int i, int i2, boolean z);

    private static native long nativeExecuteForLastInsertedRowId(long j, long j2);

    private static native long nativeExecuteForLong(long j, long j2);

    private static native String nativeExecuteForString(long j, long j2);

    private static native void nativeFinalizeStatement(long j, long j2);

    private static native int nativeGetColumnCount(long j, long j2);

    private static native String nativeGetColumnName(long j, long j2, int i);

    private static native int nativeGetDbLookaside(long j);

    private static native int nativeGetParameterCount(long j, long j2);

    private static native boolean nativeIsReadOnly(long j, long j2);

    private static native long nativeOpen(String str, int i, String str2, boolean z, boolean z2, int i2, int i3);

    private static native long nativePrepareStatement(long j, String str);

    private static native void nativeRegisterCustomAggregateFunction(long j, String str, BinaryOperator<String> binaryOperator);

    private static native void nativeRegisterCustomScalarFunction(long j, String str, UnaryOperator<String> unaryOperator);

    private static native void nativeRegisterLocalizedCollators(long j, String str);

    private static native void nativeResetCancel(long j, boolean z);

    private static native void nativeResetStatementAndClearBindings(long j, long j2);

    private SQLiteConnection(SQLiteConnectionPool pool, SQLiteDatabaseConfiguration configuration, int connectionId, boolean primaryConnection) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mPool = pool;
        this.mRecentOperations = new OperationLog(pool);
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = new SQLiteDatabaseConfiguration(configuration);
        this.mConfiguration = sQLiteDatabaseConfiguration;
        this.mConnectionId = connectionId;
        this.mIsPrimaryConnection = primaryConnection;
        this.mIsReadOnlyConnection = sQLiteDatabaseConfiguration.isReadOnlyDatabase();
        this.mPreparedStatementCache = new PreparedStatementCache(sQLiteDatabaseConfiguration.maxSqlCacheSize);
        closeGuard.open("SQLiteConnection.close");
    }

    protected void finalize() throws Throwable {
        try {
            SQLiteConnectionPool sQLiteConnectionPool = this.mPool;
            if (sQLiteConnectionPool != null && this.mConnectionPtr != 0) {
                sQLiteConnectionPool.onConnectionLeaked();
            }
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    static SQLiteConnection open(SQLiteConnectionPool pool, SQLiteDatabaseConfiguration configuration, int connectionId, boolean primaryConnection) throws IOException {
        SQLiteConnection connection = new SQLiteConnection(pool, configuration, connectionId, primaryConnection);
        try {
            connection.open();
            return connection;
        } catch (SQLiteException ex) {
            connection.dispose(false);
            throw ex;
        }
    }

    void close() {
        dispose(false);
    }

    private void open() throws IOException {
        String file = this.mConfiguration.path;
        int cookie = this.mRecentOperations.beginOperation(RcsContactPresenceTuple.TUPLE_BASIC_STATUS_OPEN, null, null);
        try {
            try {
                this.mConnectionPtr = nativeOpen(file, this.mConfiguration.openFlags, this.mConfiguration.label, SQLiteDebug.NoPreloadHolder.DEBUG_SQL_STATEMENTS, SQLiteDebug.NoPreloadHolder.DEBUG_SQL_TIME, this.mConfiguration.lookasideSlotSize, this.mConfiguration.lookasideSlotCount);
                this.mRecentOperations.endOperation(cookie);
                setPageSize();
                setForeignKeyModeFromConfiguration();
                setJournalFromConfiguration();
                setSyncModeFromConfiguration();
                setJournalSizeLimit();
                setAutoCheckpointInterval();
                setLocaleFromConfiguration();
                setCustomFunctionsFromConfiguration();
                executePerConnectionSqlFromConfiguration(0);
            } catch (SQLiteCantOpenDatabaseException e) {
                StringBuilder message = new StringBuilder("Cannot open database '").append(file).append(DateFormat.QUOTE).append(" with flags 0x").append(Integer.toHexString(this.mConfiguration.openFlags));
                try {
                    Path path = FileSystems.getDefault().getPath(file, new String[0]);
                    Path dir = path.getParent();
                    if (dir == null) {
                        message.append(": Directory not specified in the file path");
                    } else if (!Files.isDirectory(dir, new LinkOption[0])) {
                        message.append(": Directory ").append(dir).append(" doesn't exist");
                    } else if (!Files.exists(path, new LinkOption[0])) {
                        message.append(": File ").append(path).append(" doesn't exist");
                        if ((this.mConfiguration.openFlags & 268435456) != 0) {
                            message.append(" and CREATE_IF_NECESSARY is set, check directory permissions");
                        }
                    } else if (!Files.isReadable(path)) {
                        message.append(": File ").append(path).append(" is not readable");
                    } else if (Files.isDirectory(path, new LinkOption[0])) {
                        message.append(": Path ").append(path).append(" is a directory");
                    } else {
                        message.append(": Unable to deduct failure reason");
                    }
                } catch (Throwable th) {
                    message.append(": Unable to deduct failure reason because filesystem couldn't be examined: ").append(th.getMessage());
                }
                throw new SQLiteCantOpenDatabaseException(message.toString(), e);
            }
        } catch (Throwable th2) {
            this.mRecentOperations.endOperation(cookie);
            throw th2;
        }
    }

    private void dispose(boolean finalized) {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            if (finalized) {
                closeGuard.warnIfOpen();
            }
            this.mCloseGuard.close();
        }
        if (this.mConnectionPtr != 0) {
            int cookie = this.mRecentOperations.beginOperation("close", null, null);
            try {
                this.mPreparedStatementCache.evictAll();
                nativeClose(this.mConnectionPtr);
                this.mConnectionPtr = 0L;
            } finally {
                this.mRecentOperations.endOperation(cookie);
            }
        }
    }

    private void setPageSize() {
        if (!this.mConfiguration.isInMemoryDb() && !this.mIsReadOnlyConnection) {
            long newValue = SQLiteGlobal.getDefaultPageSize();
            long value = executeForLong("PRAGMA page_size", null, null);
            if (value != newValue) {
                execute("PRAGMA page_size=" + newValue, null, null);
            }
        }
    }

    private void setAutoCheckpointInterval() {
        if (!this.mConfiguration.isInMemoryDb() && !this.mIsReadOnlyConnection) {
            long newValue = SQLiteGlobal.getWALAutoCheckpoint();
            long value = executeForLong("PRAGMA wal_autocheckpoint", null, null);
            if (value != newValue) {
                executeForLong("PRAGMA wal_autocheckpoint=" + newValue, null, null);
            }
        }
    }

    private void setJournalSizeLimit() {
        if (!this.mConfiguration.isInMemoryDb() && !this.mIsReadOnlyConnection) {
            long newValue = SQLiteGlobal.getJournalSizeLimit();
            long value = executeForLong("PRAGMA journal_size_limit", null, null);
            if (value != newValue) {
                executeForLong("PRAGMA journal_size_limit=" + newValue, null, null);
            }
        }
    }

    private void setForeignKeyModeFromConfiguration() {
        if (!this.mIsReadOnlyConnection) {
            long newValue = this.mConfiguration.foreignKeyConstraintsEnabled ? 1L : 0L;
            long value = executeForLong("PRAGMA foreign_keys", null, null);
            if (value != newValue) {
                execute("PRAGMA foreign_keys=" + newValue, null, null);
            }
        }
    }

    private void setJournalFromConfiguration() {
        if (!this.mIsReadOnlyConnection) {
            setJournalMode(this.mConfiguration.resolveJournalMode());
            maybeTruncateWalFile();
        } else {
            this.mConfiguration.shouldTruncateWalFile = false;
        }
    }

    private void setSyncModeFromConfiguration() {
        if (!this.mIsReadOnlyConnection) {
            setSyncMode(this.mConfiguration.resolveSyncMode());
        }
    }

    private void maybeTruncateWalFile() {
        if (!this.mConfiguration.shouldTruncateWalFile) {
            return;
        }
        long threshold = SQLiteGlobal.getWALTruncateSize();
        if (threshold == 0) {
            return;
        }
        File walFile = new File(this.mConfiguration.path + "-wal");
        if (!walFile.isFile()) {
            return;
        }
        long size = walFile.length();
        if (size < threshold) {
            return;
        }
        Log.i(TAG, walFile.getAbsolutePath() + " " + size + " bytes: Bigger than " + threshold + "; truncating");
        try {
            executeForString("PRAGMA wal_checkpoint(TRUNCATE)", null, null);
            this.mConfiguration.shouldTruncateWalFile = false;
        } catch (SQLiteException e) {
            Log.w(TAG, "Failed to truncate the -wal file", e);
        }
    }

    private void setSyncMode(String newValue) {
        if (TextUtils.isEmpty(newValue)) {
            return;
        }
        String value = executeForString("PRAGMA synchronous", null, null);
        if (!canonicalizeSyncMode(value).equalsIgnoreCase(canonicalizeSyncMode(newValue))) {
            execute("PRAGMA synchronous=" + newValue, null, null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String canonicalizeSyncMode(java.lang.String r1) {
        /*
            int r0 = r1.hashCode()
            switch(r0) {
                case 48: goto L26;
                case 49: goto L1c;
                case 50: goto L12;
                case 51: goto L8;
                default: goto L7;
            }
        L7:
            goto L30
        L8:
            java.lang.String r0 = "3"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L7
            r0 = 3
            goto L31
        L12:
            java.lang.String r0 = "2"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L7
            r0 = 2
            goto L31
        L1c:
            java.lang.String r0 = "1"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L31
        L26:
            java.lang.String r0 = "0"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L31
        L30:
            r0 = -1
        L31:
            switch(r0) {
                case 0: goto L3e;
                case 1: goto L3b;
                case 2: goto L38;
                case 3: goto L35;
                default: goto L34;
            }
        L34:
            return r1
        L35:
            java.lang.String r0 = "EXTRA"
            return r0
        L38:
            java.lang.String r0 = "FULL"
            return r0
        L3b:
            java.lang.String r0 = "NORMAL"
            return r0
        L3e:
            java.lang.String r0 = "OFF"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.database.sqlite.SQLiteConnection.canonicalizeSyncMode(java.lang.String):java.lang.String");
    }

    private void setJournalMode(String newValue) {
        if (TextUtils.isEmpty(newValue)) {
            return;
        }
        String value = executeForString("PRAGMA journal_mode", null, null);
        if (!value.equalsIgnoreCase(newValue)) {
            try {
                String result = executeForString("PRAGMA journal_mode=" + newValue, null, null);
                if (result.equalsIgnoreCase(newValue)) {
                    return;
                }
            } catch (SQLiteDatabaseLockedException e) {
            }
            Log.w(TAG, "Could not change the database journal mode of '" + this.mConfiguration.label + "' from '" + value + "' to '" + newValue + "' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode.");
        }
    }

    private void setLocaleFromConfiguration() throws IOException {
        String str;
        str = "COMMIT";
        if ((this.mConfiguration.openFlags & 16) != 0) {
            return;
        }
        String newLocale = this.mConfiguration.locale.toString();
        nativeRegisterLocalizedCollators(this.mConnectionPtr, newLocale);
        if (!this.mConfiguration.isInMemoryDb()) {
            checkDatabaseWiped();
        }
        if (this.mIsReadOnlyConnection) {
            return;
        }
        try {
            execute("CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)", null, null);
            String oldLocale = executeForString("SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1", null, null);
            if (oldLocale != null && oldLocale.equals(newLocale)) {
                return;
            }
            execute("BEGIN", null, null);
            try {
                execute("DELETE FROM android_metadata", null, null);
                execute("INSERT INTO android_metadata (locale) VALUES(?)", new Object[]{newLocale}, null);
                execute("REINDEX LOCALIZED", null, null);
                execute(1 == 0 ? "ROLLBACK" : "COMMIT", null, null);
            } catch (Throwable th) {
                if (0 == 0) {
                    str = "ROLLBACK";
                }
                execute(str, null, null);
                throw th;
            }
        } catch (SQLiteException ex) {
            throw ex;
        } catch (RuntimeException ex2) {
            throw new SQLiteException("Failed to change locale for db '" + this.mConfiguration.label + "' to '" + newLocale + "'.", ex2);
        }
    }

    private void setCustomFunctionsFromConfiguration() {
        for (int i = 0; i < this.mConfiguration.customScalarFunctions.size(); i++) {
            nativeRegisterCustomScalarFunction(this.mConnectionPtr, this.mConfiguration.customScalarFunctions.keyAt(i), this.mConfiguration.customScalarFunctions.valueAt(i));
        }
        for (int i2 = 0; i2 < this.mConfiguration.customAggregateFunctions.size(); i2++) {
            nativeRegisterCustomAggregateFunction(this.mConnectionPtr, this.mConfiguration.customAggregateFunctions.keyAt(i2), this.mConfiguration.customAggregateFunctions.valueAt(i2));
        }
    }

    private void executePerConnectionSqlFromConfiguration(int startIndex) {
        for (int i = startIndex; i < this.mConfiguration.perConnectionSql.size(); i++) {
            Pair<String, Object[]> statement = this.mConfiguration.perConnectionSql.get(i);
            int type = DatabaseUtils.getSqlStatementType(statement.first);
            switch (type) {
                case 1:
                    executeForString(statement.first, statement.second, null);
                    break;
                case 7:
                    execute(statement.first, statement.second, null);
                    break;
                default:
                    throw new IllegalArgumentException("Unsupported configuration statement: " + statement);
            }
        }
    }

    private void checkDatabaseWiped() throws IOException {
        if (!SQLiteGlobal.checkDbWipe()) {
            return;
        }
        try {
            File checkFile = new File(this.mConfiguration.path + "-wipecheck");
            boolean hasMetadataTable = executeForLong("SELECT count(*) FROM sqlite_master WHERE type='table' AND name='android_metadata'", null, null) > 0;
            boolean hasCheckFile = checkFile.exists();
            if (!this.mIsReadOnlyConnection && !hasCheckFile) {
                checkFile.createNewFile();
            }
            if (!hasMetadataTable && hasCheckFile) {
                SQLiteDatabase.wipeDetected(this.mConfiguration.path, "unknown");
            }
        } catch (IOException | RuntimeException ex) {
            SQLiteDatabase.wtfAsSystemServer(TAG, "Unexpected exception while checking for wipe", ex);
        }
    }

    void reconfigure(SQLiteDatabaseConfiguration configuration) {
        this.mOnlyAllowReadOnlyOperations = false;
        boolean foreignKeyModeChanged = configuration.foreignKeyConstraintsEnabled != this.mConfiguration.foreignKeyConstraintsEnabled;
        boolean localeChanged = !configuration.locale.equals(this.mConfiguration.locale);
        boolean customScalarFunctionsChanged = !configuration.customScalarFunctions.equals(this.mConfiguration.customScalarFunctions);
        boolean customAggregateFunctionsChanged = !configuration.customAggregateFunctions.equals(this.mConfiguration.customAggregateFunctions);
        int oldSize = this.mConfiguration.perConnectionSql.size();
        int newSize = configuration.perConnectionSql.size();
        boolean perConnectionSqlChanged = newSize > oldSize;
        this.mConfiguration.updateParametersFrom(configuration);
        this.mPreparedStatementCache.resize(configuration.maxSqlCacheSize);
        if (foreignKeyModeChanged) {
            setForeignKeyModeFromConfiguration();
        }
        boolean journalModeChanged = !configuration.resolveJournalMode().equalsIgnoreCase(this.mConfiguration.resolveJournalMode());
        if (journalModeChanged) {
            setJournalFromConfiguration();
        }
        boolean syncModeChanged = true ^ configuration.resolveSyncMode().equalsIgnoreCase(this.mConfiguration.resolveSyncMode());
        if (syncModeChanged) {
            setSyncModeFromConfiguration();
        }
        if (localeChanged) {
            setLocaleFromConfiguration();
        }
        if (customScalarFunctionsChanged || customAggregateFunctionsChanged) {
            setCustomFunctionsFromConfiguration();
        }
        if (perConnectionSqlChanged) {
            executePerConnectionSqlFromConfiguration(oldSize);
        }
    }

    void setOnlyAllowReadOnlyOperations(boolean readOnly) {
        this.mOnlyAllowReadOnlyOperations = readOnly;
    }

    boolean isPreparedStatementInCache(String sql) {
        return this.mPreparedStatementCache.get(sql) != null;
    }

    public int getConnectionId() {
        return this.mConnectionId;
    }

    public boolean isPrimaryConnection() {
        return this.mIsPrimaryConnection;
    }

    public void prepare(String sql, SQLiteStatementInfo outStatementInfo) {
        if (sql == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int cookie = this.mRecentOperations.beginOperation("prepare", sql, null);
        try {
            try {
                PreparedStatement statement = acquirePreparedStatement(sql);
                if (outStatementInfo != null) {
                    try {
                        outStatementInfo.numParameters = statement.mNumParameters;
                        outStatementInfo.readOnly = statement.mReadOnly;
                        int columnCount = nativeGetColumnCount(this.mConnectionPtr, statement.mStatementPtr);
                        if (columnCount == 0) {
                            outStatementInfo.columnNames = EMPTY_STRING_ARRAY;
                        } else {
                            outStatementInfo.columnNames = new String[columnCount];
                            for (int i = 0; i < columnCount; i++) {
                                outStatementInfo.columnNames[i] = nativeGetColumnName(this.mConnectionPtr, statement.mStatementPtr, i);
                            }
                        }
                    } finally {
                        releasePreparedStatement(statement);
                    }
                }
            } catch (RuntimeException ex) {
                this.mRecentOperations.failOperation(cookie, ex);
                throw ex;
            }
        } finally {
            this.mRecentOperations.endOperation(cookie);
        }
    }

    public void execute(String sql, Object[] bindArgs, CancellationSignal cancellationSignal) {
        if (sql == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int cookie = this.mRecentOperations.beginOperation("execute", sql, bindArgs);
        try {
            try {
                boolean isPragmaStmt = DatabaseUtils.getSqlStatementType(sql) == 7;
                PreparedStatement statement = acquirePreparedStatement(sql);
                try {
                    throwIfStatementForbidden(statement);
                    bindArguments(statement, bindArgs);
                    applyBlockGuardPolicy(statement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        nativeExecute(this.mConnectionPtr, statement.mStatementPtr, isPragmaStmt);
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(statement);
                }
            } finally {
                this.mRecentOperations.endOperation(cookie);
            }
        } catch (RuntimeException ex) {
            this.mRecentOperations.failOperation(cookie, ex);
            throw ex;
        }
    }

    public long executeForLong(String sql, Object[] bindArgs, CancellationSignal cancellationSignal) {
        if (sql == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int cookie = this.mRecentOperations.beginOperation("executeForLong", sql, bindArgs);
        try {
            try {
                PreparedStatement statement = acquirePreparedStatement(sql);
                try {
                    throwIfStatementForbidden(statement);
                    bindArguments(statement, bindArgs);
                    applyBlockGuardPolicy(statement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        long ret = nativeExecuteForLong(this.mConnectionPtr, statement.mStatementPtr);
                        this.mRecentOperations.setResult(ret);
                        return ret;
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(statement);
                }
            } finally {
                this.mRecentOperations.endOperation(cookie);
            }
        } catch (RuntimeException ex) {
            this.mRecentOperations.failOperation(cookie, ex);
            throw ex;
        }
    }

    public String executeForString(String sql, Object[] bindArgs, CancellationSignal cancellationSignal) {
        if (sql == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int cookie = this.mRecentOperations.beginOperation("executeForString", sql, bindArgs);
        try {
            try {
                PreparedStatement statement = acquirePreparedStatement(sql);
                try {
                    throwIfStatementForbidden(statement);
                    bindArguments(statement, bindArgs);
                    applyBlockGuardPolicy(statement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        String ret = nativeExecuteForString(this.mConnectionPtr, statement.mStatementPtr);
                        this.mRecentOperations.setResult(ret);
                        return ret;
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(statement);
                }
            } finally {
                this.mRecentOperations.endOperation(cookie);
            }
        } catch (RuntimeException ex) {
            this.mRecentOperations.failOperation(cookie, ex);
            throw ex;
        }
    }

    public ParcelFileDescriptor executeForBlobFileDescriptor(String sql, Object[] bindArgs, CancellationSignal cancellationSignal) {
        if (sql == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int cookie = this.mRecentOperations.beginOperation("executeForBlobFileDescriptor", sql, bindArgs);
        try {
            try {
                PreparedStatement statement = acquirePreparedStatement(sql);
                try {
                    throwIfStatementForbidden(statement);
                    bindArguments(statement, bindArgs);
                    applyBlockGuardPolicy(statement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        int fd = nativeExecuteForBlobFileDescriptor(this.mConnectionPtr, statement.mStatementPtr);
                        return fd >= 0 ? ParcelFileDescriptor.adoptFd(fd) : null;
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(statement);
                }
            } finally {
                this.mRecentOperations.endOperation(cookie);
            }
        } catch (RuntimeException ex) {
            this.mRecentOperations.failOperation(cookie, ex);
            throw ex;
        }
    }

    public int executeForChangedRowCount(String sql, Object[] bindArgs, CancellationSignal cancellationSignal) {
        if (sql == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int changedRows = 0;
        int cookie = this.mRecentOperations.beginOperation("executeForChangedRowCount", sql, bindArgs);
        try {
            try {
                PreparedStatement statement = acquirePreparedStatement(sql);
                try {
                    throwIfStatementForbidden(statement);
                    bindArguments(statement, bindArgs);
                    applyBlockGuardPolicy(statement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        changedRows = nativeExecuteForChangedRowCount(this.mConnectionPtr, statement.mStatementPtr);
                        return changedRows;
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(statement);
                }
            } finally {
                if (this.mRecentOperations.endOperationDeferLog(cookie)) {
                    this.mRecentOperations.logOperation(cookie, "changedRows=" + changedRows);
                }
            }
        } catch (RuntimeException ex) {
            this.mRecentOperations.failOperation(cookie, ex);
            throw ex;
        }
    }

    public long executeForLastInsertedRowId(String sql, Object[] bindArgs, CancellationSignal cancellationSignal) {
        if (sql == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int cookie = this.mRecentOperations.beginOperation("executeForLastInsertedRowId", sql, bindArgs);
        try {
            try {
                PreparedStatement statement = acquirePreparedStatement(sql);
                try {
                    throwIfStatementForbidden(statement);
                    bindArguments(statement, bindArgs);
                    applyBlockGuardPolicy(statement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        return nativeExecuteForLastInsertedRowId(this.mConnectionPtr, statement.mStatementPtr);
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(statement);
                }
            } finally {
                this.mRecentOperations.endOperation(cookie);
            }
        } catch (RuntimeException ex) {
            this.mRecentOperations.failOperation(cookie, ex);
            throw ex;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0181 A[Catch: all -> 0x01b9, TryCatch #14 {all -> 0x01b9, blocks: (B:26:0x0095, B:68:0x0179, B:70:0x0181, B:72:0x01b8), top: B:102:0x002d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int executeForCursorWindow(java.lang.String r26, java.lang.Object[] r27, android.database.CursorWindow r28, int r29, int r30, boolean r31, android.os.CancellationSignal r32) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.database.sqlite.SQLiteConnection.executeForCursorWindow(java.lang.String, java.lang.Object[], android.database.CursorWindow, int, int, boolean, android.os.CancellationSignal):int");
    }

    private PreparedStatement acquirePreparedStatement(String sql) {
        PreparedStatement statement = this.mPreparedStatementCache.get(sql);
        boolean skipCache = false;
        if (statement != null) {
            if (!statement.mInUse) {
                return statement;
            }
            skipCache = true;
        }
        long statementPtr = nativePrepareStatement(this.mConnectionPtr, sql);
        try {
            int numParameters = nativeGetParameterCount(this.mConnectionPtr, statementPtr);
            int type = DatabaseUtils.getSqlStatementType(sql);
            boolean readOnly = nativeIsReadOnly(this.mConnectionPtr, statementPtr);
            statement = obtainPreparedStatement(sql, statementPtr, numParameters, type, readOnly);
            if (!skipCache && isCacheable(type)) {
                this.mPreparedStatementCache.put(sql, statement);
                statement.mInCache = true;
            }
            statement.mInUse = true;
            return statement;
        } catch (RuntimeException ex) {
            if (statement == null || !statement.mInCache) {
                nativeFinalizeStatement(this.mConnectionPtr, statementPtr);
            }
            throw ex;
        }
    }

    private void releasePreparedStatement(PreparedStatement statement) {
        statement.mInUse = false;
        if (statement.mInCache) {
            try {
                nativeResetStatementAndClearBindings(this.mConnectionPtr, statement.mStatementPtr);
                return;
            } catch (SQLiteException e) {
                this.mPreparedStatementCache.remove(statement.mSql);
                return;
            }
        }
        finalizePreparedStatement(statement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finalizePreparedStatement(PreparedStatement statement) {
        nativeFinalizeStatement(this.mConnectionPtr, statement.mStatementPtr);
        recyclePreparedStatement(statement);
    }

    private void attachCancellationSignal(CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
            int i = this.mCancellationSignalAttachCount + 1;
            this.mCancellationSignalAttachCount = i;
            if (i == 1) {
                nativeResetCancel(this.mConnectionPtr, true);
                cancellationSignal.setOnCancelListener(this);
            }
        }
    }

    private void detachCancellationSignal(CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            int i = this.mCancellationSignalAttachCount - 1;
            this.mCancellationSignalAttachCount = i;
            if (i == 0) {
                cancellationSignal.setOnCancelListener(null);
                nativeResetCancel(this.mConnectionPtr, false);
            }
        }
    }

    @Override // android.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        nativeCancel(this.mConnectionPtr);
    }

    private void bindArguments(PreparedStatement statement, Object[] bindArgs) {
        int count = bindArgs != null ? bindArgs.length : 0;
        if (count != statement.mNumParameters) {
            throw new SQLiteBindOrColumnIndexOutOfRangeException("Expected " + statement.mNumParameters + " bind arguments but " + count + " were provided.");
        }
        if (count == 0) {
            return;
        }
        long statementPtr = statement.mStatementPtr;
        for (int i = 0; i < count; i++) {
            Object arg = bindArgs[i];
            switch (DatabaseUtils.getTypeOfObject(arg)) {
                case 0:
                    nativeBindNull(this.mConnectionPtr, statementPtr, i + 1);
                    break;
                case 1:
                    nativeBindLong(this.mConnectionPtr, statementPtr, i + 1, ((Number) arg).longValue());
                    break;
                case 2:
                    nativeBindDouble(this.mConnectionPtr, statementPtr, i + 1, ((Number) arg).doubleValue());
                    break;
                case 3:
                default:
                    if (arg instanceof Boolean) {
                        nativeBindLong(this.mConnectionPtr, statementPtr, i + 1, ((Boolean) arg).booleanValue() ? 1L : 0L);
                        break;
                    } else {
                        nativeBindString(this.mConnectionPtr, statementPtr, i + 1, arg.toString());
                        break;
                    }
                case 4:
                    nativeBindBlob(this.mConnectionPtr, statementPtr, i + 1, (byte[]) arg);
                    break;
            }
        }
    }

    private void throwIfStatementForbidden(PreparedStatement statement) {
        if (this.mOnlyAllowReadOnlyOperations && !statement.mReadOnly) {
            throw new SQLiteException("Cannot execute this statement because it might modify the database but the connection is read-only.");
        }
    }

    private static boolean isCacheable(int statementType) {
        if (statementType == 2 || statementType == 1) {
            return true;
        }
        return false;
    }

    private void applyBlockGuardPolicy(PreparedStatement statement) {
        if (!this.mConfiguration.isInMemoryDb()) {
            if (statement.mReadOnly) {
                BlockGuard.getThreadPolicy().onReadFromDisk();
            } else {
                BlockGuard.getThreadPolicy().onWriteToDisk();
            }
        }
    }

    public void dump(Printer printer, boolean verbose) {
        dumpUnsafe(printer, verbose);
    }

    void dumpUnsafe(Printer printer, boolean verbose) {
        printer.println("Connection #" + this.mConnectionId + ":");
        if (verbose) {
            printer.println("  connectionPtr: 0x" + Long.toHexString(this.mConnectionPtr));
        }
        printer.println("  isPrimaryConnection: " + this.mIsPrimaryConnection);
        printer.println("  onlyAllowReadOnlyOperations: " + this.mOnlyAllowReadOnlyOperations);
        this.mRecentOperations.dump(printer);
        if (verbose) {
            this.mPreparedStatementCache.dump(printer);
        }
    }

    String describeCurrentOperationUnsafe() {
        return this.mRecentOperations.describeCurrentOperation();
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    void collectDbStats(ArrayList<SQLiteDebug.DbStats> dbStatsList) throws Throwable {
        long pageCount;
        long pageSize;
        CursorWindow window;
        int lookaside = nativeGetDbLookaside(this.mConnectionPtr);
        long pageCount2 = 0;
        try {
            pageCount2 = executeForLong("PRAGMA page_count;", null, null);
            long pageSize2 = executeForLong("PRAGMA page_size;", null, null);
            pageCount = pageCount2;
            pageSize = pageSize2;
        } catch (SQLiteException e) {
            pageCount = pageCount2;
            pageSize = 0;
        }
        dbStatsList.add(getMainDbStatsUnsafe(lookaside, pageCount, pageSize));
        CursorWindow window2 = new CursorWindow("collectDbStats");
        CursorWindow window3 = window2;
        try {
            executeForCursorWindow("PRAGMA database_list;", null, window2, 0, 0, false, null);
            int i = 1;
            while (i < window3.getNumRows()) {
                window = window3;
                try {
                    try {
                        String name = window.getString(i, 1);
                        String path = window.getString(i, 2);
                        long pageCount3 = 0;
                        long pageSize3 = 0;
                        try {
                            pageCount3 = executeForLong("PRAGMA " + name + ".page_count;", null, null);
                            long pageSize4 = executeForLong("PRAGMA " + name + ".page_size;", null, null);
                            pageSize3 = pageSize4;
                        } catch (SQLiteException e2) {
                        }
                        StringBuilder label = new StringBuilder("  (attached) ").append(name);
                        if (!path.isEmpty()) {
                            label.append(": ").append(path);
                        }
                        dbStatsList.add(new SQLiteDebug.DbStats(label.toString(), pageCount3, pageSize3, 0, 0, 0, 0));
                        i++;
                        window3 = window;
                    } catch (Throwable th) {
                        th = th;
                        window.close();
                        throw th;
                    }
                } catch (SQLiteException e3) {
                }
            }
            window = window3;
        } catch (SQLiteException e4) {
            window = window3;
        } catch (Throwable th2) {
            th = th2;
            window = window3;
        }
        window.close();
    }

    void collectDbStatsUnsafe(ArrayList<SQLiteDebug.DbStats> dbStatsList) {
        dbStatsList.add(getMainDbStatsUnsafe(0, 0L, 0L));
    }

    private SQLiteDebug.DbStats getMainDbStatsUnsafe(int lookaside, long pageCount, long pageSize) {
        String label;
        if (!this.mIsPrimaryConnection) {
            label = this.mConfiguration.path + " (" + this.mConnectionId + NavigationBarInflaterView.KEY_CODE_END;
        } else {
            label = this.mConfiguration.path;
        }
        return new SQLiteDebug.DbStats(label, pageCount, pageSize, lookaside, this.mPreparedStatementCache.hitCount(), this.mPreparedStatementCache.missCount(), this.mPreparedStatementCache.size());
    }

    public String toString() {
        return "SQLiteConnection: " + this.mConfiguration.path + " (" + this.mConnectionId + NavigationBarInflaterView.KEY_CODE_END;
    }

    private PreparedStatement obtainPreparedStatement(String sql, long statementPtr, int numParameters, int type, boolean readOnly) {
        PreparedStatement statement = this.mPreparedStatementPool;
        if (statement != null) {
            this.mPreparedStatementPool = statement.mPoolNext;
            statement.mPoolNext = null;
            statement.mInCache = false;
        } else {
            statement = new PreparedStatement();
        }
        statement.mSql = sql;
        statement.mStatementPtr = statementPtr;
        statement.mNumParameters = numParameters;
        statement.mType = type;
        statement.mReadOnly = readOnly;
        return statement;
    }

    private void recyclePreparedStatement(PreparedStatement statement) {
        statement.mSql = null;
        statement.mPoolNext = this.mPreparedStatementPool;
        this.mPreparedStatementPool = statement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String trimSqlForDisplay(String sql) {
        return sql.replaceAll("[\\s]*\\n+[\\s]*", " ");
    }

    private static final class PreparedStatement {
        public boolean mInCache;
        public boolean mInUse;
        public int mNumParameters;
        public PreparedStatement mPoolNext;
        public boolean mReadOnly;
        public String mSql;
        public long mStatementPtr;
        public int mType;

        private PreparedStatement() {
        }
    }

    private final class PreparedStatementCache extends LruCache<String, PreparedStatement> {
        public PreparedStatementCache(int size) {
            super(size);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public void entryRemoved(boolean evicted, String key, PreparedStatement oldValue, PreparedStatement newValue) {
            oldValue.mInCache = false;
            if (!oldValue.mInUse) {
                SQLiteConnection.this.finalizePreparedStatement(oldValue);
            }
        }

        public void dump(Printer printer) {
            printer.println("  Prepared statement cache:");
            Map<String, PreparedStatement> cache = snapshot();
            if (!cache.isEmpty()) {
                int i = 0;
                for (Map.Entry<String, PreparedStatement> entry : cache.entrySet()) {
                    PreparedStatement statement = entry.getValue();
                    if (statement.mInCache) {
                        String sql = entry.getKey();
                        printer.println("    " + i + ": statementPtr=0x" + Long.toHexString(statement.mStatementPtr) + ", numParameters=" + statement.mNumParameters + ", type=" + statement.mType + ", readOnly=" + statement.mReadOnly + ", sql=\"" + SQLiteConnection.trimSqlForDisplay(sql) + "\"");
                    }
                    i++;
                }
                return;
            }
            printer.println("    <none>");
        }
    }

    private static final class OperationLog {
        private static final int COOKIE_GENERATION_SHIFT = 8;
        private static final int COOKIE_INDEX_MASK = 255;
        private static final int MAX_RECENT_OPERATIONS = 20;
        private int mGeneration;
        private int mIndex;
        private final SQLiteConnectionPool mPool;
        private String mResultString;
        private final Operation[] mOperations = new Operation[20];
        private long mResultLong = Long.MIN_VALUE;

        OperationLog(SQLiteConnectionPool pool) {
            this.mPool = pool;
        }

        public int beginOperation(String kind, String sql, Object[] bindArgs) {
            int i;
            this.mResultLong = Long.MIN_VALUE;
            this.mResultString = null;
            synchronized (this.mOperations) {
                int index = (this.mIndex + 1) % 20;
                Operation operation = this.mOperations[index];
                if (operation == null) {
                    operation = new Operation();
                    this.mOperations[index] = operation;
                } else {
                    operation.mFinished = false;
                    operation.mException = null;
                    if (operation.mBindArgs != null) {
                        operation.mBindArgs.clear();
                    }
                }
                operation.mStartWallTime = System.currentTimeMillis();
                operation.mStartTime = SystemClock.uptimeMillis();
                operation.mKind = kind;
                operation.mSql = sql;
                operation.mPath = this.mPool.getPath();
                operation.mResultLong = Long.MIN_VALUE;
                operation.mResultString = null;
                if (bindArgs != null) {
                    if (operation.mBindArgs == null) {
                        operation.mBindArgs = new ArrayList<>();
                    } else {
                        operation.mBindArgs.clear();
                    }
                    for (Object arg : bindArgs) {
                        if (arg != null && (arg instanceof byte[])) {
                            operation.mBindArgs.add(SQLiteConnection.EMPTY_BYTE_ARRAY);
                        } else {
                            operation.mBindArgs.add(arg);
                        }
                    }
                }
                int i2 = newOperationCookieLocked(index);
                operation.mCookie = i2;
                if (Trace.isTagEnabled(1048576L)) {
                    Trace.asyncTraceBegin(1048576L, operation.getTraceMethodName(), operation.mCookie);
                }
                this.mIndex = index;
                i = operation.mCookie;
            }
            return i;
        }

        public void failOperation(int cookie, Exception ex) {
            synchronized (this.mOperations) {
                Operation operation = getOperationLocked(cookie);
                if (operation != null) {
                    operation.mException = ex;
                }
            }
        }

        public void endOperation(int cookie) {
            synchronized (this.mOperations) {
                if (endOperationDeferLogLocked(cookie)) {
                    logOperationLocked(cookie, null);
                }
            }
        }

        public boolean endOperationDeferLog(int cookie) {
            boolean zEndOperationDeferLogLocked;
            synchronized (this.mOperations) {
                zEndOperationDeferLogLocked = endOperationDeferLogLocked(cookie);
            }
            return zEndOperationDeferLogLocked;
        }

        public void logOperation(int cookie, String detail) {
            synchronized (this.mOperations) {
                logOperationLocked(cookie, detail);
            }
        }

        public void setResult(long longResult) {
            this.mResultLong = longResult;
        }

        public void setResult(String stringResult) {
            this.mResultString = stringResult;
        }

        private boolean endOperationDeferLogLocked(int cookie) {
            Operation operation = getOperationLocked(cookie);
            if (operation == null) {
                return false;
            }
            if (Trace.isTagEnabled(1048576L)) {
                Trace.asyncTraceEnd(1048576L, operation.getTraceMethodName(), operation.mCookie);
            }
            operation.mEndTime = SystemClock.uptimeMillis();
            operation.mFinished = true;
            long execTime = operation.mEndTime - operation.mStartTime;
            if (execTime > 500) {
                Log.p("Quality", "SlowSQLite: /" + getObfuscateSql(operation.getTraceMethodName()) + "/ cost= /" + execTime);
            }
            this.mPool.onStatementExecuted(execTime);
            if (!SQLiteDebug.NoPreloadHolder.DEBUG_LOG_SLOW_QUERIES || !SQLiteDebug.shouldLogSlowQuery(execTime)) {
                return false;
            }
            return true;
        }

        private String getObfuscateSql(String sqlStr) throws NoSuchAlgorithmException {
            byte[] hash;
            try {
                MessageDigest digest = MessageDigest.getInstance("SHA-256");
                if (digest != null && (hash = digest.digest(sqlStr.getBytes(StandardCharsets.UTF_8))) != null && hash.length > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < hash.length; i++) {
                        sb.append(String.format("%02x", Integer.valueOf(hash[i] & 255)));
                        if (i == 15) {
                            break;
                        }
                    }
                    return sb.toString();
                }
                return "";
            } catch (Exception e) {
                Log.e(SQLiteConnection.TAG, "CatchException getObfuscateSql():" + e.toString());
                return "";
            }
        }

        private void logOperationLocked(int cookie, String detail) {
            Operation operation = getOperationLocked(cookie);
            operation.mResultLong = this.mResultLong;
            operation.mResultString = this.mResultString;
            StringBuilder msg = new StringBuilder();
            operation.describe(msg, true);
            if (detail != null) {
                msg.append(", ").append(detail);
            }
            Log.d(SQLiteConnection.TAG, msg.toString());
        }

        private int newOperationCookieLocked(int index) {
            int generation = this.mGeneration;
            this.mGeneration = generation + 1;
            return (generation << 8) | index;
        }

        private Operation getOperationLocked(int cookie) {
            int index = cookie & 255;
            Operation operation = this.mOperations[index];
            if (operation.mCookie == cookie) {
                return operation;
            }
            return null;
        }

        public String describeCurrentOperation() {
            synchronized (this.mOperations) {
                Operation operation = this.mOperations[this.mIndex];
                if (operation != null && !operation.mFinished) {
                    StringBuilder msg = new StringBuilder();
                    operation.describe(msg, false);
                    return msg.toString();
                }
                return null;
            }
        }

        public void dump(Printer printer) {
            synchronized (this.mOperations) {
                printer.println("  Most recently executed operations:");
                int index = this.mIndex;
                Operation operation = this.mOperations[index];
                if (operation != null) {
                    SimpleDateFormat opDF = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
                    int n = 0;
                    do {
                        StringBuilder msg = new StringBuilder();
                        msg.append("    ").append(n).append(": [");
                        String formattedStartTime = opDF.format(new Date(operation.mStartWallTime));
                        msg.append(formattedStartTime);
                        msg.append("] ");
                        operation.describe(msg, false);
                        printer.println(msg.toString());
                        if (index > 0) {
                            index--;
                        } else {
                            index = 19;
                        }
                        n++;
                        operation = this.mOperations[index];
                        if (operation == null) {
                            break;
                        }
                    } while (n < 20);
                } else {
                    printer.println("    <none>");
                }
            }
        }
    }

    private static final class Operation {
        private static final int MAX_TRACE_METHOD_NAME_LEN = 256;
        public ArrayList<Object> mBindArgs;
        public int mCookie;
        public long mEndTime;
        public Exception mException;
        public boolean mFinished;
        public String mKind;
        public String mPath;
        public long mResultLong;
        public String mResultString;
        public String mSql;
        public long mStartTime;
        public long mStartWallTime;

        private Operation() {
        }

        public void describe(StringBuilder msg, boolean allowDetailedLog) {
            ArrayList<Object> arrayList;
            msg.append(this.mKind);
            if (this.mFinished) {
                msg.append(" took ").append(this.mEndTime - this.mStartTime).append("ms");
            } else {
                msg.append(" started ").append(System.currentTimeMillis() - this.mStartWallTime).append("ms ago");
            }
            msg.append(" - ").append(getStatus());
            if (this.mSql != null) {
                msg.append(", sql=\"").append(SQLiteConnection.trimSqlForDisplay(this.mSql)).append("\"");
            }
            boolean dumpDetails = allowDetailedLog && SQLiteDebug.NoPreloadHolder.DEBUG_LOG_DETAILED && (arrayList = this.mBindArgs) != null && arrayList.size() != 0;
            if (dumpDetails) {
                msg.append(", bindArgs=[");
                int count = this.mBindArgs.size();
                for (int i = 0; i < count; i++) {
                    Object arg = this.mBindArgs.get(i);
                    if (i != 0) {
                        msg.append(", ");
                    }
                    if (arg == null) {
                        msg.append("null");
                    } else if (arg instanceof byte[]) {
                        msg.append("<byte[]>");
                    } else if (arg instanceof String) {
                        msg.append("\"").append((String) arg).append("\"");
                    } else {
                        msg.append(arg);
                    }
                }
                msg.append(NavigationBarInflaterView.SIZE_MOD_END);
            }
            msg.append(", path=").append(this.mPath);
            if (this.mException != null) {
                msg.append(", exception=\"").append(this.mException.getMessage()).append("\"");
            }
            if (this.mResultLong != Long.MIN_VALUE) {
                msg.append(", result=").append(this.mResultLong);
            }
            if (this.mResultString != null) {
                msg.append(", result=\"").append(this.mResultString).append("\"");
            }
        }

        private String getStatus() {
            if (this.mFinished) {
                return this.mException != null ? "failed" : "succeeded";
            }
            return "running";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getTraceMethodName() {
            String methodName = this.mKind + " " + this.mSql;
            if (methodName.length() > 256) {
                return methodName.substring(0, 256);
            }
            return methodName;
        }
    }
}
