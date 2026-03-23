package com.oplus.ocs.camera.producer.mode;

import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
/* loaded from: classes.dex */
public class PanoramaCapMode extends BaseMode {
    private static final String TAG = "PanoramaCapMode";

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "panorama_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getSurfaceUseCase(String str) {
        return "panorama_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult) {
        return 1 != i;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        char c;
        Size size = this.mTagMap.get(str3).mPreviewSize;
        int hashCode = str.hashCode();
        if (hashCode != -318184504) {
            if (hashCode == 694155830 && str.equals("preview_frame")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals("preview")) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                for (SurfaceWrapper surfaceWrapper : sdkCameraDeviceConfig.getPreviewSurfaces()) {
                    if (6 == surfaceWrapper.getSurfaceType()) {
                        return new Pair<>(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());
                    }
                }
                CameraUnitLog.e(TAG, "getSurfaceSize, don't config preview_frame size, may be wrong!");
                return new Pair<>(size, size);
            case 1:
                for (SurfaceWrapper surfaceWrapper2 : sdkCameraDeviceConfig.getPreviewSurfaces()) {
                    if (5 == surfaceWrapper2.getSurfaceType()) {
                        return new Pair<>(surfaceWrapper2.getAppSurfaceSize(), surfaceWrapper2.getHalSurfaceSize());
                    }
                }
                CameraUnitLog.e(TAG, "getSurfaceSize, don't config preview size, may be wrong!");
                return new Pair<>(size, size);
            default:
                return new Pair<>(size, size);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        cameraDeviceInfoImpl.setDefaultPreviewConfigSizes(null);
        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(), new ZoomHelper(str).getZoomRatioList(false, "rear_sat".equals(str), false));
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_PANORAMA, 0)).intValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (((str.hashCode() == -804429082 && str.equals(Parameter.ParameterStage.CONFIGURE)) ? (char) 0 : (char) 65535) != 0) {
            return;
        }
        builder.set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.KEY_TUNING_DATA_ENABLE, (Parameter.Key<byte[]>) new byte[]{0});
    }
}
