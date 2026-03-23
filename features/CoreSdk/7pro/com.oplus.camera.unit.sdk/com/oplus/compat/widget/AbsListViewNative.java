package com.oplus.compat.widget;

import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.widget.AbsListViewWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class AbsListViewNative {
    @OplusCompatibleMethod
    private static Object getTouchModeQCompat(AbsListView absListView) {
        return null;
    }

    @OplusCompatibleMethod
    private static void oplusStartSpringbackForQ(AbsListView absListView) {
    }

    @OplusCompatibleMethod
    private static void oplusStartSpringbackRCompat(AbsListView absListView) {
    }

    @OplusCompatibleMethod
    private static void setOplusFlingModeForQ(AbsListView absListView, int i) {
    }

    @OplusCompatibleMethod
    private static void setOplusFlingModeRCompat(AbsListView absListView, int i) {
    }

    private AbsListViewNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Integer> getTouchMode;
        private static RefObject<Object> mAbsListviewExt;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, AbsListView.class);
        }
    }

    /* loaded from: classes.dex */
    private static class RefAbsListViewInfo {
        private static RefMethod<Integer> getTouchMode;
        private static RefMethod<Void> oplusStartSpringback;
        private static RefMethod<Void> setOplusFlingMode;

        private RefAbsListViewInfo() {
        }

        static {
            RefClass.load(RefAbsListViewInfo.class, "android.widget.IAbsListviewExt");
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    @Deprecated
    public static int getTouchMode(@NonNull AbsListView absListView) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ((Integer) RefAbsListViewInfo.getTouchMode.call(ReflectInfo.mAbsListviewExt.get(absListView), new Object[0])).intValue();
        } else if (VersionUtils.isOsVersion11_3()) {
            return AbsListViewWrapper.getTouchMode(absListView);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getTouchModeQCompat(absListView)).intValue();
            }
            if (VersionUtils.isN()) {
                return ((Integer) ReflectInfo.getTouchMode.call(absListView, new Object[0])).intValue();
            }
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static void oplusStartSpringback(@NonNull AbsListView absListView) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            RefAbsListViewInfo.oplusStartSpringback.call(ReflectInfo.mAbsListviewExt.get(absListView), new Object[0]);
        } else if (VersionUtils.isR()) {
            if (VersionUtils.isOsVersion11_3()) {
                AbsListViewWrapper.oplusStartSpringback(absListView);
            } else {
                oplusStartSpringbackRCompat(absListView);
            }
        } else if (VersionUtils.isQ()) {
            oplusStartSpringbackForQ(absListView);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static void setOplusFlingMode(@NonNull AbsListView absListView, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            RefAbsListViewInfo.setOplusFlingMode.call(ReflectInfo.mAbsListviewExt.get(absListView), Integer.valueOf(i));
        } else if (VersionUtils.isR()) {
            if (VersionUtils.isOsVersion11_3()) {
                AbsListViewWrapper.setOplusFlingMode(absListView, i);
            } else {
                setOplusFlingModeRCompat(absListView, i);
            }
        } else if (VersionUtils.isQ()) {
            setOplusFlingModeForQ(absListView, i);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }
}
