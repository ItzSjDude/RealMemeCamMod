package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import java.util.Collections;

public class FastVideoMode extends VideoMode {
    private static final int HYPER_LAPSE_RATE = 3;
    private static final String TAG = "FastVideoMode";

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "fastvideo_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode
    protected boolean isPreviewProcessByAps(Parameter parameter, String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    boolean needPreviewMeta(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        Parameter configureParameter = getConfigureParameter(str);
        if (configureParameter == null) {
            return false;
        }
        if (configureParameter.containCustomKey(ConfigureParameter.HYPER_LAPSE)) {
            return true;
        }
        return super.useOplusCameraCase(str);
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, ApsRequestTag apsRequestTag) {
        super.onConfigure(cameraSessionEntity, sdkCameraDeviceConfig, str, apsRequestTag);
        if (isHyperLapseOpen(str)) {
            sdkCameraDeviceConfig.updateHalVideoSize(getCameraDeviceInfo(str).getVideoMappingSizesFromConfig(str,
                    Collections.singletonMap(ConfigureParameter.HYPER_LAPSE.getName(), "hyper_lapse")));
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getFeatureName(String str) {
        String str2 = (String) getConfigureParameter(str).get(ConfigureParameter.HYPER_LAPSE);
        return ("off".equals(str2) || "hyper_lapse".equals(str2)) ? str2 : super.getFeatureName(str);
    }

    private boolean isHyperLapseOpen(String str) {
        return "hyper_lapse".equals((String) getConfigureParameter(str).get(ConfigureParameter.HYPER_LAPSE));
    }

    private int getHyperLapseRate(String str) {
        return isHyperLapseOpen(str) ? 3 : 0;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2,
            PreviewParameter.Builder builder) {
        CameraRequestTag cameraRequestTagCreateRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        cameraRequestTagCreateRequestTag.mHyperLapseRate = getHyperLapseRate(str);
        cameraRequestTagCreateRequestTag.mbVideoRecordingPaused = false;
        cameraRequestTagCreateRequestTag.isHyperLapseOpen = isHyperLapseOpen(str);
        return cameraRequestTagCreateRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return isHyperLapseOpen(str) ? "hyper_lapse_case" : super.getSurfaceUseCase(str, z);
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected int getImageReaderMaxImages(String str) {
        return isHyperLapseOpen(str) ? 40 : 20;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Long getVideoFrameReaderUsage(String str) {
        if (isHyperLapseOpen(str)) {
            return 131L;
        }
        return 128L;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.STOP_RECORDING.equals(str)) {
            checkAfMode(builder);
        }
    }

    private void checkAfMode(PreviewParameter.Builder builder) {
        if (builder != null && builder.containCustomKey(PreviewParameter.KEY_FOCUS_MODE)
                && 2 == ((Integer) builder.get(PreviewParameter.KEY_FOCUS_MODE)).intValue()) {
            builder.remove(CaptureRequest.CONTROL_AF_MODE);
        }
    }
}
