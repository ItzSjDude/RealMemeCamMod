package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Bundle;
import android.os.Handler;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsTotalResultParameter;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.ApsDataConvert;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public class PhotoMode extends BaseMode {
    private static final int ALL_AI_SCENE_DISABLE_VALUE = 0;
    private static final int ALL_AI_SCENE_ENABLE_VALUE = 67108863;
    private static final int DISABLE = 0;
    private static final int ENABLE = 1;
    private static final int QUICK_VIDEO_EIS_ANIMATION_DONE = 1;
    private static final String TAG = "PhotoMode";
    private ApsAdapterDecision.DecisionResult mCurrentDecisionResult = null;
    private boolean mbQuickVideoRecording = false;
    private boolean mbSupportVideoSnapShot = false;
    private boolean mbVideoEisOn = false;
    private int mZoomFeaturePrev = 0;
    private Object mVideoEisOnLock = new Object();
    private boolean mbIsFrontMFNRSizeSupported = true;

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "photo_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isExplorerOpen(String str, SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isVideoSnapShotByAps(String str) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        if ("rear_main".equals(str) || "rear_wide".equals(str) || "rear_tele".equals(str)) {
            if (CameraCharacteristicsHelper.getCameraIdType("rear_sat") == null && CameraConfigHelper.getUseCaseValues("standard_photo_case") != null) {
                apsRequestTag.mModeName = "photo_mode";
            } else if ("rear_wide".equals(str) && !Util.isSystemCamera()) {
                apsRequestTag.mModeName = "professional_mode";
                cameraSessionEntity.setOperationMode("8009");
            } else {
                apsRequestTag.mModeName = "photo_mode";
                if (!Util.isSystemCamera()) {
                    cameraSessionEntity.setOperationMode(String.valueOf(0));
                }
            }
        } else if ("rear_sat".equals(str) || Util.isSystemCamera()) {
            apsRequestTag.mModeName = "photo_mode";
        } else {
            apsRequestTag.mModeName = "basic_capture_mode";
        }
        apsRequestTag.mbHighPictureSizeEnable = "on".equals(sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE));
        apsRequestTag.mbPhoto10BitsEnable = "on".equals(sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.PHOTO_10BIT_ENABLE));
        this.mbIsFrontMFNRSizeSupported = true;
        if ("front_main".equals(str) && CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null) {
            List<SurfaceWrapper> pictureSurfaces = sdkCameraDeviceConfig.getPictureSurfaces();
            if (pictureSurfaces.size() > 0) {
                Size halSurfaceSize = pictureSurfaces.get(0).getHalSurfaceSize();
                Size geMaxSize = geMaxSize(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, halSurfaceSize.getWidth() / halSurfaceSize.getHeight());
                CameraUnitLog.v(TAG, "onConfigure, cameraType: " + str + ", pictureSize: " + halSurfaceSize + ", mfnrSize: " + geMaxSize);
                if (geMaxSize != null && halSurfaceSize.getHeight() <= geMaxSize.getHeight() && halSurfaceSize.getWidth() <= geMaxSize.getWidth()) {
                    this.mbIsFrontMFNRSizeSupported = false;
                }
            }
        }
        CameraUnitLog.d(TAG, "onConfigure, mModeName: " + apsRequestTag.mModeName);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        if (this.mTagMap.get(str) != null) {
            return true;
        }
        return super.useOplusCameraCase(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        ApsRequestTag apsRequestTag = this.mTagMap.get(cameraRequestTag.mCameraType);
        if (apsRequestTag == null || !"basic_capture_mode".equals(apsRequestTag.mModeName) || ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT)).intValue() <= 0) {
            return super.checkPreviewResult(cameraRequestTag);
        }
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        synchronized (this.mPreviewResultLock) {
            if (this.mPreviewResult != null && Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                createRequestTag.mbMirrorEnable = "on".equals(getConfigureParameter(str).get(ConfigureParameter.MIRROR_ENABLE));
                createRequestTag.mbAIShutter = ((Boolean) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_AI_SHUTTER)).booleanValue();
                boolean z = false;
                createRequestTag.mbEeyEnhance = AlgoSwitchConfig.getSupportCaptureAlgo(createRequestTag.mCaptureMode, createRequestTag.mCameraId, ParameterKeys.ALGO_NAME_EYE_ENHANCE) && 1 == createRequestTag.mRearFrontCameraId && !createRequestTag.mbInThirdApp;
                if (Util.isHdrOn(this.mPreviewResult) && !createRequestTag.mbBurstShot) {
                    createRequestTag.mCaptureEvList = (int[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                    createRequestTag.mCaptureEtList = (long[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_ET_LIST);
                }
                if (this.mbSupportVideoSnapShot) {
                    createRequestTag.mbVideoCapture = true;
                }
                if (builder.get(PreviewParameter.KEY_ZOOM_RATIO) != null) {
                    createRequestTag.mZoomRatio = ((Float) builder.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue();
                }
                if (createRequestTag.mbBurstShot) {
                    int intValue = ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_CSHOT_FIRST_REQUEST_NUM, 3)).intValue();
                    if (!CameraCharacteristicsHelper.isSupportCShot(createRequestTag.mCameraType)) {
                        intValue = 20;
                    }
                    createRequestTag.mRequestNum = intValue;
                }
                if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SE_NIGHT_SUPPORT, false)).booleanValue() && Util.getNightStateDecision(this.mPreviewResult) > 0 && !createRequestTag.mbBurstShot) {
                    createRequestTag.mbInNightProcess = true;
                }
                createRequestTag.mAISState = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE)).intValue();
                if (isApsAlgoHdr(createRequestTag)) {
                    String str3 = (String) builder.get(PreviewParameter.KEY_HDR_MODE);
                    createRequestTag.mHdrMode = str3;
                    if ("on".equals(str3) || ("auto".equals(str3) && Util.isHdrOn(this.mPreviewResult))) {
                        z = true;
                    }
                    createRequestTag.mbHdrTrigger = z;
                }
            }
        }
        return createRequestTag;
    }

    private boolean isApsAlgoHdr(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag.mApsAlgoFlags != null) {
            for (String str : cameraRequestTag.mApsAlgoFlags) {
                if (ParameterKeys.ALGO_NAME_HDR.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        char c;
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        int hashCode = str.hashCode();
        if (hashCode == -930917882) {
            if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode == -804429082) {
            if (str.equals(Parameter.ParameterStage.CONFIGURE)) {
                c = 3;
            }
            c = 65535;
        } else if (hashCode != -588535212) {
            if (hashCode == 2102512875 && str.equals(Parameter.ParameterStage.START_PREVIEW)) {
                c = 2;
            }
            c = 65535;
        } else {
            if (str.equals(Parameter.ParameterStage.START_RECORDING)) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
                updateCameraRequestTag(builder, cameraRequestTag);
                return;
            case 2:
                if (cameraRequestTag != null) {
                    if (builder.containCustomKey(PreviewParameter.KEY_TILT_SHIFT_ENABLE)) {
                        cameraRequestTag.mbTiltShiftOpen = ((Boolean) builder.get(PreviewParameter.KEY_TILT_SHIFT_ENABLE)).booleanValue();
                    }
                    if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_IZOOM_PREVIEW_ENABLE, false)).booleanValue()) {
                        synchronized (this.mPreviewResultLock) {
                            if (this.mPreviewResult != null) {
                                cameraRequestTag.mSupportCaptureZoomFeature = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
                                builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_IZOOM_PREVIEW, (Parameter.Key<int[]>) new int[]{4 == cameraRequestTag.mSupportCaptureZoomFeature ? 1 : 0});
                            }
                        }
                    }
                    if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE) && builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_VALUE)) {
                        cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                        cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
                    }
                    if (getModeName().equals("photo_mode")) {
                        cameraRequestTag.mb3DLutEnable = ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_3D_LUT_SUPPORT, false)).booleanValue();
                        return;
                    }
                    return;
                }
                return;
            case 3:
                if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_TELE_SMALL_PREVIEW_SUPPORT, false)).booleanValue() && !Util.isQcomPlatform() && getModeName().equals("photo_mode")) {
                    Size size = this.mTagMap.get(str2).mPreviewSize;
                    Size smallSizeByFormat = CameraCharacteristicsHelper.getSmallSizeByFormat(str2, size.getWidth() / size.getHeight(), 35);
                    CameraUnitLog.v(TAG, "updateStageParameterBuilder, enable mtk pip, size: " + smallSizeByFormat);
                    builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_MTK_NAVIGATION_NAVIGATIONMODE, (Parameter.Key<int[]>) new int[]{1});
                    if (smallSizeByFormat != null) {
                        builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_MTK_NAVIGATION_STREAMSIZE, (Parameter.Key<int[]>) new int[]{smallSizeByFormat.getWidth(), smallSizeByFormat.getHeight()});
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            Boolean bool = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_TUNING_DATA_BUFFER_SUPPORT, false);
            if (bool != null && bool.booleanValue() && cameraRequestTag != null) {
                parameter.set((Parameter.Key<Parameter.Key<byte[]>>) PreviewParameter.KEY_TUNING_DATA_ENABLE, (Parameter.Key<byte[]>) new byte[]{2});
                parameter.set((Parameter.Key<Parameter.Key<byte[]>>) PreviewParameter.KEY_TUNING_DATA_REQUEST, (Parameter.Key<byte[]>) (CameraRequestTag.RequestMode.CAPTURE_RAW == cameraRequestTag.getRequestMode() ? new byte[]{1} : new byte[]{2}));
                if (32 == cameraRequestTag.mRequestFormat) {
                    parameter.set((Parameter.Key<Parameter.Key<Integer>>) PreviewParameter.KEY_CAPTURE_PROCESS_RAW_ENABLE, (Parameter.Key<Integer>) 1);
                    parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_CAPTURE_RAW_BITS_PER_PIXEL, (Parameter.Key<int[]>) new int[]{12});
                } else if (34 == cameraRequestTag.mRequestFormat) {
                    parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_CAPTURE_PRIVATE_RAW_ENABLE, (Parameter.Key<int[]>) new int[]{1});
                } else if (37 == cameraRequestTag.mRequestFormat) {
                    parameter.set((Parameter.Key<Parameter.Key<Integer>>) PreviewParameter.KEY_CAPTURE_PROCESS_RAW_ENABLE, (Parameter.Key<Integer>) 1);
                    parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_CAPTURE_RAW_BITS_PER_PIXEL, (Parameter.Key<int[]>) new int[]{10});
                } else if (36 == cameraRequestTag.mRequestFormat) {
                    parameter.set((Parameter.Key<Parameter.Key<Integer>>) PreviewParameter.KEY_CAPTURE_PROCESS_RAW_ENABLE, (Parameter.Key<Integer>) 0);
                    parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_CAPTURE_RAW_BITS_PER_PIXEL, (Parameter.Key<int[]>) new int[]{12});
                }
            }
            if (cameraRequestTag != null) {
                parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.FEATURE_AI_SHUT_CAPTURE, (Parameter.Key<int[]>) new int[]{cameraRequestTag.mbAIShutter ? 1 : 0});
            }
            if (cameraRequestTag.getRequestMode() == CameraRequestTag.RequestMode.CAPTURE_REPROCESS && is10BitOpen(str2)) {
                cameraRequestTag.mRequestFormat = 34;
            } else {
                cameraRequestTag.mRequestFormat = 35;
            }
            if (is10BitOpen(str2)) {
                cameraRequestTag.mbPhoto10BitsEnable = true;
            }
            if (cameraRequestTag != null && cameraRequestTag.mbBurstShot) {
                parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_APS_FEATURE_TYPE, (Parameter.Key<int[]>) new int[]{0});
                parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_BRACKET_MODE, (Parameter.Key<int[]>) new int[]{0});
            }
            if (cameraRequestTag.mbInNightProcess || CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode()) {
                synchronized (this.mPreviewResultLock) {
                    parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_NIGHT_MODE, (Parameter.Key<int[]>) new int[]{Util.getNightStateDecision(this.mPreviewResult)});
                    Parameter.Key<int[]> key = PreviewParameter.KEY_BRACKET_MODE;
                    int[] iArr = new int[1];
                    iArr[0] = this.mPreviewResult != null ? ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE)).intValue() : 0;
                    parameter.set((Parameter.Key<Parameter.Key<int[]>>) key, (Parameter.Key<int[]>) iArr);
                }
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str) {
        return ("rear_main".equals(str) || "rear_wide".equals(str)) ? ("rear_main".equals(str) && "on".equals((String) getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE)) && CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_PICTURE_SIZE, null) != null) ? CameraConstant.UseCase.MFNR_PHOTO : ("rear_wide".equals(str) && "on".equals((String) getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE)) && CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_WIDE_PICTURE_SIZE, null) != null) ? CameraConstant.UseCase.MFNR_PHOTO : (CameraCharacteristicsHelper.getCameraIdType("rear_sat") != null || CameraConfigHelper.getUseCaseValues("standard_photo_case") == null) ? Util.isSystemCamera() ? (!needInputSurface(str) || "on".equals(getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE))) ? "on".equals(getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE)) ? "simple_photo_case" : CameraConstant.UseCase.SINGLE_PHOTO : "none_sat_night_case" : "simple_photo_case" : "standard_photo_case" : "rear_sat".equals(str) ? CameraConstant.MonoFilterType.BLACK_WHITE.equals(this.mTagMap.get(str).mFeatureName) ? CameraConstant.UseCase.MONO_CAMERA1 : "sat_photo_case" : "front_main".equals(str) ? CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null ? this.mbIsFrontMFNRSizeSupported ? CameraConstant.UseCase.FRONT_SINGLE_MFNR_PHOTO : CameraConstant.UseCase.FRONT_SINGLE_PHOTO : "1".equals(ApsUtils.getVendorTagConfig(DefaultUtill.KEY_NIGHT_OFFLINE_R2Y)) ? "front_night_case" : CameraConstant.UseCase.FRONT_SINGLE_PHOTO : CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str) ? CameraConstant.UseCase.MONO_CAMERA1 : "simple_photo_case";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x019b, code lost:
        if (r13.equals(com.oplus.ocs.camera.common.util.CameraConstant.CameraType.REAR_MONO_CAMERA_1) != false) goto L37;
     */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.Pair<android.util.Size, android.util.Size> getSurfaceSize(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig r11, java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 772
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.PhotoMode.getSurfaceSize(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig, java.lang.String, java.lang.String, java.lang.String):android.util.Pair");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        cameraDeviceInfoImpl.setSupportPictureSizeList(getPictureSizes(str, 256));
        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(), new ZoomHelper(str).getZoomRatioList(false, "rear_sat".equals(str), false));
        return cameraDeviceInfoImpl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.START_PREVIEW.equals(str2)) {
            if ("on".equals(builder.get(PreviewParameter.KEY_PREVIEW_IN_PREVIEW_ENABLE)) && CameraSessionEntity.SurfaceUsage.PREVIEW_IN_PREVIEW.equals(surfaceKey.getUsage())) {
                return true;
            }
        } else if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            if (isVideoSnapShotByAps(str) && this.mbQuickVideoRecording && (CameraSessionEntity.SurfaceUsage.TUNING_RAW.equals(surfaceKey.getUsage()) || CameraSessionEntity.SurfaceUsage.TUNING_YUV.equals(surfaceKey.getUsage()))) {
                return false;
            }
            boolean equals = "on".equals(builder.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));
            boolean z = (this.mPreviewResult == null || equals || (32 != ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue() && 34 != ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue() && 36 != ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue())) ? false : true;
            if (this.mPreviewResult != null) {
                int intValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MASTER_PIPELINE)).intValue();
                if ("rear_sat".equals(str) && equals && (Util.isQcomPlatform() || !z)) {
                    if ("rear_wide".equals(surfaceKey.getCameraType()) && 35 == surfaceKey.getFormat()) {
                        return intValue == 0;
                    } else if ("rear_main".equals(surfaceKey.getCameraType()) && 35 == surfaceKey.getFormat()) {
                        return 1 == intValue;
                    }
                }
            }
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needRemoveTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.START_PREVIEW.equals(str2) && CameraSessionEntity.SurfaceUsage.PREVIEW_IN_PREVIEW.equals(surfaceKey.getUsage()) && (!builder.containCustomKey(PreviewParameter.KEY_PREVIEW_IN_PREVIEW_ENABLE) || "off".equals(builder.get(PreviewParameter.KEY_PREVIEW_IN_PREVIEW_ENABLE)))) {
            return true;
        }
        return super.needRemoveTarget(str, str2, surfaceKey, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isSupportVideoSnapShot(String str) {
        return this.mbSupportVideoSnapShot;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        boolean z;
        synchronized (this.mVideoEisOnLock) {
            if (previewResult.containsKey(ApsTotalResultParameter.KEY_PREVIEW_VIDEO_EIS.getName())) {
                int intValue = ((Integer) previewResult.get(ApsTotalResultParameter.KEY_PREVIEW_VIDEO_EIS)).intValue();
                if (1 == intValue) {
                    this.mbVideoEisOn = true;
                } else if (this.mbVideoEisOn && 1 != intValue) {
                    this.mbVideoEisOn = false;
                    this.mbQuickVideoRecording = false;
                    z = true;
                }
            }
            z = false;
        }
        if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_IZOOM_PREVIEW_ENABLE, false)).booleanValue() && this.mZoomFeaturePrev != ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue()) {
            int intValue2 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
            if (this.mZoomFeaturePrev != intValue2 && (4 == intValue2 || 4 == this.mZoomFeaturePrev)) {
                z = true;
            }
            this.mZoomFeaturePrev = intValue2;
        }
        return super.needStartPreview(previewResult) || z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Size geMaxSize(CameraConfigBase.Key<Size[]> key, double d) {
        Size[] sizeArr = (Size[]) CameraConfigHelper.getConfigValue(key, null);
        if (sizeArr == null) {
            CameraUnitLog.w(TAG, "getSatSize, don't configure the " + key + " in the vendor_tag_type_values");
            return null;
        }
        Size maxSizeByRatio = Util.getMaxSizeByRatio(sizeArr, d);
        if (maxSizeByRatio == null) {
            maxSizeByRatio = Util.getImpreciseMaxSizeByRatio(sizeArr, d);
            CameraUnitLog.w(TAG, "getSatSize, can't find max size with ratio: " + d + ", use imprecise max size: " + maxSizeByRatio + " instead");
        }
        CameraUnitLog.d(TAG, "getSatSize, keyName: " + key + ", ratio: " + d + ", finalSize: " + maxSizeByRatio);
        return maxSizeByRatio;
    }

    private boolean needInputSurface(String str) {
        boolean isFrontCamera = CameraCharacteristicsHelper.isFrontCamera(CameraCharacteristicsHelper.getCameraIdType(str).getCameraId());
        return Util.isQcomPlatform() && !((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_DISABLE_RAW, false)).booleanValue() && AlgoSwitchConfig.getSupportCaptureAlgo(ApsDataConvert.getApsModeName(getModeName(), isFrontCamera ? 1 : 0), isFrontCamera ? 1 : 0, ParameterKeys.ALGO_NAME_SUPERNIGHT);
    }

    private void updateCaptureHdrMode(@NonNull String str, @NonNull PreviewParameter.Builder builder, String str2) {
        CameraUnitLog.d(TAG, "updateCaptureHdrMode, hdrMode: " + str2);
        if (str2 == null) {
            return;
        }
        if ("auto".equals(str2) || "off".equals(str2)) {
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_SCENE_MODE, (CaptureRequest.Key) 0);
        } else if ("on".equals(str2)) {
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_SCENE_MODE, (CaptureRequest.Key) 18);
        }
        builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_AUTO_HDR_ENABLE, (Parameter.Key<int[]>) new int[]{"auto".equals(str2) ? 1 : 0});
        StatisticsManager.getInstance().setFeature(ConfigureParameter.VIDEO_3HDR_MODE, str2);
        StatisticsManager.getInstance().setHdrStatus("on".equals(str2) ? 1 : 0);
    }

    private void updateAiPhoto(@NonNull String str, @NonNull PreviewParameter.Builder builder, String str2) {
        CameraUnitLog.d(TAG, "updateAiPhoto, aiPhotoValue: " + str2);
        builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_PI_ENABLE, (Parameter.Key<int[]>) new int[]{"on".equals(str2) ? 1 : 0});
        Parameter.Key<int[]> key = PreviewParameter.KEY_PI_ENABLE_LIST;
        int[] iArr = new int[1];
        iArr[0] = "on".equals(str2) ? ALL_AI_SCENE_ENABLE_VALUE : 0;
        builder.set((Parameter.Key<Parameter.Key<int[]>>) key, (Parameter.Key<int[]>) iArr);
        builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_AI_SCN_ENABLE, (Parameter.Key<int[]>) new int[]{"on".equals(str2) ? 1 : 0});
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public void updatePreviewRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag, String str, String str2) {
        super.updatePreviewRequestTag(builder, cameraRequestTag, str, str2);
        updateCaptureHdrMode(str2, builder, (String) builder.get(PreviewParameter.KEY_HDR_MODE));
        updateAiPhoto(str2, builder, (String) builder.get(PreviewParameter.KEY_AI_PHOTO));
        CameraDeviceInfoInterface cameraDeviceInfo = getCameraDeviceInfo(str2);
        if (!builder.containCustomKey(PreviewParameter.KEY_FOCUS_MODE) && cameraDeviceInfo.isSupportPreviewParameter(PreviewParameter.KEY_FOCUS_MODE.getName())) {
            builder.set((Parameter.Key<Parameter.Key<Integer>>) PreviewParameter.KEY_FOCUS_MODE, (Parameter.Key<Integer>) 1);
        }
        synchronized (this.mVideoEisOnLock) {
            if (cameraRequestTag != null) {
                try {
                    if ("on".equals(builder.get(PreviewParameter.KEY_QUICK_VIDEO_RECORD_ENABLE)) && !CameraConstant.MonoFilterType.BLACK_WHITE.equals(this.mTagMap.get(str2).mFeatureName)) {
                        this.mbVideoEisOn = false;
                        this.mbQuickVideoRecording = true;
                        this.mbSupportVideoSnapShot = true;
                        cameraRequestTag.mbQuickVideo = true;
                        cameraRequestTag.mRecordingCapture = true;
                        builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_CONTROL_GYRO_ENABLE, (Parameter.Key<int[]>) new int[]{1});
                    } else {
                        cameraRequestTag.mbQuickVideo = false;
                        cameraRequestTag.mRecordingCapture = false;
                        if (CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId)) {
                            this.mbQuickVideoRecording = false;
                        }
                        this.mbSupportVideoSnapShot = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (!this.mbQuickVideoRecording) {
            builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_CONTROL_GYRO_ENABLE, (Parameter.Key<int[]>) new int[]{0});
        }
        if (cameraRequestTag != null) {
            cameraRequestTag.mIsSupportDCT = builder.containCustomKey(PreviewParameter.KEY_AIS_DCT_SUPPORT) ? ((Integer) builder.get(PreviewParameter.KEY_AIS_DCT_SUPPORT)).intValue() : 0;
            cameraRequestTag.mIsSupportDCTAndAINR = builder.containCustomKey(PreviewParameter.KEY_AIS_DCT_AINR_SUPPORT) ? ((Integer) builder.get(PreviewParameter.KEY_AIS_DCT_AINR_SUPPORT)).intValue() : 0;
            cameraRequestTag.mAISBracket = builder.containCustomKey(PreviewParameter.KEY_AIS_BRACKET) ? ((Integer) builder.get(PreviewParameter.KEY_AIS_BRACKET)).intValue() : 0;
        }
    }

    private void updateCameraRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        Bundle bundle;
        CameraUnitLog.d(TAG, "updateCameraRequestTag");
        if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
            cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
            cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN)).booleanValue();
            cameraRequestTag.mbFilterVignette = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE)).booleanValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE)) {
            cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
            cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_BEAUTY_ENABLE)) {
            cameraRequestTag.mbFaceBeautyOpen = "on".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
            cameraRequestTag.mFaceBeautyVersion = (String) builder.get(PreviewParameter.KEY_FACE_BEAUTY_VERSION);
            cameraRequestTag.mFaceBeautyParam = (int[]) builder.get(PreviewParameter.KEY_FACE_BEAUTY_PARAM);
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE)) {
            cameraRequestTag.mbDeRedEye = "on".equals(builder.get(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE));
        }
        if (cameraRequestTag.mbBurstShot) {
            int intValue = ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_CSHOT_FIRST_REQUEST_NUM, 3)).intValue();
            if (!CameraCharacteristicsHelper.isSupportCShot(cameraRequestTag.mCameraType)) {
                intValue = 20;
            }
            cameraRequestTag.mRequestNum = intValue;
            cameraRequestTag.mApsDecisionFeatureType = 0;
        }
        if (builder.containCustomKey(PreviewParameter.KEY_AI_PHOTO)) {
            cameraRequestTag.mbPiEnable = "on".equals(builder.get(PreviewParameter.KEY_AI_PHOTO));
        }
        if (builder.containCustomKey(PreviewParameter.KEY_TILT_SHIFT_PARAM) && (bundle = (Bundle) builder.get(PreviewParameter.KEY_TILT_SHIFT_PARAM)) != null) {
            cameraRequestTag.mbTiltShiftOpen = true;
            cameraRequestTag.mTiltShiftPreviewSize = bundle.getString(CameraConstant.TiltShiftParamKeys.PREVIEW_SIZE, "");
            cameraRequestTag.mTiltShiftBlurValue = bundle.getInt(CameraConstant.TiltShiftParamKeys.BLUR_VALUE, 0);
            cameraRequestTag.mTiltShiftType = bundle.getString(CameraConstant.TiltShiftParamKeys.TYPE, "");
            cameraRequestTag.mTiltShiftCenterPosition = bundle.getString(CameraConstant.TiltShiftParamKeys.CENTER_POSITION, "");
            cameraRequestTag.mTiltShiftClearDistance = bundle.getString(CameraConstant.TiltShiftParamKeys.CLEAR_DISTANCE, "");
            cameraRequestTag.mTiltShiftRotateAngle = bundle.getString(CameraConstant.TiltShiftParamKeys.ROTATE_ANGLE, "");
        }
        synchronized (this.mPreviewResultLock) {
            if (!cameraRequestTag.mbBurstShot && this.mPreviewResult != null) {
                cameraRequestTag.mRequestNum = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT)).intValue();
                cameraRequestTag.mSupportCaptureZoomFeature = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
                cameraRequestTag.mApsDecisionFeatureType = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
                cameraRequestTag.mApsBracketMode = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE)).intValue();
                cameraRequestTag.mAsdSceneValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_ASD_SCENE_VALUE)).intValue();
                cameraRequestTag.mMFSRFrameCount = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MFSR_FRAME_COUNT)).intValue();
            }
        }
        CameraUnitLog.d(TAG, "updateCaptureRequestTag, mbCaptureSloganOpen: " + cameraRequestTag.mbPhotoWaterMarkEnable + ", mFilterType: " + cameraRequestTag.mFilterType + ", mbFilterOpen: " + cameraRequestTag.mbFilterOpen + ", tag.mbPiEnable: " + cameraRequestTag.mbPiEnable + ", mMakeupType: " + cameraRequestTag.mMakeupType);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long[] getFlexibleCapabilities(String str) {
        Size size = this.mTagMap.get(str).mPreviewSize;
        double width = size.getWidth() / size.getHeight();
        HashSet<Size> hashSet = new HashSet();
        hashSet.add(geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width));
        hashSet.add(geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width));
        hashSet.add(geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width));
        long[] jArr = new long[hashSet.size() * 8];
        int i = 0;
        for (Size size2 : hashSet) {
            int i2 = i + 1;
            jArr[i] = 0;
            int i3 = i2 + 1;
            jArr[i2] = 0;
            int i4 = i3 + 1;
            jArr[i3] = 1;
            int i5 = i4 + 1;
            jArr[i4] = size2.getWidth();
            int i6 = i5 + 1;
            jArr[i5] = size2.getHeight();
            int i7 = i6 + 1;
            jArr[i6] = 0;
            int i8 = i7 + 1;
            jArr[i7] = 1;
            i = i8 + 1;
            jArr[i8] = 0;
        }
        CameraUnitLog.d(TAG, "getFlexibleCapabilities, value: " + Arrays.toString(jArr));
        return jArr;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        long totalMemory = Util.getTotalMemory(ContextHolder.getContext());
        if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_SUPPORT_DIFFERENCE, false)).booleanValue()) {
            if (CameraConstant.MEMORY_GB_5G >= totalMemory || CameraConstant.MEMORY_GB_7G <= totalMemory) {
                if (CameraConstant.MEMORY_GB_7G >= totalMemory || CameraConstant.MEMORY_GB_9G <= totalMemory) {
                    if (CameraConstant.MEMORY_GB_9G < totalMemory) {
                        return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_12G, 0)).intValue();
                    }
                    return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON, 0)).intValue();
                }
                return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_8G, 0)).intValue();
            }
            return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_6G, 0)).intValue();
        }
        return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON, 0)).intValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public int getSurfaceFormatBySurfaceType(String str, String str2, String str3) {
        if ("capture_yuv".equals(str) || "reprocess_yuv".equals(str) || CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR.equals(str)) {
            if (is10BitOpen(str3)) {
                return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_PHOTO_10BIT_FORMAT, 34)).intValue();
            }
            return 35;
        } else if ("capture_raw".equals(str) && ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SE_NIGHT_SUPPORT, false)).booleanValue()) {
            return 32;
        } else {
            return super.getSurfaceFormatBySurfaceType(str, str2, str3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public int getRawFormat(String str) {
        if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SE_NIGHT_SUPPORT, false)).booleanValue()) {
            return 32;
        }
        boolean isFrontCamera = CameraCharacteristicsHelper.isFrontCamera(CameraCharacteristicsHelper.getCameraIdType(str).getCameraId());
        String apsModeName = ApsDataConvert.getApsModeName(getModeName(), isFrontCamera ? 1 : 0);
        if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_CAPTURE_WITH_RAW10, false)).booleanValue() && "on".equals(getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE))) {
            return 37;
        }
        if (AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, isFrontCamera ? 1 : 0, ParameterKeys.ALGO_NAME_SUPERNIGHT)) {
            return 32;
        }
        return super.getRawFormat(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean is10BitOpen(String str) {
        return "on".equals(getConfigureParameter(str).get(ConfigureParameter.PHOTO_10BIT_ENABLE));
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult) {
        if (cameraRequestTag == null || cameraRequestTag.mbBurstShot) {
            return false;
        }
        if (this.mbQuickVideoRecording) {
            return true;
        }
        if (Util.isQcomPlatform()) {
            if (2 == i && this.mbCaptureNotMatchMeta) {
                return false;
            }
            if (!CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) || (!cameraRequestTag.mbFaceBeautyOpen && cameraRequestTag.mMakeupType.equals("none"))) {
                return (1 == i || 2 == i) ? false : true;
            }
            return true;
        }
        return super.needMatchPreviewTimestamp(i, str, cameraRequestTag, decisionResult);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getFeatureName(String str) {
        String str2 = (String) getConfigureParameter(str).get(ConfigureParameter.KEY_MONO_FILTER_TYPE);
        return CameraConstant.MonoFilterType.BLACK_WHITE.equals(str2) ? str2 : super.getFeatureName(str);
    }
}
