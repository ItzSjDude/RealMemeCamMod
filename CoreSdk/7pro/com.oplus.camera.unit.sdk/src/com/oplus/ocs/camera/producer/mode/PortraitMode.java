package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.exif.OplusExifTag;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterConstant;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class PortraitMode extends BaseMode {
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_MAIN_CAMERA_CAPTURE_SIZE = new Size(OplusExifTag.EXIF_TAG_ENHANCE_TEXT, 3072);
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE = new Size(1440, 1080);
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_MAIN_CAMERA_CAPTURE_SIZE = new Size(4000, ApsAdapterConstant.LOG_INTERVAL);
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE = new Size(OplusExifTag.EXIF_TAG_ENHANCE_TEXT, 3072);
    private static final int DUAL_CAMERA_SIZE_MAIN_INDEX = 0;
    private static final int DUAL_CAMERA_SIZE_SUB_INDEX = 1;
    private static final String PORTRAIT_BODY_TYPE = "portrait_body_type";
    private static final String TAG = "PortraitMode";
    private static final String TYPE_PORTRAIT_RETENTION = "portrait_retention";

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "portrait_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        boolean z;
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        createRequestTag.mBlurIndex = this.mTagMap.get(str).mBlurIndex;
        createRequestTag.mbUseTuningData = !Util.isQcomPlatform();
        createRequestTag.mbSupportBokeh = isFullBodyType(str) || isHalfBodyType(str);
        createRequestTag.mbPortraitFullBody = isFullBodyType(str);
        createRequestTag.mbPortraitHalfBody = isHalfBodyType(str);
        createRequestTag.mAiColorEnable = TYPE_PORTRAIT_RETENTION.equals(builder.get(PreviewParameter.KEY_FILTER_TYPE));
        if (createRequestTag.mAiColorEnable) {
            createRequestTag.mRTBEnable = false;
        } else if ("rear_portrait".equals(str)) {
            createRequestTag.mRTBEnable = true;
        } else if ("rear_second_portrait".equals(str)) {
            createRequestTag.mRTBEnable = true;
        } else if ("rear_sat".equals(str)) {
            createRequestTag.mRTBEnable = true;
        } else if ("rear_portrait_mono_1".equals(str)) {
            createRequestTag.mRTBEnable = true;
        } else if ("rear_portrait_mono_2".equals(str)) {
            createRequestTag.mRTBEnable = true;
        } else if ("front_dual".equals(str)) {
            createRequestTag.mRTBEnable = true;
        }
        if ("rear_portrait_mono_1".equals(str) || "rear_portrait_mono_2".equals(str)) {
            createRequestTag.mbMonoPortraitEnable = true;
        }
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            createRequestTag.mbSatOpen = false;
            Parameter configureParameter = getConfigureParameter(str);
            createRequestTag.mbMirrorEnable = "on".equals(configureParameter.get(ConfigureParameter.MIRROR_ENABLE));
            if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_PORTRAIT_BACK_DUAL_CAPTURE_SUPPORT, false)).booleanValue() && "rear_portrait".equals(str)) {
                createRequestTag.mbPortraitBackForceDualCapture = true;
            }
            if (builder.containsKey(PreviewParameter.KEY_IS_FROM_MAIN_MENU) && !((Boolean) builder.get(PreviewParameter.KEY_IS_FROM_MAIN_MENU)).booleanValue()) {
                if (createRequestTag.mApsAlgoFlags != null) {
                    for (String str3 : createRequestTag.mApsAlgoFlags) {
                        if (ParameterKeys.ALGO_NAME_HDR.equals(str3)) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (!z && !"on".equals(builder.get(PreviewParameter.KEY_PORTRAIT_NEON_ENABLE)) && (Util.isQcomPlatform() || !"on".equals(configureParameter.get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE)))) {
                    createRequestTag.mRequestNum = 1;
                }
            }
        }
        createRequestTag.mApsRequestTag.mCaptureStreamNumber = getSensorNumberFromConfig(str);
        createRequestTag.mApsRequestTag.mPreviewStreamNumber = getSensorNumberFromConfig(str);
        createRequestTag.mbSupportBokehHDR = createRequestTag.mApsRequestTag.mCaptureStreamNumber > 1;
        if ("rear_sat".equals(str) || "rear_portrait".equals(str)) {
            createRequestTag.mLogicCameraType = ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_PORTRAIT_LOGIC_CAMERA_TYPE, 1)).intValue();
        }
        return createRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.CONFIGURE.equals(str)) {
            if (!Util.isQcomPlatform()) {
                builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_MTK_MULTI_CAM_FEATURE_MODE, (Parameter.Key<int[]>) new int[]{1});
                if ("rear_sat".equals(str2)) {
                    if (isFullBodyType(str2)) {
                        builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_VSDOF_OPTICAL_ZOOM, (Parameter.Key<int[]>) new int[]{0});
                    } else if (isHalfBodyType(str2)) {
                        builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_VSDOF_OPTICAL_ZOOM, (Parameter.Key<int[]>) new int[]{1});
                    }
                }
            }
            if ("rear_portrait".equals(str2)) {
                builder.set((Parameter.Key<Parameter.Key<Size>>) ConfigureParameter.KEY_VSDOF_PREVIEW_SIZE, (Parameter.Key<Size>) this.mConfigMap.get(str2).getDefaultPreviewSurface().getAppSurfaceSize());
            }
            if (Util.isSystemCamera()) {
                return;
            }
            builder.set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.KEY_REQUEST_ZSL_MODE, (Parameter.Key<byte[]>) new byte[]{1});
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.STATISTICS_FACE_DETECT_MODE, (CaptureRequest.Key) 1);
        } else if (Parameter.ParameterStage.START_PREVIEW.equals(str)) {
            if (!builder.containsKey((Parameter.Key<?>) PreviewParameter.KEY_BLUR_LEVEL)) {
                builder.set((Parameter.Key<Parameter.Key<float[]>>) PreviewParameter.KEY_BLUR_LEVEL, (Parameter.Key<float[]>) new float[]{getDefaultBlurValue()});
                return;
            }
            float[] fArr = (float[]) builder.get(PreviewParameter.KEY_BLUR_LEVEL);
            ApsRequestTag apsRequestTag = this.mTagMap.get(str2);
            if (apsRequestTag != null && fArr != null && fArr.length >= 1) {
                apsRequestTag.mBlurIndex = (int) (fArr[0] * 100.0f);
            }
            if (cameraRequestTag != null && builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE) && builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_VALUE)) {
                cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
                cameraRequestTag.mb3DLutEnable = ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_3D_LUT_SUPPORT, false)).booleanValue();
            }
        } else if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
                cameraRequestTag.mStreamerEnable = "on".equals(getConfigureParameter(str2).get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE));
                cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
                cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN)).booleanValue();
                cameraRequestTag.mbFilterVignette = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE)).booleanValue();
            }
            if (builder.containCustomKey(PreviewParameter.KEY_FACE_BEAUTY_ENABLE)) {
                cameraRequestTag.mbFaceBeautyOpen = "on".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
                cameraRequestTag.mFaceBeautyVersion = (String) builder.get(PreviewParameter.KEY_FACE_BEAUTY_VERSION);
                cameraRequestTag.mFaceBeautyParam = (int[]) builder.get(PreviewParameter.KEY_FACE_BEAUTY_PARAM);
            }
            if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE)) {
                cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
            }
        }
    }

    protected float getDefaultBlurValue() {
        return getBlurValue(60);
    }

    protected float getBlurValue(int i) {
        return new BigDecimal(i).multiply(CameraConstant.BLUR_VALUE_INDEX_TO_ALGORITHM).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public List<Size> getPictureSizes(String str, int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getBokehSizes(str, "rear_main"));
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.util.Size getBodyTypeSizes(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            java.lang.String r0 = "rear_sat"
            boolean r0 = r0.equals(r6)
            r1 = 0
            r2 = 2
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L42
            boolean r0 = r5.isFullBodyType(r6)
            if (r0 == 0) goto L27
            com.oplus.ocs.camera.common.util.CameraConfigBase$Key<android.util.Size[]> r5 = com.oplus.ocs.camera.common.util.CameraConfigBase.KEY_REAR_PORTRAIT_SAT_FULL_BODY_SIZE
            java.lang.Object r5 = com.oplus.ocs.camera.producer.info.CameraConfigHelper.getConfigValue(r5, r4)
            android.util.Size[] r5 = (android.util.Size[]) r5
            if (r5 != 0) goto L43
            android.util.Size[] r5 = new android.util.Size[r2]
            android.util.Size r6 = com.oplus.ocs.camera.producer.mode.PortraitMode.DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_MAIN_CAMERA_CAPTURE_SIZE
            r5[r1] = r6
            android.util.Size r6 = com.oplus.ocs.camera.producer.mode.PortraitMode.DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE
            r5[r3] = r6
            goto L43
        L27:
            boolean r5 = r5.isHalfBodyType(r6)
            if (r5 == 0) goto L42
            com.oplus.ocs.camera.common.util.CameraConfigBase$Key<android.util.Size[]> r5 = com.oplus.ocs.camera.common.util.CameraConfigBase.KEY_REAR_PORTRAIT_SAT_HALF_BODY_SIZE
            java.lang.Object r5 = com.oplus.ocs.camera.producer.info.CameraConfigHelper.getConfigValue(r5, r4)
            android.util.Size[] r5 = (android.util.Size[]) r5
            if (r5 != 0) goto L43
            android.util.Size[] r5 = new android.util.Size[r2]
            android.util.Size r6 = com.oplus.ocs.camera.producer.mode.PortraitMode.DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_MAIN_CAMERA_CAPTURE_SIZE
            r5[r1] = r6
            android.util.Size r6 = com.oplus.ocs.camera.producer.mode.PortraitMode.DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE
            r5[r3] = r6
            goto L43
        L42:
            r5 = r4
        L43:
            if (r5 != 0) goto L46
            return r4
        L46:
            java.lang.String r6 = "rear_main"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L54
            int r6 = r5.length
            if (r6 < r3) goto L6a
            r5 = r5[r1]
            return r5
        L54:
            java.lang.String r6 = "rear_wide"
            boolean r6 = r6.equals(r7)
            if (r6 != 0) goto L64
            java.lang.String r6 = "rear_tele"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L6a
        L64:
            int r6 = r5.length
            if (r6 < r2) goto L6a
            r5 = r5[r3]
            return r5
        L6a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.PortraitMode.getBodyTypeSizes(java.lang.String, java.lang.String):android.util.Size");
    }

    private Size getBokehSizes(String str, String str2) {
        Size mainCameraPictureSize;
        if ("rear_main".equals(str2) || "front_main".equals(str2)) {
            mainCameraPictureSize = getMainCameraPictureSize(str);
        } else {
            mainCameraPictureSize = ("rear_wide".equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str2) || "front_wide".equals(str2)) ? getSubCameraPictureSize(str) : null;
        }
        CameraUnitLog.d(TAG, "getBokehSizes, cameraType: " + str + ", surfaceType: " + str2 + ", size: " + mainCameraPictureSize);
        return mainCameraPictureSize;
    }

    private Size getMainCameraPictureSize(String str) {
        Size configPortraitSize = getConfigPortraitSize(0);
        if (configPortraitSize != null) {
            return new Size(configPortraitSize.getWidth(), configPortraitSize.getHeight());
        }
        int[] iArr = (int[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str).get(CameraCharacteristicsWrapper.KEY_BOKEH_PICTURE_SIZE);
        if (iArr == null || iArr.length < 2) {
            return null;
        }
        return new Size(iArr[0], iArr[1]);
    }

    private Size getMaxSize(CameraConfigBase.Key<Size[]> key, double d) {
        Size[] sizeArr = (Size[]) CameraConfigHelper.getConfigValue(key, null);
        if (sizeArr == null) {
            CameraUnitLog.w(TAG, "getMaxSize, has not configured the " + key + " in the vendor_tag_type_values");
            return null;
        }
        Size maxSizeByRatio = Util.getMaxSizeByRatio(sizeArr, d);
        if (maxSizeByRatio == null) {
            maxSizeByRatio = Util.getImpreciseMaxSizeByRatio(sizeArr, d);
            CameraUnitLog.w(TAG, "getMaxSize, can't find max size with ratio: " + d + ", use imprecise max size: " + maxSizeByRatio + " instead");
        }
        CameraUnitLog.d(TAG, "getMaxSize, keyName: " + key + ", ratio: " + d + ", finalSize: " + maxSizeByRatio);
        return maxSizeByRatio;
    }

    private Size getSubCameraPictureSize(String str) {
        Size configPortraitSize = getConfigPortraitSize(1);
        if (configPortraitSize != null) {
            return new Size(configPortraitSize.getWidth(), configPortraitSize.getHeight());
        }
        int[] iArr = (int[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str).get(CameraCharacteristicsWrapper.KEY_BOKEH_PICTURE_SIZE);
        if (iArr == null || iArr.length < 4) {
            return null;
        }
        return new Size(iArr[2], iArr[3]);
    }

    private Size getConfigPortraitSize(int i) {
        Size[] sizeArr = (Size[]) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MODE_PICTURE_SIZE_1X, null);
        if (sizeArr == null || sizeArr.length <= i) {
            CameraUnitLog.i(TAG, "getConfigPortraitSize, null");
            return null;
        }
        return sizeArr[i];
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, ApsRequestTag apsRequestTag) {
        Map<String, Map<String, String>> map;
        Map<String, String> map2;
        String str2;
        cameraSessionEntity.setTemplate(1);
        cameraSessionEntity.setUseMetadataSurface(false);
        if (Util.isSystemCamera() || !"rear_portrait".equals(str) || (map = CameraConfigHelper.getFeatureOperationMode().get(sdkCameraDeviceConfig.getModeName())) == null || (map2 = map.get(PORTRAIT_BODY_TYPE)) == null || (str2 = map2.get("full_body")) == null) {
            return;
        }
        cameraSessionEntity.setOperationMode(str2);
        CameraUnitLog.d(TAG, "onConfigure, set rear_portrait operation mode:" + str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        LinkedList<Size> supportPreviewSizeByFeature;
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i <= 100; i++) {
            arrayList.add(Integer.valueOf(i));
        }
        hashMap.put(PreviewParameter.KEY_BLUR_LEVEL_RANGE.getName(), arrayList);
        cameraDeviceInfoImpl.setPreviewParameterRangeMap(hashMap);
        cameraDeviceInfoImpl.setSupportPictureSizeList(getPictureSizes(str, 0));
        if ("rear_portrait".equals(str) && (supportPreviewSizeByFeature = CameraConfigHelper.getSupportPreviewSizeByFeature("portrait_mode", str, Collections.singletonMap(ConfigureParameter.KEY_PORTAIT_BOKEH_TYPE.getName(), "dual_bokeh"))) != null) {
            cameraDeviceInfoImpl.setDefaultPreviewConfigSizes(Collections.singletonList(supportPreviewSizeByFeature.get(1)));
        }
        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(), new ZoomHelper(str).getZoomRatioList(false, "rear_sat".equals(str), false));
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2) && CameraSessionEntity.SurfaceUsage.PICTURE.equals(surfaceKey.getUsage()) && "rear_sat".equals(str) && ("rear_wide".equals(surfaceKey.getCameraType()) || "rear_main".equals(surfaceKey.getCameraType()) || "rear_tele".equals(surfaceKey.getCameraType()))) {
            CameraUnitLog.d(TAG, "needAddToTarget, stage: " + str2 + ", surfaceKey: " + surfaceKey + ", needAddTarget: true");
            return true;
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a3, code lost:
        if (r11.equals("preview") != false) goto L6;
     */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.Pair<android.util.Size, android.util.Size> getSurfaceSize(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig r10, java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.PortraitMode.getSurfaceSize(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig, java.lang.String, java.lang.String, java.lang.String):android.util.Pair");
    }

    private Pair getCaptureSurfaceSizeBySurfaceType(boolean z, String str, String str2, String str3, SurfaceWrapper surfaceWrapper, Size size) {
        if ("front_dual".equals(str2) && z && "capture_yuv".equals(str)) {
            if ("front_main".equals(str3)) {
                Size bokehSizes = getBokehSizes(str2, "front_main");
                return new Pair(bokehSizes, bokehSizes);
            } else if ("front_wide".equals(str3)) {
                Size bokehSizes2 = getBokehSizes(str2, "front_wide");
                return new Pair(bokehSizes2, bokehSizes2);
            }
        }
        if ("rear_sat".equals(str2)) {
            Size bodyTypeSizes = getBodyTypeSizes(str2, str3);
            return new Pair(bodyTypeSizes, bodyTypeSizes);
        } else if ("rear_main".equals(str3) || "front_main".equals(str3)) {
            return new Pair(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());
        } else {
            if ("rear_wide".equals(str3)) {
                Size bokehSizes3 = getBokehSizes(str2, "rear_wide");
                return new Pair(bokehSizes3, bokehSizes3);
            } else if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str3)) {
                Size bokehSizes4 = getBokehSizes(str2, CameraConstant.CameraType.REAR_MONO_CAMERA_1);
                return new Pair(bokehSizes4, bokehSizes4);
            } else if (CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str3)) {
                Size bokehSizes5 = getBokehSizes(str2, CameraConstant.CameraType.REAR_MONO_CAMERA_2);
                return new Pair(bokehSizes5, bokehSizes5);
            } else if ("rear_portrait_mono_1".equals(str2) && CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str3)) {
                Size maxSize = getMaxSize(CameraConfigBase.KEY_MONO1_PICTURE_SIZE, size.getWidth() / size.getHeight());
                return new Pair(maxSize, maxSize);
            } else if ("rear_portrait_mono_2".equals(str2) && CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str3)) {
                Size maxSize2 = getMaxSize(CameraConfigBase.KEY_MONO2_PICTURE_SIZE, size.getWidth() / size.getHeight());
                return new Pair(maxSize2, maxSize2);
            } else {
                return new Pair(this.mTagMap.get(str2).mPreviewSize, this.mTagMap.get(str2).mPreviewSize);
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getSurfaceUseCase(String str) {
        return "front_dual".equals(str) ? CameraConstant.UseCase.FRONT_DUAL_PORTRAIT : "front_main".equals(str) ? CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null ? CameraConstant.UseCase.FRONT_SINGLE_MFNR_PORTRAIT : "single_portrait_case" : "front_wide".equals(str) ? "single_portrait_case" : "rear_main".equals(str) ? CameraConstant.UseCase.SINGLE_PHOTO : "rear_portrait_mono_1".equals(str) ? CameraConstant.UseCase.PORTRAIT_MONO1 : "rear_portrait_mono_2".equals(str) ? CameraConstant.UseCase.PORTRAIT_MONO2 : "portrait_bokeh_case";
    }

    private boolean isFullBodyType(String str) {
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str);
        if (sdkCameraDeviceConfig == null || !sdkCameraDeviceConfig.getConfigureParameter().containCustomKey(ConfigureParameter.KEY_PORTAIT_BODY_TYPE)) {
            return false;
        }
        CameraUnitLog.v(TAG, "isFullBodyType, bodyType: " + ((String) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_PORTAIT_BODY_TYPE)));
        return "full_body".equals(sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_PORTAIT_BODY_TYPE));
    }

    private boolean isHalfBodyType(String str) {
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str);
        if (sdkCameraDeviceConfig == null || !sdkCameraDeviceConfig.getConfigureParameter().containCustomKey(ConfigureParameter.KEY_PORTAIT_BODY_TYPE)) {
            return false;
        }
        CameraUnitLog.v(TAG, "isHalfBodyType, bodyType: " + ((String) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_PORTAIT_BODY_TYPE)));
        return "half_body".equals(sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_PORTAIT_BODY_TYPE));
    }

    public boolean isSupportDualCamera(boolean z) {
        if (z) {
            return CameraCharacteristicsHelper.isSupportFrontDualCamera();
        }
        return CameraCharacteristicsHelper.isSupportBackDualCamera();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public int getSurfaceFormatBySurfaceType(String str, String str2, String str3) {
        if (Util.isQcomPlatform() || !(("preview".equals(str) || "preview_frame".equals(str)) && ("rear_wide".equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2) || "front_wide".equals(str2)))) {
            return super.getSurfaceFormatBySurfaceType(str, str2, str3);
        }
        return 538982489;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_PORTRAIT, 0)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public int getPhysicalId(String str, String str2, String str3) {
        if (!Util.isQcomPlatform() && "preview".equals(str3) && "rear_wide".equals(str2)) {
            return -1;
        }
        if ("rear_portrait_mono_1".equals(str)) {
            r1 = "rear_main".equals(str2) ? super.getPhysicalId(str, str2, str3) : -1;
            if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2) && str3.equals("capture_yuv")) {
                r1 = super.getPhysicalId(str, str2, str3);
            }
            return "tuning_data_yuv".equals(str3) ? CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId() : r1;
        } else if ("rear_portrait_mono_2".equals(str)) {
            r1 = "rear_main".equals(str2) ? super.getPhysicalId(str, str2, str3) : -1;
            if (CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str2) && str3.equals("capture_yuv")) {
                r1 = super.getPhysicalId(str, str2, str3);
            }
            return "tuning_data_yuv".equals(str3) ? CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId() : r1;
        } else if ("rear_portrait".equals(str)) {
            if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_PREVIEW_PHYSICALID, false)).booleanValue() && "preview".equals(str3)) {
                return -1;
            }
            if ("tuning_data_yuv".equals(str3)) {
                r1 = CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId();
            } else if ("capture_yuv".equals(str3) || "rear_main".equals(str2)) {
                r1 = super.getPhysicalId(str, str2, str3);
            }
            return (("rear_wide".equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2)) && ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_QUALCOMM_PHYSICAL_ID_SUPPORT, false)).booleanValue() && CameraCharacteristicsHelper.isSupportBackDualCamera()) ? super.getPhysicalId(str, str2, str3) : r1;
        } else {
            if ("rear_sat".equals(str) && "tuning_data_yuv".equals(str3)) {
                if (isFullBodyType(str)) {
                    return CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId();
                }
                if (isHalfBodyType(str)) {
                    return CameraCharacteristicsHelper.getCameraIdType("rear_tele").getCameraId();
                }
            }
            if ("rear_second_portrait".equals(str) && !Util.isQcomPlatform()) {
                if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_PREVIEW_PHYSICALID, false)).booleanValue() && "preview".equals(str3)) {
                    return -1;
                }
                if ("tuning_data_yuv".equals(str3) || "rear_main".equals(str2)) {
                    return CameraCharacteristicsHelper.getCameraIdType("rear_tele").getCameraId();
                }
                if ("capture_yuv".equals(str3) && "rear_wide".equals(str2)) {
                    return CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId();
                }
                return -1;
            } else if (isFullBodyType(str) || CameraCharacteristicsHelper.getCameraIdType("rear_tele") == null) {
                return super.getPhysicalId(str, str2, str3);
            } else {
                int[] iArr = (int[]) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MODE_PHYSICAL_CAMERA_ID_1X, null);
                if (isFullBodyType(str) && iArr != null) {
                    if (iArr[0] == CameraCharacteristicsHelper.getCameraIdType(str2).getCameraId()) {
                        return iArr[0];
                    }
                    return iArr[1];
                }
                int[] iArr2 = (int[]) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MODE_PHYSICAL_CAMERA_ID_2X, null);
                if (isHalfBodyType(str) && iArr2 != null) {
                    if (iArr2[0] == CameraCharacteristicsHelper.getCameraIdType(str2).getCameraId()) {
                        return iArr2[0];
                    }
                    return iArr2[1];
                }
                if ("rear_sat".equals(str)) {
                    if ("rear_main".equals(str2)) {
                        r1 = CameraCharacteristicsHelper.getCameraIdType("rear_tele").getCameraId();
                    } else if ("rear_wide".equals(str2)) {
                        r1 = CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId();
                    }
                }
                return ("rear_portrait_mono_1".equals(str) || "rear_portrait_mono_2".equals(str)) ? super.getPhysicalId(str, str2, str3) : r1;
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult) {
        if (cameraRequestTag == null) {
            return false;
        }
        if (!CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) && isSupportDualCamera(CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId))) {
            if (Util.isQcomPlatform() && 2 == i && decisionResult != null) {
                return 12 == decisionResult.mApsDecisionSceneMode || 13 == decisionResult.mApsDecisionSceneMode || 30 == decisionResult.mApsDecisionSceneMode;
            }
            return false;
        }
        return super.needMatchPreviewTimestamp(i, str, cameraRequestTag, decisionResult);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getFeatureName(String str) {
        return "on".equals((String) getConfigureParameter(str).get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE)) ? CameraConstant.StreamerPortrait.STREAMER_PORTRAIT : super.getFeatureName(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Long getPreviewReaderUsage(String str) {
        if (!Util.isSystemCamera() && ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_THIRD_PARTY_MTK_PORTRAIT_PREVIEW_USAGE, false)).booleanValue()) {
            return 3L;
        }
        return super.getPreviewReaderUsage(str);
    }
}
