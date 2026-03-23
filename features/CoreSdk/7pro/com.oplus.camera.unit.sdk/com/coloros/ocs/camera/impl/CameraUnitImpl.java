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
        this.mCameraUnitInterface = null;
        this.mCameraUnitInterface = cameraUnitInterface;
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public void initialize(@NonNull Context context) {
        if (this.mCameraUnitInterface != null) {
            this.mCameraUnitInterface.initialize(context);
        }
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public boolean isAuthedClient(@NonNull Context context) {
        return this.mCameraUnitInterface != null && this.mCameraUnitInterface.isAuthedClient(context);
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public void release() {
        if (this.mCameraUnitInterface != null) {
            this.mCameraUnitInterface.release();
        }
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public Map<String, List<String>> getAllSupportCameraMode() {
        if (this.mCameraUnitInterface != null) {
            return this.mCameraUnitInterface.getAllSupportCameraMode();
        }
        return null;
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public void openCamera(@NonNull String str, @NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, @NonNull Handler handler) {
        if (this.mCameraUnitInterface != null) {
            this.mCameraUnitInterface.openCamera(str, new DefaultCameraStateCallback(cameraStateCallbackAdapter), handler);
        }
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public boolean checkAuthenticationPermission(@NonNull Context context, @NonNull String str, int i) {
        return this.mCameraUnitInterface != null && this.mCameraUnitInterface.checkAuthenticationPermission(context, str, i);
    }

    @Override // com.coloros.ocs.camera.CameraUnitInterface
    public CameraDeviceInfoInterface getCameraDeviceInfo(@NonNull String str, @NonNull String str2) {
        if (this.mCameraUnitInterface != null) {
            return new DefaultCameraDeviceInfo(this.mCameraUnitInterface.getCameraDeviceInfo(str, str2));
        }
        return null;
    }
}
