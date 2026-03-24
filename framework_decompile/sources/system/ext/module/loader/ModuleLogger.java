package system.ext.module.loader;

/* loaded from: classes5.dex */
public class ModuleLogger {
    public static final String TAG = "ModuleLoader";
    private static ILogger sLogger;

    public static void init(ILogger logger) {
        sLogger = logger;
    }

    public static void v(String tag, String msg) {
        ILogger iLogger = sLogger;
        if (iLogger != null) {
            iLogger.v(tag, msg);
        }
    }

    public static void i(String tag, String msg) {
        ILogger iLogger = sLogger;
        if (iLogger != null) {
            iLogger.i(tag, msg);
        }
    }

    public static void d(String tag, String msg) {
        ILogger iLogger = sLogger;
        if (iLogger != null) {
            iLogger.d(tag, msg);
        }
    }

    public static void w(String tag, String msg) {
        ILogger iLogger = sLogger;
        if (iLogger != null) {
            iLogger.w(tag, msg);
        }
    }

    public static void e(String tag, String msg) {
        ILogger iLogger = sLogger;
        if (iLogger != null) {
            iLogger.e(tag, msg);
        }
    }

    public static void e(String tag, String msg, Throwable e) {
        ILogger iLogger = sLogger;
        if (iLogger != null) {
            iLogger.e(tag, msg, e);
        }
    }

    public interface ILogger {
        default void v(String tag, String msg) {
        }

        default void i(String tag, String msg) {
        }

        default void d(String tag, String msg) {
        }

        default void w(String tag, String msg) {
        }

        default void e(String tag, String msg, Throwable e) {
        }

        default void e(String tag, String msg) {
        }
    }
}
