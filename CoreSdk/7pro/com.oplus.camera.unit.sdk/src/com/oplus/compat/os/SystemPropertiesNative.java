package com.oplus.compat.os;

import android.os.SystemProperties;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.os.SystemPropertiesWrapper;
/* loaded from: classes.dex */
public class SystemPropertiesNative {
    @OplusCompatibleMethod
    private static void setCompat(String str, String str2) {
    }

    private SystemPropertiesNative() {
    }

    @Grey
    @RequiresApi(api = 21)
    public static String get(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            return SystemProperties.get(str);
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 21)
    public static String get(String str, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            return SystemProperties.get(str, str2);
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 21)
    public static int getInt(String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            return SystemProperties.getInt(str, i);
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 21)
    public static long getLong(String str, long j) throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            return SystemProperties.getLong(str, j);
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 21)
    public static boolean getBoolean(String str, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            return SystemProperties.getBoolean(str, z);
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 21)
    public static void set(String str, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            SystemProperties.set(str, str2);
        } else if (VersionUtils.isOsVersion11_3()) {
            SystemPropertiesWrapper.set(str, str2);
        } else if (VersionUtils.isQ()) {
            setCompat(str, str2);
        } else if (VersionUtils.isL()) {
            SystemProperties.set(str, str2);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }
}
