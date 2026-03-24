package com.oplus.compat.hardware.face;

import android.content.Context;
import android.hardware.face.FaceManager;
import android.hardware.face.OplusFaceManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class FaceManagerNative {
    private static final String ACTION_HAS_ENROLLED_TEMPLATES = "hasEnrolledTemplates";
    private static final String COMPONENT_NAME = "android.hardware.face.FaceManager";
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static final int FACE_ERROR_CAMERA_UNAVAILABLE = 0;
    private static final String HAS_ENROLLED_TEMPLATES_RESULT = "has_enrolled_templates";
    private static final String TAG = "FaceManagerNative";

    private FaceManagerNative() {
    }

    @Permission(authStr = ACTION_HAS_ENROLLED_TEMPLATES, type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean hasEnrolledTemplates() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_HAS_ENROLLED_TEMPLATES).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(HAS_ENROLLED_TEMPLATES_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getFailedAttempts(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return new OplusFaceManager(context).getFailedAttempts();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isQ()) {
            try {
                FaceManager faceManager = (FaceManager) context.getSystemService("face");
                return ((Integer) faceManager.getClass().getMethod("getFailedAttempts", new Class[0]).invoke(faceManager, new Object[0])).intValue();
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
                return -1;
            }
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long getLockoutAttemptDeadline(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return new OplusFaceManager(context).getLockoutAttemptDeadline(i);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isQ()) {
            try {
                FaceManager faceManager = (FaceManager) context.getSystemService("face");
                return ((Long) faceManager.getClass().getMethod("getLockoutAttemptDeadline", new Class[0]).invoke(faceManager, new Object[0])).longValue();
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
                return -1L;
            }
        } else {
            throw new UnSupportedApiVersionException("not support before Q");
        }
    }
}
