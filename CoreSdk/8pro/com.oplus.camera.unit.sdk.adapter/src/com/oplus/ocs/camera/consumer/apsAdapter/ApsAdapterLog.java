package com.oplus.ocs.camera.consumer.apsAdapter;

import android.os.Handler;
import android.os.Trace;
import android.util.Log;
import android.util.LogPrinter;
import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ApsAdapterLog {
    private static final String TAG_FORMAT = "ApsAdapter, %s";
    private static final String TRACE_COUNTER_HEAD = "O_";
    private static final String TRACE_TAG = "ApsAdapter_TRACE, %s";
    private static HashMap<String, String> sTagMap = new HashMap<>();
    private static boolean sbLogOn = true;
    private static boolean sbTraceOn = true;
    private static boolean sbLaoOn = true;
    private static final Long TRACE_TAG_ALWAYS = 1L;

    public static void initLog(boolean z, boolean z2, boolean z3) {
        sbLogOn = z;
        sbTraceOn = z2;
        sbLaoOn = z3;
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

    public static void dumpHandlerMsg(String str, Handler handler, String str2) {
        if (sbLogOn) {
            if (handler == null) {
                Log.e(getTag(str), "dumpHandlerMsg, handler is null!");
            } else {
                handler.dump(new LogPrinter(6, "handler info"), str2);
            }
        }
    }

    public static void w(String str, String str2) {
        Log.w(getTag(str), str2);
    }

    public static void w(String str, String str2, Throwable th) {
        Log.w(getTag(str), str2, th);
    }

    public static void w(String str, Throwable th) {
        Log.w(getTag(str), th);
    }

    public static void e(String str, String str2) {
        Log.e(getTag(str), str2);
    }

    public static void e(String str, String str2, Throwable th) {
        Log.e(getTag(str), str2, th);
    }

    public static boolean isLogOn() {
        return sbLogOn;
    }

    public static void traceBeginSection(String str) {
        if (sbTraceOn) {
            Log.e(TRACE_TAG, "traceBeginSection, msg: " + str);
            traceBeginReflect(TRACE_TAG_ALWAYS.longValue(), str);
        }
    }

    public static void traceEndSection(String str) {
        if (sbTraceOn) {
            Log.e(TRACE_TAG, "traceEndSection, msg: " + str);
            traceEndReflect(TRACE_TAG_ALWAYS.longValue());
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
            traceBeginReflect(TRACE_TAG_ALWAYS.longValue(), str);
        }
    }

    public static void traceEndSection(String str, String str2) {
        if (sbTraceOn) {
            v(TRACE_TAG, "traceEndSection, msg: " + str);
            Trace.setCounter(TRACE_COUNTER_HEAD + str2, 0L);
            traceEndReflect(TRACE_TAG_ALWAYS.longValue());
        }
    }

    public static void traceBegin(String str, String str2, long j) {
        String str3 = TRACE_COUNTER_HEAD + str2;
        if (j == 0) {
            j = 100;
        }
        Trace.setCounter(str3, j);
        traceBeginReflect(TRACE_TAG_ALWAYS.longValue(), str);
    }

    public static void traceEnd(String str, String str2) {
        Trace.setCounter(TRACE_COUNTER_HEAD + str2, 0L);
        traceEndReflect(TRACE_TAG_ALWAYS.longValue());
    }

    public static void traceBegin(String str) {
        traceBeginReflect(TRACE_TAG_ALWAYS.longValue(), str);
    }

    public static void traceEnd(String str) {
        traceEndReflect(TRACE_TAG_ALWAYS.longValue());
    }

    public static void traceBeginReflect(long j, String str) {
        try {
            Method declaredMethod = Class.forName("android.os.Trace").getDeclaredMethod("traceBegin", Long.TYPE, String.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, Long.valueOf(j), str);
        } catch (Exception unused) {
            Log.e(TRACE_TAG, "traceBeginReflect, reflect error");
        }
    }

    public static void traceEndReflect(long j) {
        try {
            Method declaredMethod = Class.forName("android.os.Trace").getDeclaredMethod("traceEnd", Long.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, Long.valueOf(j));
        } catch (Exception unused) {
            Log.e(TRACE_TAG, "traceEndReflect, reflect error");
        }
    }
}
