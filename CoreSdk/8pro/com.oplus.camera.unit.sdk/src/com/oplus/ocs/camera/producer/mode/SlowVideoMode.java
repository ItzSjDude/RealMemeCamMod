package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Range;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfacePool;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;

/* JADX INFO: loaded from: classes.dex */
public class SlowVideoMode extends VideoMode {
    private static final String TAG = "SlowVideoMode";
    private boolean mbIntelligentHighFrameSelected = false;

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected int getImageReaderMaxImages(String str) {
        return 16;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "slowvideo_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    boolean needPreviewMeta(String str) {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(),
                new ZoomHelper(str).getZoomRatioList(false, "rear_sat".equals(str), false, true, cameraDeviceInfoImpl));
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode
    protected boolean isPreviewProcessByAps(Parameter parameter, String str) {
        return ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SLOW_VIDEO_PREVIEW_PROCESS_BY_APS,
                true)).booleanValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2,
            PreviewParameter.Builder builder) {
        CameraRequestTag cameraRequestTagCreateRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        cameraRequestTagCreateRequestTag.mbNormalVideoHFR = false;
        return cameraRequestTagCreateRequestTag;
    }

    private int getFpsValueFromString(String str) {
        if ("video_120fps".equals(str)) {
            return 120;
        }
        if ("video_240fps".equals(str)) {
            return 240;
        }
        if ("video_480fps".equals(str)) {
            return 480;
        }
        return "video_960fps".equals(str) ? 960 : 0;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        str.hashCode();
        if (str.equals(Parameter.ParameterStage.CONFIGURE)) {
            if (this.mConfigMap.get(str2) != null) {
                builder.set(ConfigureParameter.KEY_MTK_SMVR_FEATURE_SMVR_MODES,
                        CameraCharacteristicsHelper.getAvailableSmvrModes(str2,
                                this.mConfigMap.get(str2).getVideoSurface().getAppSurfaceSize().getHeight(),
                                getFpsValueFromString((String) builder.get(ConfigureParameter.VIDEO_FPS))));
            }
            builder.set(ConfigureParameter.KEY_SESSION_REQUEST_FAST_LAUNCH, new int[] { 0 });
        } else if (str.equals(Parameter.ParameterStage.START_PREVIEW)
                && !builder.containsKey(PreviewParameter.KEY_FOCUS_MODE)) {
            builder.set(PreviewParameter.KEY_FOCUS_MODE, 3);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, ApsRequestTag apsRequestTag) {
        super.onConfigure(cameraSessionEntity, sdkCameraDeviceConfig, str, apsRequestTag);
        Parameter configureParameter = getConfigureParameter(str);
        boolean zEquals = "on"
                .equals(configureParameter.get(ConfigureParameter.KEY_SLOW_VIDEO_INTELLIGENT_HIGH_FRAME_ENABLE));
        this.mbIntelligentHighFrameSelected = zEquals;
        if (zEquals) {
            if (SurfacePool.getInstance().getVideoSurface() == null) {
                SurfacePool.getInstance().createVideoSurface();
            }
            apsRequestTag.mSlowVideoHfrSurface = SurfacePool.getInstance().getVideoSurface();
            String str2 = (String) configureParameter.get(ConfigureParameter.VIDEO_FPS);
            if ("video_120fps".equals(str2)) {
                apsRequestTag.mSlowVideoHfrFps = 120;
                return;
            }
            if ("video_240fps".equals(str2)) {
                apsRequestTag.mSlowVideoHfrFps = 240;
                return;
            } else if ("video_480fps".equals(str2)) {
                apsRequestTag.mSlowVideoHfrFps = 120;
                return;
            } else {
                if ("video_960fps".equals(str2)) {
                    apsRequestTag.mSlowVideoHfrFps = 240;
                    return;
                }
                return;
            }
        }
        apsRequestTag.mSlowVideoHfrSurface = null;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return this.mbIntelligentHighFrameSelected ? "hfr_video_case" : super.getSurfaceUseCase(str, z);
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Long getVideoFrameReaderUsage(String str) {
        return 65536L;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public void updateFpsRange(Parameter parameter, PreviewParameter.Builder builder, String str) {
        if (!super.updateFpsRangeByVideoType(parameter, builder, str) && this.mbIntelligentHighFrameSelected) {
            int i = this.mCurrentFps;
            if (this.mCurrentFps == 480) {
                i = 120;
            } else if (this.mCurrentFps == 960) {
                i = 240;
            }
            CameraUnitLog.d(TAG, "updateFpsRangeByVideoType, mCurrentFps: " + this.mCurrentFps + ", halFps: " + i);
            builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, new Range(Integer.valueOf(i), Integer.valueOf(i)));
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.common.util.SensorManagerInterface
    public int getSensorType() {
        return this.mbIntelligentHighFrameSelected ? 4 : 0;
    }
}
