package android.telephony;

import android.Manifest;
import android.annotation.SystemApi;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Looper;
import android.telephony.PhoneStateListener;
import android.telephony.emergency.EmergencyNumber;
import android.telephony.ims.ImsReasonInfo;
import com.android.internal.telephony.IPhoneStateListener;
import com.android.internal.util.FunctionalUtils;
import com.oplus.permission.IOplusPermissionCheckInjectorExt;
import dalvik.system.VMRuntime;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import system.ext.loader.core.ExtLoader;

@Deprecated
/* loaded from: classes3.dex */
public class PhoneStateListener {
    private static final boolean DBG = false;

    @Deprecated
    public static final int LISTEN_ACTIVE_DATA_SUBSCRIPTION_ID_CHANGE = 4194304;

    @Deprecated
    public static final int LISTEN_BARRING_INFO = Integer.MIN_VALUE;

    @SystemApi
    @Deprecated
    public static final int LISTEN_CALL_ATTRIBUTES_CHANGED = 67108864;

    @Deprecated
    public static final int LISTEN_CALL_DISCONNECT_CAUSES = 33554432;

    @Deprecated
    public static final int LISTEN_CALL_FORWARDING_INDICATOR = 8;

    @Deprecated
    public static final int LISTEN_CALL_STATE = 32;

    @Deprecated
    public static final int LISTEN_CARRIER_NETWORK_CHANGE = 65536;

    @Deprecated
    public static final int LISTEN_CELL_INFO = 1024;

    @Deprecated
    public static final int LISTEN_CELL_LOCATION = 16;

    @Deprecated
    public static final int LISTEN_DATA_ACTIVATION_STATE = 262144;

    @Deprecated
    public static final int LISTEN_DATA_ACTIVITY = 128;

    @Deprecated
    public static final int LISTEN_DATA_CONNECTION_REAL_TIME_INFO = 8192;

    @Deprecated
    public static final int LISTEN_DATA_CONNECTION_STATE = 64;

    @Deprecated
    public static final int LISTEN_DISPLAY_INFO_CHANGED = 1048576;

    @Deprecated
    public static final int LISTEN_EMERGENCY_NUMBER_LIST = 16777216;

    @Deprecated
    public static final int LISTEN_IMS_CALL_DISCONNECT_CAUSES = 134217728;

    @Deprecated
    public static final int LISTEN_MESSAGE_WAITING_INDICATOR = 4;
    public static final int LISTEN_NONE = 0;

    @Deprecated
    public static final int LISTEN_OEM_HOOK_RAW_EVENT = 32768;

    @SystemApi
    @Deprecated
    public static final int LISTEN_OUTGOING_EMERGENCY_CALL = 268435456;

    @SystemApi
    @Deprecated
    public static final int LISTEN_OUTGOING_EMERGENCY_SMS = 536870912;

    @Deprecated
    public static final int LISTEN_PHONE_CAPABILITY_CHANGE = 2097152;

    @SystemApi
    @Deprecated
    public static final int LISTEN_PRECISE_CALL_STATE = 2048;

    @Deprecated
    public static final int LISTEN_PRECISE_DATA_CONNECTION_STATE = 4096;

    @SystemApi
    @Deprecated
    public static final int LISTEN_RADIO_POWER_STATE_CHANGED = 8388608;

    @Deprecated
    public static final int LISTEN_REGISTRATION_FAILURE = 1073741824;

    @Deprecated
    public static final int LISTEN_SERVICE_STATE = 1;

    @Deprecated
    public static final int LISTEN_SIGNAL_STRENGTH = 2;

    @Deprecated
    public static final int LISTEN_SIGNAL_STRENGTHS = 256;

    @SystemApi
    @Deprecated
    public static final int LISTEN_SRVCC_STATE_CHANGED = 16384;

    @Deprecated
    public static final int LISTEN_USER_MOBILE_DATA_STATE = 524288;

    @SystemApi
    @Deprecated
    public static final int LISTEN_VOICE_ACTIVATION_STATE = 131072;
    private static final String LOG_TAG = "PhoneStateListener";
    public final IPhoneStateListener callback;
    protected Integer mSubId;

    public PhoneStateListener() {
        this((Integer) null, Looper.myLooper());
    }

    public PhoneStateListener(Looper looper) {
        this((Integer) null, looper);
    }

    public PhoneStateListener(Integer subId) {
        this(subId, Looper.myLooper());
        if (subId != null && VMRuntime.getRuntime().getTargetSdkVersion() >= 29) {
            throw new IllegalArgumentException("PhoneStateListener with subId: " + subId + " is not supported, use default constructor");
        }
    }

    public PhoneStateListener(Integer subId, Looper looper) {
        this(subId, new HandlerExecutor(new Handler(looper)));
        if (subId != null && VMRuntime.getRuntime().getTargetSdkVersion() >= 29) {
            throw new IllegalArgumentException("PhoneStateListener with subId: " + subId + " is not supported, use default constructor");
        }
    }

    @Deprecated
    public PhoneStateListener(Executor executor) {
        this((Integer) null, executor);
    }

    private PhoneStateListener(Integer subId, Executor e) {
        if (e == null) {
            throw new IllegalArgumentException("PhoneStateListener Executor must be non-null");
        }
        this.mSubId = subId;
        this.callback = new IPhoneStateListenerStub(this, e);
    }

    @Deprecated
    public void onServiceStateChanged(ServiceState serviceState) {
    }

    @Deprecated
    public void onSignalStrengthChanged(int asu) {
    }

    @Deprecated
    public void onMessageWaitingIndicatorChanged(boolean mwi) {
    }

    @Deprecated
    public void onCallForwardingIndicatorChanged(boolean cfi) {
    }

    @Deprecated
    public void onCellLocationChanged(CellLocation location) {
    }

    @Deprecated
    public void onCallStateChanged(int state, String phoneNumber) {
    }

    @Deprecated
    public void onDataConnectionStateChanged(int state) {
    }

    @Deprecated
    public void onDataConnectionStateChanged(int state, int networkType) {
    }

    @Deprecated
    public void onDataActivity(int direction) {
    }

    @Deprecated
    public void onSignalStrengthsChanged(SignalStrength signalStrength) {
    }

    @Deprecated
    public void onCellInfoChanged(List<CellInfo> cellInfo) {
    }

    @SystemApi
    @Deprecated
    public void onPreciseCallStateChanged(PreciseCallState callState) {
    }

    @Deprecated
    public void onCallDisconnectCauseChanged(int disconnectCause, int preciseDisconnectCause) {
    }

    @Deprecated
    public void onImsCallDisconnectCauseChanged(ImsReasonInfo imsReasonInfo) {
    }

    @Deprecated
    public void onPreciseDataConnectionStateChanged(PreciseDataConnectionState dataConnectionState) {
    }

    @Deprecated
    public void onDataConnectionRealTimeInfoChanged(DataConnectionRealTimeInfo dcRtInfo) {
    }

    @SystemApi
    @Deprecated
    public void onSrvccStateChanged(int srvccState) {
    }

    @SystemApi
    @Deprecated
    public void onVoiceActivationStateChanged(int state) {
    }

    @Deprecated
    public void onDataActivationStateChanged(int state) {
    }

    @Deprecated
    public void onUserMobileDataStateChanged(boolean enabled) {
    }

    @Deprecated
    public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
    }

    @Deprecated
    public void onEmergencyNumberListChanged(Map<Integer, List<EmergencyNumber>> emergencyNumberList) {
    }

    @SystemApi
    @Deprecated
    public void onOutgoingEmergencyCall(EmergencyNumber placedEmergencyNumber) {
    }

    @SystemApi
    @Deprecated
    public void onOutgoingEmergencyCall(EmergencyNumber placedEmergencyNumber, int subscriptionId) {
        onOutgoingEmergencyCall(placedEmergencyNumber);
    }

    @SystemApi
    @Deprecated
    public void onOutgoingEmergencySms(EmergencyNumber sentEmergencyNumber) {
    }

    @SystemApi
    @Deprecated
    public void onOutgoingEmergencySms(EmergencyNumber sentEmergencyNumber, int subscriptionId) {
        onOutgoingEmergencySms(sentEmergencyNumber);
    }

    @Deprecated
    public void onOemHookRawEvent(byte[] rawData) {
    }

    @Deprecated
    public void onPhoneCapabilityChanged(PhoneCapability capability) {
    }

    @Deprecated
    public void onActiveDataSubscriptionIdChanged(int subId) {
    }

    @SystemApi
    @Deprecated
    public void onCallAttributesChanged(CallAttributes callAttributes) {
    }

    @SystemApi
    @Deprecated
    public void onRadioPowerStateChanged(int state) {
    }

    @Deprecated
    public void onCarrierNetworkChange(boolean active) {
    }

    @Deprecated
    public void onRegistrationFailed(CellIdentity cellIdentity, String chosenPlmn, int domain, int causeCode, int additionalCauseCode) {
    }

    @Deprecated
    public void onBarringInfoChanged(BarringInfo barringInfo) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class IPhoneStateListenerStub extends IPhoneStateListener.Stub {
        private Executor mExecutor;
        private WeakReference<PhoneStateListener> mPhoneStateListenerWeakRef;

        IPhoneStateListenerStub(PhoneStateListener phoneStateListener, Executor executor) {
            this.mPhoneStateListenerWeakRef = new WeakReference<>(phoneStateListener);
            this.mExecutor = executor;
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onServiceStateChanged(final ServiceState serviceState) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda24
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4249x4cb3e68f(psl, serviceState);
                }
            });
        }

        /* renamed from: lambda$onServiceStateChanged$1$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4249x4cb3e68f(final PhoneStateListener psl, final ServiceState serviceState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onServiceStateChanged(serviceState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onSignalStrengthChanged(final int asu) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda48
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4250xc325fd3a(psl, asu);
                }
            });
        }

        /* renamed from: lambda$onSignalStrengthChanged$3$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4250xc325fd3a(final PhoneStateListener psl, final int asu) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onSignalStrengthChanged(asu);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onMessageWaitingIndicatorChanged(final boolean mwi) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda25
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4240xf3096d60(psl, mwi);
                }
            });
        }

        /* renamed from: lambda$onMessageWaitingIndicatorChanged$5$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4240xf3096d60(final PhoneStateListener psl, final boolean mwi) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onMessageWaitingIndicatorChanged(mwi);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCallForwardingIndicatorChanged(final boolean cfi) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda45
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4227x13c29049(psl, cfi);
                }
            });
        }

        /* renamed from: lambda$onCallForwardingIndicatorChanged$7$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4227x13c29049(final PhoneStateListener psl, final boolean cfi) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onCallForwardingIndicatorChanged(cfi);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCellLocationChanged(CellIdentity cellIdentity) {
            if (!((IOplusPermissionCheckInjectorExt) ExtLoader.type(IOplusPermissionCheckInjectorExt.class).create()).checkPermission(Manifest.permission.ACCESS_FINE_LOCATION, Binder.getCallingPid(), Binder.getCallingUid(), "onCellLocationChanged")) {
                return;
            }
            final CellLocation location = cellIdentity == null ? CellLocation.getEmpty() : cellIdentity.asCellLocation();
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda17
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4230xb5962fa2(psl, location);
                }
            });
        }

        /* renamed from: lambda$onCellLocationChanged$9$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4230xb5962fa2(final PhoneStateListener psl, final CellLocation location) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onCellLocationChanged(location);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onLegacyCallStateChanged(final int state, final String incomingNumber) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4239x8214eba(psl, state, incomingNumber);
                }
            });
        }

        /* renamed from: lambda$onLegacyCallStateChanged$11$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4239x8214eba(final PhoneStateListener psl, final int state, final String incomingNumber) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onCallStateChanged(state, incomingNumber);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCallStateChanged(int state) {
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataConnectionStateChanged(final int state, final int networkType) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            if (state == 4 && VMRuntime.getRuntime().getTargetSdkVersion() < 30) {
                Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda0
                    @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                    public final void runOrThrow() throws Exception {
                        this.f$0.m4234x9f1fa6d9(psl, networkType);
                    }
                });
            } else {
                Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda1
                    @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                    public final void runOrThrow() throws Exception {
                        this.f$0.m4235xc79c8617(psl, state, networkType);
                    }
                });
            }
        }

        /* renamed from: lambda$onDataConnectionStateChanged$13$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4234x9f1fa6d9(final PhoneStateListener psl, final int networkType) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    PhoneStateListener.IPhoneStateListenerStub.lambda$onDataConnectionStateChanged$12(psl, networkType);
                }
            });
        }

        static /* synthetic */ void lambda$onDataConnectionStateChanged$12(PhoneStateListener psl, int networkType) {
            psl.onDataConnectionStateChanged(2, networkType);
            psl.onDataConnectionStateChanged(2);
        }

        /* renamed from: lambda$onDataConnectionStateChanged$15$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4235xc79c8617(final PhoneStateListener psl, final int state, final int networkType) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    PhoneStateListener.IPhoneStateListenerStub.lambda$onDataConnectionStateChanged$14(psl, state, networkType);
                }
            });
        }

        static /* synthetic */ void lambda$onDataConnectionStateChanged$14(PhoneStateListener psl, int state, int networkType) {
            psl.onDataConnectionStateChanged(state, networkType);
            psl.onDataConnectionStateChanged(state);
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataActivity(final int direction) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda53
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4232x50c26403(psl, direction);
                }
            });
        }

        /* renamed from: lambda$onDataActivity$17$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4232x50c26403(final PhoneStateListener psl, final int direction) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onDataActivity(direction);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onSignalStrengthsChanged(final SignalStrength signalStrength) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda47
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4251x4111f832(psl, signalStrength);
                }
            });
        }

        /* renamed from: lambda$onSignalStrengthsChanged$19$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4251x4111f832(final PhoneStateListener psl, final SignalStrength signalStrength) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onSignalStrengthsChanged(signalStrength);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCellInfoChanged(final List<CellInfo> cellInfo) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda43
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4229x774d039d(psl, cellInfo);
                }
            });
        }

        /* renamed from: lambda$onCellInfoChanged$21$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4229x774d039d(final PhoneStateListener psl, final List cellInfo) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda57
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onCellInfoChanged(cellInfo);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onPreciseCallStateChanged(final PreciseCallState callState) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda36
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4245x187cbe53(psl, callState);
                }
            });
        }

        /* renamed from: lambda$onPreciseCallStateChanged$23$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4245x187cbe53(final PhoneStateListener psl, final PreciseCallState callState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onPreciseCallStateChanged(callState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCallDisconnectCauseChanged(final int disconnectCause, final int preciseDisconnectCause) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4226xaeecfff2(psl, disconnectCause, preciseDisconnectCause);
                }
            });
        }

        /* renamed from: lambda$onCallDisconnectCauseChanged$25$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4226xaeecfff2(final PhoneStateListener psl, final int disconnectCause, final int preciseDisconnectCause) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onCallDisconnectCauseChanged(disconnectCause, preciseDisconnectCause);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onPreciseDataConnectionStateChanged(final PreciseDataConnectionState dataConnectionState) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda21
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4246x960e9ed9(psl, dataConnectionState);
                }
            });
        }

        /* renamed from: lambda$onPreciseDataConnectionStateChanged$27$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4246x960e9ed9(final PhoneStateListener psl, final PreciseDataConnectionState dataConnectionState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onPreciseDataConnectionStateChanged(dataConnectionState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataConnectionRealTimeInfoChanged(final DataConnectionRealTimeInfo dcRtInfo) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda5
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4233x610c1c84(psl, dcRtInfo);
                }
            });
        }

        /* renamed from: lambda$onDataConnectionRealTimeInfoChanged$29$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4233x610c1c84(final PhoneStateListener psl, final DataConnectionRealTimeInfo dcRtInfo) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda54
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onDataConnectionRealTimeInfoChanged(dcRtInfo);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onSrvccStateChanged(final int state) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4252x6b50d694(psl, state);
                }
            });
        }

        /* renamed from: lambda$onSrvccStateChanged$31$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4252x6b50d694(final PhoneStateListener psl, final int state) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda61
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onSrvccStateChanged(state);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onVoiceActivationStateChanged(final int activationState) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda60
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4254x4f3e66a3(psl, activationState);
                }
            });
        }

        /* renamed from: lambda$onVoiceActivationStateChanged$33$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4254x4f3e66a3(final PhoneStateListener psl, final int activationState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onVoiceActivationStateChanged(activationState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataActivationStateChanged(final int activationState) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda18
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4231x47ca3cd1(psl, activationState);
                }
            });
        }

        /* renamed from: lambda$onDataActivationStateChanged$35$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4231x47ca3cd1(final PhoneStateListener psl, final int activationState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onDataActivationStateChanged(activationState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onUserMobileDataStateChanged(final boolean enabled) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda7
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4253x3aba22c6(psl, enabled);
                }
            });
        }

        /* renamed from: lambda$onUserMobileDataStateChanged$37$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4253x3aba22c6(final PhoneStateListener psl, final boolean enabled) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onUserMobileDataStateChanged(enabled);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDisplayInfoChanged(final TelephonyDisplayInfo telephonyDisplayInfo) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda23
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4236x7c6881ee(psl, telephonyDisplayInfo);
                }
            });
        }

        /* renamed from: lambda$onDisplayInfoChanged$39$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4236x7c6881ee(final PhoneStateListener psl, final TelephonyDisplayInfo telephonyDisplayInfo) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onDisplayInfoChanged(telephonyDisplayInfo);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onOemHookRawEvent(final byte[] rawData) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda3
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4241xa3dc4947(psl, rawData);
                }
            });
        }

        /* renamed from: lambda$onOemHookRawEvent$41$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4241xa3dc4947(final PhoneStateListener psl, final byte[] rawData) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onOemHookRawEvent(rawData);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCarrierNetworkChange(final boolean active) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda50
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4228x48d974d7(psl, active);
                }
            });
        }

        /* renamed from: lambda$onCarrierNetworkChange$43$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4228x48d974d7(final PhoneStateListener psl, final boolean active) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onCarrierNetworkChange(active);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onEmergencyNumberListChanged(final Map emergencyNumberList) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda9
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4237x49f9934b(psl, emergencyNumberList);
                }
            });
        }

        /* renamed from: lambda$onEmergencyNumberListChanged$45$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4237x49f9934b(final PhoneStateListener psl, final Map emergencyNumberList) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onEmergencyNumberListChanged(emergencyNumberList);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onOutgoingEmergencyCall(final EmergencyNumber placedEmergencyNumber, final int subscriptionId) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda19
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4242x1fa3caf8(psl, placedEmergencyNumber, subscriptionId);
                }
            });
        }

        /* renamed from: lambda$onOutgoingEmergencyCall$47$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4242x1fa3caf8(final PhoneStateListener psl, final EmergencyNumber placedEmergencyNumber, final int subscriptionId) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda62
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onOutgoingEmergencyCall(placedEmergencyNumber, subscriptionId);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onOutgoingEmergencySms(final EmergencyNumber sentEmergencyNumber, final int subscriptionId) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda46
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4243xe281cebf(psl, sentEmergencyNumber, subscriptionId);
                }
            });
        }

        /* renamed from: lambda$onOutgoingEmergencySms$49$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4243xe281cebf(final PhoneStateListener psl, final EmergencyNumber sentEmergencyNumber, final int subscriptionId) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda59
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onOutgoingEmergencySms(sentEmergencyNumber, subscriptionId);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onPhoneCapabilityChanged(final PhoneCapability capability) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda63
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4244x3e6f9e22(psl, capability);
                }
            });
        }

        /* renamed from: lambda$onPhoneCapabilityChanged$51$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4244x3e6f9e22(final PhoneStateListener psl, final PhoneCapability capability) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onPhoneCapabilityChanged(capability);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onRadioPowerStateChanged(final int state) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda52
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4247x7adbae7f(psl, state);
                }
            });
        }

        /* renamed from: lambda$onRadioPowerStateChanged$53$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4247x7adbae7f(final PhoneStateListener psl, final int state) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onRadioPowerStateChanged(state);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCallAttributesChanged(final CallAttributes callAttributes) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda29
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4225x7ede9f17(psl, callAttributes);
                }
            });
        }

        /* renamed from: lambda$onCallAttributesChanged$55$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4225x7ede9f17(final PhoneStateListener psl, final CallAttributes callAttributes) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onCallAttributesChanged(callAttributes);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onActiveDataSubIdChanged(final int subId) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda39
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4223xad892bd7(psl, subId);
                }
            });
        }

        /* renamed from: lambda$onActiveDataSubIdChanged$57$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4223xad892bd7(final PhoneStateListener psl, final int subId) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onActiveDataSubscriptionIdChanged(subId);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onImsCallDisconnectCauseChanged(final ImsReasonInfo disconnectCause) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda49
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4238x93d86ee8(psl, disconnectCause);
                }
            });
        }

        /* renamed from: lambda$onImsCallDisconnectCauseChanged$59$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4238x93d86ee8(final PhoneStateListener psl, final ImsReasonInfo disconnectCause) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onImsCallDisconnectCauseChanged(disconnectCause);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onRegistrationFailed(final CellIdentity cellIdentity, final String chosenPlmn, final int domain, final int causeCode, final int additionalCauseCode) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda10
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4248xba6ec40b(psl, cellIdentity, chosenPlmn, domain, causeCode, additionalCauseCode);
                }
            });
        }

        /* renamed from: lambda$onRegistrationFailed$61$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4248xba6ec40b(final PhoneStateListener psl, final CellIdentity cellIdentity, final String chosenPlmn, final int domain, final int causeCode, final int additionalCauseCode) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onRegistrationFailed(cellIdentity, chosenPlmn, domain, causeCode, additionalCauseCode);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onBarringInfoChanged(final BarringInfo barringInfo) {
            final PhoneStateListener psl = this.mPhoneStateListenerWeakRef.get();
            if (psl == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda37
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4224xc6a89256(psl, barringInfo);
                }
            });
        }

        /* renamed from: lambda$onBarringInfoChanged$63$android-telephony-PhoneStateListener$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4224xc6a89256(final PhoneStateListener psl, final BarringInfo barringInfo) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    psl.onBarringInfoChanged(barringInfo);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onPhysicalChannelConfigChanged(List<PhysicalChannelConfig> configs) {
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataEnabledChanged(boolean enabled, int reason) {
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onAllowedNetworkTypesChanged(int reason, long allowedNetworkType) {
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onLinkCapacityEstimateChanged(List<LinkCapacityEstimate> linkCapacityEstimateList) {
        }
    }

    private void log(String s) {
        Rlog.d(LOG_TAG, s);
    }
}
