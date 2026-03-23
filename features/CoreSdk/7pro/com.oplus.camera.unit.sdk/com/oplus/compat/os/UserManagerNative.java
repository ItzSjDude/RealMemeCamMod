package com.oplus.compat.os;

import android.content.Context;
import android.content.pm.UserInfo;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.content.pm.UserInfoNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.content.OplusFeatureConfigManager;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class UserManagerNative {
    private static final String COMPONENT_NAME = "android.os.UserManager";
    private static final String RESULT = "result";

    @OplusCompatibleMethod
    private static Object canShowMultiUserEntryCompat(Context context, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object createUserForQCompat(UserManager userManager, String str, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUserInfoQCompat(UserManager userManager, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUsersQCompat(Context context) {
        return null;
    }

    private UserManagerNative() {
    }

    @Permission(authStr = "isGuestUser", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static boolean isGuestUser(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isGuestUser").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "createUserWithThrow", type = "epona")
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static UserInfoNative createUser(Context context, String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("createUserWithThrow").withString("name", str).withInt("flags", i).build()).execute();
            if (execute.isSuccessful()) {
                return new UserInfoNative(execute.getBundle().getParcelable(RESULT));
            }
            return null;
        } else if (VersionUtils.isQ()) {
            Object createUserForQCompat = createUserForQCompat((UserManager) context.getSystemService("user"), str, i);
            if (createUserForQCompat != null) {
                return new UserInfoNative(createUserForQCompat);
            }
            return null;
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before Q");
        }
    }

    @Permission(authStr = "getUserInfo", type = "epona")
    @Grey
    @RequiresApi(api = 21)
    @System
    public static UserInfoNative getUserInfo(Context context, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getUserInfo").withInt("userId", i).build()).execute();
            if (execute.isSuccessful()) {
                return new UserInfoNative(execute.getBundle().getParcelable(RESULT));
            }
            return null;
        } else if (VersionUtils.isQ()) {
            Object userInfoQCompat = getUserInfoQCompat((UserManager) context.getSystemService("user"), i2);
            if (userInfoQCompat != null) {
                return new UserInfoNative(userInfoQCompat);
            }
            return null;
        } else if (VersionUtils.isL()) {
            UserInfo userInfo = ((UserManager) context.getSystemService("user")).getUserInfo(i2);
            if (userInfo != null) {
                return new UserInfoNative(userInfo);
            }
            return null;
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before L");
        }
    }

    @Permission(authStr = "isUserUnlockingOrUnlocked", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static boolean isUserUnlockingOrUnlocked(Context context, UserHandle userHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isUserUnlockingOrUnlocked").withParcelable("userHandle", userHandle).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "removeUser", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static boolean removeUser(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("removeUser").withInt("userId", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "canAddMoreUsers", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean canAddMoreUsers() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("canAddMoreUsers").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static List<UserInfoNative> getUsers(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            ArrayList arrayList = new ArrayList();
            for (UserInfo userInfo : ((UserManager) context.getSystemService("user")).getUsers()) {
                arrayList.add(new UserInfoNative(userInfo));
            }
            return arrayList;
        }
        throw new UnSupportedApiVersionException("Not Supported Before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean isUserIDExist(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            UserInfo userInfo = ((UserManager) context.getSystemService("user")).getUserInfo(i);
            return userInfo != null && userInfo.getUserHandle().getIdentifier() == i;
        }
        throw new UnSupportedApiVersionException("Not Supported Before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean canShowMultiUserEntry(Context context) throws UnSupportedApiVersionException {
        return canShowMultiUserEntry(context, context.getUserId());
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean canShowMultiUserEntry(Context context, int i) throws UnSupportedApiVersionException {
        if (!VersionUtils.isR()) {
            if (VersionUtils.isQ()) {
                return ((Boolean) canShowMultiUserEntryCompat(context, i)).booleanValue();
            }
            throw new UnSupportedApiVersionException("Not Supported Before Q");
        } else if (i == 888) {
            return false;
        } else {
            if (SystemProperties.getBoolean("persist.sys.assert.panic.multi.user.entrance", false)) {
                return true;
            }
            return !OplusFeatureConfigManager.getInstance().hasFeature("oplus.software.multiuser_entry_disabled");
        }
    }
}
