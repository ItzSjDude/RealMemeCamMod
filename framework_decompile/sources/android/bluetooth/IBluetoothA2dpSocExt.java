package android.bluetooth;

import android.content.AttributionSource;

/* loaded from: classes.dex */
public interface IBluetoothA2dpSocExt {
    default boolean isNextAutoSwtichActiveDevice(IBluetoothA2dp service, AttributionSource attributionSource) {
        return false;
    }
}
