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
import android.view.Surface;
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
import com.oplus.ocs.camera.common.surface.SurfacePool;
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

    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    private int calculateMemorySize(int i, int i2, int i3) {
        float f = 0.0f;
        float f2 = 0.0f;
        if (i == 32) {
            f = i3;
            f2 = 2.0f;
        } else {
            if (i == 256) {
                return i3 * i2;
            }
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
        }
        return ((int) (f * f2)) * i2;
    }

    private String chooseFormat(int i) {
        return i != 3 ? "1" : "2";
    }

    /*
     * JADX DEBUG: Can't inline method, not implemented redirect type for insn: ?:
     * TERNARY null = ((r0v0 int) != (0 int)) ? true : false
     */
    static /* synthetic */ boolean lambda$getCaptureFormatList$0(int i) {
        return i != 0;
    }

    protected String getFeatureName(String str) {
        return null;
    }

    protected long getHalMemory() {
        return 0L;
    }

    protected int getImageReaderMaxImages(String str) {
        return 20;
    }

    protected abstract String getModeName();

    protected Long getPreviewReaderUsage(String str) {
        return null;
    }

    @Override // com.oplus.ocs.camera.common.util.SensorManagerInterface
    public int getSensorType() {
        return 0;
    }

    protected Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str,
            String str2, String str3) {
        return null;
    }

    protected String getSurfaceUseCase(String str, boolean z) {
        return null;
    }

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

    protected boolean isReuseAppSurface(String str, String str2, String str3) {
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

    protected boolean needRemoveTarget(String str, String str2, @NonNull SurfaceKey surfaceKey,
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
        boolean z;
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
        z = false;
        switch (str) {
            case "before_take_picture":
                updateCaptureRequestTag(builder, cameraRequestTag, str2);
                if (builder.containCustomKey(PreviewParameter.KEY_CAPTURE_TIME)) {
                    builder.set(PreviewParameter.KEY_EXIF_TAG_DATETIME,
                            (Long) builder.get(PreviewParameter.KEY_CAPTURE_TIME));
                    return;
                }
                return;
            case "configure":
                if (!Util.isSystemCamera() && useOplusCameraCase(str2)) {
                    builder.set(ConfigureParameter.IS_OPLUS_PACKAGE, new byte[] { 1 });
                }
                updateFpsRange(getConfigureParameter(str2), builder, str2);
                if ("rear_sat".equals(str2) && PlatformUtil.isMtkPlatform()) {
                    builder.set(ConfigureParameter.KEY_MTK_MULTI_CAM_FEATURE_MODE, new int[] { 0 });
                }
                Boolean bool = (Boolean) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_TUNING_DATA_BUFFER_SUPPORT, false);
                builder.set(ConfigureParameter.KEY_TUNING_DATA_ENABLE,
                        new byte[] { (bool == null || !bool.booleanValue()) ? (byte) 1 : (byte) 2 });
                builder.set(ConfigureParameter.KEY_SESSION_REQUEST_FAST_LAUNCH, new int[] { 1 });
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
                    builder.set((CaptureRequest.Key<Integer>) CaptureRequest.CONTROL_EXTENDED_SCENE_MODE, 1);
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
            case "start_preview":
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
                break;
            default:
                return;
        }
    }

    protected void fillWatermarkParam(CameraRequestTag cameraRequestTag, Bundle bundle) {
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
        if (streamFpsRangesMap == null) {
            return false;
        }
        Size size = (Size) builder.get(ConfigureParameter.KEY_CONFIGURE_STREAM_SIZE);
        Range<Integer> range = streamFpsRangesMap
                .get(((String) builder.get(ConfigureParameter.KEY_CONFIGURE_OPERATION_MODE)) + "_" + size.getWidth()
                        + "_" + size.getHeight());
        if (range == null) {
            return false;
        }
        CameraUnitLog.e(TAG, "checkSetStreamFpsRange, set CONTROL_AE_TARGET_FPS_RANGE fps range to: " + range);
        builder.set((CaptureRequest.Key<Range<Integer>>) CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            if (PlatformUtil.isMtkPlatform()) {
                byte[] bArr = (byte[]) parameter.get(ConfigureParameter.KEY_REQUEST_ZSL_MODE);
                parameter.set((CaptureRequest.Key<Boolean>) CaptureRequest.CONTROL_ENABLE_ZSL,
                        Boolean.valueOf(bArr != null && bArr.length > 0 && 1 == bArr[0]));
            }
            synchronized (this.mPreviewResultLock) {
                if (this.mPreviewResult != null) {
                    parameter.set(PreviewParameter.KEY_MOVING_OBJECT, new int[] {
                            ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_ASD_MOVING_OBJECT))
                                    .intValue() });
                    parameter.set(PreviewParameter.KEY_APS_FEATURE_TYPE,
                            new int[] {
                                    ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE))
                                            .intValue() });
                    parameter.set(PreviewParameter.KEY_BRACKET_MODE,
                            new int[] {
                                    ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE))
                                            .intValue() });
                    parameter.set(PreviewParameter.KEY_SENSOR_MODE,
                            new int[] {
                                    ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MODE))
                                            .intValue() });
                    if (cameraRequestTag != null) {
                        int iIntValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE))
                                .intValue();
                        parameter.set(PreviewParameter.KEY_AIS_STATE, new int[] { iIntValue });
                        if (2 == iIntValue || 3 == iIntValue) {
                            parameter.set(PreviewParameter.KEY_BRACKET_MODE, new int[] { 11 });
                            parameter.set((CaptureRequest.Key<Boolean>) CaptureRequest.CONTROL_ENABLE_ZSL, false);
                            cameraRequestTag.mApsBracketMode = 11;
                        } else if (1 == iIntValue || 5 == iIntValue || 6 == iIntValue) {
                            parameter.set(PreviewParameter.KEY_BRACKET_MODE, new int[] { 1 });
                            parameter.set((CaptureRequest.Key<Boolean>) CaptureRequest.CONTROL_ENABLE_ZSL, false);
                            cameraRequestTag.mApsBracketMode = 1;
                        } else if (4 == iIntValue) {
                            parameter.set(PreviewParameter.KEY_BRACKET_MODE, new int[] { 0 });
                            parameter.set((CaptureRequest.Key<Boolean>) CaptureRequest.CONTROL_ENABLE_ZSL, true);
                            cameraRequestTag.mApsBracketMode = 0;
                        }
                        CameraUnitLog.v(TAG,
                                "updateStageParameter, tag.mRequestNum is " + cameraRequestTag.mRequestNum);
                        cameraRequestTag.mbNeedPreviewStream = new boolean[cameraRequestTag.mRequestNum];
                        for (int i = 0; i < cameraRequestTag.mRequestNum; i++) {
                            if (PlatformUtil.isMtkPlatform() && 4 == cameraRequestTag.mSupportCaptureZoomFeature) {
                                CameraUnitLog.v(TAG,
                                        "updateStageParameter, insensor zoom in mtk no need preview stream");
                                cameraRequestTag.mbNeedPreviewStream[i] = false;
                            } else if (5 == cameraRequestTag.mApsDecisionFeatureType) {
                                CameraUnitLog.v(TAG, "updateStageParameter, remosaic capture no need preview stream");
                                cameraRequestTag.mbNeedPreviewStream[i] = false;
                            } else if (PlatformUtil.isMtkPlatform() && cameraRequestTag.mCaptureEvList != null
                                    && cameraRequestTag.mCaptureEvList[i] != cameraRequestTag.mCaptureEvList[cameraRequestTag.mCaptureEvList.length
                                            - 1]) {
                                CameraUnitLog.v(TAG,
                                        "updateStageParameter, non-ev0 frame no need preview stream, ev list: "
                                                + Arrays.toString(cameraRequestTag.mCaptureEvList) + ", " + i + '/'
                                                + cameraRequestTag.mRequestNum);
                                cameraRequestTag.mbNeedPreviewStream[i] = false;
                            } else {
                                boolean zEquals = "1".equals(CameraConfigHelper
                                        .getConfigValue(DefaultUtill.KEY_RAW_HDR_CAPTURE_NEED_PREVIEWSURFACE_SUPPORT));
                                if (PlatformUtil.isMtkPlatform() && isSupportAlogRawHDR(cameraRequestTag) && !zEquals) {
                                    CameraUnitLog.v(TAG,
                                            "updateStageParameter, raw hdr capture no need preview stream");
                                    cameraRequestTag.mbNeedPreviewStream[i] = false;
                                } else {
                                    boolean zEquals2 = "1".equals(CameraConfigHelper.getConfigValue(
                                            DefaultUtill.KEY_BURST_CAPTURE_NEED_PREVIEWSURFACE_SUPPORT));
                                    if (PlatformUtil.isMtkPlatform() && cameraRequestTag.mbBurstShot && !zEquals2) {
                                        CameraUnitLog.v(TAG,
                                                "updateStageParameter, burst capture no need preview stream");
                                        cameraRequestTag.mbNeedPreviewStream[i] = false;
                                    } else {
                                        CameraUnitLog.v(TAG, "updateStageParameter, mbNeedPreviewStream is true");
                                        cameraRequestTag.mbNeedPreviewStream[i] = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
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
        CameraDeviceInfoInterface cameraDeviceInfoInterfaceCreateCameraDeviceInfo = createCameraDeviceInfo(str);
        this.mCameraDeviceInfoMap.put(str, cameraDeviceInfoInterfaceCreateCameraDeviceInfo);
        return cameraDeviceInfoInterfaceCreateCameraDeviceInfo;
    }

    @CallSuper
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = new CameraDeviceInfoImpl(getModeName(), str);
        cameraDeviceInfoImpl
                .setCameraCharacteristicsWrapper(CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str));
        cameraDeviceInfoImpl.setPhysicalCameraTypeList(Collections.singletonList(str));
        cameraDeviceInfoImpl.setDefaultPreviewConfigSizes(CameraConfigHelper.getSupportDefaultPreviewSizes());
        updateAllParameterRanges(cameraDeviceInfoImpl, str);
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    @CallSuper
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2,
            PreviewParameter.Builder builder) {
        CameraRequestTag cameraRequestTag;
        int i;
        List<SurfaceWrapper> pictureSurfaces;
        synchronized (this.mPreviewResultLock) {
            if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                this.mPreviewResult = selectTakePicturePreviewResult(builder);
            }
            cameraRequestTag = new CameraRequestTag(obj, handler);
            cameraRequestTag.mbBurstShot = "on".equals(builder.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));
            cameraRequestTag.mMaxBustShotNum = 20;
            if (builder.containsKey(PreviewParameter.KEY_IS_FROM_MAIN_MENU)) {
                cameraRequestTag.mbFromMainMenu = ((Boolean) builder.get(PreviewParameter.KEY_IS_FROM_MAIN_MENU))
                        .booleanValue();
            }
            if (!cameraRequestTag.mbBurstShot && Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                cameraRequestTag.mRequestFormatList = getCaptureFormatList(str);
            }
            CameraPreviewCallbackAdapter.PreviewResult previewResult = this.mPreviewResult;
            if (previewResult != null
                    && ((Boolean) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT))
                            .booleanValue()
                    && Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                cameraRequestTag.mDecisionHdrBrightenIndex = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_DECISION_HDR_BRIGHTEN_INDEX)).intValue();
            }
            cameraRequestTag.mCaptureMode = getModeName();
            CameraPreviewCallbackAdapter.PreviewResult previewResult2 = this.mPreviewResult;
            cameraRequestTag.mCaptureIntent = previewResult2 != null
                    ? ((Integer) previewResult2.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_INTENT)).intValue()
                    : -1;
            buildTargetSurface(str, str2, builder, cameraRequestTag);
            CameraPreviewCallbackAdapter.PreviewResult previewResult3 = this.mPreviewResult;
            cameraRequestTag.mMetaIndex = previewResult3 != null
                    ? ((Integer) previewResult3.get(ApsDecisionParameter.KEY_PREVIEW_META_INDEX)).intValue()
                    : -1;
            cameraRequestTag.mCameraId = CameraCharacteristicsHelper.getCameraIdType(str).getCameraId();
            cameraRequestTag.mRearFrontCameraId = this.mRearFrontCameraId;
            cameraRequestTag.mCameraType = str;
            cameraRequestTag.mbUseTuningData = needTuningData(cameraRequestTag.mAddTargetSurfaces);
            cameraRequestTag.mApsRequestTag = this.mTagMap.get(str);
            cameraRequestTag.mbSetPreviewFrameSurface = isSetPreviewFrameSurface(str);
            cameraRequestTag.mbSupportBokeh = false;
            cameraRequestTag.mbMirrorEnable = "on"
                    .equals(getConfigureParameter(str).get(ConfigureParameter.MIRROR_ENABLE));
            CameraPreviewCallbackAdapter.PreviewResult previewResult4 = this.mPreviewResult;
            cameraRequestTag.mThermalAlgoMask = previewResult4 != null
                    ? ((Integer) previewResult4.get(ApsDecisionParameter.KEY_DECISION_THERMAL_MASK)).intValue()
                    : 0;
            CameraPreviewCallbackAdapter.PreviewResult previewResult5 = this.mPreviewResult;
            cameraRequestTag.mAsdMovingObject = previewResult5 != null
                    ? ((Integer) previewResult5.get(ApsDecisionParameter.KEY_PREVIEW_ASD_MOVING_OBJECT)).intValue()
                    : 0;
            CameraPreviewCallbackAdapter.PreviewResult previewResult6 = this.mPreviewResult;
            cameraRequestTag.mAISState = previewResult6 != null
                    ? ((Integer) previewResult6.get(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE)).intValue()
                    : 0;
            cameraRequestTag.m2DOLCaptureStreamNumber = getCaptureStreamNumber(str, CameraConstant.SensorMode.TWO_DOL);
            if (Parameter.ParameterStage.START_PREVIEW.equals(str2)) {
                cameraRequestTag.setRequestMode(CameraRequestTag.RequestMode.PREVIEW);
                cameraRequestTag.mbSatOpen = "rear_sat".equals(str);
            } else if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                cameraRequestTag.mAutoTransmit = (String) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_AUTO_TRANSMIT_BY_UNIT);
                cameraRequestTag.mApsAlgoFlags = (String[]) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG);
                CameraUnitLog.i(TAG,
                        "createRequestTag, KEY_PREVIEW_ALGO_FLAG : " + Arrays.toString(cameraRequestTag.mApsAlgoFlags));
                cameraRequestTag.mApsBurstAlgoFlags = (String[]) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_BURST_ALGO_FLAG);
                if (isNeedAPSProcess()) {
                    cameraRequestTag.mRequestNum = ((Integer) this.mPreviewResult
                            .get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT)).intValue();
                } else {
                    cameraRequestTag.mRequestNum = 1;
                }
                cameraRequestTag.mPortraitHdrType = (String) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_PORTRAIT_HRD_TYPE);
                cameraRequestTag.mHDRState = (String) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_HDR_STATE);
                cameraRequestTag.mRequestFormat = cameraRequestTag.mbBurstShot ? 35 : getCaptureFormat();
                synchronized (this.mBracketLock) {
                    cameraRequestTag.mApsBracketMode = cameraRequestTag.mbBurstShot ? 0 : this.mApsBracketMode;
                }
                cameraRequestTag.mbSatOpen = "rear_sat".equals(str);
                cameraRequestTag.mMFSRFrameCount = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_MFSR_FRAME_COUNT)).intValue();
                cameraRequestTag.mPreCollectFrameCount = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_PRECOLLECT_FRAME_COUNT)).intValue();
                cameraRequestTag.mbDecisionRequestMixedFormat = ((Boolean) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT)).booleanValue();
                cameraRequestTag.mDecisionHdrBrightenIndex = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_DECISION_HDR_BRIGHTEN_INDEX)).intValue();
                cameraRequestTag.mSequenceId = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_DECISION_CAPTURE_SEQUENCE_ID)).intValue();
                cameraRequestTag.mSpecificProcessAlgo = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_DECISION_CAPTURE_SPECIFIC_PROCESS_ALGO)).intValue();
                cameraRequestTag.mNightTotalExpTime = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_NIGHT_TOTAL_EXPTIME)).intValue();
                cameraRequestTag.mApsDecisionFeatureType = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
                cameraRequestTag.mApsDecisionSceneMode = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
                cameraRequestTag.mCaptureSensorMode = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MODE)).intValue();
                cameraRequestTag.mTurboRawScene = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_TURBO_RAW_SCENE)).intValue();
                cameraRequestTag.mSuperNightScene = cameraRequestTag.mTurboRawScene == 0
                        ? ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPER_NIGHT_SCENE))
                                .intValue()
                        : cameraRequestTag.mTurboRawScene;
                cameraRequestTag.mCaptureEVList = (int[]) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                cameraRequestTag.mbInNightProcess = (Util.isSupportOfflineNight(getModeName())
                        || "on".equals(builder.get(PreviewParameter.KEY_AI_PHOTO)))
                        && Util.getNightStateDecision(this.mPreviewResult) > 0 && !cameraRequestTag.mbBurstShot;
                cameraRequestTag.mbRearMirrorEnable = builder.get(PreviewParameter.KEY_REAR_MIRROR_ENABLE) != null
                        && ((Boolean) builder.get(PreviewParameter.KEY_REAR_MIRROR_ENABLE)).booleanValue();
                cameraRequestTag.mCaptureSurface = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_SURFACE)).intValue();
                cameraRequestTag.mbPictureVisualizationEnable = builder
                        .get(PreviewParameter.KEY_PICTURE_VISUALIZATION_ENABLE) != null
                        && "on".equals(builder.get(PreviewParameter.KEY_PICTURE_VISUALIZATION_ENABLE));
                cameraRequestTag.mbHeicCodecFormat = (String) builder.get(PreviewParameter.KEY_HEIC_CODEC_FORMAT);
                if (builder.containCustomKey(PreviewParameter.KEY_QUICK_JPEG)) {
                    cameraRequestTag.mbSupportQuickJpeg = ((Boolean) builder.get(PreviewParameter.KEY_QUICK_JPEG))
                            .booleanValue();
                }
                if (32 == cameraRequestTag.mRequestFormat || 37 == cameraRequestTag.mRequestFormat
                        || 36 == cameraRequestTag.mRequestFormat || 34 == cameraRequestTag.mRequestFormat) {
                    cameraRequestTag.setRequestMode(CameraRequestTag.RequestMode.CAPTURE_RAW);
                } else {
                    cameraRequestTag.setRequestMode(CameraRequestTag.RequestMode.CAPTURE);
                }
                if (cameraRequestTag.mbSatOpen) {
                    int[] iArr = (int[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MASK);
                    int iIntValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FRAME_ID))
                            .intValue();
                    if (iArr == null || iArr.length < 3) {
                        i = 0;
                    } else {
                        CameraUnitLog.d(TAG,
                                "takePicture, mSensorMask: " + Arrays.toString(iArr) + ", mFrameId: " + iIntValue);
                        int length = iArr.length;
                        i = 0;
                        for (int i2 = 0; i2 < length; i2++) {
                            if (1 == iArr[i2]) {
                                i++;
                            }
                        }
                    }
                    if (50 == cameraRequestTag.mApsDecisionFeatureType) {
                        cameraRequestTag.mApsRequestTag.mCaptureStreamNumber = getCaptureStreamNumber(str,
                                CameraConstant.SensorMode.TWO_DOL);
                    } else {
                        ApsRequestTag apsRequestTag = cameraRequestTag.mApsRequestTag;
                        if (i <= 0) {
                            i = 1;
                        }
                        apsRequestTag.mCaptureStreamNumber = i;
                    }
                    cameraRequestTag.mMasterPipeline = ((Integer) this.mPreviewResult
                            .get(ApsDecisionParameter.KEY_PREVIEW_MASTER_PIPELINE)).intValue();
                }
            }
            cameraRequestTag.mLogicCameraType = CameraCharacteristicsHelper.getLogicalCameraType(str);
            if (-1 == cameraRequestTag.mDecisionHdrBrightenIndex || cameraRequestTag.mRequestFormatList == null) {
                cameraRequestTag.mRawFormatHint = getRawFormat(str);
            } else {
                cameraRequestTag.mRawFormatHint = cameraRequestTag.mRequestFormatList[cameraRequestTag.mDecisionHdrBrightenIndex];
            }
            if (!isSupportVideoSnapShot(str) && ((1 == cameraRequestTag.mCaptureSurface
                    || 5 == cameraRequestTag.mApsDecisionFeatureType || "front_main".equals(str)
                    || "on".equals(getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE)))
                    && (pictureSurfaces = this.mConfigMap.get(str).getPictureSurfaces()) != null
                    && pictureSurfaces.size() > 0 && pictureSurfaces.get(0).getAppSurfaceSize() != null)) {
                cameraRequestTag.mForceUpScaleSize = new int[] { pictureSurfaces.get(0).getAppSurfaceSize().getWidth(),
                        pictureSurfaces.get(0).getAppSurfaceSize().getHeight() };
            }
        }
        return cameraRequestTag;
    }

    private int[] getCaptureFormatList(String str) {
        int[] array;
        CameraPreviewCallbackAdapter.PreviewResult previewResult = this.mPreviewResult;
        if (previewResult == null) {
            return null;
        }
        int[] iArr = (int[]) previewResult.get(ApsDecisionParameter.KEY_CAPTURE_FORMAT_LIST);
        CameraUnitLog.d(TAG, "getCaptureFormatList, formatList:" + Arrays.toString(iArr));
        if (iArr == null
                || (array = Arrays.stream(iArr).filter(BaseMode::lambda$getCaptureFormatList$0).toArray()) == null
                || array.length <= 0) {
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

    final void buildTargetSurface(String str, String str2, PreviewParameter.Builder builder,
            CameraRequestTag cameraRequestTag) {
        LinkedList<Pair<String, String>> useCaseValues = getUseCaseValues(
                getSurfaceUseCase(str, cameraRequestTag.mbFromMainMenu));
        cameraRequestTag.mAddTargetSurfaces = new HashMap<>();
        cameraRequestTag.mRemoveTargetSurfaces = new HashMap<>();
        cameraRequestTag.mUselessTargetSurfaces = new HashMap<>();
        cameraRequestTag.mCaptureTuningYUVStreamAddTargetNum = 0;
        cameraRequestTag.mCaptureTuningRAWStreamAddTargetNum = 0;
        for (Pair<String, String> pair : useCaseValues) {
            String str3 = (String) pair.first;
            String surfaceUsageBySurfaceType = getSurfaceUsageBySurfaceType(str3);
            String str4 = "var_camera".equals(pair.second) ? str : (String) pair.second;
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
            return;
        }
        if ("surface_key_tuning_yuv".equals(surfaceKey.getUsage())) {
            while (i < cameraRequestTag.mRequestFormatList.length) {
                if (cameraRequestTag.mRequestFormatList[i] == 35 || cameraRequestTag.mDecisionHdrBrightenIndex == i) {
                    cameraRequestTag.mCaptureTargetSurfacesList[i].put(surfaceKey, null);
                    cameraRequestTag.mbUseTuningDataList[i] = true;
                }
                i++;
            }
            return;
        }
        if ("surface_key_tuning_raw".equals(surfaceKey.getUsage())) {
            while (i < cameraRequestTag.mRequestFormatList.length) {
                if (cameraRequestTag.mRequestFormatList[i] == getRawFormat(str)
                        || cameraRequestTag.mDecisionHdrBrightenIndex == i) {
                    cameraRequestTag.mCaptureTargetSurfacesList[i].put(surfaceKey, null);
                    cameraRequestTag.mbUseTuningDataList[i] = true;
                }
                i++;
            }
            return;
        }
        Stream.of((Object[]) cameraRequestTag.mCaptureTargetSurfacesList).forEach(new Consumer() { // from class:
                                                                                                   // com.oplus.ocs.camera.producer.mode.BaseMode$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((HashMap) obj).put(surfaceKey, null);
            }
        });
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
                int iIntValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
                if ((Util.isHdrOn(this.mPreviewResult) && !cameraRequestTag.mbBurstShot)
                        || ((cameraRequestTag.mbInNightProcess && !cameraRequestTag.mbBurstShot
                                && (!PlatformUtil.isMtkPlatform() || !cameraRequestTag.mbStarryProcess))
                                || ((cameraRequestTag.mbSupportBokehHDR && Util.isBokehHDR(this.mPreviewResult))
                                        || 13 == iIntValue || 26 == iIntValue))) {
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

    protected void setFrameDuration(PreviewParameter.Builder builder) {
        Integer num = (Integer) builder.get(CaptureRequest.CONTROL_AE_MODE);
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        if (l == null || num == null || num.intValue() != 0) {
            return;
        }
        Range range = (Range) builder.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE);
        builder.set((CaptureRequest.Key<Long>) CaptureRequest.SENSOR_FRAME_DURATION,
                Long.valueOf(Math.max(CameraConstant.TIME_RATIO_S_TO_NS
                        / (range == null ? 30 : ((Integer) range.getUpper()).intValue()),
                        l.longValue())));
    }

    protected void updatePreviewRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag,
            String str, String str2) {
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

    protected List<Size> getPictureSizes(String str, int i) {
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

    int getSensorNumberFromConfig(String str) {
        LinkedList<Pair<String, String>> linkedList;
        Map<String, LinkedList<Pair<String, String>>> sensorNumberMap = CameraConfigHelper.getSensorNumberMap();
        if (sensorNumberMap == null || sensorNumberMap.isEmpty()
                || (linkedList = sensorNumberMap.get(getModeName())) == null || linkedList.isEmpty()) {
            return 1;
        }
        for (Pair<String, String> pair : linkedList) {
            if (TextUtils.equals(str, (String) pair.first)) {
                String str2 = (String) pair.second;
                CameraUnitLog.d(TAG, "getSensorNumberFromConfig, value: " + str2);
                return Integer.parseInt(str2);
            }
        }
        return 1;
    }

    protected void updateAllParameterRanges(CameraDeviceInfoImpl cameraDeviceInfoImpl, String str) {
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

    Map<String, String> getFeaturesFromConfig(@NonNull Parameter parameter) {
        HashMap map = new HashMap();
        if (parameter.getCustomKeys() != null) {
            for (Parameter.Key<?> key : parameter.getCustomKeys()) {
                if (parameter.get(key) instanceof Integer) {
                    map.put(key.getName(), parameter.get(key).toString());
                } else if (parameter.get(key) instanceof String) {
                    map.put(key.getName(), (String) parameter.get(key));
                } else if (parameter.get(key) instanceof Range) {
                    map.put(key.getName(), ((Range) parameter.get(key)).toString());
                } else {
                    CameraUnitLog.v(TAG,
                            "getFeaturesFromConfig key: " + key.getName() + ", value: " + parameter.get(key));
                }
            }
        }
        return map;
    }

    boolean needPreviewMeta(String str) {
        return AlgoSwitchConfig.getSupportApsPreview();
    }

    boolean needVideoMeta(String str) {
        return needPreviewMeta(str);
    }

    @NonNull
    private LinkedList<Pair<String, String>> getUseCaseValues(String str) {
        LinkedList<Pair<String, String>> useCaseValues = CameraConfigHelper.getUseCaseValues(str);
        if (useCaseValues != null && !useCaseValues.isEmpty()) {
            return useCaseValues;
        }
        throw new RuntimeException("getUseCaseValues, " + str + "'s usecase_info are not configured!");
    }

    private SurfaceWrapper getSurfaceWrapper(SdkCameraDeviceConfig sdkCameraDeviceConfig, int i, String str,
            String str2, @NonNull Size size, Size size2, boolean z, String str3) {
        String surfaceUsageBySurfaceType;
        int surfaceFormatBySurfaceType;
        SurfaceWrapper surfaceWrapperCreateReaderSurface;
        surfaceUsageBySurfaceType = getSurfaceUsageBySurfaceType(str);
        surfaceFormatBySurfaceType = getSurfaceFormatBySurfaceType(str, str2, str3);
        switch (str) {
            case "reprocess_input":
                return sSurfaceDecision.createReprocessSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                        surfaceFormatBySurfaceType);
            case "raw_output":
            case "capture_raw":
            case "capture_yuv":
            case "raw16_output":
            case "capture":
            case "capture_raw_dol":
            case "tuning_data_raw":
            case "tuning_data_yuv":
            case "reprocess_yuv":
            case "video_ai_depth":
            case "capture_yuv_mfnr":
                return sSurfaceDecision.createReaderSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                        surfaceFormatBySurfaceType, getCaptureImageReaderMaxImages());
            case "preview":
                SurfaceWrapper previewSurface = sdkCameraDeviceConfig.getPreviewSurface(str2);
                Long previewReaderUsage = getPreviewReaderUsage(str2);
                if (previewSurface != null || !z) {
                    if (previewSurface != null && z) {
                        surfaceWrapperCreateReaderSurface = sSurfaceDecision.createReaderSurface(
                                previewSurface.getPhysicalCameraId(), surfaceUsageBySurfaceType,
                                previewSurface.getCameraType(), previewSurface.getAppSurfaceSize(),
                                previewSurface.getHalSurfaceSize(), surfaceFormatBySurfaceType,
                                getPreviewImageReaderMaxImages(), null, previewReaderUsage);
                    }
                    if (previewSurface != null) {
                        return previewSurface;
                    }
                    previewSurface.setSurfaceUsage(surfaceUsageBySurfaceType);
                    return previewSurface;
                }
                surfaceWrapperCreateReaderSurface = sSurfaceDecision.createReaderSurface(i, surfaceUsageBySurfaceType,
                        str2, size, size2, surfaceFormatBySurfaceType, getPreviewImageReaderMaxImages(), null,
                        previewReaderUsage);
                previewSurface = surfaceWrapperCreateReaderSurface;
                return previewSurface;
            case "video":
                if (sdkCameraDeviceConfig.getVideoSurface() == null
                        || sdkCameraDeviceConfig.getVideoSurface().getSurface() == null) {
                    SurfacePool.getInstance().createVideoSurface();
                } else {
                    SurfacePool.getInstance().setVideoSurface(sdkCameraDeviceConfig.getVideoSurface().getSurface());
                }
                return sSurfaceDecision.createReaderSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                        surfaceFormatBySurfaceType, getImageReaderMaxImages(str2), getVideoFrameReaderUsage(str2),
                        null);
            case "preview_frame":
                SurfaceWrapper surfaceWrapperCreateReaderSurface2 = sSurfaceDecision.createReaderSurface(i,
                        surfaceUsageBySurfaceType, str2, size, size2, surfaceFormatBySurfaceType,
                        getPreviewImageReaderMaxImages());
                if (surfaceWrapperCreateReaderSurface2 == null) {
                    return surfaceWrapperCreateReaderSurface2;
                }
                surfaceWrapperCreateReaderSurface2.setSurfaceUsage("surface_key_preview_frame");
                return surfaceWrapperCreateReaderSurface2;
            case "preview_in_preview":
                if ("photo_mode".equals(getModeName())
                        || CameraConstant.ModeName.TILT_SHIFT_MODE.equals(getModeName())) {
                    return sSurfaceDecision.createReaderSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                            surfaceFormatBySurfaceType, getPreviewImageReaderMaxImages());
                }
                return null;
            case "video_recorder":
                return sSurfaceDecision.createRecorderVideoSurface(i, surfaceUsageBySurfaceType, str2, size, size2,
                        surfaceFormatBySurfaceType,
                        sdkCameraDeviceConfig.getVideoSurface() != null
                                ? sdkCameraDeviceConfig.getVideoSurface().getSurface()
                                : null);
            default:
                return null;
        }
    }

    public String getSurfaceUsageBySurfaceType(String str) {
        switch (str) {
            case "reprocess_input":
                return "surface_key_reprocess";
            case "raw_output":
            case "capture_raw":
            case "capture_yuv":
            case "raw16_output":
            case "capture":
                return "surface_key_picture";
            case "preview":
                return "surface_key_preview";
            case "video":
            case "video_recorder":
                return "surface_key_recording";
            case "preview_frame":
                return "surface_key_preview_frame";
            case "capture_raw_dol":
                return "surface_key_picture_dol";
            case "preview_in_preview":
                return "surface_key_preview_in_preview";
            case "tuning_data_raw":
                return "surface_key_tuning_raw";
            case "tuning_data_yuv":
                return "surface_key_tuning_yuv";
            case "reprocess_yuv":
                return "surface_key_reprocess_yuv";
            case "video_ai_depth":
                return CameraSessionEntity.SurfaceUsage.AI_DEPTH;
            case "capture_yuv_mfnr":
                return "surface_key_picture_mfnr";
            default:
                return null;
        }
    }

    protected int getPhysicalId(String str, String str2, String str3) {
        int physicalId = -1;
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
            } else {
                if ("front_main".equals(str2)) {
                    return getPhysicalId(str, 0);
                }
                if ("front_wide".equals(str2)) {
                    return getPhysicalId(str, 1);
                }
            }
            return getPhysicalId(str, 0);
        }
        if ("rear_sat".equals(str) || "rear_portrait".equals(str)) {
            if ("rear_main".equals(str2)) {
                physicalId = getPhysicalId(str, 0);
            } else if ("rear_wide".equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2)) {
                physicalId = getPhysicalId(str, 1);
            } else if ("rear_tele".equals(str2)) {
                physicalId = getPhysicalId(str, 2);
            } else if ("rear_portrait_mono_1".equals(str2) || "rear_portrait_mono_2".equals(str)) {
                physicalId = getPhysicalId(str, 3);
            }
        }
        if ("rear_portrait_mono_1".equals(str)) {
            if ("rear_main".equals(str2)) {
                physicalId = getPhysicalId(str, 0);
            } else if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2)) {
                physicalId = getPhysicalId(str, 1);
            }
        }
        if (!"rear_portrait_mono_2".equals(str)) {
            return physicalId;
        }
        if ("rear_main".equals(str2)) {
            return getPhysicalId(str, 0);
        }
        return CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str2) ? getPhysicalId(str, 1) : physicalId;
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
        for (Pair<String, String> pair : useCaseValues) {
            String str2 = (String) pair.first;
            String cameraType = "var_camera".equals(pair.second) ? defaultPreviewSurface.getCameraType()
                    : (String) pair.second;
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

    final Parameter getConfigureParameter(String str) {
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

    protected int getRawFormat(String str) {
        return (!((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_CAPTURE_WITH_RAW10, false))
                .booleanValue() || getModeName().equals("night_mode") || getModeName().equals("professional_mode")
                || getModeName().equals("long_exposure_mode")
                || getModeName().equals(CameraConstant.ModeName.TIME_LAPSE_PRO_MODE)
                || getModeName().equals(CameraConstant.ModeName.STREET_MODE)
                || getModeName().equals(CameraConstant.ModeName.STAR_VIDEO_MODE)
                || getModeName().equals(CameraConstant.ModeName.STAR_CAPTURE_MODE)) ? 32 : 37;
    }

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
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    protected boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey,
            PreviewParameter.Builder builder) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        CameraPreviewCallbackAdapter.PreviewResult previewResult;
        boolean z5;
        CameraPreviewCallbackAdapter.PreviewResult previewResult2;
        int i;
        CameraPreviewCallbackAdapter.PreviewResult previewResult3;
        synchronized (this.mPreviewResultLock) {
            z = false;
            z7 = "surface_key_preview".equals(surfaceKey.getUsage())
                    || "surface_key_preview_frame".equals(surfaceKey.getUsage());
            boolean zEquals = "on".equals(builder.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));
            CameraPreviewCallbackAdapter.PreviewResult previewResult4 = this.mPreviewResult;
            z2 = (previewResult4 == null || zEquals
                    || (32 != ((Integer) previewResult4.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue()
                            && 34 != ((Integer) this.mPreviewResult
                                    .get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue()
                            && 36 != ((Integer) this.mPreviewResult
                                    .get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue())) ? false : true;
            CameraPreviewCallbackAdapter.PreviewResult previewResult5 = this.mPreviewResult;
            z8 = (previewResult5 == null
                    || !((Boolean) previewResult5.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT))
                            .booleanValue()
                    || zEquals) ? false : true;
            if (Parameter.ParameterStage.START_PREVIEW.equals(str2)) {
                if (!z7) {
                    z3 = false;
                }
                z = true;
            } else {
                if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                    CameraPreviewCallbackAdapter.PreviewResult previewResult6 = this.mPreviewResult;
                    int iIntValue = previewResult6 != null
                            ? ((Integer) previewResult6.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE))
                                    .intValue()
                            : 0;
                    if (z7) {
                        CameraPreviewCallbackAdapter.PreviewResult previewResult7 = this.mPreviewResult;
                        if (previewResult7 != null
                                && 5 != ((Integer) previewResult7.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE))
                                        .intValue()) {
                            z = true;
                        }
                    } else if ("surface_key_picture".equals(surfaceKey.getUsage())
                            || "surface_key_picture_mfnr".equals(surfaceKey.getUsage())) {
                        z9 = getRawFormat(str) == 37;
                        int[] captureFormatList = getCaptureFormatList(surfaceKey.getCameraType());
                        if (captureFormatList == null || captureFormatList.length <= 0 || zEquals) {
                            z4 = false;
                        } else {
                            z4 = false;
                            for (int i2 : captureFormatList) {
                                if (i2 == surfaceKey.getFormat()) {
                                    CameraUnitLog.d(TAG, "needAddToTarget match, format: " + i2);
                                    z4 = true;
                                }
                            }
                        }
                        int format = surfaceKey.getFormat();
                        if (format != 32) {
                            if (format == 37) {
                                if (z9 && (z2 || z8)) {
                                    z4 = true;
                                }
                                if (((Boolean) CameraConfigHelper
                                        .getConfigValue(CameraConfigBase.KEY_MTK_SAT_FUSION_SUPPORT, false))
                                        .booleanValue()) {
                                    if ("rear_sat".equals(surfaceKey.getCameraType())) {
                                        i = 2;
                                        if (2 == iIntValue) {
                                            z4 = false;
                                        }
                                    } else {
                                        i = 2;
                                    }
                                    if ("rear_sat".equals(str) && i != iIntValue
                                            && ("rear_wide".equals(surfaceKey.getCameraType())
                                                    || "rear_tele".equals(surfaceKey.getCameraType())
                                                    || "rear_main".equals(surfaceKey.getCameraType()))) {
                                    }
                                }
                            } else if ((format == 34 || format == 35) && !z2) {
                                z4 = true;
                            }
                            previewResult = this.mPreviewResult;
                            if (previewResult != null) {
                                int[] iArr = (int[]) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MASK);
                                z10 = PlatformUtil.isQualcommPlatform() || !z2
                                        || (2 == iIntValue && 37 == surfaceKey.getFormat());
                                if ("rear_sat".equals(str) && iArr != null && z10 && iArr.length >= 3
                                        && ((Util.getNightStateDecision(this.mPreviewResult) <= 0 || zEquals)
                                                && (!z2 || (previewResult2 = this.mPreviewResult) == null
                                                        || 51 != ((Integer) previewResult2
                                                                .get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE))
                                                                .intValue()))) {
                                    if ("rear_wide".equals(surfaceKey.getCameraType())) {
                                        z5 = false;
                                        z6 = 1 == iArr[0] ? true : z5;
                                    } else {
                                        z5 = false;
                                        if ("rear_main".equals(surfaceKey.getCameraType())) {
                                            if (1 == iArr[1]) {
                                            }
                                        } else {
                                            if ("rear_tele".equals(surfaceKey.getCameraType())) {
                                                if (1 == iArr[2]) {
                                                    z5 = true;
                                                }
                                            } else if (CameraConstant.CameraType.REAR_MONO_CAMERA_1
                                                    .equals(surfaceKey.getCameraType())) {
                                            }
                                            CameraUnitLog.d(TAG, "needAddToTarget, isCaptureRaw: " + z2
                                                    + ", isUsingMixedFormat: " + z8 + ", addTargetPreCondition: " + z10
                                                    + ", format: " + surfaceKey.getFormat() + ", Usage: "
                                                    + surfaceKey.getUsage() + ", zoomFeature：" + iIntValue
                                                    + ", cameraType: " + surfaceKey.getCameraType()
                                                    + ", nightDecision: "
                                                    + Util.getNightStateDecision(this.mPreviewResult)
                                                    + ", isUsingRaw10: " + z9 + ", needAddTarget: " + z5
                                                    + ", sensorMask: " + Arrays.toString(iArr) + ", request format: "
                                                    + this.mPreviewResult
                                                            .get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)
                                                    + ", request mixed format: " + this.mPreviewResult.get(
                                                            ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT));
                                            z4 = z5;
                                        }
                                    }
                                    z5 = z6;
                                    CameraUnitLog.d(TAG, "needAddToTarget, isCaptureRaw: " + z2
                                            + ", isUsingMixedFormat: " + z8 + ", addTargetPreCondition: " + z10
                                            + ", format: " + surfaceKey.getFormat() + ", Usage: "
                                            + surfaceKey.getUsage() + ", zoomFeature：" + iIntValue + ", cameraType: "
                                            + surfaceKey.getCameraType() + ", nightDecision: "
                                            + Util.getNightStateDecision(this.mPreviewResult) + ", isUsingRaw10: " + z9
                                            + ", needAddTarget: " + z5 + ", sensorMask: " + Arrays.toString(iArr)
                                            + ", request format: "
                                            + this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)
                                            + ", request mixed format: " + this.mPreviewResult
                                                    .get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT));
                                    z4 = z5;
                                } else {
                                    z5 = z4;
                                    CameraUnitLog.d(TAG, "needAddToTarget, isCaptureRaw: " + z2
                                            + ", isUsingMixedFormat: " + z8 + ", addTargetPreCondition: " + z10
                                            + ", format: " + surfaceKey.getFormat() + ", Usage: "
                                            + surfaceKey.getUsage() + ", zoomFeature：" + iIntValue + ", cameraType: "
                                            + surfaceKey.getCameraType() + ", nightDecision: "
                                            + Util.getNightStateDecision(this.mPreviewResult) + ", isUsingRaw10: " + z9
                                            + ", needAddTarget: " + z5 + ", sensorMask: " + Arrays.toString(iArr)
                                            + ", request format: "
                                            + this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)
                                            + ", request mixed format: " + this.mPreviewResult
                                                    .get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT));
                                    z4 = z5;
                                }
                            }
                            z = z4;
                        } else {
                            if (!z9 && (z2 || z8)) {
                            }
                            previewResult = this.mPreviewResult;
                            if (previewResult != null) {
                            }
                            z = z4;
                        }
                    } else if ("surface_key_tuning_yuv".equals(surfaceKey.getUsage())) {
                        CameraPreviewCallbackAdapter.PreviewResult previewResult8 = this.mPreviewResult;
                        boolean z11 = ((previewResult8 != null
                                && ((Boolean) previewResult8.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT))
                                        .booleanValue()
                                && -1 != ((Integer) this.mPreviewResult
                                        .get(ApsDecisionParameter.KEY_DECISION_HDR_BRIGHTEN_INDEX)).intValue())
                                || 35 == ((Integer) this.mPreviewResult
                                        .get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue()
                                || 38 == ((Integer) this.mPreviewResult
                                        .get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue()) ? true : !z2;
                        CameraPreviewCallbackAdapter.PreviewResult previewResult9 = this.mPreviewResult;
                        if (previewResult9 != null) {
                            int[] iArr2 = (int[]) previewResult9.get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MASK);
                            if ("rear_sat".equals(str) && iArr2 != null
                                    && ((!PlatformUtil.isMtkPlatform() || !z2) && iArr2.length >= 3
                                            && (zEquals || Util.getNightStateDecision(this.mPreviewResult) <= 0))) {
                                if ("rear_wide".equals(surfaceKey.getCameraType())) {
                                    if (1 == iArr2[0]) {
                                        z = true;
                                    }
                                    z11 = z;
                                } else if ("rear_main".equals(surfaceKey.getCameraType())) {
                                    if (1 == iArr2[1]) {
                                        z = true;
                                    }
                                    z11 = z;
                                } else if ("rear_tele".equals(surfaceKey.getCameraType())) {
                                    if (1 == iArr2[2]) {
                                        z = true;
                                    }
                                    z11 = z;
                                }
                            }
                        }
                        z = z11;
                    } else if ("surface_key_tuning_raw".equals(surfaceKey.getUsage()) && (!((Boolean) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_MTK_SAT_FUSION_SUPPORT, false)).booleanValue()
                            || !"rear_sat".equals(str) || 2 == iIntValue
                            || (!"rear_wide".equals(surfaceKey.getCameraType())
                                    && !"rear_main".equals(surfaceKey.getCameraType())
                                    && !"rear_tele".equals(surfaceKey.getCameraType())))) {
                        if (2 == iIntValue) {
                            if (!"rear_sat".equals(surfaceKey.getCameraType())
                                    && (previewResult3 = this.mPreviewResult) != null) {
                                int[] iArr3 = (int[]) previewResult3.get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MASK);
                                if ("rear_sat".equals(str) && iArr3 != null && iArr3.length >= 3
                                        && Util.getNightStateDecision(this.mPreviewResult) <= 0) {
                                    if ("rear_wide".equals(surfaceKey.getCameraType())) {
                                        if (1 == iArr3[0]) {
                                            z = true;
                                        }
                                    } else if ("rear_main".equals(surfaceKey.getCameraType())) {
                                        if (1 == iArr3[1]) {
                                            z = true;
                                        }
                                    } else if ("rear_tele".equals(surfaceKey.getCameraType()) && 1 == iArr3[2]) {
                                        z = true;
                                    }
                                }
                            }
                        } else if (z2 || z8) {
                            z = true;
                        }
                    }
                }
                z3 = false;
                z = (Parameter.ParameterStage.START_RECORDING.equals(str2)
                        && "surface_key_recording".equals(surfaceKey.getUsage())) ? true : z3;
            }
        }
        CameraUnitLog.d(TAG,
                "needAddToTarget needAddTarget: " + z + ", stage: " + str2 + ", isCaptureRaw: " + z2 + ", cameraType: "
                        + surfaceKey.getCameraType() + ", surfaceKey.getFormat: " + surfaceKey.getFormat()
                        + ", surfaceKey: " + surfaceKey.getUsage());
        return z;
    }

    protected void setVideoWaterMarkParams(PreviewParameter.Builder builder, String str,
            CameraRequestTag cameraRequestTag) {
        Bundle bundle = (Bundle) builder.get(PreviewParameter.KEY_WATERMARK_PARAM);
        if (!isVideoWaterMarkOpen(str)) {
            if (2 == AlgoSwitchConfig.getApsVersion()) {
                builder.set(PreviewParameter.KEY_VIDEO_WATERMARK_ENABLE, new byte[] { 0 });
                builder.set(PreviewParameter.KEY_VIDEO_WATERMARK_PATH, "NULL".getBytes(StandardCharsets.UTF_8));
                return;
            }
            return;
        }
        if (bundle != null) {
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
            return;
        }
        CameraUnitLog.e(TAG, "setVideoWaterMarkParams, watermarkParam is null!");
    }

    private final boolean needTuningData(HashMap<SurfaceKey, Surface> map) {
        for (SurfaceKey surfaceKey : map.keySet()) {
            if ("surface_key_tuning_raw".equals(surfaceKey.getUsage())
                    || "surface_key_tuning_yuv".equals(surfaceKey.getUsage())) {
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

    protected boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
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

    protected Size getCaptureYuvMfnrSize(String str) {
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
                long jLongValue = ((Long) builder.get(PreviewParameter.KEY_TAKE_PICTURE_DECISION_TIMESTAMP))
                        .longValue();
                builder.remove(PreviewParameter.KEY_TAKE_PICTURE_DECISION_TIMESTAMP);
                CameraPreviewCallbackAdapter.PreviewResult previewResult = 0 != jLongValue
                        ? this.mPreviewResultCache.get(Long.valueOf(jLongValue))
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
        int iIntValue;
        int iIntValue2;
        int iIntValue3;
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
                && this.mApsDecisionFeatureType != (iIntValue3 = ((Integer) previewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue())) {
            this.mApsDecisionFeatureType = iIntValue3;
            z = true;
        }
        if (previewResult.containsKey(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE.getName())) {
            int iIntValue4 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE)).intValue();
            synchronized (this.mBracketLock) {
                if (this.mApsBracketMode != iIntValue4) {
                    this.mApsBracketMode = iIntValue4;
                    z = true;
                }
            }
        }
        if (previewResult.containsKey(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE.getName())
                && this.mAisState != (iIntValue2 = ((Integer) previewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE)).intValue())) {
            this.mAisState = iIntValue2;
            z = true;
        }
        if (!previewResult.containsKey(ApsDecisionParameter.KEY_PREVIEW_ASD_MOVING_OBJECT.getName())
                || this.mAsdMovingObject == (iIntValue = ((Integer) previewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_ASD_MOVING_OBJECT)).intValue())) {
            return z;
        }
        this.mAsdMovingObject = iIntValue;
        return true;
    }

    protected boolean checkMemoryState(CameraRequestTag cameraRequestTag) {
        HashMap<Integer, Integer> map = new HashMap<>();
        int iCalculateMemorySize = 0;
        if (cameraRequestTag.mRequestFormatList == null) {
            map.put(Integer.valueOf(cameraRequestTag.mRequestFormat), Integer.valueOf(cameraRequestTag.mRequestNum));
        } else {
            for (int i : cameraRequestTag.mRequestFormatList) {
                map.put(Integer.valueOf(i),
                        Integer.valueOf(((Integer) map.getOrDefault(Integer.valueOf(i), 0)).intValue() + 1));
            }
        }
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            int iIntValue2 = entry.getValue().intValue();
            int baseMemory = getBaseMemory(cameraRequestTag, iIntValue);
            iCalculateMemorySize += calculateMemorySize(iIntValue, iIntValue2, baseMemory);
            CameraUnitLog.d(TAG,
                    "checkMemoryState, format: " + iIntValue + ", num: " + iIntValue2 + ", baseMemory: " + baseMemory
                            + ", totalNum:" + cameraRequestTag.mRequestNum + ", needMemory: " + iCalculateMemorySize,
                    true);
        }
        return cameraRequestTag.mConsumerInterface.checkRuntimeState(iCalculateMemorySize, getHalMemory());
    }

    private int getBaseMemory(CameraRequestTag cameraRequestTag, int i) {
        Size sizeByFormat;
        ApsRequestTag apsRequestTag = this.mTagMap.get(cameraRequestTag.mCameraType);
        if (apsRequestTag != null) {
            sizeByFormat = apsRequestTag.mPictureSize;
            if (sizeByFormat != null && (i == 32 || i == 37 || i == 36 || i == 34)) {
                sizeByFormat = CameraCharacteristicsHelper.getSizeByFormat(apsRequestTag.mCameraType,
                        1.3333333333333333d, 32);
            }
        } else {
            sizeByFormat = null;
        }
        if (useMfnrSizeToCalculateMemory() && 5 != cameraRequestTag.mApsDecisionFeatureType) {
            sizeByFormat = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_PICTURE_SIZE, null);
        }
        if (sizeByFormat != null) {
            return sizeByFormat.getWidth() * sizeByFormat.getHeight();
        }
        return 0;
    }

    protected long getRuntimeMemorySize(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag != null) {
            return cameraRequestTag.mConsumerInterface.getRuntimeMemorySize(getHalMemory());
        }
        return -1L;
    }

    protected long[] getFlexibleCapabilities(String str) {
        if (!"1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_SUPPORT_WCG2)) || !isCaptureModeType()) {
            return null;
        }
        Size size = this.mTagMap.get(str).mPreviewSize;
        long[] jArr = { 0, 0, 0, size.getWidth(), size.getHeight(), 1, 0, 1 };
        CameraUnitLog.d(TAG, "getFlexibleCapabilities, value: " + Arrays.toString(jArr));
        return jArr;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public int delayCloseForCapturTime() {
        return this.mDelayCloseCameraForCapture;
    }

    protected boolean is10BitOpen(String str) {
        boolean zEquals = "on".equals(getConfigureParameter(str).get(ConfigureParameter.PHOTO_10BIT_ENABLE));
        this.mbTenBitOpen = zEquals;
        return zEquals;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag,
            ApsAdapterDecision.DecisionResult decisionResult) {
        if (cameraRequestTag == null) {
            return false;
        }
        if (1 != i && 2 != i) {
            return true;
        }
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
            List listAsList = Arrays.asList(component.mAlgoList);
            for (String str2 : selectAlgosMatchTimestamp()) {
                if (listAsList.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
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

    protected Size getSurfaceTuningSize(String str, String str2) {
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
