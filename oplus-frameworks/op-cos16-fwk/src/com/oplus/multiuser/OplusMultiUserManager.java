package com.oplus.multiuser;

import android.content.Context;
import android.util.Log;

public class OplusMultiUserManager {
    private static final String TAG = "OplusMultiUserManager";
    private static volatile OplusMultiUserManager sInstance;

    public OplusMultiUserManager() {
    }

    public static OplusMultiUserManager getInstance() {
        if (sInstance == null) {
            synchronized (OplusMultiUserManager.class) {
                if (sInstance == null) {
                    sInstance = new OplusMultiUserManager();
                }
            }
        }
        return sInstance;
    }

    public int getMultiSystemUserId() {
        return -10000; // USER_NULL or equivalent
    }

    public boolean hasMultiSystemUser() {
        return false;
    }

    public static boolean isStudyUser(Context context, int userId) {
        return false;
    }
}
