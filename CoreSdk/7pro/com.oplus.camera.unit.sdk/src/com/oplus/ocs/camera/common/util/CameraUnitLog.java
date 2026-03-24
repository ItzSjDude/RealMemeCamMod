package com.oplus.ocs.camera.common.util;

import android.content.Context;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.LogPrinter;
import com.oplus.compat.os.SystemPropertiesNative;
import com.oplus.compat.os.TraceNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class CameraUnitLog {
    private static int SEGMENT_SIZE = 3072;
    private static final String TAG_FORMAT = "CameraUnit, %s";
    private static final String TRACE_DEBUG = "trace_debug";
    private static final String TRACE_TAG = "CameraUnit_TRACE";
    private static final Long TRACE_TAG_ALWAYS = 1L;
    private static HashMap<String, String> sTagMap = new HashMap<>();
    private static boolean sbLogOn = true;
    private static boolean sbTraceOn = true;

    public static void initLog(Context context) {
        boolean z;
        boolean z2 = true;
        try {
            z = isDebugLogOn();
        } catch (Exception e) {
            e = e;
            z = true;
        }
        try {
            if (Util.isSystemCamera()) {
                z2 = PreferenceManager.getDefaultSharedPreferences(context).getBoolean(TRACE_DEBUG, false);
            }
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            initLog(z, z2);
        }
        initLog(z, z2);
    }

    public static void initLog(boolean z) {
        initLog(z, false);
    }

    public static void initLog(boolean z, boolean z2) {
        sbLogOn = z;
        sbTraceOn = z2;
        ApsAdapterLog.initLog(z, z2);
    }

    private static String getTag(String str) {
        if (sTagMap.get(str) == null) {
            sTagMap.put(str, String.format(TAG_FORMAT, str));
        }
        return sTagMap.get(str);
    }

    public static void v(String str, String str2) {
        if (sbLogOn) {
            Log.v(getTag(str), str2);
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (sbLogOn) {
            Log.v(getTag(str), str2, th);
        }
    }

    public static void d(String str, String str2) {
        if (sbLogOn) {
            Log.d(getTag(str), str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (sbLogOn) {
            Log.d(getTag(str), str2, th);
        }
    }

    public static void i(String str, String str2) {
        if (sbLogOn) {
            Log.i(getTag(str), str2);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (sbLogOn) {
            Log.i(getTag(str), str2, th);
        }
    }

    public static void w(String str, String str2) {
        Log.w(getTag(str), str2);
    }

    public static void w(String str, String str2, Throwable th) {
        Log.w(getTag(str), str2, th);
    }

    public static void e(String str, String str2) {
        Log.e(getTag(str), str2);
    }

    public static void e(String str, String str2, Throwable th) {
        Log.e(getTag(str), str2, th);
    }

    public static void traceBeginSection(String str) {
        if (sbTraceOn) {
            Log.e(TRACE_TAG, "traceBeginSection, msg: " + str);
            try {
                TraceNative.traceBegin(TRACE_TAG_ALWAYS.longValue(), str);
            } catch (UnSupportedApiVersionException e) {
                e.printStackTrace();
            } catch (Throwable unused) {
                Log.e(TRACE_TAG, "reflect error");
            }
        }
    }

    public static void traceEndSection(String str) {
        if (sbTraceOn) {
            Log.e(TRACE_TAG, "traceEndSection, msg: " + str);
            try {
                TraceNative.traceEnd(TRACE_TAG_ALWAYS.longValue());
            } catch (UnSupportedApiVersionException e) {
                e.printStackTrace();
            } catch (Throwable unused) {
                Log.e(TRACE_TAG, "reflect error");
            }
        }
    }

    public static void dumpHandlerMsg(String str, Handler handler, String str2) {
        if (sbLogOn) {
            if (handler == null) {
                Log.e(getTag(str), "dumpHandlerMsg, handler is null!");
                return;
            }
            handler.dump(new LogPrinter(6, "handler info, name: " + handler.getLooper().getThread().getName()), str2);
        }
    }

    public static void printLongLog(String str, String str2, String str3) {
        if (str == null || str.length() == 0 || str3 == null || str3.length() == 0) {
            return;
        }
        if (str3.length() <= SEGMENT_SIZE) {
            Log.d(str, str2 + str3);
            return;
        }
        while (str3.length() > SEGMENT_SIZE) {
            String substring = str3.substring(0, SEGMENT_SIZE);
            str3 = str3.replace(substring, "");
            Log.d(str, str2 + substring);
        }
        Log.d(str, str2 + str3);
    }

    public static boolean isDebugLogOn() {
        try {
            return SystemPropertiesNative.getBoolean("persist.sys.assert.panic", false);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
