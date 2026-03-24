package com.oplus.ocs.camera.producer.mode;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Pair;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfacePool;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.util.ArrayList;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class MovieMode extends VideoMode {
    private static final double RATIO_VALUE_7_3 = 2.3333333333333335d;
    private static final String TAG = "MovieMode";
    private Size mMovieSize = null;

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "movie_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode
    protected boolean isPreviewProcessByAps(Parameter parameter, String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode
    protected boolean needPrepareVideoSurface() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public String getFeatureName(String str) {
        String str2 = (String) getConfigureParameter(str).get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
        CameraUnitLog.i(TAG, "getFeatureName, cameraType: " + str + ", stabilizationValue: " + str2);
        return "video_stabilization".equals(str2) ? "video_stabilization" : "movie_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected Long getVideoFrameReaderUsage(String str) {
        return 128L;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public int getSurfaceFormatBySurfaceType(String str, String str2, String str3) {
        if (("preview".equals(str) || "video_recorder".equals(str) || "video".equals(str)) && isVideo10BitOpen(str3)) {
            return 34;
        }
        return super.getSurfaceFormatBySurfaceType(str, str2, str3);
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str) {
        return "on".equals(getConfigureParameter(str).get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE)) ? CameraConstant.UseCase.WATERMARK_VIDEO : "recorder_video_case";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_COLOR_TEMPERATURE_RANGE.getName(), CameraCharacteristicsHelper.getColorTemperatureValueList(str));
        ArrayList arrayList = new ArrayList(1);
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraDeviceInfoImpl.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap != null) {
            this.mMovieSize = Util.getMaxSizeByRatio(streamConfigurationMap.getOutputSizes(SurfaceTexture.class), (double) RATIO_VALUE_7_3);
            arrayList.add(this.mMovieSize);
            CameraUnitLog.v(TAG, "createCameraDeviceInfo, mMovieSize: " + this.mMovieSize);
        }
        cameraDeviceInfoImpl.setSupportVideoSizeList(arrayList);
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.common.surface.SurfaceControlInterface
    public LinkedList<SurfaceWrapper> buildStreamSurface(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str) {
        LinkedList<SurfaceWrapper> buildStreamSurface = super.buildStreamSurface(sdkCameraDeviceConfig, str);
        if (buildStreamSurface == null) {
            return null;
        }
        Surface videoSurface = SurfacePool.getInstance().getVideoSurface();
        if (videoSurface != null && SurfacePool.getInstance().isInnerVideoSurface()) {
            prepareVideoSurface(sdkCameraDeviceConfig, this.mMovieSize, videoSurface);
        }
        return buildStreamSurface;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        if ("video".equals(str)) {
            return new Pair<>(this.mMovieSize, this.mMovieSize);
        }
        return super.getSurfaceSize(sdkCameraDeviceConfig, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, ApsRequestTag apsRequestTag) {
        int[] iArr;
        int i;
        super.onConfigure(cameraSessionEntity, sdkCameraDeviceConfig, str, apsRequestTag);
        SurfaceWrapper videoSurface = sdkCameraDeviceConfig.getVideoSurface();
        Parameter configureParameter = getConfigureParameter(str);
        if (!((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_MOVIE_MODE_V2, false)).booleanValue()) {
            this.mMovieSize = sdkCameraDeviceConfig.getDefaultPreviewSurface().getHalSurfaceSize();
        } else if ("on".equals(configureParameter.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE)) && (iArr = (int[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str).get(CameraCharacteristicsWrapper.KEY_CUSTOM_JPEG_SIZE)) != null && iArr.length > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (i2 % 2 == 0 && (i = i2 + 1) < iArr.length) {
                    arrayList.add(new Size(iArr[i2], iArr[i]));
                }
            }
            Size maxSizeByRatio = Util.getMaxSizeByRatio(arrayList, (double) RATIO_VALUE_7_3);
            if (maxSizeByRatio != null && Util.compareSize(maxSizeByRatio, this.mMovieSize) > 0) {
                this.mMovieSize = maxSizeByRatio;
            }
        }
        CameraUnitLog.d(TAG, "onConfigure, mMovieSize: " + this.mMovieSize);
        apsRequestTag.mbVideo10BitsEnable = isVideo10BitOpen(str);
        videoSurface.setHalSurfaceSize(this.mMovieSize);
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.START_PREVIEW.equals(str)) {
            checkColorTemperature(builder);
            checkIso(builder);
            checkExposureTime(builder);
            checkFlashAndAeMode(builder);
            checkAfMode(builder);
            setFrameDuration(builder);
        }
    }

    private void checkExposureTime(PreviewParameter.Builder builder) {
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        if (l != null && -1 != l.longValue()) {
            builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_LONGSHOT_ENABLE, (Parameter.Key<int[]>) new int[]{0});
        }
        if (l == null) {
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.SENSOR_EXPOSURE_TIME, (CaptureRequest.Key) (-1L));
        }
    }

    private void checkIso(PreviewParameter.Builder builder) {
        if (((Integer) builder.get(CaptureRequest.SENSOR_SENSITIVITY)) == null) {
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.SENSOR_SENSITIVITY, (CaptureRequest.Key) (-1));
        }
    }

    private void checkColorTemperature(PreviewParameter.Builder builder) {
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_COLOR_TEMPERATURE);
        if (iArr != null && iArr.length > 0 && -1 != iArr[0]) {
            if (!Util.isQcomPlatform()) {
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key) 10);
                return;
            } else {
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key) 0);
                return;
            }
        }
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key) 1);
    }

    private void checkFlashAndAeMode(PreviewParameter.Builder builder) {
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        Integer num = (Integer) builder.get(CaptureRequest.SENSOR_SENSITIVITY);
        CameraUnitLog.v(TAG, "checkProfessionalAeMode, exposureTime: " + l + ", iso: " + num);
        if (!Util.isQcomPlatform() ? !((num == null || -1 == num.intValue()) && (l == null || -1 == l.longValue())) : !(num == null || -1 == num.intValue() || l == null || -1 == l.longValue())) {
            builder.remove(PreviewParameter.KEY_FLASH_MODE);
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.FLASH_MODE, (CaptureRequest.Key) 0);
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_MODE, (CaptureRequest.Key) 0);
            return;
        }
        builder.remove(CaptureRequest.FLASH_MODE);
        builder.remove(CaptureRequest.CONTROL_AE_MODE);
    }

    private void checkAfMode(PreviewParameter.Builder builder) {
        if (((Integer) builder.get(PreviewParameter.KEY_FOCUS_MODE)).intValue() == 0) {
            builder.remove(CaptureRequest.CONTROL_AF_MODE);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isExplorerOpen(String str, SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        boolean z;
        boolean z2;
        updateCurrentFps(str);
        Parameter configureParameter = sdkCameraDeviceConfig.getConfigureParameter();
        if (configureParameter != null) {
            z2 = CameraConstant.STATUS_ON.equals(configureParameter.get(ConfigureParameter.KEY_MOVIE_LOG_ENABLE));
            z = CameraConstant.STATUS_ON.equals(configureParameter.get(ConfigureParameter.KEY_MOVIE_HDR_ENABLE));
        } else {
            z = false;
            z2 = false;
        }
        CameraUnitLog.d(TAG, "mCurrentFps: " + this.mCurrentFps + ", bMovieLogEnable: " + z2 + ", bMovieHdrEnable: " + z);
        return (30 != this.mCurrentFps || z2 || z) ? false : true;
    }
}
