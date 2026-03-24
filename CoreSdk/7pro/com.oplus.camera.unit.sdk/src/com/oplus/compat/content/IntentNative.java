package com.oplus.compat.content;

import android.content.Intent;
import android.content.OplusBaseIntent;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.util.OplusTypeCastingHelperNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.content.IntentWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class IntentNative {
    @Permission(authStr = "Intent", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    @System
    public static String ACTION_CALL_PRIVILEGED = null;
    private static final String COMPONENT_NAME = "android.content.Intent";
    private static final String CONSTANT_ACTION_CALL_PRIVILEGED = "ACTION_CALL_PRIVILEGED";
    private static final String CONSTANT_EXTRA_USER_ID = "EXTRA_USER_ID";
    private static final String CONSTANT_FLAG_RECEIVER_INCLUDE_BACKGROUND = "FLAG_RECEIVER_INCLUDE_BACKGROUND";
    @Permission(authStr = "Intent", type = "epona")
    @Blocked
    public static String EXTRA_USER_ID = null;
    @Permission(authStr = "Intent", type = "epona")
    @Blocked
    public static int FLAG_RECEIVER_INCLUDE_BACKGROUND = 0;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int OPLUS_FLAG_MUTIL_APP = 0;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int OPLUS_FLAG_MUTIL_CHOOSER = 0;
    private static final String TAG = "IntentNative";

    @OplusCompatibleMethod
    private static Object getCallingUidForCompat(Intent intent) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getIsFromGameSpaceForCompat(Intent intent) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusFlagsForCompat(Intent intent) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusUserIdForCompat(Intent intent) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initActionCallPrivilegeda() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initOplusFlagMutilApp() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initOplusFlagMutilChooser() {
        return null;
    }

    @OplusCompatibleMethod
    private static void setIsFromGameSpaceForCompat(Intent intent, int i) {
    }

    @OplusCompatibleMethod
    private static void setOplusFlagsForCompat(Intent intent, int i) {
    }

    @OplusCompatibleMethod
    private static void setOplusUserIdForCompat(Intent intent, int i) {
    }

    private IntentNative() {
    }

    static {
        try {
            if (VersionUtils.isS()) {
                OPLUS_FLAG_MUTIL_APP = 1024;
                OPLUS_FLAG_MUTIL_CHOOSER = 512;
                EXTRA_USER_ID = "android.intent.extra.USER_ID";
                FLAG_RECEIVER_INCLUDE_BACKGROUND = 16777216;
                ACTION_CALL_PRIVILEGED = "android.intent.action.CALL_PRIVILEGED";
            } else if (VersionUtils.isR()) {
                OPLUS_FLAG_MUTIL_APP = 1024;
                OPLUS_FLAG_MUTIL_CHOOSER = 512;
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).build()).execute();
                if (execute.isSuccessful()) {
                    EXTRA_USER_ID = execute.getBundle().getString(CONSTANT_EXTRA_USER_ID);
                    FLAG_RECEIVER_INCLUDE_BACKGROUND = execute.getBundle().getInt(CONSTANT_FLAG_RECEIVER_INCLUDE_BACKGROUND);
                    ACTION_CALL_PRIVILEGED = execute.getBundle().getString(CONSTANT_ACTION_CALL_PRIVILEGED);
                } else {
                    Log.e(TAG, "Epona Communication failed, static initializer failed.");
                }
            } else if (VersionUtils.isQ()) {
                OPLUS_FLAG_MUTIL_APP = ((Integer) initOplusFlagMutilApp()).intValue();
                OPLUS_FLAG_MUTIL_CHOOSER = ((Integer) initOplusFlagMutilChooser()).intValue();
                ACTION_CALL_PRIVILEGED = (String) initActionCallPrivilegeda();
                FLAG_RECEIVER_INCLUDE_BACKGROUND = 16777216;
            } else if (VersionUtils.isP()) {
                FLAG_RECEIVER_INCLUDE_BACKGROUND = 16777216;
            } else if (VersionUtils.isN()) {
                ACTION_CALL_PRIVILEGED = "android.intent.action.CALL_PRIVILEGED";
            } else {
                Log.e(TAG, "Not supported before N");
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getOplusUserId(@NonNull Intent intent) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseIntent oplusBaseIntent = (OplusBaseIntent) OplusTypeCastingHelperNative.typeCasting(OplusBaseIntent.class, intent);
            if (oplusBaseIntent != null) {
                return oplusBaseIntent.getOplusUserId();
            }
            return -1;
        } else if (VersionUtils.isOsVersion11_3()) {
            return IntentWrapper.getOplusUserId(intent);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getOplusUserIdForCompat(intent)).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setOplusUserId(@NonNull Intent intent, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseIntent oplusBaseIntent = (OplusBaseIntent) OplusTypeCastingHelperNative.typeCasting(OplusBaseIntent.class, intent);
            if (oplusBaseIntent != null) {
                oplusBaseIntent.setOplusUserId(i);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            IntentWrapper.setOplusUserId(intent, i);
        } else if (VersionUtils.isQ()) {
            setOplusUserIdForCompat(intent, i);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getIsFromGameSpace(@NonNull Intent intent) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseIntent oplusBaseIntent = (OplusBaseIntent) OplusTypeCastingHelperNative.typeCasting(OplusBaseIntent.class, intent);
            if (oplusBaseIntent != null) {
                return oplusBaseIntent.getIsFromGameSpace();
            }
            return -1;
        } else if (VersionUtils.isOsVersion11_3()) {
            return IntentWrapper.getIsFromGameSpace(intent);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getIsFromGameSpaceForCompat(intent)).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setIsFromGameSpace(@NonNull Intent intent, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseIntent oplusBaseIntent = (OplusBaseIntent) OplusTypeCastingHelperNative.typeCasting(OplusBaseIntent.class, intent);
            if (oplusBaseIntent != null) {
                oplusBaseIntent.setIsFromGameSpace(i);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            IntentWrapper.setIsFromGameSpace(intent, i);
        } else if (VersionUtils.isQ()) {
            setIsFromGameSpaceForCompat(intent, i);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setOplusFlags(@NonNull Intent intent, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseIntent oplusBaseIntent = (OplusBaseIntent) OplusTypeCastingHelperNative.typeCasting(OplusBaseIntent.class, intent);
            if (oplusBaseIntent != null) {
                oplusBaseIntent.setOplusFlags(i);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            IntentWrapper.setOplusFlags(intent, i);
        } else if (VersionUtils.isQ()) {
            setOplusFlagsForCompat(intent, i);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getOplusFlags(@NonNull Intent intent) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseIntent oplusBaseIntent = (OplusBaseIntent) OplusTypeCastingHelperNative.typeCasting(OplusBaseIntent.class, intent);
            if (oplusBaseIntent != null) {
                return oplusBaseIntent.getOplusFlags();
            }
            return -1;
        } else if (VersionUtils.isOsVersion11_3()) {
            return IntentWrapper.getOplusFlags(intent);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getOplusFlagsForCompat(intent)).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getCallingUid(@NonNull Intent intent) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                OplusBaseIntent oplusBaseIntent = (OplusBaseIntent) OplusTypeCastingHelperNative.typeCasting(OplusBaseIntent.class, intent);
                if (oplusBaseIntent != null) {
                    return oplusBaseIntent.getCallingUid();
                }
                return -1;
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return IntentWrapper.getCallingUid(intent);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getCallingUidForCompat(intent)).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }
}
