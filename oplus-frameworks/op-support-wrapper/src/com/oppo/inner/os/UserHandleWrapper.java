package com.oppo.inner.os;

import android.os.UserHandle;
import android.util.Log;
import com.oplus.inner.os.UserHandleWrapper;

public class UserHandleWrapper {
    public static int myUserId() {
        return UserHandleWrapper.myUserId();
    }

    public static int getIdentifier(UserHandle userHandle) {
        return UserHandleWrapper.getIdentifier(userHandle);
    }

    public static int getUserId(int uid) {
        return UserHandleWrapper.getUserId(uid);
    }

    public static UserHandle createUserHandle(int h) {
        return UserHandleWrapper.createUserHandle(h);
    }

}