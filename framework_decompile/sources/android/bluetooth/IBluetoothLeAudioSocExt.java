package android.bluetooth;

import android.content.AttributionSource;

/* loaded from: classes.dex */
public interface IBluetoothLeAudioSocExt {
    default boolean isNextAutoSwtichActiveDevice(IBluetoothLeAudio service, AttributionSource attributionSource) {
        return false;
    }
}
