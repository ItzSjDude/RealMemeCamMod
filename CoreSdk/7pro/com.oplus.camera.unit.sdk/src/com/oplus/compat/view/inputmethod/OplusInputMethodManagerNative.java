package com.oplus.compat.view.inputmethod;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class OplusInputMethodManagerNative {
    private static final String COMPONENT_NAME = "com.oplus.view.inputmethod.OplusInputMethodManager";
    private static final String KEY_CLASS_NAME = "classname";
    private static final String KEY_IS_REGISTER = "isregister";
    private static final String KEY_PACKAGE_NAME = "packagename";
    private static final String KEY_RESULT = "result";

    private OplusInputMethodManagerNative() {
    }

    @Permission(authStr = "registerInputMethodSynergyService", type = "epona")
    @RequiresApi(api = 30)
    public static boolean registerInputMethodSynergyService(String str, String str2, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isOsVersion11_3()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("registerInputMethodSynergyService").withString(KEY_PACKAGE_NAME, str).withString(KEY_CLASS_NAME, str2).withBoolean(KEY_IS_REGISTER, z).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("unsupported before OS 11.3");
    }

    @Permission(authStr = "commitTextByOtherSide", type = "epona")
    @RequiresApi(api = 30)
    public static boolean commitTextByOtherSide() throws UnSupportedApiVersionException {
        if (VersionUtils.isOsVersion11_3()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("commitTextByOtherSide").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("unsupported before OS 11.3");
    }
}
