package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import com.oplus.ocs.camera.producer.info.CameraIdType;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class MultiCameraMode extends BaseMode {
    private static final String TAG = "MultiCameraMode";

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "multi_camera_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        cameraDeviceInfoImpl.setPhysicalCameraTypeList(CameraCharacteristicsHelper.getCameraList(str));
        cameraDeviceInfoImpl.setSupportPictureSizeList(getPictureSizes(str, 256));
        if (str.equals("rear_main")) {
            cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(), new ZoomHelper(str).getZoomRatioList(false, false, false));
        }
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        builder.set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.DUAL_CAMERA, (Parameter.Key<int[]>) parserCameraIds());
        if (Parameter.ParameterStage.CONFIGURE.equals(str)) {
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, (CaptureRequest.Key) new Range(30, 30));
            builder.set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.KEY_TUNING_DATA_ENABLE, (Parameter.Key<byte[]>) new byte[]{0});
            Parameter configureParameter = getConfigureParameter(str2);
            if (configureParameter.containCustomKey(ConfigureParameter.KEY_DUAL_SCENE_MASTER)) {
                builder.set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.KEY_DUAL_SCENE_MASTER, (Parameter.Key<Integer>) configureParameter.get(ConfigureParameter.KEY_DUAL_SCENE_MASTER));
            }
        }
    }

    private int[] parserCameraIds() {
        List<CameraIdType> split = CameraCharacteristicsHelper.getCameraIdType("rear_main_front_main").split();
        int[] iArr = new int[split.size()];
        int i = 0;
        for (CameraIdType cameraIdType : split) {
            iArr[i] = cameraIdType.getCameraId();
            i++;
        }
        CameraUnitLog.i(TAG, "parserCameraIds, values: " + Arrays.toString(iArr));
        return iArr;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        CameraUnitLog.d(TAG, "getSurfaceSize, configuredSurfaceType: " + str + ", targetCameraType: " + str2 + ", cameraType: " + str3);
        return new Pair<>(this.mTagMap.get(str3).mPreviewSize, this.mTagMap.get(str3).mPreviewSize);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str) {
        return "rear_main_rear_wide".equals(str) ? "multi_case_main_wide" : "rear_main_rear_tele".equals(str) ? "multi_case_main_tele" : "rear_wide_rear_tele".equals(str) ? "multi_case_wide_tele" : "simple_preview_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean isReuseAppSurface(String str, String str2, String str3) {
        if (TextUtils.equals("simple_preview_case", str) && TextUtils.equals("preview", str2)) {
            return !this.mConfigMap.get(str3).getPreviewSurfaceTypes().contains(5);
        }
        return super.isReuseAppSurface(str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Long getPreviewReaderUsage(String str) {
        if ("rear_main".equals(str)) {
            return 3L;
        }
        return super.getPreviewReaderUsage(str);
    }
}
