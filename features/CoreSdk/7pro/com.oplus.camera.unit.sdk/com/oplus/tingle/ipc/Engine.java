package com.oplus.tingle.ipc;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import com.oplus.tingle.Constants;
import com.oplus.tingle.ipc.cursor.ProviderCursor;
import com.oplus.tingle.ipc.utils.Logger;
/* loaded from: classes.dex */
public class Engine {
    private static final String TAG = "Engine";

    public static void launch(Context context) {
        if (context.getApplicationInfo().packageName.equals(Constants.getAppPlatformPackageName())) {
            return;
        }
        Slave.attach(context);
    }

    public static IBinder getMasterIBinder(Context context) {
        IBinder masterIBinderQuery = getMasterIBinderQuery(context);
        return masterIBinderQuery == null ? getMasterIBinderCall(context) : masterIBinderQuery;
    }

    private static IBinder getMasterIBinderQuery(Context context) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Cursor query = contentResolver.query(Uri.parse("content://" + Constants.getMasterProviderUri()), null, null, null);
            if (query == null) {
                Logger.e(TAG, "Get query cursor null.", new Object[0]);
                if (query != null) {
                    query.close();
                }
                return null;
            }
            IBinder stripBinder = ProviderCursor.stripBinder(query);
            if (query != null) {
                query.close();
            }
            return stripBinder;
        } catch (Exception e) {
            Logger.e(TAG, "Close cursor failed : " + e.toString(), new Object[0]);
            return null;
        }
    }

    private static IBinder getMasterIBinderCall(Context context) {
        Bundle call = context.getContentResolver().call(Constants.getMasterProviderUri(), Constants.METHOD_SEND_BINDER, (String) null, (Bundle) null);
        if (call != null) {
            return call.getBinder(Constants.getExtraBinder());
        }
        Logger.e(TAG, "Get Master IBinder from provider call is null", new Object[0]);
        return null;
    }
}
