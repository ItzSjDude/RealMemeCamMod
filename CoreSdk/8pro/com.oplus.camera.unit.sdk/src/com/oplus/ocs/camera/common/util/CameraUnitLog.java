package com.oplus.ocs.camera.common.util;

import android.content.Context;
import android.os.Handler;
import android.os.Trace;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.LogPrinter;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class CameraUnitLog {
    private static int SEGMENT_SIZE = 3072;
    private static final String TAG_FORMAT = "CameraUnit, %s";
    private static final String TRACE_COUNTER_HEAD = "O_";
    private static final String TRACE_DEBUG = "trace_debug";
    private static final String TRACE_TAG = "CameraUnit_TRACE";
    private static final Long TRACE_TAG_ALWAYS = 1L;
    private static HashMap<String, String> sTagMap = new HashMap<>();
    private static boolean sbLaoOn = true;
    private static boolean sbLogOn = true;
    private static boolean sbTraceOn = true;

    public static void initLog(Context context) {
        boolean zIsDebugLogOn;
        boolean zIsLaoOn;
        boolean z = false;
        try {
            zIsDebugLogOn = isDebugLogOn();
        } catch (Exception e) {
            e = e;
            zIsDebugLogOn = true;
        }
        try {
            zIsLaoOn = isLaoOn();
        } catch (Exception e2) {
            e = e2;
            zIsLaoOn = false;
            e.printStackTrace();
            initLog(zIsDebugLogOn, z, zIsLaoOn);
        }
        try {
            if (Util.isSystemCamera()) {
                z = PreferenceManager.getDefaultSharedPreferences(context).getBoolean(TRACE_DEBUG, false);
            }
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
        }
        initLog(zIsDebugLogOn, z, zIsLaoOn);
    }

    public static void initLog(boolean z) {
        initLog(z, false, false);
    }

    public static void initLog(boolean z, boolean z2, boolean z3) {
        sbLogOn = z;
        sbTraceOn = z2;
        sbLaoOn = z3;
        ApsAdapterLog.initLog(z, z2, z3);
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

    public static void v(String str, String str2, boolean z) {
        if (sbLogOn || (z && sbLaoOn)) {
            Log.v(getTag(str), str2);
        }
    }

    public static void v(String str, String str2, Throwable th, boolean z) {
        if (sbLogOn || (z && sbLaoOn)) {
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

    public static void d(String str, String str2, boolean z) {
        if (sbLogOn || (z && sbLaoOn)) {
            Log.d(getTag(str), str2);
        }
    }

    public static void d(String str, String str2, Throwable th, boolean z) {
        if (sbLogOn || (z && sbLaoOn)) {
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

    public static void i(String str, String str2, boolean z) {
        if (sbLogOn || (z && sbLaoOn)) {
            Log.i(getTag(str), str2);
        }
    }

    public static void i(String str, String str2, Throwable th, boolean z) {
        if (sbLogOn || (z && sbLaoOn)) {
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
            ApsAdapterLog.traceBeginReflect(TRACE_TAG_ALWAYS.longValue(), str);
        }
    }

    public static void traceEndSection(String str) {
        if (sbTraceOn) {
            Log.e(TRACE_TAG, "traceEndSection, msg: " + str);
            ApsAdapterLog.traceEndReflect(TRACE_TAG_ALWAYS.longValue());
        }
    }

    public static void traceBeginSection(String str, String str2, long j) {
        if (sbTraceOn) {
            v(TRACE_TAG, "traceBeginSection, msg: " + str);
            String str3 = TRACE_COUNTER_HEAD + str2;
            if (j == 0) {
                j = 100;
            }
            Trace.setCounter(str3, j);
            ApsAdapterLog.traceBeginReflect(TRACE_TAG_ALWAYS.longValue(), str);
        }
    }

    public static void traceEndSection(String str, String str2) {
        if (sbTraceOn) {
            v(TRACE_TAG, "traceEndSection, msg: " + str);
            Trace.setCounter(TRACE_COUNTER_HEAD + str2, 0L);
            ApsAdapterLog.traceEndReflect(TRACE_TAG_ALWAYS.longValue());
        }
    }

    public static void traceBegin(String str, String str2, long j) {
        String str3 = TRACE_COUNTER_HEAD + str2;
        if (j == 0) {
            j = 100;
        }
        Trace.setCounter(str3, j);
        ApsAdapterLog.traceBeginReflect(TRACE_TAG_ALWAYS.longValue(), str);
    }

    public static void traceEnd(String str, String str2) {
        Trace.setCounter(TRACE_COUNTER_HEAD + str2, 0L);
        ApsAdapterLog.traceEndReflect(TRACE_TAG_ALWAYS.longValue());
    }

    public static void traceBegin(String str) {
        ApsAdapterLog.traceBeginReflect(TRACE_TAG_ALWAYS.longValue(), str);
    }

    public static void traceEnd(String str) {
        ApsAdapterLog.traceEndReflect(TRACE_TAG_ALWAYS.longValue());
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
        while (true) {
            int length = str3.length();
            int i = SEGMENT_SIZE;
            if (length > i) {
                String strSubstring = str3.substring(0, i);
                str3 = str3.replace(strSubstring, "");
                Log.d(str, str2 + strSubstring);
            } else {
                Log.d(str, str2 + str3);
                return;
            }
        }
    }

    public static boolean isDebugLogOn() {
        return Util.getSystemPropertiesBoolean("persist.sys.assert.panic", false);
    }

    public static boolean isLaoOn() {
        return Util.getSystemPropertiesBoolean("persist.sys.camera.lao.enable", false);
    }
}
