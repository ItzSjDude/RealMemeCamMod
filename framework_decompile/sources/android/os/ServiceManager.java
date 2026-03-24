package android.os;

import android.annotation.SystemApi;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.os.BinderInternal;
import com.android.internal.util.StatLogger;
import java.util.Map;

@SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
/* loaded from: classes3.dex */
public final class ServiceManager {
    private static final int SLOW_LOG_INTERVAL_MS = 5000;
    private static final int STATS_LOG_INTERVAL_MS = 5000;
    private static final String TAG = "ServiceManager";
    private static int sGetServiceAccumulatedCallCount;
    private static int sGetServiceAccumulatedUs;
    private static long sLastSlowLogActualTime;
    private static long sLastSlowLogUptime;
    private static long sLastStatsLogUptime;
    private static IServiceManager sServiceManager;
    private static final Object sLock = new Object();
    private static Map<String, IBinder> sCache = new ArrayMap();
    private static final long GET_SERVICE_SLOW_THRESHOLD_US_CORE = SystemProperties.getInt("debug.servicemanager.slow_call_core_ms", 10) * 1000;
    private static final long GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE = SystemProperties.getInt("debug.servicemanager.slow_call_ms", 50) * 1000;
    private static final int GET_SERVICE_LOG_EVERY_CALLS_CORE = SystemProperties.getInt("debug.servicemanager.log_calls_core", 100);
    private static final int GET_SERVICE_LOG_EVERY_CALLS_NON_CORE = SystemProperties.getInt("debug.servicemanager.log_calls", 200);
    public static final StatLogger sStatLogger = new StatLogger(new String[]{"getService()"});

    interface Stats {
        public static final int COUNT = 1;
        public static final int GET_SERVICE = 0;
    }

    private static native IBinder waitForServiceNative(String str);

    private static IServiceManager getIServiceManager() {
        IServiceManager iServiceManager = sServiceManager;
        if (iServiceManager != null) {
            return iServiceManager;
        }
        IServiceManager iServiceManagerAsInterface = ServiceManagerNative.asInterface(Binder.allowBlocking(BinderInternal.getContextObject()));
        sServiceManager = iServiceManagerAsInterface;
        return iServiceManagerAsInterface;
    }

    public static IBinder getService(String name) {
        try {
            IBinder service = sCache.get(name);
            if (service != null) {
                return service;
            }
            return Binder.allowBlocking(rawGetService(name));
        } catch (RemoteException e) {
            Log.e(TAG, "error in getService", e);
            return null;
        }
    }

    public static IBinder getServiceOrThrow(String name) throws ServiceNotFoundException {
        IBinder binder = getService(name);
        if (binder != null) {
            return binder;
        }
        throw new ServiceNotFoundException(name);
    }

    public static void addService(String name, IBinder service) {
        addService(name, service, false, 8);
    }

    public static void addService(String name, IBinder service, boolean allowIsolated) {
        addService(name, service, allowIsolated, 8);
    }

    public static void addService(String name, IBinder service, boolean allowIsolated, int dumpPriority) {
        try {
            getIServiceManager().addService(name, service, allowIsolated, dumpPriority);
        } catch (RemoteException e) {
            Log.e(TAG, "error in addService", e);
        }
    }

    public static IBinder checkService(String name) {
        try {
            IBinder service = sCache.get(name);
            if (service != null) {
                return service;
            }
            return Binder.allowBlocking(getIServiceManager().checkService(name));
        } catch (RemoteException e) {
            Log.e(TAG, "error in checkService", e);
            return null;
        }
    }

    public static boolean isDeclared(String name) {
        try {
            return getIServiceManager().isDeclared(name);
        } catch (RemoteException e) {
            Log.e(TAG, "error in isDeclared", e);
            return false;
        }
    }

    public static String[] getDeclaredInstances(String iface) {
        try {
            return getIServiceManager().getDeclaredInstances(iface);
        } catch (RemoteException e) {
            Log.e(TAG, "error in getDeclaredInstances", e);
            return null;
        }
    }

    public static IBinder waitForService(String name) {
        return Binder.allowBlocking(waitForServiceNative(name));
    }

    @SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
    public static IBinder waitForDeclaredService(String name) {
        if (isDeclared(name)) {
            return waitForService(name);
        }
        return null;
    }

    public static void registerForNotifications(String name, IServiceCallback callback) throws RemoteException {
        getIServiceManager().registerForNotifications(name, callback);
    }

    public static String[] listServices() {
        try {
            return getIServiceManager().listServices(15);
        } catch (RemoteException e) {
            Log.e(TAG, "error in listServices", e);
            return null;
        }
    }

    public static ServiceDebugInfo[] getServiceDebugInfo() {
        try {
            return getIServiceManager().getServiceDebugInfo();
        } catch (RemoteException e) {
            Log.e(TAG, "error in getServiceDebugInfo", e);
            return null;
        }
    }

    public static void initServiceCache(Map<String, IBinder> cache) {
        if (sCache.size() != 0) {
            throw new IllegalStateException("setServiceCache may only be called once");
        }
        sCache.putAll(cache);
    }

    public static class ServiceNotFoundException extends Exception {
        public ServiceNotFoundException(String name) {
            super("No service published for: " + name);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.os.IBinder rawGetService(java.lang.String r19) throws android.os.RemoteException {
        /*
            r1 = r19
            com.android.internal.util.StatLogger r0 = android.os.ServiceManager.sStatLogger
            long r2 = r0.getTime()
            android.os.IServiceManager r4 = getIServiceManager()
            android.os.IBinder r4 = r4.getService(r1)
            r5 = 0
            long r6 = r0.logDurationStat(r5, r2)
            int r6 = (int) r6
            int r7 = android.os.Process.myUid()
            boolean r8 = android.os.UserHandle.isCore(r7)
            if (r8 == 0) goto L23
            long r9 = android.os.ServiceManager.GET_SERVICE_SLOW_THRESHOLD_US_CORE
            goto L25
        L23:
            long r9 = android.os.ServiceManager.GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE
        L25:
            java.lang.Object r11 = android.os.ServiceManager.sLock
            monitor-enter(r11)
            int r0 = android.os.ServiceManager.sGetServiceAccumulatedUs     // Catch: java.lang.Throwable -> L86
            int r0 = r0 + r6
            android.os.ServiceManager.sGetServiceAccumulatedUs = r0     // Catch: java.lang.Throwable -> L86
            int r0 = android.os.ServiceManager.sGetServiceAccumulatedCallCount     // Catch: java.lang.Throwable -> L86
            int r0 = r0 + 1
            android.os.ServiceManager.sGetServiceAccumulatedCallCount = r0     // Catch: java.lang.Throwable -> L86
            long r12 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> L86
            long r14 = (long) r6     // Catch: java.lang.Throwable -> L86
            int r0 = (r14 > r9 ? 1 : (r14 == r9 ? 0 : -1))
            r14 = 5000(0x1388, double:2.4703E-320)
            if (r0 < 0) goto L58
            long r16 = android.os.ServiceManager.sLastSlowLogUptime     // Catch: java.lang.Throwable -> L86
            long r16 = r16 + r14
            int r0 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r0 > 0) goto L4e
            long r16 = android.os.ServiceManager.sLastSlowLogActualTime     // Catch: java.lang.Throwable -> L86
            long r14 = (long) r6     // Catch: java.lang.Throwable -> L86
            int r0 = (r16 > r14 ? 1 : (r16 == r14 ? 0 : -1))
            if (r0 >= 0) goto L58
        L4e:
            int r0 = r6 / 1000
            android.os.EventLogTags.writeServiceManagerSlow(r0, r1)     // Catch: java.lang.Throwable -> L86
            android.os.ServiceManager.sLastSlowLogUptime = r12     // Catch: java.lang.Throwable -> L86
            long r14 = (long) r6     // Catch: java.lang.Throwable -> L86
            android.os.ServiceManager.sLastSlowLogActualTime = r14     // Catch: java.lang.Throwable -> L86
        L58:
            if (r8 == 0) goto L5d
            int r0 = android.os.ServiceManager.GET_SERVICE_LOG_EVERY_CALLS_CORE     // Catch: java.lang.Throwable -> L86
            goto L5f
        L5d:
            int r0 = android.os.ServiceManager.GET_SERVICE_LOG_EVERY_CALLS_NON_CORE     // Catch: java.lang.Throwable -> L86
        L5f:
            int r14 = android.os.ServiceManager.sGetServiceAccumulatedCallCount     // Catch: java.lang.Throwable -> L86
            if (r14 < r0) goto L82
            long r15 = android.os.ServiceManager.sLastStatsLogUptime     // Catch: java.lang.Throwable -> L86
            r17 = 5000(0x1388, double:2.4703E-320)
            long r17 = r15 + r17
            int r17 = (r12 > r17 ? 1 : (r12 == r17 ? 0 : -1))
            if (r17 < 0) goto L82
            int r5 = android.os.ServiceManager.sGetServiceAccumulatedUs     // Catch: java.lang.Throwable -> L86
            int r5 = r5 / 1000
            r18 = r0
            long r0 = r12 - r15
            int r0 = (int) r0     // Catch: java.lang.Throwable -> L86
            android.os.EventLogTags.writeServiceManagerStats(r14, r5, r0)     // Catch: java.lang.Throwable -> L86
            r0 = 0
            android.os.ServiceManager.sGetServiceAccumulatedCallCount = r0     // Catch: java.lang.Throwable -> L86
            android.os.ServiceManager.sGetServiceAccumulatedUs = r0     // Catch: java.lang.Throwable -> L86
            android.os.ServiceManager.sLastStatsLogUptime = r12     // Catch: java.lang.Throwable -> L86
            goto L84
        L82:
            r18 = r0
        L84:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L86
            return r4
        L86:
            r0 = move-exception
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L86
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.os.ServiceManager.rawGetService(java.lang.String):android.os.IBinder");
    }
}
