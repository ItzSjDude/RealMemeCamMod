package com.oplus.ocs.camera.producer.device;

import android.graphics.Rect;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
/* loaded from: classes.dex */
final class Camera2DeviceImpl implements Camera2DeviceInterface {
    private static final String TAG = "Camera2DeviceImpl";
    private Camera2StateMachineInterface mCameraStateMachineInterface;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Camera2DeviceImpl(Camera2StateMachineInterface camera2StateMachineInterface) {
        this.mCameraStateMachineInterface = camera2StateMachineInterface;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public String getCameraType() {
        return this.mCameraStateMachineInterface.getCameraName();
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void close(boolean z) {
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.closeCameraAuto(z);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void configure(CameraSessionEntity cameraSessionEntity, Parameter parameter) {
        CameraUnitLog.d(TAG, Parameter.ParameterStage.CONFIGURE);
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.createSessionAuto(cameraSessionEntity, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public boolean isConfigured() {
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            return camera2StateMachineInterface.isConfigured();
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public boolean isClosed() {
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            return camera2StateMachineInterface.isClosed();
        }
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void startPreview(CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "startPreview");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.startPreview(cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void stopPreview(boolean z) {
        CameraUnitLog.d(TAG, "stopPreview");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.stopPreview(z);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void closeSession() {
        CameraUnitLog.d(TAG, "closeSession");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.closeOldSession();
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void startRecording(CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "startRecording");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.startRecording(cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void resumeRecording(Parameter parameter) {
        CameraUnitLog.d(TAG, "resumeRecording");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.resumeRecording(parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void pauseRecording(Parameter parameter) {
        CameraUnitLog.d(TAG, "pauseRecording");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.pauseRecording(parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void stopRecording(Parameter parameter) {
        CameraUnitLog.d(TAG, "stopRecording");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.stopRecording(parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void videoSnapshot(CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "videoSnapshot");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.videoSnapshot(cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void takePicture(CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "takePicture");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.takePicture(cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void abortCaptures() {
        CameraUnitLog.d(TAG, "abortCaptures");
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.abortCaptures();
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void reprocessImage(Image image, TotalCaptureResult totalCaptureResult, Rect rect, CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "reprocessImage, image: " + image);
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            camera2StateMachineInterface.reprocessImage(image, totalCaptureResult, rect, cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public boolean getSupportWrapper(String str, String str2, int i) {
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachineInterface;
        if (camera2StateMachineInterface != null) {
            return camera2StateMachineInterface.getSupportWrapper(str, str2, i);
        }
        return false;
    }
}
