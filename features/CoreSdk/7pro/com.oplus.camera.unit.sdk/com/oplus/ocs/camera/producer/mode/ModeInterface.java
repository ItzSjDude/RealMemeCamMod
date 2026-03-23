package com.oplus.ocs.camera.producer.mode;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfaceControlInterface;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.SensorManagerInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
/* loaded from: classes.dex */
public interface ModeInterface extends SurfaceControlInterface, SensorManagerInterface {
    CameraSessionEntity configure(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig, String str);

    CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder);

    CameraDeviceInfoInterface getCameraDeviceInfo(String str);

    void initialize();

    boolean isAllowedToTakePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler, CameraRequestTag cameraRequestTag);

    boolean isNeedAPSProcess();

    boolean isSupportVideoSnapShot(String str);

    boolean isVideoSnapShotByAps(String str);

    boolean needDelayCloseForCapture();

    boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult);

    boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult);

    void unInit();

    void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag);

    void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag);
}
