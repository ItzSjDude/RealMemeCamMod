package com.oplus.inner.os;

import android.os.UserHandle;
import android.util.Log;

/* loaded from: classes.dex */
public class UserHandleWrapper {
    public static final String TAG = "UserHandleWrapper";
    public static final int USER_ALL = -1;
    public static final int USER_CURRENT = -2;
    public static final int USER_SYSTEM = 0;
    public static final UserHandle OWNER = UserHandle.OWNER;
    public static final UserHandle CURRENT = UserHandle.CURRENT;

    public static int myUserId() {
        try {
            int result = UserHandle.myUserId();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getIdentifier(UserHandle userHandle) {
        try {
            int result = userHandle.getIdentifier();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getUserId(int uid) {
        try {
            int result = UserHandle.getUserId(uid);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static UserHandle createUserHandle(int h) {
        return new UserHandle(h);
    }
}
