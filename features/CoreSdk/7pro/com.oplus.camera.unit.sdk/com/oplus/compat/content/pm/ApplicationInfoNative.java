package com.oplus.compat.content.pm;

import android.content.pm.ApplicationInfo;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.content.pm.ApplicationInfoWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class ApplicationInfoNative {
    private static final String ACTION_GET_BASE_CODE_PATH = "getBaseCodePath";
    private static final String APPLICATION_INFO = "applicationInfo";
    private static final String NAME = "android.content.pm.ApplicationInfo";
    private static final String RESULT = "result";
    private static final String TAG = "ApplicationInfoNative";

    @OplusCompatibleMethod
    private static Object getBaseCodePathForCompat(ApplicationInfo applicationInfo) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusFreezeStateForP(ApplicationInfo applicationInfo) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusFreezeStateForQ(ApplicationInfo applicationInfo) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getVersionCodeForCompat(ApplicationInfo applicationInfo) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isSystemAppForCompat(ApplicationInfo applicationInfo) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setOplusFreezeStateForP(ApplicationInfo applicationInfo, int i) {
    }

    @OplusCompatibleMethod
    private static void setOplusFreezeStateForQ(ApplicationInfo applicationInfo, int i) {
    }

    /* loaded from: classes.dex */
    private static class ReflectApplicationInfo {
        public static RefMethod<String> getBaseCodePath;
        public static RefMethod<Boolean> isSystemApp;

        private ReflectApplicationInfo() {
        }

        static {
            RefClass.load(ReflectApplicationInfo.class, ApplicationInfo.class);
        }
    }

    private ApplicationInfoNative() {
    }

    @Grey
    @RequiresApi(api = 21)
    public static int getVersionCode(ApplicationInfo applicationInfo) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return applicationInfo.versionCode;
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ApplicationInfoWrapper.getVersionCode(applicationInfo);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getVersionCodeForCompat(applicationInfo)).intValue();
        }
        if (VersionUtils.isL()) {
            return applicationInfo.versionCode;
        }
        throw new UnSupportedApiVersionException();
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String getBaseCodePath(@NonNull ApplicationInfo applicationInfo) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectApplicationInfo.getBaseCodePath.call(applicationInfo, new Object[0]);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ApplicationInfoWrapper.getBaseCodePath(applicationInfo);
        }
        if (VersionUtils.isQ()) {
            return (String) getBaseCodePathForCompat(applicationInfo);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Blocked
    @RequiresApi(api = 28)
    public static boolean isSystemApp(ApplicationInfo applicationInfo) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectApplicationInfo.isSystemApp.call(applicationInfo, new Object[0]).booleanValue();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ApplicationInfoWrapper.isSystemApp(applicationInfo);
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isSystemAppForCompat(applicationInfo)).booleanValue();
        }
        if (VersionUtils.isP()) {
            return ReflectApplicationInfo.isSystemApp.call(applicationInfo, new Object[0]).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Blocked
    @RequiresApi(api = 28)
    public static int getOplusFreezeState(ApplicationInfo applicationInfo) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return IApplicationInfoExtRefInfo.getOplusFreezeState.call(OplusMirrorApplicationInfo.mApplicationInfoExt.get(applicationInfo), new Object[0]).intValue();
        } else if (VersionUtils.isOsVersion11_3()) {
            return ApplicationInfoWrapper.getOplusFreezeState(applicationInfo);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getOplusFreezeStateForQ(applicationInfo)).intValue();
            }
            if (VersionUtils.isP()) {
                return ((Integer) getOplusFreezeStateForP(applicationInfo)).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Blocked
    @RequiresApi(api = 28)
    public static void setOplusFreezeState(ApplicationInfo applicationInfo, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Object obj = OplusMirrorApplicationInfo.mApplicationInfoExt.get(applicationInfo);
            if (obj != null) {
                IApplicationInfoExtRefInfo.setOplusFreezeState.call(obj, Integer.valueOf(i));
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            ApplicationInfoWrapper.setOplusFreezeState(applicationInfo, i);
        } else if (VersionUtils.isQ()) {
            setOplusFreezeStateForQ(applicationInfo, i);
        } else if (VersionUtils.isP()) {
            setOplusFreezeStateForP(applicationInfo, i);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    /* loaded from: classes.dex */
    private static class IApplicationInfoExtRefInfo {
        static RefMethod<Integer> getOplusFreezeState;
        static RefMethod<Void> setOplusFreezeState;

        private IApplicationInfoExtRefInfo() {
        }

        static {
            RefClass.load(IApplicationInfoExtRefInfo.class, "android.content.pm.IApplicationInfoExt");
        }
    }

    /* loaded from: classes.dex */
    private static class OplusMirrorApplicationInfo {
        public static RefObject<Object> mApplicationInfoExt;

        private OplusMirrorApplicationInfo() {
        }

        static {
            RefClass.load(OplusMirrorApplicationInfo.class, ApplicationInfo.class);
        }
    }
}
