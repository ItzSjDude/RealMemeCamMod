package com.coloros.ocs.camera.impl;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.NonNull;
import com.coloros.ocs.camera.CameraUnitInterface;
import com.coloros.ocs.camera.callback.CameraStateCallbackAdapter;
import com.coloros.ocs.camera.info.CameraDeviceInfoInterface;
import com.coloros.ocs.camera.info.DefaultCameraDeviceInfo;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class CameraUnitImpl implements CameraUnitInterface {
    private com.oplus.ocs.camera.appinterface.CameraUnitInterface mCameraUnitInterface;

    public CameraUnitImpl() {
        this.mCameraUnitInterface = null;
        this.mCameraUnitInterface = new com.oplus.ocs.camera.CameraUnitImpl();
    }

    public CameraUnitImpl(com.oplus.ocs.camera.appinterface.CameraUnitInterface cameraUnitInterface) {
        this.mCameraUnitInterface = cameraUnitInterface;
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public void initialize(@NonNull Context context) {
        com.oplus.ocs.camera.appinterface.CameraUnitInterface cameraUnitInterface = this.mCameraUnitInterface;
        if (cameraUnitInterface != null) {
            cameraUnitInterface.initialize(context);
        }
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public boolean isAuthedClient(@NonNull Context context) {
        com.oplus.ocs.camera.appinterface.CameraUnitInterface cameraUnitInterface = this.mCameraUnitInterface;
        return cameraUnitInterface != null && cameraUnitInterface.isAuthedClient(context);
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public void release() {
        com.oplus.ocs.camera.appinterface.CameraUnitInterface cameraUnitInterface = this.mCameraUnitInterface;
        if (cameraUnitInterface != null) {
            cameraUnitInterface.release();
        }
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public Map<String, List<String>> getAllSupportCameraMode() {
        com.oplus.ocs.camera.appinterface.CameraUnitInterface cameraUnitInterface = this.mCameraUnitInterface;
        if (cameraUnitInterface != null) {
            return cameraUnitInterface.getAllSupportCameraMode();
        }
        return null;
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public void openCamera(@NonNull String str, @NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, @NonNull Handler handler) {
        com.oplus.ocs.camera.appinterface.CameraUnitInterface cameraUnitInterface = this.mCameraUnitInterface;
        if (cameraUnitInterface != null) {
            cameraUnitInterface.openCamera(str, new DefaultCameraStateCallback(cameraStateCallbackAdapter), handler);
        }
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public boolean checkAuthenticationPermission(@NonNull Context context, @NonNull String str, int i) {
        com.oplus.ocs.camera.appinterface.CameraUnitInterface cameraUnitInterface = this.mCameraUnitInterface;
        return cameraUnitInterface != null && cameraUnitInterface.checkAuthenticationPermission(context, str, i);
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public CameraDeviceInfoInterface getCameraDeviceInfo(@NonNull String str, @NonNull String str2) {
        com.oplus.ocs.camera.appinterface.CameraUnitInterface cameraUnitInterface = this.mCameraUnitInterface;
        if (cameraUnitInterface != null) {
            return new DefaultCameraDeviceInfo(cameraUnitInterface.getCameraDeviceInfo(str, str2));
        }
        return null;
    }
}
