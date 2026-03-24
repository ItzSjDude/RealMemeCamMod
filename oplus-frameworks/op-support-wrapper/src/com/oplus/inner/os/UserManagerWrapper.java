package com.oplus.inner.os;

import android.content.Context;
import android.content.pm.UserInfo;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;
import com.oplus.content.OplusFeatureConfigManager;
import com.oplus.inner.content.pm.UserInfoWrapper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class UserManagerWrapper {
    private static final String TAG = "UserManagerWrapper";

    private UserManagerWrapper() {
    }

    public static List<UserInfoWrapper> getUsers(Context context) {
        UserManager userMgr = (UserManager) context.getSystemService("user");
        try {
            List<UserInfoWrapper> list = new ArrayList<>();
            for (UserInfo user : userMgr.getUsers()) {
                list.add(new UserInfoWrapper(user));
            }
            return list;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static boolean isUserIDExist(Context context, int userID) {
        UserManager mUserManager = (UserManager) context.getSystemService("user");
        UserInfo mUserInfo = mUserManager.getUserInfo(userID);
        if (mUserInfo != null && mUserInfo.getUserHandle().getIdentifier() == userID) {
            return true;
        }
        return false;
    }

    public static UserInfoWrapper createUser(UserManager userManager, String name, int flag) {
        UserInfo userInfo = userManager.createUser(name, flag);
        if (userInfo != null) {
            return new UserInfoWrapper(userInfo);
        }
        return null;
    }

    public static UserInfoWrapper getUserInfo(UserManager userManager, int userHandle) {
        try {
            UserInfo userInfo = userManager.getUserInfo(userHandle);
            if (userInfo != null) {
                return new UserInfoWrapper(userInfo);
            }
            return null;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static boolean isUserUnlockingOrUnlocked(Context context, UserHandle user) {
        UserManager mUserManager = (UserManager) context.getSystemService("user");
        return mUserManager.isUserUnlockingOrUnlocked(user);
    }

    public static boolean canShowMultiUserEntry(Context context) throws IllegalArgumentException {
        if (context == null) {
            throw new IllegalArgumentException("Params error");
        }
        int userId = context.getUserId();
        return canShowMultiUserEntry(context, userId);
    }

    public static boolean canShowMultiUserEntry(Context context, int userId) throws IllegalArgumentException {
        if (context == null) {
            throw new IllegalArgumentException("Params error");
        }
        if (userId == 888) {
            return false;
        }
        if (SystemProperties.getBoolean("persist.sys.assert.panic.multi.user.entrance", false)) {
            return true;
        }
        try {
            boolean ret = true ^ OplusFeatureConfigManager.getInstacne().hasFeature("oplus.software.multiuser_entry_disabled");
            return ret;
        } catch (Exception e) {
            Log.e(TAG, "canShowMultiUserEntry", e);
            return true;
        }
    }
}
