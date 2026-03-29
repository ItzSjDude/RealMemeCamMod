package com.oplus.oms.split.common;

public class SplitLog {
    private static final String PREFIX_TAG = "OMS.";
    private static Logger splitLogImp;

    public interface Logger {
        void d(String str, String str2, Throwable th);

        void d(String str, String str2, Object... objArr);

        void e(String str, String str2, Throwable th);

        void e(String str, String str2, Object... objArr);

        void i(String str, String str2, Throwable th);

        void i(String str, String str2, Object... objArr);

        void printErrStackTrace(String str, Throwable th, String str2, Object... objArr);

        void v(String str, String str2, Throwable th);

        void v(String str, String str2, Object... objArr);

        void w(String str, String str2, Throwable th);

        void w(String str, String str2, Object... objArr);
    }

    private SplitLog() {
    }

    public static void setSplitLogImp(Logger imp) {
        splitLogImp = imp;
    }

    public static void v(String tag, String msg, Object... obj) {
        if (splitLogImp != null) {
            splitLogImp.v(PREFIX_TAG + tag, msg, obj);
        }
    }

    public static void v(String tag, String msg, Throwable error) {
        if (splitLogImp != null) {
            splitLogImp.v(PREFIX_TAG + tag, msg, error);
        }
    }

    public static void e(String tag, String msg, Object... obj) {
        if (splitLogImp != null) {
            splitLogImp.e(PREFIX_TAG + tag, msg, obj);
        }
    }

    public static void e(String tag, String msg, Throwable error) {
        if (splitLogImp != null) {
            splitLogImp.e(PREFIX_TAG + tag, msg, error);
        }
    }

    public static void w(String tag, String msg, Object... obj) {
        if (splitLogImp != null) {
            splitLogImp.w(PREFIX_TAG + tag, msg, obj);
        }
    }

    public static void w(String tag, String msg, Throwable error) {
        if (splitLogImp != null) {
            splitLogImp.w(PREFIX_TAG + tag, msg, error);
        }
    }

    public static void i(String tag, String msg, Object... obj) {
        if (splitLogImp != null) {
            splitLogImp.i(PREFIX_TAG + tag, msg, obj);
        }
    }

    public static void i(String tag, String msg, Throwable error) {
        if (splitLogImp != null) {
            splitLogImp.i(PREFIX_TAG + tag, msg, error);
        }
    }

    public static void d(String tag, String msg, Object... obj) {
        if (splitLogImp != null) {
            splitLogImp.d(PREFIX_TAG + tag, msg, obj);
        }
    }

    public static void d(String tag, String msg, Throwable error) {
        if (splitLogImp != null) {
            splitLogImp.d(PREFIX_TAG + tag, msg, error);
        }
    }

    public static void printErrStackTrace(String tag, Throwable tr, String format, Object... obj) {
        if (splitLogImp != null) {
            splitLogImp.printErrStackTrace(tag, tr, format, obj);
        }
    }

    public static String hexHash(Object obj) {
        if (obj == null) {
            return "null";
        }
        return obj.getClass().getSimpleName() + "@0x" + Long.toHexString(obj.hashCode());
    }
}
