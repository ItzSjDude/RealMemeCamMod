package com.oplus.compat.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.os.IBinder;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class ActivityNative {

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<IBinder> getActivityToken;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, Activity.class);
        }
    }

    private ActivityNative() {
    }

    @Grey
    @RequiresApi(api = 30)
    public static IBinder getActivityToken(Activity activity) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (IBinder) ReflectInfo.getActivityToken.call(activity, new Object[0]);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 25)
    @System
    public static boolean convertToTranslucent(Activity activity, ActivityOptions activityOptions) throws UnSupportedApiVersionException {
        if (VersionUtils.isN_MR1()) {
            return activity.convertToTranslucent(null, activityOptions);
        }
        throw new UnSupportedApiVersionException("not supported before N_MR1");
    }

    @Grey
    @RequiresApi(api = 25)
    @System
    public static void convertFromTranslucent(Activity activity) throws UnSupportedApiVersionException {
        if (VersionUtils.isN_MR1()) {
            activity.convertFromTranslucent();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before N_MR1");
    }

    @Grey
    @RequiresApi(api = 21)
    public static boolean isResumed(Activity activity) throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            return activity.isResumed();
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }
}
