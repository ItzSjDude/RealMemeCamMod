package com.oplus.wrapper.os;

public class Trace {
    public static void traceBegin(long j, String str) {
        android.os.Trace.beginSection(str);
    }

    public static void traceEnd(long j) {
        android.os.Trace.endSection();
    }

    public static void asyncTraceBegin(long j, String str, int i) {
        android.os.Trace.beginAsyncSection(str, i);
    }

    public static void asyncTraceEnd(long j, String str, int i) {
        android.os.Trace.endAsyncSection(str, i);
    }

    public static void traceCounter(long j, String str, int i) {
        android.os.Trace.setCounter(str, i);
    }

    public static boolean isTagEnabled(long j) {
        return android.os.Trace.isEnabled();
    }
}
