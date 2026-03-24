package android.view;

import android.graphics.Matrix;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.view.accessibility.IAccessibilityEmbeddedConnection;

/* loaded from: classes3.dex */
class RemoteAccessibilityController {
    private static final String TAG = "RemoteAccessibilityController";
    private RemoteAccessibilityEmbeddedConnection mConnectionWrapper;
    private int mHostId;
    private View mHostView;
    private Matrix mWindowMatrixForEmbeddedHierarchy = new Matrix();
    private final float[] mMatrixValues = new float[9];

    RemoteAccessibilityController(View v) {
        this.mHostView = v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnUiThread(Runnable runnable) {
        Handler h = this.mHostView.getHandler();
        if (h != null && h.getLooper() != Looper.myLooper()) {
            h.post(runnable);
        } else {
            runnable.run();
        }
    }

    void assosciateHierarchy(IAccessibilityEmbeddedConnection connection, IBinder leashToken, int hostId) {
        this.mHostId = hostId;
        try {
            setRemoteAccessibilityEmbeddedConnection(connection, connection.associateEmbeddedHierarchy(leashToken, hostId));
        } catch (RemoteException e) {
            Log.d(TAG, "Error in associateEmbeddedHierarchy " + e);
        }
    }

    void disassosciateHierarchy() {
        setRemoteAccessibilityEmbeddedConnection(null, null);
    }

    boolean alreadyAssociated(IAccessibilityEmbeddedConnection connection) {
        RemoteAccessibilityEmbeddedConnection remoteAccessibilityEmbeddedConnection = this.mConnectionWrapper;
        if (remoteAccessibilityEmbeddedConnection == null) {
            return false;
        }
        return remoteAccessibilityEmbeddedConnection.mConnection.equals(connection);
    }

    boolean connected() {
        return this.mConnectionWrapper != null;
    }

    IBinder getLeashToken() {
        return this.mConnectionWrapper.getLeashToken();
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class RemoteAccessibilityEmbeddedConnection implements IBinder.DeathRecipient {
        private final IAccessibilityEmbeddedConnection mConnection;
        private final IBinder mLeashToken;

        RemoteAccessibilityEmbeddedConnection(IAccessibilityEmbeddedConnection connection, IBinder leashToken) {
            this.mConnection = connection;
            this.mLeashToken = leashToken;
        }

        IAccessibilityEmbeddedConnection getConnection() {
            return this.mConnection;
        }

        IBinder getLeashToken() {
            return this.mLeashToken;
        }

        void linkToDeath() throws RemoteException {
            this.mConnection.asBinder().linkToDeath(this, 0);
        }

        void unlinkToDeath() {
            this.mConnection.asBinder().unlinkToDeath(this, 0);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            unlinkToDeath();
            RemoteAccessibilityController.this.runOnUiThread(new Runnable() { // from class: android.view.RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m5043x56ec4153();
                }
            });
        }

        /* renamed from: lambda$binderDied$0$android-view-RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection, reason: not valid java name */
        /* synthetic */ void m5043x56ec4153() {
            if (RemoteAccessibilityController.this.mConnectionWrapper == this) {
                RemoteAccessibilityController.this.mConnectionWrapper = null;
            }
        }
    }

    private void setRemoteAccessibilityEmbeddedConnection(IAccessibilityEmbeddedConnection connection, IBinder leashToken) {
        try {
            RemoteAccessibilityEmbeddedConnection remoteAccessibilityEmbeddedConnection = this.mConnectionWrapper;
            if (remoteAccessibilityEmbeddedConnection != null) {
                remoteAccessibilityEmbeddedConnection.getConnection().disassociateEmbeddedHierarchy();
                this.mConnectionWrapper.unlinkToDeath();
                this.mConnectionWrapper = null;
            }
            if (connection != null && leashToken != null) {
                RemoteAccessibilityEmbeddedConnection remoteAccessibilityEmbeddedConnection2 = new RemoteAccessibilityEmbeddedConnection(connection, leashToken);
                this.mConnectionWrapper = remoteAccessibilityEmbeddedConnection2;
                remoteAccessibilityEmbeddedConnection2.linkToDeath();
            }
        } catch (RemoteException e) {
            Log.d(TAG, "Error while setRemoteEmbeddedConnection " + e);
        }
    }

    private RemoteAccessibilityEmbeddedConnection getRemoteAccessibilityEmbeddedConnection() {
        return this.mConnectionWrapper;
    }

    void setWindowMatrix(Matrix m, boolean force) {
        if (!force && m.equals(this.mWindowMatrixForEmbeddedHierarchy)) {
            return;
        }
        try {
            RemoteAccessibilityEmbeddedConnection wrapper = getRemoteAccessibilityEmbeddedConnection();
            if (wrapper == null) {
                return;
            }
            m.getValues(this.mMatrixValues);
            wrapper.getConnection().setWindowMatrix(this.mMatrixValues);
            this.mWindowMatrixForEmbeddedHierarchy.set(m);
        } catch (RemoteException e) {
            Log.d(TAG, "Error while setScreenMatrix " + e);
        }
    }
}
