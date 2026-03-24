package android.telephony.ims.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.ims.DelegateRegistrationState;
import android.telephony.ims.FeatureTagState;
import android.telephony.ims.SipDelegateConfiguration;
import android.telephony.ims.SipDelegateConnection;
import android.telephony.ims.SipDelegateImsConfiguration;
import android.telephony.ims.SipMessage;
import android.telephony.ims.aidl.ISipDelegateConnectionStateCallback;
import android.telephony.ims.aidl.ISipDelegateMessageCallback;
import android.telephony.ims.stub.DelegateConnectionMessageCallback;
import android.telephony.ims.stub.DelegateConnectionStateCallback;
import android.util.ArraySet;
import android.util.Log;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.UnaryOperator;

/* loaded from: classes3.dex */
public class SipDelegateConnectionAidlWrapper implements SipDelegateConnection, IBinder.DeathRecipient {
    private static final String LOG_TAG = "SipDelegateCAW";
    private final Executor mExecutor;
    private final DelegateConnectionMessageCallback mMessageCallback;
    private final DelegateConnectionStateCallback mStateCallback;
    private final ISipDelegateConnectionStateCallback.Stub mStateBinder = new AnonymousClass1();
    private final ISipDelegateMessageCallback.Stub mMessageBinder = new AnonymousClass2();
    private final AtomicReference<ISipDelegate> mDelegateBinder = new AtomicReference<>();

    /* renamed from: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$1, reason: invalid class name */
    class AnonymousClass1 extends ISipDelegateConnectionStateCallback.Stub {
        AnonymousClass1() {
        }

        @Override // android.telephony.ims.aidl.ISipDelegateConnectionStateCallback
        public void onCreated(ISipDelegate c) {
            SipDelegateConnectionAidlWrapper.this.associateSipDelegate(c);
            long token = Binder.clearCallingIdentity();
            try {
                SipDelegateConnectionAidlWrapper.this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m4545x8bd6dc73();
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* renamed from: lambda$onCreated$0$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1, reason: not valid java name */
        /* synthetic */ void m4545x8bd6dc73() {
            SipDelegateConnectionAidlWrapper.this.mStateCallback.onCreated(SipDelegateConnectionAidlWrapper.this);
        }

        @Override // android.telephony.ims.aidl.ISipDelegateConnectionStateCallback
        public void onFeatureTagStatusChanged(final DelegateRegistrationState registrationState, final List<FeatureTagState> deniedFeatureTags) {
            long token = Binder.clearCallingIdentity();
            try {
                SipDelegateConnectionAidlWrapper.this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m4547xa25b8dca(registrationState, deniedFeatureTags);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* renamed from: lambda$onFeatureTagStatusChanged$1$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1, reason: not valid java name */
        /* synthetic */ void m4547xa25b8dca(DelegateRegistrationState registrationState, List deniedFeatureTags) {
            SipDelegateConnectionAidlWrapper.this.mStateCallback.onFeatureTagStatusChanged(registrationState, new ArraySet(deniedFeatureTags));
        }

        @Override // android.telephony.ims.aidl.ISipDelegateConnectionStateCallback
        public void onImsConfigurationChanged(final SipDelegateImsConfiguration registeredSipConfig) {
            long token = Binder.clearCallingIdentity();
            try {
                SipDelegateConnectionAidlWrapper.this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m4548xdab3295a(registeredSipConfig);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* renamed from: lambda$onImsConfigurationChanged$2$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1, reason: not valid java name */
        /* synthetic */ void m4548xdab3295a(SipDelegateImsConfiguration registeredSipConfig) {
            SipDelegateConnectionAidlWrapper.this.mStateCallback.onImsConfigurationChanged(registeredSipConfig);
        }

        @Override // android.telephony.ims.aidl.ISipDelegateConnectionStateCallback
        public void onConfigurationChanged(final SipDelegateConfiguration registeredSipConfig) {
            long token = Binder.clearCallingIdentity();
            try {
                SipDelegateConnectionAidlWrapper.this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m4544x29c8b4a4(registeredSipConfig);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* renamed from: lambda$onConfigurationChanged$3$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1, reason: not valid java name */
        /* synthetic */ void m4544x29c8b4a4(SipDelegateConfiguration registeredSipConfig) {
            SipDelegateConnectionAidlWrapper.this.mStateCallback.onConfigurationChanged(registeredSipConfig);
        }

        @Override // android.telephony.ims.aidl.ISipDelegateConnectionStateCallback
        public void onDestroyed(final int reason) {
            SipDelegateConnectionAidlWrapper.this.invalidateSipDelegateBinder();
            long token = Binder.clearCallingIdentity();
            try {
                SipDelegateConnectionAidlWrapper.this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m4546x30cdeba8(reason);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* renamed from: lambda$onDestroyed$4$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1, reason: not valid java name */
        /* synthetic */ void m4546x30cdeba8(int reason) {
            SipDelegateConnectionAidlWrapper.this.mStateCallback.onDestroyed(reason);
        }
    }

    /* renamed from: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$2, reason: invalid class name */
    class AnonymousClass2 extends ISipDelegateMessageCallback.Stub {
        AnonymousClass2() {
        }

        @Override // android.telephony.ims.aidl.ISipDelegateMessageCallback
        public void onMessageReceived(final SipMessage message) {
            long token = Binder.clearCallingIdentity();
            try {
                SipDelegateConnectionAidlWrapper.this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m4549x1d20f094(message);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* renamed from: lambda$onMessageReceived$0$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$2, reason: not valid java name */
        /* synthetic */ void m4549x1d20f094(SipMessage message) {
            SipDelegateConnectionAidlWrapper.this.mMessageCallback.onMessageReceived(message);
        }

        @Override // android.telephony.ims.aidl.ISipDelegateMessageCallback
        public void onMessageSent(final String viaTransactionId) {
            long token = Binder.clearCallingIdentity();
            try {
                SipDelegateConnectionAidlWrapper.this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m4551x5ef2b00c(viaTransactionId);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* renamed from: lambda$onMessageSent$1$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$2, reason: not valid java name */
        /* synthetic */ void m4551x5ef2b00c(String viaTransactionId) {
            SipDelegateConnectionAidlWrapper.this.mMessageCallback.onMessageSent(viaTransactionId);
        }

        @Override // android.telephony.ims.aidl.ISipDelegateMessageCallback
        public void onMessageSendFailure(final String viaTransactionId, final int reason) {
            long token = Binder.clearCallingIdentity();
            try {
                SipDelegateConnectionAidlWrapper.this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m4550xf4f310e1(viaTransactionId, reason);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* renamed from: lambda$onMessageSendFailure$2$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$2, reason: not valid java name */
        /* synthetic */ void m4550xf4f310e1(String viaTransactionId, int reason) {
            SipDelegateConnectionAidlWrapper.this.mMessageCallback.onMessageSendFailure(viaTransactionId, reason);
        }
    }

    public SipDelegateConnectionAidlWrapper(Executor executor, DelegateConnectionStateCallback stateCallback, DelegateConnectionMessageCallback messageCallback) {
        this.mExecutor = executor;
        this.mStateCallback = stateCallback;
        this.mMessageCallback = messageCallback;
    }

    @Override // android.telephony.ims.SipDelegateConnection
    public void sendMessage(SipMessage sipMessage, long configVersion) {
        try {
            ISipDelegate conn = getSipDelegateBinder();
            if (conn == null) {
                notifyLocalMessageFailedToSend(sipMessage, 2);
            } else {
                conn.sendMessage(sipMessage, configVersion);
            }
        } catch (RemoteException e) {
            notifyLocalMessageFailedToSend(sipMessage, 1);
        }
    }

    @Override // android.telephony.ims.SipDelegateConnection
    public void notifyMessageReceived(String viaTransactionId) {
        try {
            ISipDelegate conn = getSipDelegateBinder();
            if (conn == null) {
                return;
            }
            conn.notifyMessageReceived(viaTransactionId);
        } catch (RemoteException e) {
        }
    }

    @Override // android.telephony.ims.SipDelegateConnection
    public void notifyMessageReceiveError(String viaTransactionId, int reason) {
        try {
            ISipDelegate conn = getSipDelegateBinder();
            if (conn == null) {
                return;
            }
            conn.notifyMessageReceiveError(viaTransactionId, reason);
        } catch (RemoteException e) {
        }
    }

    @Override // android.telephony.ims.SipDelegateConnection
    public void cleanupSession(String callId) {
        try {
            ISipDelegate conn = getSipDelegateBinder();
            if (conn == null) {
                return;
            }
            conn.cleanupSession(callId);
        } catch (RemoteException e) {
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        invalidateSipDelegateBinder();
        this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m4542x1a0e365();
            }
        });
    }

    /* renamed from: lambda$binderDied$0$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper, reason: not valid java name */
    /* synthetic */ void m4542x1a0e365() {
        this.mStateCallback.onDestroyed(1);
    }

    public ISipDelegateConnectionStateCallback getStateCallbackBinder() {
        return this.mStateBinder;
    }

    public ISipDelegateMessageCallback getMessageCallbackBinder() {
        return this.mMessageBinder;
    }

    public ISipDelegate getSipDelegateBinder() {
        return this.mDelegateBinder.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void associateSipDelegate(ISipDelegate c) {
        if (c != null) {
            try {
                c.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e) {
                c = null;
            }
        }
        this.mDelegateBinder.set(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateSipDelegateBinder() {
        ISipDelegate oldVal = this.mDelegateBinder.getAndUpdate(new UnaryOperator() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return SipDelegateConnectionAidlWrapper.lambda$invalidateSipDelegateBinder$1((ISipDelegate) obj);
            }
        });
        if (oldVal != null) {
            try {
                oldVal.asBinder().unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
                Log.i(LOG_TAG, "invalidateSipDelegateBinder: " + e);
            }
        }
    }

    static /* synthetic */ ISipDelegate lambda$invalidateSipDelegateBinder$1(ISipDelegate unused) {
        return null;
    }

    private void notifyLocalMessageFailedToSend(SipMessage m, final int reason) {
        final String transactionId = m.getViaBranchParameter();
        this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.aidl.SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m4543x16e0acde(transactionId, reason);
            }
        });
    }

    /* renamed from: lambda$notifyLocalMessageFailedToSend$2$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper, reason: not valid java name */
    /* synthetic */ void m4543x16e0acde(String transactionId, int reason) {
        this.mMessageCallback.onMessageSendFailure(transactionId, reason);
    }
}
