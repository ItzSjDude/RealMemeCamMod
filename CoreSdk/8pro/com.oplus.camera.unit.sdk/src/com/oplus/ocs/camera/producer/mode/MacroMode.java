package com.oplus.ocs.camera.producer.mode;

import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MacroMode extends BaseMode {
    private static final String TAG = "MacroMode";

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "macro_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getSurfaceUseCase(String str, boolean z) {
        return "simple_photo_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        Size size;
        SurfaceWrapper surfaceWrapper;
        size = this.mTagMap.get(str3).mPreviewSize;
        surfaceWrapper = sdkCameraDeviceConfig.getPictureSurfaces().get(0);
        str.hashCode();
        switch (str) {
            case "preview":
                return new Pair<>(size, size);
            case "capture_raw":
                List<Size> pictureSizes = getPictureSizes(str3, 32);
                Size maxSizeByRatio = Util.getMaxSizeByRatio((Size[]) pictureSizes.toArray(new Size[pictureSizes.size()]), 1.3333333333333333d);
                return new Pair<>(maxSizeByRatio, maxSizeByRatio);
            case "capture":
                if ("rear_macro".equals(str3)) {
                    return new Pair<>(this.mTagMap.get(str3).mPictureSize, this.mTagMap.get(str3).mPictureSize);
                }
                if ("rear_wide".equals(str3)) {
                    return new Pair<>(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());
                }
                break;
            case "tuning_data_raw":
            case "tuning_data_yuv":
                Size surfaceTuningSize = getSurfaceTuningSize(str, str3);
                return new Pair<>(surfaceTuningSize, surfaceTuningSize);
        }
        return new Pair<>(size, size);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        str.hashCode();
        if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
            updateCameraRequestTag(builder, cameraRequestTag);
        }
    }

    private void updateCameraRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
            cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
            cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN)).booleanValue();
            cameraRequestTag.mbFilterVignette = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE)).booleanValue();
        }
    }
}
