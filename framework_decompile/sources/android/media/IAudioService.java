package android.media;

import android.bluetooth.BluetoothDevice;
import android.media.IAudioDeviceVolumeDispatcher;
import android.media.IAudioFocusDispatcher;
import android.media.IAudioModeDispatcher;
import android.media.IAudioRoutesObserver;
import android.media.IAudioServerStateDispatcher;
import android.media.ICapturePresetDevicesRoleDispatcher;
import android.media.ICommunicationDeviceDispatcher;
import android.media.IDeviceVolumeBehaviorDispatcher;
import android.media.IMuteAwaitConnectionCallback;
import android.media.IPlaybackConfigDispatcher;
import android.media.IRecordingConfigDispatcher;
import android.media.IRingtonePlayer;
import android.media.ISpatializerCallback;
import android.media.ISpatializerHeadToSoundStagePoseCallback;
import android.media.ISpatializerHeadTrackerAvailableCallback;
import android.media.ISpatializerHeadTrackingModeCallback;
import android.media.ISpatializerOutputCallback;
import android.media.IStrategyPreferredDevicesDispatcher;
import android.media.IVolumeController;
import android.media.PlayerBase;
import android.media.audiopolicy.AudioPolicyConfig;
import android.media.audiopolicy.IAudioPolicyCallback;
import android.media.projection.IMediaProjection;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.UserHandle;
import android.view.KeyEvent;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface IAudioService extends IInterface {
    int abandonAudioFocus(IAudioFocusDispatcher iAudioFocusDispatcher, String str, AudioAttributes audioAttributes, String str2) throws RemoteException;

    int abandonAudioFocusForTest(IAudioFocusDispatcher iAudioFocusDispatcher, String str, AudioAttributes audioAttributes, String str2) throws RemoteException;

    void addAssistantServicesUids(int[] iArr) throws RemoteException;

    int addMixForPolicy(AudioPolicyConfig audioPolicyConfig, IAudioPolicyCallback iAudioPolicyCallback) throws RemoteException;

    void addSpatializerCompatibleAudioDevice(AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    void adjustStreamVolume(int i, int i2, int i3, String str) throws RemoteException;

    void adjustStreamVolumeForUid(int i, int i2, int i3, String str, int i4, int i5, UserHandle userHandle, int i6) throws RemoteException;

    void adjustStreamVolumeWithAttribution(int i, int i2, int i3, String str, String str2) throws RemoteException;

    void adjustSuggestedStreamVolumeForUid(int i, int i2, int i3, String str, int i4, int i5, UserHandle userHandle, int i6) throws RemoteException;

    boolean areNavigationRepeatSoundEffectsEnabled() throws RemoteException;

    void cacheBinauralRecordParameters(String str) throws RemoteException;

    void cacheParameters(String str) throws RemoteException;

    boolean canBeSpatialized(AudioAttributes audioAttributes, AudioFormat audioFormat) throws RemoteException;

    void cancelMuteAwaitConnection(AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    int clearPreferredDevicesForCapturePreset(int i) throws RemoteException;

    void disableSafeMediaVolume(String str) throws RemoteException;

    int dispatchFocusChange(AudioFocusInfo audioFocusInfo, int i, IAudioPolicyCallback iAudioPolicyCallback) throws RemoteException;

    void forceRemoteSubmixFullVolume(boolean z, IBinder iBinder) throws RemoteException;

    void forceVolumeControlStream(int i, IBinder iBinder) throws RemoteException;

    int[] getActiveAssistantServiceUids() throws RemoteException;

    List<AudioPlaybackConfiguration> getActivePlaybackConfigurations() throws RemoteException;

    List<AudioRecordingConfiguration> getActiveRecordingConfigurations() throws RemoteException;

    int getActualHeadTrackingMode() throws RemoteException;

    long getAdditionalOutputDeviceDelay(AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    int getAllowedCapturePolicy() throws RemoteException;

    int[] getAssistantServicesUids() throws RemoteException;

    List<android.media.audiopolicy.AudioProductStrategy> getAudioProductStrategies() throws RemoteException;

    List<android.media.audiopolicy.AudioVolumeGroup> getAudioVolumeGroups() throws RemoteException;

    int[] getAvailableCommunicationDeviceIds() throws RemoteException;

    int getBleCgVolume() throws RemoteException;

    int getCommunicationDevice() throws RemoteException;

    int getCurrentAudioFocus() throws RemoteException;

    VolumeInfo getDefaultVolumeInfo() throws RemoteException;

    int getDesiredHeadTrackingMode() throws RemoteException;

    int getDeviceMaskForStream(int i) throws RemoteException;

    int getDeviceVolumeBehavior(AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    List<AudioDeviceAttributes> getDevicesForAttributes(AudioAttributes audioAttributes) throws RemoteException;

    List<AudioDeviceAttributes> getDevicesForAttributesUnprotected(AudioAttributes audioAttributes) throws RemoteException;

    int getEncodedSurroundMode(int i) throws RemoteException;

    long getFadeOutDurationOnFocusLossMillis(AudioAttributes audioAttributes) throws RemoteException;

    int getFocusRampTimeMs(int i, AudioAttributes audioAttributes) throws RemoteException;

    List<AudioFocusInfo> getFocusStack() throws RemoteException;

    String getHalVersion() throws RemoteException;

    int getLastAudibleStreamVolume(int i) throws RemoteException;

    int getLastHfpScoVolume() throws RemoteException;

    long getMaxAdditionalOutputDeviceDelay(AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    int getMaxVolumeIndexForAttributes(AudioAttributes audioAttributes) throws RemoteException;

    int getMinVolumeIndexForAttributes(AudioAttributes audioAttributes) throws RemoteException;

    int getMode() throws RemoteException;

    AudioDeviceAttributes getMutingExpectedDevice() throws RemoteException;

    String getParameters(String str) throws RemoteException;

    List<AudioDeviceAttributes> getPreferredDevicesForCapturePreset(int i) throws RemoteException;

    List<AudioDeviceAttributes> getPreferredDevicesForStrategy(int i) throws RemoteException;

    List getReportedSurroundFormats() throws RemoteException;

    int getRingerModeExternal() throws RemoteException;

    int getRingerModeInternal() throws RemoteException;

    IRingtonePlayer getRingtonePlayer() throws RemoteException;

    List<AudioDeviceAttributes> getSpatializerCompatibleAudioDevices() throws RemoteException;

    int getSpatializerImmersiveAudioLevel() throws RemoteException;

    int getSpatializerOutput() throws RemoteException;

    void getSpatializerParameter(int i, byte[] bArr) throws RemoteException;

    int getStreamMaxVolume(int i) throws RemoteException;

    int getStreamMinVolume(int i) throws RemoteException;

    int getStreamVolume(int i) throws RemoteException;

    int[] getSupportedHeadTrackingModes() throws RemoteException;

    int[] getSupportedSystemUsages() throws RemoteException;

    Map getSurroundFormats() throws RemoteException;

    int getUiSoundsStreamType() throws RemoteException;

    int getVibrateSetting(int i) throws RemoteException;

    int getVolumeIndexForAttributes(AudioAttributes audioAttributes) throws RemoteException;

    void handleBluetoothA2dpActiveDeviceChange(BluetoothDevice bluetoothDevice, int i, int i2, boolean z, int i3) throws RemoteException;

    void handleBluetoothActiveDeviceChanged(BluetoothDevice bluetoothDevice, BluetoothDevice bluetoothDevice2, BluetoothProfileConnectionInfo bluetoothProfileConnectionInfo) throws RemoteException;

    void handleVolumeKey(KeyEvent keyEvent, boolean z, String str, String str2) throws RemoteException;

    boolean hasHapticChannels(Uri uri) throws RemoteException;

    boolean hasHeadTracker(AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    boolean hasRegisteredDynamicPolicy() throws RemoteException;

    boolean isAudioServerRunning() throws RemoteException;

    boolean isBluetoothA2dpOn() throws RemoteException;

    boolean isBluetoothScoOn() throws RemoteException;

    boolean isCallScreeningModeSupported() throws RemoteException;

    boolean isCameraSoundForced() throws RemoteException;

    boolean isHdmiSystemAudioSupported() throws RemoteException;

    boolean isHeadTrackerAvailable() throws RemoteException;

    boolean isHeadTrackerEnabled(AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    boolean isHomeSoundEffectEnabled() throws RemoteException;

    boolean isMasterMute() throws RemoteException;

    boolean isMicrophoneMuted() throws RemoteException;

    boolean isMusicActive(boolean z) throws RemoteException;

    boolean isPstnCallAudioInterceptable() throws RemoteException;

    boolean isSpatializerAvailable() throws RemoteException;

    boolean isSpatializerAvailableForDevice(AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    boolean isSpatializerEnabled() throws RemoteException;

    boolean isSpeakerphoneOn() throws RemoteException;

    boolean isStreamAffectedByMute(int i) throws RemoteException;

    boolean isStreamAffectedByRingerMode(int i) throws RemoteException;

    boolean isStreamMute(int i) throws RemoteException;

    boolean isSurroundFormatEnabled(int i) throws RemoteException;

    boolean isUltrasoundSupported() throws RemoteException;

    boolean isValidRingerMode(int i) throws RemoteException;

    boolean isVolumeFixed() throws RemoteException;

    boolean loadSoundEffects() throws RemoteException;

    void muteAwaitConnection(int[] iArr, AudioDeviceAttributes audioDeviceAttributes, long j) throws RemoteException;

    void notifyVolumeControllerVisible(IVolumeController iVolumeController, boolean z) throws RemoteException;

    void oplusRegisterModeDispatcher(IAudioModeDispatcher iAudioModeDispatcher) throws RemoteException;

    void playSoundEffect(int i, int i2) throws RemoteException;

    void playSoundEffectVolume(int i, float f) throws RemoteException;

    void playerAttributes(int i, AudioAttributes audioAttributes) throws RemoteException;

    void playerEvent(int i, int i2, int i3) throws RemoteException;

    void playerHasOpPlayAudio(int i, boolean z) throws RemoteException;

    void playerSessionId(int i, int i2) throws RemoteException;

    void recenterHeadTracker() throws RemoteException;

    void recorderEvent(int i, int i2) throws RemoteException;

    String registerAudioPolicy(AudioPolicyConfig audioPolicyConfig, IAudioPolicyCallback iAudioPolicyCallback, boolean z, boolean z2, boolean z3, boolean z4, IMediaProjection iMediaProjection) throws RemoteException;

    void registerAudioServerStateDispatcher(IAudioServerStateDispatcher iAudioServerStateDispatcher) throws RemoteException;

    void registerCapturePresetDevicesRoleDispatcher(ICapturePresetDevicesRoleDispatcher iCapturePresetDevicesRoleDispatcher) throws RemoteException;

    void registerCommunicationDeviceDispatcher(ICommunicationDeviceDispatcher iCommunicationDeviceDispatcher) throws RemoteException;

    void registerDeviceVolumeBehaviorDispatcher(boolean z, IDeviceVolumeBehaviorDispatcher iDeviceVolumeBehaviorDispatcher) throws RemoteException;

    void registerDeviceVolumeDispatcherForAbsoluteVolume(boolean z, IAudioDeviceVolumeDispatcher iAudioDeviceVolumeDispatcher, String str, AudioDeviceAttributes audioDeviceAttributes, List<VolumeInfo> list, boolean z2) throws RemoteException;

    void registerHeadToSoundstagePoseCallback(ISpatializerHeadToSoundStagePoseCallback iSpatializerHeadToSoundStagePoseCallback) throws RemoteException;

    void registerModeDispatcher(IAudioModeDispatcher iAudioModeDispatcher) throws RemoteException;

    void registerMuteAwaitConnectionDispatcher(IMuteAwaitConnectionCallback iMuteAwaitConnectionCallback, boolean z) throws RemoteException;

    void registerPlaybackCallback(IPlaybackConfigDispatcher iPlaybackConfigDispatcher) throws RemoteException;

    void registerRecordingCallback(IRecordingConfigDispatcher iRecordingConfigDispatcher) throws RemoteException;

    void registerSpatializerCallback(ISpatializerCallback iSpatializerCallback) throws RemoteException;

    void registerSpatializerHeadTrackerAvailableCallback(ISpatializerHeadTrackerAvailableCallback iSpatializerHeadTrackerAvailableCallback, boolean z) throws RemoteException;

    void registerSpatializerHeadTrackingCallback(ISpatializerHeadTrackingModeCallback iSpatializerHeadTrackingModeCallback) throws RemoteException;

    void registerSpatializerOutputCallback(ISpatializerOutputCallback iSpatializerOutputCallback) throws RemoteException;

    void registerStrategyPreferredDevicesDispatcher(IStrategyPreferredDevicesDispatcher iStrategyPreferredDevicesDispatcher) throws RemoteException;

    void releasePlayer(int i) throws RemoteException;

    void releaseRecorder(int i) throws RemoteException;

    void reloadAudioSettings() throws RemoteException;

    void removeAssistantServicesUids(int[] iArr) throws RemoteException;

    int removeMixForPolicy(AudioPolicyConfig audioPolicyConfig, IAudioPolicyCallback iAudioPolicyCallback) throws RemoteException;

    int removePreferredDevicesForStrategy(int i) throws RemoteException;

    void removeSpatializerCompatibleAudioDevice(AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    int removeUidDeviceAffinity(IAudioPolicyCallback iAudioPolicyCallback, int i) throws RemoteException;

    int removeUserIdDeviceAffinity(IAudioPolicyCallback iAudioPolicyCallback, int i) throws RemoteException;

    int requestAudioFocus(AudioAttributes audioAttributes, int i, IBinder iBinder, IAudioFocusDispatcher iAudioFocusDispatcher, String str, String str2, String str3, int i2, IAudioPolicyCallback iAudioPolicyCallback, int i3) throws RemoteException;

    int requestAudioFocusForTest(AudioAttributes audioAttributes, int i, IBinder iBinder, IAudioFocusDispatcher iAudioFocusDispatcher, String str, String str2, int i2, int i3, int i4) throws RemoteException;

    boolean sendFocusLoss(AudioFocusInfo audioFocusInfo, IAudioPolicyCallback iAudioPolicyCallback) throws RemoteException;

    void setActiveAssistantServiceUids(int[] iArr) throws RemoteException;

    boolean setAdditionalOutputDeviceDelay(AudioDeviceAttributes audioDeviceAttributes, long j) throws RemoteException;

    int setAllowedCapturePolicy(int i) throws RemoteException;

    void setBluetoothA2dpOn(boolean z) throws RemoteException;

    void setBluetoothScoOn(boolean z) throws RemoteException;

    boolean setCommunicationDevice(IBinder iBinder, int i) throws RemoteException;

    void setDesiredHeadTrackingMode(int i) throws RemoteException;

    void setDeviceVolumeBehavior(AudioDeviceAttributes audioDeviceAttributes, int i, String str) throws RemoteException;

    boolean setEncodedSurroundMode(int i) throws RemoteException;

    int setFocusPropertiesForPolicy(int i, IAudioPolicyCallback iAudioPolicyCallback) throws RemoteException;

    void setFocusRequestResultFromExtPolicy(AudioFocusInfo audioFocusInfo, int i, IAudioPolicyCallback iAudioPolicyCallback) throws RemoteException;

    int setHdmiSystemAudioSupported(boolean z) throws RemoteException;

    void setHeadTrackerEnabled(boolean z, AudioDeviceAttributes audioDeviceAttributes) throws RemoteException;

    void setHomeSoundEffectEnabled(boolean z) throws RemoteException;

    void setIPDeviceConnectionState(AudioDeviceAttributes audioDeviceAttributes, int i, String str, IBinder iBinder, boolean z) throws RemoteException;

    void setMasterMute(boolean z, int i, String str, int i2, String str2) throws RemoteException;

    void setMicrophoneMute(boolean z, String str, int i, String str2) throws RemoteException;

    void setMicrophoneMuteFromSwitch(boolean z) throws RemoteException;

    void setMode(int i, IBinder iBinder, String str) throws RemoteException;

    void setMultiAudioFocusEnabled(boolean z) throws RemoteException;

    void setNavigationRepeatSoundEffectsEnabled(boolean z) throws RemoteException;

    void setParameters(String str) throws RemoteException;

    int setPreferredDevicesForCapturePreset(int i, List<AudioDeviceAttributes> list) throws RemoteException;

    int setPreferredDevicesForStrategy(int i, List<AudioDeviceAttributes> list) throws RemoteException;

    void setRingerModeExternal(int i, String str) throws RemoteException;

    void setRingerModeInternal(int i, String str) throws RemoteException;

    void setRingtonePlayer(IRingtonePlayer iRingtonePlayer) throws RemoteException;

    void setRttEnabled(boolean z) throws RemoteException;

    void setSpatializerEnabled(boolean z) throws RemoteException;

    void setSpatializerGlobalTransform(float[] fArr) throws RemoteException;

    void setSpatializerParameter(int i, byte[] bArr) throws RemoteException;

    void setSpeakerphoneOn(IBinder iBinder, boolean z) throws RemoteException;

    void setStreamVolume(int i, int i2, int i3, String str) throws RemoteException;

    void setStreamVolumeForUid(int i, int i2, int i3, String str, int i4, int i5, UserHandle userHandle, int i6) throws RemoteException;

    boolean setStreamVolumePermission() throws RemoteException;

    void setStreamVolumeWithAttribution(int i, int i2, int i3, String str, String str2) throws RemoteException;

    void setSupportedSystemUsages(int[] iArr) throws RemoteException;

    boolean setSurroundFormatEnabled(int i, boolean z) throws RemoteException;

    void setTestDeviceConnectionState(AudioDeviceAttributes audioDeviceAttributes, boolean z) throws RemoteException;

    int setUidDeviceAffinity(IAudioPolicyCallback iAudioPolicyCallback, int i, int[] iArr, String[] strArr) throws RemoteException;

    int setUserIdDeviceAffinity(IAudioPolicyCallback iAudioPolicyCallback, int i, int[] iArr, String[] strArr) throws RemoteException;

    void setVibrateSetting(int i, int i2) throws RemoteException;

    void setVolumeController(IVolumeController iVolumeController) throws RemoteException;

    void setVolumeIndexForAttributes(AudioAttributes audioAttributes, int i, int i2, String str, String str2) throws RemoteException;

    void setVolumePolicy(VolumePolicy volumePolicy) throws RemoteException;

    void setWiredDeviceConnectionState(AudioDeviceAttributes audioDeviceAttributes, int i, String str) throws RemoteException;

    boolean shouldVibrate(int i) throws RemoteException;

    void startBluetoothSco(IBinder iBinder, int i) throws RemoteException;

    void startBluetoothScoVirtualCall(IBinder iBinder) throws RemoteException;

    AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver iAudioRoutesObserver) throws RemoteException;

    void stopBluetoothSco(IBinder iBinder) throws RemoteException;

    int trackPlayer(PlayerBase.PlayerIdCard playerIdCard) throws RemoteException;

    int trackRecorder(IBinder iBinder) throws RemoteException;

    void unloadSoundEffects() throws RemoteException;

    void unregisterAudioFocusClient(String str) throws RemoteException;

    void unregisterAudioPolicy(IAudioPolicyCallback iAudioPolicyCallback) throws RemoteException;

    void unregisterAudioPolicyAsync(IAudioPolicyCallback iAudioPolicyCallback) throws RemoteException;

    void unregisterAudioServerStateDispatcher(IAudioServerStateDispatcher iAudioServerStateDispatcher) throws RemoteException;

    void unregisterCapturePresetDevicesRoleDispatcher(ICapturePresetDevicesRoleDispatcher iCapturePresetDevicesRoleDispatcher) throws RemoteException;

    void unregisterCommunicationDeviceDispatcher(ICommunicationDeviceDispatcher iCommunicationDeviceDispatcher) throws RemoteException;

    void unregisterHeadToSoundstagePoseCallback(ISpatializerHeadToSoundStagePoseCallback iSpatializerHeadToSoundStagePoseCallback) throws RemoteException;

    void unregisterModeDispatcher(IAudioModeDispatcher iAudioModeDispatcher) throws RemoteException;

    void unregisterPlaybackCallback(IPlaybackConfigDispatcher iPlaybackConfigDispatcher) throws RemoteException;

    void unregisterRecordingCallback(IRecordingConfigDispatcher iRecordingConfigDispatcher) throws RemoteException;

    void unregisterSpatializerCallback(ISpatializerCallback iSpatializerCallback) throws RemoteException;

    void unregisterSpatializerHeadTrackingCallback(ISpatializerHeadTrackingModeCallback iSpatializerHeadTrackingModeCallback) throws RemoteException;

    void unregisterSpatializerOutputCallback(ISpatializerOutputCallback iSpatializerOutputCallback) throws RemoteException;

    void unregisterStrategyPreferredDevicesDispatcher(IStrategyPreferredDevicesDispatcher iStrategyPreferredDevicesDispatcher) throws RemoteException;

    public static class Default implements IAudioService {
        @Override // android.media.IAudioService
        public int trackPlayer(PlayerBase.PlayerIdCard pic) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void playerAttributes(int piid, AudioAttributes attr) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void playerEvent(int piid, int event, int deviceId) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void releasePlayer(int piid) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int trackRecorder(IBinder recorder) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void recorderEvent(int riid, int event) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void releaseRecorder(int riid) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void playerSessionId(int piid, int sessionId) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void adjustStreamVolume(int streamType, int direction, int flags, String callingPackage) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void adjustStreamVolumeWithAttribution(int streamType, int direction, int flags, String callingPackage, String attributionTag) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setStreamVolume(int streamType, int index, int flags, String callingPackage) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setStreamVolumeWithAttribution(int streamType, int index, int flags, String callingPackage, String attributionTag) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void handleVolumeKey(KeyEvent event, boolean isOnTv, String callingPackage, String caller) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isStreamMute(int streamType) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void forceRemoteSubmixFullVolume(boolean startForcing, IBinder cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isMasterMute() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setMasterMute(boolean mute, int flags, String callingPackage, int userId, String attributionTag) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getStreamVolume(int streamType) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int getBleCgVolume() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int getLastHfpScoVolume() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int getStreamMinVolume(int streamType) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int getStreamMaxVolume(int streamType) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public List<android.media.audiopolicy.AudioVolumeGroup> getAudioVolumeGroups() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public void setVolumeIndexForAttributes(AudioAttributes aa, int index, int flags, String callingPackage, String attributionTag) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getVolumeIndexForAttributes(AudioAttributes aa) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int getMaxVolumeIndexForAttributes(AudioAttributes aa) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int getMinVolumeIndexForAttributes(AudioAttributes aa) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int getLastAudibleStreamVolume(int streamType) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void setSupportedSystemUsages(int[] systemUsages) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int[] getSupportedSystemUsages() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public List<android.media.audiopolicy.AudioProductStrategy> getAudioProductStrategies() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public boolean isMicrophoneMuted() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public boolean isUltrasoundSupported() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setMicrophoneMute(boolean on, String callingPackage, int userId, String attributionTag) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setMicrophoneMuteFromSwitch(boolean on) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setRingerModeExternal(int ringerMode, String caller) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setRingerModeInternal(int ringerMode, String caller) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getRingerModeExternal() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int getRingerModeInternal() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public boolean isValidRingerMode(int ringerMode) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setVibrateSetting(int vibrateType, int vibrateSetting) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getVibrateSetting(int vibrateType) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public boolean shouldVibrate(int vibrateType) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setMode(int mode, IBinder cb, String callingPackage) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getMode() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void playSoundEffect(int effectType, int userId) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void playSoundEffectVolume(int effectType, float volume) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean loadSoundEffects() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void unloadSoundEffects() throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void reloadAudioSettings() throws RemoteException {
        }

        @Override // android.media.IAudioService
        public Map getSurroundFormats() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public List getReportedSurroundFormats() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public boolean setSurroundFormatEnabled(int audioFormat, boolean enabled) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public boolean isSurroundFormatEnabled(int audioFormat) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public boolean setEncodedSurroundMode(int mode) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public int getEncodedSurroundMode(int targetSdkVersion) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void setSpeakerphoneOn(IBinder cb, boolean on) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isSpeakerphoneOn() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setBluetoothScoOn(boolean on) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isBluetoothScoOn() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setBluetoothA2dpOn(boolean on) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isBluetoothA2dpOn() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public int requestAudioFocus(AudioAttributes aa, int durationHint, IBinder cb, IAudioFocusDispatcher fd, String clientId, String callingPackageName, String attributionTag, int flags, IAudioPolicyCallback pcb, int sdk) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int abandonAudioFocus(IAudioFocusDispatcher fd, String clientId, AudioAttributes aa, String callingPackageName) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void unregisterAudioFocusClient(String clientId) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getCurrentAudioFocus() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void startBluetoothSco(IBinder cb, int targetSdkVersion) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void startBluetoothScoVirtualCall(IBinder cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void stopBluetoothSco(IBinder cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void forceVolumeControlStream(int streamType, IBinder cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setRingtonePlayer(IRingtonePlayer player) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public IRingtonePlayer getRingtonePlayer() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public int getUiSoundsStreamType() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void setWiredDeviceConnectionState(AudioDeviceAttributes aa, int state, String caller) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setIPDeviceConnectionState(AudioDeviceAttributes aa, int state, String caller, IBinder cb, boolean suppressNoisyIntent) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void handleBluetoothA2dpActiveDeviceChange(BluetoothDevice device, int state, int profile, boolean suppressNoisyIntent, int a2dpVolume) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver observer) throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public boolean isCameraSoundForced() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setVolumeController(IVolumeController controller) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void notifyVolumeControllerVisible(IVolumeController controller, boolean visible) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isStreamAffectedByRingerMode(int streamType) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public boolean isStreamAffectedByMute(int streamType) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void disableSafeMediaVolume(String callingPackage) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int setHdmiSystemAudioSupported(boolean on) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public boolean isHdmiSystemAudioSupported() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public String registerAudioPolicy(AudioPolicyConfig policyConfig, IAudioPolicyCallback pcb, boolean hasFocusListener, boolean isFocusPolicy, boolean isTestFocusPolicy, boolean isVolumeController, IMediaProjection projection) throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public void unregisterAudioPolicyAsync(IAudioPolicyCallback pcb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterAudioPolicy(IAudioPolicyCallback pcb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int addMixForPolicy(AudioPolicyConfig policyConfig, IAudioPolicyCallback pcb) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int removeMixForPolicy(AudioPolicyConfig policyConfig, IAudioPolicyCallback pcb) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int setFocusPropertiesForPolicy(int duckingBehavior, IAudioPolicyCallback pcb) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void setVolumePolicy(VolumePolicy policy) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean hasRegisteredDynamicPolicy() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void registerRecordingCallback(IRecordingConfigDispatcher rcdb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterRecordingCallback(IRecordingConfigDispatcher rcdb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public List<AudioRecordingConfiguration> getActiveRecordingConfigurations() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public void registerPlaybackCallback(IPlaybackConfigDispatcher pcdb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterPlaybackCallback(IPlaybackConfigDispatcher pcdb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public List<AudioPlaybackConfiguration> getActivePlaybackConfigurations() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public int getFocusRampTimeMs(int focusGain, AudioAttributes attr) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int dispatchFocusChange(AudioFocusInfo afi, int focusChange, IAudioPolicyCallback pcb) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void playerHasOpPlayAudio(int piid, boolean hasOpPlayAudio) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void handleBluetoothActiveDeviceChanged(BluetoothDevice newDevice, BluetoothDevice previousDevice, BluetoothProfileConnectionInfo info) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setFocusRequestResultFromExtPolicy(AudioFocusInfo afi, int requestResult, IAudioPolicyCallback pcb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void registerAudioServerStateDispatcher(IAudioServerStateDispatcher asd) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterAudioServerStateDispatcher(IAudioServerStateDispatcher asd) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isAudioServerRunning() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public int setUidDeviceAffinity(IAudioPolicyCallback pcb, int uid, int[] deviceTypes, String[] deviceAddresses) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int removeUidDeviceAffinity(IAudioPolicyCallback pcb, int uid) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int setUserIdDeviceAffinity(IAudioPolicyCallback pcb, int userId, int[] deviceTypes, String[] deviceAddresses) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int removeUserIdDeviceAffinity(IAudioPolicyCallback pcb, int userId) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public boolean hasHapticChannels(Uri uri) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public boolean isCallScreeningModeSupported() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public int setPreferredDevicesForStrategy(int strategy, List<AudioDeviceAttributes> device) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int removePreferredDevicesForStrategy(int strategy) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public List<AudioDeviceAttributes> getPreferredDevicesForStrategy(int strategy) throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public List<AudioDeviceAttributes> getDevicesForAttributes(AudioAttributes attributes) throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public List<AudioDeviceAttributes> getDevicesForAttributesUnprotected(AudioAttributes attributes) throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public int setAllowedCapturePolicy(int capturePolicy) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int getAllowedCapturePolicy() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void registerStrategyPreferredDevicesDispatcher(IStrategyPreferredDevicesDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterStrategyPreferredDevicesDispatcher(IStrategyPreferredDevicesDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setRttEnabled(boolean rttEnabled) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setDeviceVolumeBehavior(AudioDeviceAttributes device, int deviceVolumeBehavior, String pkgName) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getDeviceVolumeBehavior(AudioDeviceAttributes device) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void setParameters(String keyValuePairs) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public String getParameters(String keyValuePairs) throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public boolean setStreamVolumePermission() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void cacheBinauralRecordParameters(String kvpairs) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void oplusRegisterModeDispatcher(IAudioModeDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setMultiAudioFocusEnabled(boolean enabled) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void cacheParameters(String keyValuePairs) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int setPreferredDevicesForCapturePreset(int capturePreset, List<AudioDeviceAttributes> devices) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int clearPreferredDevicesForCapturePreset(int capturePreset) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public List<AudioDeviceAttributes> getPreferredDevicesForCapturePreset(int capturePreset) throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public void registerCapturePresetDevicesRoleDispatcher(ICapturePresetDevicesRoleDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterCapturePresetDevicesRoleDispatcher(ICapturePresetDevicesRoleDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void adjustStreamVolumeForUid(int streamType, int direction, int flags, String packageName, int uid, int pid, UserHandle userHandle, int targetSdkVersion) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void adjustSuggestedStreamVolumeForUid(int streamType, int direction, int flags, String packageName, int uid, int pid, UserHandle userHandle, int targetSdkVersion) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setStreamVolumeForUid(int streamType, int direction, int flags, String packageName, int uid, int pid, UserHandle userHandle, int targetSdkVersion) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isMusicActive(boolean remotely) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public int getDeviceMaskForStream(int streamType) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int[] getAvailableCommunicationDeviceIds() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public boolean setCommunicationDevice(IBinder cb, int portId) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public int getCommunicationDevice() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void registerCommunicationDeviceDispatcher(ICommunicationDeviceDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterCommunicationDeviceDispatcher(ICommunicationDeviceDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean areNavigationRepeatSoundEffectsEnabled() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setNavigationRepeatSoundEffectsEnabled(boolean enabled) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isHomeSoundEffectEnabled() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setHomeSoundEffectEnabled(boolean enabled) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean setAdditionalOutputDeviceDelay(AudioDeviceAttributes device, long delayMillis) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public long getAdditionalOutputDeviceDelay(AudioDeviceAttributes device) throws RemoteException {
            return 0L;
        }

        @Override // android.media.IAudioService
        public long getMaxAdditionalOutputDeviceDelay(AudioDeviceAttributes device) throws RemoteException {
            return 0L;
        }

        @Override // android.media.IAudioService
        public int requestAudioFocusForTest(AudioAttributes aa, int durationHint, IBinder cb, IAudioFocusDispatcher fd, String clientId, String callingPackageName, int flags, int uid, int sdk) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int abandonAudioFocusForTest(IAudioFocusDispatcher fd, String clientId, AudioAttributes aa, String callingPackageName) throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public long getFadeOutDurationOnFocusLossMillis(AudioAttributes aa) throws RemoteException {
            return 0L;
        }

        @Override // android.media.IAudioService
        public void registerModeDispatcher(IAudioModeDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterModeDispatcher(IAudioModeDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getSpatializerImmersiveAudioLevel() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public boolean isSpatializerEnabled() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public boolean isSpatializerAvailable() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public boolean isSpatializerAvailableForDevice(AudioDeviceAttributes device) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public boolean hasHeadTracker(AudioDeviceAttributes device) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void setHeadTrackerEnabled(boolean enabled, AudioDeviceAttributes device) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isHeadTrackerEnabled(AudioDeviceAttributes device) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public boolean isHeadTrackerAvailable() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void registerSpatializerHeadTrackerAvailableCallback(ISpatializerHeadTrackerAvailableCallback cb, boolean register) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setSpatializerEnabled(boolean enabled) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean canBeSpatialized(AudioAttributes aa, AudioFormat af) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void registerSpatializerCallback(ISpatializerCallback cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterSpatializerCallback(ISpatializerCallback cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void registerSpatializerHeadTrackingCallback(ISpatializerHeadTrackingModeCallback cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterSpatializerHeadTrackingCallback(ISpatializerHeadTrackingModeCallback cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void registerHeadToSoundstagePoseCallback(ISpatializerHeadToSoundStagePoseCallback cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterHeadToSoundstagePoseCallback(ISpatializerHeadToSoundStagePoseCallback cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public List<AudioDeviceAttributes> getSpatializerCompatibleAudioDevices() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public void addSpatializerCompatibleAudioDevice(AudioDeviceAttributes ada) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void removeSpatializerCompatibleAudioDevice(AudioDeviceAttributes ada) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setDesiredHeadTrackingMode(int mode) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getDesiredHeadTrackingMode() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public int[] getSupportedHeadTrackingModes() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public int getActualHeadTrackingMode() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void setSpatializerGlobalTransform(float[] transform) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void recenterHeadTracker() throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setSpatializerParameter(int key, byte[] value) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void getSpatializerParameter(int key, byte[] value) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int getSpatializerOutput() throws RemoteException {
            return 0;
        }

        @Override // android.media.IAudioService
        public void registerSpatializerOutputCallback(ISpatializerOutputCallback cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void unregisterSpatializerOutputCallback(ISpatializerOutputCallback cb) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public boolean isVolumeFixed() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public VolumeInfo getDefaultVolumeInfo() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public boolean isPstnCallAudioInterceptable() throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void muteAwaitConnection(int[] usagesToMute, AudioDeviceAttributes dev, long timeOutMs) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void cancelMuteAwaitConnection(AudioDeviceAttributes dev) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public AudioDeviceAttributes getMutingExpectedDevice() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public void registerMuteAwaitConnectionDispatcher(IMuteAwaitConnectionCallback cb, boolean register) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setTestDeviceConnectionState(AudioDeviceAttributes device, boolean connected) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void registerDeviceVolumeBehaviorDispatcher(boolean register, IDeviceVolumeBehaviorDispatcher dispatcher) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public List<AudioFocusInfo> getFocusStack() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public boolean sendFocusLoss(AudioFocusInfo focusLoser, IAudioPolicyCallback apcb) throws RemoteException {
            return false;
        }

        @Override // android.media.IAudioService
        public void addAssistantServicesUids(int[] assistantUID) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void removeAssistantServicesUids(int[] assistantUID) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public void setActiveAssistantServiceUids(int[] activeUids) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public int[] getAssistantServicesUids() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public int[] getActiveAssistantServiceUids() throws RemoteException {
            return null;
        }

        @Override // android.media.IAudioService
        public void registerDeviceVolumeDispatcherForAbsoluteVolume(boolean register, IAudioDeviceVolumeDispatcher cb, String packageName, AudioDeviceAttributes device, List<VolumeInfo> volumes, boolean handlesvolumeAdjustment) throws RemoteException {
        }

        @Override // android.media.IAudioService
        public String getHalVersion() throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IAudioService {
        public static final String DESCRIPTOR = "android.media.IAudioService";
        static final int TRANSACTION_abandonAudioFocus = 64;
        static final int TRANSACTION_abandonAudioFocusForTest = 156;
        static final int TRANSACTION_addAssistantServicesUids = 202;
        static final int TRANSACTION_addMixForPolicy = 89;
        static final int TRANSACTION_addSpatializerCompatibleAudioDevice = 178;
        static final int TRANSACTION_adjustStreamVolume = 9;
        static final int TRANSACTION_adjustStreamVolumeForUid = 138;
        static final int TRANSACTION_adjustStreamVolumeWithAttribution = 10;
        static final int TRANSACTION_adjustSuggestedStreamVolumeForUid = 139;
        static final int TRANSACTION_areNavigationRepeatSoundEffectsEnabled = 148;
        static final int TRANSACTION_cacheBinauralRecordParameters = 129;
        static final int TRANSACTION_cacheParameters = 132;
        static final int TRANSACTION_canBeSpatialized = 170;
        static final int TRANSACTION_cancelMuteAwaitConnection = 195;
        static final int TRANSACTION_clearPreferredDevicesForCapturePreset = 134;
        static final int TRANSACTION_disableSafeMediaVolume = 83;
        static final int TRANSACTION_dispatchFocusChange = 101;
        static final int TRANSACTION_forceRemoteSubmixFullVolume = 15;
        static final int TRANSACTION_forceVolumeControlStream = 70;
        static final int TRANSACTION_getActiveAssistantServiceUids = 206;
        static final int TRANSACTION_getActivePlaybackConfigurations = 99;
        static final int TRANSACTION_getActiveRecordingConfigurations = 96;
        static final int TRANSACTION_getActualHeadTrackingMode = 183;
        static final int TRANSACTION_getAdditionalOutputDeviceDelay = 153;
        static final int TRANSACTION_getAllowedCapturePolicy = 120;
        static final int TRANSACTION_getAssistantServicesUids = 205;
        static final int TRANSACTION_getAudioProductStrategies = 31;
        static final int TRANSACTION_getAudioVolumeGroups = 23;
        static final int TRANSACTION_getAvailableCommunicationDeviceIds = 143;
        static final int TRANSACTION_getBleCgVolume = 19;
        static final int TRANSACTION_getCommunicationDevice = 145;
        static final int TRANSACTION_getCurrentAudioFocus = 66;
        static final int TRANSACTION_getDefaultVolumeInfo = 192;
        static final int TRANSACTION_getDesiredHeadTrackingMode = 181;
        static final int TRANSACTION_getDeviceMaskForStream = 142;
        static final int TRANSACTION_getDeviceVolumeBehavior = 125;
        static final int TRANSACTION_getDevicesForAttributes = 117;
        static final int TRANSACTION_getDevicesForAttributesUnprotected = 118;
        static final int TRANSACTION_getEncodedSurroundMode = 56;
        static final int TRANSACTION_getFadeOutDurationOnFocusLossMillis = 157;
        static final int TRANSACTION_getFocusRampTimeMs = 100;
        static final int TRANSACTION_getFocusStack = 200;
        static final int TRANSACTION_getHalVersion = 208;
        static final int TRANSACTION_getLastAudibleStreamVolume = 28;
        static final int TRANSACTION_getLastHfpScoVolume = 20;
        static final int TRANSACTION_getMaxAdditionalOutputDeviceDelay = 154;
        static final int TRANSACTION_getMaxVolumeIndexForAttributes = 26;
        static final int TRANSACTION_getMinVolumeIndexForAttributes = 27;
        static final int TRANSACTION_getMode = 45;
        static final int TRANSACTION_getMutingExpectedDevice = 196;
        static final int TRANSACTION_getParameters = 127;
        static final int TRANSACTION_getPreferredDevicesForCapturePreset = 135;
        static final int TRANSACTION_getPreferredDevicesForStrategy = 116;
        static final int TRANSACTION_getReportedSurroundFormats = 52;
        static final int TRANSACTION_getRingerModeExternal = 38;
        static final int TRANSACTION_getRingerModeInternal = 39;
        static final int TRANSACTION_getRingtonePlayer = 72;
        static final int TRANSACTION_getSpatializerCompatibleAudioDevices = 177;
        static final int TRANSACTION_getSpatializerImmersiveAudioLevel = 160;
        static final int TRANSACTION_getSpatializerOutput = 188;
        static final int TRANSACTION_getSpatializerParameter = 187;
        static final int TRANSACTION_getStreamMaxVolume = 22;
        static final int TRANSACTION_getStreamMinVolume = 21;
        static final int TRANSACTION_getStreamVolume = 18;
        static final int TRANSACTION_getSupportedHeadTrackingModes = 182;
        static final int TRANSACTION_getSupportedSystemUsages = 30;
        static final int TRANSACTION_getSurroundFormats = 51;
        static final int TRANSACTION_getUiSoundsStreamType = 73;
        static final int TRANSACTION_getVibrateSetting = 42;
        static final int TRANSACTION_getVolumeIndexForAttributes = 25;
        static final int TRANSACTION_handleBluetoothA2dpActiveDeviceChange = 76;
        static final int TRANSACTION_handleBluetoothActiveDeviceChanged = 103;
        static final int TRANSACTION_handleVolumeKey = 13;
        static final int TRANSACTION_hasHapticChannels = 112;
        static final int TRANSACTION_hasHeadTracker = 164;
        static final int TRANSACTION_hasRegisteredDynamicPolicy = 93;
        static final int TRANSACTION_isAudioServerRunning = 107;
        static final int TRANSACTION_isBluetoothA2dpOn = 62;
        static final int TRANSACTION_isBluetoothScoOn = 60;
        static final int TRANSACTION_isCallScreeningModeSupported = 113;
        static final int TRANSACTION_isCameraSoundForced = 78;
        static final int TRANSACTION_isHdmiSystemAudioSupported = 85;
        static final int TRANSACTION_isHeadTrackerAvailable = 167;
        static final int TRANSACTION_isHeadTrackerEnabled = 166;
        static final int TRANSACTION_isHomeSoundEffectEnabled = 150;
        static final int TRANSACTION_isMasterMute = 16;
        static final int TRANSACTION_isMicrophoneMuted = 32;
        static final int TRANSACTION_isMusicActive = 141;
        static final int TRANSACTION_isPstnCallAudioInterceptable = 193;
        static final int TRANSACTION_isSpatializerAvailable = 162;
        static final int TRANSACTION_isSpatializerAvailableForDevice = 163;
        static final int TRANSACTION_isSpatializerEnabled = 161;
        static final int TRANSACTION_isSpeakerphoneOn = 58;
        static final int TRANSACTION_isStreamAffectedByMute = 82;
        static final int TRANSACTION_isStreamAffectedByRingerMode = 81;
        static final int TRANSACTION_isStreamMute = 14;
        static final int TRANSACTION_isSurroundFormatEnabled = 54;
        static final int TRANSACTION_isUltrasoundSupported = 33;
        static final int TRANSACTION_isValidRingerMode = 40;
        static final int TRANSACTION_isVolumeFixed = 191;
        static final int TRANSACTION_loadSoundEffects = 48;
        static final int TRANSACTION_muteAwaitConnection = 194;
        static final int TRANSACTION_notifyVolumeControllerVisible = 80;
        static final int TRANSACTION_oplusRegisterModeDispatcher = 130;
        static final int TRANSACTION_playSoundEffect = 46;
        static final int TRANSACTION_playSoundEffectVolume = 47;
        static final int TRANSACTION_playerAttributes = 2;
        static final int TRANSACTION_playerEvent = 3;
        static final int TRANSACTION_playerHasOpPlayAudio = 102;
        static final int TRANSACTION_playerSessionId = 8;
        static final int TRANSACTION_recenterHeadTracker = 185;
        static final int TRANSACTION_recorderEvent = 6;
        static final int TRANSACTION_registerAudioPolicy = 86;
        static final int TRANSACTION_registerAudioServerStateDispatcher = 105;
        static final int TRANSACTION_registerCapturePresetDevicesRoleDispatcher = 136;
        static final int TRANSACTION_registerCommunicationDeviceDispatcher = 146;
        static final int TRANSACTION_registerDeviceVolumeBehaviorDispatcher = 199;
        static final int TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume = 207;
        static final int TRANSACTION_registerHeadToSoundstagePoseCallback = 175;
        static final int TRANSACTION_registerModeDispatcher = 158;
        static final int TRANSACTION_registerMuteAwaitConnectionDispatcher = 197;
        static final int TRANSACTION_registerPlaybackCallback = 97;
        static final int TRANSACTION_registerRecordingCallback = 94;
        static final int TRANSACTION_registerSpatializerCallback = 171;
        static final int TRANSACTION_registerSpatializerHeadTrackerAvailableCallback = 168;
        static final int TRANSACTION_registerSpatializerHeadTrackingCallback = 173;
        static final int TRANSACTION_registerSpatializerOutputCallback = 189;
        static final int TRANSACTION_registerStrategyPreferredDevicesDispatcher = 121;
        static final int TRANSACTION_releasePlayer = 4;
        static final int TRANSACTION_releaseRecorder = 7;
        static final int TRANSACTION_reloadAudioSettings = 50;
        static final int TRANSACTION_removeAssistantServicesUids = 203;
        static final int TRANSACTION_removeMixForPolicy = 90;
        static final int TRANSACTION_removePreferredDevicesForStrategy = 115;
        static final int TRANSACTION_removeSpatializerCompatibleAudioDevice = 179;
        static final int TRANSACTION_removeUidDeviceAffinity = 109;
        static final int TRANSACTION_removeUserIdDeviceAffinity = 111;
        static final int TRANSACTION_requestAudioFocus = 63;
        static final int TRANSACTION_requestAudioFocusForTest = 155;
        static final int TRANSACTION_sendFocusLoss = 201;
        static final int TRANSACTION_setActiveAssistantServiceUids = 204;
        static final int TRANSACTION_setAdditionalOutputDeviceDelay = 152;
        static final int TRANSACTION_setAllowedCapturePolicy = 119;
        static final int TRANSACTION_setBluetoothA2dpOn = 61;
        static final int TRANSACTION_setBluetoothScoOn = 59;
        static final int TRANSACTION_setCommunicationDevice = 144;
        static final int TRANSACTION_setDesiredHeadTrackingMode = 180;
        static final int TRANSACTION_setDeviceVolumeBehavior = 124;
        static final int TRANSACTION_setEncodedSurroundMode = 55;
        static final int TRANSACTION_setFocusPropertiesForPolicy = 91;
        static final int TRANSACTION_setFocusRequestResultFromExtPolicy = 104;
        static final int TRANSACTION_setHdmiSystemAudioSupported = 84;
        static final int TRANSACTION_setHeadTrackerEnabled = 165;
        static final int TRANSACTION_setHomeSoundEffectEnabled = 151;
        static final int TRANSACTION_setIPDeviceConnectionState = 75;
        static final int TRANSACTION_setMasterMute = 17;
        static final int TRANSACTION_setMicrophoneMute = 34;
        static final int TRANSACTION_setMicrophoneMuteFromSwitch = 35;
        static final int TRANSACTION_setMode = 44;
        static final int TRANSACTION_setMultiAudioFocusEnabled = 131;
        static final int TRANSACTION_setNavigationRepeatSoundEffectsEnabled = 149;
        static final int TRANSACTION_setParameters = 126;
        static final int TRANSACTION_setPreferredDevicesForCapturePreset = 133;
        static final int TRANSACTION_setPreferredDevicesForStrategy = 114;
        static final int TRANSACTION_setRingerModeExternal = 36;
        static final int TRANSACTION_setRingerModeInternal = 37;
        static final int TRANSACTION_setRingtonePlayer = 71;
        static final int TRANSACTION_setRttEnabled = 123;
        static final int TRANSACTION_setSpatializerEnabled = 169;
        static final int TRANSACTION_setSpatializerGlobalTransform = 184;
        static final int TRANSACTION_setSpatializerParameter = 186;
        static final int TRANSACTION_setSpeakerphoneOn = 57;
        static final int TRANSACTION_setStreamVolume = 11;
        static final int TRANSACTION_setStreamVolumeForUid = 140;
        static final int TRANSACTION_setStreamVolumePermission = 128;
        static final int TRANSACTION_setStreamVolumeWithAttribution = 12;
        static final int TRANSACTION_setSupportedSystemUsages = 29;
        static final int TRANSACTION_setSurroundFormatEnabled = 53;
        static final int TRANSACTION_setTestDeviceConnectionState = 198;
        static final int TRANSACTION_setUidDeviceAffinity = 108;
        static final int TRANSACTION_setUserIdDeviceAffinity = 110;
        static final int TRANSACTION_setVibrateSetting = 41;
        static final int TRANSACTION_setVolumeController = 79;
        static final int TRANSACTION_setVolumeIndexForAttributes = 24;
        static final int TRANSACTION_setVolumePolicy = 92;
        static final int TRANSACTION_setWiredDeviceConnectionState = 74;
        static final int TRANSACTION_shouldVibrate = 43;
        static final int TRANSACTION_startBluetoothSco = 67;
        static final int TRANSACTION_startBluetoothScoVirtualCall = 68;
        static final int TRANSACTION_startWatchingRoutes = 77;
        static final int TRANSACTION_stopBluetoothSco = 69;
        static final int TRANSACTION_trackPlayer = 1;
        static final int TRANSACTION_trackRecorder = 5;
        static final int TRANSACTION_unloadSoundEffects = 49;
        static final int TRANSACTION_unregisterAudioFocusClient = 65;
        static final int TRANSACTION_unregisterAudioPolicy = 88;
        static final int TRANSACTION_unregisterAudioPolicyAsync = 87;
        static final int TRANSACTION_unregisterAudioServerStateDispatcher = 106;
        static final int TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher = 137;
        static final int TRANSACTION_unregisterCommunicationDeviceDispatcher = 147;
        static final int TRANSACTION_unregisterHeadToSoundstagePoseCallback = 176;
        static final int TRANSACTION_unregisterModeDispatcher = 159;
        static final int TRANSACTION_unregisterPlaybackCallback = 98;
        static final int TRANSACTION_unregisterRecordingCallback = 95;
        static final int TRANSACTION_unregisterSpatializerCallback = 172;
        static final int TRANSACTION_unregisterSpatializerHeadTrackingCallback = 174;
        static final int TRANSACTION_unregisterSpatializerOutputCallback = 190;
        static final int TRANSACTION_unregisterStrategyPreferredDevicesDispatcher = 122;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAudioService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IAudioService)) {
                return (IAudioService) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public static String getDefaultTransactionName(int transactionCode) {
            switch (transactionCode) {
                case 1:
                    return "trackPlayer";
                case 2:
                    return "playerAttributes";
                case 3:
                    return "playerEvent";
                case 4:
                    return "releasePlayer";
                case 5:
                    return "trackRecorder";
                case 6:
                    return "recorderEvent";
                case 7:
                    return "releaseRecorder";
                case 8:
                    return "playerSessionId";
                case 9:
                    return "adjustStreamVolume";
                case 10:
                    return "adjustStreamVolumeWithAttribution";
                case 11:
                    return "setStreamVolume";
                case 12:
                    return "setStreamVolumeWithAttribution";
                case 13:
                    return "handleVolumeKey";
                case 14:
                    return "isStreamMute";
                case 15:
                    return "forceRemoteSubmixFullVolume";
                case 16:
                    return "isMasterMute";
                case 17:
                    return "setMasterMute";
                case 18:
                    return "getStreamVolume";
                case 19:
                    return "getBleCgVolume";
                case 20:
                    return "getLastHfpScoVolume";
                case 21:
                    return "getStreamMinVolume";
                case 22:
                    return "getStreamMaxVolume";
                case 23:
                    return "getAudioVolumeGroups";
                case 24:
                    return "setVolumeIndexForAttributes";
                case 25:
                    return "getVolumeIndexForAttributes";
                case 26:
                    return "getMaxVolumeIndexForAttributes";
                case 27:
                    return "getMinVolumeIndexForAttributes";
                case 28:
                    return "getLastAudibleStreamVolume";
                case 29:
                    return "setSupportedSystemUsages";
                case 30:
                    return "getSupportedSystemUsages";
                case 31:
                    return "getAudioProductStrategies";
                case 32:
                    return "isMicrophoneMuted";
                case 33:
                    return "isUltrasoundSupported";
                case 34:
                    return "setMicrophoneMute";
                case 35:
                    return "setMicrophoneMuteFromSwitch";
                case 36:
                    return "setRingerModeExternal";
                case 37:
                    return "setRingerModeInternal";
                case 38:
                    return "getRingerModeExternal";
                case 39:
                    return "getRingerModeInternal";
                case 40:
                    return "isValidRingerMode";
                case 41:
                    return "setVibrateSetting";
                case 42:
                    return "getVibrateSetting";
                case 43:
                    return "shouldVibrate";
                case 44:
                    return "setMode";
                case 45:
                    return "getMode";
                case 46:
                    return "playSoundEffect";
                case 47:
                    return "playSoundEffectVolume";
                case 48:
                    return "loadSoundEffects";
                case 49:
                    return "unloadSoundEffects";
                case 50:
                    return "reloadAudioSettings";
                case 51:
                    return "getSurroundFormats";
                case 52:
                    return "getReportedSurroundFormats";
                case 53:
                    return "setSurroundFormatEnabled";
                case 54:
                    return "isSurroundFormatEnabled";
                case 55:
                    return "setEncodedSurroundMode";
                case 56:
                    return "getEncodedSurroundMode";
                case 57:
                    return "setSpeakerphoneOn";
                case 58:
                    return "isSpeakerphoneOn";
                case 59:
                    return "setBluetoothScoOn";
                case 60:
                    return "isBluetoothScoOn";
                case 61:
                    return "setBluetoothA2dpOn";
                case 62:
                    return "isBluetoothA2dpOn";
                case 63:
                    return "requestAudioFocus";
                case 64:
                    return "abandonAudioFocus";
                case 65:
                    return "unregisterAudioFocusClient";
                case 66:
                    return "getCurrentAudioFocus";
                case 67:
                    return "startBluetoothSco";
                case 68:
                    return "startBluetoothScoVirtualCall";
                case 69:
                    return "stopBluetoothSco";
                case 70:
                    return "forceVolumeControlStream";
                case 71:
                    return "setRingtonePlayer";
                case 72:
                    return "getRingtonePlayer";
                case 73:
                    return "getUiSoundsStreamType";
                case 74:
                    return "setWiredDeviceConnectionState";
                case 75:
                    return "setIPDeviceConnectionState";
                case 76:
                    return "handleBluetoothA2dpActiveDeviceChange";
                case 77:
                    return "startWatchingRoutes";
                case 78:
                    return "isCameraSoundForced";
                case 79:
                    return "setVolumeController";
                case 80:
                    return "notifyVolumeControllerVisible";
                case 81:
                    return "isStreamAffectedByRingerMode";
                case 82:
                    return "isStreamAffectedByMute";
                case 83:
                    return "disableSafeMediaVolume";
                case 84:
                    return "setHdmiSystemAudioSupported";
                case 85:
                    return "isHdmiSystemAudioSupported";
                case 86:
                    return "registerAudioPolicy";
                case 87:
                    return "unregisterAudioPolicyAsync";
                case 88:
                    return "unregisterAudioPolicy";
                case 89:
                    return "addMixForPolicy";
                case 90:
                    return "removeMixForPolicy";
                case 91:
                    return "setFocusPropertiesForPolicy";
                case 92:
                    return "setVolumePolicy";
                case 93:
                    return "hasRegisteredDynamicPolicy";
                case 94:
                    return "registerRecordingCallback";
                case 95:
                    return "unregisterRecordingCallback";
                case 96:
                    return "getActiveRecordingConfigurations";
                case 97:
                    return "registerPlaybackCallback";
                case 98:
                    return "unregisterPlaybackCallback";
                case 99:
                    return "getActivePlaybackConfigurations";
                case 100:
                    return "getFocusRampTimeMs";
                case 101:
                    return "dispatchFocusChange";
                case 102:
                    return "playerHasOpPlayAudio";
                case 103:
                    return "handleBluetoothActiveDeviceChanged";
                case 104:
                    return "setFocusRequestResultFromExtPolicy";
                case 105:
                    return "registerAudioServerStateDispatcher";
                case 106:
                    return "unregisterAudioServerStateDispatcher";
                case 107:
                    return "isAudioServerRunning";
                case 108:
                    return "setUidDeviceAffinity";
                case 109:
                    return "removeUidDeviceAffinity";
                case 110:
                    return "setUserIdDeviceAffinity";
                case 111:
                    return "removeUserIdDeviceAffinity";
                case 112:
                    return "hasHapticChannels";
                case 113:
                    return "isCallScreeningModeSupported";
                case 114:
                    return "setPreferredDevicesForStrategy";
                case 115:
                    return "removePreferredDevicesForStrategy";
                case 116:
                    return "getPreferredDevicesForStrategy";
                case 117:
                    return "getDevicesForAttributes";
                case 118:
                    return "getDevicesForAttributesUnprotected";
                case 119:
                    return "setAllowedCapturePolicy";
                case 120:
                    return "getAllowedCapturePolicy";
                case 121:
                    return "registerStrategyPreferredDevicesDispatcher";
                case 122:
                    return "unregisterStrategyPreferredDevicesDispatcher";
                case 123:
                    return "setRttEnabled";
                case 124:
                    return "setDeviceVolumeBehavior";
                case 125:
                    return "getDeviceVolumeBehavior";
                case 126:
                    return "setParameters";
                case 127:
                    return "getParameters";
                case 128:
                    return "setStreamVolumePermission";
                case 129:
                    return "cacheBinauralRecordParameters";
                case 130:
                    return "oplusRegisterModeDispatcher";
                case 131:
                    return "setMultiAudioFocusEnabled";
                case 132:
                    return "cacheParameters";
                case 133:
                    return "setPreferredDevicesForCapturePreset";
                case 134:
                    return "clearPreferredDevicesForCapturePreset";
                case 135:
                    return "getPreferredDevicesForCapturePreset";
                case 136:
                    return "registerCapturePresetDevicesRoleDispatcher";
                case 137:
                    return "unregisterCapturePresetDevicesRoleDispatcher";
                case 138:
                    return "adjustStreamVolumeForUid";
                case 139:
                    return "adjustSuggestedStreamVolumeForUid";
                case 140:
                    return "setStreamVolumeForUid";
                case 141:
                    return "isMusicActive";
                case 142:
                    return "getDeviceMaskForStream";
                case 143:
                    return "getAvailableCommunicationDeviceIds";
                case 144:
                    return "setCommunicationDevice";
                case 145:
                    return "getCommunicationDevice";
                case 146:
                    return "registerCommunicationDeviceDispatcher";
                case 147:
                    return "unregisterCommunicationDeviceDispatcher";
                case 148:
                    return "areNavigationRepeatSoundEffectsEnabled";
                case 149:
                    return "setNavigationRepeatSoundEffectsEnabled";
                case 150:
                    return "isHomeSoundEffectEnabled";
                case 151:
                    return "setHomeSoundEffectEnabled";
                case 152:
                    return "setAdditionalOutputDeviceDelay";
                case 153:
                    return "getAdditionalOutputDeviceDelay";
                case 154:
                    return "getMaxAdditionalOutputDeviceDelay";
                case 155:
                    return "requestAudioFocusForTest";
                case 156:
                    return "abandonAudioFocusForTest";
                case 157:
                    return "getFadeOutDurationOnFocusLossMillis";
                case 158:
                    return "registerModeDispatcher";
                case 159:
                    return "unregisterModeDispatcher";
                case 160:
                    return "getSpatializerImmersiveAudioLevel";
                case 161:
                    return "isSpatializerEnabled";
                case 162:
                    return "isSpatializerAvailable";
                case 163:
                    return "isSpatializerAvailableForDevice";
                case 164:
                    return "hasHeadTracker";
                case 165:
                    return "setHeadTrackerEnabled";
                case 166:
                    return "isHeadTrackerEnabled";
                case 167:
                    return "isHeadTrackerAvailable";
                case 168:
                    return "registerSpatializerHeadTrackerAvailableCallback";
                case 169:
                    return "setSpatializerEnabled";
                case 170:
                    return "canBeSpatialized";
                case 171:
                    return "registerSpatializerCallback";
                case 172:
                    return "unregisterSpatializerCallback";
                case 173:
                    return "registerSpatializerHeadTrackingCallback";
                case 174:
                    return "unregisterSpatializerHeadTrackingCallback";
                case 175:
                    return "registerHeadToSoundstagePoseCallback";
                case 176:
                    return "unregisterHeadToSoundstagePoseCallback";
                case 177:
                    return "getSpatializerCompatibleAudioDevices";
                case 178:
                    return "addSpatializerCompatibleAudioDevice";
                case 179:
                    return "removeSpatializerCompatibleAudioDevice";
                case 180:
                    return "setDesiredHeadTrackingMode";
                case 181:
                    return "getDesiredHeadTrackingMode";
                case 182:
                    return "getSupportedHeadTrackingModes";
                case 183:
                    return "getActualHeadTrackingMode";
                case 184:
                    return "setSpatializerGlobalTransform";
                case 185:
                    return "recenterHeadTracker";
                case 186:
                    return "setSpatializerParameter";
                case 187:
                    return "getSpatializerParameter";
                case 188:
                    return "getSpatializerOutput";
                case 189:
                    return "registerSpatializerOutputCallback";
                case 190:
                    return "unregisterSpatializerOutputCallback";
                case 191:
                    return "isVolumeFixed";
                case 192:
                    return "getDefaultVolumeInfo";
                case 193:
                    return "isPstnCallAudioInterceptable";
                case 194:
                    return "muteAwaitConnection";
                case 195:
                    return "cancelMuteAwaitConnection";
                case 196:
                    return "getMutingExpectedDevice";
                case 197:
                    return "registerMuteAwaitConnectionDispatcher";
                case 198:
                    return "setTestDeviceConnectionState";
                case 199:
                    return "registerDeviceVolumeBehaviorDispatcher";
                case 200:
                    return "getFocusStack";
                case 201:
                    return "sendFocusLoss";
                case 202:
                    return "addAssistantServicesUids";
                case 203:
                    return "removeAssistantServicesUids";
                case 204:
                    return "setActiveAssistantServiceUids";
                case 205:
                    return "getAssistantServicesUids";
                case 206:
                    return "getActiveAssistantServiceUids";
                case 207:
                    return "registerDeviceVolumeDispatcherForAbsoluteVolume";
                case 208:
                    return "getHalVersion";
                default:
                    return null;
            }
        }

        @Override // android.os.Binder
        public String getTransactionName(int transactionCode) {
            return getDefaultTransactionName(transactionCode);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            PlayerBase.PlayerIdCard _arg0 = (PlayerBase.PlayerIdCard) data.readTypedObject(PlayerBase.PlayerIdCard.CREATOR);
                            data.enforceNoDataAvail();
                            int _result = trackPlayer(_arg0);
                            reply.writeNoException();
                            reply.writeInt(_result);
                            return true;
                        case 2:
                            int _arg02 = data.readInt();
                            AudioAttributes _arg1 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            playerAttributes(_arg02, _arg1);
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            int _arg12 = data.readInt();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            playerEvent(_arg03, _arg12, _arg2);
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            data.enforceNoDataAvail();
                            releasePlayer(_arg04);
                            return true;
                        case 5:
                            IBinder _arg05 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            int _result2 = trackRecorder(_arg05);
                            reply.writeNoException();
                            reply.writeInt(_result2);
                            return true;
                        case 6:
                            int _arg06 = data.readInt();
                            int _arg13 = data.readInt();
                            data.enforceNoDataAvail();
                            recorderEvent(_arg06, _arg13);
                            return true;
                        case 7:
                            int _arg07 = data.readInt();
                            data.enforceNoDataAvail();
                            releaseRecorder(_arg07);
                            return true;
                        case 8:
                            int _arg08 = data.readInt();
                            int _arg14 = data.readInt();
                            data.enforceNoDataAvail();
                            playerSessionId(_arg08, _arg14);
                            return true;
                        case 9:
                            int _arg09 = data.readInt();
                            int _arg15 = data.readInt();
                            int _arg22 = data.readInt();
                            String _arg3 = data.readString();
                            data.enforceNoDataAvail();
                            adjustStreamVolume(_arg09, _arg15, _arg22, _arg3);
                            reply.writeNoException();
                            return true;
                        case 10:
                            int _arg010 = data.readInt();
                            int _arg16 = data.readInt();
                            int _arg23 = data.readInt();
                            String _arg32 = data.readString();
                            String _arg4 = data.readString();
                            data.enforceNoDataAvail();
                            adjustStreamVolumeWithAttribution(_arg010, _arg16, _arg23, _arg32, _arg4);
                            reply.writeNoException();
                            return true;
                        case 11:
                            int _arg011 = data.readInt();
                            int _arg17 = data.readInt();
                            int _arg24 = data.readInt();
                            String _arg33 = data.readString();
                            data.enforceNoDataAvail();
                            setStreamVolume(_arg011, _arg17, _arg24, _arg33);
                            reply.writeNoException();
                            return true;
                        case 12:
                            int _arg012 = data.readInt();
                            int _arg18 = data.readInt();
                            int _arg25 = data.readInt();
                            String _arg34 = data.readString();
                            String _arg42 = data.readString();
                            data.enforceNoDataAvail();
                            setStreamVolumeWithAttribution(_arg012, _arg18, _arg25, _arg34, _arg42);
                            reply.writeNoException();
                            return true;
                        case 13:
                            KeyEvent _arg013 = (KeyEvent) data.readTypedObject(KeyEvent.CREATOR);
                            boolean _arg19 = data.readBoolean();
                            String _arg26 = data.readString();
                            String _arg35 = data.readString();
                            data.enforceNoDataAvail();
                            handleVolumeKey(_arg013, _arg19, _arg26, _arg35);
                            return true;
                        case 14:
                            int _arg014 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result3 = isStreamMute(_arg014);
                            reply.writeNoException();
                            reply.writeBoolean(_result3);
                            return true;
                        case 15:
                            boolean _arg015 = data.readBoolean();
                            IBinder _arg110 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            forceRemoteSubmixFullVolume(_arg015, _arg110);
                            reply.writeNoException();
                            return true;
                        case 16:
                            boolean _result4 = isMasterMute();
                            reply.writeNoException();
                            reply.writeBoolean(_result4);
                            return true;
                        case 17:
                            boolean _arg016 = data.readBoolean();
                            int _arg111 = data.readInt();
                            String _arg27 = data.readString();
                            int _arg36 = data.readInt();
                            String _arg43 = data.readString();
                            data.enforceNoDataAvail();
                            setMasterMute(_arg016, _arg111, _arg27, _arg36, _arg43);
                            reply.writeNoException();
                            return true;
                        case 18:
                            int _arg017 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result5 = getStreamVolume(_arg017);
                            reply.writeNoException();
                            reply.writeInt(_result5);
                            return true;
                        case 19:
                            int _result6 = getBleCgVolume();
                            reply.writeNoException();
                            reply.writeInt(_result6);
                            return true;
                        case 20:
                            int _result7 = getLastHfpScoVolume();
                            reply.writeNoException();
                            reply.writeInt(_result7);
                            return true;
                        case 21:
                            int _arg018 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result8 = getStreamMinVolume(_arg018);
                            reply.writeNoException();
                            reply.writeInt(_result8);
                            return true;
                        case 22:
                            int _arg019 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result9 = getStreamMaxVolume(_arg019);
                            reply.writeNoException();
                            reply.writeInt(_result9);
                            return true;
                        case 23:
                            List<android.media.audiopolicy.AudioVolumeGroup> _result10 = getAudioVolumeGroups();
                            reply.writeNoException();
                            reply.writeTypedList(_result10);
                            return true;
                        case 24:
                            AudioAttributes _arg020 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            int _arg112 = data.readInt();
                            int _arg28 = data.readInt();
                            String _arg37 = data.readString();
                            String _arg44 = data.readString();
                            data.enforceNoDataAvail();
                            setVolumeIndexForAttributes(_arg020, _arg112, _arg28, _arg37, _arg44);
                            reply.writeNoException();
                            return true;
                        case 25:
                            AudioAttributes _arg021 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            int _result11 = getVolumeIndexForAttributes(_arg021);
                            reply.writeNoException();
                            reply.writeInt(_result11);
                            return true;
                        case 26:
                            AudioAttributes _arg022 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            int _result12 = getMaxVolumeIndexForAttributes(_arg022);
                            reply.writeNoException();
                            reply.writeInt(_result12);
                            return true;
                        case 27:
                            AudioAttributes _arg023 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            int _result13 = getMinVolumeIndexForAttributes(_arg023);
                            reply.writeNoException();
                            reply.writeInt(_result13);
                            return true;
                        case 28:
                            int _arg024 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result14 = getLastAudibleStreamVolume(_arg024);
                            reply.writeNoException();
                            reply.writeInt(_result14);
                            return true;
                        case 29:
                            int[] _arg025 = data.createIntArray();
                            data.enforceNoDataAvail();
                            setSupportedSystemUsages(_arg025);
                            reply.writeNoException();
                            return true;
                        case 30:
                            int[] _result15 = getSupportedSystemUsages();
                            reply.writeNoException();
                            reply.writeIntArray(_result15);
                            return true;
                        case 31:
                            List<android.media.audiopolicy.AudioProductStrategy> _result16 = getAudioProductStrategies();
                            reply.writeNoException();
                            reply.writeTypedList(_result16);
                            return true;
                        case 32:
                            boolean _result17 = isMicrophoneMuted();
                            reply.writeNoException();
                            reply.writeBoolean(_result17);
                            return true;
                        case 33:
                            boolean _result18 = isUltrasoundSupported();
                            reply.writeNoException();
                            reply.writeBoolean(_result18);
                            return true;
                        case 34:
                            boolean _arg026 = data.readBoolean();
                            String _arg113 = data.readString();
                            int _arg29 = data.readInt();
                            String _arg38 = data.readString();
                            data.enforceNoDataAvail();
                            setMicrophoneMute(_arg026, _arg113, _arg29, _arg38);
                            reply.writeNoException();
                            return true;
                        case 35:
                            boolean _arg027 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setMicrophoneMuteFromSwitch(_arg027);
                            return true;
                        case 36:
                            int _arg028 = data.readInt();
                            String _arg114 = data.readString();
                            data.enforceNoDataAvail();
                            setRingerModeExternal(_arg028, _arg114);
                            reply.writeNoException();
                            return true;
                        case 37:
                            int _arg029 = data.readInt();
                            String _arg115 = data.readString();
                            data.enforceNoDataAvail();
                            setRingerModeInternal(_arg029, _arg115);
                            reply.writeNoException();
                            return true;
                        case 38:
                            int _result19 = getRingerModeExternal();
                            reply.writeNoException();
                            reply.writeInt(_result19);
                            return true;
                        case 39:
                            int _result20 = getRingerModeInternal();
                            reply.writeNoException();
                            reply.writeInt(_result20);
                            return true;
                        case 40:
                            int _arg030 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result21 = isValidRingerMode(_arg030);
                            reply.writeNoException();
                            reply.writeBoolean(_result21);
                            return true;
                        case 41:
                            int _arg031 = data.readInt();
                            int _arg116 = data.readInt();
                            data.enforceNoDataAvail();
                            setVibrateSetting(_arg031, _arg116);
                            reply.writeNoException();
                            return true;
                        case 42:
                            int _arg032 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result22 = getVibrateSetting(_arg032);
                            reply.writeNoException();
                            reply.writeInt(_result22);
                            return true;
                        case 43:
                            int _arg033 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result23 = shouldVibrate(_arg033);
                            reply.writeNoException();
                            reply.writeBoolean(_result23);
                            return true;
                        case 44:
                            int _arg034 = data.readInt();
                            IBinder _arg117 = data.readStrongBinder();
                            String _arg210 = data.readString();
                            data.enforceNoDataAvail();
                            setMode(_arg034, _arg117, _arg210);
                            reply.writeNoException();
                            return true;
                        case 45:
                            int _result24 = getMode();
                            reply.writeNoException();
                            reply.writeInt(_result24);
                            return true;
                        case 46:
                            int _arg035 = data.readInt();
                            int _arg118 = data.readInt();
                            data.enforceNoDataAvail();
                            playSoundEffect(_arg035, _arg118);
                            return true;
                        case 47:
                            int _arg036 = data.readInt();
                            float _arg119 = data.readFloat();
                            data.enforceNoDataAvail();
                            playSoundEffectVolume(_arg036, _arg119);
                            return true;
                        case 48:
                            boolean _result25 = loadSoundEffects();
                            reply.writeNoException();
                            reply.writeBoolean(_result25);
                            return true;
                        case 49:
                            unloadSoundEffects();
                            return true;
                        case 50:
                            reloadAudioSettings();
                            return true;
                        case 51:
                            Map _result26 = getSurroundFormats();
                            reply.writeNoException();
                            reply.writeMap(_result26);
                            return true;
                        case 52:
                            List _result27 = getReportedSurroundFormats();
                            reply.writeNoException();
                            reply.writeList(_result27);
                            return true;
                        case 53:
                            int _arg037 = data.readInt();
                            boolean _arg120 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result28 = setSurroundFormatEnabled(_arg037, _arg120);
                            reply.writeNoException();
                            reply.writeBoolean(_result28);
                            return true;
                        case 54:
                            int _arg038 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result29 = isSurroundFormatEnabled(_arg038);
                            reply.writeNoException();
                            reply.writeBoolean(_result29);
                            return true;
                        case 55:
                            int _arg039 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result30 = setEncodedSurroundMode(_arg039);
                            reply.writeNoException();
                            reply.writeBoolean(_result30);
                            return true;
                        case 56:
                            int _arg040 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result31 = getEncodedSurroundMode(_arg040);
                            reply.writeNoException();
                            reply.writeInt(_result31);
                            return true;
                        case 57:
                            IBinder _arg041 = data.readStrongBinder();
                            boolean _arg121 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setSpeakerphoneOn(_arg041, _arg121);
                            reply.writeNoException();
                            return true;
                        case 58:
                            boolean _result32 = isSpeakerphoneOn();
                            reply.writeNoException();
                            reply.writeBoolean(_result32);
                            return true;
                        case 59:
                            boolean _arg042 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setBluetoothScoOn(_arg042);
                            reply.writeNoException();
                            return true;
                        case 60:
                            boolean _result33 = isBluetoothScoOn();
                            reply.writeNoException();
                            reply.writeBoolean(_result33);
                            return true;
                        case 61:
                            boolean _arg043 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setBluetoothA2dpOn(_arg043);
                            reply.writeNoException();
                            return true;
                        case 62:
                            boolean _result34 = isBluetoothA2dpOn();
                            reply.writeNoException();
                            reply.writeBoolean(_result34);
                            return true;
                        case 63:
                            AudioAttributes _arg044 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            int _arg122 = data.readInt();
                            IBinder _arg211 = data.readStrongBinder();
                            IAudioFocusDispatcher _arg39 = IAudioFocusDispatcher.Stub.asInterface(data.readStrongBinder());
                            String _arg45 = data.readString();
                            String _arg5 = data.readString();
                            String _arg6 = data.readString();
                            int _arg7 = data.readInt();
                            IAudioPolicyCallback _arg8 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            int _arg9 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result35 = requestAudioFocus(_arg044, _arg122, _arg211, _arg39, _arg45, _arg5, _arg6, _arg7, _arg8, _arg9);
                            reply.writeNoException();
                            reply.writeInt(_result35);
                            return true;
                        case 64:
                            IAudioFocusDispatcher _arg045 = IAudioFocusDispatcher.Stub.asInterface(data.readStrongBinder());
                            String _arg123 = data.readString();
                            AudioAttributes _arg212 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            String _arg310 = data.readString();
                            data.enforceNoDataAvail();
                            int _result36 = abandonAudioFocus(_arg045, _arg123, _arg212, _arg310);
                            reply.writeNoException();
                            reply.writeInt(_result36);
                            return true;
                        case 65:
                            String _arg046 = data.readString();
                            data.enforceNoDataAvail();
                            unregisterAudioFocusClient(_arg046);
                            reply.writeNoException();
                            return true;
                        case 66:
                            int _result37 = getCurrentAudioFocus();
                            reply.writeNoException();
                            reply.writeInt(_result37);
                            return true;
                        case 67:
                            IBinder _arg047 = data.readStrongBinder();
                            int _arg124 = data.readInt();
                            data.enforceNoDataAvail();
                            startBluetoothSco(_arg047, _arg124);
                            reply.writeNoException();
                            return true;
                        case 68:
                            IBinder _arg048 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            startBluetoothScoVirtualCall(_arg048);
                            reply.writeNoException();
                            return true;
                        case 69:
                            IBinder _arg049 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            stopBluetoothSco(_arg049);
                            reply.writeNoException();
                            return true;
                        case 70:
                            int _arg050 = data.readInt();
                            IBinder _arg125 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            forceVolumeControlStream(_arg050, _arg125);
                            reply.writeNoException();
                            return true;
                        case 71:
                            IRingtonePlayer _arg051 = IRingtonePlayer.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            setRingtonePlayer(_arg051);
                            reply.writeNoException();
                            return true;
                        case 72:
                            IRingtonePlayer _result38 = getRingtonePlayer();
                            reply.writeNoException();
                            reply.writeStrongInterface(_result38);
                            return true;
                        case 73:
                            int _result39 = getUiSoundsStreamType();
                            reply.writeNoException();
                            reply.writeInt(_result39);
                            return true;
                        case 74:
                            AudioDeviceAttributes _arg052 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            int _arg126 = data.readInt();
                            String _arg213 = data.readString();
                            data.enforceNoDataAvail();
                            setWiredDeviceConnectionState(_arg052, _arg126, _arg213);
                            reply.writeNoException();
                            return true;
                        case 75:
                            AudioDeviceAttributes _arg053 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            int _arg127 = data.readInt();
                            String _arg214 = data.readString();
                            IBinder _arg311 = data.readStrongBinder();
                            boolean _arg46 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setIPDeviceConnectionState(_arg053, _arg127, _arg214, _arg311, _arg46);
                            reply.writeNoException();
                            return true;
                        case 76:
                            BluetoothDevice _arg054 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg128 = data.readInt();
                            int _arg215 = data.readInt();
                            boolean _arg312 = data.readBoolean();
                            int _arg47 = data.readInt();
                            data.enforceNoDataAvail();
                            handleBluetoothA2dpActiveDeviceChange(_arg054, _arg128, _arg215, _arg312, _arg47);
                            reply.writeNoException();
                            return true;
                        case 77:
                            IAudioRoutesObserver _arg055 = IAudioRoutesObserver.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            AudioRoutesInfo _result40 = startWatchingRoutes(_arg055);
                            reply.writeNoException();
                            reply.writeTypedObject(_result40, 1);
                            return true;
                        case 78:
                            boolean _result41 = isCameraSoundForced();
                            reply.writeNoException();
                            reply.writeBoolean(_result41);
                            return true;
                        case 79:
                            IVolumeController _arg056 = IVolumeController.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            setVolumeController(_arg056);
                            reply.writeNoException();
                            return true;
                        case 80:
                            IVolumeController _arg057 = IVolumeController.Stub.asInterface(data.readStrongBinder());
                            boolean _arg129 = data.readBoolean();
                            data.enforceNoDataAvail();
                            notifyVolumeControllerVisible(_arg057, _arg129);
                            reply.writeNoException();
                            return true;
                        case 81:
                            int _arg058 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result42 = isStreamAffectedByRingerMode(_arg058);
                            reply.writeNoException();
                            reply.writeBoolean(_result42);
                            return true;
                        case 82:
                            int _arg059 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result43 = isStreamAffectedByMute(_arg059);
                            reply.writeNoException();
                            reply.writeBoolean(_result43);
                            return true;
                        case 83:
                            String _arg060 = data.readString();
                            data.enforceNoDataAvail();
                            disableSafeMediaVolume(_arg060);
                            reply.writeNoException();
                            return true;
                        case 84:
                            boolean _arg061 = data.readBoolean();
                            data.enforceNoDataAvail();
                            int _result44 = setHdmiSystemAudioSupported(_arg061);
                            reply.writeNoException();
                            reply.writeInt(_result44);
                            return true;
                        case 85:
                            boolean _result45 = isHdmiSystemAudioSupported();
                            reply.writeNoException();
                            reply.writeBoolean(_result45);
                            return true;
                        case 86:
                            AudioPolicyConfig _arg062 = (AudioPolicyConfig) data.readTypedObject(AudioPolicyConfig.CREATOR);
                            IAudioPolicyCallback _arg130 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            boolean _arg216 = data.readBoolean();
                            boolean _arg313 = data.readBoolean();
                            boolean _arg48 = data.readBoolean();
                            boolean _arg52 = data.readBoolean();
                            IMediaProjection _arg62 = IMediaProjection.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            String _result46 = registerAudioPolicy(_arg062, _arg130, _arg216, _arg313, _arg48, _arg52, _arg62);
                            reply.writeNoException();
                            reply.writeString(_result46);
                            return true;
                        case 87:
                            IAudioPolicyCallback _arg063 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterAudioPolicyAsync(_arg063);
                            return true;
                        case 88:
                            IAudioPolicyCallback _arg064 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterAudioPolicy(_arg064);
                            reply.writeNoException();
                            return true;
                        case 89:
                            AudioPolicyConfig _arg065 = (AudioPolicyConfig) data.readTypedObject(AudioPolicyConfig.CREATOR);
                            IAudioPolicyCallback _arg131 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            int _result47 = addMixForPolicy(_arg065, _arg131);
                            reply.writeNoException();
                            reply.writeInt(_result47);
                            return true;
                        case 90:
                            AudioPolicyConfig _arg066 = (AudioPolicyConfig) data.readTypedObject(AudioPolicyConfig.CREATOR);
                            IAudioPolicyCallback _arg132 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            int _result48 = removeMixForPolicy(_arg066, _arg132);
                            reply.writeNoException();
                            reply.writeInt(_result48);
                            return true;
                        case 91:
                            int _arg067 = data.readInt();
                            IAudioPolicyCallback _arg133 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            int _result49 = setFocusPropertiesForPolicy(_arg067, _arg133);
                            reply.writeNoException();
                            reply.writeInt(_result49);
                            return true;
                        case 92:
                            VolumePolicy _arg068 = (VolumePolicy) data.readTypedObject(VolumePolicy.CREATOR);
                            data.enforceNoDataAvail();
                            setVolumePolicy(_arg068);
                            reply.writeNoException();
                            return true;
                        case 93:
                            boolean _result50 = hasRegisteredDynamicPolicy();
                            reply.writeNoException();
                            reply.writeBoolean(_result50);
                            return true;
                        case 94:
                            IRecordingConfigDispatcher _arg069 = IRecordingConfigDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerRecordingCallback(_arg069);
                            reply.writeNoException();
                            return true;
                        case 95:
                            IRecordingConfigDispatcher _arg070 = IRecordingConfigDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterRecordingCallback(_arg070);
                            return true;
                        case 96:
                            List<AudioRecordingConfiguration> _result51 = getActiveRecordingConfigurations();
                            reply.writeNoException();
                            reply.writeTypedList(_result51);
                            return true;
                        case 97:
                            IPlaybackConfigDispatcher _arg071 = IPlaybackConfigDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerPlaybackCallback(_arg071);
                            reply.writeNoException();
                            return true;
                        case 98:
                            IPlaybackConfigDispatcher _arg072 = IPlaybackConfigDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterPlaybackCallback(_arg072);
                            return true;
                        case 99:
                            List<AudioPlaybackConfiguration> _result52 = getActivePlaybackConfigurations();
                            reply.writeNoException();
                            reply.writeTypedList(_result52);
                            return true;
                        case 100:
                            int _arg073 = data.readInt();
                            AudioAttributes _arg134 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            int _result53 = getFocusRampTimeMs(_arg073, _arg134);
                            reply.writeNoException();
                            reply.writeInt(_result53);
                            return true;
                        case 101:
                            AudioFocusInfo _arg074 = (AudioFocusInfo) data.readTypedObject(AudioFocusInfo.CREATOR);
                            int _arg135 = data.readInt();
                            IAudioPolicyCallback _arg217 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            int _result54 = dispatchFocusChange(_arg074, _arg135, _arg217);
                            reply.writeNoException();
                            reply.writeInt(_result54);
                            return true;
                        case 102:
                            int _arg075 = data.readInt();
                            boolean _arg136 = data.readBoolean();
                            data.enforceNoDataAvail();
                            playerHasOpPlayAudio(_arg075, _arg136);
                            return true;
                        case 103:
                            BluetoothDevice _arg076 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            BluetoothDevice _arg137 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            BluetoothProfileConnectionInfo _arg218 = (BluetoothProfileConnectionInfo) data.readTypedObject(BluetoothProfileConnectionInfo.CREATOR);
                            data.enforceNoDataAvail();
                            handleBluetoothActiveDeviceChanged(_arg076, _arg137, _arg218);
                            reply.writeNoException();
                            return true;
                        case 104:
                            AudioFocusInfo _arg077 = (AudioFocusInfo) data.readTypedObject(AudioFocusInfo.CREATOR);
                            int _arg138 = data.readInt();
                            IAudioPolicyCallback _arg219 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            setFocusRequestResultFromExtPolicy(_arg077, _arg138, _arg219);
                            return true;
                        case 105:
                            IAudioServerStateDispatcher _arg078 = IAudioServerStateDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerAudioServerStateDispatcher(_arg078);
                            reply.writeNoException();
                            return true;
                        case 106:
                            IAudioServerStateDispatcher _arg079 = IAudioServerStateDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterAudioServerStateDispatcher(_arg079);
                            return true;
                        case 107:
                            boolean _result55 = isAudioServerRunning();
                            reply.writeNoException();
                            reply.writeBoolean(_result55);
                            return true;
                        case 108:
                            IAudioPolicyCallback _arg080 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            int _arg139 = data.readInt();
                            int[] _arg220 = data.createIntArray();
                            String[] _arg314 = data.createStringArray();
                            data.enforceNoDataAvail();
                            int _result56 = setUidDeviceAffinity(_arg080, _arg139, _arg220, _arg314);
                            reply.writeNoException();
                            reply.writeInt(_result56);
                            return true;
                        case 109:
                            IAudioPolicyCallback _arg081 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            int _arg140 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result57 = removeUidDeviceAffinity(_arg081, _arg140);
                            reply.writeNoException();
                            reply.writeInt(_result57);
                            return true;
                        case 110:
                            IAudioPolicyCallback _arg082 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            int _arg141 = data.readInt();
                            int[] _arg221 = data.createIntArray();
                            String[] _arg315 = data.createStringArray();
                            data.enforceNoDataAvail();
                            int _result58 = setUserIdDeviceAffinity(_arg082, _arg141, _arg221, _arg315);
                            reply.writeNoException();
                            reply.writeInt(_result58);
                            return true;
                        case 111:
                            IAudioPolicyCallback _arg083 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            int _arg142 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result59 = removeUserIdDeviceAffinity(_arg083, _arg142);
                            reply.writeNoException();
                            reply.writeInt(_result59);
                            return true;
                        case 112:
                            Uri _arg084 = (Uri) data.readTypedObject(Uri.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result60 = hasHapticChannels(_arg084);
                            reply.writeNoException();
                            reply.writeBoolean(_result60);
                            return true;
                        case 113:
                            boolean _result61 = isCallScreeningModeSupported();
                            reply.writeNoException();
                            reply.writeBoolean(_result61);
                            return true;
                        case 114:
                            int _arg085 = data.readInt();
                            List<AudioDeviceAttributes> _arg143 = data.createTypedArrayList(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            int _result62 = setPreferredDevicesForStrategy(_arg085, _arg143);
                            reply.writeNoException();
                            reply.writeInt(_result62);
                            return true;
                        case 115:
                            int _arg086 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result63 = removePreferredDevicesForStrategy(_arg086);
                            reply.writeNoException();
                            reply.writeInt(_result63);
                            return true;
                        case 116:
                            int _arg087 = data.readInt();
                            data.enforceNoDataAvail();
                            List<AudioDeviceAttributes> _result64 = getPreferredDevicesForStrategy(_arg087);
                            reply.writeNoException();
                            reply.writeTypedList(_result64);
                            return true;
                        case 117:
                            AudioAttributes _arg088 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            List<AudioDeviceAttributes> _result65 = getDevicesForAttributes(_arg088);
                            reply.writeNoException();
                            reply.writeTypedList(_result65);
                            return true;
                        case 118:
                            AudioAttributes _arg089 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            List<AudioDeviceAttributes> _result66 = getDevicesForAttributesUnprotected(_arg089);
                            reply.writeNoException();
                            reply.writeTypedList(_result66);
                            return true;
                        case 119:
                            int _arg090 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result67 = setAllowedCapturePolicy(_arg090);
                            reply.writeNoException();
                            reply.writeInt(_result67);
                            return true;
                        case 120:
                            int _result68 = getAllowedCapturePolicy();
                            reply.writeNoException();
                            reply.writeInt(_result68);
                            return true;
                        case 121:
                            IStrategyPreferredDevicesDispatcher _arg091 = IStrategyPreferredDevicesDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerStrategyPreferredDevicesDispatcher(_arg091);
                            reply.writeNoException();
                            return true;
                        case 122:
                            IStrategyPreferredDevicesDispatcher _arg092 = IStrategyPreferredDevicesDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterStrategyPreferredDevicesDispatcher(_arg092);
                            return true;
                        case 123:
                            boolean _arg093 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setRttEnabled(_arg093);
                            return true;
                        case 124:
                            AudioDeviceAttributes _arg094 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            int _arg144 = data.readInt();
                            String _arg222 = data.readString();
                            data.enforceNoDataAvail();
                            setDeviceVolumeBehavior(_arg094, _arg144, _arg222);
                            reply.writeNoException();
                            return true;
                        case 125:
                            AudioDeviceAttributes _arg095 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            int _result69 = getDeviceVolumeBehavior(_arg095);
                            reply.writeNoException();
                            reply.writeInt(_result69);
                            return true;
                        case 126:
                            String _arg096 = data.readString();
                            data.enforceNoDataAvail();
                            setParameters(_arg096);
                            reply.writeNoException();
                            return true;
                        case 127:
                            String _arg097 = data.readString();
                            data.enforceNoDataAvail();
                            String _result70 = getParameters(_arg097);
                            reply.writeNoException();
                            reply.writeString(_result70);
                            return true;
                        case 128:
                            boolean _result71 = setStreamVolumePermission();
                            reply.writeNoException();
                            reply.writeBoolean(_result71);
                            return true;
                        case 129:
                            String _arg098 = data.readString();
                            data.enforceNoDataAvail();
                            cacheBinauralRecordParameters(_arg098);
                            reply.writeNoException();
                            return true;
                        case 130:
                            IAudioModeDispatcher _arg099 = IAudioModeDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            oplusRegisterModeDispatcher(_arg099);
                            reply.writeNoException();
                            return true;
                        case 131:
                            boolean _arg0100 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setMultiAudioFocusEnabled(_arg0100);
                            return true;
                        case 132:
                            String _arg0101 = data.readString();
                            data.enforceNoDataAvail();
                            cacheParameters(_arg0101);
                            reply.writeNoException();
                            return true;
                        case 133:
                            int _arg0102 = data.readInt();
                            List<AudioDeviceAttributes> _arg145 = data.createTypedArrayList(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            int _result72 = setPreferredDevicesForCapturePreset(_arg0102, _arg145);
                            reply.writeNoException();
                            reply.writeInt(_result72);
                            return true;
                        case 134:
                            int _arg0103 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result73 = clearPreferredDevicesForCapturePreset(_arg0103);
                            reply.writeNoException();
                            reply.writeInt(_result73);
                            return true;
                        case 135:
                            int _arg0104 = data.readInt();
                            data.enforceNoDataAvail();
                            List<AudioDeviceAttributes> _result74 = getPreferredDevicesForCapturePreset(_arg0104);
                            reply.writeNoException();
                            reply.writeTypedList(_result74);
                            return true;
                        case 136:
                            ICapturePresetDevicesRoleDispatcher _arg0105 = ICapturePresetDevicesRoleDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerCapturePresetDevicesRoleDispatcher(_arg0105);
                            reply.writeNoException();
                            return true;
                        case 137:
                            ICapturePresetDevicesRoleDispatcher _arg0106 = ICapturePresetDevicesRoleDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterCapturePresetDevicesRoleDispatcher(_arg0106);
                            return true;
                        case 138:
                            int _arg0107 = data.readInt();
                            int _arg146 = data.readInt();
                            int _arg223 = data.readInt();
                            String _arg316 = data.readString();
                            int _arg49 = data.readInt();
                            int _arg53 = data.readInt();
                            UserHandle _arg63 = (UserHandle) data.readTypedObject(UserHandle.CREATOR);
                            int _arg72 = data.readInt();
                            data.enforceNoDataAvail();
                            adjustStreamVolumeForUid(_arg0107, _arg146, _arg223, _arg316, _arg49, _arg53, _arg63, _arg72);
                            return true;
                        case 139:
                            int _arg0108 = data.readInt();
                            int _arg147 = data.readInt();
                            int _arg224 = data.readInt();
                            String _arg317 = data.readString();
                            int _arg410 = data.readInt();
                            int _arg54 = data.readInt();
                            UserHandle _arg64 = (UserHandle) data.readTypedObject(UserHandle.CREATOR);
                            int _arg73 = data.readInt();
                            data.enforceNoDataAvail();
                            adjustSuggestedStreamVolumeForUid(_arg0108, _arg147, _arg224, _arg317, _arg410, _arg54, _arg64, _arg73);
                            return true;
                        case 140:
                            int _arg0109 = data.readInt();
                            int _arg148 = data.readInt();
                            int _arg225 = data.readInt();
                            String _arg318 = data.readString();
                            int _arg411 = data.readInt();
                            int _arg55 = data.readInt();
                            UserHandle _arg65 = (UserHandle) data.readTypedObject(UserHandle.CREATOR);
                            int _arg74 = data.readInt();
                            data.enforceNoDataAvail();
                            setStreamVolumeForUid(_arg0109, _arg148, _arg225, _arg318, _arg411, _arg55, _arg65, _arg74);
                            return true;
                        case 141:
                            boolean _arg0110 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result75 = isMusicActive(_arg0110);
                            reply.writeNoException();
                            reply.writeBoolean(_result75);
                            return true;
                        case 142:
                            int _arg0111 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result76 = getDeviceMaskForStream(_arg0111);
                            reply.writeNoException();
                            reply.writeInt(_result76);
                            return true;
                        case 143:
                            int[] _result77 = getAvailableCommunicationDeviceIds();
                            reply.writeNoException();
                            reply.writeIntArray(_result77);
                            return true;
                        case 144:
                            IBinder _arg0112 = data.readStrongBinder();
                            int _arg149 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result78 = setCommunicationDevice(_arg0112, _arg149);
                            reply.writeNoException();
                            reply.writeBoolean(_result78);
                            return true;
                        case 145:
                            int _result79 = getCommunicationDevice();
                            reply.writeNoException();
                            reply.writeInt(_result79);
                            return true;
                        case 146:
                            ICommunicationDeviceDispatcher _arg0113 = ICommunicationDeviceDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerCommunicationDeviceDispatcher(_arg0113);
                            reply.writeNoException();
                            return true;
                        case 147:
                            ICommunicationDeviceDispatcher _arg0114 = ICommunicationDeviceDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterCommunicationDeviceDispatcher(_arg0114);
                            return true;
                        case 148:
                            boolean _result80 = areNavigationRepeatSoundEffectsEnabled();
                            reply.writeNoException();
                            reply.writeBoolean(_result80);
                            return true;
                        case 149:
                            boolean _arg0115 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setNavigationRepeatSoundEffectsEnabled(_arg0115);
                            return true;
                        case 150:
                            boolean _result81 = isHomeSoundEffectEnabled();
                            reply.writeNoException();
                            reply.writeBoolean(_result81);
                            return true;
                        case 151:
                            boolean _arg0116 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setHomeSoundEffectEnabled(_arg0116);
                            return true;
                        case 152:
                            AudioDeviceAttributes _arg0117 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            long _arg150 = data.readLong();
                            data.enforceNoDataAvail();
                            boolean _result82 = setAdditionalOutputDeviceDelay(_arg0117, _arg150);
                            reply.writeNoException();
                            reply.writeBoolean(_result82);
                            return true;
                        case 153:
                            AudioDeviceAttributes _arg0118 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            long _result83 = getAdditionalOutputDeviceDelay(_arg0118);
                            reply.writeNoException();
                            reply.writeLong(_result83);
                            return true;
                        case 154:
                            AudioDeviceAttributes _arg0119 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            long _result84 = getMaxAdditionalOutputDeviceDelay(_arg0119);
                            reply.writeNoException();
                            reply.writeLong(_result84);
                            return true;
                        case 155:
                            AudioAttributes _arg0120 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            int _arg151 = data.readInt();
                            IBinder _arg226 = data.readStrongBinder();
                            IAudioFocusDispatcher _arg319 = IAudioFocusDispatcher.Stub.asInterface(data.readStrongBinder());
                            String _arg412 = data.readString();
                            String _arg56 = data.readString();
                            int _arg66 = data.readInt();
                            int _arg75 = data.readInt();
                            int _arg82 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result85 = requestAudioFocusForTest(_arg0120, _arg151, _arg226, _arg319, _arg412, _arg56, _arg66, _arg75, _arg82);
                            reply.writeNoException();
                            reply.writeInt(_result85);
                            return true;
                        case 156:
                            IAudioFocusDispatcher _arg0121 = IAudioFocusDispatcher.Stub.asInterface(data.readStrongBinder());
                            String _arg152 = data.readString();
                            AudioAttributes _arg227 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            String _arg320 = data.readString();
                            data.enforceNoDataAvail();
                            int _result86 = abandonAudioFocusForTest(_arg0121, _arg152, _arg227, _arg320);
                            reply.writeNoException();
                            reply.writeInt(_result86);
                            return true;
                        case 157:
                            AudioAttributes _arg0122 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            long _result87 = getFadeOutDurationOnFocusLossMillis(_arg0122);
                            reply.writeNoException();
                            reply.writeLong(_result87);
                            return true;
                        case 158:
                            IAudioModeDispatcher _arg0123 = IAudioModeDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerModeDispatcher(_arg0123);
                            reply.writeNoException();
                            return true;
                        case 159:
                            IAudioModeDispatcher _arg0124 = IAudioModeDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterModeDispatcher(_arg0124);
                            return true;
                        case 160:
                            int _result88 = getSpatializerImmersiveAudioLevel();
                            reply.writeNoException();
                            reply.writeInt(_result88);
                            return true;
                        case 161:
                            boolean _result89 = isSpatializerEnabled();
                            reply.writeNoException();
                            reply.writeBoolean(_result89);
                            return true;
                        case 162:
                            boolean _result90 = isSpatializerAvailable();
                            reply.writeNoException();
                            reply.writeBoolean(_result90);
                            return true;
                        case 163:
                            AudioDeviceAttributes _arg0125 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result91 = isSpatializerAvailableForDevice(_arg0125);
                            reply.writeNoException();
                            reply.writeBoolean(_result91);
                            return true;
                        case 164:
                            AudioDeviceAttributes _arg0126 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result92 = hasHeadTracker(_arg0126);
                            reply.writeNoException();
                            reply.writeBoolean(_result92);
                            return true;
                        case 165:
                            boolean _arg0127 = data.readBoolean();
                            AudioDeviceAttributes _arg153 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            setHeadTrackerEnabled(_arg0127, _arg153);
                            reply.writeNoException();
                            return true;
                        case 166:
                            AudioDeviceAttributes _arg0128 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result93 = isHeadTrackerEnabled(_arg0128);
                            reply.writeNoException();
                            reply.writeBoolean(_result93);
                            return true;
                        case 167:
                            boolean _result94 = isHeadTrackerAvailable();
                            reply.writeNoException();
                            reply.writeBoolean(_result94);
                            return true;
                        case 168:
                            ISpatializerHeadTrackerAvailableCallback _arg0129 = ISpatializerHeadTrackerAvailableCallback.Stub.asInterface(data.readStrongBinder());
                            boolean _arg154 = data.readBoolean();
                            data.enforceNoDataAvail();
                            registerSpatializerHeadTrackerAvailableCallback(_arg0129, _arg154);
                            reply.writeNoException();
                            return true;
                        case 169:
                            boolean _arg0130 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setSpatializerEnabled(_arg0130);
                            reply.writeNoException();
                            return true;
                        case 170:
                            AudioAttributes _arg0131 = (AudioAttributes) data.readTypedObject(AudioAttributes.CREATOR);
                            AudioFormat _arg155 = (AudioFormat) data.readTypedObject(AudioFormat.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result95 = canBeSpatialized(_arg0131, _arg155);
                            reply.writeNoException();
                            reply.writeBoolean(_result95);
                            return true;
                        case 171:
                            ISpatializerCallback _arg0132 = ISpatializerCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerSpatializerCallback(_arg0132);
                            reply.writeNoException();
                            return true;
                        case 172:
                            ISpatializerCallback _arg0133 = ISpatializerCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterSpatializerCallback(_arg0133);
                            reply.writeNoException();
                            return true;
                        case 173:
                            ISpatializerHeadTrackingModeCallback _arg0134 = ISpatializerHeadTrackingModeCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerSpatializerHeadTrackingCallback(_arg0134);
                            reply.writeNoException();
                            return true;
                        case 174:
                            ISpatializerHeadTrackingModeCallback _arg0135 = ISpatializerHeadTrackingModeCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterSpatializerHeadTrackingCallback(_arg0135);
                            reply.writeNoException();
                            return true;
                        case 175:
                            ISpatializerHeadToSoundStagePoseCallback _arg0136 = ISpatializerHeadToSoundStagePoseCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerHeadToSoundstagePoseCallback(_arg0136);
                            reply.writeNoException();
                            return true;
                        case 176:
                            ISpatializerHeadToSoundStagePoseCallback _arg0137 = ISpatializerHeadToSoundStagePoseCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterHeadToSoundstagePoseCallback(_arg0137);
                            reply.writeNoException();
                            return true;
                        case 177:
                            List<AudioDeviceAttributes> _result96 = getSpatializerCompatibleAudioDevices();
                            reply.writeNoException();
                            reply.writeTypedList(_result96);
                            return true;
                        case 178:
                            AudioDeviceAttributes _arg0138 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            addSpatializerCompatibleAudioDevice(_arg0138);
                            reply.writeNoException();
                            return true;
                        case 179:
                            AudioDeviceAttributes _arg0139 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            removeSpatializerCompatibleAudioDevice(_arg0139);
                            reply.writeNoException();
                            return true;
                        case 180:
                            int _arg0140 = data.readInt();
                            data.enforceNoDataAvail();
                            setDesiredHeadTrackingMode(_arg0140);
                            reply.writeNoException();
                            return true;
                        case 181:
                            int _result97 = getDesiredHeadTrackingMode();
                            reply.writeNoException();
                            reply.writeInt(_result97);
                            return true;
                        case 182:
                            int[] _result98 = getSupportedHeadTrackingModes();
                            reply.writeNoException();
                            reply.writeIntArray(_result98);
                            return true;
                        case 183:
                            int _result99 = getActualHeadTrackingMode();
                            reply.writeNoException();
                            reply.writeInt(_result99);
                            return true;
                        case 184:
                            float[] _arg0141 = data.createFloatArray();
                            data.enforceNoDataAvail();
                            setSpatializerGlobalTransform(_arg0141);
                            return true;
                        case 185:
                            recenterHeadTracker();
                            return true;
                        case 186:
                            int _arg0142 = data.readInt();
                            byte[] _arg156 = data.createByteArray();
                            data.enforceNoDataAvail();
                            setSpatializerParameter(_arg0142, _arg156);
                            reply.writeNoException();
                            return true;
                        case 187:
                            int _arg0143 = data.readInt();
                            byte[] _arg157 = data.createByteArray();
                            data.enforceNoDataAvail();
                            getSpatializerParameter(_arg0143, _arg157);
                            reply.writeNoException();
                            reply.writeByteArray(_arg157);
                            return true;
                        case 188:
                            int _result100 = getSpatializerOutput();
                            reply.writeNoException();
                            reply.writeInt(_result100);
                            return true;
                        case 189:
                            ISpatializerOutputCallback _arg0144 = ISpatializerOutputCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerSpatializerOutputCallback(_arg0144);
                            reply.writeNoException();
                            return true;
                        case 190:
                            ISpatializerOutputCallback _arg0145 = ISpatializerOutputCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterSpatializerOutputCallback(_arg0145);
                            reply.writeNoException();
                            return true;
                        case 191:
                            boolean _result101 = isVolumeFixed();
                            reply.writeNoException();
                            reply.writeBoolean(_result101);
                            return true;
                        case 192:
                            VolumeInfo _result102 = getDefaultVolumeInfo();
                            reply.writeNoException();
                            reply.writeTypedObject(_result102, 1);
                            return true;
                        case 193:
                            boolean _result103 = isPstnCallAudioInterceptable();
                            reply.writeNoException();
                            reply.writeBoolean(_result103);
                            return true;
                        case 194:
                            int[] _arg0146 = data.createIntArray();
                            AudioDeviceAttributes _arg158 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            long _arg228 = data.readLong();
                            data.enforceNoDataAvail();
                            muteAwaitConnection(_arg0146, _arg158, _arg228);
                            return true;
                        case 195:
                            AudioDeviceAttributes _arg0147 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            data.enforceNoDataAvail();
                            cancelMuteAwaitConnection(_arg0147);
                            return true;
                        case 196:
                            AudioDeviceAttributes _result104 = getMutingExpectedDevice();
                            reply.writeNoException();
                            reply.writeTypedObject(_result104, 1);
                            return true;
                        case 197:
                            IMuteAwaitConnectionCallback _arg0148 = IMuteAwaitConnectionCallback.Stub.asInterface(data.readStrongBinder());
                            boolean _arg159 = data.readBoolean();
                            data.enforceNoDataAvail();
                            registerMuteAwaitConnectionDispatcher(_arg0148, _arg159);
                            reply.writeNoException();
                            return true;
                        case 198:
                            AudioDeviceAttributes _arg0149 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            boolean _arg160 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setTestDeviceConnectionState(_arg0149, _arg160);
                            reply.writeNoException();
                            return true;
                        case 199:
                            boolean _arg0150 = data.readBoolean();
                            IDeviceVolumeBehaviorDispatcher _arg161 = IDeviceVolumeBehaviorDispatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerDeviceVolumeBehaviorDispatcher(_arg0150, _arg161);
                            reply.writeNoException();
                            return true;
                        case 200:
                            List<AudioFocusInfo> _result105 = getFocusStack();
                            reply.writeNoException();
                            reply.writeTypedList(_result105);
                            return true;
                        case 201:
                            AudioFocusInfo _arg0151 = (AudioFocusInfo) data.readTypedObject(AudioFocusInfo.CREATOR);
                            IAudioPolicyCallback _arg162 = IAudioPolicyCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            boolean _result106 = sendFocusLoss(_arg0151, _arg162);
                            reply.writeNoException();
                            reply.writeBoolean(_result106);
                            return true;
                        case 202:
                            int[] _arg0152 = data.createIntArray();
                            data.enforceNoDataAvail();
                            addAssistantServicesUids(_arg0152);
                            reply.writeNoException();
                            return true;
                        case 203:
                            int[] _arg0153 = data.createIntArray();
                            data.enforceNoDataAvail();
                            removeAssistantServicesUids(_arg0153);
                            reply.writeNoException();
                            return true;
                        case 204:
                            int[] _arg0154 = data.createIntArray();
                            data.enforceNoDataAvail();
                            setActiveAssistantServiceUids(_arg0154);
                            reply.writeNoException();
                            return true;
                        case 205:
                            int[] _result107 = getAssistantServicesUids();
                            reply.writeNoException();
                            reply.writeIntArray(_result107);
                            return true;
                        case 206:
                            int[] _result108 = getActiveAssistantServiceUids();
                            reply.writeNoException();
                            reply.writeIntArray(_result108);
                            return true;
                        case 207:
                            boolean _arg0155 = data.readBoolean();
                            IAudioDeviceVolumeDispatcher _arg163 = IAudioDeviceVolumeDispatcher.Stub.asInterface(data.readStrongBinder());
                            String _arg229 = data.readString();
                            AudioDeviceAttributes _arg321 = (AudioDeviceAttributes) data.readTypedObject(AudioDeviceAttributes.CREATOR);
                            List<VolumeInfo> _arg413 = data.createTypedArrayList(VolumeInfo.CREATOR);
                            boolean _arg57 = data.readBoolean();
                            data.enforceNoDataAvail();
                            registerDeviceVolumeDispatcherForAbsoluteVolume(_arg0155, _arg163, _arg229, _arg321, _arg413, _arg57);
                            reply.writeNoException();
                            return true;
                        case 208:
                            String _result109 = getHalVersion();
                            reply.writeNoException();
                            reply.writeString(_result109);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IAudioService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.media.IAudioService
            public int trackPlayer(PlayerBase.PlayerIdCard pic) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(pic, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playerAttributes(int piid, AudioAttributes attr) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(piid);
                    _data.writeTypedObject(attr, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playerEvent(int piid, int event, int deviceId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(piid);
                    _data.writeInt(event);
                    _data.writeInt(deviceId);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void releasePlayer(int piid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(piid);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int trackRecorder(IBinder recorder) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(recorder);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void recorderEvent(int riid, int event) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(riid);
                    _data.writeInt(event);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void releaseRecorder(int riid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(riid);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playerSessionId(int piid, int sessionId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(piid);
                    _data.writeInt(sessionId);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustStreamVolume(int streamType, int direction, int flags, String callingPackage) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    _data.writeInt(direction);
                    _data.writeInt(flags);
                    _data.writeString(callingPackage);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustStreamVolumeWithAttribution(int streamType, int direction, int flags, String callingPackage, String attributionTag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    _data.writeInt(direction);
                    _data.writeInt(flags);
                    _data.writeString(callingPackage);
                    _data.writeString(attributionTag);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setStreamVolume(int streamType, int index, int flags, String callingPackage) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    _data.writeInt(index);
                    _data.writeInt(flags);
                    _data.writeString(callingPackage);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setStreamVolumeWithAttribution(int streamType, int index, int flags, String callingPackage, String attributionTag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    _data.writeInt(index);
                    _data.writeInt(flags);
                    _data.writeString(callingPackage);
                    _data.writeString(attributionTag);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void handleVolumeKey(KeyEvent event, boolean isOnTv, String callingPackage, String caller) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(event, 0);
                    _data.writeBoolean(isOnTv);
                    _data.writeString(callingPackage);
                    _data.writeString(caller);
                    this.mRemote.transact(13, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isStreamMute(int streamType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void forceRemoteSubmixFullVolume(boolean startForcing, IBinder cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(startForcing);
                    _data.writeStrongBinder(cb);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isMasterMute() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMasterMute(boolean mute, int flags, String callingPackage, int userId, String attributionTag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(mute);
                    _data.writeInt(flags);
                    _data.writeString(callingPackage);
                    _data.writeInt(userId);
                    _data.writeString(attributionTag);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getStreamVolume(int streamType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getBleCgVolume() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getLastHfpScoVolume() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getStreamMinVolume(int streamType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    this.mRemote.transact(21, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getStreamMaxVolume(int streamType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    this.mRemote.transact(22, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<android.media.audiopolicy.AudioVolumeGroup> getAudioVolumeGroups() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(23, _data, _reply, 0);
                    _reply.readException();
                    List<android.media.audiopolicy.AudioVolumeGroup> _result = _reply.createTypedArrayList(android.media.audiopolicy.AudioVolumeGroup.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setVolumeIndexForAttributes(AudioAttributes aa, int index, int flags, String callingPackage, String attributionTag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    _data.writeInt(index);
                    _data.writeInt(flags);
                    _data.writeString(callingPackage);
                    _data.writeString(attributionTag);
                    this.mRemote.transact(24, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getVolumeIndexForAttributes(AudioAttributes aa) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    this.mRemote.transact(25, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getMaxVolumeIndexForAttributes(AudioAttributes aa) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    this.mRemote.transact(26, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getMinVolumeIndexForAttributes(AudioAttributes aa) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    this.mRemote.transact(27, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getLastAudibleStreamVolume(int streamType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    this.mRemote.transact(28, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setSupportedSystemUsages(int[] systemUsages) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(systemUsages);
                    this.mRemote.transact(29, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int[] getSupportedSystemUsages() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<android.media.audiopolicy.AudioProductStrategy> getAudioProductStrategies() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(31, _data, _reply, 0);
                    _reply.readException();
                    List<android.media.audiopolicy.AudioProductStrategy> _result = _reply.createTypedArrayList(android.media.audiopolicy.AudioProductStrategy.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isMicrophoneMuted() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(32, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isUltrasoundSupported() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(33, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMicrophoneMute(boolean on, String callingPackage, int userId, String attributionTag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(on);
                    _data.writeString(callingPackage);
                    _data.writeInt(userId);
                    _data.writeString(attributionTag);
                    this.mRemote.transact(34, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMicrophoneMuteFromSwitch(boolean on) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(on);
                    this.mRemote.transact(35, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRingerModeExternal(int ringerMode, String caller) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(ringerMode);
                    _data.writeString(caller);
                    this.mRemote.transact(36, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRingerModeInternal(int ringerMode, String caller) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(ringerMode);
                    _data.writeString(caller);
                    this.mRemote.transact(37, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getRingerModeExternal() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(38, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getRingerModeInternal() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(39, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isValidRingerMode(int ringerMode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(ringerMode);
                    this.mRemote.transact(40, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setVibrateSetting(int vibrateType, int vibrateSetting) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(vibrateType);
                    _data.writeInt(vibrateSetting);
                    this.mRemote.transact(41, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getVibrateSetting(int vibrateType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(vibrateType);
                    this.mRemote.transact(42, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean shouldVibrate(int vibrateType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(vibrateType);
                    this.mRemote.transact(43, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMode(int mode, IBinder cb, String callingPackage) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    _data.writeStrongBinder(cb);
                    _data.writeString(callingPackage);
                    this.mRemote.transact(44, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getMode() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(45, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playSoundEffect(int effectType, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(effectType);
                    _data.writeInt(userId);
                    this.mRemote.transact(46, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playSoundEffectVolume(int effectType, float volume) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(effectType);
                    _data.writeFloat(volume);
                    this.mRemote.transact(47, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean loadSoundEffects() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(48, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unloadSoundEffects() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(49, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void reloadAudioSettings() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(50, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public Map getSurroundFormats() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(51, _data, _reply, 0);
                    _reply.readException();
                    ClassLoader cl = getClass().getClassLoader();
                    Map _result = _reply.readHashMap(cl);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List getReportedSurroundFormats() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(52, _data, _reply, 0);
                    _reply.readException();
                    ClassLoader cl = getClass().getClassLoader();
                    List _result = _reply.readArrayList(cl);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean setSurroundFormatEnabled(int audioFormat, boolean enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(audioFormat);
                    _data.writeBoolean(enabled);
                    this.mRemote.transact(53, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isSurroundFormatEnabled(int audioFormat) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(audioFormat);
                    this.mRemote.transact(54, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean setEncodedSurroundMode(int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    this.mRemote.transact(55, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getEncodedSurroundMode(int targetSdkVersion) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(targetSdkVersion);
                    this.mRemote.transact(56, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setSpeakerphoneOn(IBinder cb, boolean on) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(cb);
                    _data.writeBoolean(on);
                    this.mRemote.transact(57, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isSpeakerphoneOn() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(58, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setBluetoothScoOn(boolean on) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(on);
                    this.mRemote.transact(59, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isBluetoothScoOn() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(60, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setBluetoothA2dpOn(boolean on) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(on);
                    this.mRemote.transact(61, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isBluetoothA2dpOn() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(62, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int requestAudioFocus(AudioAttributes aa, int durationHint, IBinder cb, IAudioFocusDispatcher fd, String clientId, String callingPackageName, String attributionTag, int flags, IAudioPolicyCallback pcb, int sdk) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    _data.writeInt(durationHint);
                    _data.writeStrongBinder(cb);
                    _data.writeStrongInterface(fd);
                    _data.writeString(clientId);
                    _data.writeString(callingPackageName);
                    _data.writeString(attributionTag);
                    _data.writeInt(flags);
                    _data.writeStrongInterface(pcb);
                    _data.writeInt(sdk);
                    this.mRemote.transact(63, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int abandonAudioFocus(IAudioFocusDispatcher fd, String clientId, AudioAttributes aa, String callingPackageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(fd);
                    _data.writeString(clientId);
                    _data.writeTypedObject(aa, 0);
                    _data.writeString(callingPackageName);
                    this.mRemote.transact(64, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterAudioFocusClient(String clientId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(clientId);
                    this.mRemote.transact(65, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getCurrentAudioFocus() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(66, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void startBluetoothSco(IBinder cb, int targetSdkVersion) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(cb);
                    _data.writeInt(targetSdkVersion);
                    this.mRemote.transact(67, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void startBluetoothScoVirtualCall(IBinder cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(cb);
                    this.mRemote.transact(68, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void stopBluetoothSco(IBinder cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(cb);
                    this.mRemote.transact(69, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void forceVolumeControlStream(int streamType, IBinder cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    _data.writeStrongBinder(cb);
                    this.mRemote.transact(70, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRingtonePlayer(IRingtonePlayer player) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(player);
                    this.mRemote.transact(71, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public IRingtonePlayer getRingtonePlayer() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(72, _data, _reply, 0);
                    _reply.readException();
                    IRingtonePlayer _result = IRingtonePlayer.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getUiSoundsStreamType() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(73, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setWiredDeviceConnectionState(AudioDeviceAttributes aa, int state, String caller) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    _data.writeInt(state);
                    _data.writeString(caller);
                    this.mRemote.transact(74, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setIPDeviceConnectionState(AudioDeviceAttributes aa, int state, String caller, IBinder cb, boolean suppressNoisyIntent) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    _data.writeInt(state);
                    _data.writeString(caller);
                    _data.writeStrongBinder(cb);
                    _data.writeBoolean(suppressNoisyIntent);
                    this.mRemote.transact(75, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void handleBluetoothA2dpActiveDeviceChange(BluetoothDevice device, int state, int profile, boolean suppressNoisyIntent, int a2dpVolume) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(state);
                    _data.writeInt(profile);
                    _data.writeBoolean(suppressNoisyIntent);
                    _data.writeInt(a2dpVolume);
                    this.mRemote.transact(76, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver observer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(observer);
                    this.mRemote.transact(77, _data, _reply, 0);
                    _reply.readException();
                    AudioRoutesInfo _result = (AudioRoutesInfo) _reply.readTypedObject(AudioRoutesInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isCameraSoundForced() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(78, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setVolumeController(IVolumeController controller) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(controller);
                    this.mRemote.transact(79, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void notifyVolumeControllerVisible(IVolumeController controller, boolean visible) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(controller);
                    _data.writeBoolean(visible);
                    this.mRemote.transact(80, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isStreamAffectedByRingerMode(int streamType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    this.mRemote.transact(81, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isStreamAffectedByMute(int streamType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    this.mRemote.transact(82, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void disableSafeMediaVolume(String callingPackage) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(callingPackage);
                    this.mRemote.transact(83, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setHdmiSystemAudioSupported(boolean on) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(on);
                    this.mRemote.transact(84, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isHdmiSystemAudioSupported() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(85, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public String registerAudioPolicy(AudioPolicyConfig policyConfig, IAudioPolicyCallback pcb, boolean hasFocusListener, boolean isFocusPolicy, boolean isTestFocusPolicy, boolean isVolumeController, IMediaProjection projection) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(policyConfig, 0);
                    _data.writeStrongInterface(pcb);
                    _data.writeBoolean(hasFocusListener);
                    _data.writeBoolean(isFocusPolicy);
                    _data.writeBoolean(isTestFocusPolicy);
                    _data.writeBoolean(isVolumeController);
                    _data.writeStrongInterface(projection);
                    this.mRemote.transact(86, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterAudioPolicyAsync(IAudioPolicyCallback pcb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(pcb);
                    this.mRemote.transact(87, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterAudioPolicy(IAudioPolicyCallback pcb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(pcb);
                    this.mRemote.transact(88, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int addMixForPolicy(AudioPolicyConfig policyConfig, IAudioPolicyCallback pcb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(policyConfig, 0);
                    _data.writeStrongInterface(pcb);
                    this.mRemote.transact(89, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int removeMixForPolicy(AudioPolicyConfig policyConfig, IAudioPolicyCallback pcb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(policyConfig, 0);
                    _data.writeStrongInterface(pcb);
                    this.mRemote.transact(90, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setFocusPropertiesForPolicy(int duckingBehavior, IAudioPolicyCallback pcb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(duckingBehavior);
                    _data.writeStrongInterface(pcb);
                    this.mRemote.transact(91, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setVolumePolicy(VolumePolicy policy) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(policy, 0);
                    this.mRemote.transact(92, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean hasRegisteredDynamicPolicy() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(93, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerRecordingCallback(IRecordingConfigDispatcher rcdb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(rcdb);
                    this.mRemote.transact(94, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterRecordingCallback(IRecordingConfigDispatcher rcdb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(rcdb);
                    this.mRemote.transact(95, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioRecordingConfiguration> getActiveRecordingConfigurations() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(96, _data, _reply, 0);
                    _reply.readException();
                    List<AudioRecordingConfiguration> _result = _reply.createTypedArrayList(AudioRecordingConfiguration.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerPlaybackCallback(IPlaybackConfigDispatcher pcdb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(pcdb);
                    this.mRemote.transact(97, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterPlaybackCallback(IPlaybackConfigDispatcher pcdb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(pcdb);
                    this.mRemote.transact(98, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioPlaybackConfiguration> getActivePlaybackConfigurations() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(99, _data, _reply, 0);
                    _reply.readException();
                    List<AudioPlaybackConfiguration> _result = _reply.createTypedArrayList(AudioPlaybackConfiguration.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getFocusRampTimeMs(int focusGain, AudioAttributes attr) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(focusGain);
                    _data.writeTypedObject(attr, 0);
                    this.mRemote.transact(100, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int dispatchFocusChange(AudioFocusInfo afi, int focusChange, IAudioPolicyCallback pcb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(afi, 0);
                    _data.writeInt(focusChange);
                    _data.writeStrongInterface(pcb);
                    this.mRemote.transact(101, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playerHasOpPlayAudio(int piid, boolean hasOpPlayAudio) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(piid);
                    _data.writeBoolean(hasOpPlayAudio);
                    this.mRemote.transact(102, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void handleBluetoothActiveDeviceChanged(BluetoothDevice newDevice, BluetoothDevice previousDevice, BluetoothProfileConnectionInfo info) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(newDevice, 0);
                    _data.writeTypedObject(previousDevice, 0);
                    _data.writeTypedObject(info, 0);
                    this.mRemote.transact(103, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setFocusRequestResultFromExtPolicy(AudioFocusInfo afi, int requestResult, IAudioPolicyCallback pcb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(afi, 0);
                    _data.writeInt(requestResult);
                    _data.writeStrongInterface(pcb);
                    this.mRemote.transact(104, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerAudioServerStateDispatcher(IAudioServerStateDispatcher asd) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(asd);
                    this.mRemote.transact(105, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterAudioServerStateDispatcher(IAudioServerStateDispatcher asd) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(asd);
                    this.mRemote.transact(106, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isAudioServerRunning() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(107, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setUidDeviceAffinity(IAudioPolicyCallback pcb, int uid, int[] deviceTypes, String[] deviceAddresses) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(pcb);
                    _data.writeInt(uid);
                    _data.writeIntArray(deviceTypes);
                    _data.writeStringArray(deviceAddresses);
                    this.mRemote.transact(108, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int removeUidDeviceAffinity(IAudioPolicyCallback pcb, int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(pcb);
                    _data.writeInt(uid);
                    this.mRemote.transact(109, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setUserIdDeviceAffinity(IAudioPolicyCallback pcb, int userId, int[] deviceTypes, String[] deviceAddresses) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(pcb);
                    _data.writeInt(userId);
                    _data.writeIntArray(deviceTypes);
                    _data.writeStringArray(deviceAddresses);
                    this.mRemote.transact(110, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int removeUserIdDeviceAffinity(IAudioPolicyCallback pcb, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(pcb);
                    _data.writeInt(userId);
                    this.mRemote.transact(111, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean hasHapticChannels(Uri uri) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(uri, 0);
                    this.mRemote.transact(112, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isCallScreeningModeSupported() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(113, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setPreferredDevicesForStrategy(int strategy, List<AudioDeviceAttributes> device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(strategy);
                    _data.writeTypedList(device);
                    this.mRemote.transact(114, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int removePreferredDevicesForStrategy(int strategy) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(strategy);
                    this.mRemote.transact(115, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioDeviceAttributes> getPreferredDevicesForStrategy(int strategy) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(strategy);
                    this.mRemote.transact(116, _data, _reply, 0);
                    _reply.readException();
                    List<AudioDeviceAttributes> _result = _reply.createTypedArrayList(AudioDeviceAttributes.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioDeviceAttributes> getDevicesForAttributes(AudioAttributes attributes) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributes, 0);
                    this.mRemote.transact(117, _data, _reply, 0);
                    _reply.readException();
                    List<AudioDeviceAttributes> _result = _reply.createTypedArrayList(AudioDeviceAttributes.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioDeviceAttributes> getDevicesForAttributesUnprotected(AudioAttributes attributes) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributes, 0);
                    this.mRemote.transact(118, _data, _reply, 0);
                    _reply.readException();
                    List<AudioDeviceAttributes> _result = _reply.createTypedArrayList(AudioDeviceAttributes.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setAllowedCapturePolicy(int capturePolicy) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(capturePolicy);
                    this.mRemote.transact(119, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getAllowedCapturePolicy() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(120, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerStrategyPreferredDevicesDispatcher(IStrategyPreferredDevicesDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(121, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterStrategyPreferredDevicesDispatcher(IStrategyPreferredDevicesDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(122, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRttEnabled(boolean rttEnabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(rttEnabled);
                    this.mRemote.transact(123, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setDeviceVolumeBehavior(AudioDeviceAttributes device, int deviceVolumeBehavior, String pkgName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(deviceVolumeBehavior);
                    _data.writeString(pkgName);
                    this.mRemote.transact(124, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getDeviceVolumeBehavior(AudioDeviceAttributes device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(125, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setParameters(String keyValuePairs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(keyValuePairs);
                    this.mRemote.transact(126, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public String getParameters(String keyValuePairs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(keyValuePairs);
                    this.mRemote.transact(127, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean setStreamVolumePermission() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(128, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void cacheBinauralRecordParameters(String kvpairs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(kvpairs);
                    this.mRemote.transact(129, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void oplusRegisterModeDispatcher(IAudioModeDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(130, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMultiAudioFocusEnabled(boolean enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enabled);
                    this.mRemote.transact(131, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void cacheParameters(String keyValuePairs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(keyValuePairs);
                    this.mRemote.transact(132, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setPreferredDevicesForCapturePreset(int capturePreset, List<AudioDeviceAttributes> devices) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(capturePreset);
                    _data.writeTypedList(devices);
                    this.mRemote.transact(133, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int clearPreferredDevicesForCapturePreset(int capturePreset) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(capturePreset);
                    this.mRemote.transact(134, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioDeviceAttributes> getPreferredDevicesForCapturePreset(int capturePreset) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(capturePreset);
                    this.mRemote.transact(135, _data, _reply, 0);
                    _reply.readException();
                    List<AudioDeviceAttributes> _result = _reply.createTypedArrayList(AudioDeviceAttributes.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerCapturePresetDevicesRoleDispatcher(ICapturePresetDevicesRoleDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(136, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterCapturePresetDevicesRoleDispatcher(ICapturePresetDevicesRoleDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(137, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustStreamVolumeForUid(int streamType, int direction, int flags, String packageName, int uid, int pid, UserHandle userHandle, int targetSdkVersion) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    _data.writeInt(direction);
                    _data.writeInt(flags);
                    _data.writeString(packageName);
                    _data.writeInt(uid);
                    _data.writeInt(pid);
                    _data.writeTypedObject(userHandle, 0);
                    _data.writeInt(targetSdkVersion);
                    this.mRemote.transact(138, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustSuggestedStreamVolumeForUid(int streamType, int direction, int flags, String packageName, int uid, int pid, UserHandle userHandle, int targetSdkVersion) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    _data.writeInt(direction);
                    _data.writeInt(flags);
                    _data.writeString(packageName);
                    _data.writeInt(uid);
                    _data.writeInt(pid);
                    _data.writeTypedObject(userHandle, 0);
                    _data.writeInt(targetSdkVersion);
                    this.mRemote.transact(139, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setStreamVolumeForUid(int streamType, int direction, int flags, String packageName, int uid, int pid, UserHandle userHandle, int targetSdkVersion) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    _data.writeInt(direction);
                    _data.writeInt(flags);
                    _data.writeString(packageName);
                    _data.writeInt(uid);
                    _data.writeInt(pid);
                    _data.writeTypedObject(userHandle, 0);
                    _data.writeInt(targetSdkVersion);
                    this.mRemote.transact(140, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isMusicActive(boolean remotely) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(remotely);
                    this.mRemote.transact(141, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getDeviceMaskForStream(int streamType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(streamType);
                    this.mRemote.transact(142, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int[] getAvailableCommunicationDeviceIds() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(143, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean setCommunicationDevice(IBinder cb, int portId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(cb);
                    _data.writeInt(portId);
                    this.mRemote.transact(144, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getCommunicationDevice() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(145, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerCommunicationDeviceDispatcher(ICommunicationDeviceDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(146, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterCommunicationDeviceDispatcher(ICommunicationDeviceDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(147, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean areNavigationRepeatSoundEffectsEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(148, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setNavigationRepeatSoundEffectsEnabled(boolean enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enabled);
                    this.mRemote.transact(149, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isHomeSoundEffectEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(150, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setHomeSoundEffectEnabled(boolean enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enabled);
                    this.mRemote.transact(151, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean setAdditionalOutputDeviceDelay(AudioDeviceAttributes device, long delayMillis) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeLong(delayMillis);
                    this.mRemote.transact(152, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public long getAdditionalOutputDeviceDelay(AudioDeviceAttributes device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(153, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public long getMaxAdditionalOutputDeviceDelay(AudioDeviceAttributes device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(154, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int requestAudioFocusForTest(AudioAttributes aa, int durationHint, IBinder cb, IAudioFocusDispatcher fd, String clientId, String callingPackageName, int flags, int uid, int sdk) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    _data.writeInt(durationHint);
                    _data.writeStrongBinder(cb);
                    _data.writeStrongInterface(fd);
                    _data.writeString(clientId);
                    _data.writeString(callingPackageName);
                    _data.writeInt(flags);
                    _data.writeInt(uid);
                    _data.writeInt(sdk);
                    this.mRemote.transact(155, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int abandonAudioFocusForTest(IAudioFocusDispatcher fd, String clientId, AudioAttributes aa, String callingPackageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(fd);
                    _data.writeString(clientId);
                    _data.writeTypedObject(aa, 0);
                    _data.writeString(callingPackageName);
                    this.mRemote.transact(156, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public long getFadeOutDurationOnFocusLossMillis(AudioAttributes aa) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    this.mRemote.transact(157, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerModeDispatcher(IAudioModeDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(158, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterModeDispatcher(IAudioModeDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(159, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getSpatializerImmersiveAudioLevel() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(160, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isSpatializerEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(161, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isSpatializerAvailable() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(162, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isSpatializerAvailableForDevice(AudioDeviceAttributes device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(163, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean hasHeadTracker(AudioDeviceAttributes device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(164, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setHeadTrackerEnabled(boolean enabled, AudioDeviceAttributes device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enabled);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(165, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isHeadTrackerEnabled(AudioDeviceAttributes device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(166, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isHeadTrackerAvailable() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(167, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerSpatializerHeadTrackerAvailableCallback(ISpatializerHeadTrackerAvailableCallback cb, boolean register) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    _data.writeBoolean(register);
                    this.mRemote.transact(168, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setSpatializerEnabled(boolean enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enabled);
                    this.mRemote.transact(169, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean canBeSpatialized(AudioAttributes aa, AudioFormat af) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(aa, 0);
                    _data.writeTypedObject(af, 0);
                    this.mRemote.transact(170, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerSpatializerCallback(ISpatializerCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(171, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterSpatializerCallback(ISpatializerCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(172, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerSpatializerHeadTrackingCallback(ISpatializerHeadTrackingModeCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(173, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterSpatializerHeadTrackingCallback(ISpatializerHeadTrackingModeCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(174, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerHeadToSoundstagePoseCallback(ISpatializerHeadToSoundStagePoseCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(175, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterHeadToSoundstagePoseCallback(ISpatializerHeadToSoundStagePoseCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(176, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioDeviceAttributes> getSpatializerCompatibleAudioDevices() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(177, _data, _reply, 0);
                    _reply.readException();
                    List<AudioDeviceAttributes> _result = _reply.createTypedArrayList(AudioDeviceAttributes.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void addSpatializerCompatibleAudioDevice(AudioDeviceAttributes ada) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(ada, 0);
                    this.mRemote.transact(178, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void removeSpatializerCompatibleAudioDevice(AudioDeviceAttributes ada) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(ada, 0);
                    this.mRemote.transact(179, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setDesiredHeadTrackingMode(int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    this.mRemote.transact(180, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getDesiredHeadTrackingMode() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(181, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int[] getSupportedHeadTrackingModes() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(182, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getActualHeadTrackingMode() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(183, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setSpatializerGlobalTransform(float[] transform) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeFloatArray(transform);
                    this.mRemote.transact(184, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void recenterHeadTracker() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(185, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setSpatializerParameter(int key, byte[] value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(key);
                    _data.writeByteArray(value);
                    this.mRemote.transact(186, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void getSpatializerParameter(int key, byte[] value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(key);
                    _data.writeByteArray(value);
                    this.mRemote.transact(187, _data, _reply, 0);
                    _reply.readException();
                    _reply.readByteArray(value);
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getSpatializerOutput() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(188, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerSpatializerOutputCallback(ISpatializerOutputCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(189, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterSpatializerOutputCallback(ISpatializerOutputCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(190, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isVolumeFixed() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(191, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public VolumeInfo getDefaultVolumeInfo() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(192, _data, _reply, 0);
                    _reply.readException();
                    VolumeInfo _result = (VolumeInfo) _reply.readTypedObject(VolumeInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isPstnCallAudioInterceptable() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(193, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void muteAwaitConnection(int[] usagesToMute, AudioDeviceAttributes dev, long timeOutMs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(usagesToMute);
                    _data.writeTypedObject(dev, 0);
                    _data.writeLong(timeOutMs);
                    this.mRemote.transact(194, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void cancelMuteAwaitConnection(AudioDeviceAttributes dev) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(dev, 0);
                    this.mRemote.transact(195, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public AudioDeviceAttributes getMutingExpectedDevice() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(196, _data, _reply, 0);
                    _reply.readException();
                    AudioDeviceAttributes _result = (AudioDeviceAttributes) _reply.readTypedObject(AudioDeviceAttributes.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerMuteAwaitConnectionDispatcher(IMuteAwaitConnectionCallback cb, boolean register) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    _data.writeBoolean(register);
                    this.mRemote.transact(197, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setTestDeviceConnectionState(AudioDeviceAttributes device, boolean connected) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(connected);
                    this.mRemote.transact(198, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerDeviceVolumeBehaviorDispatcher(boolean register, IDeviceVolumeBehaviorDispatcher dispatcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(register);
                    _data.writeStrongInterface(dispatcher);
                    this.mRemote.transact(199, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioFocusInfo> getFocusStack() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(200, _data, _reply, 0);
                    _reply.readException();
                    List<AudioFocusInfo> _result = _reply.createTypedArrayList(AudioFocusInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean sendFocusLoss(AudioFocusInfo focusLoser, IAudioPolicyCallback apcb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(focusLoser, 0);
                    _data.writeStrongInterface(apcb);
                    this.mRemote.transact(201, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void addAssistantServicesUids(int[] assistantUID) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(assistantUID);
                    this.mRemote.transact(202, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void removeAssistantServicesUids(int[] assistantUID) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(assistantUID);
                    this.mRemote.transact(203, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setActiveAssistantServiceUids(int[] activeUids) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(activeUids);
                    this.mRemote.transact(204, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int[] getAssistantServicesUids() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(205, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int[] getActiveAssistantServiceUids() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(206, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerDeviceVolumeDispatcherForAbsoluteVolume(boolean register, IAudioDeviceVolumeDispatcher cb, String packageName, AudioDeviceAttributes device, List<VolumeInfo> volumes, boolean handlesvolumeAdjustment) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(register);
                    _data.writeStrongInterface(cb);
                    _data.writeString(packageName);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedList(volumes);
                    _data.writeBoolean(handlesvolumeAdjustment);
                    this.mRemote.transact(207, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.media.IAudioService
            public String getHalVersion() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(208, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 207;
        }
    }
}
