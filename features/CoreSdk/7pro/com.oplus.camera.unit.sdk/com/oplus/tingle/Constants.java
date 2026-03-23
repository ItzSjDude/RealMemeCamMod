package com.oplus.tingle;

import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.tingle.ipc.utils.VersionUtils;
/* loaded from: classes.dex */
public class Constants {
    private static final String APP_PLATFORM_PACKAGE_NAME = "com.oplus.appplatform";
    private static final String BINDER_DESCRIPTOR = "com.oplus.epona.binder";
    public static final int BINDER_TRANSACTION_transact = 1;
    private static final String EXTRA_BINDER = "com.oplus.epona.ext_binder";
    private static final String MASTER_PROVIDER_URI = "com.oplus.appplatform.master.provider";
    public static final String METHOD_SEND_BINDER = "sendBinder";
    public static final String WINDOW_SERVICE_INNER = "windowInner";

    @OplusCompatibleMethod
    private static Object getAppPlatformPackageNameCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getBinderDescriptorCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getExtraBinderCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getMasterProviderCompat() {
        return null;
    }

    public static String getBinderDescriptor() {
        return VersionUtils.isOsVersion11_3() ? BINDER_DESCRIPTOR : (String) getBinderDescriptorCompat();
    }

    public static String getExtraBinder() {
        return VersionUtils.isOsVersion11_3() ? EXTRA_BINDER : (String) getExtraBinderCompat();
    }

    public static String getMasterProviderUri() {
        return VersionUtils.isOsVersion11_3() ? MASTER_PROVIDER_URI : (String) getMasterProviderCompat();
    }

    public static String getAppPlatformPackageName() {
        if (VersionUtils.isOsVersion11_3()) {
            return "com.oplus.appplatform";
        }
        String str = (String) getAppPlatformPackageNameCompat();
        return str == null ? "" : str;
    }
}
