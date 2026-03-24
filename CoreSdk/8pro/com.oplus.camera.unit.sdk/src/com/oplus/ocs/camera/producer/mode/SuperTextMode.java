package com.oplus.ocs.camera.producer.mode;

import android.os.Handler;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SuperTextMode extends PhotoMode {
    private static final int ENABLE = 1;

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "super_text_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2,
            PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        createRequestTag.mbSuperTextOpen = true;
        return createRequestTag;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public void updatePreviewRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag, String str,
            String str2) {
        super.updatePreviewRequestTag(builder, cameraRequestTag, str, str2);
        builder.set(PreviewParameter.KEY_SUPER_TEXT_MODE, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        this.mTagMap.get(str).mModeName = "super_text_mode";
    }
}
