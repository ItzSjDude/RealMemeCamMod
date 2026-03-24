package com.oplus.statistics.util;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class SystemUtil {
    public static boolean isSystemUser(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            UserManager userManager = (UserManager) context.getSystemService(UserManager.class);
            return userManager != null && userManager.isSystemUser();
        }
        return true;
    }
}
