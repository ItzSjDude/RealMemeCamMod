package com.oplus.shield.utils;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import com.oplus.shield.Constants;
/* loaded from: classes.dex */
public class PLog {
    private static final String LOG_PROPERTY = "persist.sys.assert.panic";
    private static boolean mIsDebug = false;

    public static void init(Context context) {
        mIsDebug = SystemProperties.getBoolean(LOG_PROPERTY, false);
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor("log_switch_type"), false, new LoggerObserver());
    }

    /* loaded from: classes.dex */
    private static class LoggerObserver extends ContentObserver {
        private LoggerObserver() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            boolean unused = PLog.mIsDebug = SystemProperties.getBoolean(PLog.LOG_PROPERTY, false);
        }
    }

    public static void d(String str) {
        if (mIsDebug) {
            Log.d(Constants.TAG, str);
        }
    }

    public static void e(String str) {
        Log.e(Constants.TAG, str);
    }

    public static void w(String str) {
        Log.w(Constants.TAG, str);
    }

    public static void i(String str) {
        if (mIsDebug) {
            Log.i(Constants.TAG, str);
        }
    }

    public static boolean isDebug() {
        return mIsDebug;
    }

    public static void setDebug(boolean z) {
        mIsDebug = z;
    }
}
