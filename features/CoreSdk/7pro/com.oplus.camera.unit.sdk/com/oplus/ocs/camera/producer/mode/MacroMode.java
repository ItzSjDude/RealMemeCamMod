package com.oplus.ocs.camera.producer.mode;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
/* loaded from: classes.dex */
public class MacroMode extends BaseMode {
    private static final String TAG = "MacroMode";

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "macro_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getSurfaceUseCase(String str) {
        return "simple_photo_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
        if (r4.equals("preview") != false) goto L6;
     */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected android.util.Pair<android.util.Size, android.util.Size> getSurfaceSize(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig r3, java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            r2 = this;
            java.util.Map<java.lang.String, com.oplus.ocs.camera.common.util.ApsRequestTag> r5 = r2.mTagMap
            java.lang.Object r5 = r5.get(r6)
            com.oplus.ocs.camera.common.util.ApsRequestTag r5 = (com.oplus.ocs.camera.common.util.ApsRequestTag) r5
            android.util.Size r5 = r5.mPreviewSize
            java.util.List r3 = r3.getPictureSurfaces()
            r0 = 0
            java.lang.Object r3 = r3.get(r0)
            com.oplus.ocs.camera.common.surface.SurfaceWrapper r3 = (com.oplus.ocs.camera.common.surface.SurfaceWrapper) r3
            int r1 = r4.hashCode()
            switch(r1) {
                case -318184504: goto L45;
                case 163290031: goto L3b;
                case 552585030: goto L31;
                case 1238458461: goto L27;
                case 1238465807: goto L1d;
                default: goto L1c;
            }
        L1c:
            goto L4e
        L1d:
            java.lang.String r0 = "tuning_data_yuv"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 4
            goto L4f
        L27:
            java.lang.String r0 = "tuning_data_raw"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 3
            goto L4f
        L31:
            java.lang.String r0 = "capture"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 1
            goto L4f
        L3b:
            java.lang.String r0 = "capture_raw"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 2
            goto L4f
        L45:
            java.lang.String r1 = "preview"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L4e
            goto L4f
        L4e:
            r0 = -1
        L4f:
            switch(r0) {
                case 0: goto Lb6;
                case 1: goto L7e;
                case 2: goto L5d;
                case 3: goto L53;
                case 4: goto L53;
                default: goto L52;
            }
        L52:
            goto Lbc
        L53:
            android.util.Size r2 = r2.getSurfaceTuningSize(r4, r6)
            android.util.Pair r3 = new android.util.Pair
            r3.<init>(r2, r2)
            return r3
        L5d:
            r3 = 32
            java.util.List r2 = r2.getPictureSizes(r6, r3)
            int r3 = r2.size()
            android.util.Size[] r3 = new android.util.Size[r3]
            java.lang.Object[] r2 = r2.toArray(r3)
            android.util.Size[] r2 = (android.util.Size[]) r2
            r3 = 4608683618675807573(0x3ff5555555555555, double:1.3333333333333333)
            android.util.Size r2 = com.oplus.ocs.camera.common.util.Util.getMaxSizeByRatio(r2, r3)
            android.util.Pair r3 = new android.util.Pair
            r3.<init>(r2, r2)
            return r3
        L7e:
            java.lang.String r4 = "rear_macro"
            boolean r4 = r4.equals(r6)
            if (r4 == 0) goto La0
            android.util.Pair r3 = new android.util.Pair
            java.util.Map<java.lang.String, com.oplus.ocs.camera.common.util.ApsRequestTag> r4 = r2.mTagMap
            java.lang.Object r4 = r4.get(r6)
            com.oplus.ocs.camera.common.util.ApsRequestTag r4 = (com.oplus.ocs.camera.common.util.ApsRequestTag) r4
            android.util.Size r4 = r4.mPictureSize
            java.util.Map<java.lang.String, com.oplus.ocs.camera.common.util.ApsRequestTag> r2 = r2.mTagMap
            java.lang.Object r2 = r2.get(r6)
            com.oplus.ocs.camera.common.util.ApsRequestTag r2 = (com.oplus.ocs.camera.common.util.ApsRequestTag) r2
            android.util.Size r2 = r2.mPictureSize
            r3.<init>(r4, r2)
            return r3
        La0:
            java.lang.String r2 = "rear_wide"
            boolean r2 = r2.equals(r6)
            if (r2 == 0) goto Lbc
            android.util.Pair r2 = new android.util.Pair
            android.util.Size r4 = r3.getAppSurfaceSize()
            android.util.Size r3 = r3.getHalSurfaceSize()
            r2.<init>(r4, r3)
            return r2
        Lb6:
            android.util.Pair r2 = new android.util.Pair
            r2.<init>(r5, r5)
            return r2
        Lbc:
            android.util.Pair r2 = new android.util.Pair
            r2.<init>(r5, r5)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.MacroMode.getSurfaceSize(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig, java.lang.String, java.lang.String, java.lang.String):android.util.Pair");
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (((str.hashCode() == -930917882 && str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) ? (char) 0 : (char) 65535) != 0) {
            return;
        }
        updateCameraRequestTag(builder, cameraRequestTag);
    }

    private void updateCameraRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
            cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
            cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN)).booleanValue();
            cameraRequestTag.mbFilterVignette = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE)).booleanValue();
        }
    }
}
