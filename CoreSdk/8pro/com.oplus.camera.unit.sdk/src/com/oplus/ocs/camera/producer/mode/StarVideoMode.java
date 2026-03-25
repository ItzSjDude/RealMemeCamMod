package com.oplus.ocs.camera.producer.mode;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;

/* JADX INFO: loaded from: classes.dex */
public class StarVideoMode extends StarryMode {
    @Override // com.oplus.ocs.camera.producer.mode.StarryMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.STAR_VIDEO_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void updatePreviewRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag,
            String str, String str2) {
        super.updatePreviewRequestTag(builder, cameraRequestTag, str, str2);
        cameraRequestTag.mbStarVideoEnable = "on".equals(builder.get(PreviewParameter.KEY_STAR_VIDEO_ENABLE));
    }

    @Override // com.oplus.ocs.camera.producer.mode.StarryMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (cameraRequestTag == null) {
            return;
        }
        if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
            if (builder.containCustomKey(PreviewParameter.KEY_FRAME_FLAG)) {
                cameraRequestTag.mFrameFlag = ((Integer) builder.get(PreviewParameter.KEY_FRAME_FLAG)).intValue();
            }
            if (builder.containCustomKey(PreviewParameter.KEY_CAPTURE_FOR_VIDEO)) {
                cameraRequestTag.mbCaptureForVideo = ((Boolean) builder.get(PreviewParameter.KEY_CAPTURE_FOR_VIDEO))
                        .booleanValue();
            }
            cameraRequestTag.mRequestNum = 1;
            cameraRequestTag.mOutputFormat = 17; // ImageFormat.NV21
            cameraRequestTag.mbStarVideoVerifyFrame = ((Boolean) CameraConfigHelper
                    .getConfigValue(CameraConfigBase.KEY_STAR_VIDEO_NEED_VERIFY_FRAME, false)).booleanValue();
        }
    }
}
