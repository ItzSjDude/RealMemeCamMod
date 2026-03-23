package com.oplus.compat.content.pm;

import android.content.ComponentName;
import android.content.pm.ComponentInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.content.pm.ComponentInfoWrapper;
/* loaded from: classes.dex */
public class ComponentInfoNative {
    private static final String TAG = "ComponentInfoNative";

    @OplusCompatibleMethod
    private static Object getComponentNameForCompat(ComponentInfo componentInfo) {
        return null;
    }

    private ComponentInfoNative() {
    }

    @Blocked
    @RequiresApi(api = 27)
    public static ComponentName getComponentName(@NonNull ComponentInfo componentInfo) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return componentInfo.getComponentName();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        try {
            if (VersionUtils.isOsVersion11_3()) {
                return ComponentInfoWrapper.getComponentName(componentInfo);
            }
            if (VersionUtils.isQ()) {
                return (ComponentName) getComponentNameForCompat(componentInfo);
            }
            if (VersionUtils.isO_MR1()) {
                return componentInfo.getComponentName();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
