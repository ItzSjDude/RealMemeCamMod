package com.oplus.compat.telephony;

import android.content.ContentValues;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class ApnManagerNative {
    private static final String COMPONENT_NAME = "android.telephony.ApnManagerNative";
    private static final String KEY_RESULT = "result";
    private static final String TAG = "ApnManagerNative";

    private ApnManagerNative() {
    }

    @Permission(authStr = "insertApn", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static Uri insertApn(Uri uri, ContentValues contentValues) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("insertApn").withParcelable("uri", uri).withParcelable("contentValues", contentValues).build()).execute();
            if (execute.isSuccessful()) {
                return (Uri) execute.getBundle().getParcelable(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Permission(authStr = "queryApn", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static int queryApn(Uri uri, String[] strArr, String str, String[] strArr2, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("queryApn").withParcelable("uri", uri).withStringArray("strings", strArr).withString("s", str).withStringArray("strings1", strArr2).withString("s1", str2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return -1;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Permission(authStr = "updateApn", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static int updateApn(Uri uri, ContentValues contentValues, String str, String[] strArr) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("updateApn").withParcelable("uri", uri).withParcelable("contentValues", contentValues).withString("s", str).withStringArray("strings", strArr).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return -1;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Permission(authStr = "deleteApn", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static int deleteApn(Uri uri, String str, String[] strArr) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("deleteApn").withParcelable("uri", uri).withString("s", str).withStringArray("strings", strArr).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return 0;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}
