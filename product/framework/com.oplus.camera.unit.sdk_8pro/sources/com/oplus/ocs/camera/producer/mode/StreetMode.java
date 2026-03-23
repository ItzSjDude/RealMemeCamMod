package com.oplus.ocs.camera.producer.mode;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
/* loaded from: classes.dex */
public class StreetMode extends PhotoMode {
    private static final int EDGE_FILTER_PARAM_LENGTH = 3;
    public static final int STREET_MAX_BURST_SHOT_NUM = 50;
    private static final String TAG = "StreetMode";
    private String mRawValue = "none";

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.STREET_MODE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        super.onConfigure(cameraSessionEntity, sdkCameraDeviceConfig, str, apsRequestTag);
        apsRequestTag.mModeName = CameraConstant.ModeName.STREET_MODE;
        cameraSessionEntity.setTemplate(1);
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        initEdgeFilterRequest(builder, createRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            updateMaxShotNum(createRequestTag, 50);
        }
        return createRequestTag;
    }

    private void initEdgeFilterRequest(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        if (builder.containCustomKey(PreviewParameter.KEY_EDGE_FILTER_ENABLE) && builder.get(PreviewParameter.KEY_EDGE_FILTER_ENABLE) != null) {
            cameraRequestTag.mbEdgeFilterEnable = ((Boolean) builder.get(PreviewParameter.KEY_EDGE_FILTER_ENABLE)).booleanValue();
        } else {
            cameraRequestTag.mbEdgeFilterEnable = false;
        }
        if (builder.containCustomKey(PreviewParameter.KEY_EDGE_FILTER_PARAM)) {
            String[] strArr = (String[]) builder.get(PreviewParameter.KEY_EDGE_FILTER_PARAM);
            if (strArr.length >= 3) {
                cameraRequestTag.mbEdgeFilterLineSize = strArr[0];
                cameraRequestTag.mbEdgeFilterColorU = strArr[1];
                cameraRequestTag.mbEdgeFilterColorV = strArr[2];
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        str.hashCode();
        if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
            updateRawValue(builder, cameraRequestTag);
            updateMaxShotNum(cameraRequestTag, 50);
        } else if (str.equals(Parameter.ParameterStage.START_PREVIEW)) {
            updateRawValue(builder, cameraRequestTag);
        }
    }

    private void updateRawValue(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        if (builder.containsKey(PreviewParameter.KEY_RAW_CONTROL)) {
            this.mRawValue = (String) builder.get(PreviewParameter.KEY_RAW_CONTROL);
        } else {
            this.mRawValue = "none";
        }
        if ("raw".equals(this.mRawValue)) {
            cameraRequestTag.mStreetRawEnable = 1;
        } else {
            cameraRequestTag.mStreetRawEnable = 0;
        }
        if (cameraRequestTag != null) {
            cameraRequestTag.mRawValue = this.mRawValue;
        }
    }

    private void updateMaxShotNum(CameraRequestTag cameraRequestTag, int i) {
        if (cameraRequestTag == null || !cameraRequestTag.mbBurstShot) {
            return;
        }
        int intValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_CSHOT_FIRST_REQUEST_NUM, 3)).intValue();
        if (!CameraCharacteristicsHelper.isSupportCShot(cameraRequestTag.mCameraType)) {
            intValue = i;
        }
        cameraRequestTag.mRequestNum = intValue;
        cameraRequestTag.mMaxBustShotNum = i;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2) && "raw".equals(this.mRawValue)) {
            if (32 == surfaceKey.getFormat() && "surface_key_picture".equals(surfaceKey.getUsage())) {
                return true;
            }
            if (35 == surfaceKey.getFormat() && "surface_key_picture".equals(surfaceKey.getUsage()) && !"rear_sat".equals(str)) {
                return true;
            }
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "rear_main".equals(str) ? CameraConstant.UseCase.STREET : "rear_sat".equals(str) ? CameraConstant.UseCase.SAT_STREET : super.getSurfaceUseCase(str, z);
    }
}
