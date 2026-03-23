package com.oplus.epona.interceptor;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import com.oplus.epona.Call;
import com.oplus.epona.Epona;
import com.oplus.epona.Interceptor;
import com.oplus.epona.Response;
import com.oplus.epona.internal.AppFinder;
import com.oplus.epona.internal.EponaProvider;
import com.oplus.epona.utils.Logger;
/* loaded from: classes.dex */
public class LaunchComponentInterceptor implements Interceptor {
    private static final String PROVIDER_SCHEME = "content://";
    private static final String TAG = "LaunchComponentInterceptor";

    @Override // com.oplus.epona.Interceptor
    public void intercept(Interceptor.Chain chain) {
        String componentName = chain.request().getComponentName();
        if (isComponentRegistered(componentName)) {
            String callingPackageName = getCallingPackageName();
            Logger.d(TAG, "RemoteTransfer with componentName = %s found. package = " + callingPackageName + " Proceed", componentName);
            chain.proceed();
            return;
        }
        Call.Callback callback = chain.callback();
        ApplicationInfo findApplicationInfo = new AppFinder().findApplicationInfo(componentName);
        if (findApplicationInfo == null) {
            Logger.d(TAG, "find component:%s failed", componentName);
            callback.onReceive(Response.defaultErrorResponse());
        } else if (launchComponent(getTargetUri(findApplicationInfo.packageName))) {
            chain.proceed();
        } else {
            Logger.d(TAG, "launch component:%s failed", componentName);
            callback.onReceive(Response.defaultErrorResponse());
        }
    }

    private boolean isComponentRegistered(String str) {
        return Epona.getTransferController().fetch(str) != null;
    }

    public boolean launchComponent(Uri uri) {
        Context context = Epona.getContext();
        if (context == null) {
            return false;
        }
        try {
            return context.getContentResolver().call(uri, EponaProvider.LAUNCH_METHOD, (String) null, (Bundle) null).getBoolean(EponaProvider.KEY_LAUNCH_SUCCESS);
        } catch (Exception unused) {
            return false;
        }
    }

    private Uri getTargetUri(String str) {
        return Uri.parse(PROVIDER_SCHEME + str + ".oplus.epona");
    }

    private String getCallingPackageName() {
        Context context = Epona.getContext();
        return context == null ? "" : context.getPackageName();
    }
}
