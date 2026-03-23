package com.coloros.ocs.camera.impl;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.coloros.ocs.camera.CameraDeviceInterface;
import com.coloros.ocs.camera.callback.CameraFlashCallbackAdapter;
import com.coloros.ocs.camera.callback.CameraPictureCallbackAdapter;
import com.coloros.ocs.camera.callback.CameraPreviewCallbackAdapter;
import com.coloros.ocs.camera.callback.CameraRecordingCallbackAdapter;
import com.coloros.ocs.camera.info.CameraDeviceInfoInterface;
import com.coloros.ocs.camera.info.DefaultCameraDeviceInfo;
import com.coloros.ocs.camera.parameter.SdkCameraDeviceConfig;
import com.coloros.ocs.camera.surface.SurfaceWrapper;
import com.coloros.ocs.camera.util.Util;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes.dex */
public class DefaultCameraDevice implements CameraDeviceInterface {
    private com.oplus.ocs.camera.appinterface.CameraDeviceInterface mCameraDeviceInterface;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultCameraDevice(com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface) {
        this.mCameraDeviceInterface = null;
        this.mCameraDeviceInterface = cameraDeviceInterface;
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public CameraDeviceInfoInterface getCameraDeviceInfo(String str, String str2) {
        if (this.mCameraDeviceInterface != null) {
            return new DefaultCameraDeviceInfo(this.mCameraDeviceInterface.getCameraDeviceInfo(str, str2));
        }
        return null;
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void configure(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.configure(convertConfig(sdkCameraDeviceConfig));
        }
    }

    private com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig convertConfig(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        SdkCameraDeviceConfig.Builder builder = new SdkCameraDeviceConfig.Builder();
        builder.setModeName(sdkCameraDeviceConfig.getModeName());
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!sdkCameraDeviceConfig.getPreviewSurfaces().isEmpty()) {
            for (SurfaceWrapper surfaceWrapper : sdkCameraDeviceConfig.getPreviewSurfaces()) {
                arrayList.add(surfaceWrapper.getSurfaceWrapper());
            }
        }
        if (!sdkCameraDeviceConfig.getPictureSurfaces().isEmpty()) {
            for (SurfaceWrapper surfaceWrapper2 : sdkCameraDeviceConfig.getPictureSurfaces()) {
                arrayList2.add(surfaceWrapper2.getSurfaceWrapper());
            }
        }
        builder.setPreviewSurfaces(arrayList);
        builder.setPictureSurfaces(arrayList2);
        if (sdkCameraDeviceConfig.getVideoSurface() != null) {
            builder.setVideoSurface(sdkCameraDeviceConfig.getVideoSurface().getSurfaceWrapper());
        }
        if (sdkCameraDeviceConfig.getConfigureParameter() != null && sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys() != null) {
            for (Parameter.Key<?> key : sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys()) {
                builder.setParameter(Util.convertOldParameterKeyName(key.getName()), sdkCameraDeviceConfig.getConfigureParameter().get(key));
            }
        }
        return builder.build();
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void setParameter(@NonNull String str, Object obj) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.setParameter(Util.convertOldParameterKeyName(str), obj);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void setParameter(String str, @NonNull String str2, Object obj) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.setParameter(str, Util.convertOldParameterKeyName(str2), obj);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public <T> void setParameter(@NonNull CaptureRequest.Key<T> key, T t) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.setParameter((CaptureRequest.Key<CaptureRequest.Key<T>>) key, (CaptureRequest.Key<T>) t);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public <T> void setParameter(String str, @NonNull CaptureRequest.Key<T> key, T t) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.setParameter(str, (CaptureRequest.Key<CaptureRequest.Key<T>>) key, (CaptureRequest.Key<T>) t);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void startPreview(Map<String, Surface> map, CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter, Handler handler) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.startPreview(map, new DefaultCameraPreviewCallback(cameraPreviewCallbackAdapter), handler);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void stopPreview() {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.stopPreview();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void stopPreview(boolean z) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.stopPreview(z);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void closeSession() {
        this.mCameraDeviceInterface.closeSession();
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public Surface getVideoSurface() {
        if (this.mCameraDeviceInterface != null) {
            return this.mCameraDeviceInterface.getVideoSurface();
        }
        return null;
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void startRecording(CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter, Handler handler) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.startRecording(new DefaultCameraRecordingCallback(cameraRecordingCallbackAdapter), handler);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void resumeRecording() {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.resumeRecording();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void pauseRecording() {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.pauseRecording();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void stopRecording() {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.stopRecording();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void takePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.takePicture(new DefaultPictureCallback(cameraPictureCallbackAdapter), handler);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void abortCaptures() {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.abortCaptures();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void close(boolean z) {
        close(z, true);
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void close(boolean z, boolean z2) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.close(z, z2);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void registerFlashCallback(@NonNull CameraFlashCallbackAdapter cameraFlashCallbackAdapter, @Nullable Handler handler) {
        if (this.mCameraDeviceInterface != null) {
            this.mCameraDeviceInterface.registerFlashCallback(new DefaultCameraFlashCallback(cameraFlashCallbackAdapter), handler);
        }
    }
}
