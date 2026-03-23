package com.oplus.compat.utils.util;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class ActionFinder {
    private static final String COMPONENT_NAME = getComponentName();
    private static final String RESULT = "result";

    @OplusCompatibleMethod
    private static Object getComponentNameForCompat() {
        return null;
    }

    private ActionFinder() {
    }

    private static String getComponentName() {
        return VersionUtils.isOsVersion11_3() ? "com.oplus.compat.utils.ActionFinder" : (String) getComponentNameForCompat();
    }

    @Permission(authStr = "findAction", type = "epona")
    @RequiresApi(api = 30)
    public static boolean findAction(String str, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("findAction").withString("componentName", str).withString("actionName", str2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
