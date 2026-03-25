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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DefaultCameraDevice implements CameraDeviceInterface {
    private com.oplus.ocs.camera.appinterface.CameraDeviceInterface mCameraDeviceInterface;

    DefaultCameraDevice(com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface) {
        this.mCameraDeviceInterface = cameraDeviceInterface;
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public CameraDeviceInfoInterface getCameraDeviceInfo(String str, String str2) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            return new DefaultCameraDeviceInfo(cameraDeviceInterface.getCameraDeviceInfo(str, str2));
        }
        return null;
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void configure(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.configure(convertConfig(sdkCameraDeviceConfig));
        }
    }

    private com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig convertConfig(
            @NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig.Builder builder = new com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig.Builder();
        builder.setModeName(sdkCameraDeviceConfig.getModeName());
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!sdkCameraDeviceConfig.getPreviewSurfaces().isEmpty()) {
            Iterator<SurfaceWrapper> it = sdkCameraDeviceConfig.getPreviewSurfaces().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getSurfaceWrapper());
            }
        }
        if (!sdkCameraDeviceConfig.getPictureSurfaces().isEmpty()) {
            Iterator<SurfaceWrapper> it2 = sdkCameraDeviceConfig.getPictureSurfaces().iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().getSurfaceWrapper());
            }
        }
        builder.setPreviewSurfaces(arrayList);
        builder.setPictureSurfaces(arrayList2);
        if (sdkCameraDeviceConfig.getVideoSurface() != null) {
            builder.setVideoSurface(sdkCameraDeviceConfig.getVideoSurface().getSurfaceWrapper());
        }
        if (sdkCameraDeviceConfig.getConfigureParameter() != null
                && sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys() != null) {
            for (Parameter.Key<?> key : sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys()) {
                builder.setParameter(Util.convertOldParameterKeyName(key.getName()),
                        sdkCameraDeviceConfig.getConfigureParameter().get(key));
            }
        }
        return builder.build();
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void setParameter(@NonNull String str, Object obj) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.setParameter(Util.convertOldParameterKeyName(str), obj);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void setParameter(String str, @NonNull String str2, Object obj) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.setParameter(str, Util.convertOldParameterKeyName(str2), obj);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public <T> void setParameter(@NonNull CaptureRequest.Key<T> key, T t) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.setParameter(key, t);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public <T> void setParameter(String str, @NonNull CaptureRequest.Key<T> key, T t) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.setParameter(str, key, t);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void startPreview(Map<String, Surface> map, CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter,
            Handler handler) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.startPreview(map, new DefaultCameraPreviewCallback(cameraPreviewCallbackAdapter),
                    handler);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void stopPreview() {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.stopPreview();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void stopPreview(boolean z) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.stopPreview(z);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void closeSession() {
        this.mCameraDeviceInterface.closeSession();
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public Surface getVideoSurface() {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            return cameraDeviceInterface.getVideoSurface();
        }
        return null;
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void startRecording(CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter, Handler handler) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.startRecording(new DefaultCameraRecordingCallback(cameraRecordingCallbackAdapter),
                    handler);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void resumeRecording() {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.resumeRecording();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void pauseRecording() {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.pauseRecording();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void stopRecording() {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.stopRecording();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void takePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.takePicture(new DefaultPictureCallback(cameraPictureCallbackAdapter), handler);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void abortCaptures() {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.abortCaptures();
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void close(boolean z) {
        close(z, true);
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void close(boolean z, boolean z2) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.close(z, z2);
        }
    }

    @Override // com.coloros.ocs.camera.CameraDeviceInterface
    public void registerFlashCallback(@NonNull CameraFlashCallbackAdapter cameraFlashCallbackAdapter,
            @Nullable Handler handler) {
        com.oplus.ocs.camera.appinterface.CameraDeviceInterface cameraDeviceInterface = this.mCameraDeviceInterface;
        if (cameraDeviceInterface != null) {
            cameraDeviceInterface.registerFlashCallback(new DefaultCameraFlashCallback(cameraFlashCallbackAdapter),
                    handler);
        }
    }
}
