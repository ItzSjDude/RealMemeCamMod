package com.oplus.compat.app;

import android.app.StatusBarManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class StatusBarManagerNative {
    private static final String TAG = "StatusBarManagerNative";

    private StatusBarManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Void> collapsePanels;
        private static RefMethod<Void> disable;
        private static RefMethod<Void> disable2;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.app.StatusBarManager");
        }
    }

    @Permission(authStr = "disable", type = "epona")
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void disable(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (Epona.newCall(new Request.Builder().setComponentName("com.android.server.statusbar.StatusBarManagerService").setActionName("disable").withInt("what", i).build()).execute().isSuccessful()) {
                return;
            }
            Log.e(TAG, "disable is not connected with Epona");
        } else if (VersionUtils.isQ()) {
            ReflectInfo.disable.call((StatusBarManager) Epona.getContext().getSystemService("statusbar"), Integer.valueOf(i));
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before Q");
        }
    }

    @Permission(authStr = "disable2", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void disable2(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (Epona.newCall(new Request.Builder().setComponentName("com.android.server.statusbar.StatusBarManagerService").setActionName("disable2").withInt("what", i).build()).execute().isSuccessful()) {
                return;
            }
            Log.e(TAG, "disable2 is not connected with Epona");
        } else if (VersionUtils.isQ()) {
            ReflectInfo.disable2.call((StatusBarManager) Epona.getContext().getSystemService("statusbar"), Integer.valueOf(i));
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before Q");
        }
    }

    @Permission(authStr = "collapsePanels", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void collapsePanels(StatusBarManager statusBarManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Epona.newCall(new Request.Builder().setComponentName("com.android.server.statusbar.StatusBarManagerService").setActionName("collapsePanels").build()).execute();
        } else if (VersionUtils.isQ()) {
            ReflectInfo.collapsePanels.call(statusBarManager, new Object[0]);
        } else {
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }

    @Permission(authStr = "hideAuthenticationDialog", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void hideAuthenticationDialog() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (Epona.newCall(new Request.Builder().setComponentName("com.android.server.statusbar.StatusBarManagerService").setActionName("hideAuthenticationDialog").build()).execute().isSuccessful()) {
                return;
            }
            Log.e(TAG, "hideAuthenticationDialog is not connected with Epona");
            return;
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }

    @Grey
    @RequiresApi(api = 26)
    public static void expandNotificationsPanel() throws UnSupportedApiVersionException {
        if (VersionUtils.isO()) {
            ((StatusBarManager) Epona.getContext().getSystemService("statusbar")).expandNotificationsPanel();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before O");
    }
}
