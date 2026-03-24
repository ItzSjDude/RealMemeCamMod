package com.coloros.ocs.camera.impl;

import com.oplus.ocs.camera.appinterface.CameraFlashCallbackAdapter;
import java.util.List;
/* loaded from: classes.dex */
public class DefaultCameraFlashCallback extends CameraFlashCallbackAdapter {
    private com.coloros.ocs.camera.callback.CameraFlashCallbackAdapter mCameraFlashCallback;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultCameraFlashCallback(com.coloros.ocs.camera.callback.CameraFlashCallbackAdapter cameraFlashCallbackAdapter) {
        this.mCameraFlashCallback = cameraFlashCallbackAdapter;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraFlashCallbackAdapter
    public void onFlashModeSupportListChanged(List<String> list) {
        this.mCameraFlashCallback.onFlashModeSupportListChanged(list);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraFlashCallbackAdapter
    public void onFlashModeChanged(String str) {
        this.mCameraFlashCallback.onFlashModeChanged(str);
    }
}
