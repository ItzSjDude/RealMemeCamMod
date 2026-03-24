package com.oplus.compat.hardware.input;

import android.view.InputEvent;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class InputManagerNative {
    private static final String COMPONENT_NAME = "android.hardware.input.InputManager";
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int INJECT_INPUT_EVENT_MODE_ASYNC = 0;
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH = 0;
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT = 0;
    private static final String KEY_DISPLAY_ID = "displayId";
    private static final String KEY_EVENT = "event";
    private static final String KEY_MODE = "mode";
    private static final String KEY_RESULT = "result";
    private static final String TAG = "InputManagerNative";

    @OplusCompatibleMethod
    private static Object injectInputEventQCompat(InputEvent inputEvent, int i) {
        return null;
    }

    private InputManagerNative() {
    }

    static {
        if (VersionUtils.isQ()) {
            INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH = 2;
            INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT = 1;
            INJECT_INPUT_EVENT_MODE_ASYNC = 0;
        }
    }

    @Permission(authStr = "injectInputEvent", type = "epona")
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean injectInputEvent(InputEvent inputEvent, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("injectInputEvent").withParcelable(KEY_EVENT, inputEvent).withInt(KEY_MODE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        } else if (VersionUtils.isQ()) {
            return ((Boolean) injectInputEventQCompat(inputEvent, i)).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "injectInputEventById", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static boolean injectInputEventById(InputEvent inputEvent, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("injectInputEventById").withParcelable(KEY_EVENT, inputEvent).withInt(KEY_MODE, i).withInt(KEY_DISPLAY_ID, i2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
