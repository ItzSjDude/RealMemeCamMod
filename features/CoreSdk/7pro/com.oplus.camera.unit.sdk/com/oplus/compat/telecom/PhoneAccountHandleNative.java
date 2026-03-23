package com.oplus.compat.telecom;

import android.telecom.PhoneAccountHandle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.telecom.PhoneAccountHandleWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
/* loaded from: classes.dex */
public class PhoneAccountHandleNative {
    @OplusCompatibleMethod
    private static Object getSlotIdCompat(PhoneAccountHandle phoneAccountHandle) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getSubIdCompat(PhoneAccountHandle phoneAccountHandle) {
        return null;
    }

    private PhoneAccountHandleNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefInt mSlotId;
        public static RefInt mSubId;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, PhoneAccountHandle.class);
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getSubId(@NonNull PhoneAccountHandle phoneAccountHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.mSubId.get(phoneAccountHandle);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return PhoneAccountHandleWrapper.getSubId(phoneAccountHandle);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getSubIdCompat(phoneAccountHandle)).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getSlotId(@NonNull PhoneAccountHandle phoneAccountHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.mSlotId.get(phoneAccountHandle);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return PhoneAccountHandleWrapper.getSlotId(phoneAccountHandle);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getSlotIdCompat(phoneAccountHandle)).intValue();
        }
        throw new UnSupportedApiVersionException();
    }
}
