package system.ext.module.loader.common;

import android.util.Log;
import system.ext.module.loader.ModuleLogger;

/* loaded from: classes5.dex */
public class ModuleLoaderLogger {
    private static boolean sInitialized = false;

    private ModuleLoaderLogger() {
    }

    public static void init() {
        if (sInitialized) {
            return;
        }
        sInitialized = true;
        ModuleLogger.init(new ModuleLogger.ILogger() { // from class: system.ext.module.loader.common.ModuleLoaderLogger.1
            @Override // system.ext.module.loader.ModuleLogger.ILogger
            public void v(String tag, String msg) {
                Log.v(tag, msg);
            }

            @Override // system.ext.module.loader.ModuleLogger.ILogger
            public void i(String tag, String msg) {
                Log.i(tag, msg);
            }

            @Override // system.ext.module.loader.ModuleLogger.ILogger
            public void d(String tag, String msg) {
                Log.d(tag, msg);
            }

            @Override // system.ext.module.loader.ModuleLogger.ILogger
            public void w(String tag, String msg) {
                Log.w(tag, msg);
            }

            @Override // system.ext.module.loader.ModuleLogger.ILogger
            public void e(String tag, String msg, Throwable e) {
                Log.e(tag, msg, e);
            }
        });
    }
}
