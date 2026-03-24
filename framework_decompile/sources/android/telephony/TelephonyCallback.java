package android.telephony;

import android.annotation.SystemApi;
import android.os.Binder;
import android.telephony.emergency.EmergencyNumber;
import android.telephony.ims.ImsReasonInfo;
import com.android.internal.telephony.IPhoneStateListener;
import com.android.internal.util.FunctionalUtils;
import dalvik.system.VMRuntime;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class TelephonyCallback {
    public static final int DEFAULT_PER_PID_REGISTRATION_LIMIT = 50;

    @SystemApi
    public static final int EVENT_ACTIVE_DATA_SUBSCRIPTION_ID_CHANGED = 23;

    @SystemApi
    public static final int EVENT_ALLOWED_NETWORK_TYPE_LIST_CHANGED = 35;

    @SystemApi
    public static final int EVENT_ALWAYS_REPORTED_SIGNAL_STRENGTH_CHANGED = 10;

    @SystemApi
    public static final int EVENT_BARRING_INFO_CHANGED = 32;

    @SystemApi
    public static final int EVENT_CALL_ATTRIBUTES_CHANGED = 27;

    @SystemApi
    public static final int EVENT_CALL_DISCONNECT_CAUSE_CHANGED = 26;

    @SystemApi
    public static final int EVENT_CALL_FORWARDING_INDICATOR_CHANGED = 4;

    @SystemApi
    public static final int EVENT_CALL_STATE_CHANGED = 6;

    @SystemApi
    public static final int EVENT_CARRIER_NETWORK_CHANGED = 17;

    @SystemApi
    public static final int EVENT_CELL_INFO_CHANGED = 11;

    @SystemApi
    public static final int EVENT_CELL_LOCATION_CHANGED = 5;

    @SystemApi
    public static final int EVENT_DATA_ACTIVATION_STATE_CHANGED = 19;

    @SystemApi
    public static final int EVENT_DATA_ACTIVITY_CHANGED = 8;

    @SystemApi
    @Deprecated
    public static final int EVENT_DATA_CONNECTION_REAL_TIME_INFO_CHANGED = 14;

    @SystemApi
    public static final int EVENT_DATA_CONNECTION_STATE_CHANGED = 7;

    @SystemApi
    public static final int EVENT_DATA_ENABLED_CHANGED = 34;

    @SystemApi
    public static final int EVENT_DISPLAY_INFO_CHANGED = 21;

    @SystemApi
    public static final int EVENT_EMERGENCY_NUMBER_LIST_CHANGED = 25;

    @SystemApi
    public static final int EVENT_IMS_CALL_DISCONNECT_CAUSE_CHANGED = 28;

    @SystemApi
    public static final int EVENT_LEGACY_CALL_STATE_CHANGED = 36;

    @SystemApi
    public static final int EVENT_LINK_CAPACITY_ESTIMATE_CHANGED = 37;

    @SystemApi
    public static final int EVENT_MESSAGE_WAITING_INDICATOR_CHANGED = 3;

    @SystemApi
    public static final int EVENT_OEM_HOOK_RAW = 15;

    @SystemApi
    public static final int EVENT_OUTGOING_EMERGENCY_CALL = 29;

    @SystemApi
    public static final int EVENT_OUTGOING_EMERGENCY_SMS = 30;

    @SystemApi
    public static final int EVENT_PHONE_CAPABILITY_CHANGED = 22;

    @SystemApi
    public static final int EVENT_PHYSICAL_CHANNEL_CONFIG_CHANGED = 33;

    @SystemApi
    public static final int EVENT_PRECISE_CALL_STATE_CHANGED = 12;

    @SystemApi
    public static final int EVENT_PRECISE_DATA_CONNECTION_STATE_CHANGED = 13;

    @SystemApi
    public static final int EVENT_RADIO_POWER_STATE_CHANGED = 24;

    @SystemApi
    public static final int EVENT_REGISTRATION_FAILURE = 31;

    @SystemApi
    public static final int EVENT_SERVICE_STATE_CHANGED = 1;

    @SystemApi
    public static final int EVENT_SIGNAL_STRENGTHS_CHANGED = 9;

    @SystemApi
    public static final int EVENT_SIGNAL_STRENGTH_CHANGED = 2;

    @SystemApi
    public static final int EVENT_SRVCC_STATE_CHANGED = 16;

    @SystemApi
    public static final int EVENT_USER_MOBILE_DATA_STATE_CHANGED = 20;

    @SystemApi
    public static final int EVENT_VOICE_ACTIVATION_STATE_CHANGED = 18;
    public static final String FLAG_PER_PID_REGISTRATION_LIMIT = "phone_state_listener_per_pid_registration_limit";
    public static final long PHONE_STATE_LISTENER_LIMIT_CHANGE_ID = 150880553;
    public IPhoneStateListener callback;

    public interface ActiveDataSubscriptionIdListener {
        void onActiveDataSubscriptionIdChanged(int i);
    }

    @SystemApi
    public interface AllowedNetworkTypesListener {
        void onAllowedNetworkTypesChanged(int i, long j);
    }

    public interface BarringInfoListener {
        void onBarringInfoChanged(BarringInfo barringInfo);
    }

    @SystemApi
    public interface CallAttributesListener {
        void onCallAttributesChanged(CallAttributes callAttributes);
    }

    public interface CallDisconnectCauseListener {
        void onCallDisconnectCauseChanged(int i, int i2);
    }

    public interface CallForwardingIndicatorListener {
        void onCallForwardingIndicatorChanged(boolean z);
    }

    public interface CallStateListener {
        void onCallStateChanged(int i);
    }

    public interface CarrierNetworkListener {
        void onCarrierNetworkChange(boolean z);
    }

    public interface CellInfoListener {
        void onCellInfoChanged(List<CellInfo> list);
    }

    public interface CellLocationListener {
        void onCellLocationChanged(CellLocation cellLocation);
    }

    public interface DataActivationStateListener {
        void onDataActivationStateChanged(int i);
    }

    public interface DataActivityListener {
        void onDataActivity(int i);
    }

    public interface DataConnectionStateListener {
        void onDataConnectionStateChanged(int i, int i2);
    }

    @SystemApi
    public interface DataEnabledListener {
        void onDataEnabledChanged(boolean z, int i);
    }

    public interface DisplayInfoListener {
        void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo);
    }

    public interface EmergencyNumberListListener {
        void onEmergencyNumberListChanged(Map<Integer, List<EmergencyNumber>> map);
    }

    public interface ImsCallDisconnectCauseListener {
        void onImsCallDisconnectCauseChanged(ImsReasonInfo imsReasonInfo);
    }

    @SystemApi
    public interface LinkCapacityEstimateChangedListener {
        void onLinkCapacityEstimateChanged(List<LinkCapacityEstimate> list);
    }

    public interface MessageWaitingIndicatorListener {
        void onMessageWaitingIndicatorChanged(boolean z);
    }

    @SystemApi
    public interface OutgoingEmergencyCallListener {
        void onOutgoingEmergencyCall(EmergencyNumber emergencyNumber, int i);
    }

    @SystemApi
    public interface OutgoingEmergencySmsListener {
        void onOutgoingEmergencySms(EmergencyNumber emergencyNumber, int i);
    }

    @SystemApi
    public interface PhoneCapabilityListener {
        void onPhoneCapabilityChanged(PhoneCapability phoneCapability);
    }

    public interface PhysicalChannelConfigListener {
        void onPhysicalChannelConfigChanged(List<PhysicalChannelConfig> list);
    }

    @SystemApi
    public interface PreciseCallStateListener {
        void onPreciseCallStateChanged(PreciseCallState preciseCallState);
    }

    public interface PreciseDataConnectionStateListener {
        void onPreciseDataConnectionStateChanged(PreciseDataConnectionState preciseDataConnectionState);
    }

    @SystemApi
    public interface RadioPowerStateListener {
        void onRadioPowerStateChanged(int i);
    }

    public interface RegistrationFailedListener {
        void onRegistrationFailed(CellIdentity cellIdentity, String str, int i, int i2, int i3);
    }

    public interface ServiceStateListener {
        void onServiceStateChanged(ServiceState serviceState);
    }

    public interface SignalStrengthsListener {
        void onSignalStrengthsChanged(SignalStrength signalStrength);
    }

    @SystemApi
    public interface SrvccStateListener {
        void onSrvccStateChanged(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TelephonyEvent {
    }

    public interface UserMobileDataStateListener {
        void onUserMobileDataStateChanged(boolean z);
    }

    @SystemApi
    public interface VoiceActivationStateListener {
        void onVoiceActivationStateChanged(int i);
    }

    public void init(Executor executor) {
        if (executor == null) {
            throw new IllegalArgumentException("TelephonyCallback Executor must be non-null");
        }
        this.callback = new IPhoneStateListenerStub(this, executor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class IPhoneStateListenerStub extends IPhoneStateListener.Stub {
        private Executor mExecutor;
        private WeakReference<TelephonyCallback> mTelephonyCallbackWeakRef;

        IPhoneStateListenerStub(TelephonyCallback telephonyCallback, Executor executor) {
            this.mTelephonyCallbackWeakRef = new WeakReference<>(telephonyCallback);
            this.mExecutor = executor;
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onServiceStateChanged(final ServiceState serviceState) {
            final ServiceStateListener listener = (ServiceStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda34
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4310x4a79a999(listener, serviceState);
                }
            });
        }

        /* renamed from: lambda$onServiceStateChanged$1$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4310x4a79a999(final ServiceStateListener listener, final ServiceState serviceState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onServiceStateChanged(serviceState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onSignalStrengthChanged(int asu) {
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onMessageWaitingIndicatorChanged(final boolean mwi) {
            final MessageWaitingIndicatorListener listener = (MessageWaitingIndicatorListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda20
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4301xfbf443a6(listener, mwi);
                }
            });
        }

        /* renamed from: lambda$onMessageWaitingIndicatorChanged$3$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4301xfbf443a6(final MessageWaitingIndicatorListener listener, final boolean mwi) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onMessageWaitingIndicatorChanged(mwi);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCallForwardingIndicatorChanged(final boolean cfi) {
            final CallForwardingIndicatorListener listener = (CallForwardingIndicatorListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda33
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4287xd869f9d(listener, cfi);
                }
            });
        }

        /* renamed from: lambda$onCallForwardingIndicatorChanged$5$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4287xd869f9d(final CallForwardingIndicatorListener listener, final boolean cfi) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onCallForwardingIndicatorChanged(cfi);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCellLocationChanged(CellIdentity cellIdentity) {
            final CellLocation location = cellIdentity == null ? CellLocation.getEmpty() : cellIdentity.asCellLocation();
            final CellLocationListener listener = (CellLocationListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4291x2b853124(listener, location);
                }
            });
        }

        /* renamed from: lambda$onCellLocationChanged$7$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4291x2b853124(final CellLocationListener listener, final CellLocation location) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onCellLocationChanged(location);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onLegacyCallStateChanged(int state, String incomingNumber) {
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCallStateChanged(final int state) {
            final CallStateListener listener = (CallStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda46
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4288x69403182(listener, state);
                }
            });
        }

        /* renamed from: lambda$onCallStateChanged$9$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4288x69403182(final CallStateListener listener, final int state) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onCallStateChanged(state);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataConnectionStateChanged(final int state, final int networkType) {
            final DataConnectionStateListener listener = (DataConnectionStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            if (state == 4 && VMRuntime.getRuntime().getTargetSdkVersion() < 30) {
                Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64
                    @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                    public final void runOrThrow() throws Exception {
                        this.f$0.m4294x8de4770d(listener, networkType);
                    }
                });
            } else {
                Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda65
                    @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                    public final void runOrThrow() throws Exception {
                        this.f$0.m4295x2cfb80f(listener, state, networkType);
                    }
                });
            }
        }

        /* renamed from: lambda$onDataConnectionStateChanged$11$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4294x8de4770d(final DataConnectionStateListener listener, final int networkType) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onDataConnectionStateChanged(2, networkType);
                }
            });
        }

        /* renamed from: lambda$onDataConnectionStateChanged$13$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4295x2cfb80f(final DataConnectionStateListener listener, final int state, final int networkType) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onDataConnectionStateChanged(state, networkType);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataActivity(final int direction) {
            final DataActivityListener listener = (DataActivityListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda56
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4293x17c06ca3(listener, direction);
                }
            });
        }

        /* renamed from: lambda$onDataActivity$15$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4293x17c06ca3(final DataActivityListener listener, final int direction) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onDataActivity(direction);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onSignalStrengthsChanged(final SignalStrength signalStrength) {
            final SignalStrengthsListener listener = (SignalStrengthsListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4311xb4261694(listener, signalStrength);
                }
            });
        }

        /* renamed from: lambda$onSignalStrengthsChanged$17$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4311xb4261694(final SignalStrengthsListener listener, final SignalStrength signalStrength) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onSignalStrengthsChanged(signalStrength);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCellInfoChanged(final List<CellInfo> cellInfo) {
            final CellInfoListener listener = (CellInfoListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda5
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4290xac504734(listener, cellInfo);
                }
            });
        }

        /* renamed from: lambda$onCellInfoChanged$19$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4290xac504734(final CellInfoListener listener, final List cellInfo) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onCellInfoChanged(cellInfo);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onPreciseCallStateChanged(final PreciseCallState callState) {
            final PreciseCallStateListener listener = (PreciseCallStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda30
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4306xfd298853(listener, callState);
                }
            });
        }

        /* renamed from: lambda$onPreciseCallStateChanged$21$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4306xfd298853(final PreciseCallStateListener listener, final PreciseCallState callState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onPreciseCallStateChanged(callState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCallDisconnectCauseChanged(final int disconnectCause, final int preciseDisconnectCause) {
            final CallDisconnectCauseListener listener = (CallDisconnectCauseListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda4
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4286x9eeb16d4(listener, disconnectCause, preciseDisconnectCause);
                }
            });
        }

        /* renamed from: lambda$onCallDisconnectCauseChanged$23$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4286x9eeb16d4(final CallDisconnectCauseListener listener, final int disconnectCause, final int preciseDisconnectCause) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onCallDisconnectCauseChanged(disconnectCause, preciseDisconnectCause);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onPreciseDataConnectionStateChanged(final PreciseDataConnectionState dataConnectionState) {
            final PreciseDataConnectionStateListener listener = (PreciseDataConnectionStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda18
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4307x1367f0d(listener, dataConnectionState);
                }
            });
        }

        /* renamed from: lambda$onPreciseDataConnectionStateChanged$25$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4307x1367f0d(final PreciseDataConnectionStateListener listener, final PreciseDataConnectionState dataConnectionState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onPreciseDataConnectionStateChanged(dataConnectionState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataConnectionRealTimeInfoChanged(DataConnectionRealTimeInfo dcRtInfo) {
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onSrvccStateChanged(final int state) {
            final SrvccStateListener listener = (SrvccStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda21
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4312xecaf785b(listener, state);
                }
            });
        }

        /* renamed from: lambda$onSrvccStateChanged$27$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4312xecaf785b(final SrvccStateListener listener, final int state) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onSrvccStateChanged(state);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onVoiceActivationStateChanged(final int activationState) {
            final VoiceActivationStateListener listener = (VoiceActivationStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda57
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4314x2dd82a6c(listener, activationState);
                }
            });
        }

        /* renamed from: lambda$onVoiceActivationStateChanged$29$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4314x2dd82a6c(final VoiceActivationStateListener listener, final int activationState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onVoiceActivationStateChanged(activationState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataActivationStateChanged(final int activationState) {
            final DataActivationStateListener listener = (DataActivationStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda37
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4292x16280113(listener, activationState);
                }
            });
        }

        /* renamed from: lambda$onDataActivationStateChanged$31$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4292x16280113(final DataActivationStateListener listener, final int activationState) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda50
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onDataActivationStateChanged(activationState);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onUserMobileDataStateChanged(final boolean enabled) {
            final UserMobileDataStateListener listener = (UserMobileDataStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda62
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4313x8959087e(listener, enabled);
                }
            });
        }

        /* renamed from: lambda$onUserMobileDataStateChanged$33$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4313x8959087e(final UserMobileDataStateListener listener, final boolean enabled) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onUserMobileDataStateChanged(enabled);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDisplayInfoChanged(final TelephonyDisplayInfo telephonyDisplayInfo) {
            final DisplayInfoListener listener = (DisplayInfoListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda59
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4297xe64e2456(listener, telephonyDisplayInfo);
                }
            });
        }

        /* renamed from: lambda$onDisplayInfoChanged$35$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4297xe64e2456(final DisplayInfoListener listener, final TelephonyDisplayInfo telephonyDisplayInfo) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onDisplayInfoChanged(telephonyDisplayInfo);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onOemHookRawEvent(byte[] rawData) {
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCarrierNetworkChange(final boolean active) {
            final CarrierNetworkListener listener = (CarrierNetworkListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda55
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4289x4d5d44b6(listener, active);
                }
            });
        }

        /* renamed from: lambda$onCarrierNetworkChange$37$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4289x4d5d44b6(final CarrierNetworkListener listener, final boolean active) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onCarrierNetworkChange(active);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onEmergencyNumberListChanged(final Map emergencyNumberList) {
            final EmergencyNumberListListener listener = (EmergencyNumberListListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda53
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4298xc94587c2(listener, emergencyNumberList);
                }
            });
        }

        /* renamed from: lambda$onEmergencyNumberListChanged$39$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4298xc94587c2(final EmergencyNumberListListener listener, final Map emergencyNumberList) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onEmergencyNumberListChanged(emergencyNumberList);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onOutgoingEmergencyCall(final EmergencyNumber placedEmergencyNumber, final int subscriptionId) {
            final OutgoingEmergencyCallListener listener = (OutgoingEmergencyCallListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda40
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4302xb075510a(listener, placedEmergencyNumber, subscriptionId);
                }
            });
        }

        /* renamed from: lambda$onOutgoingEmergencyCall$41$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4302xb075510a(final OutgoingEmergencyCallListener listener, final EmergencyNumber placedEmergencyNumber, final int subscriptionId) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onOutgoingEmergencyCall(placedEmergencyNumber, subscriptionId);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onOutgoingEmergencySms(final EmergencyNumber sentEmergencyNumber, final int subscriptionId) {
            final OutgoingEmergencySmsListener listener = (OutgoingEmergencySmsListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda28
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4303x8d743863(listener, sentEmergencyNumber, subscriptionId);
                }
            });
        }

        /* renamed from: lambda$onOutgoingEmergencySms$43$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4303x8d743863(final OutgoingEmergencySmsListener listener, final EmergencyNumber sentEmergencyNumber, final int subscriptionId) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onOutgoingEmergencySms(sentEmergencyNumber, subscriptionId);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onPhoneCapabilityChanged(final PhoneCapability capability) {
            final PhoneCapabilityListener listener = (PhoneCapabilityListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda54
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4304x4d07460b(listener, capability);
                }
            });
        }

        /* renamed from: lambda$onPhoneCapabilityChanged$45$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4304x4d07460b(final PhoneCapabilityListener listener, final PhoneCapability capability) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onPhoneCapabilityChanged(capability);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onRadioPowerStateChanged(final int state) {
            final RadioPowerStateListener listener = (RadioPowerStateListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda10
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4308xcad9360e(listener, state);
                }
            });
        }

        /* renamed from: lambda$onRadioPowerStateChanged$47$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4308xcad9360e(final RadioPowerStateListener listener, final int state) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onRadioPowerStateChanged(state);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onCallAttributesChanged(final CallAttributes callAttributes) {
            final CallAttributesListener listener = (CallAttributesListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda11
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4285x88e9d276(listener, callAttributes);
                }
            });
        }

        /* renamed from: lambda$onCallAttributesChanged$49$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4285x88e9d276(final CallAttributesListener listener, final CallAttributes callAttributes) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onCallAttributesChanged(callAttributes);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onActiveDataSubIdChanged(final int subId) {
            final ActiveDataSubscriptionIdListener listener = (ActiveDataSubscriptionIdListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda61
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4282x9400d84b(listener, subId);
                }
            });
        }

        /* renamed from: lambda$onActiveDataSubIdChanged$51$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4282x9400d84b(final ActiveDataSubscriptionIdListener listener, final int subId) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onActiveDataSubscriptionIdChanged(subId);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onImsCallDisconnectCauseChanged(final ImsReasonInfo disconnectCause) {
            final ImsCallDisconnectCauseListener listener = (ImsCallDisconnectCauseListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4299x72246f1a(listener, disconnectCause);
                }
            });
        }

        /* renamed from: lambda$onImsCallDisconnectCauseChanged$53$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4299x72246f1a(final ImsCallDisconnectCauseListener listener, final ImsReasonInfo disconnectCause) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onImsCallDisconnectCauseChanged(disconnectCause);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onRegistrationFailed(final CellIdentity cellIdentity, final String chosenPlmn, final int domain, final int causeCode, final int additionalCauseCode) {
            final RegistrationFailedListener listener = (RegistrationFailedListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda19
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4309x51073f02(listener, cellIdentity, chosenPlmn, domain, causeCode, additionalCauseCode);
                }
            });
        }

        /* renamed from: lambda$onRegistrationFailed$55$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4309x51073f02(final RegistrationFailedListener listener, final CellIdentity cellIdentity, final String chosenPlmn, final int domain, final int causeCode, final int additionalCauseCode) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onRegistrationFailed(cellIdentity, chosenPlmn, domain, causeCode, additionalCauseCode);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onBarringInfoChanged(final BarringInfo barringInfo) {
            final BarringInfoListener listener = (BarringInfoListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4284xb484fb57(listener, barringInfo);
                }
            });
        }

        /* renamed from: lambda$onBarringInfoChanged$57$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4284xb484fb57(final BarringInfoListener listener, final BarringInfo barringInfo) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onBarringInfoChanged(barringInfo);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onPhysicalChannelConfigChanged(final List<PhysicalChannelConfig> configs) {
            final PhysicalChannelConfigListener listener = (PhysicalChannelConfigListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4305x1379cc16(listener, configs);
                }
            });
        }

        /* renamed from: lambda$onPhysicalChannelConfigChanged$59$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4305x1379cc16(final PhysicalChannelConfigListener listener, final List configs) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onPhysicalChannelConfigChanged(configs);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onDataEnabledChanged(final boolean enabled, final int reason) {
            final DataEnabledListener listener = (DataEnabledListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda15
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4296x7ed5ff96(listener, enabled, reason);
                }
            });
        }

        /* renamed from: lambda$onDataEnabledChanged$61$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4296x7ed5ff96(final DataEnabledListener listener, final boolean enabled, final int reason) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onDataEnabledChanged(enabled, reason);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onAllowedNetworkTypesChanged(final int reason, final long allowedNetworkType) {
            final AllowedNetworkTypesListener listener = (AllowedNetworkTypesListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4283xbce78414(listener, reason, allowedNetworkType);
                }
            });
        }

        /* renamed from: lambda$onAllowedNetworkTypesChanged$63$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4283xbce78414(final AllowedNetworkTypesListener listener, final int reason, final long allowedNetworkType) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onAllowedNetworkTypesChanged(reason, allowedNetworkType);
                }
            });
        }

        @Override // com.android.internal.telephony.IPhoneStateListener
        public void onLinkCapacityEstimateChanged(final List<LinkCapacityEstimate> linkCapacityEstimateList) {
            final LinkCapacityEstimateChangedListener listener = (LinkCapacityEstimateChangedListener) this.mTelephonyCallbackWeakRef.get();
            if (listener == null) {
                return;
            }
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda22
                @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                public final void runOrThrow() throws Exception {
                    this.f$0.m4300x294f3b37(listener, linkCapacityEstimateList);
                }
            });
        }

        /* renamed from: lambda$onLinkCapacityEstimateChanged$65$android-telephony-TelephonyCallback$IPhoneStateListenerStub, reason: not valid java name */
        /* synthetic */ void m4300x294f3b37(final LinkCapacityEstimateChangedListener listener, final List linkCapacityEstimateList) throws Exception {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onLinkCapacityEstimateChanged(linkCapacityEstimateList);
                }
            });
        }
    }
}
