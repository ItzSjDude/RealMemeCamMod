package com.oppo.inner.os;

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
import com.oplus.inner.os.UserManagerWrapper;

public class UserManagerWrapper {
    public static List<UserInfoWrapper> getUsers(Context context) {
        return UserManagerWrapper.getUsers(context);
    }

    public static boolean isUserIDExist(Context context, int userID) {
        return UserManagerWrapper.isUserIDExist(context, userID);
    }

    public static UserInfoWrapper createUser(UserManager userManager, String name, int flag) {
        return UserManagerWrapper.createUser(userManager, name, flag);
    }

    public static UserInfoWrapper getUserInfo(UserManager userManager, int userHandle) {
        return UserManagerWrapper.getUserInfo(userManager, userHandle);
    }

    public static boolean isUserUnlockingOrUnlocked(Context context, UserHandle user) {
        return UserManagerWrapper.isUserUnlockingOrUnlocked(context, user);
    }

    public static boolean canShowMultiUserEntry(Context context) {
        return UserManagerWrapper.canShowMultiUserEntry(context);
    }

    public static boolean canShowMultiUserEntry(Context context, int userId) {
        return UserManagerWrapper.canShowMultiUserEntry(context, userId);
    }

}