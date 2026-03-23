package com.oplus.compat.content.res;

import android.content.res.Resources;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.content.res.ResourcesWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class ResourcesNative {
    private static final String COMPONENT_NAME = "android.content.res.Resources";
    private static final String HAS_PACKAGE_ACTION = "resourceHasPackage";
    public static final String PARAM_ID = "id";
    private static final String RESULT = "result";
    private static final String TAG = "ResourcesNative";

    @OplusCompatibleMethod
    private static Object getCompatApplicationScaleForCompat(Resources resources) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getThemeChangedForCompat(Resources resources) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setIsThemeChangedForCompat(Resources resources, boolean z) {
    }

    /* loaded from: classes.dex */
    private static class RefResourcesInfo {
        public static RefObject<Object> mResourcesExt;
        public static RefMethod<Boolean> resourceHasPackage;

        private RefResourcesInfo() {
        }

        static {
            RefClass.load(RefResourcesInfo.class, Resources.class);
        }
    }

    /* loaded from: classes.dex */
    private static class RefIResourcesExtInfo {
        public static RefMethod<Boolean> getThemeChanged;
        public static RefMethod<Void> setIsThemeChanged;

        private RefIResourcesExtInfo() {
        }

        static {
            RefClass.load(RefIResourcesExtInfo.class, "android.content.res.IResourcesExt");
        }
    }

    private ResourcesNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static float getCompatApplicationScale(Resources resources) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return resources.getCompatibilityInfo().applicationScale;
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ResourcesWrapper.getCompatApplicationScale(resources);
        }
        if (VersionUtils.isQ()) {
            return ((Float) getCompatApplicationScaleForCompat(resources)).floatValue();
        }
        if (VersionUtils.isN()) {
            return resources.getCompatibilityInfo().applicationScale;
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean getThemeChanged(Resources resources) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Object obj = RefResourcesInfo.mResourcesExt.get(resources);
            if (obj != null) {
                return RefIResourcesExtInfo.getThemeChanged.call(obj, new Object[0]).booleanValue();
            }
            return false;
        } else if (VersionUtils.isOsVersion11_3()) {
            return ResourcesWrapper.getThemeChanged(resources);
        } else {
            if (VersionUtils.isQ()) {
                return ((Boolean) getThemeChangedForCompat(resources)).booleanValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setIsThemeChanged(Resources resources, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Object obj = RefResourcesInfo.mResourcesExt.get(resources);
            if (obj != null) {
                RefIResourcesExtInfo.setIsThemeChanged.call(obj, Boolean.valueOf(z));
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            ResourcesWrapper.setIsThemeChanged(resources, z);
        } else if (VersionUtils.isQ()) {
            setIsThemeChangedForCompat(resources, z);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Permission(authStr = HAS_PACKAGE_ACTION, type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static boolean resourceHasPackage(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return RefResourcesInfo.resourceHasPackage.call(null, Integer.valueOf(i)).booleanValue();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(HAS_PACKAGE_ACTION).build();
            build.getBundle().putInt(PARAM_ID, i);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e(TAG, "resourceHasPackage e= " + execute.getMessage());
            return false;
        } else {
            throw new UnSupportedApiVersionException();
        }
    }
}
