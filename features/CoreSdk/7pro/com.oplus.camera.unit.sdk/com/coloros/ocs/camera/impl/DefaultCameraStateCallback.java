package com.coloros.ocs.camera.impl;

import android.view.Surface;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.appinterface.CameraDeviceInterface;
import com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter;
import com.oplus.ocs.camera.common.util.ConfigInfoPkg;
import com.oplus.ocs.camera.common.util.ErrorResult;
import com.oplus.ocs.camera.producer.device.Camera2DeviceInterface;
/* loaded from: classes.dex */
public final class DefaultCameraStateCallback extends CameraStateCallbackAdapter {
    private com.coloros.ocs.camera.callback.CameraStateCallbackAdapter mCameraStateCallbackAdapter;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultCameraStateCallback(com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter) {
        this.mCameraStateCallbackAdapter = null;
        this.mCameraStateCallbackAdapter = cameraStateCallbackAdapter;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraOpened(CameraDeviceInterface cameraDeviceInterface) {
        super.onCameraOpened(cameraDeviceInterface);
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onCameraOpened(new DefaultCameraDevice(cameraDeviceInterface));
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraOpened(Camera2DeviceInterface camera2DeviceInterface) {
        super.onCameraOpened(camera2DeviceInterface);
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onCameraOpened(camera2DeviceInterface);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraClosed() {
        super.onCameraClosed();
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onCameraClosed();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraDisconnected() {
        super.onCameraDisconnected();
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onCameraDisconnected();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraError(ErrorResult errorResult) {
        super.onCameraError(errorResult);
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onCameraError(new com.coloros.ocs.camera.util.ErrorResult(errorResult));
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSessionConfigured(ConfigInfoPkg configInfoPkg) {
        super.onSessionConfigured(configInfoPkg);
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onSessionConfigured(configInfoPkg);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSessionConfigured() {
        super.onSessionConfigured();
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onSessionConfigured();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSessionConfigureFail(ErrorResult errorResult) {
        super.onSessionConfigureFail(errorResult);
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onSessionConfigureFail(new com.coloros.ocs.camera.util.ErrorResult(errorResult));
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onReady() {
        super.onReady();
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onReady();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onActive() {
        super.onActive();
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onActive();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCaptureQueueEmpty() {
        super.onCaptureQueueEmpty();
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onCaptureQueueEmpty();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSurfacePrepared(@NonNull Surface surface) {
        super.onSurfacePrepared(surface);
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onSurfacePrepared(surface);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSessionClosed() {
        super.onSessionClosed();
        if (this.mCameraStateCallbackAdapter != null) {
            this.mCameraStateCallbackAdapter.onSessionClosed();
        }
    }
}
