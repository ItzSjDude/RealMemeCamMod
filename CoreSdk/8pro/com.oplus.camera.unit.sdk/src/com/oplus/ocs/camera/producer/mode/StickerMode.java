package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Range;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;

/* loaded from: classes.dex */
public class StickerMode extends VideoMode {
    private static final String TAG = "StickerMode";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "sticker_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "simple_preview_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isCaptureModeType() {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isNeedAPSProcess() {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode
    protected boolean isPreviewProcessByAps(Parameter parameter, String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isSupportVideoSnapShot(String str) {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isVideoSnapShotByAps(String str) {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2,
            PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        createRequestTag.mbVideoCapture = false;
        return createRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (cameraRequestTag != null) {
            cameraRequestTag.mbNeedPreviewStream = null;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        return ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_STICKER, 0)).intValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag,
            ApsAdapterDecision.DecisionResult decisionResult) {
        if (cameraRequestTag == null) {
            return false;
        }
        if (PlatformUtil.isQualcommPlatform()) {
            if (CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId)
                    && cameraRequestTag.mbFaceBeautyOpen) {
                return true;
            }
            return (1 == i || 2 == i) ? false : true;
        }
        return super.needMatchPreviewTimestamp(i, str, cameraRequestTag, decisionResult);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey,
            PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)
                && "surface_key_preview".equals(surfaceKey.getUsage())) {
            return true;
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public void updateFpsRange(Parameter parameter, PreviewParameter.Builder builder, String str) {
        if (checkSetStreamFpsRange(builder, str)) {
            return;
        }
        Range[] rangeArr = (Range[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str).get()
                .get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        if (rangeArr == null || rangeArr.length == 0) {
            super.updateFpsRangeByVideoType(parameter, builder, str);
            return;
        }
        int i = -1;
        int i2 = 300;
        for (int i3 = 0; i3 < rangeArr.length; i3++) {
            if (i2 > ((Integer) rangeArr[i3].getLower()).intValue()
                    && 30 == ((Integer) rangeArr[i3].getUpper()).intValue()) {
                i2 = ((Integer) rangeArr[i3].getLower()).intValue();
                i = i3;
            }
        }
        if (i >= 0) {
            CameraUnitLog.d(TAG,
                    "updateFpsRangeByVideoType, set CONTROL_AE_TARGET_FPS_RANGE fps range to: " + rangeArr[i]);
            builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, rangeArr[i]);
            return;
        }
        super.updateFpsRangeByVideoType(parameter, builder, str);
    }
}
