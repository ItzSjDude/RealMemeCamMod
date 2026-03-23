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
    protected String getSurfaceUseCase(String str, boolean z) {
        return "simple_photo_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
        if (r5.equals("preview") == false) goto L3;
     */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected android.util.Pair<android.util.Size, android.util.Size> getSurfaceSize(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig r4, java.lang.String r5, java.lang.String r6, java.lang.String r7) {
        /*
            r3 = this;
            java.util.Map<java.lang.String, com.oplus.ocs.camera.common.util.ApsRequestTag> r6 = r3.mTagMap
            java.lang.Object r6 = r6.get(r7)
            com.oplus.ocs.camera.common.util.ApsRequestTag r6 = (com.oplus.ocs.camera.common.util.ApsRequestTag) r6
            android.util.Size r6 = r6.mPreviewSize
            java.util.List r4 = r4.getPictureSurfaces()
            r0 = 0
            java.lang.Object r4 = r4.get(r0)
            com.oplus.ocs.camera.common.surface.SurfaceWrapper r4 = (com.oplus.ocs.camera.common.surface.SurfaceWrapper) r4
            r5.hashCode()
            int r1 = r5.hashCode()
            r2 = -1
            switch(r1) {
                case -318184504: goto L4e;
                case 163290031: goto L43;
                case 552585030: goto L38;
                case 1238458461: goto L2d;
                case 1238465807: goto L22;
                default: goto L20;
            }
        L20:
            r0 = r2
            goto L57
        L22:
            java.lang.String r0 = "tuning_data_yuv"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L2b
            goto L20
        L2b:
            r0 = 4
            goto L57
        L2d:
            java.lang.String r0 = "tuning_data_raw"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L36
            goto L20
        L36:
            r0 = 3
            goto L57
        L38:
            java.lang.String r0 = "capture"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L41
            goto L20
        L41:
            r0 = 2
            goto L57
        L43:
            java.lang.String r0 = "capture_raw"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L4c
            goto L20
        L4c:
            r0 = 1
            goto L57
        L4e:
            java.lang.String r1 = "preview"
            boolean r1 = r5.equals(r1)
            if (r1 != 0) goto L57
            goto L20
        L57:
            switch(r0) {
                case 0: goto Lc4;
                case 1: goto La3;
                case 2: goto L65;
                case 3: goto L5b;
                case 4: goto L5b;
                default: goto L5a;
            }
        L5a:
            goto L9d
        L5b:
            android.util.Size r3 = r3.getSurfaceTuningSize(r5, r7)
            android.util.Pair r4 = new android.util.Pair
            r4.<init>(r3, r3)
            return r4
        L65:
            java.lang.String r5 = "rear_macro"
            boolean r5 = r5.equals(r7)
            if (r5 == 0) goto L87
            android.util.Pair r4 = new android.util.Pair
            java.util.Map<java.lang.String, com.oplus.ocs.camera.common.util.ApsRequestTag> r5 = r3.mTagMap
            java.lang.Object r5 = r5.get(r7)
            com.oplus.ocs.camera.common.util.ApsRequestTag r5 = (com.oplus.ocs.camera.common.util.ApsRequestTag) r5
            android.util.Size r5 = r5.mPictureSize
            java.util.Map<java.lang.String, com.oplus.ocs.camera.common.util.ApsRequestTag> r3 = r3.mTagMap
            java.lang.Object r3 = r3.get(r7)
            com.oplus.ocs.camera.common.util.ApsRequestTag r3 = (com.oplus.ocs.camera.common.util.ApsRequestTag) r3
            android.util.Size r3 = r3.mPictureSize
            r4.<init>(r5, r3)
            return r4
        L87:
            java.lang.String r3 = "rear_wide"
            boolean r3 = r3.equals(r7)
            if (r3 == 0) goto L9d
            android.util.Pair r3 = new android.util.Pair
            android.util.Size r5 = r4.getAppSurfaceSize()
            android.util.Size r4 = r4.getHalSurfaceSize()
            r3.<init>(r5, r4)
            return r3
        L9d:
            android.util.Pair r3 = new android.util.Pair
            r3.<init>(r6, r6)
            return r3
        La3:
            r4 = 32
            java.util.List r3 = r3.getPictureSizes(r7, r4)
            int r4 = r3.size()
            android.util.Size[] r4 = new android.util.Size[r4]
            java.lang.Object[] r3 = r3.toArray(r4)
            android.util.Size[] r3 = (android.util.Size[]) r3
            r4 = 4608683618675807573(0x3ff5555555555555, double:1.3333333333333333)
            android.util.Size r3 = com.oplus.ocs.camera.common.util.Util.getMaxSizeByRatio(r3, r4)
            android.util.Pair r4 = new android.util.Pair
            r4.<init>(r3, r3)
            return r4
        Lc4:
            android.util.Pair r3 = new android.util.Pair
            r3.<init>(r6, r6)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.mode.MacroMode.getSurfaceSize(com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig, java.lang.String, java.lang.String, java.lang.String):android.util.Pair");
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
