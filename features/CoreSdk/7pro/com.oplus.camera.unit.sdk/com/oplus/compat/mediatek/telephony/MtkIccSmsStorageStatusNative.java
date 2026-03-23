package com.oplus.compat.mediatek.telephony;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.mediatek.telephony.MtkIccSmsStorageStatusWrapper;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class MtkIccSmsStorageStatusNative {
    private static final int INVALID_RESULT = -1;
    private static final String TAG = "MtkIccSmsStorageStatusNative";
    private Object mMtkIccSmsStorageStatusObj;
    private Object mMtkIccSmsStorageStatusWrapper;

    @OplusCompatibleMethod
    private static Object getTotalCountCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUsedCountCompat(Object obj) {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Integer> getTotalCount;
        public static RefMethod<Integer> getUsedCount;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "com.mediatek.internal.telephony.MtkIccSmsStorageStatus");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MtkIccSmsStorageStatusNative(Object obj) {
        if (VersionUtils.isS()) {
            this.mMtkIccSmsStorageStatusObj = obj;
        } else if (VersionUtils.isQ()) {
            this.mMtkIccSmsStorageStatusWrapper = obj;
        } else if (VersionUtils.isO_MR1()) {
            this.mMtkIccSmsStorageStatusObj = obj;
        } else {
            Log.e(TAG, "Not supported before O: ");
        }
    }

    @Oem
    @RequiresApi(api = 27)
    public int getUsedCount() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getUsedCount.call(this.mMtkIccSmsStorageStatusObj, new Object[0]).intValue();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkIccSmsStorageStatusWrapper) this.mMtkIccSmsStorageStatusWrapper).getUsedCount();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getUsedCountCompat(this.mMtkIccSmsStorageStatusWrapper)).intValue();
        }
        if (VersionUtils.isO_MR1()) {
            return ReflectInfo.getUsedCount.call(this.mMtkIccSmsStorageStatusObj, new Object[0]).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = 27)
    public int getTotalCount() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getTotalCount.call(this.mMtkIccSmsStorageStatusObj, new Object[0]).intValue();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkIccSmsStorageStatusWrapper) this.mMtkIccSmsStorageStatusWrapper).getTotalCount();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getTotalCountCompat(this.mMtkIccSmsStorageStatusWrapper)).intValue();
        }
        if (VersionUtils.isO_MR1()) {
            return ReflectInfo.getTotalCount.call(this.mMtkIccSmsStorageStatusObj, new Object[0]).intValue();
        }
        throw new UnSupportedApiVersionException();
    }
}
