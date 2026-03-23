package com.oplus.compat.hardware.biometrics;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class BiometricFaceConstantsNative {
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static final int FACE_AUTHENTICATE_BY_USER = 1;
    private static final String TAG = "BiometricFaceConstantsNative";

    private BiometricFaceConstantsNative() {
    }
}
