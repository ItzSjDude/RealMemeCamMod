package com.oplus.compat.content.pm;

import android.content.pm.ComponentInfo;
import android.content.pm.ResolveInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.content.pm.ResolveInfoWrapper;
/* loaded from: classes.dex */
public class ResolveInfoNative {
    private static final String TAG = "ResolveInfoNative";

    @OplusCompatibleMethod
    private static Object getComponentInfoCompat(ResolveInfo resolveInfo) {
        return null;
    }

    private ResolveInfoNative() {
    }

    @Blocked
    @RequiresApi(api = 27)
    public static ComponentInfo getComponentInfo(@NonNull ResolveInfo resolveInfo) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return resolveInfo.getComponentInfo();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        try {
            if (VersionUtils.isOsVersion11_3()) {
                return ResolveInfoWrapper.getComponentInfo(resolveInfo);
            }
            if (VersionUtils.isQ()) {
                return (ComponentInfo) getComponentInfoCompat(resolveInfo);
            }
            if (VersionUtils.isO_MR1()) {
                return resolveInfo.getComponentInfo();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
