package android.hardware.camera2.impl;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraOfflineSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.impl.CallbackProxies;
import android.hardware.camera2.impl.CameraDeviceImpl;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.utils.TaskDrainer;
import android.hardware.camera2.utils.TaskSingleDrainer;
import android.os.Binder;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.android.internal.util.Preconditions;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public class CameraCaptureSessionImpl extends CameraCaptureSession implements CameraCaptureSessionCore {
    private static final boolean DEBUG = false;
    private static final String TAG = "CameraCaptureSession";
    private final TaskSingleDrainer mAbortDrainer;
    private volatile boolean mAborting;
    private boolean mClosed;
    private final boolean mConfigureSuccess;
    private final Executor mDeviceExecutor;
    private final CameraDeviceImpl mDeviceImpl;
    private final int mId;
    private final String mIdString;
    private final TaskSingleDrainer mIdleDrainer;
    private final Surface mInput;
    private final TaskDrainer<Integer> mSequenceDrainer;
    private boolean mSkipUnconfigure;
    private final CameraCaptureSession.StateCallback mStateCallback;
    private final Executor mStateExecutor;
    private CameraCaptureSessionImplWrapper mWrapper = new CameraCaptureSessionImplWrapper();

    /* JADX WARN: Multi-variable type inference failed */
    CameraCaptureSessionImpl(int i, Surface surface, CameraCaptureSession.StateCallback stateCallback, Executor executor, CameraDeviceImpl cameraDeviceImpl, Executor executor2, boolean z) {
        this.mClosed = false;
        this.mSkipUnconfigure = false;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        if (stateCallback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        this.mId = i;
        String str = String.format("Session %d: ", Integer.valueOf(i));
        this.mIdString = str;
        this.mInput = surface;
        Executor executor3 = (Executor) Preconditions.checkNotNull(executor, "stateExecutor must not be null");
        this.mStateExecutor = executor3;
        CameraCaptureSession.StateCallback stateCallbackCreateUserStateCallbackProxy = createUserStateCallbackProxy(executor3, stateCallback);
        this.mStateCallback = stateCallbackCreateUserStateCallbackProxy;
        Executor executor4 = (Executor) Preconditions.checkNotNull(executor2, "deviceStateExecutor must not be null");
        this.mDeviceExecutor = executor4;
        this.mDeviceImpl = (CameraDeviceImpl) Preconditions.checkNotNull(cameraDeviceImpl, "deviceImpl must not be null");
        this.mSequenceDrainer = new TaskDrainer<>(executor4, new SequenceDrainListener(), "seq");
        this.mIdleDrainer = new TaskSingleDrainer(executor4, new IdleDrainListener(), "idle");
        this.mAbortDrainer = new TaskSingleDrainer(executor4, new AbortDrainListener(), "abort");
        if (z) {
            stateCallbackCreateUserStateCallbackProxy.onConfigured(this);
            this.mConfigureSuccess = true;
        } else {
            stateCallbackCreateUserStateCallbackProxy.onConfigureFailed(this);
            this.mClosed = true;
            Log.e(TAG, str + "Failed to create capture session; configuration failed");
            this.mConfigureSuccess = false;
        }
        this.mSkipUnconfigure = this.mWrapper.getExtImpl().modifySkipUnconfigFlag(this.mSkipUnconfigure);
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public CameraDevice getDevice() {
        return this.mDeviceImpl;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void prepare(Surface surface) throws CameraAccessException {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            this.mDeviceImpl.prepare(surface);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void prepare(int maxCount, Surface surface) throws CameraAccessException {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            this.mDeviceImpl.prepare(maxCount, surface);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void tearDown(Surface surface) throws CameraAccessException {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            this.mDeviceImpl.tearDown(surface);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void finalizeOutputConfigurations(List<OutputConfiguration> outputConfigs) throws CameraAccessException {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            this.mDeviceImpl.finalizeOutputConfigs(outputConfigs);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int capture(CaptureRequest request, CameraCaptureSession.CaptureCallback callback, Handler handler) throws CameraAccessException {
        int iAddPendingSequence;
        checkCaptureRequest(request);
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.capture(request, createCaptureCallbackProxy(CameraDeviceImpl.checkHandler(handler, callback), callback), this.mDeviceExecutor));
        }
        return iAddPendingSequence;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int captureSingleRequest(CaptureRequest request, Executor executor, CameraCaptureSession.CaptureCallback callback) throws CameraAccessException {
        int iAddPendingSequence;
        if (executor == null) {
            throw new IllegalArgumentException("executor must not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        checkCaptureRequest(request);
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.capture(request, createCaptureCallbackProxyWithExecutor(CameraDeviceImpl.checkExecutor(executor, callback), callback), this.mDeviceExecutor));
        }
        return iAddPendingSequence;
    }

    private void checkCaptureRequest(CaptureRequest request) {
        if (request == null) {
            throw new IllegalArgumentException("request must not be null");
        }
        if (request.isReprocess() && !isReprocessable()) {
            throw new IllegalArgumentException("this capture session cannot handle reprocess requests");
        }
        if (!this.mDeviceImpl.isPrivilegedApp() && request.isReprocess() && request.getReprocessableSessionId() != this.mId) {
            throw new IllegalArgumentException("capture request was created for another session");
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int captureBurst(List<CaptureRequest> requests, CameraCaptureSession.CaptureCallback callback, Handler handler) throws CameraAccessException {
        int iAddPendingSequence;
        checkCaptureRequests(requests);
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.captureBurst(requests, createCaptureCallbackProxy(CameraDeviceImpl.checkHandler(handler, callback), callback), this.mDeviceExecutor));
        }
        return iAddPendingSequence;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int captureBurstRequests(List<CaptureRequest> requests, Executor executor, CameraCaptureSession.CaptureCallback callback) throws CameraAccessException {
        int iAddPendingSequence;
        if (executor == null) {
            throw new IllegalArgumentException("executor must not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        checkCaptureRequests(requests);
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.captureBurst(requests, createCaptureCallbackProxyWithExecutor(CameraDeviceImpl.checkExecutor(executor, callback), callback), this.mDeviceExecutor));
        }
        return iAddPendingSequence;
    }

    private void checkCaptureRequests(List<CaptureRequest> requests) {
        if (requests == null) {
            throw new IllegalArgumentException("Requests must not be null");
        }
        if (requests.isEmpty()) {
            throw new IllegalArgumentException("Requests must have at least one element");
        }
        for (CaptureRequest request : requests) {
            if (request.isReprocess()) {
                if (!isReprocessable()) {
                    throw new IllegalArgumentException("This capture session cannot handle reprocess requests");
                }
                if (request.getReprocessableSessionId() != this.mId) {
                    throw new IllegalArgumentException("Capture request was created for another session");
                }
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingRequest(CaptureRequest request, CameraCaptureSession.CaptureCallback callback, Handler handler) throws CameraAccessException {
        int iAddPendingSequence;
        checkRepeatingRequest(request);
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.setRepeatingRequest(request, createCaptureCallbackProxy(CameraDeviceImpl.checkHandler(handler, callback), callback), this.mDeviceExecutor));
        }
        return iAddPendingSequence;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setSingleRepeatingRequest(CaptureRequest request, Executor executor, CameraCaptureSession.CaptureCallback callback) throws CameraAccessException {
        int iAddPendingSequence;
        if (executor == null) {
            throw new IllegalArgumentException("executor must not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        checkRepeatingRequest(request);
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.setRepeatingRequest(request, createCaptureCallbackProxyWithExecutor(CameraDeviceImpl.checkExecutor(executor, callback), callback), this.mDeviceExecutor));
        }
        return iAddPendingSequence;
    }

    private void checkRepeatingRequest(CaptureRequest request) {
        if (request == null) {
            throw new IllegalArgumentException("request must not be null");
        }
        if (request.isReprocess()) {
            throw new IllegalArgumentException("repeating reprocess requests are not supported");
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingBurst(List<CaptureRequest> requests, CameraCaptureSession.CaptureCallback callback, Handler handler) throws CameraAccessException {
        int iAddPendingSequence;
        checkRepeatingRequests(requests);
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.setRepeatingBurst(requests, createCaptureCallbackProxy(CameraDeviceImpl.checkHandler(handler, callback), callback), this.mDeviceExecutor));
        }
        return iAddPendingSequence;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingBurstRequests(List<CaptureRequest> requests, Executor executor, CameraCaptureSession.CaptureCallback callback) throws CameraAccessException {
        int iAddPendingSequence;
        if (executor == null) {
            throw new IllegalArgumentException("executor must not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        checkRepeatingRequests(requests);
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.setRepeatingBurst(requests, createCaptureCallbackProxyWithExecutor(CameraDeviceImpl.checkExecutor(executor, callback), callback), this.mDeviceExecutor));
        }
        return iAddPendingSequence;
    }

    private void checkRepeatingRequests(List<CaptureRequest> requests) {
        if (requests == null) {
            throw new IllegalArgumentException("requests must not be null");
        }
        if (requests.isEmpty()) {
            throw new IllegalArgumentException("requests must have at least one element");
        }
        for (CaptureRequest r : requests) {
            if (r.isReprocess()) {
                throw new IllegalArgumentException("repeating reprocess burst requests are not supported");
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void stopRepeating() throws CameraAccessException {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            this.mDeviceImpl.stopRepeating();
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void abortCaptures() throws CameraAccessException {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            if (this.mAborting) {
                Log.w(TAG, this.mIdString + "abortCaptures - Session is already aborting; doing nothing");
                return;
            }
            this.mAborting = true;
            this.mAbortDrainer.taskStarted();
            this.mDeviceImpl.flush();
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void updateOutputConfiguration(OutputConfiguration config) throws CameraAccessException {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            this.mDeviceImpl.updateOutputConfiguration(config);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public CameraOfflineSession switchToOffline(Collection<Surface> offlineOutputs, Executor executor, CameraOfflineSession.CameraOfflineSessionCallback listener) throws CameraAccessException {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
        }
        return this.mDeviceImpl.switchToOffline(offlineOutputs, executor, listener);
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public boolean supportsOfflineProcessing(Surface surface) {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
        }
        return this.mDeviceImpl.supportsOfflineProcessing(surface);
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public boolean isReprocessable() {
        return this.mInput != null;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public Surface getInputSurface() {
        return this.mInput;
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public void replaceSessionClose() {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            this.mSkipUnconfigure = true;
            close();
        }
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public void closeWithoutDraining() {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            if (this.mClosed) {
                return;
            }
            this.mClosed = true;
            this.mStateCallback.onClosed(this);
            Surface surface = this.mInput;
            if (surface != null) {
                surface.release();
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            if (this.mClosed) {
                return;
            }
            this.mClosed = true;
            try {
                try {
                    this.mDeviceImpl.stopRepeating();
                } catch (CameraAccessException e) {
                    Log.e(TAG, this.mIdString + "Exception while stopping repeating: ", e);
                }
                this.mSequenceDrainer.beginDrain();
                Surface surface = this.mInput;
                if (surface != null) {
                    surface.release();
                }
            } catch (IllegalStateException e2) {
                this.mStateCallback.onClosed(this);
            }
        }
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public boolean isAborting() {
        return this.mAborting;
    }

    private CameraCaptureSession.StateCallback createUserStateCallbackProxy(Executor executor, CameraCaptureSession.StateCallback callback) {
        return new CallbackProxies.SessionStateCallbackProxy(executor, callback);
    }

    private CaptureCallback createCaptureCallbackProxy(Handler handler, CameraCaptureSession.CaptureCallback callback) {
        Executor executor = callback != null ? CameraDeviceImpl.checkAndWrapHandler(handler) : null;
        return createCaptureCallbackProxyWithExecutor(executor, callback);
    }

    /* renamed from: android.hardware.camera2.impl.CameraCaptureSessionImpl$1, reason: invalid class name */
    class AnonymousClass1 extends CaptureCallback {
        final /* synthetic */ CameraCaptureSession.CaptureCallback val$callback;
        final /* synthetic */ Executor val$executor;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Executor executor, CameraCaptureSession.CaptureCallback callback, CameraCaptureSession.CaptureCallback captureCallback, Executor executor2) {
            super(executor, callback);
            this.val$callback = captureCallback;
            this.val$executor = executor2;
        }

        @Override // android.hardware.camera2.impl.CaptureCallback
        public void onCaptureStarted(CameraDevice camera, final CaptureRequest request, final long timestamp, final long frameNumber) {
            if (this.val$callback != null && this.val$executor != null) {
                long ident = Binder.clearCallingIdentity();
                try {
                    Executor executor = this.val$executor;
                    final CameraCaptureSession.CaptureCallback captureCallback = this.val$callback;
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1502x74a933e9(captureCallback, request, timestamp, frameNumber);
                        }
                    });
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }

        /* renamed from: lambda$onCaptureStarted$0$android-hardware-camera2-impl-CameraCaptureSessionImpl$1, reason: not valid java name */
        /* synthetic */ void m1502x74a933e9(CameraCaptureSession.CaptureCallback callback, CaptureRequest request, long timestamp, long frameNumber) {
            callback.onCaptureStarted(CameraCaptureSessionImpl.this, request, timestamp, frameNumber);
        }

        @Override // android.hardware.camera2.impl.CaptureCallback
        public void onCapturePartial(CameraDevice camera, final CaptureRequest request, final CaptureResult result) {
            if (this.val$callback != null && this.val$executor != null) {
                long ident = Binder.clearCallingIdentity();
                try {
                    Executor executor = this.val$executor;
                    final CameraCaptureSession.CaptureCallback captureCallback = this.val$callback;
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl$1$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1498x30fb2208(captureCallback, request, result);
                        }
                    });
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }

        /* renamed from: lambda$onCapturePartial$1$android-hardware-camera2-impl-CameraCaptureSessionImpl$1, reason: not valid java name */
        /* synthetic */ void m1498x30fb2208(CameraCaptureSession.CaptureCallback callback, CaptureRequest request, CaptureResult result) {
            callback.onCapturePartial(CameraCaptureSessionImpl.this, request, result);
        }

        @Override // android.hardware.camera2.impl.CaptureCallback
        public void onCaptureProgressed(CameraDevice camera, final CaptureRequest request, final CaptureResult partialResult) {
            if (this.val$callback != null && this.val$executor != null) {
                long ident = Binder.clearCallingIdentity();
                try {
                    Executor executor = this.val$executor;
                    final CameraCaptureSession.CaptureCallback captureCallback = this.val$callback;
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1499x5ec46528(captureCallback, request, partialResult);
                        }
                    });
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }

        /* renamed from: lambda$onCaptureProgressed$2$android-hardware-camera2-impl-CameraCaptureSessionImpl$1, reason: not valid java name */
        /* synthetic */ void m1499x5ec46528(CameraCaptureSession.CaptureCallback callback, CaptureRequest request, CaptureResult partialResult) {
            callback.onCaptureProgressed(CameraCaptureSessionImpl.this, request, partialResult);
        }

        @Override // android.hardware.camera2.impl.CaptureCallback
        public void onCaptureCompleted(CameraDevice camera, final CaptureRequest request, final TotalCaptureResult result) {
            if (this.val$callback != null && this.val$executor != null) {
                long ident = Binder.clearCallingIdentity();
                try {
                    Executor executor = this.val$executor;
                    final CameraCaptureSession.CaptureCallback captureCallback = this.val$callback;
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl$1$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1496xe8436abc(captureCallback, request, result);
                        }
                    });
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }

        /* renamed from: lambda$onCaptureCompleted$3$android-hardware-camera2-impl-CameraCaptureSessionImpl$1, reason: not valid java name */
        /* synthetic */ void m1496xe8436abc(CameraCaptureSession.CaptureCallback callback, CaptureRequest request, TotalCaptureResult result) {
            callback.onCaptureCompleted(CameraCaptureSessionImpl.this, request, result);
        }

        @Override // android.hardware.camera2.impl.CaptureCallback
        public void onCaptureFailed(CameraDevice camera, final CaptureRequest request, final CaptureFailure failure) {
            if (this.val$callback != null && this.val$executor != null) {
                long ident = Binder.clearCallingIdentity();
                try {
                    Executor executor = this.val$executor;
                    final CameraCaptureSession.CaptureCallback captureCallback = this.val$callback;
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl$1$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1497x5957af15(captureCallback, request, failure);
                        }
                    });
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }

        /* renamed from: lambda$onCaptureFailed$4$android-hardware-camera2-impl-CameraCaptureSessionImpl$1, reason: not valid java name */
        /* synthetic */ void m1497x5957af15(CameraCaptureSession.CaptureCallback callback, CaptureRequest request, CaptureFailure failure) {
            callback.onCaptureFailed(CameraCaptureSessionImpl.this, request, failure);
        }

        @Override // android.hardware.camera2.impl.CaptureCallback
        public void onCaptureSequenceCompleted(CameraDevice camera, final int sequenceId, final long frameNumber) {
            if (this.val$callback != null && this.val$executor != null) {
                long ident = Binder.clearCallingIdentity();
                try {
                    Executor executor = this.val$executor;
                    final CameraCaptureSession.CaptureCallback captureCallback = this.val$callback;
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1501xe5c7aa5b(captureCallback, sequenceId, frameNumber);
                        }
                    });
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            CameraCaptureSessionImpl.this.finishPendingSequence(sequenceId);
        }

        /* renamed from: lambda$onCaptureSequenceCompleted$5$android-hardware-camera2-impl-CameraCaptureSessionImpl$1, reason: not valid java name */
        /* synthetic */ void m1501xe5c7aa5b(CameraCaptureSession.CaptureCallback callback, int sequenceId, long frameNumber) {
            callback.onCaptureSequenceCompleted(CameraCaptureSessionImpl.this, sequenceId, frameNumber);
        }

        @Override // android.hardware.camera2.impl.CaptureCallback
        public void onCaptureSequenceAborted(CameraDevice camera, final int sequenceId) {
            if (this.val$callback != null && this.val$executor != null) {
                long ident = Binder.clearCallingIdentity();
                try {
                    Executor executor = this.val$executor;
                    final CameraCaptureSession.CaptureCallback captureCallback = this.val$callback;
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl$1$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1500x60c8e836(captureCallback, sequenceId);
                        }
                    });
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            CameraCaptureSessionImpl.this.finishPendingSequence(sequenceId);
        }

        /* renamed from: lambda$onCaptureSequenceAborted$6$android-hardware-camera2-impl-CameraCaptureSessionImpl$1, reason: not valid java name */
        /* synthetic */ void m1500x60c8e836(CameraCaptureSession.CaptureCallback callback, int sequenceId) {
            callback.onCaptureSequenceAborted(CameraCaptureSessionImpl.this, sequenceId);
        }

        @Override // android.hardware.camera2.impl.CaptureCallback
        public void onCaptureBufferLost(CameraDevice camera, final CaptureRequest request, final Surface target, final long frameNumber) {
            if (this.val$callback != null && this.val$executor != null) {
                long ident = Binder.clearCallingIdentity();
                try {
                    Executor executor = this.val$executor;
                    final CameraCaptureSession.CaptureCallback captureCallback = this.val$callback;
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl$1$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1495x3d45c5cb(captureCallback, request, target, frameNumber);
                        }
                    });
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
        }

        /* renamed from: lambda$onCaptureBufferLost$7$android-hardware-camera2-impl-CameraCaptureSessionImpl$1, reason: not valid java name */
        /* synthetic */ void m1495x3d45c5cb(CameraCaptureSession.CaptureCallback callback, CaptureRequest request, Surface target, long frameNumber) {
            callback.onCaptureBufferLost(CameraCaptureSessionImpl.this, request, target, frameNumber);
        }
    }

    private CaptureCallback createCaptureCallbackProxyWithExecutor(Executor executor, CameraCaptureSession.CaptureCallback callback) {
        return new AnonymousClass1(executor, callback, callback, executor);
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public CameraDeviceImpl.StateCallbackKK getDeviceStateCallback() {
        final Object interfaceLock = this.mDeviceImpl.mInterfaceLock;
        return new CameraDeviceImpl.StateCallbackKK() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl.2
            private boolean mBusy = false;
            private boolean mActive = false;

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice camera) {
                throw new AssertionError("Camera must already be open before creating a session");
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice camera) {
                CameraCaptureSessionImpl.this.close();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice camera, int error) {
                Log.wtf(CameraCaptureSessionImpl.TAG, CameraCaptureSessionImpl.this.mIdString + "Got device error " + error);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onActive(CameraDevice camera) {
                CameraCaptureSessionImpl.this.mIdleDrainer.taskStarted();
                this.mActive = true;
                CameraCaptureSessionImpl.this.mStateCallback.onActive(this);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onIdle(CameraDevice camera) {
                boolean isAborting;
                synchronized (interfaceLock) {
                    isAborting = CameraCaptureSessionImpl.this.mAborting;
                }
                if (this.mBusy && isAborting) {
                    CameraCaptureSessionImpl.this.mAbortDrainer.taskFinished();
                    synchronized (interfaceLock) {
                        CameraCaptureSessionImpl.this.mAborting = false;
                    }
                }
                if (this.mActive) {
                    CameraCaptureSessionImpl.this.mIdleDrainer.taskFinished();
                }
                this.mBusy = false;
                this.mActive = false;
                CameraCaptureSessionImpl.this.mStateCallback.onReady(this);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onBusy(CameraDevice camera) {
                this.mBusy = true;
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onUnconfigured(CameraDevice camera) {
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onRequestQueueEmpty() {
                CameraCaptureSessionImpl.this.mStateCallback.onCaptureQueueEmpty(this);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onSurfacePrepared(Surface surface) {
                CameraCaptureSessionImpl.this.mStateCallback.onSurfacePrepared(this, surface);
            }
        };
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    private void checkNotClosed() {
        if (this.mClosed) {
            throw new IllegalStateException("Session has been closed; further changes are illegal.");
        }
    }

    private int addPendingSequence(int sequenceId) {
        this.mSequenceDrainer.taskStarted(Integer.valueOf(sequenceId));
        return sequenceId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishPendingSequence(int sequenceId) {
        try {
            this.mSequenceDrainer.taskFinished(Integer.valueOf(sequenceId));
        } catch (IllegalStateException e) {
            Log.w(TAG, e.getMessage());
        }
    }

    private class SequenceDrainListener implements TaskDrainer.DrainListener {
        private SequenceDrainListener() {
        }

        @Override // android.hardware.camera2.utils.TaskDrainer.DrainListener
        public void onDrained() {
            CameraCaptureSessionImpl.this.mStateCallback.onClosed(CameraCaptureSessionImpl.this);
            if (CameraCaptureSessionImpl.this.mSkipUnconfigure) {
                return;
            }
            CameraCaptureSessionImpl.this.mAbortDrainer.beginDrain();
        }
    }

    private class AbortDrainListener implements TaskDrainer.DrainListener {
        private AbortDrainListener() {
        }

        @Override // android.hardware.camera2.utils.TaskDrainer.DrainListener
        public void onDrained() {
            synchronized (CameraCaptureSessionImpl.this.mDeviceImpl.mInterfaceLock) {
                if (CameraCaptureSessionImpl.this.mSkipUnconfigure) {
                    return;
                }
                CameraCaptureSessionImpl.this.mIdleDrainer.beginDrain();
            }
        }
    }

    private class IdleDrainListener implements TaskDrainer.DrainListener {
        private IdleDrainListener() {
        }

        @Override // android.hardware.camera2.utils.TaskDrainer.DrainListener
        public void onDrained() {
            synchronized (CameraCaptureSessionImpl.this.mDeviceImpl.mInterfaceLock) {
                if (CameraCaptureSessionImpl.this.mSkipUnconfigure) {
                    return;
                }
                try {
                    CameraCaptureSessionImpl.this.mDeviceImpl.configureStreamsChecked(null, null, 0, null, SystemClock.uptimeMillis());
                } catch (CameraAccessException e) {
                    Log.e(CameraCaptureSessionImpl.TAG, CameraCaptureSessionImpl.this.mIdString + "Exception while unconfiguring outputs: ", e);
                } catch (IllegalStateException e2) {
                }
            }
        }
    }

    public CameraCaptureSessionImplWrapper getWrapper() {
        return this.mWrapper;
    }

    private class CameraCaptureSessionImplWrapper {
        ICameraCaptureSessionImplExt mCcsExt;

        private CameraCaptureSessionImplWrapper() {
            this.mCcsExt = (ICameraCaptureSessionImplExt) ExtLoader.type(ICameraCaptureSessionImplExt.class).create();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ICameraCaptureSessionImplExt getExtImpl() {
            return this.mCcsExt;
        }
    }
}
