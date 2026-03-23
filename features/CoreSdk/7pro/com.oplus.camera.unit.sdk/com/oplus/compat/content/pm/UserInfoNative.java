package com.oplus.compat.content.pm;

import android.content.pm.UserInfo;
import android.os.UserHandle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.content.pm.UserInfoWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class UserInfoNative {
    private static final String TAG = "UserInfoNative";
    private UserInfo mUserInfo;
    private Object mUserInfoWrapper;

    @OplusCompatibleMethod
    private static Object getIdQCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUserHandleQCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUserInfoQCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isEnabledQCompat(Object obj) {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInnerClass {
        public static RefObject<UserInfo> user;

        private ReflectInnerClass() {
        }

        static {
            RefClass.load(ReflectInnerClass.class, UserInfoWrapper.class);
        }
    }

    @RequiresApi(api = 21)
    public UserInfoNative(UserInfo userInfo) {
        this.mUserInfo = userInfo;
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public UserInfoNative(Object obj) {
        try {
            if (VersionUtils.isOsVersion11_3()) {
                this.mUserInfoWrapper = obj;
                this.mUserInfo = ReflectInnerClass.user.get(this.mUserInfoWrapper);
            } else if (VersionUtils.isQ()) {
                this.mUserInfoWrapper = obj;
                this.mUserInfo = (UserInfo) getUserInfoQCompat(this.mUserInfoWrapper);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    @Grey
    @RequiresApi(api = 21)
    public int getId() throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            if (this.mUserInfo != null) {
                return this.mUserInfo.id;
            }
            return -1;
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 21)
    public UserHandle getUserHandle() throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            if (this.mUserInfo != null) {
                return this.mUserInfo.getUserHandle();
            }
            return null;
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public boolean isEnabled() throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return this.mUserInfo.isEnabled();
        }
        throw new UnSupportedApiVersionException();
    }
}
