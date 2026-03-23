package com.oplus.compat.content;

import android.os.Bundle;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Call;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class ClipboardManagerNative {
    private static final String COMPONENT_NAME = "android.content.ClipboardManager";
    private static final String KEY_ACTION = "action";
    private static final String KEY_DATA = "clipData";
    private static final String KEY_PACKAGE_NAME = "packagename";
    private static final String KEY_RESULT = "result";

    /* loaded from: classes.dex */
    public interface ClipChangedListenerNative {
        @RequiresApi(api = 30)
        void onPrimaryClipChanged();
    }

    private ClipboardManagerNative() {
    }

    @Permission(authStr = "addPrimaryClipChangedListener", type = "epona")
    @RequiresApi(api = 30)
    public static void addPrimaryClipChangedListener(final ClipChangedListenerNative clipChangedListenerNative, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("addPrimaryClipChangedListener").withString(KEY_PACKAGE_NAME, str).build();
            if (clipChangedListenerNative != null) {
                Epona.newCall(build).asyncExecute(new Call.Callback() { // from class: com.oplus.compat.content.ClipboardManagerNative.1
                    @Override // com.oplus.epona.Call.Callback
                    public void onReceive(Response response) {
                        Bundle bundle = response.getBundle();
                        if (response.isSuccessful() && bundle.getString(ClipboardManagerNative.KEY_ACTION).equals("onSuccess")) {
                            ClipChangedListenerNative.this.onPrimaryClipChanged();
                        }
                    }
                });
                return;
            }
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "removePrimaryClipChangedListener", type = "epona")
    @RequiresApi(api = 30)
    public static boolean removePrimaryClipChangedListener(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("removePrimaryClipChangedListener").withString(KEY_PACKAGE_NAME, str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "getPrimaryClip", type = "epona")
    @RequiresApi(api = 30)
    public static byte[] getPrimaryClip() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getPrimaryClip").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getByteArray(KEY_DATA);
            }
            return null;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }
}
