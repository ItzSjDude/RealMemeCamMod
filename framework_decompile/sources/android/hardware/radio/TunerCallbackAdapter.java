package android.hardware.radio;

import android.hardware.radio.ITunerCallback;
import android.hardware.radio.ProgramList;
import android.hardware.radio.RadioManager;
import android.hardware.radio.RadioTuner;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
class TunerCallbackAdapter extends ITunerCallback.Stub {
    private static final String TAG = "BroadcastRadio.TunerCallbackAdapter";
    private final RadioTuner.Callback mCallback;
    RadioManager.ProgramInfo mCurrentProgramInfo;
    private final Handler mHandler;
    List<RadioManager.ProgramInfo> mLastCompleteList;
    ProgramList mProgramList;
    private final Object mLock = new Object();
    boolean mIsAntennaConnected = true;
    private boolean mDelayedCompleteCallback = false;

    TunerCallbackAdapter(RadioTuner.Callback callback, Handler handler) {
        this.mCallback = callback;
        if (handler == null) {
            this.mHandler = new Handler(Looper.getMainLooper());
        } else {
            this.mHandler = handler;
        }
    }

    void close() {
        synchronized (this.mLock) {
            ProgramList programList = this.mProgramList;
            if (programList != null) {
                programList.close();
            }
        }
    }

    void setProgramListObserver(final ProgramList programList, final ProgramList.OnCloseListener closeListener) {
        Objects.requireNonNull(closeListener);
        synchronized (this.mLock) {
            if (this.mProgramList != null) {
                Log.w(TAG, "Previous program list observer wasn't properly closed, closing it...");
                this.mProgramList.close();
            }
            this.mProgramList = programList;
            if (programList == null) {
                return;
            }
            programList.setOnCloseListener(new ProgramList.OnCloseListener() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda9
                @Override // android.hardware.radio.ProgramList.OnCloseListener
                public final void onClose() {
                    this.f$0.m1833xf4ad5864(programList, closeListener);
                }
            });
            programList.addOnCompleteListener(new ProgramList.OnCompleteListener() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda10
                @Override // android.hardware.radio.ProgramList.OnCompleteListener
                public final void onComplete() {
                    this.f$0.m1834x8f4e1ae5(programList);
                }
            });
        }
    }

    /* renamed from: lambda$setProgramListObserver$0$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1833xf4ad5864(ProgramList programList, ProgramList.OnCloseListener closeListener) {
        synchronized (this.mLock) {
            if (this.mProgramList != programList) {
                return;
            }
            this.mProgramList = null;
            this.mLastCompleteList = null;
            closeListener.onClose();
        }
    }

    /* renamed from: lambda$setProgramListObserver$1$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1834x8f4e1ae5(ProgramList programList) {
        synchronized (this.mLock) {
            if (this.mProgramList != programList) {
                return;
            }
            this.mLastCompleteList = programList.toList();
            if (this.mDelayedCompleteCallback) {
                Log.d(TAG, "Sending delayed onBackgroundScanComplete callback");
                sendBackgroundScanCompleteLocked();
            }
        }
    }

    List<RadioManager.ProgramInfo> getLastCompleteList() {
        List<RadioManager.ProgramInfo> list;
        synchronized (this.mLock) {
            list = this.mLastCompleteList;
        }
        return list;
    }

    void clearLastCompleteList() {
        synchronized (this.mLock) {
            this.mLastCompleteList = null;
        }
    }

    RadioManager.ProgramInfo getCurrentProgramInformation() {
        RadioManager.ProgramInfo programInfo;
        synchronized (this.mLock) {
            programInfo = this.mCurrentProgramInfo;
        }
        return programInfo;
    }

    boolean isAntennaConnected() {
        return this.mIsAntennaConnected;
    }

    /* renamed from: lambda$onError$2$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1825lambda$onError$2$androidhardwareradioTunerCallbackAdapter(int status) {
        this.mCallback.onError(status);
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onError(final int status) {
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1825lambda$onError$2$androidhardwareradioTunerCallbackAdapter(status);
            }
        });
    }

    /* renamed from: lambda$onTuneFailed$3$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1830x2c76e6c5(int status, ProgramSelector selector) {
        this.mCallback.onTuneFailed(status, selector);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.hardware.radio.ITunerCallback
    public void onTuneFailed(final int status, final ProgramSelector selector) {
        final int errorCode;
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1830x2c76e6c5(status, selector);
            }
        });
        switch (status) {
            case Integer.MIN_VALUE:
            case -38:
            case -22:
            case -19:
                Log.i(TAG, "Got an error with no mapping to the legacy API (" + status + "), doing a best-effort conversion to ERROR_SCAN_TIMEOUT");
                errorCode = 3;
                break;
            case -32:
            case -1:
                errorCode = 1;
                break;
            default:
                errorCode = 3;
                break;
        }
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1831xc717a946(errorCode);
            }
        });
    }

    /* renamed from: lambda$onTuneFailed$4$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1831xc717a946(int errorCode) {
        this.mCallback.onError(errorCode);
    }

    /* renamed from: lambda$onConfigurationChanged$5$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1822xef189790(RadioManager.BandConfig config) {
        this.mCallback.onConfigurationChanged(config);
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onConfigurationChanged(final RadioManager.BandConfig config) {
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1822xef189790(config);
            }
        });
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onCurrentProgramInfoChanged(final RadioManager.ProgramInfo info) {
        if (info == null) {
            Log.e(TAG, "ProgramInfo must not be null");
            return;
        }
        synchronized (this.mLock) {
            this.mCurrentProgramInfo = info;
        }
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1823xd0de1856(info);
            }
        });
    }

    /* renamed from: lambda$onCurrentProgramInfoChanged$6$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1823xd0de1856(RadioManager.ProgramInfo info) {
        this.mCallback.onProgramInfoChanged(info);
        RadioMetadata metadata = info.getMetadata();
        if (metadata != null) {
            this.mCallback.onMetadataChanged(metadata);
        }
    }

    /* renamed from: lambda$onTrafficAnnouncement$7$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1829xd9a5e3a0(boolean active) {
        this.mCallback.onTrafficAnnouncement(active);
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onTrafficAnnouncement(final boolean active) {
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1829xd9a5e3a0(active);
            }
        });
    }

    /* renamed from: lambda$onEmergencyAnnouncement$8$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1824x790317b5(boolean active) {
        this.mCallback.onEmergencyAnnouncement(active);
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onEmergencyAnnouncement(final boolean active) {
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1824x790317b5(active);
            }
        });
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onAntennaState(final boolean connected) {
        this.mIsAntennaConnected = connected;
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1820x8b00c084(connected);
            }
        });
    }

    /* renamed from: lambda$onAntennaState$9$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1820x8b00c084(boolean connected) {
        this.mCallback.onAntennaState(connected);
    }

    /* renamed from: lambda$onBackgroundScanAvailabilityChange$10$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1821x2acc8896(boolean isAvailable) {
        this.mCallback.onBackgroundScanAvailabilityChange(isAvailable);
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onBackgroundScanAvailabilityChange(final boolean isAvailable) {
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1821x2acc8896(isAvailable);
            }
        });
    }

    private void sendBackgroundScanCompleteLocked() {
        this.mDelayedCompleteCallback = false;
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1832x2216d1d6();
            }
        });
    }

    /* renamed from: lambda$sendBackgroundScanCompleteLocked$11$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1832x2216d1d6() {
        this.mCallback.onBackgroundScanComplete();
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onBackgroundScanComplete() {
        synchronized (this.mLock) {
            if (this.mLastCompleteList == null) {
                Log.i(TAG, "Got onBackgroundScanComplete callback, but the program list didn't get through yet. Delaying it...");
                this.mDelayedCompleteCallback = true;
            } else {
                sendBackgroundScanCompleteLocked();
            }
        }
    }

    /* renamed from: lambda$onProgramListChanged$12$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1827x43921f1c() {
        this.mCallback.onProgramListChanged();
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onProgramListChanged() {
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1827x43921f1c();
            }
        });
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onProgramListUpdated(final ProgramList.Chunk chunk) {
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1828x7f0e10b6(chunk);
            }
        });
    }

    /* renamed from: lambda$onProgramListUpdated$13$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1828x7f0e10b6(ProgramList.Chunk chunk) {
        synchronized (this.mLock) {
            ProgramList programList = this.mProgramList;
            if (programList == null) {
                return;
            }
            programList.apply((ProgramList.Chunk) Objects.requireNonNull(chunk));
        }
    }

    /* renamed from: lambda$onParametersUpdated$14$android-hardware-radio-TunerCallbackAdapter, reason: not valid java name */
    /* synthetic */ void m1826xdd159e57(Map parameters) {
        this.mCallback.onParametersUpdated(parameters);
    }

    @Override // android.hardware.radio.ITunerCallback
    public void onParametersUpdated(final Map<String, String> parameters) {
        this.mHandler.post(new Runnable() { // from class: android.hardware.radio.TunerCallbackAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1826xdd159e57(parameters);
            }
        });
    }
}
