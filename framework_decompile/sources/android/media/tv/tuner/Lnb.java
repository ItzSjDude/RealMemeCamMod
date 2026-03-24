package android.media.tv.tuner;

import android.annotation.SystemApi;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

@SystemApi
/* loaded from: classes2.dex */
public class Lnb implements AutoCloseable {
    public static final int EVENT_TYPE_DISEQC_RX_OVERFLOW = 0;
    public static final int EVENT_TYPE_DISEQC_RX_PARITY_ERROR = 2;
    public static final int EVENT_TYPE_DISEQC_RX_TIMEOUT = 1;
    public static final int EVENT_TYPE_LNB_OVERLOAD = 3;
    public static final int POSITION_A = 1;
    public static final int POSITION_B = 2;
    public static final int POSITION_UNDEFINED = 0;
    private static final String TAG = "Lnb";
    public static final int TONE_CONTINUOUS = 1;
    public static final int TONE_NONE = 0;
    public static final int VOLTAGE_11V = 2;
    public static final int VOLTAGE_12V = 3;
    public static final int VOLTAGE_13V = 4;
    public static final int VOLTAGE_14V = 5;
    public static final int VOLTAGE_15V = 6;
    public static final int VOLTAGE_18V = 7;
    public static final int VOLTAGE_19V = 8;
    public static final int VOLTAGE_5V = 1;
    public static final int VOLTAGE_NONE = 0;
    private long mNativeContext;
    Tuner mOwner;
    Map<LnbCallback, Executor> mCallbackMap = new HashMap();
    private final Object mCallbackLock = new Object();
    private Boolean mIsClosed = false;
    private final Object mLock = new Object();

    @Retention(RetentionPolicy.SOURCE)
    public @interface EventType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Position {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Tone {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Voltage {
    }

    private native int nativeClose();

    private native int nativeSendDiseqcMessage(byte[] bArr);

    private native int nativeSetSatellitePosition(int i);

    private native int nativeSetTone(int i);

    private native int nativeSetVoltage(int i);

    private Lnb() {
    }

    void setCallbackAndOwner(Tuner tuner, Executor executor, LnbCallback callback) {
        synchronized (this.mCallbackLock) {
            if (callback != null && executor != null) {
                addCallback(executor, callback);
            }
        }
        setOwner(tuner);
    }

    public void addCallback(Executor executor, LnbCallback callback) {
        Objects.requireNonNull(executor, "executor must not be null");
        Objects.requireNonNull(callback, "callback must not be null");
        synchronized (this.mCallbackLock) {
            this.mCallbackMap.put(callback, executor);
        }
    }

    public boolean removeCallback(LnbCallback callback) {
        boolean result;
        Objects.requireNonNull(callback, "callback must not be null");
        synchronized (this.mCallbackLock) {
            result = this.mCallbackMap.remove(callback) != null;
        }
        return result;
    }

    void setOwner(Tuner newOwner) {
        Objects.requireNonNull(newOwner, "newOwner must not be null");
        synchronized (this.mLock) {
            this.mOwner = newOwner;
        }
    }

    private void onEvent(final int eventType) {
        synchronized (this.mCallbackLock) {
            for (final LnbCallback callback : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(callback);
                if (callback != null && executor != null) {
                    executor.execute(new Runnable() { // from class: android.media.tv.tuner.Lnb$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m2820lambda$onEvent$0$androidmediatvtunerLnb(callback, eventType);
                        }
                    });
                }
            }
        }
    }

    /* renamed from: lambda$onEvent$0$android-media-tv-tuner-Lnb, reason: not valid java name */
    /* synthetic */ void m2820lambda$onEvent$0$androidmediatvtunerLnb(LnbCallback callback, int eventType) {
        synchronized (this.mCallbackLock) {
            if (callback != null) {
                callback.onEvent(eventType);
            }
        }
    }

    private void onDiseqcMessage(final byte[] diseqcMessage) {
        synchronized (this.mCallbackLock) {
            for (final LnbCallback callback : this.mCallbackMap.keySet()) {
                Executor executor = this.mCallbackMap.get(callback);
                if (callback != null && executor != null) {
                    executor.execute(new Runnable() { // from class: android.media.tv.tuner.Lnb$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m2819lambda$onDiseqcMessage$1$androidmediatvtunerLnb(callback, diseqcMessage);
                        }
                    });
                }
            }
        }
    }

    /* renamed from: lambda$onDiseqcMessage$1$android-media-tv-tuner-Lnb, reason: not valid java name */
    /* synthetic */ void m2819lambda$onDiseqcMessage$1$androidmediatvtunerLnb(LnbCallback callback, byte[] diseqcMessage) {
        synchronized (this.mCallbackLock) {
            if (callback != null) {
                callback.onDiseqcMessage(diseqcMessage);
            }
        }
    }

    boolean isClosed() {
        boolean zBooleanValue;
        synchronized (this.mLock) {
            zBooleanValue = this.mIsClosed.booleanValue();
        }
        return zBooleanValue;
    }

    public int setVoltage(int voltage) {
        int iNativeSetVoltage;
        synchronized (this.mLock) {
            TunerUtils.checkResourceState(TAG, this.mIsClosed.booleanValue());
            iNativeSetVoltage = nativeSetVoltage(voltage);
        }
        return iNativeSetVoltage;
    }

    public int setTone(int tone) {
        int iNativeSetTone;
        synchronized (this.mLock) {
            TunerUtils.checkResourceState(TAG, this.mIsClosed.booleanValue());
            iNativeSetTone = nativeSetTone(tone);
        }
        return iNativeSetTone;
    }

    public int setSatellitePosition(int position) {
        int iNativeSetSatellitePosition;
        synchronized (this.mLock) {
            TunerUtils.checkResourceState(TAG, this.mIsClosed.booleanValue());
            iNativeSetSatellitePosition = nativeSetSatellitePosition(position);
        }
        return iNativeSetSatellitePosition;
    }

    public int sendDiseqcMessage(byte[] message) {
        int iNativeSendDiseqcMessage;
        synchronized (this.mLock) {
            TunerUtils.checkResourceState(TAG, this.mIsClosed.booleanValue());
            iNativeSendDiseqcMessage = nativeSendDiseqcMessage(message);
        }
        return iNativeSendDiseqcMessage;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.mLock) {
            if (this.mIsClosed.booleanValue()) {
                return;
            }
            int res = nativeClose();
            if (res != 0) {
                TunerUtils.throwExceptionForResult(res, "Failed to close LNB");
            } else {
                this.mIsClosed = true;
                Tuner tuner = this.mOwner;
                if (tuner != null) {
                    tuner.releaseLnb();
                    this.mOwner = null;
                }
                this.mCallbackMap.clear();
            }
        }
    }
}
