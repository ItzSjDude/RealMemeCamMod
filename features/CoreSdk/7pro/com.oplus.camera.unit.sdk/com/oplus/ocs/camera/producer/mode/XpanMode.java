package com.oplus.ocs.camera.producer.mode;

import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
/* loaded from: classes.dex */
public class XpanMode extends PhotoMode {
    private static final String TAG = "XpanMode";

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.XPAN_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str) {
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
        char c;
        int hashCode = str.hashCode();
        if (hashCode != 163297377) {
            if (hashCode == 552585030 && str.equals("capture")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("capture_yuv")) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
                if ("rear_main".equals(str2)) {
                    Size size = (Size) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_XPAN_MAIN_PICTURE_SIZE, null);
                    String str4 = TAG;
                    CameraUnitLog.d(str4, "getSurfaceSize() - rearMainSize: " + size);
                    if (size != null) {
                        return new Pair<>(size, size);
                    }
                } else if ("rear_wide".equals(str2)) {
                    Size size2 = (Size) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_XPAN_WIDE_PICTURE_SIZE, null);
                    String str5 = TAG;
                    CameraUnitLog.d(str5, "getSurfaceSize() - rearWideSize: " + size2);
                    if (size2 != null) {
                        return new Pair<>(size2, size2);
                    }
                }
                break;
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
