package com.oplus.compat.os;

import android.os.UserHandle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class UserHandleNative {
    private static final String COMPONENT_NAME = "android.os.UserHandle";
    @Grey
    @RequiresApi(api = 21)
    public static UserHandle CURRENT = null;
    @Grey
    @RequiresApi(api = 21)
    public static UserHandle OWNER = null;
    @Grey
    @RequiresApi(api = 30)
    public static UserHandle SYSTEM = null;
    private static final String TAG = "UserHandleNative";
    @Grey
    @RequiresApi(api = 28)
    public static int USER_ALL;
    @Grey
    @RequiresApi(api = 21)
    public static int USER_CURRENT;
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static int USER_SYSTEM;

    @OplusCompatibleMethod
    private static Object getCurrentQCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getIdentifierQCompat(UserHandle userHandle) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOwenrQCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUserAllQCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUserCurrentQCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUserSystemQCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object myUserIdQCompat() {
        return null;
    }

    private UserHandleNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefObject<UserHandle> OWNER;
        private static RefObject<UserHandle> SYSTEM;
        private static RefMethod<Integer> getIdentifier;
        private static RefMethod<Integer> myUserId;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, UserHandle.class);
        }
    }

    static {
        if (VersionUtils.isR()) {
            SYSTEM = (UserHandle) ReflectInfo.SYSTEM.get(null);
            OWNER = (UserHandle) ReflectInfo.OWNER.get(null);
            USER_CURRENT = -2;
            USER_ALL = -1;
            CURRENT = UserHandle.CURRENT;
            USER_SYSTEM = 0;
        } else if (VersionUtils.isQ()) {
            OWNER = (UserHandle) getOwenrQCompat();
            USER_CURRENT = ((Integer) getUserCurrentQCompat()).intValue();
            USER_ALL = ((Integer) getUserAllQCompat()).intValue();
            CURRENT = (UserHandle) getCurrentQCompat();
            USER_SYSTEM = ((Integer) getUserSystemQCompat()).intValue();
        } else if (VersionUtils.isL()) {
            if (VersionUtils.isP()) {
                USER_ALL = -1;
            }
            if (VersionUtils.isN()) {
                USER_SYSTEM = 0;
            }
            USER_CURRENT = -2;
            CURRENT = UserHandle.CURRENT;
            OWNER = UserHandle.OWNER;
        } else {
            Log.e(TAG, "not supported before R");
        }
    }

    @Permission(authStr = "getAppId", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static int getAppId(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getAppId").withInt("uid", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt("appId");
            }
            Log.e(TAG, execute.getMessage());
            return 0;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "getUid", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static int getUid(int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getUid").withInt("userId", i).withInt("appId", i2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt("uid");
            }
            Log.e(TAG, execute.getMessage());
            return 0;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Grey
    @RequiresApi(api = 21)
    public static int myUserId() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Integer) ReflectInfo.myUserId.call(null, new Object[0])).intValue();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) myUserIdQCompat()).intValue();
        }
        if (VersionUtils.isL()) {
            return UserHandle.myUserId();
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 28)
    public static int getIdentifier(UserHandle userHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Integer) ReflectInfo.getIdentifier.call(userHandle, new Object[0])).intValue();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getIdentifierQCompat(userHandle)).intValue();
        }
        if (VersionUtils.isP()) {
            return userHandle.getIdentifier();
        }
        throw new UnSupportedApiVersionException("not supported before P");
    }

    @Grey
    @RequiresApi(api = 28)
    public static int getUserId(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            return UserHandle.getUserId(i);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 28)
    public static UserHandle createUserHandle(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            return new UserHandle(i);
        }
        throw new UnSupportedApiVersionException();
    }
}
