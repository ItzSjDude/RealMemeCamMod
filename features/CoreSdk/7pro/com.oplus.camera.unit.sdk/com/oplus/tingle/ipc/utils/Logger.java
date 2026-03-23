package com.oplus.tingle.ipc.utils;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import androidx.annotation.NonNull;
import com.oplus.tingle.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class Logger {
    private static final String TAG = "Tingle->";
    private static boolean sDEBUG;
    private static AtomicBoolean sInitialized = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    private static class LoggerObserver extends ContentObserver {
        private LoggerObserver(Handler handler) {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            boolean unused = Logger.sDEBUG = SystemProperties.getBoolean("persist.sys.assert.panic", false);
        }
    }

    public static void init(Context context) {
        if (sInitialized.getAndSet(true)) {
            return;
        }
        if (context != null && context.getContentResolver() != null) {
            if (Constants.getAppPlatformPackageName().equals(context.getPackageName())) {
                context.getContentResolver().registerContentObserver(Settings.System.getUriFor("log_switch_type"), false, new LoggerObserver(null));
            }
            sDEBUG = SystemProperties.getBoolean("persist.sys.assert.panic", false);
            return;
        }
        sDEBUG = false;
    }

    public static void d(String str, @NonNull String str2, @NonNull Object... objArr) {
        if (sDEBUG) {
            Log.d(TAG + str, formatMessage(str2, objArr));
        }
    }

    public static void e(String str, @NonNull String str2, @NonNull Object... objArr) {
        Log.e(TAG + str, formatMessage(str2, objArr));
    }

    public static void i(String str, @NonNull String str2, @NonNull Object... objArr) {
        if (sDEBUG) {
            Log.i(TAG + str, formatMessage(str2, objArr));
        }
    }

    public static void w(String str, @NonNull String str2, @NonNull Object... objArr) {
        if (sDEBUG) {
            Log.w(TAG + str, formatMessage(str2, objArr));
        }
    }

    private static String formatMessage(@NonNull String str, @NonNull Object[] objArr) {
        return (str == null || objArr == null || objArr.length <= 0) ? str : String.format(str, objArr);
    }
}
