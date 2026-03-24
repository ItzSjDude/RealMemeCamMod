package android.telephony.ims;

import android.os.Binder;
import com.android.internal.telephony.IImsStateCallback;
import com.android.internal.util.FunctionalUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class ImsStateCallback {
    public static final int REASON_IMS_SERVICE_DISCONNECTED = 3;
    public static final int REASON_IMS_SERVICE_NOT_READY = 6;
    public static final int REASON_NO_IMS_SERVICE_CONFIGURED = 4;
    public static final int REASON_SUBSCRIPTION_INACTIVE = 5;
    public static final int REASON_UNKNOWN_PERMANENT_ERROR = 2;
    public static final int REASON_UNKNOWN_TEMPORARY_ERROR = 1;
    private IImsStateCallbackStub mCallback;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DisconnectedReason {
    }

    public abstract void onAvailable();

    /* renamed from: onError, reason: merged with bridge method [inline-methods] */
    public abstract void m4475lambda$binderDied$0$androidtelephonyimsImsStateCallback();

    public abstract void onUnavailable(int i);

    public void init(Executor executor) {
        if (executor == null) {
            throw new IllegalArgumentException("ImsStateCallback Executor must be non-null");
        }
        this.mCallback = new IImsStateCallbackStub(this, executor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class IImsStateCallbackStub extends IImsStateCallback.Stub {
        private Executor mExecutor;
        private WeakReference<ImsStateCallback> mImsStateCallbackWeakRef;

        IImsStateCallbackStub(ImsStateCallback imsStateCallback, Executor executor) {
            this.mImsStateCallbackWeakRef = new WeakReference<>(imsStateCallback);
            this.mExecutor = executor;
        }

        Executor getExecutor() {
            return this.mExecutor;
        }

        @Override // com.android.internal.telephony.IImsStateCallback
        public void onAvailable() {
            final ImsStateCallback callback = this.mImsStateCallbackWeakRef.get();
            if (callback == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.ims.ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4476x194ae13c(callback);
                }
            });
        }

        /* renamed from: lambda$onAvailable$1$android-telephony-ims-ImsStateCallback$IImsStateCallbackStub, reason: not valid java name */
        /* synthetic */ void m4476x194ae13c(final ImsStateCallback callback) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    callback.onAvailable();
                }
            });
        }

        @Override // com.android.internal.telephony.IImsStateCallback
        public void onUnavailable(final int reason) {
            final ImsStateCallback callback = this.mImsStateCallbackWeakRef.get();
            if (callback == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.ims.ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4477xf416cf13(callback, reason);
                }
            });
        }

        /* renamed from: lambda$onUnavailable$3$android-telephony-ims-ImsStateCallback$IImsStateCallbackStub, reason: not valid java name */
        /* synthetic */ void m4477xf416cf13(final ImsStateCallback callback, final int reason) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.ims.ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    callback.onUnavailable(reason);
                }
            });
        }
    }

    public final void binderDied() {
        IImsStateCallbackStub iImsStateCallbackStub = this.mCallback;
        if (iImsStateCallbackStub != null) {
            iImsStateCallbackStub.getExecutor().execute(new Runnable() { // from class: android.telephony.ims.ImsStateCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m4475lambda$binderDied$0$androidtelephonyimsImsStateCallback();
                }
            });
        }
    }

    public IImsStateCallbackStub getCallbackBinder() {
        return this.mCallback;
    }
}
