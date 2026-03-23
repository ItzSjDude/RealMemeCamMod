package com.oplus.compat.content.pm;

import android.content.IntentSender;
import android.content.pm.IShortcutService;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.os.ServiceManager;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class IShortcutServiceNative {
    private static final String COMPONENT_NAME = "android.content.pm.IShortcutService";
    private static final String KEY_RESULT = "result";

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Boolean> requestPinShortcut;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, IShortcutService.class);
        }
    }

    /* loaded from: classes.dex */
    private static class ManagerReflectInfo {
        private static RefMethod<List<ShortcutInfo>> getPinnedShortcuts;

        private ManagerReflectInfo() {
        }

        static {
            RefClass.load(ManagerReflectInfo.class, ShortcutManager.class);
        }
    }

    private IShortcutServiceNative() {
    }

    @Permission(authStr = "requestPinShortcut", type = "epona")
    @RequiresApi(api = 26)
    @System
    public static boolean requestPinShortcut(String str, ShortcutInfo shortcutInfo, IntentSender intentSender, int i) throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("requestPinShortcut").withString("packageName", str).withParcelable("ShortcutInfo", shortcutInfo).withParcelable("IntentSender", intentSender).withInt("userId", i).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isO()) {
                return ((Boolean) ReflectInfo.requestPinShortcut.callWithException(IShortcutService.Stub.asInterface(ServiceManager.getService("shortcut")), str, shortcutInfo, intentSender, Integer.valueOf(i))).booleanValue();
            } else {
                throw new UnSupportedApiVersionException("not supported before O");
            }
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }

    @Permission(authStr = "getShortcuts", type = "epona")
    @RequiresApi(api = 26)
    @System
    public static List<ShortcutInfo> getShortcuts(String str, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getShortcuts").withString("packageName", str).withInt("matchFlags", i).withInt("userId", i2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(KEY_RESULT);
            }
            return Collections.emptyList();
        } else if (VersionUtils.isO()) {
            return (List) ManagerReflectInfo.getPinnedShortcuts.call((ShortcutManager) Epona.getContext().getSystemService("shortcut"), new Object[0]);
        } else {
            throw new UnSupportedApiVersionException("not supported before O");
        }
    }
}
