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
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MovieMode extends VideoMode {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final double RATIO_VALUE_7_3 = 2.3333333333333335d;
    private static final String TAG = "MovieMode";
    private Size mMovieSize = null;

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
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

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getFeatureName(String str) {
        String str2 = (String) getConfigureParameter(str).get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
        CameraUnitLog.i(TAG, "getFeatureName, cameraType: " + str + ", stabilizationValue: " + str2);
        return "video_stabilization".equals(str2) ? "video_stabilization" : "movie_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Long getVideoFrameReaderUsage(String str) {
        Parameter configureParameter = getConfigureParameter(str);
        if (PlatformUtil.isMtkPlatform()
                && "on".equals(configureParameter.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE))
                && isVideo10BitOpen(str)) {
            return 65587L;
        }
        return 128L;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needVideoMeta(String str) {
        Parameter configureParameter = getConfigureParameter(str);
        if (PlatformUtil.isMtkPlatform()
                && "on".equals(configureParameter.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE))
                && isVideo10BitOpen(str)) {
            return false;
        }
        return super.needPreviewMeta(str);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long[] getFlexibleCapabilities(String str) {
        int i;
        if (!CameraConstant.STATUS_ON.equals(getConfigureParameter(str).get(ConfigureParameter.KEY_MOVIE_LOG_ENABLE))) {
            return null;
        }
        Size size = this.mTagMap.get(str).mPreviewSize;
        Size size2 = this.mTagMap.get(str).mInputVideoSize;
        long[] jArr = new long[16];
        int i2 = 0;
        for (int i3 = 0; i3 < 2; i3++) {
            int i4 = i2 + 1;
            jArr[i2] = 0;
            int i5 = i4 + 1;
            jArr[i4] = 0;
            if (i3 == 0) {
                int i6 = i5 + 1;
                jArr[i5] = 0;
                int i7 = i6 + 1;
                jArr[i6] = size.getWidth();
                i = i7 + 1;
                jArr[i7] = size.getHeight();
            } else {
                int i8 = i5 + 1;
                jArr[i5] = 2;
                int i9 = i8 + 1;
                jArr[i8] = size2.getWidth();
                i = i9 + 1;
                jArr[i9] = size2.getHeight();
            }
            int i10 = i + 1;
            jArr[i] = 0;
            int i11 = i10 + 1;
            jArr[i10] = 1;
            i2 = i11 + 1;
            jArr[i11] = 2;
        }
        CameraUnitLog.v(TAG, "getFlexibleCapabilities, value: " + Arrays.toString(jArr));
        return jArr;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public int getSurfaceFormatBySurfaceType(String str, String str2, String str3) {
        if (("preview".equals(str) || "video_recorder".equals(str) || "video".equals(str)) && isVideo10BitOpen(str3)) {
            return (PlatformUtil.isMtkPlatform() && CameraConstant.STATUS_ON
                    .equals(getConfigureParameter(str3).get(ConfigureParameter.KEY_MOVIE_HDR_ENABLE))) ? 54 : 34;
        }
        return super.getSurfaceFormatBySurfaceType(str, str2, str3);
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "on".equals(getConfigureParameter(str).get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE))
                ? CameraConstant.UseCase.WATERMARK_VIDEO
                : "recorder_video_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        StreamConfigurationMap streamConfigurationMap;
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_COLOR_TEMPERATURE_RANGE.getName(),
                CameraCharacteristicsHelper.getColorTemperatureValueList(str));
        ArrayList arrayList = new ArrayList(1);
        int[] iArr = (int[]) cameraDeviceInfoImpl
                .get(CameraCharacteristicsWrapper.KEY_CUSTOM_MOVIE_STREAM_CONFIGURATION_MAP);
        if (iArr != null && iArr.length > 0) {
            int length = iArr.length / 4;
            Size[] sizeArr = new Size[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 4;
                sizeArr[i] = new Size(iArr[i2 + 1], iArr[i2 + 2]);
            }
            this.mMovieSize = Util.getMaxSizeByRatio(sizeArr, RATIO_VALUE_7_3);
            CameraUnitLog.v(TAG, "createCameraDeviceInfo, customSize: " + Arrays.toString(iArr) + ", mMovieSize: "
                    + this.mMovieSize);
            streamConfigurationMap = null;
        } else {
            streamConfigurationMap = (StreamConfigurationMap) cameraDeviceInfoImpl
                    .get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        }
        if (streamConfigurationMap != null) {
            this.mMovieSize = Util.getMaxSizeByRatio(streamConfigurationMap.getOutputSizes(SurfaceTexture.class),
                    RATIO_VALUE_7_3);
        }
        Size size = this.mMovieSize;
        if (size != null) {
            arrayList.add(size);
        }
        CameraUnitLog.v(TAG, "createCameraDeviceInfo, mMovieSize: " + this.mMovieSize);
        cameraDeviceInfoImpl.setSupportVideoSizeList(arrayList);
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.common.surface.SurfaceControlInterface
    public LinkedList<SurfaceWrapper> buildStreamSurface(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str) {
        LinkedList<SurfaceWrapper> linkedListBuildStreamSurface = super.buildStreamSurface(sdkCameraDeviceConfig, str);
        if (linkedListBuildStreamSurface == null) {
            return null;
        }
        Surface videoSurface = SurfacePool.getInstance().getVideoSurface();
        if (videoSurface != null && SurfacePool.getInstance().isInnerVideoSurface()) {
            prepareVideoSurface(sdkCameraDeviceConfig, this.mMovieSize, videoSurface);
        }
        return linkedListBuildStreamSurface;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2,
            String str3) {
        if ("video".equals(str)) {
            Size size = this.mMovieSize;
            return new Pair<>(size, size);
        }
        return super.getSurfaceSize(sdkCameraDeviceConfig, str, str2, str3);
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, ApsRequestTag apsRequestTag) {
        super.onConfigure(cameraSessionEntity, sdkCameraDeviceConfig, str, apsRequestTag);
        SurfaceWrapper videoSurface = sdkCameraDeviceConfig.getVideoSurface();
        getConfigureParameter(str);
        List<Size> supportVideoSize = getCameraDeviceInfo(str).getSupportVideoSize();
        if (supportVideoSize.size() >= 1) {
            this.mMovieSize = Util.getMaxSizeByRatio(supportVideoSize, RATIO_VALUE_7_3);
        }
        if (!((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_MOVIE_MODE_V2, false))
                .booleanValue()) {
            this.mMovieSize = sdkCameraDeviceConfig.getDefaultPreviewSurface().getHalSurfaceSize();
        }
        CameraUnitLog.d(TAG, "onConfigure, mMovieSize: " + this.mMovieSize);
        videoSurface.setHalSurfaceSize(this.mMovieSize);
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.START_PREVIEW.equals(str)) {
            checkColorTemperature(builder);
            checkIso(builder);
            checkExposureTime(builder);
            checkFlashAndAeMode(builder);
            checkAfMode(builder);
            setFrameDuration(builder);
            if (-1 == ((Integer) builder.get(CaptureRequest.SENSOR_SENSITIVITY)).intValue()
                    && -1 == ((Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME)).longValue()) {
                builder.set(CaptureRequest.CONTROL_AE_MODE, 1);
                return;
            }
            return;
        }
        if (Parameter.ParameterStage.CONFIGURE.equals(str)) {
            builder.set(ConfigureParameter.KEY_MOVIE_HDR_ENABLE,
                    (Byte) getConfigureParameter(str2).get(ConfigureParameter.KEY_MOVIE_HDR_ENABLE));
            long[] flexibleCapabilities = getFlexibleCapabilities(str2);
            CameraUnitLog.d(TAG, "updateStageParameterBuilder, flex value: " + Arrays.toString(flexibleCapabilities));
            if (flexibleCapabilities != null) {
                builder.set(ConfigureParameter.KEY_FLEXIBLE_CAPABILITIES, flexibleCapabilities);
            }
        }
    }

    private void checkExposureTime(PreviewParameter.Builder builder) {
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        if (l != null && -1 != l.longValue()) {
            builder.set(PreviewParameter.KEY_LONGSHOT_ENABLE, new int[] { 0 });
        }
        if (l == null) {
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, -1L);
        }
    }

    private void checkIso(PreviewParameter.Builder builder) {
        if (((Integer) builder.get(CaptureRequest.SENSOR_SENSITIVITY)) == null) {
            builder.set(CaptureRequest.SENSOR_SENSITIVITY, -1);
        }
    }

    private void checkColorTemperature(PreviewParameter.Builder builder) {
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_COLOR_TEMPERATURE);
        if (iArr != null && iArr.length > 0 && -1 != iArr[0]) {
            if (PlatformUtil.isMtkPlatform()) {
                builder.set(CaptureRequest.CONTROL_AWB_MODE, 10);
                return;
            } else {
                builder.set(CaptureRequest.CONTROL_AWB_MODE, 0);
                return;
            }
        }
        builder.set(CaptureRequest.CONTROL_AWB_MODE, 1);
    }

    private void checkFlashAndAeMode(PreviewParameter.Builder builder) {
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        Integer num = (Integer) builder.get(CaptureRequest.SENSOR_SENSITIVITY);
        if (!PlatformUtil.isQualcommPlatform()
                ? !((num == null || -1 == num.intValue()) && (l == null || -1 == l.longValue()))
                : !(num == null || -1 == num.intValue() || l == null || -1 == l.longValue())) {
            builder.remove(PreviewParameter.KEY_FLASH_MODE);
            builder.set(CaptureRequest.FLASH_MODE, 0);
            builder.set(CaptureRequest.CONTROL_AE_MODE, 0);
        } else {
            builder.remove(CaptureRequest.FLASH_MODE);
            builder.remove(CaptureRequest.CONTROL_AE_MODE);
        }
    }

    private void checkAfMode(PreviewParameter.Builder builder) {
        if (((Integer) builder.get(PreviewParameter.KEY_FOCUS_MODE)).intValue() == 0) {
            builder.remove(CaptureRequest.CONTROL_AF_MODE);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isExplorerOpen(String str) {
        boolean zEquals;
        boolean zEquals2;
        updateCurrentFps(str);
        Parameter configureParameter = getConfigureParameter(str);
        if (configureParameter != null) {
            zEquals2 = CameraConstant.STATUS_ON.equals(configureParameter.get(ConfigureParameter.KEY_MOVIE_LOG_ENABLE));
            zEquals = CameraConstant.STATUS_ON.equals(configureParameter.get(ConfigureParameter.KEY_MOVIE_HDR_ENABLE));
        } else {
            zEquals = false;
            zEquals2 = false;
        }
        CameraUnitLog.d(TAG, "mCurrentFps: " + this.mCurrentFps + ", bMovieLogEnable: " + zEquals2
                + ", bMovieHdrEnable: " + zEquals);
        return (30 != this.mCurrentFps || zEquals2 || zEquals) ? false : true;
    }
}
