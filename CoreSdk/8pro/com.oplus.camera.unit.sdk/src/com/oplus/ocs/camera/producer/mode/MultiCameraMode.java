package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
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
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
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

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        cameraDeviceInfoImpl.setPhysicalCameraTypeList(CameraCharacteristicsHelper.getCameraList(str));
        cameraDeviceInfoImpl.setSupportPictureSizeList(getPictureSizes(str, 256));
        if (str.equals("rear_main")) {
            cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(),
                    new ZoomHelper(str).getZoomRatioList(false, false, false));
        }
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public void updateFpsRange(Parameter parameter, PreviewParameter.Builder builder, String str) {
        if (checkSetStreamFpsRange(builder, str)) {
            return;
        }
        builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, new Range<>(30, 30));
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public int isAllowedToTakePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler,
            CameraRequestTag cameraRequestTag) {
        return super.isAllowedToTakePicture(cameraPictureCallbackAdapter, handler, cameraRequestTag);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        builder.set(ConfigureParameter.DUAL_CAMERA, parserCameraIds());
        if (Parameter.ParameterStage.CONFIGURE.equals(str)) {
            builder.set(ConfigureParameter.KEY_TUNING_DATA_ENABLE, new byte[] { 0 });
            Parameter configureParameter = getConfigureParameter(str2);
            if (configureParameter.containCustomKey(ConfigureParameter.KEY_DUAL_SCENE_MASTER)) {
                builder.set(ConfigureParameter.KEY_DUAL_SCENE_MASTER,
                        (Integer) configureParameter.get(ConfigureParameter.KEY_DUAL_SCENE_MASTER));
            }
            builder.set(ConfigureParameter.KEY_SESSION_REQUEST_PROPRIETARYCAPTURE, new int[] { 0 });
        }
    }

    private int[] parserCameraIds() {
        List<CameraIdType> listSplit = CameraCharacteristicsHelper.getCameraIdType("rear_main_front_main").split();
        int[] iArr = new int[listSplit.size()];
        Iterator<CameraIdType> it = listSplit.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().getCameraId();
            i++;
        }
        return iArr;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2,
            String str3) {
        CameraUnitLog.d(TAG, "getSurfaceSize, configuredSurfaceType: " + str + ", targetCameraType: " + str2
                + ", cameraType: " + str3);
        return new Pair<>(this.mTagMap.get(str3).mPreviewSize, this.mTagMap.get(str3).mPreviewSize);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "rear_main_rear_wide".equals(str) ? "multi_case_main_wide"
                : "rear_main_rear_tele".equals(str) ? "multi_case_main_tele"
                        : "rear_wide_rear_tele".equals(str) ? "multi_case_wide_tele" : "simple_preview_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isReuseAppSurface(String str, String str2, String str3) {
        if (TextUtils.equals("simple_preview_case", str) && TextUtils.equals("preview", str2)) {
            return !this.mConfigMap.get(str3).getPreviewSurfaceTypes().contains(5);
        }
        return super.isReuseAppSurface(str, str2, str3);
    }
}
