package com.coloros.ocs.camera.callback;

import android.view.Surface;
import androidx.annotation.NonNull;
import com.coloros.ocs.camera.CameraDeviceInterface;
import com.coloros.ocs.camera.util.ErrorResult;
import com.oplus.ocs.camera.common.util.ConfigInfoPkg;
import com.oplus.ocs.camera.producer.device.Camera2DeviceInterface;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraStateCallbackAdapter {
    public void onActive() {
    }

    public void onCameraClosed() {
    }

    public void onCameraDisconnected() {
    }

    public void onCameraError(ErrorResult errorResult) {
    }

    public void onCameraOpened(CameraDeviceInterface cameraDeviceInterface) {
    }

    public void onCameraOpened(Camera2DeviceInterface camera2DeviceInterface) {
    }

    public void onCaptureQueueEmpty() {
    }

    public void onReady() {
    }

    public void onSessionClosed() {
    }

    public void onSessionConfigureFail(ErrorResult errorResult) {
    }

    public void onSessionConfigured() {
    }

    public void onSurfacePrepared(@NonNull Surface surface) {
    }

    public void onSessionConfigured(ConfigInfoPkg configInfoPkg) {
        onSessionConfigured();
    }
}
