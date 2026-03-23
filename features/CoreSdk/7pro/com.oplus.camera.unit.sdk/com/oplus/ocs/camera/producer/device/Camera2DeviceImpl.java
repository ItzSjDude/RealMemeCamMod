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
        this.mCameraStateMachineInterface = null;
        this.mCameraStateMachineInterface = camera2StateMachineInterface;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public String getCameraType() {
        return this.mCameraStateMachineInterface.getCameraName();
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void close(boolean z) {
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.closeCameraAuto(z);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void configure(CameraSessionEntity cameraSessionEntity, Parameter parameter) {
        CameraUnitLog.d(TAG, Parameter.ParameterStage.CONFIGURE);
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.createSessionAuto(cameraSessionEntity, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public boolean isConfigured() {
        if (this.mCameraStateMachineInterface != null) {
            return this.mCameraStateMachineInterface.isConfigured();
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public boolean isClosed() {
        if (this.mCameraStateMachineInterface != null) {
            return this.mCameraStateMachineInterface.isClosed();
        }
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void startPreview(CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "startPreview");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.startPreview(cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void stopPreview(boolean z) {
        CameraUnitLog.d(TAG, "stopPreview");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.stopPreview(z);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void closeSession() {
        CameraUnitLog.d(TAG, "closeSession");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.closeOldSession();
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void startRecording(CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "startRecording");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.startRecording(cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void resumeRecording(Parameter parameter) {
        CameraUnitLog.d(TAG, "resumeRecording");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.resumeRecording(parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void pauseRecording(Parameter parameter) {
        CameraUnitLog.d(TAG, "pauseRecording");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.pauseRecording(parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void stopRecording(Parameter parameter) {
        CameraUnitLog.d(TAG, "stopRecording");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.stopRecording(parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void videoSnapshot(CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "videoSnapshot");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.videoSnapshot(cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void takePicture(CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "takePicture");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.takePicture(cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void abortCaptures() {
        CameraUnitLog.d(TAG, "abortCaptures");
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.abortCaptures();
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public void reprocessImage(Image image, TotalCaptureResult totalCaptureResult, Rect rect, CameraRequestTag cameraRequestTag, Parameter parameter) {
        CameraUnitLog.d(TAG, "reprocessImage, image: " + image);
        if (this.mCameraStateMachineInterface != null) {
            this.mCameraStateMachineInterface.reprocessImage(image, totalCaptureResult, rect, cameraRequestTag, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2DeviceInterface
    public boolean getSupportWrapper(String str, String str2, int i) {
        if (this.mCameraStateMachineInterface != null) {
            return this.mCameraStateMachineInterface.getSupportWrapper(str, str2, i);
        }
        return false;
    }
}
