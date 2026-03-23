package com.oplus.ocs.camera.producer.mode;

import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FishEyeMode extends PhotoMode {
    private static final String TAG = "FishEyeMode";

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.FISH_EYE_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str) {
        return CameraConstant.UseCase.FISH_EYE;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        char c;
        Size size = this.mTagMap.get(str3).mPreviewSize;
        double width = size.getWidth() / size.getHeight();
        switch (str.hashCode()) {
            case -2099255641:
                if (str.equals("reprocess_input")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1513135880:
                if (str.equals("raw_output")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -318184504:
                if (str.equals("preview")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 163297377:
                if (str.equals("capture_yuv")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1267103479:
                if (str.equals("reprocess_yuv")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return new Pair<>(size, size);
            case 1:
            case 2:
                Size sizeByFormat = CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32);
                return new Pair<>(sizeByFormat, sizeByFormat);
            case 3:
            case 4:
                Size pictureSize = getPictureSize(width);
                return new Pair<>(pictureSize, pictureSize);
            default:
                CameraUnitLog.w(TAG, "getSurfaceSize, use default size " + size);
                return new Pair<>(size, size);
        }
    }

    private Size getPictureSize(double d) {
        Size[] sizeArr = (Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, null);
        if (sizeArr == null) {
            CameraUnitLog.w(TAG, "getPictureSize, empty size list");
            return null;
        }
        Size maxSizeByRatio = Util.getMaxSizeByRatio(sizeArr, d);
        if (maxSizeByRatio == null) {
            maxSizeByRatio = Util.getImpreciseMaxSizeByRatio(sizeArr, d);
        }
        CameraUnitLog.w(TAG, "getPictureSize, use " + maxSizeByRatio + " in size list " + Arrays.toString(sizeArr));
        return maxSizeByRatio;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        apsRequestTag.mModeName = CameraConstant.ModeName.FISH_EYE_MODE;
        cameraSessionEntity.setTemplate(1);
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (cameraRequestTag != null) {
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != -930917882) {
                if (hashCode == 2102512875 && str.equals(Parameter.ParameterStage.START_PREVIEW)) {
                    c = 1;
                }
            } else if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
                c = 0;
            }
            switch (c) {
                case 0:
                case 1:
                    if (builder.containsKey(PreviewParameter.KEY_FISH_EYE_MODE)) {
                        cameraRequestTag.mbFishEyeEnable = ((Boolean) builder.get(PreviewParameter.KEY_FISH_EYE_MODE)).booleanValue();
                        CameraUnitLog.d(TAG, "updateStageParameterBuilder, fish eye mode: " + cameraRequestTag.mbFishEyeEnable);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
