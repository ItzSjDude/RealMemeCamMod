package com.oplus.compat.miragewindow;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class OplusMirageWindowManagerNative {
    private static final String APPEND_PROTECTION_LIST = "append";
    private static final String COMPONENT_NAME = "com.oplus.miragewindow.OplusMirageWindowManager";
    private static final String FLAG = "flag";
    public static final int FLAG_NONE = 0;
    public static final int FLAG_PRIVACY_PROTECTION = 16;
    private static final String OPTION = "option";
    private static final String PROTECTION_LIST = "protectionList";
    private static final String RESULT = "result";
    private static final String TAG = "OplusMirageWindowManagerNative";

    @Permission(authStr = "updateMirageWindowCastFlag", type = "epona")
    @RequiresApi(api = 30)
    public static boolean updateMirageWindowCastFlag(int i, Bundle bundle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("updateMirageWindowCastFlag").withInt(FLAG, i).withParcelable(OPTION, bundle).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "updatePrivacyProtectionList", type = "epona")
    @SuppressLint({"LongLogTag"})
    @RequiresApi(api = 30)
    public static boolean updatePrivacyProtectionList(List<String> list, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("updatePrivacyProtectionList").withStringArrayList(PROTECTION_LIST, (ArrayList) list).withBoolean(APPEND_PROTECTION_LIST, z).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
