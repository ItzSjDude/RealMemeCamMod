package com.android.internal.os;

import android.app.ApplicationLoaders;
import android.content.pm.SharedLibraryInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Build;
import android.os.Environment;
import android.os.IInstalld;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.ZygoteProcess;
import android.security.keystore2.AndroidKeyStoreProvider;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructCapUserData;
import android.system.StructCapUserHeader;
import android.text.Hyphenator;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.util.TimingsTraceLog;
import android.webkit.WebViewFactory;
import android.widget.TextView;
import com.android.internal.R;
import com.android.internal.os.RuntimeInit;
import com.android.internal.util.Preconditions;
import dalvik.system.VMRuntime;
import dalvik.system.ZygoteHooks;
import java.io.EOFException;
import java.io.File;
import java.security.Provider;
import java.security.Security;

/* loaded from: classes4.dex */
public class ZygoteInit {
    private static final String ABI_LIST_ARG = "--abi-list=";
    private static final int LOG_BOOT_PROGRESS_PRELOAD_END = 3030;
    private static final int LOG_BOOT_PROGRESS_PRELOAD_START = 3020;
    private static final String PRELOADED_CLASSES = "/system/etc/preloaded-classes";
    private static final boolean PRELOAD_RESOURCES = true;
    private static final String PROPERTY_DISABLE_GRAPHICS_DRIVER_PRELOADING = "ro.zygote.disable_gl_preload";
    private static final int ROOT_GID = 0;
    private static final int ROOT_UID = 0;
    private static final String SOCKET_NAME_ARG = "--socket-name=";
    private static final int UNPRIVILEGED_GID = 9999;
    private static final int UNPRIVILEGED_UID = 9999;
    private static Resources mResources;
    private static boolean sPreloadComplete;
    private static final String TAG = "Zygote";
    private static final boolean LOGGING_DEBUG = Log.isLoggable(TAG, 3);
    private static ClassLoader sCachedSystemServerClassLoader = null;

    private static native void nativePreloadAppProcessHALs();

    static native void nativePreloadGraphicsDriver();

    private static native void nativeZygoteInit();

    static void preload(TimingsTraceLog bootTimingsTraceLog) throws Throwable {
        Log.d(TAG, "begin preload");
        bootTimingsTraceLog.traceBegin("BeginPreload");
        beginPreload();
        bootTimingsTraceLog.traceEnd();
        bootTimingsTraceLog.traceBegin("PreloadClasses");
        preloadClasses();
        bootTimingsTraceLog.traceEnd();
        bootTimingsTraceLog.traceBegin("CacheNonBootClasspathClassLoaders");
        cacheNonBootClasspathClassLoaders();
        bootTimingsTraceLog.traceEnd();
        bootTimingsTraceLog.traceBegin("PreloadResources");
        preloadResources();
        bootTimingsTraceLog.traceEnd();
        Trace.traceBegin(16384L, "PreloadAppProcessHALs");
        nativePreloadAppProcessHALs();
        Trace.traceEnd(16384L);
        Trace.traceBegin(16384L, "PreloadGraphicsDriver");
        maybePreloadGraphicsDriver();
        Trace.traceEnd(16384L);
        preloadSharedLibraries();
        preloadTextResources();
        WebViewFactory.prepareWebViewInZygote();
        endPreload();
        warmUpJcaProviders();
        Log.d(TAG, "end preload");
        sPreloadComplete = true;
    }

    static void lazyPreload() {
        Preconditions.checkState(!sPreloadComplete);
        Log.i(TAG, "Lazily preloading resources.");
        preload(new TimingsTraceLog("ZygoteInitTiming_lazy", 16384L));
    }

    private static void beginPreload() {
        Log.i(TAG, "Calling ZygoteHooks.beginPreload()");
        ZygoteHooks.onBeginPreload();
    }

    private static void endPreload() {
        ZygoteHooks.onEndPreload();
        Log.i(TAG, "Called ZygoteHooks.endPreload()");
    }

    private static void preloadSharedLibraries() {
        Log.i(TAG, "Preloading shared libraries...");
        System.loadLibrary("android");
        System.loadLibrary("compiler_rt");
        System.loadLibrary("jnigraphics");
        if (Build.isQcomPlatform()) {
            try {
                System.loadLibrary("qti_performance");
            } catch (UnsatisfiedLinkError e) {
                Log.e(TAG, "Couldn't load qti_performance");
            }
        }
    }

    private static void maybePreloadGraphicsDriver() {
        if (!SystemProperties.getBoolean(PROPERTY_DISABLE_GRAPHICS_DRIVER_PRELOADING, false)) {
            nativePreloadGraphicsDriver();
        }
    }

    private static void preloadTextResources() {
        Hyphenator.init();
        TextView.preloadFontCache();
    }

    private static void warmUpJcaProviders() {
        long startTime = SystemClock.uptimeMillis();
        Trace.traceBegin(16384L, "Starting installation of AndroidKeyStoreProvider");
        AndroidKeyStoreProvider.install();
        Log.i(TAG, "Installed AndroidKeyStoreProvider in " + (SystemClock.uptimeMillis() - startTime) + "ms.");
        Trace.traceEnd(16384L);
        long startTime2 = SystemClock.uptimeMillis();
        Trace.traceBegin(16384L, "Starting warm up of JCA providers");
        for (Provider p : Security.getProviders()) {
            p.warmUpServiceProvision();
        }
        Log.i(TAG, "Warmed up JCA providers in " + (SystemClock.uptimeMillis() - startTime2) + "ms.");
        Trace.traceEnd(16384L);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0344  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void preloadClasses() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 905
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.ZygoteInit.preloadClasses():void");
    }

    private static void cacheNonBootClasspathClassLoaders() {
        SharedLibraryInfo hidlBase = new SharedLibraryInfo("/system/framework/android.hidl.base-V1.0-java.jar", null, null, null, 0L, 0, null, null, null, false);
        SharedLibraryInfo hidlManager = new SharedLibraryInfo("/system/framework/android.hidl.manager-V1.0-java.jar", null, null, null, 0L, 0, null, null, null, false);
        SharedLibraryInfo androidTestBase = new SharedLibraryInfo("/system/framework/android.test.base.jar", null, null, null, 0L, 0, null, null, null, false);
        ApplicationLoaders.getDefault().createAndCacheNonBootclasspathSystemClassLoaders(new SharedLibraryInfo[]{hidlBase, hidlManager, androidTestBase});
    }

    private static void preloadResources() {
        try {
            Resources system2 = Resources.getSystem();
            mResources = system2;
            system2.startPreloading();
            Log.i(TAG, "Preloading resources...");
            ZygoteInitExtPlugin.hookPreloadResources.call(mResources, TAG);
            long startTime = SystemClock.uptimeMillis();
            TypedArray ar = mResources.obtainTypedArray(R.array.preloaded_drawables);
            int N = preloadDrawables(ar);
            ar.recycle();
            Log.i(TAG, "...preloaded " + N + " resources in " + (SystemClock.uptimeMillis() - startTime) + "ms.");
            ZygoteInitExtPlugin.addBootEvent.call("Zygote:Preload " + N + " obtain resources in " + (SystemClock.uptimeMillis() - startTime) + "ms");
            long startTime2 = SystemClock.uptimeMillis();
            TypedArray ar2 = mResources.obtainTypedArray(R.array.preloaded_color_state_lists);
            int N2 = preloadColorStateLists(ar2);
            ar2.recycle();
            Log.i(TAG, "...preloaded " + N2 + " resources in " + (SystemClock.uptimeMillis() - startTime2) + "ms.");
            if (mResources.getBoolean(R.bool.config_freeformWindowManagement)) {
                startTime2 = SystemClock.uptimeMillis();
                TypedArray ar3 = mResources.obtainTypedArray(R.array.preloaded_freeform_multi_window_drawables);
                N2 = preloadDrawables(ar3);
                ar3.recycle();
                Log.i(TAG, "...preloaded " + N2 + " resource in " + (SystemClock.uptimeMillis() - startTime2) + "ms.");
            }
            ZygoteInitExtPlugin.addBootEvent.call("Zygote:Preload " + N2 + " resources in " + (SystemClock.uptimeMillis() - startTime2) + "ms");
            mResources.finishPreloading();
        } catch (RuntimeException e) {
            Log.w(TAG, "Failure preloading resources", e);
        }
    }

    private static int preloadColorStateLists(TypedArray ar) {
        int N = ar.length();
        for (int i = 0; i < N; i++) {
            int id = ar.getResourceId(i, 0);
            if (id != 0 && mResources.getColorStateList(id, null) == null) {
                throw new IllegalArgumentException("Unable to find preloaded color resource #0x" + Integer.toHexString(id) + " (" + ar.getString(i) + NavigationBarInflaterView.KEY_CODE_END);
            }
        }
        return N;
    }

    private static int preloadDrawables(TypedArray ar) {
        int N = ar.length();
        for (int i = 0; i < N; i++) {
            int id = ar.getResourceId(i, 0);
            if (id != 0 && mResources.getDrawable(id, null) == null) {
                throw new IllegalArgumentException("Unable to find preloaded drawable resource #0x" + Integer.toHexString(id) + " (" + ar.getString(i) + NavigationBarInflaterView.KEY_CODE_END);
            }
        }
        return N;
    }

    private static void gcAndFinalize() {
        ZygoteHooks.gcAndFinalize();
    }

    private static boolean shouldProfileSystemServer() {
        boolean defaultValue = SystemProperties.getBoolean("dalvik.vm.profilesystemserver", false);
        return SystemProperties.getBoolean("persist.device_config.runtime_native_boot.profilesystemserver", defaultValue);
    }

    private static Runnable handleSystemServerProcess(ZygoteArguments parsedArgs) throws SecurityException, IllegalArgumentException {
        Log.d(TAG, "increase system server priority to -15");
        Process.setThreadPriority(-15);
        Os.umask(OsConstants.S_IRWXG | OsConstants.S_IRWXO);
        if (parsedArgs.mNiceName != null) {
            Process.setArgV0(parsedArgs.mNiceName);
        }
        String systemServerClasspath = Os.getenv("SYSTEMSERVERCLASSPATH");
        if (systemServerClasspath != null && shouldProfileSystemServer() && (Build.IS_USERDEBUG || Build.IS_ENG)) {
            try {
                Log.d(TAG, "Preparing system server profile");
                prepareSystemServerProfile(systemServerClasspath);
            } catch (Exception e) {
                Log.wtf(TAG, "Failed to set up system server profile", e);
            }
        }
        if (parsedArgs.mInvokeWith != null) {
            String[] args = parsedArgs.mRemainingArgs;
            if (systemServerClasspath != null) {
                String[] amendedArgs = new String[args.length + 2];
                amendedArgs[0] = "-cp";
                amendedArgs[1] = systemServerClasspath;
                System.arraycopy(args, 0, amendedArgs, 2, args.length);
                args = amendedArgs;
            }
            WrapperInit.execApplication(parsedArgs.mInvokeWith, parsedArgs.mNiceName, parsedArgs.mTargetSdkVersion, VMRuntime.getCurrentInstructionSet(), null, args);
            throw new IllegalStateException("Unexpected return from WrapperInit.execApplication");
        }
        ClassLoader cl = getOrCreateSystemServerClassLoader();
        if (cl != null) {
            Thread.currentThread().setContextClassLoader(cl);
        }
        return zygoteInit(parsedArgs.mTargetSdkVersion, parsedArgs.mDisabledCompatChanges, parsedArgs.mRemainingArgs, cl);
    }

    private static ClassLoader getOrCreateSystemServerClassLoader() {
        String systemServerClasspath;
        if (sCachedSystemServerClassLoader == null && (systemServerClasspath = Os.getenv("SYSTEMSERVERCLASSPATH")) != null) {
            sCachedSystemServerClassLoader = createPathClassLoader(systemServerClasspath, 10000);
        }
        return sCachedSystemServerClassLoader;
    }

    private static void prefetchStandaloneSystemServerJars() {
        String envStr = Os.getenv("STANDALONE_SYSTEMSERVER_JARS");
        if (TextUtils.isEmpty(envStr)) {
            return;
        }
        for (String jar : envStr.split(":")) {
            try {
                SystemServerClassLoaderFactory.createClassLoader(jar, getOrCreateSystemServerClassLoader());
            } catch (Error e) {
                Log.e(TAG, String.format("Failed to prefetch standalone system server jar \"%s\": %s", jar, e.toString()));
            }
        }
    }

    private static void prepareSystemServerProfile(String systemServerClasspath) throws RemoteException {
        if (systemServerClasspath.isEmpty()) {
            return;
        }
        String[] codePaths = systemServerClasspath.split(":");
        IInstalld installd = IInstalld.Stub.asInterface(ServiceManager.getService("installd"));
        installd.prepareAppProfile("android", 0, UserHandle.getAppId(1000), "primary.prof", codePaths[0], null);
        File curProfileDir = Environment.getDataProfilesDePackageDirectory(0, "android");
        String curProfilePath = new File(curProfileDir, "primary.prof").getAbsolutePath();
        File refProfileDir = Environment.getDataProfilesDePackageDirectory(0, "android");
        String refProfilePath = new File(refProfileDir, "primary.prof").getAbsolutePath();
        VMRuntime.registerAppInfo("android", curProfilePath, refProfilePath, codePaths, 1);
    }

    public static void setApiDenylistExemptions(String[] exemptions) {
        VMRuntime.getRuntime().setHiddenApiExemptions(exemptions);
    }

    public static void setHiddenApiAccessLogSampleRate(int percent) {
        VMRuntime.getRuntime().setHiddenApiAccessLogSamplingRate(percent);
    }

    public static void setHiddenApiUsageLogger(VMRuntime.HiddenApiUsageLogger logger) {
        VMRuntime.getRuntime();
        VMRuntime.setHiddenApiUsageLogger(logger);
    }

    static ClassLoader createPathClassLoader(String classPath, int targetSdkVersion) {
        String libraryPath = System.getProperty("java.library.path");
        ClassLoader parent = ClassLoader.getSystemClassLoader().getParent();
        return ClassLoaderFactory.createClassLoader(classPath, libraryPath, libraryPath, parent, targetSdkVersion, true, null);
    }

    private static Runnable forkSystemServer(String abiList, String socketName, ZygoteServer zygoteServer) throws InterruptedException, ErrnoException {
        long capabilities = posixCapabilitiesAsBits(OsConstants.CAP_IPC_LOCK, OsConstants.CAP_KILL, OsConstants.CAP_NET_ADMIN, OsConstants.CAP_NET_BIND_SERVICE, OsConstants.CAP_NET_BROADCAST, OsConstants.CAP_NET_RAW, OsConstants.CAP_SYS_MODULE, OsConstants.CAP_SYS_NICE, OsConstants.CAP_SYS_PTRACE, OsConstants.CAP_SYS_TIME, OsConstants.CAP_SYS_TTY_CONFIG, OsConstants.CAP_WAKE_ALARM, OsConstants.CAP_BLOCK_SUSPEND);
        StructCapUserHeader header = new StructCapUserHeader(OsConstants._LINUX_CAPABILITY_VERSION_3, 0);
        try {
            StructCapUserData[] data = Os.capget(header);
            long capabilities2 = ((data[1].effective << 32) | data[0].effective) & capabilities;
            String[] args = {"--setuid=1000", "--setgid=1000", "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1024,1032,1065,3001,3002,3003,3005,3006,3007,3009,3010,3011,3012", "--capabilities=" + capabilities2 + "," + capabilities2, "--nice-name=system_server", "--runtime-args", "--target-sdk-version=10000", "com.android.server.SystemServer"};
            try {
                ZygoteCommandBuffer commandBuffer = new ZygoteCommandBuffer(args);
                try {
                    ZygoteArguments parsedArgs = ZygoteArguments.getInstance(commandBuffer);
                    commandBuffer.close();
                    Zygote.applyDebuggerSystemProperty(parsedArgs);
                    Zygote.applyInvokeWithSystemProperty(parsedArgs);
                    if (Zygote.nativeSupportsMemoryTagging()) {
                        String mode = SystemProperties.get("arm64.memtag.process.system_server", "");
                        if (mode.isEmpty()) {
                            mode = SystemProperties.get("persist.arm64.memtag.default", "async");
                        }
                        if (mode.equals("async")) {
                            parsedArgs.mRuntimeFlags |= 1048576;
                        } else if (mode.equals("sync")) {
                            parsedArgs.mRuntimeFlags |= 1572864;
                        } else if (!mode.equals("off")) {
                            parsedArgs.mRuntimeFlags |= Zygote.nativeCurrentTaggingLevel();
                            Slog.e(TAG, "Unknown memory tag level for the system server: \"" + mode + "\"");
                        }
                    } else if (Zygote.nativeSupportsTaggedPointers()) {
                        parsedArgs.mRuntimeFlags |= 524288;
                    }
                    parsedArgs.mRuntimeFlags |= 2097152;
                    if (shouldProfileSystemServer()) {
                        parsedArgs.mRuntimeFlags |= 16384;
                    }
                    int pid = Zygote.forkSystemServer(parsedArgs.mUid, parsedArgs.mGid, parsedArgs.mGids, parsedArgs.mRuntimeFlags, null, parsedArgs.mPermittedCapabilities, parsedArgs.mEffectiveCapabilities);
                    if (pid == 0) {
                        if (hasSecondZygote(abiList)) {
                            waitForSecondaryZygote(socketName);
                        }
                        zygoteServer.closeServerSocket();
                        return handleSystemServerProcess(parsedArgs);
                    }
                    return null;
                } catch (EOFException e) {
                    throw new AssertionError("Unexpected argument error for forking system server", e);
                }
            } catch (IllegalArgumentException ex) {
                throw new RuntimeException(ex);
            }
        } catch (ErrnoException ex2) {
            throw new RuntimeException("Failed to capget()", ex2);
        }
    }

    private static long posixCapabilitiesAsBits(int... capabilities) {
        long result = 0;
        for (int capability : capabilities) {
            if (capability < 0 || capability > OsConstants.CAP_LAST_CAP) {
                throw new IllegalArgumentException(String.valueOf(capability));
            }
            result |= 1 << capability;
        }
        return result;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b6, code lost:
    
        r0 = r13.equals(com.android.internal.os.Zygote.PRIMARY_SOCKET_NAME);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bc, code lost:
    
        if (r8 != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c0, code lost:
    
        if (r0 == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
    
        com.android.internal.util.FrameworkStatsLog.write(240, 17, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cf, code lost:
    
        if (r13.equals(com.android.internal.os.Zygote.SECONDARY_SOCKET_NAME) == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d1, code lost:
    
        com.android.internal.util.FrameworkStatsLog.write(240, 18, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d6, code lost:
    
        if (r14 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d8, code lost:
    
        if (r15 != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00da, code lost:
    
        r10.traceBegin("ZygotePreload");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00df, code lost:
    
        r5 = com.android.internal.os.ZygoteInit.TAG;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e2, code lost:
    
        android.util.EventLog.writeEvent(com.android.internal.os.ZygoteInit.LOG_BOOT_PROGRESS_PRELOAD_START, android.os.SystemClock.uptimeMillis());
        com.android.internal.os.ZygoteInitExtPlugin.addBootEvent.call("Zygote:Preload Start");
        com.android.internal.os.ZygoteInitExtPlugin.beginHookPreload.call(new java.lang.Object[0]);
        preload(r10);
        com.android.internal.os.ZygoteInitExtPlugin.endHookPreload.call(new java.lang.Object[0]);
        android.util.EventLog.writeEvent(com.android.internal.os.ZygoteInit.LOG_BOOT_PROGRESS_PRELOAD_END, android.os.SystemClock.uptimeMillis());
        r10.traceEnd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0115, code lost:
    
        r5 = com.android.internal.os.ZygoteInit.TAG;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0116, code lost:
    
        r10.traceBegin("PostZygoteInitGC");
        com.android.internal.os.ZygoteInitExtPlugin.beginHookGcAndFinalize.call(java.lang.Boolean.valueOf(r15));
        gcAndFinalize();
        com.android.internal.os.ZygoteInitExtPlugin.endHookGcAndFinalize.call(java.lang.Boolean.valueOf(r15));
        r10.traceEnd();
        r10.traceEnd();
        com.android.internal.os.ZygoteInitExtPlugin.addBootEvent.call("Zygote:Preload End");
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x015f, code lost:
    
        r4 = ((com.android.internal.os.IZygoteConfigSocExt) system.ext.loader.core.ExtLoader.type(com.android.internal.os.IZygoteConfigSocExt.class).create()).createTertiaryZygote(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0160, code lost:
    
        if (r4 != null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0162, code lost:
    
        com.android.internal.os.Zygote.initNativeState(r0);
        dalvik.system.ZygoteHooks.stopZygoteNoThreadCreation();
        r4 = new com.android.internal.os.ZygoteServer(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x016f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0170, code lost:
    
        r5 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0171, code lost:
    
        if (r11 == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0173, code lost:
    
        r2 = forkSystemServer(r14, r13, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0177, code lost:
    
        if (r2 == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0179, code lost:
    
        r2.run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0181, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0182, code lost:
    
        android.util.Log.i(r5, "Accepting command socket connections");
        r2 = r4.runSelectLoop(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x018c, code lost:
    
        if (r4 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x018e, code lost:
    
        r4.closeServerSocket();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0191, code lost:
    
        if (r2 == null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0193, code lost:
    
        r2.run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0196, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x019f, code lost:
    
        throw new java.lang.RuntimeException("No ABI list supplied.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a0, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01a4, code lost:
    
        r4 = r17;
        r5 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ab, code lost:
    
        android.util.Log.e(r5, "System zygote died with fatal exception", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b1, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01b2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01b3, code lost:
    
        if (r4 != null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01b5, code lost:
    
        r4.closeServerSocket();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01b8, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:?, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void main(java.lang.String[] r19) throws android.system.ErrnoException {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.ZygoteInit.main(java.lang.String[]):void");
    }

    private static boolean hasSecondZygote(String abiList) {
        return !SystemProperties.get("ro.product.cpu.abilist").equals(abiList);
    }

    private static void waitForSecondaryZygote(String socketName) throws InterruptedException {
        String otherZygoteName = Zygote.PRIMARY_SOCKET_NAME;
        if (Zygote.PRIMARY_SOCKET_NAME.equals(socketName)) {
            otherZygoteName = Zygote.SECONDARY_SOCKET_NAME;
        }
        ZygoteProcess.waitForConnectionToZygote(otherZygoteName);
    }

    static boolean isPreloadComplete() {
        return sPreloadComplete;
    }

    private ZygoteInit() {
    }

    public static Runnable zygoteInit(int targetSdkVersion, long[] disabledCompatChanges, String[] argv, ClassLoader classLoader) throws SecurityException {
        Trace.traceBegin(64L, "ZygoteInit");
        RuntimeInit.redirectLogStreams();
        RuntimeInit.commonInit();
        nativeZygoteInit();
        return RuntimeInit.applicationInit(targetSdkVersion, disabledCompatChanges, argv, classLoader);
    }

    static Runnable childZygoteInit(String[] argv) {
        RuntimeInit.Arguments args = new RuntimeInit.Arguments(argv);
        return RuntimeInit.findStaticMain(args.startClass, args.startArgs, null);
    }
}
