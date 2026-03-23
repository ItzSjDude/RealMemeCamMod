package com.oplus.compat.media.projection;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class MediaProjectionNative {
    private static final String ACTION_NAME = "createProjection";
    private static final String COMPONENT_NAME = "android.media.projection.IMediaProjection";
    private static final String KEY_PACKAGENAME = "PACKAGE_NAME";
    private static final String KEY_UID = "uid";
    private static final String RESULT = "result";
    private static final String TAG = "MediaProjectionNative";

    @Permission(authStr = ACTION_NAME, type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static Intent createProjection(String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_NAME).withString(KEY_PACKAGENAME, str).withInt(KEY_UID, i).build()).execute();
            if (execute.isSuccessful()) {
                Bundle bundle = execute.getBundle();
                Intent intent = new Intent();
                intent.putExtra("android.media.projection.extra.EXTRA_MEDIA_PROJECTION", bundle.getIBinder(RESULT));
                return intent;
            }
            return null;
        }
        throw new UnSupportedApiVersionException();
    }
}
