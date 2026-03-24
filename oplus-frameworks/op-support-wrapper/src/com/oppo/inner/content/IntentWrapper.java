package com.oppo.inner.content;

import android.content.Intent;
import android.content.OplusBaseIntent;
import android.util.Log;
import com.oplus.util.OplusTypeCastingHelper;

/* loaded from: classes.dex */
public class IntentWrapper {
    public static final String ACTION_CALL_PRIVILEGED = "android.intent.action.CALL_PRIVILEGED";
    public static final String ACTION_MEDIA_SCANNER_SCAN_ALL = "oplus.intent.action.MEDIA_SCAN_ALL";
    public static final String ACTION_PRE_MEDIA_SHARED = "android.intent.action.MEDIA_PRE_SHARED";
    public static final String ACTION_SKIN_CHANGED = "oplus.intent.action.SKIN_CHANGED";
    public static final int FLAG_RECEIVER_INCLUDE_BACKGROUND = 16777216;
    public static final int OPLUS_FLAG_MUTIL_APP = 1024;
    public static final int OPLUS_FLAG_MUTIL_CHOOSER = 512;
    private static final String TAG = "IntentWrapper";

    private IntentWrapper() {
    }

    public static int getOplusUserId(Intent o) {
        try {
            OplusBaseIntent baseIntent = typeCasting(o);
            if (baseIntent == null) {
                return -1;
            }
            int result = baseIntent.getOplusUserId();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static void setOplusUserId(Intent o, int oplusUserId) {
        try {
            OplusBaseIntent baseIntent = typeCasting(o);
            if (baseIntent != null) {
                baseIntent.setOplusUserId(oplusUserId);
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static int getIsFromGameSpace(Intent o) {
        try {
            OplusBaseIntent baseIntent = typeCasting(o);
            if (baseIntent == null) {
                return -1;
            }
            int result = baseIntent.getIsFromGameSpace();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static void setIsFromGameSpace(Intent o, int isFromGameSpace) {
        try {
            OplusBaseIntent baseIntent = typeCasting(o);
            if (baseIntent != null) {
                baseIntent.setIsFromGameSpace(isFromGameSpace);
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static void setOplusFlags(Intent o, int flag) {
        try {
            OplusBaseIntent baseIntent = typeCasting(o);
            if (baseIntent != null) {
                baseIntent.setOplusFlags(flag);
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static int getOplusFlags(Intent o) {
        try {
            OplusBaseIntent baseIntent = typeCasting(o);
            if (baseIntent == null) {
                return -1;
            }
            int result = baseIntent.getOplusFlags();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getCallingUid(Intent o) {
        try {
            OplusBaseIntent baseIntent = typeCasting(o);
            if (baseIntent == null) {
                return -1;
            }
            int result = baseIntent.getCallingUid();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    private static OplusBaseIntent typeCasting(Intent i) {
        OplusBaseIntent baseIntent = (OplusBaseIntent) OplusTypeCastingHelper.typeCasting(OplusBaseIntent.class, i);
        return baseIntent;
    }
}
