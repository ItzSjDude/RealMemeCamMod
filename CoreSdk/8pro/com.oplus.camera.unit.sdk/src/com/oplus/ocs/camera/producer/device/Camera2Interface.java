package com.oplus.ocs.camera.producer.device;

import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.os.Handler;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.ConfigInfoPkg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface Camera2Interface {
    void abortCaptures();

    void beforeCloseSession();

    void closeCameraDevice();

    void closeOldSession();

    void createNewSession(CameraSessionEntity cameraSessionEntity, Parameter parameter, Handler handler) throws Exception;

    ConfigInfoPkg getConfigInfo();

    int getLogicId();

    CameraSessionEntity getSessionEntity();

    boolean getSupportWrapper(String str, String str2, int i);

    void openCameraDevice(int i, Handler handler) throws CameraAccessException, SecurityException;

    void pauseRecording(Parameter parameter, Handler handler);

    void reprocessImage(Image image, TotalCaptureResult totalCaptureResult, Rect rect, CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler);

    void resumeRecording(Parameter parameter, Handler handler);

    void setCallback(CameraDevice.StateCallback stateCallback, CameraCaptureSession.StateCallback stateCallback2, CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter, CameraPictureCallbackAdapter cameraPictureCallbackAdapter, CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter);

    boolean startPreview(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler);

    void startRecording(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler);

    void stopPreview(boolean z);

    void stopRecording(Parameter parameter, Handler handler);

    void takePicture(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler);

    void videoSnapshot(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler);
}
