package android.media.audiopolicy;

import android.annotation.SystemApi;
import android.app.ActivityManager;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFocusInfo;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.media.IAudioService;
import android.media.audiopolicy.IAudioPolicyCallback;
import android.media.projection.MediaProjection;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.util.Slog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

@SystemApi
/* loaded from: classes2.dex */
public class AudioPolicy {
    private static final boolean DEBUG = false;
    public static final int FOCUS_POLICY_DUCKING_DEFAULT = 0;
    public static final int FOCUS_POLICY_DUCKING_IN_APP = 0;
    public static final int FOCUS_POLICY_DUCKING_IN_POLICY = 1;
    private static final int MSG_FOCUS_ABANDON = 5;
    private static final int MSG_FOCUS_GRANT = 1;
    private static final int MSG_FOCUS_LOSS = 2;
    private static final int MSG_FOCUS_REQUEST = 4;
    private static final int MSG_MIX_STATE_UPDATE = 3;
    private static final int MSG_POLICY_STATUS_CHANGE = 0;
    private static final int MSG_VOL_ADJUST = 6;
    public static final int POLICY_STATUS_REGISTERED = 2;
    public static final int POLICY_STATUS_UNREGISTERED = 1;
    private static final String TAG = "AudioPolicy";
    private static IAudioService sService;
    private ArrayList<WeakReference<AudioRecord>> mCaptors;
    private AudioPolicyConfig mConfig;
    private Context mContext;
    private final EventHandler mEventHandler;
    private AudioPolicyFocusListener mFocusListener;
    private ArrayList<WeakReference<AudioTrack>> mInjectors;
    private boolean mIsFocusPolicy;
    private boolean mIsTestFocusPolicy;
    private final Object mLock;
    private final IAudioPolicyCallback mPolicyCb;
    private final MediaProjection mProjection;
    private String mRegistrationId;
    private int mStatus;
    private AudioPolicyStatusListener mStatusListener;
    private final AudioPolicyVolumeCallback mVolCb;

    @Retention(RetentionPolicy.SOURCE)
    public @interface PolicyStatus {
    }

    public AudioPolicyConfig getConfig() {
        return this.mConfig;
    }

    public boolean hasFocusListener() {
        return this.mFocusListener != null;
    }

    public boolean isFocusPolicy() {
        return this.mIsFocusPolicy;
    }

    public boolean isTestFocusPolicy() {
        return this.mIsTestFocusPolicy;
    }

    public boolean isVolumeController() {
        return this.mVolCb != null;
    }

    public MediaProjection getMediaProjection() {
        return this.mProjection;
    }

    private AudioPolicy(AudioPolicyConfig config, Context context, Looper looper, AudioPolicyFocusListener fl, AudioPolicyStatusListener sl, boolean isFocusPolicy, boolean isTestFocusPolicy, AudioPolicyVolumeCallback vc, MediaProjection projection) {
        this.mLock = new Object();
        this.mPolicyCb = new IAudioPolicyCallback.Stub() { // from class: android.media.audiopolicy.AudioPolicy.1
            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyAudioFocusGrant(AudioFocusInfo afi, int requestResult) {
                AudioPolicy.this.sendMsg(1, afi, requestResult);
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyAudioFocusLoss(AudioFocusInfo audioFocusInfo, boolean z) {
                AudioPolicy.this.sendMsg(2, audioFocusInfo, z ? 1 : 0);
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyAudioFocusRequest(AudioFocusInfo afi, int requestResult) {
                AudioPolicy.this.sendMsg(4, afi, requestResult);
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyAudioFocusAbandon(AudioFocusInfo afi) {
                AudioPolicy.this.sendMsg(5, afi, 0);
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyMixStateUpdate(String regId, int state) {
                Iterator<AudioMix> it = AudioPolicy.this.mConfig.getMixes().iterator();
                while (it.hasNext()) {
                    AudioMix mix = it.next();
                    if (mix.getRegistration().equals(regId)) {
                        mix.mMixState = state;
                        AudioPolicy.this.sendMsg(3, mix, 0);
                    }
                }
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyVolumeAdjust(int adjustment) {
                AudioPolicy.this.sendMsg(6, null, adjustment);
            }

            @Override // android.media.audiopolicy.IAudioPolicyCallback
            public void notifyUnregistration() {
                AudioPolicy.this.setRegistration(null);
            }
        };
        this.mConfig = config;
        this.mStatus = 1;
        this.mContext = context;
        looper = looper == null ? Looper.getMainLooper() : looper;
        if (looper != null) {
            this.mEventHandler = new EventHandler(this, looper);
        } else {
            this.mEventHandler = null;
            Log.e(TAG, "No event handler due to looper without a thread");
        }
        this.mFocusListener = fl;
        this.mStatusListener = sl;
        this.mIsFocusPolicy = isFocusPolicy;
        this.mIsTestFocusPolicy = isTestFocusPolicy;
        this.mVolCb = vc;
        this.mProjection = projection;
    }

    public static class Builder {
        private Context mContext;
        private AudioPolicyFocusListener mFocusListener;
        private Looper mLooper;
        private MediaProjection mProjection;
        private AudioPolicyStatusListener mStatusListener;
        private AudioPolicyVolumeCallback mVolCb;
        private boolean mIsFocusPolicy = false;
        private boolean mIsTestFocusPolicy = false;
        private ArrayList<AudioMix> mMixes = new ArrayList<>();

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder addMix(AudioMix mix) throws IllegalArgumentException {
            if (mix == null) {
                throw new IllegalArgumentException("Illegal null AudioMix argument");
            }
            this.mMixes.add(mix);
            return this;
        }

        public Builder setLooper(Looper looper) throws IllegalArgumentException {
            if (looper == null) {
                throw new IllegalArgumentException("Illegal null Looper argument");
            }
            this.mLooper = looper;
            return this;
        }

        public void setAudioPolicyFocusListener(AudioPolicyFocusListener l) {
            this.mFocusListener = l;
        }

        public Builder setIsAudioFocusPolicy(boolean isFocusPolicy) {
            this.mIsFocusPolicy = isFocusPolicy;
            return this;
        }

        public Builder setIsTestFocusPolicy(boolean isTestFocusPolicy) {
            this.mIsTestFocusPolicy = isTestFocusPolicy;
            return this;
        }

        public void setAudioPolicyStatusListener(AudioPolicyStatusListener l) {
            this.mStatusListener = l;
        }

        public Builder setAudioPolicyVolumeCallback(AudioPolicyVolumeCallback vc) {
            if (vc == null) {
                throw new IllegalArgumentException("Invalid null volume callback");
            }
            this.mVolCb = vc;
            return this;
        }

        public Builder setMediaProjection(MediaProjection projection) {
            if (projection == null) {
                throw new IllegalArgumentException("Invalid null volume callback");
            }
            this.mProjection = projection;
            return this;
        }

        public AudioPolicy build() {
            if (this.mStatusListener != null) {
                Iterator<AudioMix> it = this.mMixes.iterator();
                while (it.hasNext()) {
                    AudioMix mix = it.next();
                    mix.mCallbackFlags |= 1;
                }
            }
            if (this.mIsFocusPolicy && this.mFocusListener == null) {
                throw new IllegalStateException("Cannot be a focus policy without an AudioPolicyFocusListener");
            }
            return new AudioPolicy(new AudioPolicyConfig(this.mMixes), this.mContext, this.mLooper, this.mFocusListener, this.mStatusListener, this.mIsFocusPolicy, this.mIsTestFocusPolicy, this.mVolCb, this.mProjection);
        }
    }

    public int attachMixes(List<AudioMix> mixes) {
        int status;
        if (mixes == null) {
            throw new IllegalArgumentException("Illegal null list of AudioMix");
        }
        synchronized (this.mLock) {
            if (this.mStatus != 2) {
                throw new IllegalStateException("Cannot alter unregistered AudioPolicy");
            }
            ArrayList<AudioMix> zeMixes = new ArrayList<>(mixes.size());
            for (AudioMix mix : mixes) {
                if (mix == null) {
                    throw new IllegalArgumentException("Illegal null AudioMix in attachMixes");
                }
                zeMixes.add(mix);
            }
            AudioPolicyConfig cfg = new AudioPolicyConfig(zeMixes);
            IAudioService service = getService();
            try {
                status = service.addMixForPolicy(cfg, cb());
                if (status == 0) {
                    this.mConfig.add(zeMixes);
                }
            } catch (RemoteException e) {
                Log.e(TAG, "Dead object in attachMixes", e);
                return -1;
            }
        }
        return status;
    }

    public int detachMixes(List<AudioMix> mixes) {
        int status;
        if (mixes == null) {
            throw new IllegalArgumentException("Illegal null list of AudioMix");
        }
        synchronized (this.mLock) {
            if (this.mStatus != 2) {
                throw new IllegalStateException("Cannot alter unregistered AudioPolicy");
            }
            ArrayList<AudioMix> zeMixes = new ArrayList<>(mixes.size());
            for (AudioMix mix : mixes) {
                if (mix == null) {
                    throw new IllegalArgumentException("Illegal null AudioMix in detachMixes");
                }
                zeMixes.add(mix);
            }
            AudioPolicyConfig cfg = new AudioPolicyConfig(zeMixes);
            IAudioService service = getService();
            try {
                status = service.removeMixForPolicy(cfg, cb());
                if (status == 0) {
                    this.mConfig.remove(zeMixes);
                }
            } catch (RemoteException e) {
                Log.e(TAG, "Dead object in detachMixes", e);
                return -1;
            }
        }
        return status;
    }

    @SystemApi
    public boolean setUidDeviceAffinity(int uid, List<AudioDeviceInfo> devices) {
        boolean z;
        if (devices == null) {
            throw new IllegalArgumentException("Illegal null list of audio devices");
        }
        synchronized (this.mLock) {
            if (this.mStatus != 2) {
                throw new IllegalStateException("Cannot use unregistered AudioPolicy");
            }
            int[] deviceTypes = new int[devices.size()];
            String[] deviceAdresses = new String[devices.size()];
            int i = 0;
            for (AudioDeviceInfo device : devices) {
                if (device == null) {
                    throw new IllegalArgumentException("Illegal null AudioDeviceInfo in setUidDeviceAffinity");
                }
                deviceTypes[i] = AudioDeviceInfo.convertDeviceTypeToInternalDevice(device.getType());
                deviceAdresses[i] = device.getAddress();
                i++;
            }
            IAudioService service = getService();
            try {
                int status = service.setUidDeviceAffinity(cb(), uid, deviceTypes, deviceAdresses);
                z = status == 0;
            } catch (RemoteException e) {
                Log.e(TAG, "Dead object in setUidDeviceAffinity", e);
                return false;
            }
        }
        return z;
    }

    @SystemApi
    public boolean removeUidDeviceAffinity(int uid) {
        boolean z;
        synchronized (this.mLock) {
            if (this.mStatus != 2) {
                throw new IllegalStateException("Cannot use unregistered AudioPolicy");
            }
            IAudioService service = getService();
            try {
                int status = service.removeUidDeviceAffinity(cb(), uid);
                z = status == 0;
            } catch (RemoteException e) {
                Log.e(TAG, "Dead object in removeUidDeviceAffinity", e);
                return false;
            }
        }
        return z;
    }

    @SystemApi
    public boolean removeUserIdDeviceAffinity(int userId) {
        boolean z;
        synchronized (this.mLock) {
            if (this.mStatus != 2) {
                throw new IllegalStateException("Cannot use unregistered AudioPolicy");
            }
            IAudioService service = getService();
            try {
                int status = service.removeUserIdDeviceAffinity(cb(), userId);
                z = status == 0;
            } catch (RemoteException e) {
                Log.e(TAG, "Dead object in removeUserIdDeviceAffinity", e);
                return false;
            }
        }
        return z;
    }

    @SystemApi
    public boolean setUserIdDeviceAffinity(int userId, List<AudioDeviceInfo> devices) {
        boolean z;
        Objects.requireNonNull(devices, "Illegal null list of audio devices");
        synchronized (this.mLock) {
            if (this.mStatus != 2) {
                throw new IllegalStateException("Cannot use unregistered AudioPolicy");
            }
            int[] deviceTypes = new int[devices.size()];
            String[] deviceAddresses = new String[devices.size()];
            int i = 0;
            for (AudioDeviceInfo device : devices) {
                if (device == null) {
                    throw new IllegalArgumentException("Illegal null AudioDeviceInfo in setUserIdDeviceAffinity");
                }
                deviceTypes[i] = AudioDeviceInfo.convertDeviceTypeToInternalDevice(device.getType());
                deviceAddresses[i] = device.getAddress();
                i++;
            }
            IAudioService service = getService();
            try {
                int status = service.setUserIdDeviceAffinity(cb(), userId, deviceTypes, deviceAddresses);
                z = status == 0;
            } catch (RemoteException e) {
                Log.e(TAG, "Dead object in setUserIdDeviceAffinity", e);
                return false;
            }
        }
        return z;
    }

    public void reset() {
        setRegistration(null);
        this.mConfig.reset();
    }

    public void setRegistration(String regId) {
        synchronized (this.mLock) {
            this.mRegistrationId = regId;
            this.mConfig.setRegistration(regId);
            if (regId != null) {
                this.mStatus = 2;
            } else {
                this.mStatus = 1;
            }
        }
        sendMsg(0);
    }

    public String getRegistration() {
        return this.mRegistrationId;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean policyReadyToUse() {
        /*
            r7 = this;
            java.lang.Object r0 = r7.mLock
            monitor-enter(r0)
            int r1 = r7.mStatus     // Catch: java.lang.Throwable -> L9a
            r2 = 2
            r3 = 0
            if (r1 == r2) goto L12
            java.lang.String r1 = "AudioPolicy"
            java.lang.String r2 = "Cannot use unregistered AudioPolicy"
            android.util.Log.e(r1, r2)     // Catch: java.lang.Throwable -> L9a
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
            return r3
        L12:
            java.lang.String r1 = r7.mRegistrationId     // Catch: java.lang.Throwable -> L9a
            if (r1 != 0) goto L1f
            java.lang.String r1 = "AudioPolicy"
            java.lang.String r2 = "Cannot use unregistered AudioPolicy"
            android.util.Log.e(r1, r2)     // Catch: java.lang.Throwable -> L9a
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
            return r3
        L1f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
            java.lang.String r0 = "android.permission.MODIFY_AUDIO_ROUTING"
            int r0 = r7.checkCallingOrSelfPermission(r0)
            r1 = 1
            if (r0 != 0) goto L2b
            r0 = r1
            goto L2c
        L2b:
            r0 = r3
        L2c:
            java.lang.String r2 = "android.permission.CALL_AUDIO_INTERCEPTION"
            int r2 = r7.checkCallingOrSelfPermission(r2)
            if (r2 != 0) goto L36
            r2 = r1
            goto L37
        L36:
            r2 = r3
        L37:
            android.media.projection.MediaProjection r4 = r7.mProjection     // Catch: android.os.RemoteException -> L8d
            if (r4 == 0) goto L47
            android.media.projection.IMediaProjection r4 = r4.getProjection()     // Catch: android.os.RemoteException -> L8d
            boolean r4 = r4.canProjectAudio()     // Catch: android.os.RemoteException -> L8d
            if (r4 == 0) goto L47
            r4 = r1
            goto L48
        L47:
            r4 = r3
        L48:
            boolean r5 = r7.isLoopbackRenderPolicy()
            if (r5 == 0) goto L51
            if (r4 != 0) goto L8c
        L51:
            boolean r5 = r7.isCallRedirectionPolicy()
            if (r5 == 0) goto L59
            if (r2 != 0) goto L8c
        L59:
            if (r0 != 0) goto L8c
            java.lang.String r1 = "AudioPolicy"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Cannot use AudioPolicy for pid "
            java.lang.StringBuilder r5 = r5.append(r6)
            int r6 = android.os.Binder.getCallingPid()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = " / uid "
            java.lang.StringBuilder r5 = r5.append(r6)
            int r6 = android.os.Binder.getCallingUid()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = ", needs MODIFY_AUDIO_ROUTING or MediaProjection that can project audio."
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            android.util.Slog.w(r1, r5)
            return r3
        L8c:
            return r1
        L8d:
            r1 = move-exception
            java.lang.String r3 = "AudioPolicy"
            java.lang.String r4 = "Failed to check if MediaProjection#canProjectAudio"
            android.util.Log.e(r3, r4)
            java.lang.RuntimeException r3 = r1.rethrowFromSystemServer()
            throw r3
        L9a:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.media.audiopolicy.AudioPolicy.policyReadyToUse():boolean");
    }

    private boolean isLoopbackRenderPolicy() {
        boolean zAllMatch;
        synchronized (this.mLock) {
            zAllMatch = this.mConfig.mMixes.stream().allMatch(new Predicate() { // from class: android.media.audiopolicy.AudioPolicy$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return AudioPolicy.lambda$isLoopbackRenderPolicy$0((AudioMix) obj);
                }
            });
        }
        return zAllMatch;
    }

    static /* synthetic */ boolean lambda$isLoopbackRenderPolicy$0(AudioMix mix) {
        return mix.getRouteFlags() == 3;
    }

    private boolean isCallRedirectionPolicy() {
        synchronized (this.mLock) {
            Iterator<AudioMix> it = this.mConfig.mMixes.iterator();
            while (it.hasNext()) {
                AudioMix mix = it.next();
                if (mix.isForCallRedirection()) {
                    return true;
                }
            }
            return false;
        }
    }

    private int checkCallingOrSelfPermission(String permission) {
        Context context = this.mContext;
        if (context != null) {
            return context.checkCallingOrSelfPermission(permission);
        }
        Slog.v(TAG, "Null context, checking permission via ActivityManager");
        int pid = Binder.getCallingPid();
        int uid = Binder.getCallingUid();
        try {
            return ActivityManager.getService().checkPermission(permission, pid, uid);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    private void checkMixReadyToUse(AudioMix mix, boolean forTrack) throws IllegalArgumentException {
        if (mix == null) {
            String msg = forTrack ? "Invalid null AudioMix for AudioTrack creation" : "Invalid null AudioMix for AudioRecord creation";
            throw new IllegalArgumentException(msg);
        }
        if (!this.mConfig.mMixes.contains(mix)) {
            throw new IllegalArgumentException("Invalid mix: not part of this policy");
        }
        if ((mix.getRouteFlags() & 2) != 2) {
            throw new IllegalArgumentException("Invalid AudioMix: not defined for loop back");
        }
        if (forTrack && mix.getMixType() != 1) {
            throw new IllegalArgumentException("Invalid AudioMix: not defined for being a recording source");
        }
        if (!forTrack && mix.getMixType() != 0) {
            throw new IllegalArgumentException("Invalid AudioMix: not defined for capturing playback");
        }
    }

    public int getFocusDuckingBehavior() {
        return this.mConfig.mDuckingPolicy;
    }

    public int setFocusDuckingBehavior(int behavior) throws IllegalStateException, IllegalArgumentException {
        int status;
        if (behavior != 0 && behavior != 1) {
            throw new IllegalArgumentException("Invalid ducking behavior " + behavior);
        }
        synchronized (this.mLock) {
            if (this.mStatus != 2) {
                throw new IllegalStateException("Cannot change ducking behavior for unregistered policy");
            }
            if (behavior == 1 && this.mFocusListener == null) {
                throw new IllegalStateException("Cannot handle ducking without an audio focus listener");
            }
            IAudioService service = getService();
            try {
                status = service.setFocusPropertiesForPolicy(behavior, cb());
                if (status == 0) {
                    this.mConfig.mDuckingPolicy = behavior;
                }
            } catch (RemoteException e) {
                Log.e(TAG, "Dead object in setFocusPropertiesForPolicy for behavior", e);
                return -1;
            }
        }
        return status;
    }

    public List<AudioFocusInfo> getFocusStack() {
        try {
            return getService().getFocusStack();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean sendFocusLoss(AudioFocusInfo focusLoser) throws IllegalStateException {
        Objects.requireNonNull(focusLoser);
        try {
            return getService().sendFocusLoss(focusLoser, cb());
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public AudioRecord createAudioRecordSink(AudioMix mix) throws IllegalArgumentException {
        if (!policyReadyToUse()) {
            Log.e(TAG, "Cannot create AudioRecord sink for AudioMix");
            return null;
        }
        checkMixReadyToUse(mix, false);
        AudioFormat mixFormat = new AudioFormat.Builder(mix.getFormat()).setChannelMask(AudioFormat.inChannelMaskFromOutChannelMask(mix.getFormat().getChannelMask())).build();
        AudioAttributes.Builder ab = new AudioAttributes.Builder().setInternalCapturePreset(8).addTag(addressForTag(mix)).addTag(AudioRecord.SUBMIX_FIXED_VOLUME);
        if (mix.isForCallRedirection()) {
            ab.setForCallRedirection();
        }
        AudioRecord ar = new AudioRecord(ab.build(), mixFormat, AudioRecord.getMinBufferSize(mix.getFormat().getSampleRate(), 12, mix.getFormat().getEncoding()), 0);
        synchronized (this.mLock) {
            if (this.mCaptors == null) {
                this.mCaptors = new ArrayList<>(1);
            }
            this.mCaptors.add(new WeakReference<>(ar));
        }
        return ar;
    }

    public AudioTrack createAudioTrackSource(AudioMix mix) throws IllegalArgumentException {
        if (!policyReadyToUse()) {
            Log.e(TAG, "Cannot create AudioTrack source for AudioMix");
            return null;
        }
        checkMixReadyToUse(mix, true);
        AudioAttributes.Builder ab = new AudioAttributes.Builder().setUsage(15).addTag(addressForTag(mix));
        if (mix.isForCallRedirection()) {
            ab.setForCallRedirection();
        }
        AudioTrack at = new AudioTrack(ab.build(), mix.getFormat(), AudioTrack.getMinBufferSize(mix.getFormat().getSampleRate(), mix.getFormat().getChannelMask(), mix.getFormat().getEncoding()), 1, 0);
        synchronized (this.mLock) {
            if (this.mInjectors == null) {
                this.mInjectors = new ArrayList<>(1);
            }
            this.mInjectors.add(new WeakReference<>(at));
        }
        return at;
    }

    public void invalidateCaptorsAndInjectors() {
        if (!policyReadyToUse()) {
            return;
        }
        synchronized (this.mLock) {
            ArrayList<WeakReference<AudioTrack>> arrayList = this.mInjectors;
            if (arrayList != null) {
                Iterator<WeakReference<AudioTrack>> it = arrayList.iterator();
                while (it.hasNext()) {
                    WeakReference<AudioTrack> weakTrack = it.next();
                    AudioTrack track = weakTrack.get();
                    if (track == null) {
                        break;
                    }
                    try {
                        track.stop();
                        track.flush();
                    } catch (IllegalStateException e) {
                    }
                }
            }
            ArrayList<WeakReference<AudioRecord>> arrayList2 = this.mCaptors;
            if (arrayList2 != null) {
                Iterator<WeakReference<AudioRecord>> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    WeakReference<AudioRecord> weakRecord = it2.next();
                    AudioRecord record = weakRecord.get();
                    if (record == null) {
                        break;
                    } else {
                        try {
                            record.stop();
                        } catch (IllegalStateException e2) {
                        }
                    }
                }
            }
        }
    }

    public int getStatus() {
        return this.mStatus;
    }

    public static abstract class AudioPolicyStatusListener {
        public void onStatusChange() {
        }

        public void onMixStateUpdate(AudioMix mix) {
        }
    }

    public static abstract class AudioPolicyFocusListener {
        public void onAudioFocusGrant(AudioFocusInfo afi, int requestResult) {
        }

        public void onAudioFocusLoss(AudioFocusInfo afi, boolean wasNotified) {
        }

        public void onAudioFocusRequest(AudioFocusInfo afi, int requestResult) {
        }

        public void onAudioFocusAbandon(AudioFocusInfo afi) {
        }
    }

    public static abstract class AudioPolicyVolumeCallback {
        public void onVolumeAdjustment(int adjustment) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPolicyStatusChange() {
        synchronized (this.mLock) {
            AudioPolicyStatusListener l = this.mStatusListener;
            if (l == null) {
                return;
            }
            l.onStatusChange();
        }
    }

    public IAudioPolicyCallback cb() {
        return this.mPolicyCb;
    }

    private class EventHandler extends Handler {
        public EventHandler(AudioPolicy ap, Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    AudioPolicy.this.onPolicyStatusChange();
                    break;
                case 1:
                    if (AudioPolicy.this.mFocusListener != null) {
                        AudioPolicy.this.mFocusListener.onAudioFocusGrant((AudioFocusInfo) msg.obj, msg.arg1);
                        break;
                    }
                    break;
                case 2:
                    if (AudioPolicy.this.mFocusListener != null) {
                        AudioPolicy.this.mFocusListener.onAudioFocusLoss((AudioFocusInfo) msg.obj, msg.arg1 != 0);
                        break;
                    }
                    break;
                case 3:
                    if (AudioPolicy.this.mStatusListener != null) {
                        AudioPolicy.this.mStatusListener.onMixStateUpdate((AudioMix) msg.obj);
                        break;
                    }
                    break;
                case 4:
                    if (AudioPolicy.this.mFocusListener != null) {
                        AudioPolicy.this.mFocusListener.onAudioFocusRequest((AudioFocusInfo) msg.obj, msg.arg1);
                        break;
                    } else {
                        Log.e(AudioPolicy.TAG, "Invalid null focus listener for focus request event");
                        break;
                    }
                case 5:
                    if (AudioPolicy.this.mFocusListener != null) {
                        AudioPolicy.this.mFocusListener.onAudioFocusAbandon((AudioFocusInfo) msg.obj);
                        break;
                    } else {
                        Log.e(AudioPolicy.TAG, "Invalid null focus listener for focus abandon event");
                        break;
                    }
                case 6:
                    if (AudioPolicy.this.mVolCb != null) {
                        AudioPolicy.this.mVolCb.onVolumeAdjustment(msg.arg1);
                        break;
                    } else {
                        Log.e(AudioPolicy.TAG, "Invalid null volume event");
                        break;
                    }
                default:
                    Log.e(AudioPolicy.TAG, "Unknown event " + msg.what);
                    break;
            }
        }
    }

    private static String addressForTag(AudioMix mix) {
        return "addr=" + mix.getRegistration();
    }

    private void sendMsg(int msg) {
        EventHandler eventHandler = this.mEventHandler;
        if (eventHandler != null) {
            eventHandler.sendEmptyMessage(msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMsg(int msg, Object obj, int i) {
        EventHandler eventHandler = this.mEventHandler;
        if (eventHandler != null) {
            eventHandler.sendMessage(eventHandler.obtainMessage(msg, i, 0, obj));
        }
    }

    private static IAudioService getService() {
        IAudioService iAudioService = sService;
        if (iAudioService != null) {
            return iAudioService;
        }
        IBinder b = ServiceManager.getService("audio");
        IAudioService iAudioServiceAsInterface = IAudioService.Stub.asInterface(b);
        sService = iAudioServiceAsInterface;
        return iAudioServiceAsInterface;
    }

    public String toLogFriendlyString() {
        String textDump = new String("android.media.audiopolicy.AudioPolicy:\n");
        return textDump + "config=" + this.mConfig.toLogFriendlyString();
    }
}
