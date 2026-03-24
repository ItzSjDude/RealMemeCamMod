package com.oplus.compat.telephony;

import androidx.annotation.RequiresApi;
import com.android.internal.telephony.MccTable;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class MccTableNative {
    @OplusCompatibleMethod
    private static Object defaultLanguageForMccCompat(int i) {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<String> defaultLanguageForMcc;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, MccTable.class);
        }
    }

    private MccTableNative() {
    }

    @Grey
    @RequiresApi(api = 28)
    public static String countryCodeForMcc(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            return MccTable.countryCodeForMcc(i);
        }
        throw new UnSupportedApiVersionException("not supported before P");
    }

    @Grey
    @RequiresApi(api = 28)
    public static String defaultLanguageForMcc(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return (String) defaultLanguageForMccCompat(i);
        }
        if (VersionUtils.isP()) {
            return (String) ReflectInfo.defaultLanguageForMcc.call(null, Integer.valueOf(i));
        }
        throw new UnSupportedApiVersionException("not supported before P");
    }
}
