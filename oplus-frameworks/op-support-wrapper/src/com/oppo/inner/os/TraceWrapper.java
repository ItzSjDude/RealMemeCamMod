package com.oppo.inner.os;

import android.os.Trace;
import android.util.Log;
import com.oplus.inner.os.TraceWrapper;

public class TraceWrapper {
    public static void traceBegin(long traceTag, String methodName) {
        TraceWrapper.traceBegin(traceTag, methodName);
    }

    public static void traceEnd(long traceTag) {
        TraceWrapper.traceEnd(traceTag);
    }

    public static void asyncTraceBegin(long traceTag, String methodName, int cookie) {
        TraceWrapper.asyncTraceBegin(traceTag, methodName, cookie);
    }

    public static void asyncTraceEnd(long traceTag, String methodName, int cookie) {
        TraceWrapper.asyncTraceEnd(traceTag, methodName, cookie);
    }

}