package android.app;

import android.app.AppOpsManager;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public interface IAppOpsManagerExt {
    public static final int CUSTOM_NUM_OP = 10002;
    public static final int OP_CUSTOM_NONE = 10000;
    public static final int OP_GET_INSTALLED_APPS = 10001;
    public static final int[] sCustomOpToSwitch = {10001};
    public static final String OPSTR_GET_INSTALLED_APPS = "android:get_installed_apps";
    public static final String[] sCustomOpToString = {OPSTR_GET_INSTALLED_APPS};
    public static final String[] sCustomOpNames = {"GET_INSTALLED_APPS"};
    public static final int[] sCustomRuntimeOps = {10001};
    public static final String[] sCustomOpPerms = {"com.android.permission.GET_INSTALLED_APPS"};
    public static final String[] sCustomOpRestrictions = {null};
    public static final AppOpsManager.RestrictionBypass[] sCustomOpAllowSystemRestrictionBypass = {null};
    public static final int[] sCustomOpDefaultMode = {3};
    public static final boolean[] sCustomOpDisableReset = {false};
    public static final HashMap<String, Integer> sCustomOpStrToOp = new HashMap<String, Integer>() { // from class: android.app.IAppOpsManagerExt.1
        {
            put(IAppOpsManagerExt.OPSTR_GET_INSTALLED_APPS, 10001);
        }
    };

    default void putCustomRuntimeOps(Map<String, Integer> map) {
    }

    default void putCustomOpStrToOp(Map<String, Integer> map) {
    }

    default Integer getCustomOpToSwitch(int op) {
        return null;
    }

    default Integer getCustomOpToDefaultMode(int op) {
        return null;
    }

    default String getCustomOpToName(int op) {
        return null;
    }

    default String getCustomOpToPermission(int op) {
        return null;
    }

    default String getCustomOpToPublicName(int op) {
        return null;
    }

    default String getCustomOpToRestriction(int op) {
        return null;
    }

    default String getCustomPermissionToOp(Integer opCode) {
        return null;
    }

    default Integer getCustomStrDebugOpToOp(String op) {
        return null;
    }

    default boolean getCustomOpAllowReset(int op) {
        return false;
    }

    default String[] getAllOpStrs(String[] strs) {
        return strs;
    }

    default AppOpsManager.RestrictionBypass getCustomOpAllowSystemBypassRestriction(int op) {
        return null;
    }

    default boolean onCustomOpChanged(AppOpsManager.OnOpChangedListener callback, int op, String packageName) {
        return false;
    }
}
