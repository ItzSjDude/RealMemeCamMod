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
        this.mCameraStateCallbackAdapter = cameraStateCallbackAdapter;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraOpened(CameraDeviceInterface cameraDeviceInterface) {
        super.onCameraOpened(cameraDeviceInterface);
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onCameraOpened(new DefaultCameraDevice(cameraDeviceInterface));
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraOpened(Camera2DeviceInterface camera2DeviceInterface) {
        super.onCameraOpened(camera2DeviceInterface);
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onCameraOpened(camera2DeviceInterface);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraClosed() {
        super.onCameraClosed();
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onCameraClosed();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraDisconnected() {
        super.onCameraDisconnected();
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onCameraDisconnected();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCameraError(ErrorResult errorResult) {
        super.onCameraError(errorResult);
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onCameraError(new com.coloros.ocs.camera.util.ErrorResult(errorResult));
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSessionConfigured(ConfigInfoPkg configInfoPkg) {
        super.onSessionConfigured(configInfoPkg);
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onSessionConfigured(configInfoPkg);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSessionConfigured() {
        super.onSessionConfigured();
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onSessionConfigured();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSessionConfigureFail(ErrorResult errorResult) {
        super.onSessionConfigureFail(errorResult);
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onSessionConfigureFail(new com.coloros.ocs.camera.util.ErrorResult(errorResult));
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onReady() {
        super.onReady();
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onReady();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onActive() {
        super.onActive();
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onActive();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onCaptureQueueEmpty() {
        super.onCaptureQueueEmpty();
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onCaptureQueueEmpty();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSurfacePrepared(@NonNull Surface surface) {
        super.onSurfacePrepared(surface);
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onSurfacePrepared(surface);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
    public void onSessionClosed() {
        super.onSessionClosed();
        com.coloros.ocs.camera.callback.CameraStateCallbackAdapter cameraStateCallbackAdapter = this.mCameraStateCallbackAdapter;
        if (cameraStateCallbackAdapter != null) {
            cameraStateCallbackAdapter.onSessionClosed();
        }
    }
}
