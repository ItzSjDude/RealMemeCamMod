package com.oplus.compat.service.carrier;

import android.service.carrier.CarrierIdentifier;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefConstructor;
/* loaded from: classes.dex */
public class CarrierIdentifierNative {

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(params = {String.class, String.class, String.class, String.class, String.class, String.class, String.class, int.class, int.class})
        public static RefConstructor<CarrierIdentifier> sConstructor;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, CarrierIdentifier.class);
        }
    }

    private CarrierIdentifierNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static CarrierIdentifier newInstance(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("Not supported in R because of blacklist");
        }
        if (VersionUtils.isQ()) {
            return ReflectInfo.sConstructor.newInstance(str, str2, str3, str4, str5, str6, str7, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new UnSupportedApiVersionException("Not supported before Q");
    }
}
