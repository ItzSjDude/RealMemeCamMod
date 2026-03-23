package com.oplus.compat.view.accessibility;

import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.view.accessibility.AccessibilityNodeInfoWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class AccessibilityNodeInfoNative {
    @OplusCompatibleMethod
    private static Object getRealClassNameCompat(AccessibilityNodeInfo accessibilityNodeInfo) {
        return null;
    }

    private AccessibilityNodeInfoNative() {
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static CharSequence getRealClassName(AccessibilityNodeInfo accessibilityNodeInfo) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            if (accessibilityNodeInfo == null || !accessibilityNodeInfo.hasExtras()) {
                return null;
            }
            return accessibilityNodeInfo.getExtras().getCharSequence("realClassName");
        } else if (VersionUtils.isOsVersion11_3()) {
            return AccessibilityNodeInfoWrapper.getRealClassName(accessibilityNodeInfo);
        } else {
            if (VersionUtils.isQ()) {
                return (CharSequence) getRealClassNameCompat(accessibilityNodeInfo);
            }
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }
}
