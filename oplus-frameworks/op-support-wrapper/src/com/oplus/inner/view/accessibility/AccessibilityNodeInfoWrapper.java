package com.oplus.inner.view.accessibility;

import android.util.Log;
import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public class AccessibilityNodeInfoWrapper {
    private static final String TAG = "AccessibilityNodeInfoWrapper";

    private AccessibilityNodeInfoWrapper() {
    }

    public static CharSequence getRealClassName(AccessibilityNodeInfo nodeInfo) {
        try {
            if (!nodeInfo.hasExtras()) {
                return null;
            }
            CharSequence result = nodeInfo.getExtras().getCharSequence("realClassName");
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}
