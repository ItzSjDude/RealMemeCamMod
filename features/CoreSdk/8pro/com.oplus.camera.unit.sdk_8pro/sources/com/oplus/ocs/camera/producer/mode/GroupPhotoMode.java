package com.oplus.ocs.camera.producer.mode;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
/* loaded from: classes.dex */
public class GroupPhotoMode extends HighDefinitionMode {
    private static final String TAG = "GroupPhotoMode";

    @Override // com.oplus.ocs.camera.producer.mode.HighDefinitionMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.GROUP_PHOTO_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.HighDefinitionMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public /* bridge */ /* synthetic */ CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        return super.createRequestTag(str, obj, handler, str2, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.HighDefinitionMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public /* bridge */ /* synthetic */ String getSurfaceUseCase(String str, boolean z) {
        return super.getSurfaceUseCase(str, z);
    }

    @Override // com.oplus.ocs.camera.producer.mode.HighDefinitionMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public /* bridge */ /* synthetic */ boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        return super.needStartPreview(previewResult);
    }

    @Override // com.oplus.ocs.camera.producer.mode.HighDefinitionMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        apsRequestTag.mbHighPictureSizeEnable = true;
        apsRequestTag.mModeName = CameraConstant.ModeName.GROUP_PHOTO_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.HighDefinitionMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            updateCameraRequestTag(builder, cameraRequestTag);
        }
    }

    private void updateCameraRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_BEAUTY_ENABLE)) {
            cameraRequestTag.mbFaceBeautyOpen = "on".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
            cameraRequestTag.mFaceBeautyVersion = (String) builder.get(PreviewParameter.KEY_FACE_BEAUTY_VERSION);
            cameraRequestTag.mFaceBeautyParam = (int[]) builder.get(PreviewParameter.KEY_FACE_BEAUTY_PARAM);
            cameraRequestTag.mFaceData = (int[]) builder.get(PreviewParameter.KEY_FACE_DATA);
        }
    }
}
