package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsOtherParameter;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.ApsDataConvert;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;
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
/* loaded from: classes.dex */
public abstract class BaseMode implements ModeInterface {
    protected static final String FRONT_MIRROR_ENABLE = "on";
    private static final String TAG = "BaseMode";
    public static long mShutterButtonClickTime;
    private static final SurfaceDecision sSurfaceDecision = new SurfaceDecision();
    protected ConcurrentHashMap<String, SdkCameraDeviceConfig> mConfigMap = new ConcurrentHashMap<>();
    protected Map<String, ApsRequestTag> mTagMap = new HashMap();
    protected CameraPreviewCallbackAdapter.PreviewResult mPreviewResult = null;
    protected final Object mPreviewResultLock = new Object();
    protected boolean mbCaptureNotMatchMeta = false;
    private Map<String, Map<String, FeatureInterface>> mCameraTypeFeatureMap = new HashMap();
    private Map<String, FeatureInterface> mFeatureMap = new HashMap();
    private final Map<String, CameraDeviceInfoInterface> mCameraDeviceInfoMap = new HashMap();
    private int mApsDecisionFeatureType = 0;
    private int mApsBracketMode = 0;
    private AlgoSwitchConfig.PreviewConfig mPreviewAlgoConfig = null;

    private String chooseFormat(int i) {
        return i != 3 ? "1" : "2";
    }

    protected void checkIfDiscardUselessBuffer(SurfaceKey surfaceKey, String str, CameraRequestTag cameraRequestTag, PreviewParameter.Builder builder) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getFeatureName(String str) {
        return null;
    }

    protected long[] getFlexibleCapabilities(String str) {
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

    protected abstract Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3);

    protected abstract String getSurfaceUseCase(String str);

    protected Long getVideoFrameReaderUsage(String str) {
        return null;
    }

    protected boolean isCaptureModeType() {
        return true;
    }

    protected boolean isExplorerOpen(String str, SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isNeedAPSProcess() {
        return true;
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

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needDelayCloseForCapture() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean needRemoveTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        return false;
    }

    protected abstract void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag);

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void initialize() {
        initializeFeatures();
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public final CameraSessionEntity configure(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig, String str) {
        CameraUnitLog.d(TAG, "configure, cameraType: " + str);
        this.mConfigMap.put(str, sdkCameraDeviceConfig);
        CameraSessionEntity cameraSessionEntity = new CameraSessionEntity(str);
        ApsRequestTag apsRequestTag = new ApsRequestTag();
        Map<String, FeatureInterface> map = this.mCameraTypeFeatureMap == null ? null : this.mCameraTypeFeatureMap.get(str);
        if (!OperationModeDecision.isFeatureConfigLegal(sdkCameraDeviceConfig, map)) {
            CameraUnitLog.e(TAG, "configure, isFeatureConfigLegal check fail");
            return null;
        }
        OperationModeDecision.updateOperationMode(sdkCameraDeviceConfig, cameraSessionEntity, map);
        cameraSessionEntity.setSurfaceControl(this);
        cameraSessionEntity.setConfig(sdkCameraDeviceConfig);
        this.mTagMap.put(str, apsRequestTag);
        apsRequestTag.mbNeedMetadata = needPreviewMeta();
        apsRequestTag.mModeName = getModeName();
        sdkCameraDeviceConfig.updateHalPreviewSize(getCameraDeviceInfo(str).getPreviewMappingSizesFromConfig(str, getFeaturesFromConfig(sdkCameraDeviceConfig.getConfigureParameter())));
        onConfigure(cameraSessionEntity, sdkCameraDeviceConfig, str, apsRequestTag);
        if (map != null && map.containsKey(CameraConstant.FEATURE_EXPLORER) && map.get(CameraConstant.FEATURE_EXPLORER).getSupportValues().contains("on") && sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_EXPLORER_CHIP_STATE) != null && 1 == ((Integer) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_EXPLORER_CHIP_STATE)).intValue() && isExplorerOpen(str, sdkCameraDeviceConfig)) {
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
        apsRequestTag.mRearFrontCameraId = CameraCharacteristicsHelper.isFrontCamera(CameraCharacteristicsHelper.getCameraIdType(apsRequestTag.mCameraType).getCameraId()) ? 1 : 0;
        if (sdkCameraDeviceConfig.getConfigureParameter().containCustomKey(ConfigureParameter.KEY_QUICK_JPEG_SWITCH)) {
            apsRequestTag.mbSupportQuickJpeg = ((Boolean) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_QUICK_JPEG_SWITCH)).booleanValue();
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
        this.mApsDecisionFeatureType = 0;
        this.mApsBracketMode = 0;
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
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        char c;
        long[] flexibleCapabilities;
        int hashCode = str.hashCode();
        byte b = 2;
        if (hashCode == -930917882) {
            if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != -804429082) {
            if (hashCode == 2102512875 && str.equals(Parameter.ParameterStage.START_PREVIEW)) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals(Parameter.ParameterStage.CONFIGURE)) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                if (!Util.isSystemCamera() && useOplusCameraCase(str2)) {
                    builder.clear();
                    builder.set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.IS_OPLUS_PACKAGE, (Parameter.Key<byte[]>) new byte[]{1});
                }
                if ("rear_sat".equals(str2) && !Util.isQcomPlatform()) {
                    builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_MTK_MULTI_CAM_FEATURE_MODE, (Parameter.Key<int[]>) new int[]{0});
                }
                Boolean bool = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_TUNING_DATA_BUFFER_SUPPORT, false);
                if (bool == null || !bool.booleanValue()) {
                    b = 1;
                }
                builder.set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.KEY_TUNING_DATA_ENABLE, (Parameter.Key<byte[]>) new byte[]{b});
                builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_SESSION_REQUEST_FAST_LAUNCH, (Parameter.Key<int[]>) new int[]{1});
                if (Util.isSystemCamera()) {
                    builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_SESSION_REQUEST_MSNR, (Parameter.Key<int[]>) new int[]{1});
                }
                Parameter configureParameter = getConfigureParameter(str2);
                if (configureParameter.containCustomKey(ConfigureParameter.KEY_TORCH_FLASH_ENABLE)) {
                    builder.set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.KEY_TORCH_FLASH_ENABLE, (Parameter.Key<String>) configureParameter.get(ConfigureParameter.KEY_TORCH_FLASH_ENABLE));
                }
                if (configureParameter.containCustomKey(ConfigureParameter.SESSION_REQUEST_CROP_REGION)) {
                    builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.SESSION_REQUEST_CROP_REGION, (Parameter.Key<int[]>) configureParameter.get(ConfigureParameter.SESSION_REQUEST_CROP_REGION));
                }
                if (configureParameter.containCustomKey(ConfigureParameter.KEY_CALLER_PACKAGE_NAME)) {
                    builder.set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.KEY_CALLER_PACKAGE_NAME, (Parameter.Key<byte[]>) configureParameter.get(ConfigureParameter.KEY_CALLER_PACKAGE_NAME));
                }
                if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_CAPTURE_WITH_RAW10, false)).booleanValue() && !"night_mode".equals(getModeName())) {
                    builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_MTK_CAPTURE_RAW10, (Parameter.Key<int[]>) new int[]{1});
                }
                if (configureParameter.containCustomKey(ConfigureParameter.KEY_MAKEUP_STATE)) {
                    builder.set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.KEY_MAKEUP_STATE, (Parameter.Key<Integer>) configureParameter.get(ConfigureParameter.KEY_MAKEUP_STATE));
                }
                if (configureParameter.containCustomKey(ConfigureParameter.KEY_REQUEST_ZSL_MODE)) {
                    builder.set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.KEY_REQUEST_ZSL_MODE, (Parameter.Key<byte[]>) configureParameter.get(ConfigureParameter.KEY_REQUEST_ZSL_MODE));
                }
                if ("on".equals(configureParameter.get(ConfigureParameter.PHOTO_10BIT_ENABLE)) && (flexibleCapabilities = getFlexibleCapabilities(str2)) != null) {
                    builder.set((Parameter.Key<Parameter.Key<long[]>>) ConfigureParameter.KEY_FLEXIBLE_CAPABILITIES, (Parameter.Key<long[]>) flexibleCapabilities);
                }
                if (CameraConstant.MonoFilterType.BLACK_WHITE.equals(this.mTagMap.get(str2).mFeatureName)) {
                    builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_EXTENDED_SCENE_MODE, (CaptureRequest.Key) 1);
                }
                if ("rear_sat".equals(str2) && configureParameter.containCustomKey(ConfigureParameter.KEY_CUSTOM_ZOOM_RATIO)) {
                    builder.set((Parameter.Key<Parameter.Key<Float>>) ConfigureParameter.KEY_CUSTOM_ZOOM_RATIO, (Parameter.Key<Float>) configureParameter.get(ConfigureParameter.KEY_CUSTOM_ZOOM_RATIO));
                    return;
                }
                return;
            case 1:
                if (!getCameraDeviceInfo(str2).isSupportPreviewParameter(PreviewParameter.KEY_ZOOM_RATIO.getName())) {
                    builder.set((Parameter.Key<Parameter.Key<Float>>) PreviewParameter.KEY_ZOOM_RATIO, (Parameter.Key<Float>) Float.valueOf(1.0f));
                }
                if (cameraRequestTag != null) {
                    cameraRequestTag.mbPiEnable = "on".equals(builder.get(PreviewParameter.KEY_AI_PHOTO));
                    cameraRequestTag.mbVisualizationEnable = "on".equals(builder.get(PreviewParameter.KEY_ALGO_VISUALIZATION_ENABLE));
                    if (builder.containsKey(PreviewParameter.KEY_FACE_RECTIFY_ENABLE)) {
                        cameraRequestTag.mbFaceRectifyOpen = ((Boolean) builder.get(PreviewParameter.KEY_FACE_RECTIFY_ENABLE)).booleanValue();
                    }
                    if (builder.containsKey(PreviewParameter.KEY_IS_FROM_MAIN_MENU)) {
                        cameraRequestTag.mbFromMainMenu = ((Boolean) builder.get(PreviewParameter.KEY_IS_FROM_MAIN_MENU)).booleanValue();
                    }
                }
                builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_APS_FEATURE_TYPE, (Parameter.Key<int[]>) new int[]{this.mApsDecisionFeatureType});
                builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_BRACKET_MODE, (Parameter.Key<int[]>) new int[]{this.mApsBracketMode});
                updatePreviewRequestTag(builder, cameraRequestTag, str, str2);
                return;
            case 2:
                updateCaptureRequestTag(builder, cameraRequestTag, str2);
                if (builder.containCustomKey(PreviewParameter.KEY_CAPTURE_TIME)) {
                    builder.set((Parameter.Key<Parameter.Key<Long>>) PreviewParameter.KEY_EXIF_TAG_DATETIME, (Parameter.Key<Long>) builder.get(PreviewParameter.KEY_CAPTURE_TIME));
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fillWatermarkParam(CameraRequestTag cameraRequestTag, Bundle bundle) {
        Size size = bundle.getSize("size");
        cameraRequestTag.mApsWatermarkParam = new ApsWatermarkParam(bundle.getInt("refWidth"), size.getHeight(), size.getWidth(), bundle.getByteArray("buffer"));
        cameraRequestTag.mbWatermarkNeedScale = bundle.getBoolean(CameraConstant.WaterMarkParamKeys.NEED_SCALE);
        cameraRequestTag.mInputWidth = bundle.getInt(CameraConstant.WaterMarkParamKeys.INPUT_WIDTH);
        cameraRequestTag.mWatermarkBolderX = bundle.getInt(CameraConstant.WaterMarkParamKeys.WATERMARK_BORDER_X);
        cameraRequestTag.mWatermarkBolderY = bundle.getInt(CameraConstant.WaterMarkParamKeys.WATERMARK_BORDER_Y);
        cameraRequestTag.mbWatermarkMakeupEnable = bundle.getBoolean(CameraConstant.WaterMarkParamKeys.MAKEUP_ENABLE);
        cameraRequestTag.mbWatermarkMakeupWidth = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_WIDTH);
        cameraRequestTag.mbWatermarkMakeupHeight = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_HEIGHT);
        cameraRequestTag.mbWatermarkMakeupStartX = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_START_X);
        cameraRequestTag.mbWatermarkMakeupStartY = bundle.getInt(CameraConstant.WaterMarkParamKeys.MAKEUP_START_Y);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0088 A[Catch: all -> 0x0102, TryCatch #0 {, blocks: (B:6:0x000b, B:8:0x000f, B:10:0x002a, B:19:0x0048, B:22:0x007d, B:23:0x0084, B:25:0x0088, B:27:0x008e, B:29:0x0092, B:41:0x00fd, B:30:0x009e, B:32:0x00a2, B:33:0x00ae, B:35:0x00b4, B:37:0x00b8, B:39:0x00c6, B:40:0x00f9, B:20:0x0052, B:21:0x0067, B:42:0x0100), top: B:48:0x000b }] */
    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateStageParameter(@androidx.annotation.NonNull com.oplus.ocs.camera.common.parameter.Parameter r6, java.lang.String r7, java.lang.String r8, @androidx.annotation.Nullable com.oplus.ocs.camera.common.util.CameraRequestTag r9) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.BaseMode.updateStageParameter(com.oplus.ocs.camera.common.parameter.Parameter, java.lang.String, java.lang.String, com.oplus.ocs.camera.common.util.CameraRequestTag):void");
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
        cameraDeviceInfoImpl.setCameraCharacteristicsWrapper(CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str));
        cameraDeviceInfoImpl.setPhysicalCameraTypeList(Collections.singletonList(str));
        cameraDeviceInfoImpl.setDefaultPreviewConfigSizes(CameraConfigHelper.getSupportDefaultPreviewSizes());
        updateAllParameterRanges(cameraDeviceInfoImpl, str);
        return cameraDeviceInfoImpl;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x01fb A[Catch: all -> 0x0259, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0013, B:8:0x0023, B:10:0x002c, B:11:0x003a, B:13:0x0081, B:82:0x024b, B:83:0x0257, B:14:0x0088, B:16:0x0090, B:20:0x00a0, B:24:0x00bd, B:28:0x00d3, B:30:0x0158, B:38:0x0175, B:40:0x017f, B:44:0x0190, B:46:0x01aa, B:50:0x01bb, B:52:0x01c5, B:53:0x01d3, B:55:0x01d9, B:57:0x01df, B:59:0x01e5, B:62:0x01ec, B:64:0x01f7, B:66:0x01fb, B:68:0x0207, B:70:0x020b, B:72:0x0229, B:74:0x022d, B:75:0x022f, B:77:0x0233, B:81:0x0239, B:63:0x01f2, B:32:0x0166, B:34:0x016e, B:27:0x00c5, B:23:0x00b9, B:19:0x0096), top: B:88:0x0003 }] */
    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.oplus.ocs.camera.common.util.CameraRequestTag createRequestTag(java.lang.String r5, java.lang.Object r6, android.os.Handler r7, java.lang.String r8, com.oplus.ocs.camera.common.parameter.PreviewParameter.Builder r9) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.BaseMode.createRequestTag(java.lang.String, java.lang.Object, android.os.Handler, java.lang.String, com.oplus.ocs.camera.common.parameter.PreviewParameter$Builder):com.oplus.ocs.camera.common.util.CameraRequestTag");
    }

    final void buildTargetSurface(String str, String str2, PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        LinkedList<Pair<String, String>> useCaseValues = getUseCaseValues(getSurfaceUseCase(str));
        cameraRequestTag.mAddTargetSurfaces = new HashMap<>();
        cameraRequestTag.mRemoveTargetSurfaces = new HashMap<>();
        cameraRequestTag.mUselessTargetSurfaces = new HashMap<>();
        Iterator<Pair<String, String>> it = useCaseValues.iterator();
        while (it.hasNext()) {
            Pair<String, String> next = it.next();
            String str3 = (String) next.first;
            String surfaceUsageBySurfaceType = getSurfaceUsageBySurfaceType(str3);
            String str4 = "var_camera".equals(next.second) ? str : (String) next.second;
            SurfaceKey surfaceKey = new SurfaceKey(str4, surfaceUsageBySurfaceType, getSurfaceFormatBySurfaceType(str3, str4, str));
            if (needAddToTarget(str, str2, surfaceKey, builder)) {
                cameraRequestTag.mAddTargetSurfaces.put(surfaceKey, null);
            } else {
                cameraRequestTag.mUselessTargetSurfaces.put(surfaceKey, null);
                if (needRemoveTarget(str, str2, surfaceKey, builder)) {
                    cameraRequestTag.mRemoveTargetSurfaces.put(surfaceKey, null);
                }
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void unInit() {
        this.mCameraDeviceInfoMap.clear();
    }

    private int getSensorNum(String str) {
        return getSensorNumberFromConfig(str);
    }

    private void updateCaptureRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag, String str) {
        if (cameraRequestTag != null) {
            int[] iArr = (int[]) builder.get(PreviewParameter.KEY_PICTURE_EXIF_FLAG);
            if (iArr != null && iArr.length > 0) {
                cameraRequestTag.mExif = iArr[0];
            }
            if (builder.containsKey(CaptureRequest.JPEG_GPS_LOCATION)) {
                cameraRequestTag.mLocation = (Location) builder.get(CaptureRequest.JPEG_GPS_LOCATION);
            }
            if (builder.containsKey(PreviewParameter.KEY_FACE_RECTIFY_ENABLE)) {
                cameraRequestTag.mbFaceRectifyOpen = ((Boolean) builder.get(PreviewParameter.KEY_FACE_RECTIFY_ENABLE)).booleanValue();
            }
        }
        Integer num = (Integer) builder.get(CaptureRequest.JPEG_ORIENTATION);
        cameraRequestTag.mOrientation = num != null ? num.intValue() : 90;
        cameraRequestTag.mbSuperTextOpen = builder.get(PreviewParameter.KEY_SUPER_TEXT_ENABLE) != null ? ((Boolean) builder.get(PreviewParameter.KEY_SUPER_TEXT_ENABLE)).booleanValue() : false;
        if (cameraRequestTag.mbSuperTextOpen) {
            cameraRequestTag.mSuperTextVertices = (String) builder.get(PreviewParameter.KEY_SUPER_TEXT_VERTICES);
        }
        cameraRequestTag.mAppOpaqueObj = builder.get(PreviewParameter.KEY_REQUEST_TAG);
        if (builder.containCustomKey(PreviewParameter.KEY_CAPTURE_TIME)) {
            cameraRequestTag.mCaptureTime = ((Long) builder.get(PreviewParameter.KEY_CAPTURE_TIME)).longValue();
        }
        cameraRequestTag.mSingleBlurAlgoName = (String) builder.get(PreviewParameter.KEY_SINGLE_BLUR_ALGONAME);
        if (builder.get(PreviewParameter.KEY_SINGLE_PORTRAIT_EFFECT_MODE) != null) {
            cameraRequestTag.mSinglePortraitEffectMode = ((Integer) builder.get(PreviewParameter.KEY_SINGLE_PORTRAIT_EFFECT_MODE)).intValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_SINGLE_BLUR_LEVEL)) {
            cameraRequestTag.mBlurIndex = ((Integer) builder.get(PreviewParameter.KEY_SINGLE_BLUR_LEVEL)).intValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_SINGLE_BLUR_SHOW)) {
            cameraRequestTag.mBlurShow = ((Float) builder.get(PreviewParameter.KEY_SINGLE_BLUR_SHOW)).floatValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_SHUTTER_BUTTON_CLICK_TIME)) {
            cameraRequestTag.mShutterButtonClickTime = ((Long) builder.get(PreviewParameter.KEY_SHUTTER_BUTTON_CLICK_TIME)).longValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_WATERMARK_CAPTURE_ENABLE)) {
            cameraRequestTag.mbPhotoWaterMarkEnable = "on".equals(builder.get(PreviewParameter.KEY_WATERMARK_CAPTURE_ENABLE));
        }
        if (cameraRequestTag.mbPhotoWaterMarkEnable && builder.containCustomKey(PreviewParameter.KEY_WATERMARK_PARAM) && cameraRequestTag.mSuperTextVertices == null) {
            Bundle bundle = (Bundle) builder.get(PreviewParameter.KEY_WATERMARK_PARAM);
            Size size = bundle.getSize("size");
            cameraRequestTag.mApsWatermarkParam = new ApsWatermarkParam(bundle.getInt("refWidth"), size.getHeight(), size.getWidth(), bundle.getByteArray("buffer"));
            cameraRequestTag.mbWatermarkMakeupEnable = bundle.getBoolean(CameraConstant.WaterMarkParamKeys.MAKEUP_ENABLE);
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
        if (builder.containCustomKey(PreviewParameter.KEY_BURST_SHOT_ENABLE)) {
            cameraRequestTag.mbBurstShot = "on".equals(builder.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));
            cameraRequestTag.mBurstShotPath = (String) builder.get(PreviewParameter.KEY_BURST_SHOT_PATH);
            cameraRequestTag.mBurstShotFlagId = ((Long) builder.get(PreviewParameter.KEY_BURST_SHOT_FLAG_ID)).longValue();
        }
        if (builder.containsKey(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION)) {
            cameraRequestTag.mTouchEVValue = ((Integer) builder.get(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION)).intValue();
        }
        if (builder.containsKey(PreviewParameter.KEY_IS_FROM_MAIN_MENU)) {
            cameraRequestTag.mbFromMainMenu = ((Boolean) builder.get(PreviewParameter.KEY_IS_FROM_MAIN_MENU)).booleanValue();
        }
        synchronized (this.mPreviewResultLock) {
            if (this.mPreviewResult != null) {
                int intValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
                if ((Util.isHdrOn(this.mPreviewResult) && !cameraRequestTag.mbBurstShot) || ((cameraRequestTag.mbInNightProcess && !cameraRequestTag.mbBurstShot) || ((cameraRequestTag.mbSupportBokehHDR && Util.isBokehHDR(this.mPreviewResult)) || 13 == intValue || 26 == intValue))) {
                    cameraRequestTag.mCaptureEvList = (int[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                    cameraRequestTag.mCaptureEtList = (long[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_ET_LIST);
                }
            }
        }
    }

    private void initializeFeatures() {
        this.mCameraTypeFeatureMap = FeatureFactory.getCameraTypeFeatures(getModeName());
    }

    private void setFeatureMap(String str) {
        this.mFeatureMap = this.mCameraTypeFeatureMap == null ? null : this.mCameraTypeFeatureMap.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setFrameDuration(PreviewParameter.Builder builder) {
        Integer num = (Integer) builder.get(CaptureRequest.CONTROL_AE_MODE);
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        if (l == null || num == null || num.intValue() != 0) {
            return;
        }
        Range range = (Range) builder.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE);
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.SENSOR_FRAME_DURATION, (CaptureRequest.Key) Long.valueOf(Math.max(CameraConstant.TIME_RATIO_S_TO_NS / (range == null ? 30 : ((Integer) range.getUpper()).intValue()), l.longValue())));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updatePreviewRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag, String str, String str2) {
        if (cameraRequestTag == null) {
            return;
        }
        Float f = (Float) builder.get(PreviewParameter.KEY_ZOOM_RATIO);
        cameraRequestTag.mZoomRatio = f != null ? f.floatValue() : 1.0f;
        cameraRequestTag.mSuperRawEnable = "super_raw".equals(builder.get(PreviewParameter.KEY_RAW_CONTROL));
        cameraRequestTag.mSCPEnable = "on".equals(builder.get(PreviewParameter.KEY_SUPER_CLEAR_PORTRAIT_ENABLE));
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_TRIPOD_MODE);
        boolean z = true;
        if (iArr == null || iArr[0] != 1) {
            z = false;
        }
        cameraRequestTag.mbTripodEnable = z;
        cameraRequestTag.mbUltraResolutionEnabled = "on".equals(builder.get(PreviewParameter.KEY_ULTRA_HIGH_RESOLUTION_ENABLE));
        cameraRequestTag.mbFaceBeautyOpen = "on".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
        cameraRequestTag.mNeonEnable = "on".equals(builder.get(PreviewParameter.KEY_PORTRAIT_NEON_ENABLE));
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str2);
        if (sdkCameraDeviceConfig != null) {
            cameraRequestTag.mStreamerEnable = "on".equals((String) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE));
        }
        cameraRequestTag.mbPiEnable = "on".equals(builder.get(PreviewParameter.KEY_AI_PHOTO));
        cameraRequestTag.mbGestureEnable = "on".equals(builder.get(PreviewParameter.KEY_GESTURE_ENABLE));
        cameraRequestTag.mbVideoRetentionOpen = "on".equals(builder.get(PreviewParameter.KEY_VIDEO_RETENTION_OPEN));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<Size> getPictureSizes(String str, int i) {
        int i2;
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str);
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristicsWrapper.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
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
        if (sensorNumberMap == null || sensorNumberMap.isEmpty() || (linkedList = sensorNumberMap.get(getModeName())) == null || linkedList.isEmpty()) {
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
        if (this.mFeatureMap == null) {
            CameraUnitLog.v(TAG, "updateAllParameterRange, no need update");
            return;
        }
        for (String str2 : this.mFeatureMap.keySet()) {
            String parameterNameByFeatureName = CameraConfigHelper.getParameterNameByFeatureName(str2);
            String[] strArr = CameraConfigHelper.getConfigureParameterMapping().get(parameterNameByFeatureName);
            if (strArr == null) {
                CameraUnitLog.i(TAG, "updateAllParameterRange, featureName: " + str2 + ", parameterName: " + parameterNameByFeatureName + " will continue");
            } else {
                String str3 = strArr[0];
                String str4 = strArr[1];
                String str5 = strArr[2];
                List<String> supportValues = this.mFeatureMap.get(str3).getSupportValues();
                if (supportValues == null) {
                    CameraUnitLog.i(TAG, "updateAllParameterRange, featureName: " + str2 + ", cameraType: " + str + ", this feature not config in this camera type");
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < supportValues.size(); i++) {
                        arrayList.add(Util.getValue(str4, supportValues.get(i)));
                    }
                    CameraUnitLog.i(TAG, "updateAllParameterRange, featureName: " + str2 + ", parameterName: " + parameterNameByFeatureName + ", values: " + Arrays.asList(strArr) + ", configValue: " + supportValues + ", after convert: " + arrayList);
                    if (1 == Integer.parseInt(str5)) {
                        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(parameterNameByFeatureName, arrayList);
                    } else if (3 == Integer.parseInt(str5)) {
                        cameraDeviceInfoImpl.getConfigureParameterRangeMap().put(parameterNameByFeatureName, arrayList);
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
                    CameraUnitLog.v(TAG, "getFeaturesFromConfig key: " + key.getName() + ", value: " + parameter.get(key));
                }
            }
        }
        return hashMap;
    }

    boolean needPreviewMeta() {
        return AlgoSwitchConfig.getSupportApsPreview();
    }

    @NonNull
    private LinkedList<Pair<String, String>> getUseCaseValues(String str) {
        LinkedList<Pair<String, String>> useCaseValues = CameraConfigHelper.getUseCaseValues(str);
        if (useCaseValues == null || useCaseValues.isEmpty()) {
            throw new RuntimeException("getUseCaseValues, " + str + "'s usecase_info are not configured!");
        }
        return useCaseValues;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.oplus.ocs.camera.common.surface.SurfaceWrapper getSurfaceWrapper(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig r13, int r14, java.lang.String r15, java.lang.String r16, @androidx.annotation.NonNull android.util.Size r17, android.util.Size r18, boolean r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.BaseMode.getSurfaceWrapper(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig, int, java.lang.String, java.lang.String, android.util.Size, android.util.Size, boolean, java.lang.String):com.oplus.ocs.camera.common.surface.SurfaceWrapper");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public String getSurfaceUsageBySurfaceType(String str) {
        char c;
        switch (str.hashCode()) {
            case -2099255641:
                if (str.equals("reprocess_input")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1513135880:
                if (str.equals("raw_output")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -318184504:
                if (str.equals("preview")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 112202875:
                if (str.equals("video")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 163290031:
                if (str.equals("capture_raw")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 163297377:
                if (str.equals("capture_yuv")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 552585030:
                if (str.equals("capture")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 694155830:
                if (str.equals("preview_frame")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1214408581:
                if (str.equals("preview_in_preview")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 1238458461:
                if (str.equals("tuning_data_raw")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 1238465807:
                if (str.equals("tuning_data_yuv")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 1267103479:
                if (str.equals("reprocess_yuv")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 1899077634:
                if (str.equals("video_recorder")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 2043358779:
                if (str.equals(CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return CameraSessionEntity.SurfaceUsage.PREVIEW;
            case 1:
                return CameraSessionEntity.SurfaceUsage.PREVIEW_FRAME;
            case 2:
            case 3:
            case 4:
            case 5:
                return CameraSessionEntity.SurfaceUsage.PICTURE;
            case 6:
                return CameraSessionEntity.SurfaceUsage.PICTURE_MFNE;
            case 7:
                return CameraSessionEntity.SurfaceUsage.REPROCESS;
            case '\b':
            case '\t':
                return CameraSessionEntity.SurfaceUsage.RECORDING;
            case '\n':
                return CameraSessionEntity.SurfaceUsage.TUNING_RAW;
            case 11:
                return CameraSessionEntity.SurfaceUsage.TUNING_YUV;
            case '\f':
                return CameraSessionEntity.SurfaceUsage.REPROCESS_YUV;
            case '\r':
                return CameraSessionEntity.SurfaceUsage.PREVIEW_IN_PREVIEW;
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
        String surfaceUseCase = getSurfaceUseCase(str);
        LinkedList<Pair<String, String>> useCaseValues = getUseCaseValues(surfaceUseCase);
        CameraUnitLog.d(TAG, "buildStreamSurface, cameraType: " + str + ", caseName: " + surfaceUseCase + ", linkedList: " + useCaseValues + ", fistPreview: " + defaultPreviewSurface);
        Iterator<Pair<String, String>> it = useCaseValues.iterator();
        while (it.hasNext()) {
            Pair<String, String> next = it.next();
            String str2 = (String) next.first;
            String cameraType = "var_camera".equals(next.second) ? defaultPreviewSurface.getCameraType() : (String) next.second;
            Pair<Size, Size> surfaceSize = getSurfaceSize(sdkCameraDeviceConfig, str2, cameraType, str);
            SurfaceWrapper surfaceWrapper = getSurfaceWrapper(sdkCameraDeviceConfig, getPhysicalId(str, cameraType, str2), str2, cameraType, (Size) surfaceSize.first, (Size) surfaceSize.second, !isReuseAppSurface(surfaceUseCase, str2, cameraType), str);
            if (surfaceWrapper != null) {
                linkedList.add(surfaceWrapper);
            }
        }
        return linkedList;
    }

    protected int getCaptureFormat() {
        if (this.mPreviewResult != null) {
            return ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue();
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
        if ("preview".equals(str) || "capture".equals(str) || "video".equals(str) || "capture_yuv".equals(str) || "video_recorder".equals(str) || "reprocess_yuv".equals(str) || CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR.equals(str) || "preview_in_preview".equals(str) || "preview_frame".equals(str)) {
            return 35;
        }
        if ("capture_raw".equals(str) || "reprocess_input".equals(str) || "raw_output".equals(str)) {
            return getRawFormat(str3);
        }
        return ("tuning_data_raw".equals(str) || "tuning_data_yuv".equals(str)) ? 842094169 : 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getRawFormat(String str) {
        return (!((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_CAPTURE_WITH_RAW10, false)).booleanValue() || getModeName().equals("night_mode") || getModeName().equals("professional_mode") || getModeName().equals("long_exposure_mode") || getModeName().equals(CameraConstant.ModeName.TIME_LAPSE_PRO_MODE)) ? 32 : 37;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01b1, code lost:
        if (1 == r8[0]) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008d, code lost:
        if (r1 != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x016c, code lost:
        if (r4 == false) goto L127;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x017c A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0011, B:11:0x0021, B:14:0x0033, B:16:0x0045, B:18:0x0057, B:22:0x006c, B:24:0x0070, B:29:0x0085, B:137:0x0250, B:33:0x0092, B:36:0x009c, B:38:0x00a0, B:41:0x00b2, B:43:0x00c0, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:53:0x00f4, B:56:0x00fc, B:58:0x00ff, B:60:0x0107, B:62:0x0113, B:65:0x0119, B:67:0x0125, B:70:0x012b, B:72:0x0137, B:76:0x0140, B:81:0x0152, B:85:0x015d, B:86:0x0161, B:99:0x0178, B:101:0x017c, B:104:0x0190, B:107:0x0198, B:109:0x019b, B:111:0x01a3, B:113:0x01af, B:130:0x01e5, B:116:0x01b5, B:118:0x01c1, B:121:0x01c6, B:123:0x01d2, B:126:0x01d7, B:132:0x023a, B:134:0x0242), top: B:143:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0092 A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0011, B:11:0x0021, B:14:0x0033, B:16:0x0045, B:18:0x0057, B:22:0x006c, B:24:0x0070, B:29:0x0085, B:137:0x0250, B:33:0x0092, B:36:0x009c, B:38:0x00a0, B:41:0x00b2, B:43:0x00c0, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:53:0x00f4, B:56:0x00fc, B:58:0x00ff, B:60:0x0107, B:62:0x0113, B:65:0x0119, B:67:0x0125, B:70:0x012b, B:72:0x0137, B:76:0x0140, B:81:0x0152, B:85:0x015d, B:86:0x0161, B:99:0x0178, B:101:0x017c, B:104:0x0190, B:107:0x0198, B:109:0x019b, B:111:0x01a3, B:113:0x01af, B:130:0x01e5, B:116:0x01b5, B:118:0x01c1, B:121:0x01c6, B:123:0x01d2, B:126:0x01d7, B:132:0x023a, B:134:0x0242), top: B:143:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean needAddToTarget(java.lang.String r11, java.lang.String r12, @androidx.annotation.NonNull com.oplus.ocs.camera.common.surface.SurfaceKey r13, com.oplus.ocs.camera.common.parameter.PreviewParameter.Builder r14) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.BaseMode.needAddToTarget(java.lang.String, java.lang.String, com.oplus.ocs.camera.common.surface.SurfaceKey, com.oplus.ocs.camera.common.parameter.PreviewParameter$Builder):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setVideoWaterMarkParams(PreviewParameter.Builder builder, String str, CameraRequestTag cameraRequestTag) {
        Bundle bundle = (Bundle) builder.get(PreviewParameter.KEY_WATERMARK_PARAM);
        if (!isVideoWaterMarkOpen(str)) {
            if (2 == AlgoSwitchConfig.getApsVersion()) {
                builder.set((Parameter.Key<Parameter.Key<byte[]>>) PreviewParameter.KEY_VIDEO_WATERMARK_ENABLE, (Parameter.Key<byte[]>) new byte[]{0});
                builder.set((Parameter.Key<Parameter.Key<byte[]>>) PreviewParameter.KEY_VIDEO_WATERMARK_PATH, (Parameter.Key<byte[]>) "NULL".getBytes(StandardCharsets.UTF_8));
            }
        } else if (bundle != null) {
            int i = bundle.getInt("orientation", 0);
            if (isHalVideoWaterMark()) {
                String string = bundle.getString("filePath");
                builder.set((Parameter.Key<Parameter.Key<byte[]>>) PreviewParameter.KEY_VIDEO_WATERMARK_ENABLE, (Parameter.Key<byte[]>) new byte[]{1});
                builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_VIDEO_WATERMARK_ORIENTATION, (Parameter.Key<int[]>) new int[]{i});
                builder.set((Parameter.Key<Parameter.Key<byte[]>>) PreviewParameter.KEY_VIDEO_WATERMARK_PATH, (Parameter.Key<byte[]>) string.getBytes(StandardCharsets.UTF_8));
                return;
            }
            cameraRequestTag.mbVideoWaterMarkEnable = true;
            cameraRequestTag.mVideoWaterMarkOrientation = i;
            fillWatermarkParam(cameraRequestTag, bundle);
        } else {
            CameraUnitLog.e(TAG, "setVideoWaterMarkParams, watermarkParam is null!");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean needTuningData(java.util.HashMap<com.oplus.ocs.camera.common.surface.SurfaceKey, android.view.Surface> r3) {
        /*
            r2 = this;
            java.util.Set r2 = r3.keySet()
            java.util.Iterator r2 = r2.iterator()
        L8:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L2e
            java.lang.Object r3 = r2.next()
            com.oplus.ocs.camera.common.surface.SurfaceKey r3 = (com.oplus.ocs.camera.common.surface.SurfaceKey) r3
            java.lang.String r0 = "surface_key_tuning_raw"
            java.lang.String r1 = r3.getUsage()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L2c
            java.lang.String r0 = "surface_key_tuning_yuv"
            java.lang.String r3 = r3.getUsage()
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L8
        L2c:
            r2 = 1
            return r2
        L2e:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.BaseMode.needTuningData(java.util.HashMap):boolean");
    }

    private boolean isVideoWaterMarkOpen(String str) {
        return "on".equals(getConfigureParameter(str).get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE));
    }

    private boolean isHalVideoWaterMark() {
        return ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_VIDEO_WATERMARK_HAL_SUPPORT, false)).booleanValue();
    }

    protected int getPreviewImageReaderMaxImages() {
        return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_PREVIEW_MAX_IMAGES, 20)).intValue();
    }

    protected int getCaptureImageReaderMaxImages() {
        return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_CAPTURE_MAX_IMAGES, 20)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        synchronized (this.mPreviewResultLock) {
            if (((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAMERA_ID)).intValue() == cameraRequestTag.mRearFrontCameraId && ((this.mTagMap.get(cameraRequestTag.mCameraType) == null || TextUtils.equals((CharSequence) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_MODE), ApsDataConvert.getApsModeName(this.mTagMap.get(cameraRequestTag.mCameraType).mModeName, cameraRequestTag.mRearFrontCameraId))) && ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT)).intValue() > 0)) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Size getCaptureYuvMfnrSize(String str) {
        Size size = null;
        if ("rear_main".equals(str)) {
            size = (Size) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_PICTURE_SIZE, null);
        } else if ("rear_wide".equals(str)) {
            size = (Size) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_WIDE_PICTURE_SIZE, null);
        }
        CameraUnitLog.i(TAG, "getCaptureYuvMfnrSize, cameraType: " + str + ", mfnrSize: " + size);
        return size;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isAllowedToTakePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler, CameraRequestTag cameraRequestTag) {
        int i;
        boolean z;
        if (!checkPreviewResult(cameraRequestTag)) {
            CameraUnitLog.v(TAG, "isAllowedToTakePicture, checkPreviewResult return false");
            return false;
        }
        int i2 = 1;
        if (checkMemoryState(cameraRequestTag)) {
            i = -1;
            z = true;
        } else {
            CameraUnitLog.v(TAG, "isAllowedToTakePicture, checkMemoryState return false");
            i = 1;
            z = false;
        }
        if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_LOW_MEMORY_CHECK_INPUT_MEM_SUPPORT, false)).booleanValue()) {
            CameraCharacteristicsWrapper cameraCharacteristicsWrapper = CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(cameraRequestTag.mCameraType);
            if (!cameraRequestTag.mConsumerInterface.isVideoRecording() && !Util.isQcomPlatform() && 1 == ((Integer) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_MTK_LOW_MEMORY)).intValue() && cameraRequestTag.mConsumerInterface.checkInputMemSize()) {
                CameraUnitLog.v(TAG, "isAllowedToTakePicture, check inputMemSize fail!");
                z = false;
                if (!z && cameraPictureCallbackAdapter != null && handler != null) {
                    CameraUnitLog.v(TAG, "isAllowedToTakePicture, code: " + i2);
                    cameraPictureCallbackAdapter.onCaptureFailed((CaptureRequest) null, new CameraPictureCallbackAdapter.PictureResult.Builder().set(ApsOtherParameter.KEY_CAPTURE_FAIL_CODE, Integer.valueOf(i2)).build());
                }
                return z;
            }
        }
        i2 = i;
        if (!z) {
            CameraUnitLog.v(TAG, "isAllowedToTakePicture, code: " + i2);
            cameraPictureCallbackAdapter.onCaptureFailed((CaptureRequest) null, new CameraPictureCallbackAdapter.PictureResult.Builder().set(ApsOtherParameter.KEY_CAPTURE_FAIL_CODE, Integer.valueOf(i2)).build());
        }
        return z;
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        int intValue;
        int intValue2;
        synchronized (this.mPreviewResultLock) {
            this.mPreviewResult = previewResult;
        }
        boolean z = false;
        if (previewResult.containsKey(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE.getName()) && this.mApsDecisionFeatureType != (intValue2 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue())) {
            this.mApsDecisionFeatureType = intValue2;
            z = true;
        }
        if (!previewResult.containsKey(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE.getName()) || this.mApsBracketMode == (intValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE)).intValue())) {
            return z;
        }
        this.mApsBracketMode = intValue;
        return true;
    }

    protected boolean checkMemoryState(CameraRequestTag cameraRequestTag) {
        Size size;
        int i;
        ApsRequestTag apsRequestTag = this.mTagMap.get(cameraRequestTag.mCameraType);
        if (apsRequestTag != null) {
            size = apsRequestTag.mPictureSize;
            if (size != null && (cameraRequestTag.mRequestFormat == 32 || cameraRequestTag.mRequestFormat == 37 || cameraRequestTag.mRequestFormat == 36 || cameraRequestTag.mRequestFormat == 34)) {
                size = CameraCharacteristicsHelper.getSizeByFormat(apsRequestTag.mCameraType, 1.3333333333333333d, 32);
            }
        } else {
            size = null;
        }
        int i2 = 0;
        if (size != null) {
            i = size.getHeight() * size.getWidth();
        } else {
            i = 0;
        }
        int i3 = cameraRequestTag.mRequestFormat;
        if (i3 != 32) {
            if (i3 != 256) {
                switch (i3) {
                    case ApsConstant.FEATURE_TYPE_SE_NIGHT /* 35 */:
                        i2 = ((int) (i * 1.5f)) * cameraRequestTag.mRequestNum;
                        break;
                }
            } else {
                i2 = cameraRequestTag.mRequestNum * i;
            }
            return cameraRequestTag.mConsumerInterface.checkRuntimeState(i2, getHalMemory());
        }
        i2 = ((int) (i * 2.0f)) * cameraRequestTag.mRequestNum;
        return cameraRequestTag.mConsumerInterface.checkRuntimeState(i2, getHalMemory());
    }

    @Override // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult) {
        if (cameraRequestTag == null) {
            return false;
        }
        if (1 == i || 2 == i) {
            if (2 == i && this.mbCaptureNotMatchMeta) {
                return false;
            }
            if (!CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) || (!cameraRequestTag.mbFaceBeautyOpen && cameraRequestTag.mMakeupType.equals("none"))) {
                if (this.mPreviewAlgoConfig == null || !TextUtils.equals(this.mPreviewAlgoConfig.mCameraMode, str)) {
                    this.mPreviewAlgoConfig = AlgoSwitchConfig.getPreviewConfig(str, cameraRequestTag.mRearFrontCameraId);
                    if (this.mPreviewAlgoConfig == null) {
                        CameraUnitLog.e(TAG, "matchPreviewTimestamp, config is null");
                        return false;
                    }
                }
                AlgoSwitchConfig.PreviewConfig.Component component = this.mPreviewAlgoConfig.mComponentMap.get("preview");
                if (component != null && component.mbEnable) {
                    List asList = Arrays.asList(component.mAlgoList);
                    if (asList.contains(ParameterKeys.PREVIEW_ALGO_NAME_HYPERLAPSE) || asList.contains(ParameterKeys.PREVIEW_ALGO_NAME_EIS) || asList.contains("preview_supereis") || asList.contains(ParameterKeys.PREVIEW_ALGO_NAME_SAT)) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }
        return true;
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
            iArr = "tuning_data_raw".equals(str) ? (int[]) cameraDeviceInfo.get(CameraCharacteristicsWrapper.KEY_MTK_TUNING_DATA_RAW_SIZE) : null;
        }
        if (iArr == null || iArr.length < 2) {
            return null;
        }
        return new Size(iArr[0], iArr[1]);
    }
}
