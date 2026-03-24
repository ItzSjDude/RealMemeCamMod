package com.oplus.compat.view;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.display.DisplayManagerGlobal;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.view.IWindowManager;
import android.view.OplusBaseLayoutParams;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.util.OplusTypeCastingHelperNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.view.WindowManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.tingle.Constants;
import com.oplus.tingle.ipc.Slave;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class WindowManagerNative {
    private static final String COMPONENT_NAME = "android.view.IWindowManager";
    private static final String TAG = "WindowManagerNative";

    @OplusCompatibleMethod
    private static Object getAppPlatformPackageNameForCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getCurrentImeTouchRegionQCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getDockedStackSideQCompat() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getHomeAndMenuKeyStateCompat(WindowManager.LayoutParams layoutParams) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getStatusBarStateByWindowManagerCompat(WindowManager.LayoutParams layoutParams) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setHomeAndMenuKeyStateCompat(WindowManager.LayoutParams layoutParams, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setStatusBarStateByWindowManagerCompat(WindowManager.LayoutParams layoutParams, int i) {
    }

    static /* synthetic */ Object access$000() {
        return getUnsetAnyKeyQCompat();
    }

    static /* synthetic */ Object access$100() {
        return getIgnoreHomeMenuKeyQCompat();
    }

    static /* synthetic */ Object access$200() {
        return getIgnoreHomeKeyQCompat();
    }

    static /* synthetic */ Object access$300() {
        return getIgnoreMenuKeyQCompat();
    }

    static /* synthetic */ Object access$400() {
        return getDefaultStatusBarQCompat();
    }

    static /* synthetic */ Object access$500() {
        return getDisableStatusBarQCompat();
    }

    static /* synthetic */ Object access$600() {
        return getEnableStatusBarQCompat();
    }

    private WindowManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Integer> getInitialDisplayDensity;
        public static RefMethod<Void> watchRotation;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, IWindowManager.class);
        }
    }

    /* loaded from: classes.dex */
    private static class RefIRotationWatcherInfo {
        public static RefMethod<Object> asInterface;

        private RefIRotationWatcherInfo() {
        }

        static {
            RefClass.load(RefIRotationWatcherInfo.class, "android.view.IRotationWatcher$Stub");
        }
    }

    @Permission(authStr = "IWindowSession", type = "tingle")
    @RequiresApi(api = 28)
    public static void addView(Context context, View view, WindowManager.LayoutParams layoutParams) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ((WindowManager) Slave.getSystemService(context, "window")).addView(view, layoutParams);
        } else if (VersionUtils.isP()) {
            ((WindowManager) context.getSystemService("window")).addView(view, layoutParams);
        } else {
            throw new UnSupportedApiVersionException("not supported before P");
        }
    }

    public static void viewRemoved(Context context) {
        Slave.resetBinderOrigin(context, "window");
    }

    @Permission(authStr = "IWindowSession", type = "tingle")
    @RequiresApi(api = 30)
    public static void addViewInner(Context context, View view, WindowManager.LayoutParams layoutParams) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            layoutParams.packageName = getAppPlatformPackageName();
            ((WindowManager) Slave.getSystemService(context, Constants.WINDOW_SERVICE_INNER)).addView(view, layoutParams);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    private static String getAppPlatformPackageName() {
        return VersionUtils.isOsVersion11_3() ? "com.oplus.appplatform" : (String) getAppPlatformPackageNameForCompat();
    }

    public static void innerViewRemoved(Context context) {
        Slave.resetBinderOrigin(context, Constants.WINDOW_SERVICE_INNER);
    }

    @Grey
    @RequiresApi(api = 21)
    public static boolean hasNavigationBar(int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isQ()) {
            return IWindowManager.Stub.asInterface(ServiceManager.getService("window")).hasNavigationBar(i);
        }
        if (VersionUtils.isL()) {
            if (containsDisplayId(DisplayManagerGlobal.getInstance().getDisplayIds(), i)) {
                try {
                    return ((Boolean) IWindowManager.class.getDeclaredMethod("hasNavigationBar", new Class[0]).invoke(WindowManagerGlobal.getWindowManagerService(), new Object[0])).booleanValue();
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not supported before L");
    }

    private static boolean containsDisplayId(int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    @Grey
    @RequiresApi(api = 21)
    public static int getInitialDisplayDensity(int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isL()) {
            return ReflectInfo.getInitialDisplayDensity.call(IWindowManager.Stub.asInterface(ServiceManager.getService("window")), Integer.valueOf(i)).intValue();
        }
        throw new UnSupportedApiVersionException("Not supported before L");
    }

    @Grey
    @RequiresApi(api = 25)
    public static int getDockedStackSide() throws RemoteException, UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return WindowManagerGlobal.getWindowManagerService().getDockedStackSide();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getDockedStackSideQCompat()).intValue();
        }
        if (VersionUtils.isN_MR1()) {
            return WindowManagerGlobal.getWindowManagerService().getDockedStackSide();
        }
        throw new UnSupportedApiVersionException("Not supported before N_MR1");
    }

    @Permission(authStr = "getCurrentImeTouchRegion", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static Region getCurrentImeTouchRegion() throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getCurrentImeTouchRegion").build()).execute();
            if (execute.isSuccessful()) {
                return (Region) execute.getBundle().getParcelable("result");
            }
            return null;
        } else if (VersionUtils.isQ()) {
            return (Region) getCurrentImeTouchRegionQCompat();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "watchRotation", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static void watchRotation(IBinder iBinder, int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isS()) {
            ReflectInfo.watchRotation.call(IWindowManager.Stub.asInterface(ServiceManager.getService("window")), RefIRotationWatcherInfo.asInterface.call(null, iBinder), Integer.valueOf(i));
        } else if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("watchRotation").withBinder("IWatcher", iBinder).withInt("var", i).build()).execute();
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParamsNative {
        @Oem
        @RequiresApi(api = 23)
        public static int DEFAULT_STATUS_BAR;
        @Oem
        @RequiresApi(api = 23)
        public static int DISABLE_STATUS_BAR;
        @Oem
        @RequiresApi(api = 23)
        public static int ENABLE_STATUS_BAR;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
        public static int IGNORE_HOME_KEY;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
        public static int IGNORE_HOME_MENU_KEY;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
        public static int IGNORE_MENU_KEY;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int SYSTEM_FLAG_SHOW_FOR_ALL_USERS;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_ACCESSIBILITY_MAGNIFICATION_OVERLAY;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_ACCESSIBILITY_OVERLAY;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_APPLICATION_OVERLAY;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_DISPLAY_OVERLAY;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_DRAG;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_KEYGUARD;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_KEYGUARD_DIALOG;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_MAGNIFICATION_OVERLAY;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_NAVIGATION_BAR;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_NAVIGATION_BAR_PANEL;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_SCREENSHOT;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_SECURE_SYSTEM_OVERLAY;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_STATUS_BAR;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_STATUS_BAR_PANEL;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_STATUS_BAR_SUB_PANEL;
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int TYPE_VOLUME_OVERLAY;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
        public static int UNSET_ANY_KEY;

        /* loaded from: classes.dex */
        private static class ReflectInfo {
            public static RefObject<Integer> DEFAULT_STATUS_BAR;
            public static RefObject<Integer> DISABLE_STATUS_BAR;
            public static RefObject<Integer> ENABLE_STATUS_BAR;
            public static RefObject<Integer> IGNORE_HOME_KEY;
            public static RefObject<Integer> IGNORE_HOME_MENU_KEY;
            public static RefObject<Integer> IGNORE_MENU_KEY;
            public static RefObject<Integer> UNSET_ANY_KEY;
            public static RefObject<Integer> ignoreHomeMenuKey;
            public static RefObject<Integer> isDisableStatusBar;

            private ReflectInfo() {
            }

            static {
                RefClass.load(ReflectInfo.class, WindowManager.LayoutParams.class);
            }
        }

        private LayoutParamsNative() {
        }

        static {
            try {
                if (VersionUtils.isQ()) {
                    UNSET_ANY_KEY = ((Integer) WindowManagerNative.access$000()).intValue();
                    IGNORE_HOME_MENU_KEY = ((Integer) WindowManagerNative.access$100()).intValue();
                    IGNORE_HOME_KEY = ((Integer) WindowManagerNative.access$200()).intValue();
                    IGNORE_MENU_KEY = ((Integer) WindowManagerNative.access$300()).intValue();
                    DEFAULT_STATUS_BAR = ((Integer) WindowManagerNative.access$400()).intValue();
                    DISABLE_STATUS_BAR = ((Integer) WindowManagerNative.access$500()).intValue();
                    ENABLE_STATUS_BAR = ((Integer) WindowManagerNative.access$600()).intValue();
                    TYPE_VOLUME_OVERLAY = 2020;
                    SYSTEM_FLAG_SHOW_FOR_ALL_USERS = 16;
                    TYPE_NAVIGATION_BAR_PANEL = 2024;
                    TYPE_NAVIGATION_BAR = 2019;
                    TYPE_ACCESSIBILITY_OVERLAY = 2032;
                    TYPE_ACCESSIBILITY_MAGNIFICATION_OVERLAY = 2039;
                    TYPE_DISPLAY_OVERLAY = 2026;
                    TYPE_DRAG = 2016;
                    TYPE_KEYGUARD = 2004;
                    TYPE_KEYGUARD_DIALOG = 2009;
                    TYPE_MAGNIFICATION_OVERLAY = 2027;
                    TYPE_SCREENSHOT = 2036;
                    TYPE_SECURE_SYSTEM_OVERLAY = 2015;
                    TYPE_STATUS_BAR = 2000;
                    TYPE_STATUS_BAR_PANEL = 2014;
                    TYPE_STATUS_BAR_SUB_PANEL = 2017;
                    TYPE_APPLICATION_OVERLAY = 2038;
                } else if (VersionUtils.isM()) {
                    if (VersionUtils.isN()) {
                        IGNORE_HOME_MENU_KEY = ReflectInfo.IGNORE_HOME_MENU_KEY.get(null).intValue();
                        UNSET_ANY_KEY = ReflectInfo.UNSET_ANY_KEY.get(null).intValue();
                        IGNORE_HOME_KEY = ReflectInfo.IGNORE_HOME_KEY.get(null).intValue();
                        IGNORE_MENU_KEY = ReflectInfo.IGNORE_MENU_KEY.get(null).intValue();
                    }
                    DEFAULT_STATUS_BAR = ReflectInfo.DEFAULT_STATUS_BAR.get(null).intValue();
                    DISABLE_STATUS_BAR = ReflectInfo.DISABLE_STATUS_BAR.get(null).intValue();
                    ENABLE_STATUS_BAR = ReflectInfo.ENABLE_STATUS_BAR.get(null).intValue();
                } else {
                    throw new UnSupportedApiVersionException();
                }
            } catch (Throwable th) {
                Log.e(WindowManagerNative.TAG, th.toString());
            }
        }

        @Blocked
        @RequiresApi(api = 23)
        public static int getStatusBarStateByWindowManager(WindowManager.LayoutParams layoutParams) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                try {
                    OplusBaseLayoutParams oplusBaseLayoutParams = (OplusBaseLayoutParams) OplusTypeCastingHelperNative.typeCasting(OplusBaseLayoutParams.class, layoutParams);
                    if (oplusBaseLayoutParams != null) {
                        return oplusBaseLayoutParams.isDisableStatusBar;
                    }
                    return -1;
                } catch (NoSuchFieldError e) {
                    Log.e(WindowManagerNative.TAG, e.toString());
                    throw new UnSupportedApiVersionException("no permission to access the blocked field:" + e.toString());
                }
            } else if (VersionUtils.isOsVersion11_3()) {
                return WindowManagerWrapper.LayoutParamsWrapper.getStatusBarStateByWindowManager(layoutParams);
            } else {
                if (VersionUtils.isQ()) {
                    return ((Integer) WindowManagerNative.getStatusBarStateByWindowManagerCompat(layoutParams)).intValue();
                }
                if (VersionUtils.isM()) {
                    return ReflectInfo.isDisableStatusBar.get(layoutParams).intValue();
                }
                throw new UnSupportedApiVersionException("not supported before M");
            }
        }

        @Blocked
        @RequiresApi(api = 23)
        public static void setStatusBarStateByWindowManager(WindowManager.LayoutParams layoutParams, int i) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                try {
                    OplusBaseLayoutParams oplusBaseLayoutParams = (OplusBaseLayoutParams) OplusTypeCastingHelperNative.typeCasting(OplusBaseLayoutParams.class, layoutParams);
                    if (oplusBaseLayoutParams != null) {
                        oplusBaseLayoutParams.isDisableStatusBar = i;
                    }
                } catch (NoSuchFieldError e) {
                    Log.e(WindowManagerNative.TAG, e.toString());
                    throw new UnSupportedApiVersionException("no permission to access the blocked field:" + e.toString());
                }
            } else if (VersionUtils.isOsVersion11_3()) {
                WindowManagerWrapper.LayoutParamsWrapper.setStatusBarStateByWindowManager(layoutParams, i);
            } else if (VersionUtils.isQ()) {
                WindowManagerNative.setStatusBarStateByWindowManagerCompat(layoutParams, i);
            } else if (VersionUtils.isM()) {
                ReflectInfo.isDisableStatusBar.set(layoutParams, Integer.valueOf(i));
            } else {
                throw new UnSupportedApiVersionException("not supported before M");
            }
        }

        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
        public static int getHomeAndMenuKeyState(WindowManager.LayoutParams layoutParams) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                try {
                    OplusBaseLayoutParams oplusBaseLayoutParams = (OplusBaseLayoutParams) OplusTypeCastingHelperNative.typeCasting(OplusBaseLayoutParams.class, layoutParams);
                    if (oplusBaseLayoutParams != null) {
                        return oplusBaseLayoutParams.ignoreHomeMenuKey;
                    }
                    return -1;
                } catch (NoSuchFieldError e) {
                    Log.e(WindowManagerNative.TAG, e.toString());
                    throw new UnSupportedApiVersionException("no permission to access the blocked field:" + e.toString());
                }
            } else if (VersionUtils.isOsVersion11_3()) {
                return WindowManagerWrapper.LayoutParamsWrapper.getHomeAndMenuKeyState(layoutParams);
            } else {
                if (VersionUtils.isQ()) {
                    return ((Integer) WindowManagerNative.getHomeAndMenuKeyStateCompat(layoutParams)).intValue();
                }
                if (VersionUtils.isN()) {
                    return ReflectInfo.ignoreHomeMenuKey.get(layoutParams).intValue();
                }
                throw new UnSupportedApiVersionException("not supported before N");
            }
        }

        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
        public static void setHomeAndMenuKeyState(WindowManager.LayoutParams layoutParams, int i) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                try {
                    OplusBaseLayoutParams oplusBaseLayoutParams = (OplusBaseLayoutParams) OplusTypeCastingHelperNative.typeCasting(OplusBaseLayoutParams.class, layoutParams);
                    if (oplusBaseLayoutParams != null) {
                        oplusBaseLayoutParams.ignoreHomeMenuKey = i;
                    }
                } catch (NoSuchFieldError e) {
                    Log.e(WindowManagerNative.TAG, e.toString());
                    throw new UnSupportedApiVersionException("no permission to access the blocked field:" + e.toString());
                }
            } else if (VersionUtils.isOsVersion11_3()) {
                WindowManagerWrapper.LayoutParamsWrapper.setHomeAndMenuKeyState(layoutParams, i);
            } else if (VersionUtils.isQ()) {
                WindowManagerNative.setHomeAndMenuKeyStateCompat(layoutParams, i);
            } else if (VersionUtils.isN()) {
                ReflectInfo.ignoreHomeMenuKey.set(layoutParams, Integer.valueOf(i));
            } else {
                throw new UnSupportedApiVersionException("not supported before N");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
        public static void addPrivateFlag(WindowManager.LayoutParams layoutParams, int i) throws UnSupportedApiVersionException {
            if (VersionUtils.isN()) {
                layoutParams.privateFlags = i | layoutParams.privateFlags;
                return;
            }
            throw new UnSupportedApiVersionException("not supported before N");
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
        public static WindowManager.LayoutParams setPrivateFlag(WindowManager.LayoutParams layoutParams, int i) throws UnSupportedApiVersionException {
            if (VersionUtils.isN()) {
                layoutParams.privateFlags = i;
                return layoutParams;
            }
            throw new UnSupportedApiVersionException("not supported before N");
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
        public static int getPrivateFlag(WindowManager.LayoutParams layoutParams) throws UnSupportedApiVersionException {
            if (VersionUtils.isN()) {
                return layoutParams.privateFlags;
            }
            throw new UnSupportedApiVersionException("not supported before N");
        }
    }

    @OplusCompatibleMethod
    private static Object getUnsetAnyKeyQCompat() {
        return (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) ? 0 : null;
    }

    @OplusCompatibleMethod
    private static Object getIgnoreHomeMenuKeyQCompat() {
        return (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) ? 1 : null;
    }

    @OplusCompatibleMethod
    private static Object getIgnoreHomeKeyQCompat() {
        return (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) ? 2 : null;
    }

    @OplusCompatibleMethod
    private static Object getIgnoreMenuKeyQCompat() {
        return (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) ? 3 : null;
    }

    @OplusCompatibleMethod
    private static Object getDefaultStatusBarQCompat() {
        return (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) ? 0 : null;
    }

    @OplusCompatibleMethod
    private static Object getDisableStatusBarQCompat() {
        return (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) ? 1 : null;
    }

    @OplusCompatibleMethod
    private static Object getEnableStatusBarQCompat() {
        return (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) ? 2 : null;
    }

    @Grey
    @RequiresApi(api = 25)
    public static WindowInsets createWindowInsets(Rect rect) throws UnSupportedApiVersionException {
        if (VersionUtils.isN_MR1()) {
            return new WindowInsets(rect);
        }
        throw new UnSupportedApiVersionException();
    }
}
