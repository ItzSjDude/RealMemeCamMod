package android.media;

import android.content.Context;

/* loaded from: classes2.dex */
public interface IAudioManagerExt {
    default boolean getDebugLog() {
        return false;
    }

    default boolean adjustStreamVolumePermission(Context context, int streamType, int direction) {
        return false;
    }

    default int oplusGetStreamVolume(Context context, int streamType) {
        return -1;
    }

    default int oplusGetStreamMaxVolume(Context context, int streamType) {
        return -1;
    }

    default boolean setRingerModePermission(Context context, int ringerMode) {
        return false;
    }

    default boolean setStreamVolumePermission(Context context, int streamType) {
        return false;
    }

    default boolean setBluetoothScoOnPermission() {
        return false;
    }

    default boolean setMicrophoneMutePermission(Context context) {
        return false;
    }

    default boolean setParametersPermission(Context context, String keyValuePairs) {
        return false;
    }

    default boolean setParametersForCommonExtends(String keyValuePairs) {
        return false;
    }

    default String getParametersForCommonExtends(String keys) {
        return null;
    }

    default void setLogOn() {
    }

    default void setLogOff() {
    }

    default void setLogDump() {
    }
}
