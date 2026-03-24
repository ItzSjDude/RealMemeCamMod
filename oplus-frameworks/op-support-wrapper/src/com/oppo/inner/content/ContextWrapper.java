package com.oppo.inner.content;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.UserHandle;
import android.util.Log;
import android.view.Display;
import java.io.File;
import com.oplus.inner.content.ContextWrapper;

public class ContextWrapper {
    public static void startActivityAsUser(Context context, Intent intent, UserHandle user) {
        ContextWrapper.startActivityAsUser(context, intent, user);
    }

    public static void startActivityAsUser(Context context, Intent intent, Bundle options, UserHandle userId) {
        ContextWrapper.startActivityAsUser(context, intent, options, userId);
    }

    public static Display getDisplay(Context context) {
        return ContextWrapper.getDisplay(context);
    }

    public static Context createCredentialProtectedStorageContext(Context context) {
        return ContextWrapper.createCredentialProtectedStorageContext(context);
    }

    public static File getSharedPreferencesPath(Context context, String name) {
        return ContextWrapper.getSharedPreferencesPath(context, name);
    }

}