package com.oplus.ocs.camera.producer.mode;

import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
/* loaded from: classes.dex */
public class XpanMode extends PhotoMode {
    private static final String TAG = "XpanMode";

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.XPAN_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "simple_photo_case";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        synchronized (this.mPreviewResultLock) {
            return ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT)).intValue() > 0;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        str.hashCode();
        if (str.equals("capture_yuv") || str.equals("capture")) {
            if ("rear_main".equals(str2)) {
                Size size = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_XPAN_MAIN_PICTURE_SIZE, null);
                String str4 = TAG;
                CameraUnitLog.d(str4, "getSurfaceSize() - rearMainSize: " + size);
                if (size != null) {
                    return new Pair<>(size, size);
                }
            } else if ("rear_wide".equals(str2)) {
                Size size2 = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_XPAN_WIDE_PICTURE_SIZE, null);
                String str5 = TAG;
                CameraUnitLog.d(str5, "getSurfaceSize() - rearWideSize: " + size2);
                if (size2 != null) {
                    return new Pair<>(size2, size2);
                }
            }
        }
        return super.getSurfaceSize(sdkCameraDeviceConfig, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        apsRequestTag.mModeName = CameraConstant.ModeName.XPAN_MODE;
    }
}
