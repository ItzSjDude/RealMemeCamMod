package com.oplus.ocs.camera.producer.device;

import android.graphics.Rect;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.CameraRequestTag;

/* JADX INFO: loaded from: classes.dex */
public interface Camera2StateMachineInterface {
    void abortCaptures();

    void closeCameraAuto(boolean z);

    void closeOldSession();

    void createSessionAuto(CameraSessionEntity cameraSessionEntity, Parameter parameter);

    String getCameraName();

    boolean getSupportWrapper(String str, String str2, int i);

    boolean isClosed();

    boolean isConfigured();

    void openCameraAuto(MsgPackage msgPackage);

    void pauseRecording(Parameter parameter);

    void release();

    void reprocessImage(Image image, TotalCaptureResult totalCaptureResult, Rect rect, CameraRequestTag cameraRequestTag, Parameter parameter);

    void resumeRecording(Parameter parameter);

    void startPreview(CameraRequestTag cameraRequestTag, Parameter parameter);

    void startRecording(CameraRequestTag cameraRequestTag, Parameter parameter);

    void stopPreview(boolean z);

    void stopRecording(Parameter parameter);

    void takePicture(CameraRequestTag cameraRequestTag, Parameter parameter);

    void videoSnapshot(CameraRequestTag cameraRequestTag, Parameter parameter);
}
