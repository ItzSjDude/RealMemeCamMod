package com.oplus.ocs.camera.producer.mode;

import android.graphics.Bitmap;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.LruCache;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsOtherParameter;
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.ApsDataConvert;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.decision.OperationModeDecision;
import com.oplus.ocs.camera.producer.decision.SurfaceDecision;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.feature.FeatureFactory;
import com.oplus.ocs.camera.producer.feature.FeatureInterface;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.IntPredicate;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public abstract class BaseMode implements ModeInterface {
    public static final int CHECK_MEMORY_ERR = 2;
    public static final int CHECK_NO_ERR = 0;
    public static final int CHECK_PREVIEW_RESULT_ERR = 1;
    public static final int CHECK_SENSOR_MODE_ERROR = 3;
    protected static final int DONT_DELAY_CLOSE_CAMERA_FOR_CAPTURE = 0;
    protected static final String FRONT_MIRROR_ENABLE = "on";
    private static final String TAG = "BaseMode";
    private static final SurfaceDecision sSurfaceDecision = new SurfaceDecision();
    private static final String[] SELECTED_ALGOS_FOR_TIMESTAMP_MATCH = { ParameterKeys.PREVIEW_ALGO_NAME_HYPERLAPSE,
            ParameterKeys.PREVIEW_ALGO_NAME_EIS, "preview_supereis", ParameterKeys.PREVIEW_ALGO_NAME_SAT };
    public static long mShutterButtonClickTime = 0;
    protected ConcurrentHashMap<String, SdkCameraDeviceConfig> mConfigMap = new ConcurrentHashMap<>();
    protected Map<String, ApsRequestTag> mTagMap = new HashMap();
    protected CameraPreviewCallbackAdapter.PreviewResult mPreviewResult = null;
    protected final Object mBracketLock = new Object();
    protected final Object mPreviewResultLock = new Object();
    protected boolean mbCaptureNotMatchMeta = false;
    protected int mRuntimeIndex = 0;
    protected long mRuntimeMemorySize = -1;
    protected boolean mbTenBitOpen = false;
    protected int mRearFrontCameraId = -1;
    private Map<String, Map<String, FeatureInterface>> mCameraTypeFeatureMap = new HashMap();
    private Map<String, FeatureInterface> mFeatureMap = new HashMap();
    private final Map<String, CameraDeviceInfoInterface> mCameraDeviceInfoMap = new HashMap();
    private int mApsDecisionFeatureType = 0;
    private int mApsBracketMode = 0;
    private int mDelayCloseCameraForCapture = 2000;
    private int mAisState = -1;
    private int mAsdMovingObject = -1;
    private int mCurrentSensorMode = -1;
    private AlgoSwitchConfig.PreviewConfig mPreviewAlgoConfig = null;
    private LruCache<Long, CameraPreviewCallbackAdapter.PreviewResult> mPreviewResultCache = new LruCache<>(20);

    private int calculateMemorySize(int i, int i2, int i3) {
        float f;
        float f2;
        if (i != 32) {
            if (i != 256) {
                switch (i) {
                    case 34:
                    case 36:
                    case 37:
                        break;
                    case 35:
                        f = i3;
                        f2 = 1.5f;
                        break;
                    default:
                        return 0;
                }
                return ((int) (f * f2)) * i2;
            }
            return i3 * i2;
        }
        f = i3;
        f2 = 2.0f;
        return ((int) (f * f2)) * i2;
    }

    private String chooseFormat(int i) {
        return i != 3 ? "1" : "2";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$getCaptureFormatList$0(int i) {
        return i != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getFeatureName(String str) {
        return null;
    }

    protected long getHalMemory() {
        return 0L;
    }

    protected int getImageReaderMaxImages(String str) {
        return 20;
    }

    protected abstract String getModeName();

    /* JADX INFO: Access modifiers changed from: protected */
    public Long getPreviewReaderUsage(String str) {
        return null;
    }

    @Override // com.oplus.ocs.camera.common.util.SensorManagerInterface
    public int getSensorType() {
        return 0;
    }

    protected abstract Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str,
            String str2, String str3);

    protected abstract String getSurfaceUseCase(String str, boolean z);

    protected Long getVideoFrameReaderUsage(String str) {
        return null;
    }

    protected boolean isCaptureModeType() {
        return true;
    }

    protected boolean isExplorerOpen(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isNeedAPSProcess() {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isPreviewInPreviewOn() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isReuseAppSurface(String str, String str2, String str3) {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isSupportVideoSnapShot(String str) {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isVideoSnapShotByAps(String str) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean needRemoveTarget(String str, String str2, @NonNull SurfaceKey surfaceKey,
            PreviewParameter.Builder builder) {
        return false;
    }

    protected abstract void onConfigure(CameraSessionEntity cameraSessionEntity,
            SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag);

    protected boolean useMfnrSizeToCalculateMemory() {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void initialize() {
        initializeFeatures();
        this.mDelayCloseCameraForCapture = ApsUtils
                .stringConvertInt(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_DELAY_CLOSE_CAMERA_FOR_CAPTURE));
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void setRearFrontCameraId(int i) {
        CameraUnitLog.v(TAG, "setRearFrontCameraId, setRearFrontCameraId: " + i);
        this.mRearFrontCameraId = i;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public final CameraSessionEntity configure(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig, String str) {
        CameraUnitLog.d(TAG, "configure, cameraType: " + str);
        this.mConfigMap.put(str, sdkCameraDeviceConfig);
        CameraSessionEntity cameraSessionEntity = new CameraSessionEntity(str);
        ApsRequestTag apsRequestTag = new ApsRequestTag();
        Map<String, Map<String, FeatureInterface>> map = this.mCameraTypeFeatureMap;
        Map<String, FeatureInterface> map2 = map == null ? null : map.get(str);
        if (!OperationModeDecision.isFeatureConfigLegal(sdkCameraDeviceConfig, map2)) {
            CameraUnitLog.e(TAG, "configure, isFeatureConfigLegal check fail");
            return null;
        }
        OperationModeDecision.updateOperationMode(sdkCameraDeviceConfig, cameraSessionEntity, map2);
        cameraSessionEntity.setSurfaceControl(this);
        cameraSessionEntity.setConfig(sdkCameraDeviceConfig);
        this.mTagMap.put(str, apsRequestTag);
        apsRequestTag.mbNeedPreviewMetadata = needPreviewMeta(str);
        apsRequestTag.mbNeedVideoMetadata = needVideoMeta(str);
        apsRequestTag.mModeName = getModeName();
        sdkCameraDeviceConfig.updateHalPreviewSize(getCameraDeviceInfo(str).getPreviewMappingSizesFromConfig(str,
                getFeaturesFromConfig(sdkCameraDeviceConfig.getConfigureParameter())));
        onConfigure(cameraSessionEntity, sdkCameraDeviceConfig, str, apsRequestTag);
        if (map2 != null && map2.containsKey(ConfigureParameter.KEY_EXPLORER_ENABLE.getName())
                && map2.get(ConfigureParameter.KEY_EXPLORER_ENABLE.getName()).getSupportValues().contains("on")
                && ((sdkCameraDeviceConfig.getConfigureParameter()
                        .get(ConfigureParameter.KEY_EXPLORER_CHIP_STATE) == null
                        || 1 == ((Integer) sdkCameraDeviceConfig.getConfigureParameter()
                                .get(ConfigureParameter.KEY_EXPLORER_CHIP_STATE)).intValue())
                        && isExplorerOpen(str))) {
            cameraSessionEntity.updateExplorerOperationMode();
        }
        apsRequestTag.mOperationMode = cameraSessionEntity.getOperationMode();
        SurfaceWrapper defaultPreviewSurface = sdkCameraDeviceConfig.getDefaultPreviewSurface();
        apsRequestTag.mPreviewSize = defaultPreviewSurface.getHalSurfaceSize();
        apsRequestTag.mPreviewDisplayType = chooseFormat(defaultPreviewSurface.getSurfaceType());
        apsRequestTag.mPreviewSurfaceType = defaultPreviewSurface.getSurfaceType();
        apsRequestTag.mCameraType = str;
        apsRequestTag.mFeatureName = getFeatureName(str);
        apsRequestTag.mCaptureStreamNumber = getSensorNum(str);
        apsRequestTag.mPreviewStreamNumber = getSensorNum(str);
        apsRequestTag.mPreviewCallbackType = getPreviewCallbackType(sdkCameraDeviceConfig.getPreviewSurfaceTypes());
        apsRequestTag.mRearFrontCameraId = this.mRearFrontCameraId;
        if (sdkCameraDeviceConfig.getConfigureParameter().containCustomKey(ConfigureParameter.KEY_QUICK_JPEG_SWITCH)) {
            apsRequestTag.mbSupportQuickJpeg = ((Boolean) sdkCameraDeviceConfig.getConfigureParameter()
                    .get(ConfigureParameter.KEY_QUICK_JPEG_SWITCH)).booleanValue();
        }
        SurfaceWrapper videoSurface = sdkCameraDeviceConfig.getVideoSurface();
        if (videoSurface == null || videoSurface.getHalSurfaceSize() == null) {
            CameraUnitLog.d(TAG, "configure, video surface not set, use preview size");
            apsRequestTag.mInputVideoSize = defaultPreviewSurface.getHalSurfaceSize();
            apsRequestTag.mOutputVideoSize = apsRequestTag.mInputVideoSize;
        } else {
            apsRequestTag.mInputVideoSize = videoSurface.getHalSurfaceSize();
            apsRequestTag.mOutputVideoSize = videoSurface.getAppSurfaceSize();
        }
        List<SurfaceWrapper> pictureSurfaces = sdkCameraDeviceConfig.getPictureSurfaces();
        if (pictureSurfaces.size() > 0) {
            Size halSurfaceSize = pictureSurfaces.get(0).getHalSurfaceSize();
            CameraUnitLog.d(TAG, "configure, set apsRequestTag: " + halSurfaceSize);
            apsRequestTag.mPictureSize = halSurfaceSize;
        } else {
            CameraUnitLog.w(TAG, "configure, pictureSurfaces is null, use preview size " + apsRequestTag.mPreviewSize);
            apsRequestTag.mPictureSize = apsRequestTag.mPreviewSize;
        }
        StatisticsManager.getInstance().setPortraitMode("portrait_mode".equals(getModeName()));
        StatisticsManager.getInstance().setSlowMotion("slowvideo_mode".equals(getModeName()));
        StatisticsManager.getInstance().setCaptureSize(apsRequestTag.mPictureSize);
        cameraSessionEntity.setApsTag(apsRequestTag);
        synchronized (this.mPreviewResultLock) {
            this.mPreviewResult = null;
        }
        CameraUnitLog.d(TAG, "configure X");
        return cameraSessionEntity;
    }

    public boolean useOplusCameraCase(String str) {
        return "rear_wide".equals(str) || "rear_sat".equals(str);
    }

    private String getPreviewCallbackType(ArrayList<Integer> arrayList) {
        Iterator<Integer> it = arrayList.iterator();
        while (it.hasNext()) {
            if (5 == it.next().intValue()) {
                return "0";
            }
        }
        return "1";
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    @CallSuper
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        long[] flexibleCapabilities;
        if (cameraRequestTag != null) {
            if (builder.containCustomKey(PreviewParameter.KEY_SINGLE_BLUR_ALGONAME)) {
                cameraRequestTag.mSingleBlurAlgoName = (String) builder.get(PreviewParameter.KEY_SINGLE_BLUR_ALGONAME);
            }
            if (builder.get(PreviewParameter.KEY_FILTER_OPEN) != null) {
                cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN))
                        .booleanValue();
            }
        }
        str.hashCode();
        char c = 65535;
        byte b = 2;
        boolean z = false;
        switch (str.hashCode()) {
            case -930917882:
                if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
                    c = 0;
                    break;
                }
                break;
            case -804429082:
                if (str.equals(Parameter.ParameterStage.CONFIGURE)) {
                    c = 1;
                    break;
                }
                break;
            case 2102512875:
                if (str.equals(Parameter.ParameterStage.START_PREVIEW)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                updateCaptureRequestTag(builder, cameraRequestTag, str2);
                if (builder.containCustomKey(PreviewParameter.KEY_CAPTURE_TIME)) {
                    builder.<Long>set(PreviewParameter.KEY_EXIF_TAG_DATETIME,
                            builder.get(PreviewParameter.KEY_CAPTURE_TIME));
                    return;
                }
                return;
            case 1:
                if (!Util.isSystemCamera() && useOplusCameraCase(str2)) {
                    builder.<byte[]>set(ConfigureParameter.IS_OPLUS_PACKAGE, new byte[] { 1 });
                }
                updateFpsRange(getConfigureParameter(str2), builder, str2);
                if ("rear_sat".equals(str2) && PlatformUtil.isMtkPlatform()) {
                    builder.<int[]>set(ConfigureParameter.KEY_MTK_MULTI_CAM_FEATURE_MODE, new int[] { 0 });
                }
                Boolean bool = (Boolean) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_TUNING_DATA_BUFFER_SUPPORT, false);
                if (bool == null || !bool.booleanValue()) {
                    b = 1;
                }
                builder.<byte[]>set(ConfigureParameter.KEY_TUNING_DATA_ENABLE, new byte[] { b });
                builder.<int[]>set(ConfigureParameter.KEY_SESSION_REQUEST_FAST_LAUNCH, new int[] { 1 });
                if (Util.isSystemCamera()) {
                    builder.set(ConfigureParameter.KEY_SESSION_REQUEST_MSNR, new int[] { 1 });
                }
                Parameter configureParameter = getConfigureParameter(str2);
                if (configureParameter.containCustomKey(ConfigureParameter.KEY_TORCH_FLASH_ENABLE)) {
                    builder.set(ConfigureParameter.KEY_TORCH_FLASH_ENABLE,
                            (String) configureParameter.get(ConfigureParameter.KEY_TORCH_FLASH_ENABLE));
                }
                if (configureParameter.containCustomKey(ConfigureParameter.SESSION_REQUEST_CROP_REGION)) {
                    builder.set(ConfigureParameter.SESSION_REQUEST_CROP_REGION,
                            (int[]) configureParameter.get(ConfigureParameter.SESSION_REQUEST_CROP_REGION));
                }
                if (configureParameter.containCustomKey(ConfigureParameter.KEY_CALLER_PACKAGE_NAME)) {
                    builder.set(ConfigureParameter.KEY_CALLER_PACKAGE_NAME,
                            (byte[]) configureParameter.get(ConfigureParameter.KEY_CALLER_PACKAGE_NAME));
                }
                if (configureParameter.containCustomKey(ConfigureParameter.KEY_REAR_SELF_MODE_REVERSE)) {
                    builder.set(ConfigureParameter.KEY_REAR_SELF_MODE_REVERSE,
                            (Integer) configureParameter.get(ConfigureParameter.KEY_REAR_SELF_MODE_REVERSE));
                }
                if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_CAPTURE_WITH_RAW10, false))
                        .booleanValue() && !"night_mode".equals(getModeName())) {
                    builder.set(ConfigureParameter.KEY_MTK_CAPTURE_RAW10, new int[] { 1 });
                }
                if (configureParameter.containCustomKey(ConfigureParameter.KEY_MAKEUP_STATE)) {
                    builder.set(ConfigureParameter.KEY_MAKEUP_STATE,
                            (Integer) configureParameter.get(ConfigureParameter.KEY_MAKEUP_STATE));
                }
                if (configureParameter.containCustomKey(ConfigureParameter.KEY_REQUEST_ZSL_MODE)) {
                    builder.set(ConfigureParameter.KEY_REQUEST_ZSL_MODE,
                            (byte[]) configureParameter.get(ConfigureParameter.KEY_REQUEST_ZSL_MODE));
                }
                if (("on".equals(configureParameter.get(ConfigureParameter.PHOTO_10BIT_ENABLE))
                        || "1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_SUPPORT_WCG2)))
                        && (flexibleCapabilities = getFlexibleCapabilities(str2)) != null) {
                    builder.set(ConfigureParameter.KEY_FLEXIBLE_CAPABILITIES, flexibleCapabilities);
                }
                if (CameraConstant.MonoFilterType.BLACK_WHITE.equals(this.mTagMap.get(str2).mFeatureName)) {
                    builder.set(CaptureRequest.CONTROL_EXTENDED_SCENE_MODE, 1);
                }
                if ("rear_sat".equals(str2)
                        && configureParameter.containCustomKey(ConfigureParameter.KEY_CUSTOM_ZOOM_RATIO)) {
                    builder.set(ConfigureParameter.KEY_CUSTOM_ZOOM_RATIO,
                            (Float) configureParameter.get(ConfigureParameter.KEY_CUSTOM_ZOOM_RATIO));
                }
                if (configureParameter.get(ConfigureParameter.KEY_IS_FROM_MAIN_MENU) != null) {
                    builder.set(ConfigureParameter.KEY_IS_FROM_MAIN_MENU,
                            (Boolean) configureParameter.get(ConfigureParameter.KEY_IS_FROM_MAIN_MENU));
                    return;
                }
                return;
            case 2:
                if (!getCameraDeviceInfo(str2).isSupportPreviewParameter(PreviewParameter.KEY_ZOOM_RATIO.getName())) {
                    builder.set(PreviewParameter.KEY_ZOOM_RATIO, Float.valueOf(1.0f));
                }
                if (cameraRequestTag != null) {
                    cameraRequestTag.mbPiEnable = "on".equals(builder.get(PreviewParameter.KEY_AI_PHOTO));
                    cameraRequestTag.mbVisualizationEnable = "on"
                            .equals(builder.get(PreviewParameter.KEY_ALGO_VISUALIZATION_ENABLE));
                    if (builder.get(PreviewParameter.KEY_FACE_RECTIFY_ENABLE) != null) {
                        cameraRequestTag.mbFaceRectifyOpen = ((Boolean) builder
                                .get(PreviewParameter.KEY_FACE_RECTIFY_ENABLE)).booleanValue();
                    }
                    if (builder.get(PreviewParameter.KEY_IS_FROM_MAIN_MENU) != null) {
                        cameraRequestTag.mbFromMainMenu = ((Boolean) builder
                                .get(PreviewParameter.KEY_IS_FROM_MAIN_MENU)).booleanValue();
                    }
                    if (builder.get(PreviewParameter.KEY_SUPPORT_MAKEUP) != null) {
                        cameraRequestTag.mbSupportMakeup = ((Boolean) builder.get(PreviewParameter.KEY_SUPPORT_MAKEUP))
                                .booleanValue();
                    }
                    if (builder.containCustomKey(PreviewParameter.KEY_WATERMARK_CAPTURE_ENABLE)) {
                        cameraRequestTag.mbPhotoWaterMarkEnable = "on"
                                .equals(builder.get(PreviewParameter.KEY_WATERMARK_CAPTURE_ENABLE));
                    }
                    if (builder.containCustomKey(PreviewParameter.KEY_FAST_SHOT_ENABLE)) {
                        cameraRequestTag.mbFastShotEnable = ((Boolean) builder
                                .get(PreviewParameter.KEY_FAST_SHOT_ENABLE)).booleanValue();
                    }
                }
                builder.set(PreviewParameter.KEY_APS_FEATURE_TYPE, new int[] { this.mApsDecisionFeatureType });
                synchronized (this.mBracketLock) {
                    builder.set(PreviewParameter.KEY_BRACKET_MODE, new int[] { this.mApsBracketMode });
                }
                builder.set(PreviewParameter.KEY_AIS_STATE, new int[] { this.mAisState });
                builder.set(PreviewParameter.KEY_MOVING_OBJECT, new int[] { this.mAsdMovingObject });
                updatePreviewRequestTag(builder, cameraRequestTag, str, str2);
                if (builder.get(PreviewParameter.KEY_SUPER_TEXT_ENABLE) != null
                        && ((Boolean) builder.get(PreviewParameter.KEY_SUPER_TEXT_ENABLE)).booleanValue()) {
                    z = true;
                }
                cameraRequestTag.mbSuperTextOpen = z;
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fillWatermarkParam(CameraRequestTag cameraRequestTag, Bundle bundle) {
        Size size = bundle.getSize("size");
        cameraRequestTag.mApsWatermarkParam = new ApsWatermarkParam(bundle.getInt("refWidth"), size.getHeight(),
                size.getWidth(), bundle.getByteArray("buffer"),
                (Bitmap) bundle.getParcelable(CameraConstant.WaterMarkParamKeys.BITMAP));
        cameraRequestTag.mbWatermarkNeedScale = bundle.getBoolean(CameraConstant.WaterMarkParamKeys.NEED_SCALE);
        cameraRequestTag.mInputWidth = bundle.getInt(CameraConstant.WaterMarkParamKeys.INPUT_WIDTH);
        cameraRequestTag.mWatermarkBolderX = bundle.getInt(CameraConstant.WaterMarkParamKeys.WATERMARK_BORDER_X);
        cameraRequestTag.mWatermarkBolderY = bundle.getInt(CameraConstant.WaterMarkParamKeys.WATERMARK_BORDER_Y);
        cameraRequestTag.mWatermarkBolderBackUpX = bundle
                .getInt(CameraConstant.WaterMarkParamKeys.WATERMARK_BORDER_BACKUP_X, -1);
        cameraRequestTag.mWatermarkBolderBackUpY = bundle
                .getInt(CameraConstant.WaterMarkParamKeys.WATERMARK_BORDER_BACKUP_Y, -1);
        cameraRequestTag.mbWatermarkMakeupEnable = bundle.getBoolean(CameraConstant.WaterMarkParamKeys.MAKEUP_ENABLE);
        cameraRequestTag.mbWatermarkMakeupWidth = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_WIDTH);
        cameraRequestTag.mbWatermarkMakeupHeight = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_HEIGHT);
        cameraRequestTag.mbWatermarkMakeupStartX = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_START_X);
        cameraRequestTag.mbWatermarkMakeupStartY = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_START_Y);
    }

    public void updateFpsRange(Parameter parameter, PreviewParameter.Builder builder, String str) {
        checkSetStreamFpsRange(builder, str);
    }

    public boolean checkSetStreamFpsRange(PreviewParameter.Builder builder, String str) {
        Map<String, Range<Integer>> streamFpsRangesMap = CameraCharacteristicsHelper.getStreamFpsRangesMap(str);
        if (streamFpsRangesMap != null) {
            Size size = (Size) builder.get(ConfigureParameter.KEY_CONFIGURE_STREAM_SIZE);
            Range<Integer> range = streamFpsRangesMap
                    .get(((String) builder.get(ConfigureParameter.KEY_CONFIGURE_OPERATION_MODE)) + "_" + size.getWidth()
                            + "_" + size.getHeight());
            if (range != null) {
                CameraUnitLog.e(TAG, "checkSetStreamFpsRange, set CONTROL_AE_TARGET_FPS_RANGE fps range to: " + range);
                builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
                return true;
            }
            return false;
        }
        return false;
    }

    /*
     * JADX WARN: Removed duplicated region for block: B:38:0x011f A[Catch: all ->
     * 0x01ed, TryCatch #0 {, blocks: (B:17:0x0030, B:19:0x0034, B:21:0x0092,
     * B:32:0x00bc, B:35:0x00fc, B:36:0x011b, B:38:0x011f, B:40:0x0125, B:42:0x0129,
     * B:66:0x01e7, B:43:0x0136, B:45:0x013a, B:46:0x0147, B:48:0x014d, B:50:0x0151,
     * B:52:0x015f, B:53:0x0192, B:55:0x01a4, B:58:0x01ac, B:59:0x01b8, B:61:0x01ca,
     * B:64:0x01d0, B:65:0x01dc, B:33:0x00d1, B:34:0x00e6, B:67:0x01eb), top:
     * B:73:0x0030 }]
     */
    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        synchronized (this.mPreviewResultLock) {
            this.mbTenBitOpen = "on".equals(parameter.get(ConfigureParameter.PHOTO_10BIT_ENABLE));
            if (this.mPreviewResult != null) {
                this.mApsDecisionFeatureType = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
                this.mAsdMovingObject = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_ASD_SCENE))
                        .intValue();
                this.mAisState = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE))
                        .intValue();
            }
            if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
                if (parameter.containCustomKey(PreviewParameter.KEY_BRACKET_MODE)) {
                    synchronized (this.mBracketLock) {
                        this.mApsBracketMode = ((int[]) parameter.get(PreviewParameter.KEY_BRACKET_MODE))[0];
                    }
                } else {
                    synchronized (this.mBracketLock) {
                        this.mApsBracketMode = 0;
                    }
                }
            }
        }
        updateStageParameterBuilder((PreviewParameter.Builder) parameter, str, str2, cameraRequestTag);
    }

    public boolean isSupportAlogRawHDR(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag == null) {
            return false;
        }
        String[] strArr = cameraRequestTag.mApsAlgoFlags;
        if (strArr == null || strArr.length == 0) {
            CameraUnitLog.v(TAG, "isSupportAlogRawHDR, apsAlogFlogs is empty");
            return false;
        }
        for (String str : strArr) {
            CameraUnitLog.v(TAG, "isSupportAlogRawHDR,aps algo flag is " + str);
            if (ParameterKeys.ALGO_NAME_RAW_HDR.equals(str)) {
                return true;
            }
        }
        CameraUnitLog.v(TAG, "isSupportAlogRawHDR, not support raw hdr");
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public final CameraDeviceInfoInterface getCameraDeviceInfo(String str) {
        if (this.mCameraDeviceInfoMap.containsKey(str)) {
            return this.mCameraDeviceInfoMap.get(str);
        }
        CameraDeviceInfoInterface createCameraDeviceInfo = createCameraDeviceInfo(str);
        this.mCameraDeviceInfoMap.put(str, createCameraDeviceInfo);
        return createCameraDeviceInfo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = new CameraDeviceInfoImpl(getModeName(), str);
        cameraDeviceInfoImpl
                .setCameraCharacteristicsWrapper(CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str));
        cameraDeviceInfoImpl.setPhysicalCameraTypeList(Collections.singletonList(str));
        cameraDeviceInfoImpl.setDefaultPreviewConfigSizes(CameraConfigHelper.getSupportDefaultPreviewSizes());
        updateAllParameterRanges(cameraDeviceInfoImpl, str);
        return cameraDeviceInfoImpl;
    }

    /*
     * JADX WARN: Removed duplicated region for block: B:105:0x036b A[Catch: all ->
     * 0x0475, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x000b, B:7:0x0011,
     * B:9:0x0030, B:10:0x003e, B:12:0x0042, B:14:0x004a, B:15:0x0050, B:17:0x0054,
     * B:19:0x0062, B:21:0x006a, B:22:0x007a, B:24:0x0085, B:26:0x0093, B:28:0x009c,
     * B:30:0x00aa, B:32:0x00ed, B:34:0x00fb, B:36:0x0101, B:38:0x010f, B:40:0x0115,
     * B:42:0x0123, B:44:0x0136, B:129:0x03e7, B:131:0x03f1, B:134:0x03f6,
     * B:136:0x0405, B:138:0x040b, B:140:0x040f, B:142:0x0414, B:144:0x041c,
     * B:146:0x042e, B:148:0x043c, B:150:0x0442, B:152:0x044e, B:153:0x0473,
     * B:135:0x03ff, B:45:0x0145, B:47:0x014d, B:49:0x0193, B:51:0x01a6,
     * B:55:0x01c9, B:56:0x01cd, B:63:0x01d9, B:65:0x0295, B:67:0x02a6, B:69:0x02be,
     * B:77:0x02db, B:79:0x02e5, B:83:0x02f6, B:85:0x0310, B:89:0x0321, B:91:0x0335,
     * B:92:0x0343, B:94:0x0349, B:96:0x034f, B:98:0x0355, B:101:0x035c,
     * B:103:0x0367, B:105:0x036b, B:107:0x0385, B:109:0x0389, B:111:0x03b0,
     * B:113:0x03b4, B:114:0x03b6, B:116:0x03ba, B:118:0x03c0, B:124:0x03d3,
     * B:119:0x03cb, B:123:0x03d1, B:102:0x0362, B:71:0x02cc, B:73:0x02d4,
     * B:66:0x02a4, B:54:0x01c5, B:50:0x01a4, B:57:0x01ce, B:61:0x01d6, B:62:0x01d8,
     * B:60:0x01d4), top: B:158:0x0003 }]
     */
    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    @CallSuper
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2,
            PreviewParameter.Builder builder) {
        CameraRequestTag cameraRequestTag = new CameraRequestTag(obj, handler);
        cameraRequestTag.mCameraId = Integer.parseInt(str);
        cameraRequestTag.mCameraType = str2;
        cameraRequestTag.mCaptureMode = getModeName();
        cameraRequestTag.mbPiEnable = "on".equals(builder.get(PreviewParameter.KEY_AI_PHOTO));
        cameraRequestTag.mbVisualizationEnable = "on"
                .equals(builder.get(PreviewParameter.KEY_ALGO_VISUALIZATION_ENABLE));
        cameraRequestTag.mbFrontMirror = "on".equals(builder.get(PreviewParameter.KEY_FRONT_MIRROR_ENABLE));
        cameraRequestTag.mZoomRatio = ((Float) builder.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue();
        cameraRequestTag.mCaptureStreamNumber = getSensorNum(str2);
        cameraRequestTag.mPreviewStreamNumber = getSensorNum(str2);
        cameraRequestTag.mbFaceBeautyOpen = !"none".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_STATE));
        cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_MAKEUP_STATE);
        cameraRequestTag.mbCaptureNotMatchMeta = this.mbTenBitOpen;
        synchronized (this.mPreviewResultLock) {
            if (this.mPreviewResult != null) {
                cameraRequestTag.mDecisionHdrBrightenIndex = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_DECISION_HDR_BRIGHTEN_INDEX)).intValue();
                cameraRequestTag.mApsAlgoFlags = (String[]) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_CAPTURE_ALGO_LIST);
                cameraRequestTag.mRequestFormatList = getCaptureFormatList(str2);
                cameraRequestTag.mRearFrontCameraId = this.mRearFrontCameraId;
                cameraRequestTag.mbFaceRectifyOpen = ((Boolean) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_FACE_RECTIFY_ENABLE)).booleanValue();
            }
        }
        return cameraRequestTag;
    }

    private int[] getCaptureFormatList(String str) {
        int[] array;
        CameraPreviewCallbackAdapter.PreviewResult previewResult = this.mPreviewResult;
        if (previewResult != null) {
            int[] iArr = (int[]) previewResult.get(ApsDecisionParameter.KEY_CAPTURE_FORMAT_LIST);
            CameraUnitLog.d(TAG, "getCaptureFormatList, formatList:" + Arrays.toString(iArr));
            if (iArr == null || (array = Arrays.stream(iArr).filter(new IntPredicate() { // from class:
                                                                                         // com.oplus.ocs.camera.producer.mode.BaseMode$$ExternalSyntheticLambda1
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    return BaseMode.lambda$getCaptureFormatList$0(i);
                }
            }).toArray()) == null || array.length <= 0) {
                return null;
            }
            for (int i = 0; i < array.length; i++) {
                int i2 = array[i];
                if (32 == i2 || 37 == i2 || 36 == i2 || 34 == i2) {
                    array[i] = getRawFormat(str);
                }
            }
            return array;
        }
        return null;
    }

    final void buildTargetSurface(String str, String str2, PreviewParameter.Builder builder,
            CameraRequestTag cameraRequestTag) {
        LinkedList<Pair<String, String>> useCaseValues = getUseCaseValues(
                getSurfaceUseCase(str, cameraRequestTag.mbFromMainMenu));
        cameraRequestTag.mAddTargetSurfaces = new HashMap<>();
        cameraRequestTag.mRemoveTargetSurfaces = new HashMap<>();
        cameraRequestTag.mUselessTargetSurfaces = new HashMap<>();
        cameraRequestTag.mCaptureTuningYUVStreamAddTargetNum = 0;
        cameraRequestTag.mCaptureTuningRAWStreamAddTargetNum = 0;
        Iterator<Pair<String, String>> it = useCaseValues.iterator();
        while (it.hasNext()) {
            Pair<String, String> next = it.next();
            String str3 = (String) next.first;
            String surfaceUsageBySurfaceType = getSurfaceUsageBySurfaceType(str3);
            String str4 = "var_camera".equals(next.second) ? str : (String) next.second;
            SurfaceKey surfaceKey = new SurfaceKey(str4, surfaceUsageBySurfaceType,
                    getSurfaceFormatBySurfaceType(str3, str4, str));
            if (needAddToTarget(str, str2, surfaceKey, builder)) {
                cameraRequestTag.mAddTargetSurfaces.put(surfaceKey, null);
                if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                    if (cameraRequestTag.mRequestFormatList != null) {
                        addCaptureSurfaceList(cameraRequestTag, surfaceKey, str);
                    }
                    if ("surface_key_tuning_yuv".equals(surfaceKey.getUsage())) {
                        cameraRequestTag.mCaptureTuningYUVStreamAddTargetNum++;
                    }
                    if ("surface_key_tuning_raw".equals(surfaceKey.getUsage())) {
                        cameraRequestTag.mCaptureTuningRAWStreamAddTargetNum++;
                    }
                }
            } else {
                cameraRequestTag.mUselessTargetSurfaces.put(surfaceKey, null);
                if (needRemoveTarget(str, str2, surfaceKey, builder)) {
                    cameraRequestTag.mRemoveTargetSurfaces.put(surfaceKey, null);
                }
            }
        }
    }

    private void addCaptureSurfaceList(CameraRequestTag cameraRequestTag, final SurfaceKey surfaceKey, String str) {
        int i = 0;
        if (cameraRequestTag.mCaptureTargetSurfacesList == null) {
            cameraRequestTag.mCaptureTargetSurfacesList = new HashMap[cameraRequestTag.mRequestFormatList.length];
            for (int i2 = 0; i2 < cameraRequestTag.mCaptureTargetSurfacesList.length; i2++) {
                cameraRequestTag.mCaptureTargetSurfacesList[i2] = new HashMap<>();
            }
        }
        if (cameraRequestTag.mbUseTuningDataList == null) {
            cameraRequestTag.mbUseTuningDataList = new boolean[cameraRequestTag.mRequestFormatList.length];
        }
        if ("surface_key_picture".equals(surfaceKey.getUsage())) {
            while (i < cameraRequestTag.mRequestFormatList.length) {
                if (cameraRequestTag.mRequestFormatList[i] == surfaceKey.getFormat()
                        || cameraRequestTag.mDecisionHdrBrightenIndex == i) {
                    cameraRequestTag.mCaptureTargetSurfacesList[i].put(surfaceKey, null);
                }
                i++;
            }
        } else if ("surface_key_tuning_yuv".equals(surfaceKey.getUsage())) {
            while (i < cameraRequestTag.mRequestFormatList.length) {
                if (cameraRequestTag.mRequestFormatList[i] == 35 || cameraRequestTag.mDecisionHdrBrightenIndex == i) {
                    cameraRequestTag.mCaptureTargetSurfacesList[i].put(surfaceKey, null);
                    cameraRequestTag.mbUseTuningDataList[i] = true;
                }
                i++;
            }
        } else if ("surface_key_tuning_raw".equals(surfaceKey.getUsage())) {
            while (i < cameraRequestTag.mRequestFormatList.length) {
                if (cameraRequestTag.mRequestFormatList[i] == getRawFormat(str)
                        || cameraRequestTag.mDecisionHdrBrightenIndex == i) {
                    cameraRequestTag.mCaptureTargetSurfacesList[i].put(surfaceKey, null);
                    cameraRequestTag.mbUseTuningDataList[i] = true;
                }
                i++;
            }
        } else {
            Stream.of((Object[]) cameraRequestTag.mCaptureTargetSurfacesList).forEach(new Consumer() { // from class:
                                                                                                       // com.oplus.ocs.camera.producer.mode.BaseMode$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((HashMap) obj).put(SurfaceKey.this, null);
                }
            });
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void unInit() {
        this.mCameraDeviceInfoMap.clear();
        this.mPreviewResultCache.evictAll();
    }

    private int getSensorNum(String str) {
        return getSensorNumberFromConfig(str);
    }

    private int getCaptureStreamNumber(String str, String str2) {
        Map<String, Map<String, String>> map;
        Map<String, String> map2;
        String str3;
        Map<String, Map<String, Map<String, String>>> captureStreamNumberMap = CameraConfigHelper
                .getCaptureStreamNumberMap();
        if (captureStreamNumberMap == null || captureStreamNumberMap.isEmpty()
                || (map = captureStreamNumberMap.get(getModeName())) == null || map.isEmpty()
                || (map2 = map.get(str)) == null || map2.isEmpty() || (str3 = map2.get(str2)) == null) {
            return 1;
        }
        return Integer.parseInt(str3);
    }

    private void updateCaptureRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag,
            String str) {
        if (cameraRequestTag != null) {
            int[] iArr = (int[]) builder.get(PreviewParameter.KEY_PICTURE_EXIF_FLAG);
            if (iArr != null && iArr.length > 0) {
                cameraRequestTag.mExif = iArr[0];
            }
            if (builder.containsKey(CaptureRequest.JPEG_GPS_LOCATION)) {
                cameraRequestTag.mLocation = (Location) builder.get(CaptureRequest.JPEG_GPS_LOCATION);
            }
            if (builder.containsKey(PreviewParameter.KEY_FACE_RECTIFY_ENABLE)) {
                cameraRequestTag.mbFaceRectifyOpen = ((Boolean) builder.get(PreviewParameter.KEY_FACE_RECTIFY_ENABLE))
                        .booleanValue();
            }
        }
        Integer num = (Integer) builder.get(CaptureRequest.JPEG_ORIENTATION);
        cameraRequestTag.mOrientation = num != null ? num.intValue() : 90;
        cameraRequestTag.mPicOrientation = cameraRequestTag.mOrientation;
        cameraRequestTag.mbSuperTextOpen = builder.get(PreviewParameter.KEY_SUPER_TEXT_ENABLE) != null
                ? ((Boolean) builder.get(PreviewParameter.KEY_SUPER_TEXT_ENABLE)).booleanValue()
                : false;
        if (cameraRequestTag.mbSuperTextOpen) {
            cameraRequestTag.mSuperTextVertices = (String) builder.get(PreviewParameter.KEY_SUPER_TEXT_VERTICES);
        }
        cameraRequestTag.mAppOpaqueObj = builder.get(PreviewParameter.KEY_REQUEST_TAG);
        cameraRequestTag.mbUltraResolutionEnabled = "on"
                .equals(builder.get(PreviewParameter.KEY_ULTRA_HIGH_RESOLUTION_ENABLE));
        if (builder.containCustomKey(PreviewParameter.KEY_CAPTURE_TIME)) {
            cameraRequestTag.mCaptureTime = ((Long) builder.get(PreviewParameter.KEY_CAPTURE_TIME)).longValue();
        }
        cameraRequestTag.mSingleBlurAlgoName = (String) builder.get(PreviewParameter.KEY_SINGLE_BLUR_ALGONAME);
        if (builder.get(PreviewParameter.KEY_SINGLE_PORTRAIT_EFFECT_MODE) != null) {
            cameraRequestTag.mSinglePortraitEffectMode = ((Integer) builder
                    .get(PreviewParameter.KEY_SINGLE_PORTRAIT_EFFECT_MODE)).intValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_ZOOM_SCALE_ENABLE)) {
            cameraRequestTag.mbScaleEnable = ((Boolean) builder.get(PreviewParameter.KEY_ZOOM_SCALE_ENABLE))
                    .booleanValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_SINGLE_BLUR_LEVEL)) {
            cameraRequestTag.mBlurIndex = ((Integer) builder.get(PreviewParameter.KEY_SINGLE_BLUR_LEVEL)).intValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_REAR_SELF_CAPTURE_ENABLE)) {
            cameraRequestTag.mRearSelfCaptureEnable = ((Integer) builder
                    .get(PreviewParameter.KEY_REAR_SELF_CAPTURE_ENABLE)).intValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_SINGLE_BLUR_SHOW)) {
            cameraRequestTag.mBlurShow = ((Float) builder.get(PreviewParameter.KEY_SINGLE_BLUR_SHOW)).floatValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_SHUTTER_BUTTON_CLICK_TIME)) {
            cameraRequestTag.mShutterButtonClickTime = ((Long) builder
                    .get(PreviewParameter.KEY_SHUTTER_BUTTON_CLICK_TIME)).longValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_WATERMARK_CAPTURE_ENABLE)) {
            cameraRequestTag.mbPhotoWaterMarkEnable = "on"
                    .equals(builder.get(PreviewParameter.KEY_WATERMARK_CAPTURE_ENABLE));
        }
        if (cameraRequestTag.mbPhotoWaterMarkEnable && builder.containCustomKey(PreviewParameter.KEY_WATERMARK_PARAM)
                && cameraRequestTag.mSuperTextVertices == null) {
            Bundle bundle = (Bundle) builder.get(PreviewParameter.KEY_WATERMARK_PARAM);
            Size size = bundle.getSize("size");
            cameraRequestTag.mApsWatermarkParam = new ApsWatermarkParam(bundle.getInt("refWidth"), size.getHeight(),
                    size.getWidth(), bundle.getByteArray("buffer"),
                    (Bitmap) bundle.getParcelable(CameraConstant.WaterMarkParamKeys.BITMAP));
            cameraRequestTag.mbWatermarkMakeupEnable = bundle
                    .getBoolean(CameraConstant.WaterMarkParamKeys.MAKEUP_ENABLE);
            cameraRequestTag.mbWatermarkMakeupWidth = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_WIDTH);
            cameraRequestTag.mbWatermarkMakeupHeight = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_HEIGHT);
            cameraRequestTag.mbWatermarkMakeupStartX = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_START_X);
            cameraRequestTag.mbWatermarkMakeupStartY = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_START_Y);
            cameraRequestTag.mWatermarkBolderX = bundle.getInt(CameraConstant.WaterMarkParamKeys.WATERMARK_BORDER_X);
            cameraRequestTag.mWatermarkBolderY = bundle.getInt(CameraConstant.WaterMarkParamKeys.WATERMARK_BORDER_Y);
            cameraRequestTag.mbWatermarkNeedScale = bundle.getBoolean(CameraConstant.WaterMarkParamKeys.NEED_SCALE);
            cameraRequestTag.mInputWidth = bundle.getInt(CameraConstant.WaterMarkParamKeys.INPUT_WIDTH);
        } else {
            setVideoWaterMarkParams(builder, str, cameraRequestTag);
        }
        if (builder.containCustomKey(PreviewParameter.KEY_SUPPORT_MAKEUP)) {
            cameraRequestTag.mbSupportMakeup = ((Boolean) builder.get(PreviewParameter.KEY_SUPPORT_MAKEUP))
                    .booleanValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_BURST_SHOT_ENABLE)) {
            cameraRequestTag.mbBurstShot = "on".equals(builder.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));
            cameraRequestTag.mBurstShotPath = (String) builder.get(PreviewParameter.KEY_BURST_SHOT_PATH);
            cameraRequestTag.mBurstShotFlagId = ((Long) builder.get(PreviewParameter.KEY_BURST_SHOT_FLAG_ID))
                    .longValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_BLUR_EDIT_ENABLE)
                && builder.containCustomKey(PreviewParameter.KEY_BLUR_SUPPORT_VALUES)
                && builder.containCustomKey(PreviewParameter.KEY_BLUR_SUPPORT_APERTURES)) {
            cameraRequestTag.mbBlurEditEnable = ((Boolean) builder.get(PreviewParameter.KEY_BLUR_EDIT_ENABLE))
                    .booleanValue();
            cameraRequestTag.mBlurSupportValues = (float[]) builder.get(PreviewParameter.KEY_BLUR_SUPPORT_VALUES);
            cameraRequestTag.mBlurSupportApertures = (float[]) builder.get(PreviewParameter.KEY_BLUR_SUPPORT_APERTURES);
        }
        if (builder.containsKey(PreviewParameter.KEY_WATERMARK_EDIT_ENABLE)) {
            cameraRequestTag.mbWatermarkEnable = ((Boolean) builder.get(PreviewParameter.KEY_WATERMARK_EDIT_ENABLE))
                    .booleanValue();
        }
        if (builder.containsKey(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION)) {
            cameraRequestTag.mTouchEVValue = ((Integer) builder.get(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION))
                    .intValue();
        }
        if (builder.containsKey(PreviewParameter.KEY_IS_FROM_MAIN_MENU)) {
            cameraRequestTag.mbFromMainMenu = ((Boolean) builder.get(PreviewParameter.KEY_IS_FROM_MAIN_MENU))
                    .booleanValue();
        }
        if (builder.containsKey(PreviewParameter.KEY_IS_FROM_SYSTEM_APP)) {
            cameraRequestTag.mbFromSystemApp = ((Boolean) builder.get(PreviewParameter.KEY_IS_FROM_SYSTEM_APP))
                    .booleanValue();
        }
        synchronized (this.mPreviewResultLock) {
            CameraPreviewCallbackAdapter.PreviewResult previewResult = this.mPreviewResult;
            if (previewResult != null) {
                int intValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
                if ((Util.isHdrOn(this.mPreviewResult) && !cameraRequestTag.mbBurstShot)
                        || ((cameraRequestTag.mbInNightProcess && !cameraRequestTag.mbBurstShot
                                && (!PlatformUtil.isMtkPlatform() || !cameraRequestTag.mbStarryProcess))
                                || ((cameraRequestTag.mbSupportBokehHDR && Util.isBokehHDR(this.mPreviewResult))
                                        || 13 == intValue || 26 == intValue))) {
                    cameraRequestTag.mCaptureEvList = (int[]) this.mPreviewResult
                            .get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                    cameraRequestTag.mCaptureEtList = (long[]) this.mPreviewResult
                            .get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_ET_LIST);
                }
            }
        }
        if (builder.containCustomKey(PreviewParameter.KEY_SIZE_RATIO_TYPE)) {
            cameraRequestTag.mSizeRatioType = ((Integer) builder.get(PreviewParameter.KEY_SIZE_RATIO_TYPE)).intValue();
        }
    }

    private void initializeFeatures() {
        this.mCameraTypeFeatureMap = FeatureFactory.getCameraTypeFeatures(getModeName());
    }

    private void setFeatureMap(String str) {
        Map<String, Map<String, FeatureInterface>> map = this.mCameraTypeFeatureMap;
        this.mFeatureMap = map == null ? null : map.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setFrameDuration(PreviewParameter.Builder builder) {
        Integer num = (Integer) builder.get(CaptureRequest.CONTROL_AE_MODE);
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        if (l == null || num == null || num.intValue() != 0) {
            return;
        }
        Range range = (Range) builder.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE);
        builder.set(CaptureRequest.SENSOR_FRAME_DURATION, Long.valueOf(Math.max(
                CameraConstant.TIME_RATIO_S_TO_NS / (range == null ? 30 : ((Integer) range.getUpper()).intValue()),
                l.longValue())));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updatePreviewRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag, String str,
            String str2) {
        if (cameraRequestTag == null) {
            return;
        }
        Float f = (Float) builder.get(PreviewParameter.KEY_ZOOM_RATIO);
        cameraRequestTag.mZoomRatio = f != null ? f.floatValue() : 1.0f;
        cameraRequestTag.mSuperRawEnable = "super_raw".equals(builder.get(PreviewParameter.KEY_RAW_CONTROL));
        cameraRequestTag.mSCPEnable = "on".equals(builder.get(PreviewParameter.KEY_SUPER_CLEAR_PORTRAIT_ENABLE));
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_TRIPOD_MODE);
        cameraRequestTag.mbTripodEnable = iArr != null && iArr[0] == 1;
        ApsRequestTag apsRequestTag = this.mTagMap.get(cameraRequestTag.mCameraType);
        if (apsRequestTag != null) {
            apsRequestTag.mbTripodEnable = cameraRequestTag.mbTripodEnable;
            Integer num = (Integer) builder.get(PreviewParameter.KEY_THERMAL_LEVEL);
            apsRequestTag.mThermalLevel = num != null ? num.intValue() : 0;
            apsRequestTag.mbPhotoWaterMarkEnable = cameraRequestTag.mbPhotoWaterMarkEnable;
        }
        cameraRequestTag.mbUltraResolutionEnabled = "on"
                .equals(builder.get(PreviewParameter.KEY_ULTRA_HIGH_RESOLUTION_ENABLE));
        cameraRequestTag.mbFaceBeautyOpen = "on".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
        cameraRequestTag.mNeonEnable = "on".equals(builder.get(PreviewParameter.KEY_PORTRAIT_NEON_ENABLE));
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str2);
        if (sdkCameraDeviceConfig != null) {
            cameraRequestTag.mStreamerEnable = "on".equals((String) sdkCameraDeviceConfig.getConfigureParameter()
                    .get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE));
        }
        Integer num2 = (Integer) builder.get(PreviewParameter.KEY_REAR_SELF_CAPTURE_ENABLE);
        if (num2 != null) {
            cameraRequestTag.mRearSelfCaptureEnable = num2.intValue();
        }
        cameraRequestTag.mbPiEnable = "on".equals(builder.get(PreviewParameter.KEY_AI_PHOTO));
        cameraRequestTag.mbGestureEnable = "on".equals(builder.get(PreviewParameter.KEY_GESTURE_ENABLE));
        cameraRequestTag.mbVideoRetentionOpen = "on".equals(builder.get(PreviewParameter.KEY_VIDEO_RETENTION_OPEN));
        long totalMemory = AlgoSwitchConfig.getTotalMemory();
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_REPAIR_MEMORY_4G_SUPPORT, true))
                .booleanValue() || CameraConstant.MEMORY_GB_4G <= totalMemory
                || !"front_main".equals(cameraRequestTag.mCameraType)) {
            return;
        }
        cameraRequestTag.mbPortraitRepairOpen = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<Size> getPictureSizes(String str, int i) {
        int i2;
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = CameraCharacteristicsHelper
                .getCameraCharacteristicsWrapper(str);
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristicsWrapper
                .get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(streamConfigurationMap.getOutputSizes(i)));
        if (32 == i) {
            return arrayList;
        }
        Size[] highResolutionOutputSizes = streamConfigurationMap.getHighResolutionOutputSizes(i);
        if (highResolutionOutputSizes != null) {
            arrayList.addAll(Arrays.asList(highResolutionOutputSizes));
        }
        int[] iArr = (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_CUSTOM_JPEG_SIZE);
        if (iArr != null) {
            for (int i3 = 0; i3 < iArr.length; i3++) {
                if (i3 % 2 == 0 && (i2 = i3 + 1) < iArr.length) {
                    arrayList.add(new Size(iArr[i3], iArr[i2]));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSensorNumberFromConfig(String str) {
        LinkedList<Pair<String, String>> linkedList;
        Map<String, LinkedList<Pair<String, String>>> sensorNumberMap = CameraConfigHelper.getSensorNumberMap();
        if (sensorNumberMap == null || sensorNumberMap.isEmpty()
                || (linkedList = sensorNumberMap.get(getModeName())) == null || linkedList.isEmpty()) {
            return 1;
        }
        Iterator<Pair<String, String>> it = linkedList.iterator();
        while (it.hasNext()) {
            Pair<String, String> next = it.next();
            if (TextUtils.equals(str, (String) next.first)) {
                String str2 = (String) next.second;
                CameraUnitLog.d(TAG, "getSensorNumberFromConfig, value: " + str2);
                return Integer.parseInt(str2);
            }
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateAllParameterRanges(CameraDeviceInfoImpl cameraDeviceInfoImpl, String str) {
        setFeatureMap(str);
        Map<String, FeatureInterface> map = this.mFeatureMap;
        if (map == null) {
            CameraUnitLog.v(TAG, "updateAllParameterRange, no need update");
            return;
        }
        for (String str2 : map.keySet()) {
            FeatureInterface featureInterface = this.mFeatureMap.get(str2);
            if (featureInterface != null) {
                String valueType = featureInterface.getValueType();
                int featureCategory = featureInterface.getFeatureCategory();
                List<String> supportValues = featureInterface.getSupportValues();
                if (supportValues == null) {
                    CameraUnitLog.i(TAG, "updateAllParameterRange, featureName: " + str2 + ", cameraType: " + str
                            + ", this feature not config in this camera type");
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < supportValues.size(); i++) {
                        arrayList.add(Util.getValue(valueType, supportValues.get(i)));
                    }
                    CameraUnitLog.i(TAG, "updateAllParameterRange, featureName: " + str2 + ", parameterName: " + str2
                            + ", configValue: " + supportValues + ", after convert: " + arrayList);
                    if (1 == featureCategory) {
                        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(str2, arrayList);
                    } else if (3 == featureCategory) {
                        cameraDeviceInfoImpl.getConfigureParameterRangeMap().put(str2, arrayList);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> getFeaturesFromConfig(@NonNull Parameter parameter) {
        HashMap hashMap = new HashMap();
        if (parameter.getCustomKeys() != null) {
            for (Parameter.Key<?> key : parameter.getCustomKeys()) {
                if (parameter.get(key) instanceof Integer) {
                    hashMap.put(key.getName(), parameter.get(key).toString());
                } else if (parameter.get(key) instanceof String) {
                    hashMap.put(key.getName(), (String) parameter.get(key));
                } else if (parameter.get(key) instanceof Range) {
                    hashMap.put(key.getName(), ((Range) parameter.get(key)).toString());
                } else {
                    CameraUnitLog.v(TAG,
                            "getFeaturesFromConfig key: " + key.getName() + ", value: " + parameter.get(key));
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean needPreviewMeta(String str) {
        return AlgoSwitchConfig.getSupportApsPreview();
    }

    boolean needVideoMeta(String str) {
        return needPreviewMeta(str);
    }

    @NonNull
    private LinkedList<Pair<String, String>> getUseCaseValues(String str) {
        LinkedList<Pair<String, String>> useCaseValues = CameraConfigHelper.getUseCaseValues(str);
        if (useCaseValues == null || useCaseValues.isEmpty()) {
            throw new RuntimeException("getUseCaseValues, " + str + "'s usecase_info are not configured!");
        }
        return useCaseValues;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x01f1 */
    /*
     * JADX WARN: Removed duplicated region for block: B:121:? A[RETURN, SYNTHETIC]
     */
    private SurfaceWrapper getSurfaceWrapper(SdkCameraDeviceConfig sdkCameraDeviceConfig, int i, String str,
            String str2, Size size, Size size2, boolean z, String str3) {
        String surfaceUsageBySurfaceType = getSurfaceUsageBySurfaceType(str);
        int surfaceFormatBySurfaceType = getSurfaceFormatBySurfaceType(str, str2, str3);
        SurfaceWrapper surfaceWrapper = null;
        switch (str.hashCode()) {
            case -2099251545: // reprocess_input
                if (str.equals("reprocess_input"))
                    return sSurfaceDecision.createReprocessSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                            surfaceFormatBySurfaceType);
                break;
            case -1513135880: // raw_output
            case 163290031: // capture_raw
            case 163297377: // capture_yuv
            case 369148211: // raw16_output
            case 552585030: // capture
            case 1246732337: // capture_raw_dol
            case 1238491229: // tuning_data_raw
            case 1238498575: // tuning_data_yuv
            case 1267070711: // reprocess_yuv
            case 2043358779: // capture_yuv_mfnr
                if (str.equals("raw_output") || str.equals("capture_raw") || str.equals("capture_yuv")
                        || str.equals("raw16_output") || str.equals("capture") || str.equals("capture_raw_dol")
                        || str.equals("tuning_data_raw") || str.equals("tuning_data_yuv") || str.equals("reprocess_yuv")
                        || str.equals("capture_yuv_mfnr")) {
                    return sSurfaceDecision.createReaderSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                            surfaceFormatBySurfaceType, getCaptureImageReaderMaxImages());
                }
                break;
            case -318184504: // preview
                if (str.equals("preview")) {
                    surfaceWrapper = sdkCameraDeviceConfig.getPreviewSurface(str2);
                    Long previewReaderUsage = getPreviewReaderUsage(str2);
                    if (surfaceWrapper == null && z) {
                        surfaceWrapper = sSurfaceDecision.createReaderSurface(i, surfaceUsageBySurfaceType, str2, size,
                                size2, surfaceFormatBySurfaceType, getPreviewImageReaderMaxImages(), (Long) null,
                                previewReaderUsage);
                    } else if (surfaceWrapper != null && z) {
                        surfaceWrapper = sSurfaceDecision.createReaderSurface(surfaceWrapper.getPhysicalCameraId(),
                                surfaceUsageBySurfaceType, surfaceWrapper.getCameraType(),
                                surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize(),
                                surfaceFormatBySurfaceType, getPreviewImageReaderMaxImages(), (Long) null,
                                previewReaderUsage);
                    }
                    if (surfaceWrapper != null) {
                        surfaceWrapper.setSurfaceUsage(surfaceUsageBySurfaceType);
                    }
                    return surfaceWrapper;
                }
                break;
            case 112202875: // video
                if (str.equals("video")) {
                    Surface surface = sdkCameraDeviceConfig.getVideoSurface() != null
                            ? sdkCameraDeviceConfig.getVideoSurface().getSurface()
                            : null;
                    if (surface == null) {
                        SurfacePool.getInstance().createVideoSurface();
                    } else {
                        SurfacePool.getInstance().setVideoSurface(surface);
                    }
                    return sSurfaceDecision.createReaderSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                            surfaceFormatBySurfaceType, getImageReaderMaxImages(str2), getVideoFrameReaderUsage(str2),
                            (Long) null);
                }
                break;
            case 1900115042: // video_recorder
                if (str.equals("video_recorder")) {
                    return sSurfaceDecision.createRecorderVideoSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                            surfaceFormatBySurfaceType,
                            sdkCameraDeviceConfig.getVideoSurface() != null
                                    ? sdkCameraDeviceConfig.getVideoSurface().getSurface()
                                    : null);
                }
                break;
            case 1214408581: // preview_in_preview
                if (str.equals("preview_in_preview")) {
                    String modeName = getModeName();
                    if ("photo_mode".equals(modeName) || "tilt_shift_mode".equals(modeName)) {
                        return sSurfaceDecision.createReaderSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                                surfaceFormatBySurfaceType, getPreviewImageReaderMaxImages());
                    }
                }
                break;
            case 694155830: // preview_frame
                if (str.equals("preview_frame")) {
                    surfaceWrapper = sSurfaceDecision.createReaderSurface(i, surfaceUsageBySurfaceType, str2, size,
                            size2, surfaceFormatBySurfaceType, getPreviewImageReaderMaxImages());
                    if (surfaceWrapper != null) {
                        surfaceWrapper.setSurfaceUsage("surface_key_preview_frame");
                    }
                    return surfaceWrapper;
                }
                break;
        }
        return null;
    }

    public String getSurfaceUsageBySurfaceType(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2099255641:
                if (str.equals("reprocess_input")) {
                    c = 0;
                    break;
                }
                break;
            case -1513135880:
                if (str.equals("raw_output")) {
                    c = 1;
                    break;
                }
                break;
            case -318184504:
                if (str.equals("preview")) {
                    c = 2;
                    break;
                }
                break;
            case 112202875:
                if (str.equals("video")) {
                    c = 3;
                    break;
                }
                break;
            case 163290031:
                if (str.equals("capture_raw")) {
                    c = 4;
                    break;
                }
                break;
            case 163297377:
                if (str.equals("capture_yuv")) {
                    c = 5;
                    break;
                }
                break;
            case 369148211:
                if (str.equals("raw16_output")) {
                    c = 6;
                    break;
                }
                break;
            case 552585030:
                if (str.equals("capture")) {
                    c = 7;
                    break;
                }
                break;
            case 694155830:
                if (str.equals("preview_frame")) {
                    c = '\b';
                    break;
                }
                break;
            case 1178919089:
                if (str.equals(CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_RAW_DOL)) {
                    c = '\t';
                    break;
                }
                break;
            case 1214408581:
                if (str.equals("preview_in_preview")) {
                    c = '\n';
                    break;
                }
                break;
            case 1238458461:
                if (str.equals("tuning_data_raw")) {
                    c = 11;
                    break;
                }
                break;
            case 1238465807:
                if (str.equals("tuning_data_yuv")) {
                    c = '\f';
                    break;
                }
                break;
            case 1267103479:
                if (str.equals("reprocess_yuv")) {
                    c = '\r';
                    break;
                }
                break;
            case 1466069808:
                if (str.equals(CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_VIDEO_AI_DEPTH)) {
                    c = 14;
                    break;
                }
                break;
            case 1899077634:
                if (str.equals("video_recorder")) {
                    c = 15;
                    break;
                }
                break;
            case 2043358779:
                if (str.equals(CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR)) {
                    c = 16;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "surface_key_reprocess";
            case 1:
            case 4:
            case 5:
            case 6:
            case 7:
                return "surface_key_picture";
            case 2:
                return "surface_key_preview";
            case 3:
            case 15:
                return "surface_key_recording";
            case '\b':
                return "surface_key_preview_frame";
            case '\t':
                return "surface_key_picture_dol";
            case '\n':
                return "surface_key_preview_in_preview";
            case 11:
                return "surface_key_tuning_raw";
            case '\f':
                return "surface_key_tuning_yuv";
            case '\r':
                return "surface_key_reprocess_yuv";
            case 14:
                return CameraSessionEntity.SurfaceUsage.AI_DEPTH;
            case 16:
                return "surface_key_picture_mfnr";
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getPhysicalId(String str, String str2, String str3) {
        int i = -1;
        if ("reprocess_yuv".equals(str3)) {
            return -1;
        }
        if ("front_dual".equals(str)) {
            if ("preview".equals(str3)) {
                if ("front_main".equals(str2)) {
                    return getPhysicalId(str, 0);
                }
                if ("front_wide".equals(str2)) {
                    return -1;
                }
            } else if ("front_main".equals(str2)) {
                return getPhysicalId(str, 0);
            } else {
                if ("front_wide".equals(str2)) {
                    return getPhysicalId(str, 1);
                }
            }
            return getPhysicalId(str, 0);
        }
        if ("rear_sat".equals(str) || "rear_portrait".equals(str)) {
            if ("rear_main".equals(str2)) {
                i = getPhysicalId(str, 0);
            } else if ("rear_wide".equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2)) {
                i = getPhysicalId(str, 1);
            } else if ("rear_tele".equals(str2)) {
                i = getPhysicalId(str, 2);
            } else if ("rear_portrait_mono_1".equals(str2) || "rear_portrait_mono_2".equals(str)) {
                i = getPhysicalId(str, 3);
            }
        }
        if ("rear_portrait_mono_1".equals(str)) {
            if ("rear_main".equals(str2)) {
                i = getPhysicalId(str, 0);
            } else if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2)) {
                i = getPhysicalId(str, 1);
            }
        }
        if ("rear_portrait_mono_2".equals(str)) {
            if ("rear_main".equals(str2)) {
                return getPhysicalId(str, 0);
            }
            return CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str2) ? getPhysicalId(str, 1) : i;
        }
        return i;
    }

    private int getPhysicalId(String str, int i) {
        String[] physicalCameraIds = CameraCharacteristicsHelper.getPhysicalCameraIds(str);
        if (physicalCameraIds == null || physicalCameraIds.length <= i) {
            return -1;
        }
        return Integer.parseInt(physicalCameraIds[i]);
    }

    @Override // com.oplus.ocs.camera.common.surface.SurfaceControlInterface
    public LinkedList<SurfaceWrapper> buildStreamSurface(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str) {
        LinkedList<SurfaceWrapper> linkedList = new LinkedList<>();
        SurfaceWrapper defaultPreviewSurface = sdkCameraDeviceConfig.getDefaultPreviewSurface();
        String surfaceUseCase = getSurfaceUseCase(str,
                sdkCameraDeviceConfig.getConfigureParameter().containCustomKey(ConfigureParameter.KEY_IS_FROM_MAIN_MENU)
                        ? ((Boolean) sdkCameraDeviceConfig.getConfigureParameter()
                                .get(ConfigureParameter.KEY_IS_FROM_MAIN_MENU)).booleanValue()
                        : true);
        LinkedList<Pair<String, String>> useCaseValues = getUseCaseValues(surfaceUseCase);
        CameraUnitLog.d(TAG, "buildStreamSurface, cameraType: " + str + ", caseName: " + surfaceUseCase
                + ", linkedList: " + useCaseValues + ", fistPreview: " + defaultPreviewSurface);
        Iterator<Pair<String, String>> it = useCaseValues.iterator();
        while (it.hasNext()) {
            Pair<String, String> next = it.next();
            String str2 = (String) next.first;
            String cameraType = "var_camera".equals(next.second) ? defaultPreviewSurface.getCameraType()
                    : (String) next.second;
            Pair<Size, Size> surfaceSize = getSurfaceSize(sdkCameraDeviceConfig, str2, cameraType, str);
            int physicalId = getPhysicalId(str, cameraType, str2);
            CameraUnitLog.d(TAG, "buildStreamSurface, surfaceSize: " + surfaceSize + " , configuredSurfaceType: " + str2
                    + " , cameraType: " + str + " , physicalId: " + physicalId);
            SurfaceWrapper surfaceWrapper = getSurfaceWrapper(sdkCameraDeviceConfig, physicalId, str2, cameraType,
                    (Size) surfaceSize.first, (Size) surfaceSize.second,
                    isReuseAppSurface(surfaceUseCase, str2, cameraType) ^ true, str);
            if (surfaceWrapper != null) {
                linkedList.add(surfaceWrapper);
            }
        }
        return linkedList;
    }

    protected int getCaptureFormat() {
        CameraPreviewCallbackAdapter.PreviewResult previewResult = this.mPreviewResult;
        if (previewResult != null) {
            return ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Parameter getConfigureParameter(String str) {
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str);
        if (sdkCameraDeviceConfig == null) {
            throw new RuntimeException("config not been null!");
        }
        return sdkCameraDeviceConfig.getConfigureParameter();
    }

    public int getSurfaceFormatBySurfaceType(String str, String str2, String str3) {
        if ("preview".equals(str) || "capture".equals(str) || "video".equals(str) || "capture_yuv".equals(str)
                || "video_recorder".equals(str) || "reprocess_yuv".equals(str)
                || CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR.equals(str)
                || "preview_in_preview".equals(str) || "preview_frame".equals(str)
                || CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_VIDEO_AI_DEPTH.equals(str)) {
            return 35;
        }
        if ("capture_raw".equals(str) || "reprocess_input".equals(str) || "raw_output".equals(str)
                || CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_RAW_DOL.equals(str)) {
            return getRawFormat(str3);
        }
        if ("tuning_data_raw".equals(str) || "tuning_data_yuv".equals(str)) {
            return 842094169;
        }
        return "raw16_output".equals(str) ? 32 : 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getRawFormat(String str) {
        return (!((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_CAPTURE_WITH_RAW10, false))
                .booleanValue() || getModeName().equals("night_mode") || getModeName().equals("professional_mode")
                || getModeName().equals("long_exposure_mode")
                || getModeName().equals(CameraConstant.ModeName.TIME_LAPSE_PRO_MODE)
                || getModeName().equals(CameraConstant.ModeName.STREET_MODE)
                || getModeName().equals(CameraConstant.ModeName.STAR_VIDEO_MODE)
                || getModeName().equals(CameraConstant.ModeName.STAR_CAPTURE_MODE)) ? 32 : 37;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /*
     * JADX WARN: Code restructure failed: missing block: B:166:0x02bd, code lost:
     * if (r8 != false) goto L169;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:177:0x02ea, code lost:
     * if (2 == r12) goto L230;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:223:0x0389, code lost:
     * if (1 == r5[0]) goto L198;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:82:0x0176, code lost:
     * if (1 == r9[0]) goto L79;
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:196:0x032a A[Catch: all ->
     * 0x04cf, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x0017, B:11:0x0027,
     * B:14:0x003f, B:16:0x004d, B:18:0x005d, B:22:0x0072, B:24:0x0076, B:29:0x0089,
     * B:249:0x0483, B:34:0x0099, B:36:0x00a1, B:38:0x00a5, B:41:0x00b5,
     * B:43:0x00b9, B:46:0x00c9, B:48:0x00d9, B:51:0x00e7, B:53:0x00f3, B:55:0x00f7,
     * B:57:0x0105, B:66:0x013d, B:68:0x0141, B:71:0x0153, B:74:0x015b, B:77:0x0160,
     * B:79:0x0168, B:81:0x0174, B:85:0x017b, B:87:0x0187, B:90:0x018c, B:92:0x0198,
     * B:59:0x0116, B:61:0x0126, B:64:0x0139, B:96:0x01a0, B:98:0x01ac,
     * B:100:0x01be, B:103:0x01c8, B:105:0x01d4, B:107:0x01e0, B:111:0x01f0,
     * B:114:0x01fe, B:116:0x0202, B:119:0x0214, B:121:0x0217, B:123:0x021f,
     * B:125:0x022b, B:128:0x0231, B:130:0x023d, B:133:0x0243, B:135:0x024f,
     * B:141:0x025b, B:145:0x0266, B:147:0x0270, B:150:0x0275, B:152:0x027b,
     * B:154:0x0283, B:155:0x029b, B:157:0x02a7, B:194:0x0326, B:196:0x032a,
     * B:201:0x033d, B:206:0x0349, B:210:0x0355, B:212:0x0359, B:216:0x0365,
     * B:218:0x0369, B:220:0x0379, B:222:0x0385, B:241:0x03c9, B:227:0x0393,
     * B:229:0x03a0, B:232:0x03a6, B:234:0x03b2, B:237:0x03ba, B:172:0x02ca,
     * B:174:0x02dd, B:180:0x02f0, B:183:0x02fa, B:185:0x0306, B:187:0x0312,
     * B:243:0x046a, B:245:0x0474), top: B:255:0x0009 }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:222:0x0385 A[Catch: all ->
     * 0x04cf, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x0017, B:11:0x0027,
     * B:14:0x003f, B:16:0x004d, B:18:0x005d, B:22:0x0072, B:24:0x0076, B:29:0x0089,
     * B:249:0x0483, B:34:0x0099, B:36:0x00a1, B:38:0x00a5, B:41:0x00b5,
     * B:43:0x00b9, B:46:0x00c9, B:48:0x00d9, B:51:0x00e7, B:53:0x00f3, B:55:0x00f7,
     * B:57:0x0105, B:66:0x013d, B:68:0x0141, B:71:0x0153, B:74:0x015b, B:77:0x0160,
     * B:79:0x0168, B:81:0x0174, B:85:0x017b, B:87:0x0187, B:90:0x018c, B:92:0x0198,
     * B:59:0x0116, B:61:0x0126, B:64:0x0139, B:96:0x01a0, B:98:0x01ac,
     * B:100:0x01be, B:103:0x01c8, B:105:0x01d4, B:107:0x01e0, B:111:0x01f0,
     * B:114:0x01fe, B:116:0x0202, B:119:0x0214, B:121:0x0217, B:123:0x021f,
     * B:125:0x022b, B:128:0x0231, B:130:0x023d, B:133:0x0243, B:135:0x024f,
     * B:141:0x025b, B:145:0x0266, B:147:0x0270, B:150:0x0275, B:152:0x027b,
     * B:154:0x0283, B:155:0x029b, B:157:0x02a7, B:194:0x0326, B:196:0x032a,
     * B:201:0x033d, B:206:0x0349, B:210:0x0355, B:212:0x0359, B:216:0x0365,
     * B:218:0x0369, B:220:0x0379, B:222:0x0385, B:241:0x03c9, B:227:0x0393,
     * B:229:0x03a0, B:232:0x03a6, B:234:0x03b2, B:237:0x03ba, B:172:0x02ca,
     * B:174:0x02dd, B:180:0x02f0, B:183:0x02fa, B:185:0x0306, B:187:0x0312,
     * B:243:0x046a, B:245:0x0474), top: B:255:0x0009 }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:227:0x0393 A[Catch: all ->
     * 0x04cf, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x0017, B:11:0x0027,
     * B:14:0x003f, B:16:0x004d, B:18:0x005d, B:22:0x0072, B:24:0x0076, B:29:0x0089,
     * B:249:0x0483, B:34:0x0099, B:36:0x00a1, B:38:0x00a5, B:41:0x00b5,
     * B:43:0x00b9, B:46:0x00c9, B:48:0x00d9, B:51:0x00e7, B:53:0x00f3, B:55:0x00f7,
     * B:57:0x0105, B:66:0x013d, B:68:0x0141, B:71:0x0153, B:74:0x015b, B:77:0x0160,
     * B:79:0x0168, B:81:0x0174, B:85:0x017b, B:87:0x0187, B:90:0x018c, B:92:0x0198,
     * B:59:0x0116, B:61:0x0126, B:64:0x0139, B:96:0x01a0, B:98:0x01ac,
     * B:100:0x01be, B:103:0x01c8, B:105:0x01d4, B:107:0x01e0, B:111:0x01f0,
     * B:114:0x01fe, B:116:0x0202, B:119:0x0214, B:121:0x0217, B:123:0x021f,
     * B:125:0x022b, B:128:0x0231, B:130:0x023d, B:133:0x0243, B:135:0x024f,
     * B:141:0x025b, B:145:0x0266, B:147:0x0270, B:150:0x0275, B:152:0x027b,
     * B:154:0x0283, B:155:0x029b, B:157:0x02a7, B:194:0x0326, B:196:0x032a,
     * B:201:0x033d, B:206:0x0349, B:210:0x0355, B:212:0x0359, B:216:0x0365,
     * B:218:0x0369, B:220:0x0379, B:222:0x0385, B:241:0x03c9, B:227:0x0393,
     * B:229:0x03a0, B:232:0x03a6, B:234:0x03b2, B:237:0x03ba, B:172:0x02ca,
     * B:174:0x02dd, B:180:0x02f0, B:183:0x02fa, B:185:0x0306, B:187:0x0312,
     * B:243:0x046a, B:245:0x0474), top: B:255:0x0009 }]
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0091 */
    /*
     * JADX WARN: Removed duplicated region for block: B:34:0x0099 A[Catch: all ->
     * 0x04cf, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x0017, B:11:0x0027,
     * B:14:0x003f, B:16:0x004d, B:18:0x005d, B:22:0x0072, B:24:0x0076, B:29:0x0089,
     * B:249:0x0483, B:34:0x0099, B:36:0x00a1, B:38:0x00a5, B:41:0x00b5,
     * B:43:0x00b9, B:46:0x00c9, B:48:0x00d9, B:51:0x00e7, B:53:0x00f3, B:55:0x00f7,
     * B:57:0x0105, B:66:0x013d, B:68:0x0141, B:71:0x0153, B:74:0x015b, B:77:0x0160,
     * B:79:0x0168, B:81:0x0174, B:85:0x017b, B:87:0x0187, B:90:0x018c, B:92:0x0198,
     * B:59:0x0116, B:61:0x0126, B:64:0x0139, B:96:0x01a0, B:98:0x01ac,
     * B:100:0x01be, B:103:0x01c8, B:105:0x01d4, B:107:0x01e0, B:111:0x01f0,
     * B:114:0x01fe, B:116:0x0202, B:119:0x0214, B:121:0x0217, B:123:0x021f,
     * B:125:0x022b, B:128:0x0231, B:130:0x023d, B:133:0x0243, B:135:0x024f,
     * B:141:0x025b, B:145:0x0266, B:147:0x0270, B:150:0x0275, B:152:0x027b,
     * B:154:0x0283, B:155:0x029b, B:157:0x02a7, B:194:0x0326, B:196:0x032a,
     * B:201:0x033d, B:206:0x0349, B:210:0x0355, B:212:0x0359, B:216:0x0365,
     * B:218:0x0369, B:220:0x0379, B:222:0x0385, B:241:0x03c9, B:227:0x0393,
     * B:229:0x03a0, B:232:0x03a6, B:234:0x03b2, B:237:0x03ba, B:172:0x02ca,
     * B:174:0x02dd, B:180:0x02f0, B:183:0x02fa, B:185:0x0306, B:187:0x0312,
     * B:243:0x046a, B:245:0x0474), top: B:255:0x0009 }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:68:0x0141 A[Catch: all ->
     * 0x04cf, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x0017, B:11:0x0027,
     * B:14:0x003f, B:16:0x004d, B:18:0x005d, B:22:0x0072, B:24:0x0076, B:29:0x0089,
     * B:249:0x0483, B:34:0x0099, B:36:0x00a1, B:38:0x00a5, B:41:0x00b5,
     * B:43:0x00b9, B:46:0x00c9, B:48:0x00d9, B:51:0x00e7, B:53:0x00f3, B:55:0x00f7,
     * B:57:0x0105, B:66:0x013d, B:68:0x0141, B:71:0x0153, B:74:0x015b, B:77:0x0160,
     * B:79:0x0168, B:81:0x0174, B:85:0x017b, B:87:0x0187, B:90:0x018c, B:92:0x0198,
     * B:59:0x0116, B:61:0x0126, B:64:0x0139, B:96:0x01a0, B:98:0x01ac,
     * B:100:0x01be, B:103:0x01c8, B:105:0x01d4, B:107:0x01e0, B:111:0x01f0,
     * B:114:0x01fe, B:116:0x0202, B:119:0x0214, B:121:0x0217, B:123:0x021f,
     * B:125:0x022b, B:128:0x0231, B:130:0x023d, B:133:0x0243, B:135:0x024f,
     * B:141:0x025b, B:145:0x0266, B:147:0x0270, B:150:0x0275, B:152:0x027b,
     * B:154:0x0283, B:155:0x029b, B:157:0x02a7, B:194:0x0326, B:196:0x032a,
     * B:201:0x033d, B:206:0x0349, B:210:0x0355, B:212:0x0359, B:216:0x0365,
     * B:218:0x0369, B:220:0x0379, B:222:0x0385, B:241:0x03c9, B:227:0x0393,
     * B:229:0x03a0, B:232:0x03a6, B:234:0x03b2, B:237:0x03ba, B:172:0x02ca,
     * B:174:0x02dd, B:180:0x02f0, B:183:0x02fa, B:185:0x0306, B:187:0x0312,
     * B:243:0x046a, B:245:0x0474), top: B:255:0x0009 }]
     */
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey,
            PreviewParameter.Builder builder) {
        synchronized (this.mPreviewResultLock) {
            String usage = surfaceKey.getUsage();
            boolean isPreview = "surface_key_preview".equals(usage) || "surface_key_preview_frame".equals(usage);
            boolean isBurstShot = "on".equals(builder.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));

            boolean isRawFormat = false;
            if (this.mPreviewResult != null && !isBurstShot) {
                int previewFormat = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT))
                        .intValue();
                isRawFormat = (32 == previewFormat || 34 == previewFormat || 36 == previewFormat);
            }

            boolean isMixedFormat = false;
            if (this.mPreviewResult != null && !isBurstShot) {
                isMixedFormat = ((Boolean) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT)).booleanValue();
            }

            if ("start_preview".equals(str2)) {
                return isPreview;
            }

            if ("before_take_picture".equals(str2)) {
                if (isPreview) {
                    if (this.mPreviewResult != null) {
                        return 5 != ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE))
                                .intValue();
                    }
                    return true;
                }

                String usageStr = surfaceKey.getUsage();
                if ("surface_key_picture".equals(usageStr) || "surface_key_picture_mfnr".equals(usageStr)) {
                    int rawFormat = getRawFormat(str);
                    boolean isRaw37 = rawFormat == 37;
                    int[] captureFormatList = getCaptureFormatList(surfaceKey.getCameraType());
                    boolean formatMatch = false;
                    if (captureFormatList != null && captureFormatList.length > 0 && !isBurstShot) {
                        for (int f : captureFormatList) {
                            if (f == surfaceKey.getFormat()) {
                                CameraUnitLog.d("BaseMode", "needAddToTarget match, format: " + f);
                                formatMatch = true;
                                break;
                            }
                        }
                    }

                    int format = surfaceKey.getFormat();
                    if (format != 32) {
                        if (format == 37) {
                            if (isRaw37 && (!isRawFormat || isMixedFormat)) {
                                formatMatch = true;
                            }
                        } else if (format == 34 || format == 35) {
                            if (!isRawFormat) {
                                formatMatch = true;
                            }
                        }
                    } else if (!isRaw37 && !isRawFormat || isMixedFormat) {
                        formatMatch = true;
                    }

                    if (this.mPreviewResult != null) {
                        int[] sensorMask = (int[]) this.mPreviewResult
                                .get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MASK);
                        boolean platformCondition = PlatformUtil.isQualcommPlatform() || !isRawFormat
                                || (2 == this.mApsDecisionFeatureType && 37 == surfaceKey.getFormat());

                        if ("rear_sat".equals(str) && sensorMask != null && platformCondition
                                && sensorMask.length >= 3) {
                            if (Util.getNightStateDecision(this.mPreviewResult) <= 0 || isBurstShot) {
                                if ("rear_wide".equals(surfaceKey.getCameraType())) {
                                    formatMatch = (1 == sensorMask[0]);
                                } else if ("rear_main".equals(surfaceKey.getCameraType())) {
                                    formatMatch = (1 == sensorMask[1]);
                                } else if ("rear_tele".equals(surfaceKey.getCameraType())) {
                                    formatMatch = (1 == sensorMask[2]);
                                } else if ("rear_mono_1".equals(surfaceKey.getCameraType())) {
                                    formatMatch = true;
                                }
                            }
                        }
                    }
                    return formatMatch;
                } else if ("surface_key_tuning_yuv".equals(usageStr)) {
                    if (this.mPreviewResult != null) {
                        if (((Boolean) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT))
                                .booleanValue()
                                && -1 != ((Integer) this.mPreviewResult
                                        .get(ApsDecisionParameter.KEY_DECISION_HDR_BRIGHTEN_INDEX)).intValue()) {
                            return true;
                        }
                        if (35 != ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE))
                                .intValue()
                                && 38 != ((Integer) this.mPreviewResult
                                        .get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue()) {
                            return !isRawFormat;
                        }
                        return true;
                    }
                } else if ("surface_key_tuning_raw".equals(usageStr)) {
                    if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_MTK_SAT_FUSION_SUPPORT,
                            false)).booleanValue() && "rear_sat".equals(str) && 2 != this.mApsDecisionFeatureType) {
                        if (!"rear_wide".equals(surfaceKey.getCameraType())
                                && !"rear_main".equals(surfaceKey.getCameraType())
                                && "rear_tele".equals(surfaceKey.getCameraType())) {
                            return true;
                        }
                    }
                    if (2 == this.mApsDecisionFeatureType) {
                        if ("rear_sat".equals(surfaceKey.getCameraType()))
                            return true;
                        if (this.mPreviewResult != null) {
                            int[] mask = (int[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MASK);
                            if ("rear_sat".equals(str) && mask != null && mask.length >= 3
                                    && Util.getNightStateDecision(this.mPreviewResult) <= 0) {
                                if ("rear_wide".equals(surfaceKey.getCameraType()))
                                    return 1 == mask[0];
                                if ("rear_main".equals(surfaceKey.getCameraType()))
                                    return 1 == mask[1];
                                if ("rear_tele".equals(surfaceKey.getCameraType()))
                                    return 1 == mask[2];
                            }
                        }
                    } else if (!isRawFormat || isMixedFormat) {
                        return true;
                    }
                }
            }
            if ("start_recording".equals(str2) && "surface_key_recording".equals(surfaceKey.getUsage())) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setVideoWaterMarkParams(PreviewParameter.Builder builder, String str,
            CameraRequestTag cameraRequestTag) {
        Bundle bundle = (Bundle) builder.get(PreviewParameter.KEY_WATERMARK_PARAM);
        if (!isVideoWaterMarkOpen(str)) {
            if (2 == AlgoSwitchConfig.getApsVersion()) {
                builder.set(PreviewParameter.KEY_VIDEO_WATERMARK_ENABLE, new byte[] { 0 });
                builder.set(PreviewParameter.KEY_VIDEO_WATERMARK_PATH, "NULL".getBytes(StandardCharsets.UTF_8));
            }
        } else if (bundle != null) {
            int i = bundle.getInt("orientation", 0);
            if (isHalVideoWaterMark()) {
                String string = bundle.getString("filePath");
                builder.set(PreviewParameter.KEY_VIDEO_WATERMARK_ENABLE, new byte[] { 1 });
                builder.set(PreviewParameter.KEY_VIDEO_WATERMARK_ORIENTATION, new int[] { i });
                builder.set(PreviewParameter.KEY_VIDEO_WATERMARK_PATH, string.getBytes(StandardCharsets.UTF_8));
                return;
            }
            cameraRequestTag.mbVideoWaterMarkEnable = true;
            cameraRequestTag.mVideoWaterMarkOrientation = i;
            fillWatermarkParam(cameraRequestTag, bundle);
        } else {
            CameraUnitLog.e(TAG, "setVideoWaterMarkParams, watermarkParam is null!");
        }
    }

    private final boolean needTuningData(HashMap<SurfaceKey, Surface> hashMap) {
        for (SurfaceKey surfaceKey : hashMap.keySet()) {
            String usage = surfaceKey.getUsage();
            if ("surface_key_tuning_raw".equals(usage) || "surface_key_tuning_yuv".equals(usage)) {
                return true;
            }
        }
        return false;
    }

    private boolean isVideoWaterMarkOpen(String str) {
        return "on".equals(getConfigureParameter(str).get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE));
    }

    private boolean isHalVideoWaterMark() {
        return ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_VIDEO_WATERMARK_HAL_SUPPORT, false))
                .booleanValue();
    }

    protected int getPreviewImageReaderMaxImages() {
        return ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PREVIEW_MAX_IMAGES, 20)).intValue();
    }

    protected int getCaptureImageReaderMaxImages() {
        return ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_CAPTURE_MAX_IMAGES, 20)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        synchronized (this.mPreviewResultLock) {
            if (((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAMERA_ID))
                    .intValue() == cameraRequestTag.mRearFrontCameraId
                    && ((this.mTagMap.get(cameraRequestTag.mCameraType) == null || TextUtils.equals(
                            (CharSequence) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_MODE),
                            ApsDataConvert.getApsModeName(this.mTagMap.get(cameraRequestTag.mCameraType).mModeName,
                                    cameraRequestTag.mRearFrontCameraId)))
                            && ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT))
                                    .intValue() > 0)) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Size getCaptureYuvMfnrSize(String str) {
        Size size = null;
        if ("rear_main".equals(str)) {
            size = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_PICTURE_SIZE, null);
        } else if ("rear_wide".equals(str)) {
            size = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_WIDE_PICTURE_SIZE, null);
        } else if ("rear_tele".equals(str)) {
            size = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_TELE_PICTURE_SIZE, null);
        }
        CameraUnitLog.i(TAG, "getCaptureYuvMfnrSize, cameraType: " + str + ", mfnrSize: " + size);
        return size;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public int isAllowedToTakePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler,
            CameraRequestTag cameraRequestTag) {
        int i;
        boolean z;
        if (!checkPreviewResult(cameraRequestTag)) {
            CameraUnitLog.v(TAG, "isAllowedToTakePicture, checkPreviewResult return false", true);
            return 1;
        }
        if (checkMemoryState(cameraRequestTag)) {
            i = -1;
            z = true;
        } else {
            CameraUnitLog.w(TAG, "isAllowedToTakePicture, MEMORY_NOT_ENOUGH");
            z = false;
            i = 1;
        }
        if (cameraRequestTag.mConsumerInterface.checkInputMemSize() && cameraRequestTag.mbBurstShot
                && "1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_BURST_CHECK_APS_MEMORY_SUPPORT))) {
            CameraUnitLog.w(TAG, "isAllowedToTakePicture, BURST_MEMORY_NOT_ENOUGH");
            z = false;
            i = 2;
        }
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_LOW_MEMORY_CHECK_INPUT_MEM_SUPPORT,
                false)).booleanValue()) {
            CameraCharacteristicsWrapper cameraCharacteristicsWrapper = CameraCharacteristicsHelper
                    .getCameraCharacteristicsWrapper(cameraRequestTag.mCameraType);
            if (!cameraRequestTag.mConsumerInterface.isVideoRecording() && PlatformUtil.isMtkPlatform()
                    && 1 == ((Integer) cameraCharacteristicsWrapper
                            .get(CameraCharacteristicsWrapper.KEY_MTK_LOW_MEMORY)).intValue()
                    && cameraRequestTag.mConsumerInterface.checkInputMemSize()) {
                CameraUnitLog.v(TAG, "isAllowedToTakePicture, check inputMemSize fail!", true);
                z = false;
                i = 1;
            }
        }
        if (z || cameraPictureCallbackAdapter == null || handler == null) {
            return 0;
        }
        CameraUnitLog.v(TAG, "isAllowedToTakePicture, code: " + i, true);
        StatisticsManager.getInstance().reportFunctionalError(StatisticConstant.FunctionalErrorKeys.KEY_CAPTURE_FAILED,
                2);
        cameraPictureCallbackAdapter.onCaptureFailed((CaptureRequest) null,
                new CameraPictureCallbackAdapter.PictureResult.Builder()
                        .set(ApsOtherParameter.KEY_CAPTURE_FAIL_CODE, Integer.valueOf(i)).build());
        return 2;
    }

    protected boolean isAiFlash(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        return previewResult != null && !PlatformUtil.isQualcommPlatform()
                && 29 == ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue()
                && 4 == ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT)).intValue();
    }

    protected CameraPreviewCallbackAdapter.PreviewResult selectTakePicturePreviewResult(
            PreviewParameter.Builder builder) {
        synchronized (this.mPreviewResultLock) {
            if (builder.containsKey(PreviewParameter.KEY_TAKE_PICTURE_DECISION_TIMESTAMP)) {
                long longValue = ((Long) builder.get(PreviewParameter.KEY_TAKE_PICTURE_DECISION_TIMESTAMP)).longValue();
                builder.remove(PreviewParameter.KEY_TAKE_PICTURE_DECISION_TIMESTAMP);
                CameraPreviewCallbackAdapter.PreviewResult previewResult = 0 != longValue
                        ? this.mPreviewResultCache.get(Long.valueOf(longValue))
                        : null;
                if (previewResult == null) {
                    CameraUnitLog.d(TAG, "selectTakePicturePreviewResult, can not find result from cache");
                    return this.mPreviewResult;
                }
                if (!isAiFlash(previewResult) && !isAiFlash(this.mPreviewResult)) {
                    CameraUnitLog.i(TAG, "selectTakePicturePreviewResult, appUseResult : " + Arrays
                            .toString((Object[]) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG)));
                    return previewResult;
                }
                CameraUnitLog.d(TAG, "selectTakePicturePreviewResult, use latest preview result for AI flash");
                return this.mPreviewResult;
            }
            return this.mPreviewResult;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        int intValue;
        int intValue2;
        int intValue3;
        synchronized (this.mPreviewResultLock) {
            this.mPreviewResult = previewResult;
            CameraUnitLog.i(TAG, "needStartPreview, mPreviewResult : "
                    + Arrays.toString((Object[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG)));
            if (previewResult != null && previewResult.getCaptureResult() != null) {
                this.mPreviewResultCache.put(Long.valueOf(
                        ((Long) previewResult.getCaptureResult().get(CaptureResult.SENSOR_TIMESTAMP)).longValue()),
                        previewResult);
            }
        }
        boolean z = false;
        if (previewResult.containsKey(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE.getName())
                && this.mApsDecisionFeatureType != (intValue3 = ((Integer) previewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue())) {
            this.mApsDecisionFeatureType = intValue3;
            z = true;
        }
        if (previewResult.containsKey(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE.getName())) {
            int intValue4 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE)).intValue();
            synchronized (this.mBracketLock) {
                if (this.mApsBracketMode != intValue4) {
                    this.mApsBracketMode = intValue4;
                    z = true;
                }
            }
        }
        if (previewResult.containsKey(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE.getName())
                && this.mAisState != (intValue2 = ((Integer) previewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE)).intValue())) {
            this.mAisState = intValue2;
            z = true;
        }
        if (!previewResult.containsKey(ApsDecisionParameter.KEY_PREVIEW_ASD_MOVING_OBJECT.getName())
                || this.mAsdMovingObject == (intValue = ((Integer) previewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_ASD_MOVING_OBJECT)).intValue())) {
            return z;
        }
        this.mAsdMovingObject = intValue;
        return true;
    }

    protected boolean checkMemoryState(CameraRequestTag cameraRequestTag) {
        int[] iArr;
        HashMap hashMap = new HashMap();
        int i = 0;
        if (cameraRequestTag.mRequestFormatList == null) {
            hashMap.put(Integer.valueOf(cameraRequestTag.mRequestFormat),
                    Integer.valueOf(cameraRequestTag.mRequestNum));
        } else {
            for (int i2 : cameraRequestTag.mRequestFormatList) {
                hashMap.put(Integer.valueOf(i2),
                        Integer.valueOf(((Integer) hashMap.getOrDefault(Integer.valueOf(i2), 0)).intValue() + 1));
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            int baseMemory = getBaseMemory(cameraRequestTag, intValue);
            i += calculateMemorySize(intValue, intValue2, baseMemory);
            CameraUnitLog.d(TAG, "checkMemoryState, format: " + intValue + ", num: " + intValue2 + ", baseMemory: "
                    + baseMemory + ", totalNum:" + cameraRequestTag.mRequestNum + ", needMemory: " + i, true);
        }
        return cameraRequestTag.mConsumerInterface.checkRuntimeState(i, getHalMemory());
    }

    private int getBaseMemory(CameraRequestTag cameraRequestTag, int i) {
        Size size;
        ApsRequestTag apsRequestTag = this.mTagMap.get(cameraRequestTag.mCameraType);
        if (apsRequestTag != null) {
            size = apsRequestTag.mPictureSize;
            if (size != null && (i == 32 || i == 37 || i == 36 || i == 34)) {
                size = CameraCharacteristicsHelper.getSizeByFormat(apsRequestTag.mCameraType, 1.3333333333333333d, 32);
            }
        } else {
            size = null;
        }
        if (useMfnrSizeToCalculateMemory() && 5 != cameraRequestTag.mApsDecisionFeatureType) {
            size = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_PICTURE_SIZE, null);
        }
        if (size != null) {
            return size.getWidth() * size.getHeight();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getRuntimeMemorySize(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag != null) {
            return cameraRequestTag.mConsumerInterface.getRuntimeMemorySize(getHalMemory());
        }
        return -1L;
    }

    protected long[] getFlexibleCapabilities(String str) {
        if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_SUPPORT_WCG2)) && isCaptureModeType()) {
            Size size = this.mTagMap.get(str).mPreviewSize;
            long[] jArr = { 0, 0, 0, size.getWidth(), size.getHeight(), 1, 0, 1 };
            CameraUnitLog.d(TAG, "getFlexibleCapabilities, value: " + Arrays.toString(jArr));
            return jArr;
        }
        return null;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public int delayCloseForCapturTime() {
        return this.mDelayCloseCameraForCapture;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean is10BitOpen(String str) {
        boolean equals = "on".equals(getConfigureParameter(str).get(ConfigureParameter.PHOTO_10BIT_ENABLE));
        this.mbTenBitOpen = equals;
        return equals;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag,
            ApsAdapterDecision.DecisionResult decisionResult) {
        if (cameraRequestTag == null) {
            return false;
        }
        if (1 == i || 2 == i) {
            if (2 == i && this.mbCaptureNotMatchMeta) {
                return false;
            }
            if (CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId)
                    && (cameraRequestTag.mbFaceBeautyOpen || !cameraRequestTag.mMakeupType.equals("none"))) {
                return !((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_NEED_MATCH_META, false))
                        .booleanValue();
            }
            AlgoSwitchConfig.PreviewConfig previewConfig = this.mPreviewAlgoConfig;
            if (previewConfig == null || !TextUtils.equals(previewConfig.mCameraMode, str)) {
                AlgoSwitchConfig.PreviewConfig previewConfig2 = AlgoSwitchConfig.getPreviewConfig(str,
                        cameraRequestTag.mRearFrontCameraId);
                this.mPreviewAlgoConfig = previewConfig2;
                if (previewConfig2 == null) {
                    CameraUnitLog.e(TAG, "matchPreviewTimestamp, config is null");
                    return false;
                }
            }
            AlgoSwitchConfig.PreviewConfig.Component component = this.mPreviewAlgoConfig.mComponentMap.get("preview");
            if (component != null && component.mbEnable) {
                List asList = Arrays.asList(component.mAlgoList);
                for (String str2 : selectAlgosMatchTimestamp()) {
                    if (asList.contains(str2)) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    protected String[] selectAlgosMatchTimestamp() {
        return SELECTED_ALGOS_FOR_TIMESTAMP_MATCH;
    }

    public void setNotMatchMetaStatus(boolean z) {
        this.mbCaptureNotMatchMeta = z;
    }

    private boolean isSetPreviewFrameSurface(String str) {
        return this.mConfigMap.get(str) != null && this.mConfigMap.get(str).isSetPreviewFrameSurface();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Size getSurfaceTuningSize(String str, String str2) {
        int[] iArr;
        CameraDeviceInfoInterface cameraDeviceInfo = getCameraDeviceInfo(str2);
        if ("tuning_data_yuv".equals(str)) {
            iArr = (int[]) cameraDeviceInfo.get(CameraCharacteristicsWrapper.KEY_MTK_TUNING_DATA_YUV_SIZE);
        } else {
            iArr = "tuning_data_raw".equals(str)
                    ? (int[]) cameraDeviceInfo.get(CameraCharacteristicsWrapper.KEY_MTK_TUNING_DATA_RAW_SIZE)
                    : null;
        }
        if (iArr == null || iArr.length < 2) {
            return null;
        }
        return new Size(iArr[0], iArr[1]);
    }
}
