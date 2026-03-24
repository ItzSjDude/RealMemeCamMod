package android.app;

import android.app.Activity;
import android.app.IActivityThreadSocExt;
import android.app.IApplicationThread;
import android.app.RemoteServiceException;
import android.app.assist.AssistContent;
import android.app.assist.AssistStructure;
import android.app.backup.BackupAgent;
import android.app.backup.FullBackup;
import android.app.servertransaction.ActivityLifecycleItem;
import android.app.servertransaction.ActivityRelaunchItem;
import android.app.servertransaction.ActivityResultItem;
import android.app.servertransaction.ClientTransaction;
import android.app.servertransaction.ClientTransactionItem;
import android.app.servertransaction.PauseActivityItem;
import android.app.servertransaction.PendingTransactionActions;
import android.app.servertransaction.ResumeActivityItem;
import android.app.servertransaction.TransactionExecutor;
import android.app.servertransaction.TransactionExecutorHelper;
import android.app.slice.Slice;
import android.bluetooth.BluetoothFrameworkInitializer;
import android.content.AttributionSource;
import android.content.AutofillOptions;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.ContentCaptureOptions;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IContentProvider;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.IPackageManager;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ProviderInfoList;
import android.content.pm.ServiceInfo;
import android.content.res.AssetManager;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.loader.ResourcesLoader;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDebug;
import android.ddm.DdmHandleAppName;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.HardwareRenderer;
import android.hardware.display.DisplayManagerGlobal;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.media.MediaFrameworkInitializer;
import android.media.MediaFrameworkPlatformInitializer;
import android.media.MediaServiceManager;
import android.net.ConnectivityManager;
import android.net.Proxy;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.BluetoothServiceManager;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Debug;
import android.os.Environment;
import android.os.FileUtils;
import android.os.GraphicsEnvironment;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.IBinder;
import android.os.ICancellationSignal;
import android.os.IOneTraceExt;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.os.OplusJankMonitorExtPlugin;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.PersistableBundle;
import android.os.Process;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SharedMemory;
import android.os.StatsFrameworkInitializer;
import android.os.StatsServiceManager;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.TelephonyServiceManager;
import android.os.Trace;
import android.os.UserHandle;
import android.permission.IPermissionManager;
import android.provider.Settings;
import android.renderscript.RenderScriptCacheDir;
import android.security.NetworkSecurityPolicy;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.telephony.TelephonyFrameworkInitializer;
import android.util.AndroidRuntimeException;
import android.util.ArrayMap;
import android.util.EventLog;
import android.util.Log;
import android.util.MergedConfiguration;
import android.util.Pair;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SuperNotCalledException;
import android.util.proto.ProtoOutputStream;
import android.view.Choreographer;
import android.view.Display;
import android.view.DisplayAdjustments;
import android.view.SurfaceControl;
import android.view.ThreadedRenderer;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewManager;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.view.autofill.AutofillId;
import android.view.contentcapture.IContentCaptureManager;
import android.view.contentcapture.IContentCaptureOptionsCallback;
import android.view.translation.TranslationSpec;
import android.view.translation.UiTranslationSpec;
import android.webkit.WebView;
import android.window.ConfigurationHelper;
import android.window.SizeConfigurationBuckets;
import android.window.SplashScreen;
import android.window.SplashScreenView;
import android.window.WindowProviderService;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.content.ReferrerIntent;
import com.android.internal.os.BinderCallsStats;
import com.android.internal.os.BinderInternal;
import com.android.internal.os.RuntimeInit;
import com.android.internal.os.SomeArgs;
import com.android.internal.policy.DecorView;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.internal.util.function.HexConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.org.conscrypt.OpenSSLSocketImpl;
import com.android.org.conscrypt.TrustedCertificateStore;
import dalvik.system.CloseGuard;
import dalvik.system.VMDebug;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import libcore.io.ForwardingOs;
import libcore.io.IoUtils;
import libcore.net.event.NetworkEventDispatcher;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public final class ActivityThread extends ClientTransactionHandler implements ActivityThreadInternal {
    private static final int ACTIVITY_THREAD_CHECKIN_VERSION = 4;
    private static final long CONTENT_PROVIDER_RETAIN_TIME = 1000;
    public static boolean DEBUG_BROADCAST_LIGHT = false;
    private static final String DEFAULT_FULL_BACKUP_AGENT = "android.app.backup.FullBackupAgent";
    private static final String HEAP_COLUMN = "%13s %8s %8s %8s %8s %8s %8s %8s %8s";
    private static final String HEAP_FULL_COLUMN = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s";
    public static final long INVALID_PROC_STATE_SEQ = -1;
    public static final int IN_ENQUEUEING = 1;
    public static final int IN_FINISHING = 3;
    public static final int IN_HANDLING = 2;
    public static final int IN_IDLE = 0;
    public static final String LAUNCHER_PACKAGE_NAME = "com.android.launcher";
    private static final long MIN_TIME_BETWEEN_GCS = 5000;
    private static final IOneTraceExt ONETRACE_EXT;
    private static final String ONE_ALT_COUNT_COLUMN = "%21s %8s %21s %8d";
    private static final String ONE_COUNT_COLUMN = "%21s %8d";
    public static final String PROC_START_SEQ_IDENT = "seq=";
    private static final int REQUEST_DIRECT_ACTIONS_RETRY_MAX_COUNT = 7;
    private static final long REQUEST_DIRECT_ACTIONS_RETRY_TIME_MS = 200;
    public static final int SERVICE_DONE_EXECUTING_ANON = 0;
    public static final int SERVICE_DONE_EXECUTING_START = 1;
    public static final int SERVICE_DONE_EXECUTING_STOP = 2;
    private static final int SQLITE_MEM_RELEASED_EVENT_LOG_TAG = 75003;
    public static final String TAG = "ActivityThread";
    private static final String THREE_COUNT_COLUMNS = "%21s %8d %21s %8s %21s %8d";
    private static final String TWO_COUNT_COLUMNS = "%21s %8d %21s %8d";
    private static final String TWO_COUNT_COLUMN_HEADER = "%21s %8s %21s %8s";
    private static final int VM_PROCESS_STATE_JANK_IMPERCEPTIBLE = 1;
    private static final int VM_PROCESS_STATE_JANK_PERCEPTIBLE = 0;
    private static volatile ActivityThread sCurrentActivityThread;
    static volatile Handler sMainThreadHandler;
    static volatile IPackageManager sPackageManager;
    private static volatile IPermissionManager sPermissionManager;
    private ArrayList<Pair<IBinder, Consumer<DisplayAdjustments>>> mActiveRotationAdjustments;
    final ArrayMap<IBinder, ActivityClientRecord> mActivities;
    final Map<IBinder, ClientTransactionItem> mActivitiesToBeDestroyed;
    final ArrayList<Application> mAllApplications;
    private final SparseArray<ArrayMap<String, BackupAgent>> mBackupAgentsByUser;
    AppBindData mBoundApplication;
    Configuration mConfiguration;
    private ConfigurationController mConfigurationController;
    private IContentCaptureOptionsCallback.Stub mContentCaptureOptionsCallback;
    Bundle mCoreSettings;
    private final Object mCoreSettingsLock;
    int mCurDefaultDisplayDpi;
    boolean mDebugLauncher;
    boolean mDebugOn;
    boolean mDensityCompatMode;
    private SparseArray<ContextImpl> mDisplaySystemUiContexts;
    final Executor mExecutor;
    final GcIdler mGcIdler;
    boolean mGcIdlerScheduled;
    final ArrayMap<ProviderKey, ProviderKey> mGetProviderKeys;
    final H mH;
    boolean mHasImeComponent;
    boolean mHiddenApiWarningShown;
    Application mInitialApplication;
    Instrumentation mInstrumentation;
    String mInstrumentationAppDir;
    String mInstrumentationLibDir;
    String mInstrumentationPackageName;
    String[] mInstrumentationSplitAppDirs;
    String mInstrumentedAppDir;
    String mInstrumentedLibDir;
    String[] mInstrumentedSplitAppDirs;
    boolean mInstrumentingWithoutRestart;
    ArrayList<WeakReference<AssistStructure>> mLastAssistStructures;
    private int mLastProcessState;
    private final Map<IBinder, Integer> mLastReportedWindowingMode;
    private int mLastSessionId;
    final ArrayMap<IBinder, ProviderClientRecord> mLocalProviders;
    final ArrayMap<ComponentName, ProviderClientRecord> mLocalProvidersByName;
    ActivityClientRecord mNewActivities;
    private final AtomicInteger mNumLaunchingActivities;
    int mNumVisibleActivities;
    final ArrayMap<Activity, ArrayList<OnActivityPausedListener>> mOnPauseListeners;
    public IActivityThreadExt mOplusActivityThreadExt;
    final ArrayMap<String, WeakReference<LoadedApk>> mPackages;
    Configuration mPendingConfiguration;
    private final ArrayMap<IBinder, Configuration> mPendingOverrideConfigs;
    Profiler mProfiler;
    final ArrayMap<ProviderKey, ProviderClientRecord> mProviderMap;
    final ArrayMap<IBinder, ProviderRefCount> mProviderRefCountMap;
    final PurgeIdler mPurgeIdler;
    boolean mPurgeIdlerScheduled;
    final ArrayList<ActivityClientRecord> mRelaunchingActivities;
    private Map<SafeCancellationTransport, CancellationSignal> mRemoteCancellations;
    final ArrayMap<String, WeakReference<LoadedApk>> mResourcePackages;
    private final ResourcesManager mResourcesManager;
    final ArrayMap<IBinder, Service> mServices;
    final ArrayMap<IBinder, CreateServiceData> mServicesData;
    public IActivityThreadSocExt mSocExt;
    boolean mSomeActivitiesChanged;
    private SplashScreen.SplashScreenManagerGlobal mSplashScreenGlobal;
    private ContextImpl mSystemContext;
    boolean mSystemThread;
    private final TransactionExecutor mTransactionExecutor;
    private boolean mUpdateHttpProxyOnBind;
    private static final Bitmap.Config THUMBNAIL_FORMAT = Bitmap.Config.RGB_565;
    public static boolean localLOGV = false;
    public static boolean DEBUG_MESSAGES = false;
    public static boolean DEBUG_BROADCAST = false;
    public static boolean DEBUG_RESULTS = false;
    public static boolean DEBUG_BACKUP = false;
    public static boolean DEBUG_CONFIGURATION = false;
    public static boolean DEBUG_SERVICE = false;
    public static boolean DEBUG_MEMORY_TRIM = false;
    public static boolean DEBUG_PROVIDER = false;
    public static boolean DEBUG_ORDER = false;
    private static final IActivityThreadSocExt.IStaticExt STATIC_EXT = (IActivityThreadSocExt.IStaticExt) ExtLoader.type(IActivityThreadSocExt.IStaticExt.class).create();
    private static final ThreadLocal<Intent> sCurrentBroadcastIntent = new ThreadLocal<>();
    public static int mFgBrState = 0;
    public static int mBgBrState = 0;
    public static int mOplusFgBrState = 0;
    public static int mOplusBgBrState = 0;
    private final Object mNetworkPolicyLock = new Object();
    private long mNetworkBlockSeq = -1;
    final ApplicationThread mAppThread = new ApplicationThread();
    final Looper mLooper = Looper.myLooper();

    private native void nInitZygoteChildHeapProfiling();

    private native void nPurgePendingResources();

    static {
        DEBUG_BROADCAST_LIGHT = DEBUG_BROADCAST;
        ONETRACE_EXT = (IOneTraceExt) ExtLoader.type(IOneTraceExt.class).create();
    }

    private static final class ProviderKey {
        final String authority;
        ContentProviderHolder mHolder;
        final Object mLock = new Object();
        final int userId;

        public ProviderKey(String authority, int userId) {
            this.authority = authority;
            this.userId = userId;
        }

        public boolean equals(Object o) {
            if (!(o instanceof ProviderKey)) {
                return false;
            }
            ProviderKey other = (ProviderKey) o;
            return Objects.equals(this.authority, other.authority) && this.userId == other.userId;
        }

        public int hashCode() {
            String str = this.authority;
            return (str != null ? str.hashCode() : 0) ^ this.userId;
        }
    }

    public static final class ActivityClientRecord {
        Activity activity;
        ViewRootImpl.ActivityConfigCallback activityConfigCallback;
        ActivityInfo activityInfo;
        public IBinder assistToken;
        CompatibilityInfo compatInfo;
        Configuration createdConfig;
        String embeddedID;
        boolean hideForNow;
        int ident;
        Intent intent;
        public final boolean isForward;
        boolean isTopResumedActivity;
        Activity.NonConfigurationInstances lastNonConfigurationInstances;
        boolean lastReportedTopResumedState;
        ActivityOptions mActivityOptions;
        public IBinder mInitialTaskFragmentToken;
        boolean mIsUserLeaving;
        boolean mLaunchedFromBubble;
        private int mLifecycleState;
        Window mPendingRemoveWindow;
        WindowManager mPendingRemoveWindowManager;
        boolean mPreserveWindow;
        private SizeConfigurationBuckets mSizeConfigurations;
        ActivityClientRecord nextIdle;
        Configuration overrideConfig;
        public LoadedApk packageInfo;
        Activity parent;
        boolean paused;
        int pendingConfigChanges;
        List<ReferrerIntent> pendingIntents;
        List<ResultInfo> pendingResults;
        PersistableBundle persistentState;
        ProfilerInfo profilerInfo;
        String referrer;
        public IBinder shareableActivityToken;
        boolean startsNotResumed;
        Bundle state;
        boolean stopped;
        private Configuration tmpConfig;
        public IBinder token;
        IVoiceInteractor voiceInteractor;
        Window window;

        public ActivityClientRecord() {
            this.tmpConfig = new Configuration();
            this.mLifecycleState = 0;
            this.isForward = false;
            init();
        }

        public ActivityClientRecord(IBinder token, Intent intent, int ident, ActivityInfo info, Configuration overrideConfig, CompatibilityInfo compatInfo, String referrer, IVoiceInteractor voiceInteractor, Bundle state, PersistableBundle persistentState, List<ResultInfo> pendingResults, List<ReferrerIntent> pendingNewIntents, ActivityOptions activityOptions, boolean isForward, ProfilerInfo profilerInfo, ClientTransactionHandler client, IBinder assistToken, IBinder shareableActivityToken, boolean launchedFromBubble, IBinder initialTaskFragmentToken) {
            this.tmpConfig = new Configuration();
            this.mLifecycleState = 0;
            this.token = token;
            this.assistToken = assistToken;
            this.shareableActivityToken = shareableActivityToken;
            this.ident = ident;
            this.intent = intent;
            this.referrer = referrer;
            this.voiceInteractor = voiceInteractor;
            this.activityInfo = info;
            this.compatInfo = compatInfo;
            this.state = state;
            this.persistentState = persistentState;
            this.pendingResults = pendingResults;
            this.pendingIntents = pendingNewIntents;
            this.isForward = isForward;
            this.profilerInfo = profilerInfo;
            this.overrideConfig = overrideConfig;
            this.packageInfo = client.getPackageInfoNoCheck(info.applicationInfo, compatInfo);
            this.mActivityOptions = activityOptions;
            this.mLaunchedFromBubble = launchedFromBubble;
            this.mInitialTaskFragmentToken = initialTaskFragmentToken;
            init();
        }

        private void init() {
            this.parent = null;
            this.embeddedID = null;
            this.paused = false;
            this.stopped = false;
            this.hideForNow = false;
            this.nextIdle = null;
            this.activityConfigCallback = new ViewRootImpl.ActivityConfigCallback() { // from class: android.app.ActivityThread.ActivityClientRecord.1
                @Override // android.view.ViewRootImpl.ActivityConfigCallback
                public void onConfigurationChanged(Configuration overrideConfig, int newDisplayId) {
                    if (ActivityClientRecord.this.activity == null) {
                        throw new IllegalStateException("Received config update for non-existing activity");
                    }
                    ActivityClientRecord.this.activity.mMainThread.handleActivityConfigurationChanged(ActivityClientRecord.this, overrideConfig, newDisplayId);
                }

                @Override // android.view.ViewRootImpl.ActivityConfigCallback
                public void requestCompatCameraControl(boolean showControl, boolean transformationApplied, ICompatCameraControlCallback callback) {
                    if (ActivityClientRecord.this.activity == null) {
                        throw new IllegalStateException("Received camera compat control update for non-existing activity");
                    }
                    ActivityClient.getInstance().requestCompatCameraControl(ActivityClientRecord.this.activity.getResources(), ActivityClientRecord.this.token, showControl, transformationApplied, callback);
                }
            };
        }

        public int getLifecycleState() {
            return this.mLifecycleState;
        }

        public void setState(int newLifecycleState) {
            this.mLifecycleState = newLifecycleState;
            switch (newLifecycleState) {
                case 1:
                    this.paused = true;
                    this.stopped = true;
                    break;
                case 2:
                    this.paused = true;
                    this.stopped = false;
                    break;
                case 3:
                    this.paused = false;
                    this.stopped = false;
                    break;
                case 4:
                    this.paused = true;
                    this.stopped = false;
                    break;
                case 5:
                    this.paused = true;
                    this.stopped = true;
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPreHoneycomb() {
            Activity activity = this.activity;
            return activity != null && activity.getApplicationInfo().targetSdkVersion < 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPreP() {
            Activity activity = this.activity;
            return activity != null && activity.getApplicationInfo().targetSdkVersion < 28;
        }

        public boolean isPersistable() {
            return this.activityInfo.persistableMode == 2;
        }

        public boolean isVisibleFromServer() {
            Activity activity = this.activity;
            return activity != null && activity.mVisibleFromServer;
        }

        public String toString() {
            Intent intent = this.intent;
            ComponentName componentName = intent != null ? intent.getComponent() : null;
            return "ActivityRecord{" + Integer.toHexString(System.identityHashCode(this)) + " token=" + this.token + " " + (componentName == null ? "no component name" : componentName.toShortString()) + "}";
        }

        public String getStateString() {
            StringBuilder sb = new StringBuilder();
            sb.append("ActivityClientRecord{");
            sb.append("paused=").append(this.paused);
            sb.append(", stopped=").append(this.stopped);
            sb.append(", hideForNow=").append(this.hideForNow);
            sb.append(", startsNotResumed=").append(this.startsNotResumed);
            sb.append(", isForward=").append(this.isForward);
            sb.append(", pendingConfigChanges=").append(this.pendingConfigChanges);
            sb.append(", preserveWindow=").append(this.mPreserveWindow);
            if (this.activity != null) {
                sb.append(", Activity{");
                sb.append("resumed=").append(this.activity.mResumed);
                sb.append(", stopped=").append(this.activity.mStopped);
                sb.append(", finished=").append(this.activity.isFinishing());
                sb.append(", destroyed=").append(this.activity.isDestroyed());
                sb.append(", startedActivity=").append(this.activity.mStartedActivity);
                sb.append(", changingConfigurations=").append(this.activity.mChangingConfigurations);
                sb.append("}");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    final class ProviderClientRecord {
        final ContentProviderHolder mHolder;
        final ContentProvider mLocalProvider;
        final String[] mNames;
        final IContentProvider mProvider;

        ProviderClientRecord(String[] names, IContentProvider provider, ContentProvider localProvider, ContentProviderHolder holder) {
            this.mNames = names;
            this.mProvider = provider;
            this.mLocalProvider = localProvider;
            this.mHolder = holder;
        }
    }

    static final class ReceiverData extends BroadcastReceiver.PendingResult {
        CompatibilityInfo compatInfo;
        ActivityInfo info;
        Intent intent;

        public ReceiverData(Intent intent, int resultCode, String resultData, Bundle resultExtras, boolean ordered, boolean sticky, IBinder token, int sendingUser) {
            super(resultCode, resultData, resultExtras, 0, ordered, sticky, token, sendingUser, intent.getFlags());
            this.intent = intent;
        }

        public String toString() {
            return "ReceiverData{intent=" + this.intent + " packageName=" + this.info.packageName + " resultCode=" + getResultCode() + " resultData=" + getResultData() + " resultExtras=" + getResultExtras(false) + "}";
        }
    }

    static final class CreateBackupAgentData {
        ApplicationInfo appInfo;
        int backupMode;
        CompatibilityInfo compatInfo;
        int operationType;
        int userId;

        CreateBackupAgentData() {
        }

        public String toString() {
            return "CreateBackupAgentData{appInfo=" + this.appInfo + " backupAgent=" + this.appInfo.backupAgentName + " mode=" + this.backupMode + " userId=" + this.userId + "}";
        }
    }

    static final class CreateServiceData {
        CompatibilityInfo compatInfo;
        ServiceInfo info;
        Intent intent;
        IBinder token;

        CreateServiceData() {
        }

        public String toString() {
            return "CreateServiceData{token=" + this.token + " className=" + this.info.name + " packageName=" + this.info.packageName + " intent=" + this.intent + "}";
        }
    }

    static final class BindServiceData {
        Intent intent;
        boolean rebind;
        IBinder token;

        BindServiceData() {
        }

        public String toString() {
            return "BindServiceData{token=" + this.token + " intent=" + this.intent + "}";
        }
    }

    static final class ServiceArgsData {
        Intent args;
        int flags;
        int startId;
        boolean taskRemoved;
        IBinder token;

        ServiceArgsData() {
        }

        public String toString() {
            return "ServiceArgsData{token=" + this.token + " startId=" + this.startId + " args=" + this.args + "}";
        }
    }

    static final class AppBindData {
        ApplicationInfo appInfo;
        AutofillOptions autofillOptions;
        String buildSerial;
        CompatibilityInfo compatInfo;
        Configuration config;
        ContentCaptureOptions contentCaptureOptions;
        int debugMode;
        long[] disabledCompatChanges;
        boolean enableBinderTracking;
        LoadedApk info;
        ProfilerInfo initProfilerInfo;
        Bundle instrumentationArgs;
        ComponentName instrumentationName;
        IUiAutomationConnection instrumentationUiAutomationConnection;
        IInstrumentationWatcher instrumentationWatcher;
        SharedMemory mSerializedSystemFontMap;
        boolean persistent;
        String processName;
        List<ProviderInfo> providers;
        boolean restrictedBackupMode;
        String sdkSandboxClientAppPackage;
        String sdkSandboxClientAppVolumeUuid;
        long startRequestedElapsedTime;
        long startRequestedUptime;
        boolean trackAllocation;

        AppBindData() {
        }

        public String toString() {
            return "AppBindData{appInfo=" + this.appInfo + "}";
        }
    }

    static final class Profiler {
        boolean autoStopProfiler;
        boolean handlingProfiling;
        ParcelFileDescriptor profileFd;
        String profileFile;
        boolean profiling;
        int samplingInterval;
        boolean streamingOutput;

        Profiler() {
        }

        public void setProfiler(ProfilerInfo profilerInfo) {
            ParcelFileDescriptor fd = profilerInfo.profileFd;
            if (this.profiling) {
                if (fd != null) {
                    try {
                        fd.close();
                        return;
                    } catch (IOException e) {
                        return;
                    }
                }
                return;
            }
            ParcelFileDescriptor parcelFileDescriptor = this.profileFd;
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException e2) {
                }
            }
            this.profileFile = profilerInfo.profileFile;
            this.profileFd = fd;
            this.samplingInterval = profilerInfo.samplingInterval;
            this.autoStopProfiler = profilerInfo.autoStopProfiler;
            this.streamingOutput = profilerInfo.streamingOutput;
        }

        public void startProfiling() {
            if (this.profileFd == null || this.profiling) {
                return;
            }
            try {
                int bufferSize = SystemProperties.getInt("debug.traceview-buffer-size-mb", 8);
                String str = this.profileFile;
                FileDescriptor fileDescriptor = this.profileFd.getFileDescriptor();
                int i = bufferSize * 1024 * 1024;
                int i2 = this.samplingInterval;
                VMDebug.startMethodTracing(str, fileDescriptor, i, 0, i2 != 0, i2, this.streamingOutput);
                this.profiling = true;
            } catch (RuntimeException e) {
                Slog.w(ActivityThread.TAG, "Profiling failed on path " + this.profileFile, e);
                try {
                    this.profileFd.close();
                    this.profileFd = null;
                } catch (IOException e2) {
                    Slog.w(ActivityThread.TAG, "Failure closing profile fd", e2);
                }
            }
        }

        public void stopProfiling() {
            if (this.profiling) {
                this.profiling = false;
                Debug.stopMethodTracing();
                ParcelFileDescriptor parcelFileDescriptor = this.profileFd;
                if (parcelFileDescriptor != null) {
                    try {
                        parcelFileDescriptor.close();
                    } catch (IOException e) {
                    }
                }
                this.profileFd = null;
                this.profileFile = null;
            }
        }
    }

    static final class DumpComponentInfo {
        String[] args;
        ParcelFileDescriptor fd;
        String prefix;
        IBinder token;

        DumpComponentInfo() {
        }
    }

    static final class ContextCleanupInfo {
        ContextImpl context;
        String what;
        String who;

        ContextCleanupInfo() {
        }
    }

    static final class DumpHeapData {
        ParcelFileDescriptor fd;
        RemoteCallback finishCallback;
        public boolean mallocInfo;
        public boolean managed;
        String path;
        public boolean runGc;

        DumpHeapData() {
        }
    }

    static final class DumpResourcesData {
        public ParcelFileDescriptor fd;
        public RemoteCallback finishCallback;

        DumpResourcesData() {
        }
    }

    static final class UpdateCompatibilityData {
        CompatibilityInfo info;
        String pkg;

        UpdateCompatibilityData() {
        }
    }

    static final class RequestAssistContextExtras {
        IBinder activityToken;
        int flags;
        IBinder requestToken;
        int requestType;
        int sessionId;

        RequestAssistContextExtras() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Access modifiers changed from: private */
    public class ApplicationThread extends IApplicationThread.Stub {
        private static final String DB_INFO_FORMAT = "  %8s %8s %14s %14s  %s";

        private ApplicationThread() {
        }

        @Override // android.app.IApplicationThread
        public final void scheduleReceiver(Intent intent, ActivityInfo info, CompatibilityInfo compatInfo, int resultCode, String data, Bundle extras, boolean sync, int sendingUser, int processState) {
            ActivityThread.this.updateProcessState(processState, false);
            ReceiverData r = new ReceiverData(intent, resultCode, data, extras, sync, false, ActivityThread.this.mAppThread.asBinder(), sendingUser);
            r.info = info;
            r.compatInfo = compatInfo;
            ActivityThread.this.sendMessage(113, r);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleCreateBackupAgent(ApplicationInfo app, CompatibilityInfo compatInfo, int backupMode, int userId, int operationType) {
            CreateBackupAgentData d = new CreateBackupAgentData();
            d.appInfo = app;
            d.compatInfo = compatInfo;
            d.backupMode = backupMode;
            d.userId = userId;
            d.operationType = operationType;
            ActivityThread.this.sendMessage(128, d);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleDestroyBackupAgent(ApplicationInfo app, CompatibilityInfo compatInfo, int userId) {
            CreateBackupAgentData d = new CreateBackupAgentData();
            d.appInfo = app;
            d.compatInfo = compatInfo;
            d.userId = userId;
            ActivityThread.this.sendMessage(129, d);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleCreateService(IBinder token, ServiceInfo info, CompatibilityInfo compatInfo, int processState) {
            ActivityThread.this.updateProcessState(processState, false);
            CreateServiceData s = new CreateServiceData();
            s.token = token;
            s.info = info;
            s.compatInfo = compatInfo;
            if (ActivityThread.this.mOplusActivityThreadExt.checkOplusExSystemService(ActivityThread.this.mSystemThread, info.name)) {
                ActivityThread.this.handleCreateService(s);
            } else {
                ActivityThread.this.sendMessage(114, s);
            }
        }

        @Override // android.app.IApplicationThread
        public final void scheduleBindService(IBinder token, Intent intent, boolean rebind, int processState) {
            ActivityThread.this.updateProcessState(processState, false);
            BindServiceData s = new BindServiceData();
            s.token = token;
            s.intent = intent;
            s.rebind = rebind;
            if (ActivityThread.DEBUG_SERVICE) {
                Slog.v(ActivityThread.TAG, "scheduleBindService token=" + token + " intent=" + intent + " uid=" + Binder.getCallingUid() + " pid=" + Binder.getCallingPid());
            }
            if (ActivityThread.this.mOplusActivityThreadExt.checkOplusExSystemService(ActivityThread.this.mSystemThread, intent)) {
                ActivityThread.this.handleBindService(s);
            } else {
                ActivityThread.this.sendMessage(121, s);
            }
        }

        @Override // android.app.IApplicationThread
        public final void scheduleUnbindService(IBinder token, Intent intent) {
            BindServiceData s = new BindServiceData();
            s.token = token;
            s.intent = intent;
            ActivityThread.this.sendMessage(122, s);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleServiceArgs(IBinder token, ParceledListSlice args) {
            List<ServiceStartArgs> list = args.getList();
            for (int i = 0; i < list.size(); i++) {
                ServiceStartArgs ssa = list.get(i);
                ServiceArgsData s = new ServiceArgsData();
                s.token = token;
                s.taskRemoved = ssa.taskRemoved;
                s.startId = ssa.startId;
                s.flags = ssa.flags;
                s.args = ssa.args;
                ActivityThread.this.sendMessage(115, s);
            }
        }

        @Override // android.app.IApplicationThread
        public final void scheduleStopService(IBinder token) {
            ActivityThread.this.sendMessage(116, token);
        }

        @Override // android.app.IApplicationThread
        public final void bindApplication(String processName, ApplicationInfo appInfo, String sdkSandboxClientAppVolumeUuid, String sdkSandboxClientAppPackage, ProviderInfoList providerList, ComponentName instrumentationName, ProfilerInfo profilerInfo, Bundle instrumentationArgs, IInstrumentationWatcher instrumentationWatcher, IUiAutomationConnection instrumentationUiConnection, int debugMode, boolean enableBinderTracking, boolean trackAllocation, boolean isRestrictedBackupMode, boolean persistent, Configuration config, CompatibilityInfo compatInfo, Map services, Bundle coreSettings, String buildSerial, AutofillOptions autofillOptions, ContentCaptureOptions contentCaptureOptions, long[] disabledCompatChanges, SharedMemory serializedSystemFontMap, long startRequestedElapsedTime, long startRequestedUptime) {
            if (services != null) {
                ServiceManager.initServiceCache(services);
            }
            setCoreSettings(coreSettings);
            AppBindData data = new AppBindData();
            data.processName = processName;
            data.appInfo = appInfo;
            data.sdkSandboxClientAppVolumeUuid = sdkSandboxClientAppVolumeUuid;
            data.sdkSandboxClientAppPackage = sdkSandboxClientAppPackage;
            data.providers = providerList.getList();
            data.instrumentationName = instrumentationName;
            data.instrumentationArgs = instrumentationArgs;
            data.instrumentationWatcher = instrumentationWatcher;
            data.instrumentationUiAutomationConnection = instrumentationUiConnection;
            data.debugMode = debugMode;
            data.enableBinderTracking = enableBinderTracking;
            data.trackAllocation = trackAllocation;
            data.restrictedBackupMode = isRestrictedBackupMode;
            data.persistent = persistent;
            data.config = config;
            data.compatInfo = compatInfo;
            data.initProfilerInfo = profilerInfo;
            data.buildSerial = buildSerial;
            data.autofillOptions = autofillOptions;
            data.contentCaptureOptions = contentCaptureOptions;
            data.disabledCompatChanges = disabledCompatChanges;
            data.mSerializedSystemFontMap = serializedSystemFontMap;
            data.startRequestedElapsedTime = startRequestedElapsedTime;
            data.startRequestedUptime = startRequestedUptime;
            ActivityThread.this.sendMessage(110, data);
        }

        @Override // android.app.IApplicationThread
        public final void runIsolatedEntryPoint(String entryPoint, String[] entryPointArgs) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = entryPoint;
            args.arg2 = entryPointArgs;
            ActivityThread.this.sendMessage(158, args);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleExit() {
            ActivityThread.this.sendMessage(111, null);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleSuicide() {
            ActivityThread.this.sendMessage(130, null);
        }

        @Override // android.app.IApplicationThread
        public void scheduleApplicationInfoChanged(ApplicationInfo ai) {
            ActivityThread.this.mResourcesManager.appendPendingAppInfoUpdate(new String[]{ai.sourceDir}, ai);
            ActivityThread.this.mH.removeMessages(156, ai);
            ActivityThread.this.sendMessage(156, ai);
        }

        public void scheduleApplicationInfoChangedForSwitchUser(ApplicationInfo ai, int updateFrameworkRes) {
            ActivityThread.this.mH.removeMessages(156, ai);
            ActivityThread.this.sendMessage(156, ai, 1, updateFrameworkRes);
        }

        @Override // android.app.IApplicationThread
        public void updateTimeZone() {
            TimeZone.setDefault(null);
        }

        @Override // android.app.IApplicationThread
        public void clearDnsCache() {
            InetAddress.clearDnsCache();
            NetworkEventDispatcher.getInstance().dispatchNetworkConfigurationChange();
        }

        @Override // android.app.IApplicationThread
        public void updateHttpProxy() {
            synchronized (ActivityThread.this) {
                Application app = ActivityThread.this.getApplication();
                if (app == null) {
                    ActivityThread.this.mUpdateHttpProxyOnBind = true;
                } else {
                    ActivityThread.updateHttpProxy(app);
                }
            }
        }

        @Override // android.app.IApplicationThread
        public void processInBackground() {
            ActivityThread.this.mH.removeMessages(120);
            ActivityThread.this.mH.sendMessage(ActivityThread.this.mH.obtainMessage(120));
        }

        @Override // android.app.IApplicationThread
        public void dumpService(ParcelFileDescriptor pfd, IBinder servicetoken, String[] args) {
            DumpComponentInfo data = new DumpComponentInfo();
            try {
                try {
                    data.fd = pfd.dup();
                    data.token = servicetoken;
                    data.args = args;
                    ActivityThread.this.sendMessage(123, data, 0, 0, true);
                } catch (IOException e) {
                    Slog.w(ActivityThread.TAG, "dumpService failed", e);
                }
            } finally {
                IoUtils.closeQuietly(pfd);
            }
        }

        @Override // android.app.IApplicationThread
        public void scheduleRegisteredReceiver(IIntentReceiver receiver, Intent intent, int resultCode, String dataStr, Bundle extras, boolean ordered, boolean sticky, int sendingUser, int processState) throws RemoteException {
            ActivityThread.this.updateProcessState(processState, false);
            receiver.performReceive(intent, resultCode, dataStr, extras, ordered, sticky, sendingUser);
        }

        @Override // android.app.IApplicationThread
        public void scheduleLowMemory() {
            ActivityThread.this.sendMessage(124, null);
        }

        @Override // android.app.IApplicationThread
        public void profilerControl(boolean z, ProfilerInfo profilerInfo, int i) {
            ActivityThread.this.sendMessage(127, profilerInfo, z ? 1 : 0, i);
        }

        @Override // android.app.IApplicationThread
        public void dumpHeap(boolean managed, boolean mallocInfo, boolean runGc, String path, ParcelFileDescriptor fd, RemoteCallback finishCallback) {
            DumpHeapData dhd = new DumpHeapData();
            dhd.managed = managed;
            dhd.mallocInfo = mallocInfo;
            dhd.runGc = runGc;
            dhd.path = path;
            try {
                try {
                    dhd.fd = fd.dup();
                    IoUtils.closeQuietly(fd);
                    dhd.finishCallback = finishCallback;
                    ActivityThread.this.sendMessage(135, dhd, 0, 0, true);
                } catch (IOException e) {
                    Slog.e(ActivityThread.TAG, "Failed to duplicate heap dump file descriptor", e);
                    IoUtils.closeQuietly(fd);
                }
            } catch (Throwable th) {
                IoUtils.closeQuietly(fd);
                throw th;
            }
        }

        @Override // android.app.IApplicationThread
        public void attachAgent(String agent) {
            ActivityThread.this.sendMessage(155, agent);
        }

        @Override // android.app.IApplicationThread
        public void attachStartupAgents(String dataDir) {
            ActivityThread.this.sendMessage(162, dataDir);
        }

        @Override // android.app.IApplicationThread
        public void setSchedulingGroup(int group) {
            try {
                Process.setProcessGroup(Process.myPid(), group);
            } catch (Exception e) {
                Slog.w(ActivityThread.TAG, "Failed setting process group to " + group, e);
            }
        }

        @Override // android.app.IApplicationThread
        public void dispatchPackageBroadcast(int cmd, String[] packages) {
            ActivityThread.this.sendMessage(133, packages, cmd);
        }

        @Override // android.app.IApplicationThread
        public void scheduleCrash(String msg, int typeId, Bundle extras) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = msg;
            args.arg2 = extras;
            ActivityThread.this.sendMessage(134, args, typeId);
        }

        @Override // android.app.IApplicationThread
        public void dumpResources(ParcelFileDescriptor fd, RemoteCallback callback) {
            DumpResourcesData data = new DumpResourcesData();
            try {
                try {
                    data.fd = fd.dup();
                    data.finishCallback = callback;
                    ActivityThread.this.sendMessage(166, data, 0, 0, false);
                } catch (IOException e) {
                    Slog.w(ActivityThread.TAG, "dumpResources failed", e);
                }
            } finally {
                IoUtils.closeQuietly(fd);
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpActivity(ParcelFileDescriptor pfd, IBinder activitytoken, String prefix, String[] args) {
            DumpComponentInfo data = new DumpComponentInfo();
            try {
                try {
                    data.fd = pfd.dup();
                    data.token = activitytoken;
                    data.prefix = prefix;
                    data.args = args;
                    ActivityThread.this.sendMessage(136, data, 0, 0, true);
                } catch (IOException e) {
                    Slog.w(ActivityThread.TAG, "dumpActivity failed", e);
                }
            } finally {
                IoUtils.closeQuietly(pfd);
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpProvider(ParcelFileDescriptor pfd, IBinder providertoken, String[] args) {
            DumpComponentInfo data = new DumpComponentInfo();
            try {
                try {
                    data.fd = pfd.dup();
                    data.token = providertoken;
                    data.args = args;
                    ActivityThread.this.sendMessage(141, data, 0, 0, true);
                } catch (IOException e) {
                    Slog.w(ActivityThread.TAG, "dumpProvider failed", e);
                }
            } finally {
                IoUtils.closeQuietly(pfd);
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpMemInfo(ParcelFileDescriptor pfd, Debug.MemoryInfo mem, boolean checkin, boolean dumpFullInfo, boolean dumpDalvik, boolean dumpSummaryOnly, boolean dumpUnreachable, String[] args) {
            FileOutputStream fout = new FileOutputStream(pfd.getFileDescriptor());
            PrintWriter pw = new FastPrintWriter(fout);
            try {
                dumpMemInfo(pw, mem, checkin, dumpFullInfo, dumpDalvik, dumpSummaryOnly, dumpUnreachable);
            } finally {
                pw.flush();
                IoUtils.closeQuietly(pfd);
            }
        }

        private void dumpMemInfo(PrintWriter pw, Debug.MemoryInfo memInfo, boolean checkin, boolean dumpFullInfo, boolean dumpDalvik, boolean dumpSummaryOnly, boolean dumpUnreachable) {
            String str;
            int i;
            String str2;
            long nativeMax = Debug.getNativeHeapSize() / 1024;
            long nativeAllocated = Debug.getNativeHeapAllocatedSize() / 1024;
            long nativeFree = Debug.getNativeHeapFreeSize() / 1024;
            Runtime runtime = Runtime.getRuntime();
            runtime.gc();
            long dalvikMax = runtime.totalMemory() / 1024;
            long dalvikFree = runtime.freeMemory() / 1024;
            long dalvikAllocated = dalvikMax - dalvikFree;
            Class[] classesToCount = {ContextImpl.class, Activity.class, WebView.class, OpenSSLSocketImpl.class};
            long[] instanceCounts = VMDebug.countInstancesOfClasses(classesToCount, true);
            long appContextInstanceCount = instanceCounts[0];
            long activityInstanceCount = instanceCounts[1];
            long webviewInstanceCount = instanceCounts[2];
            long openSslSocketCount = instanceCounts[3];
            long viewInstanceCount = ViewDebug.getViewInstanceCount();
            long viewRootInstanceCount = ViewDebug.getViewRootImplCount();
            int globalAssetCount = AssetManager.getGlobalAssetCount();
            int globalAssetManagerCount = AssetManager.getGlobalAssetManagerCount();
            int binderLocalObjectCount = Debug.getBinderLocalObjectCount();
            int binderProxyObjectCount = Debug.getBinderProxyObjectCount();
            int binderDeathObjectCount = Debug.getBinderDeathObjectCount();
            long parcelSize = Parcel.getGlobalAllocSize();
            long parcelCount = Parcel.getGlobalAllocCount();
            SQLiteDebug.PagerStats stats = SQLiteDebug.getDatabaseInfo();
            ActivityThread.dumpMemInfoTable(pw, memInfo, checkin, dumpFullInfo, dumpDalvik, dumpSummaryOnly, Process.myPid(), ActivityThread.this.mBoundApplication != null ? ActivityThread.this.mBoundApplication.processName : "unknown", nativeMax, nativeAllocated, nativeFree, dalvikMax, dalvikAllocated, dalvikFree);
            if (checkin) {
                pw.print(viewInstanceCount);
                pw.print(',');
                long viewRootInstanceCount2 = viewRootInstanceCount;
                pw.print(viewRootInstanceCount2);
                pw.print(',');
                pw.print(appContextInstanceCount);
                pw.print(',');
                pw.print(activityInstanceCount);
                pw.print(',');
                pw.print(globalAssetCount);
                pw.print(',');
                pw.print(globalAssetManagerCount);
                pw.print(',');
                pw.print(binderLocalObjectCount);
                pw.print(',');
                pw.print(binderProxyObjectCount);
                pw.print(',');
                pw.print(binderDeathObjectCount);
                pw.print(',');
                pw.print(openSslSocketCount);
                pw.print(',');
                SQLiteDebug.PagerStats stats2 = stats;
                pw.print(stats2.memoryUsed / 1024);
                pw.print(',');
                pw.print(stats2.memoryUsed / 1024);
                pw.print(',');
                pw.print(stats2.pageCacheOverflow / 1024);
                pw.print(',');
                pw.print(stats2.largestMemAlloc / 1024);
                int i2 = 0;
                while (i2 < stats2.dbStats.size()) {
                    SQLiteDebug.DbStats dbStats = stats2.dbStats.get(i2);
                    pw.print(',');
                    pw.print(dbStats.dbName);
                    pw.print(',');
                    pw.print(dbStats.pageSize);
                    pw.print(',');
                    pw.print(dbStats.dbSize);
                    pw.print(',');
                    pw.print(dbStats.lookaside);
                    pw.print(',');
                    pw.print(dbStats.cache);
                    pw.print(',');
                    pw.print(dbStats.cache);
                    i2++;
                    viewRootInstanceCount2 = viewRootInstanceCount2;
                    stats2 = stats2;
                }
                pw.println();
                return;
            }
            String str3 = " ";
            pw.println(" ");
            pw.println(" Objects");
            ActivityThread.printRow(pw, ActivityThread.TWO_COUNT_COLUMNS, "Views:", Long.valueOf(viewInstanceCount), "ViewRootImpl:", Long.valueOf(viewRootInstanceCount));
            ActivityThread.printRow(pw, ActivityThread.TWO_COUNT_COLUMNS, "AppContexts:", Long.valueOf(appContextInstanceCount), "Activities:", Long.valueOf(activityInstanceCount));
            ActivityThread.printRow(pw, ActivityThread.TWO_COUNT_COLUMNS, "Assets:", Integer.valueOf(globalAssetCount), "AssetManagers:", Integer.valueOf(globalAssetManagerCount));
            ActivityThread.printRow(pw, ActivityThread.TWO_COUNT_COLUMNS, "Local Binders:", Integer.valueOf(binderLocalObjectCount), "Proxy Binders:", Integer.valueOf(binderProxyObjectCount));
            ActivityThread.printRow(pw, ActivityThread.TWO_COUNT_COLUMNS, "Parcel memory:", Long.valueOf(parcelSize / 1024), "Parcel count:", Long.valueOf(parcelCount));
            ActivityThread.printRow(pw, ActivityThread.TWO_COUNT_COLUMNS, "Death Recipients:", Integer.valueOf(binderDeathObjectCount), "OpenSSL Sockets:", Long.valueOf(openSslSocketCount));
            ActivityThread.printRow(pw, ActivityThread.ONE_COUNT_COLUMN, "WebViews:", Long.valueOf(webviewInstanceCount));
            pw.println(" ");
            pw.println(" SQL");
            ActivityThread.printRow(pw, ActivityThread.ONE_COUNT_COLUMN, "MEMORY_USED:", Integer.valueOf(stats.memoryUsed / 1024));
            ActivityThread.printRow(pw, ActivityThread.TWO_COUNT_COLUMNS, "PAGECACHE_OVERFLOW:", Integer.valueOf(stats.pageCacheOverflow / 1024), "MALLOC_SIZE:", Integer.valueOf(stats.largestMemAlloc / 1024));
            pw.println(" ");
            int N = stats.dbStats.size();
            if (N > 0) {
                pw.println(" DATABASES");
                int i3 = 5;
                ActivityThread.printRow(pw, DB_INFO_FORMAT, "pgsz", "dbsz", "Lookaside(b)", "cache", "Dbname");
                int i4 = 0;
                while (i4 < N) {
                    SQLiteDebug.DbStats dbStats2 = stats.dbStats.get(i4);
                    int N2 = N;
                    Object[] objArr = new Object[i3];
                    String str4 = str3;
                    objArr[0] = dbStats2.pageSize > 0 ? String.valueOf(dbStats2.pageSize) : str4;
                    objArr[1] = dbStats2.dbSize > 0 ? String.valueOf(dbStats2.dbSize) : str4;
                    objArr[2] = dbStats2.lookaside > 0 ? String.valueOf(dbStats2.lookaside) : str4;
                    objArr[3] = dbStats2.cache;
                    objArr[4] = dbStats2.dbName;
                    ActivityThread.printRow(pw, DB_INFO_FORMAT, objArr);
                    i4++;
                    N = N2;
                    str3 = str4;
                    i3 = 5;
                }
                str = str3;
                i = 2;
            } else {
                str = " ";
                i = 2;
            }
            String assetAlloc = AssetManager.getAssetAllocations();
            if (assetAlloc == null) {
                str2 = str;
            } else {
                str2 = str;
                pw.println(str2);
                pw.println(" Asset Allocations");
                pw.print(assetAlloc);
            }
            if (dumpUnreachable) {
                boolean showContents = !(ActivityThread.this.mBoundApplication == null || (i & ActivityThread.this.mBoundApplication.appInfo.flags) == 0) || Build.IS_DEBUGGABLE;
                pw.println(str2);
                pw.println(" Unreachable memory");
                pw.print(Debug.getUnreachableMemory(100, showContents));
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpMemInfoProto(ParcelFileDescriptor pfd, Debug.MemoryInfo mem, boolean dumpFullInfo, boolean dumpDalvik, boolean dumpSummaryOnly, boolean dumpUnreachable, String[] args) throws IOException {
            ProtoOutputStream proto = new ProtoOutputStream(pfd.getFileDescriptor());
            try {
                dumpMemInfo(proto, mem, dumpFullInfo, dumpDalvik, dumpSummaryOnly, dumpUnreachable);
            } finally {
                proto.flush();
                IoUtils.closeQuietly(pfd);
            }
        }

        private void dumpMemInfo(ProtoOutputStream proto, Debug.MemoryInfo memInfo, boolean dumpFullInfo, boolean dumpDalvik, boolean dumpSummaryOnly, boolean dumpUnreachable) {
            long nativeMax = Debug.getNativeHeapSize() / 1024;
            long nativeAllocated = Debug.getNativeHeapAllocatedSize() / 1024;
            long nativeFree = Debug.getNativeHeapFreeSize() / 1024;
            Runtime runtime = Runtime.getRuntime();
            runtime.gc();
            long dalvikMax = runtime.totalMemory() / 1024;
            long dalvikFree = runtime.freeMemory() / 1024;
            long dalvikAllocated = dalvikMax - dalvikFree;
            Class[] classesToCount = {ContextImpl.class, Activity.class, WebView.class, OpenSSLSocketImpl.class};
            long[] instanceCounts = VMDebug.countInstancesOfClasses(classesToCount, true);
            long appContextInstanceCount = instanceCounts[0];
            long activityInstanceCount = instanceCounts[1];
            long webviewInstanceCount = instanceCounts[2];
            long openSslSocketCount = instanceCounts[3];
            long viewInstanceCount = ViewDebug.getViewInstanceCount();
            long viewRootInstanceCount = ViewDebug.getViewRootImplCount();
            int globalAssetCount = AssetManager.getGlobalAssetCount();
            int globalAssetManagerCount = AssetManager.getGlobalAssetManagerCount();
            int binderLocalObjectCount = Debug.getBinderLocalObjectCount();
            int binderProxyObjectCount = Debug.getBinderProxyObjectCount();
            int binderDeathObjectCount = Debug.getBinderDeathObjectCount();
            long parcelSize = Parcel.getGlobalAllocSize();
            long parcelCount = Parcel.getGlobalAllocCount();
            SQLiteDebug.PagerStats stats = SQLiteDebug.getDatabaseInfo();
            long mToken = proto.start(1146756268033L);
            proto.write(1120986464257L, Process.myPid());
            proto.write(1138166333442L, ActivityThread.this.mBoundApplication != null ? ActivityThread.this.mBoundApplication.processName : "unknown");
            ActivityThread.dumpMemInfoTable(proto, memInfo, dumpDalvik, dumpSummaryOnly, nativeMax, nativeAllocated, nativeFree, dalvikMax, dalvikAllocated, dalvikFree);
            proto.end(mToken);
            long oToken = proto.start(1146756268034L);
            proto.write(1120986464257L, viewInstanceCount);
            proto.write(1120986464258L, viewRootInstanceCount);
            long appContextInstanceCount2 = appContextInstanceCount;
            proto.write(1120986464259L, appContextInstanceCount2);
            long activityInstanceCount2 = activityInstanceCount;
            proto.write(1120986464260L, activityInstanceCount2);
            proto.write(1120986464261L, globalAssetCount);
            proto.write(1120986464262L, globalAssetManagerCount);
            proto.write(1120986464263L, binderLocalObjectCount);
            proto.write(1120986464264L, binderProxyObjectCount);
            proto.write(1112396529673L, parcelSize / 1024);
            proto.write(1120986464266L, parcelCount);
            proto.write(1120986464267L, binderDeathObjectCount);
            proto.write(1120986464268L, openSslSocketCount);
            proto.write(1120986464269L, webviewInstanceCount);
            proto.end(oToken);
            long sToken = proto.start(1146756268035L);
            SQLiteDebug.PagerStats stats2 = stats;
            proto.write(1120986464257L, stats2.memoryUsed / 1024);
            proto.write(1120986464258L, stats2.pageCacheOverflow / 1024);
            proto.write(1120986464259L, stats2.largestMemAlloc / 1024);
            int n = stats2.dbStats.size();
            int i = 0;
            while (true) {
                long activityInstanceCount3 = activityInstanceCount2;
                if (i >= n) {
                    break;
                }
                SQLiteDebug.DbStats dbStats = stats2.dbStats.get(i);
                long dToken = proto.start(2246267895812L);
                proto.write(1138166333441L, dbStats.dbName);
                proto.write(1120986464258L, dbStats.pageSize);
                proto.write(1120986464259L, dbStats.dbSize);
                proto.write(1120986464260L, dbStats.lookaside);
                proto.write(1138166333445L, dbStats.cache);
                proto.end(dToken);
                i++;
                n = n;
                activityInstanceCount2 = activityInstanceCount3;
                appContextInstanceCount2 = appContextInstanceCount2;
                stats2 = stats2;
            }
            proto.end(sToken);
            String assetAlloc = AssetManager.getAssetAllocations();
            if (assetAlloc != null) {
                proto.write(1138166333444L, assetAlloc);
            }
            if (dumpUnreachable) {
                int flags = ActivityThread.this.mBoundApplication == null ? 0 : ActivityThread.this.mBoundApplication.appInfo.flags;
                boolean showContents = (flags & 2) != 0 || Build.IS_DEBUGGABLE;
                proto.write(1138166333445L, Debug.getUnreachableMemory(100, showContents));
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpGfxInfo(ParcelFileDescriptor pfd, String[] args) {
            DumpComponentInfo data = new DumpComponentInfo();
            try {
                try {
                    data.fd = pfd.dup();
                    data.token = null;
                    data.args = args;
                    ActivityThread.this.sendMessage(165, data, 0, 0, true);
                } catch (IOException e) {
                    Slog.w(ActivityThread.TAG, "dumpGfxInfo failed", e);
                }
            } finally {
                IoUtils.closeQuietly(pfd);
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpCacheInfo(ParcelFileDescriptor pfd, String[] args) {
            PropertyInvalidatedCache.dumpCacheInfo(pfd, args);
            IoUtils.closeQuietly(pfd);
        }

        private File getDatabasesDir(Context context) {
            return context.getDatabasePath(FullBackup.APK_TREE_TOKEN).getParentFile();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dumpDatabaseInfo(ParcelFileDescriptor pfd, String[] args, boolean isSystem) {
            PrintWriter pw = new FastPrintWriter(new FileOutputStream(pfd.getFileDescriptor()));
            PrintWriterPrinter printer = new PrintWriterPrinter(pw);
            SQLiteDebug.dump(printer, args, isSystem);
            pw.flush();
        }

        @Override // android.app.IApplicationThread
        public void dumpDbInfo(ParcelFileDescriptor pfd, final String[] args) {
            try {
                if (!ActivityThread.this.mSystemThread) {
                    dumpDatabaseInfo(pfd, args, false);
                    return;
                }
                final ParcelFileDescriptor dup = pfd.dup();
                IoUtils.closeQuietly(pfd);
                AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: android.app.ActivityThread.ApplicationThread.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ApplicationThread.this.dumpDatabaseInfo(dup, args, true);
                        } finally {
                            IoUtils.closeQuietly(dup);
                        }
                    }
                });
            } catch (IOException e) {
                Log.w(ActivityThread.TAG, "Could not dup FD " + pfd.getFileDescriptor().getInt$());
            } finally {
                IoUtils.closeQuietly(pfd);
            }
        }

        @Override // android.app.IApplicationThread
        public void unstableProviderDied(IBinder provider) {
            ActivityThread.this.sendMessage(142, provider);
        }

        @Override // android.app.IApplicationThread
        public void requestAssistContextExtras(IBinder activityToken, IBinder requestToken, int requestType, int sessionId, int flags) {
            RequestAssistContextExtras cmd = new RequestAssistContextExtras();
            cmd.activityToken = activityToken;
            cmd.requestToken = requestToken;
            cmd.requestType = requestType;
            cmd.sessionId = sessionId;
            cmd.flags = flags;
            ActivityThread.this.sendMessage(143, cmd);
        }

        @Override // android.app.IApplicationThread
        public void setCoreSettings(Bundle coreSettings) {
            ActivityThread.this.sendMessage(138, coreSettings);
        }

        @Override // android.app.IApplicationThread
        public void updatePackageCompatibilityInfo(String pkg, CompatibilityInfo info) {
            UpdateCompatibilityData ucd = new UpdateCompatibilityData();
            ucd.pkg = pkg;
            ucd.info = info;
            ActivityThread.this.sendMessage(139, ucd);
        }

        @Override // android.app.IApplicationThread
        public void scheduleTrimMemory(int level) {
            Runnable r = PooledLambda.obtainRunnable(new BiConsumer() { // from class: android.app.ActivityThread$ApplicationThread$$ExternalSyntheticLambda2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((ActivityThread) obj).handleTrimMemory(((Integer) obj2).intValue());
                }
            }, ActivityThread.this, Integer.valueOf(level)).recycleOnUse();
            Choreographer choreographer = Choreographer.getMainThreadInstance();
            if (choreographer != null) {
                choreographer.postCallback(4, r, null);
            } else {
                ActivityThread.this.mH.post(r);
            }
        }

        @Override // android.app.IApplicationThread
        public void scheduleTranslucentConversionComplete(IBinder iBinder, boolean z) {
            ActivityThread.this.sendMessage(144, iBinder, z ? 1 : 0);
        }

        @Override // android.app.IApplicationThread
        public void scheduleOnNewActivityOptions(IBinder token, Bundle options) {
            ActivityThread.this.sendMessage(146, new Pair(token, ActivityOptions.fromBundle(options)));
        }

        @Override // android.app.IApplicationThread
        public void setProcessState(int state) {
            ActivityThread.this.updateProcessState(state, true);
        }

        @Override // android.app.IApplicationThread
        public void setNetworkBlockSeq(long procStateSeq) {
            synchronized (ActivityThread.this.mNetworkPolicyLock) {
                ActivityThread.this.mNetworkBlockSeq = procStateSeq;
            }
        }

        @Override // android.app.IApplicationThread
        public void scheduleInstallProvider(ProviderInfo provider) {
            ActivityThread.this.sendMessage(145, provider);
        }

        @Override // android.app.IApplicationThread
        public final void updateTimePrefs(int timeFormatPreference) {
            Boolean timeFormatPreferenceBool;
            if (timeFormatPreference == 0) {
                timeFormatPreferenceBool = Boolean.FALSE;
            } else if (timeFormatPreference == 1) {
                timeFormatPreferenceBool = Boolean.TRUE;
            } else {
                timeFormatPreferenceBool = null;
            }
            DateFormat.set24HourTimePref(timeFormatPreferenceBool);
        }

        @Override // android.app.IApplicationThread
        public void scheduleEnterAnimationComplete(IBinder token) {
            ActivityThread.this.sendMessage(149, token);
        }

        @Override // android.app.IApplicationThread
        public void notifyCleartextNetwork(byte[] firstPacket) {
            if (StrictMode.vmCleartextNetworkEnabled()) {
                StrictMode.onCleartextNetworkDetected(firstPacket);
            }
        }

        @Override // android.app.IApplicationThread
        public void startBinderTracking() {
            ActivityThread.this.sendMessage(150, null);
        }

        @Override // android.app.IApplicationThread
        public void stopBinderTrackingAndDump(ParcelFileDescriptor pfd) {
            try {
                ActivityThread.this.sendMessage(151, pfd.dup());
            } catch (IOException e) {
            } catch (Throwable th) {
                IoUtils.closeQuietly(pfd);
                throw th;
            }
            IoUtils.closeQuietly(pfd);
        }

        @Override // android.app.IApplicationThread
        public void scheduleLocalVoiceInteractionStarted(IBinder token, IVoiceInteractor voiceInteractor) throws RemoteException {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = token;
            args.arg2 = voiceInteractor;
            ActivityThread.this.sendMessage(154, args);
        }

        @Override // android.app.IApplicationThread
        public void handleTrustStorageUpdate() {
            NetworkSecurityPolicy.getInstance().handleTrustStorageUpdate();
        }

        @Override // android.app.IApplicationThread
        public void scheduleTransaction(ClientTransaction transaction) throws RemoteException {
            ActivityThread.this.scheduleTransaction(transaction);
        }

        @Override // android.app.IApplicationThread
        public void setDynamicalLogEnable(boolean on) {
            Slog.v(ActivityThread.TAG, "setDynamicalLogEnable on " + on);
            ActivityThread.this.mOplusActivityThreadExt.setDynamicalLogEnable(on);
        }

        @Override // android.app.IApplicationThread
        public void setDynamicalLogConfig(List<String> configs) {
            ActivityThread.this.mOplusActivityThreadExt.setDynamicalLogConfig(configs);
        }

        @Override // android.app.IApplicationThread
        public void getBroadcastState(int flag) {
            int state;
            if ((524288 & flag) != 0) {
                if ((flag & 268435456) != 0) {
                    Slog.v(ActivityThread.TAG, "getBroadcastState mOplusFgBrState " + ActivityThread.mOplusFgBrState);
                    state = ActivityThread.mOplusFgBrState;
                } else {
                    Slog.v(ActivityThread.TAG, "getBroadcastState mOplusBgBrState " + ActivityThread.mOplusBgBrState);
                    state = ActivityThread.mOplusBgBrState;
                }
            } else if ((flag & 268435456) != 0) {
                Slog.v(ActivityThread.TAG, "getBroadcastState mFgBrState " + ActivityThread.mFgBrState);
                state = ActivityThread.mFgBrState;
            } else {
                Slog.v(ActivityThread.TAG, "getBroadcastState mBgBrState " + ActivityThread.mBgBrState);
                state = ActivityThread.mBgBrState;
            }
            if (state == 1) {
                try {
                    Looper mainLooper = Looper.getMainLooper();
                    MessageQueue queue = mainLooper.getQueue();
                    queue.dumpMessage();
                } catch (Exception e) {
                    Log.e(ActivityThread.TAG, "Failure dump msg " + e);
                }
            }
        }

        @Override // android.app.IApplicationThread
        public void requestDirectActions(IBinder activityToken, IVoiceInteractor interactor, RemoteCallback cancellationCallback, RemoteCallback callback) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            if (cancellationCallback != null) {
                ICancellationSignal transport = ActivityThread.this.createSafeCancellationTransport(cancellationSignal);
                Bundle cancellationResult = new Bundle();
                cancellationResult.putBinder(VoiceInteractor.KEY_CANCELLATION_SIGNAL, transport.asBinder());
                cancellationCallback.sendResult(cancellationResult);
            }
            ActivityThread.this.mH.sendMessage(PooledLambda.obtainMessage(new HexConsumer() { // from class: android.app.ActivityThread$ApplicationThread$$ExternalSyntheticLambda0
                @Override // com.android.internal.util.function.HexConsumer
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                    ((ActivityThread) obj).handleRequestDirectActions((IBinder) obj2, (IVoiceInteractor) obj3, (CancellationSignal) obj4, (RemoteCallback) obj5, ((Integer) obj6).intValue());
                }
            }, ActivityThread.this, activityToken, interactor, cancellationSignal, callback, 7));
        }

        @Override // android.app.IApplicationThread
        public void performDirectAction(IBinder activityToken, String actionId, Bundle arguments, RemoteCallback cancellationCallback, RemoteCallback resultCallback) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            if (cancellationCallback != null) {
                ICancellationSignal transport = ActivityThread.this.createSafeCancellationTransport(cancellationSignal);
                Bundle cancellationResult = new Bundle();
                cancellationResult.putBinder(VoiceInteractor.KEY_CANCELLATION_SIGNAL, transport.asBinder());
                cancellationCallback.sendResult(cancellationResult);
            }
            ActivityThread.this.mH.sendMessage(PooledLambda.obtainMessage(new HexConsumer() { // from class: android.app.ActivityThread$ApplicationThread$$ExternalSyntheticLambda1
                @Override // com.android.internal.util.function.HexConsumer
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                    ((ActivityThread) obj).handlePerformDirectAction((IBinder) obj2, (String) obj3, (Bundle) obj4, (CancellationSignal) obj5, (RemoteCallback) obj6);
                }
            }, ActivityThread.this, activityToken, actionId, arguments, cancellationSignal, resultCallback));
        }

        @Override // android.app.IApplicationThread
        public void enableActivityThreadLog(boolean isEnable) {
            ActivityThread.this.mSocExt.enableActivityThreadLog(isEnable);
        }

        @Override // android.app.IApplicationThread
        public void dumpMessage(boolean dumpAll) {
            ActivityThread.this.mSocExt.dumpMessage(dumpAll);
        }

        @Override // android.app.IApplicationThread
        public void enableProcessMainThreadLooperLog() {
            ActivityThread.this.mSocExt.enableProcessMainThreadLooperLog();
        }

        @Override // android.app.IApplicationThread
        public void notifyContentProviderPublishStatus(ContentProviderHolder holder, String authorities, int userId, boolean published) {
            String[] auths = authorities.split(NavigationBarInflaterView.GRAVITY_SEPARATOR);
            for (String auth : auths) {
                ProviderKey key = ActivityThread.this.getGetProviderKey(auth, userId);
                synchronized (key.mLock) {
                    key.mHolder = holder;
                    key.mLock.notifyAll();
                }
            }
        }

        @Override // android.app.IApplicationThread
        public void instrumentWithoutRestart(ComponentName instrumentationName, Bundle instrumentationArgs, IInstrumentationWatcher instrumentationWatcher, IUiAutomationConnection instrumentationUiConnection, ApplicationInfo targetInfo) {
            AppBindData data = new AppBindData();
            data.instrumentationName = instrumentationName;
            data.instrumentationArgs = instrumentationArgs;
            data.instrumentationWatcher = instrumentationWatcher;
            data.instrumentationUiAutomationConnection = instrumentationUiConnection;
            data.appInfo = targetInfo;
            ActivityThread.this.sendMessage(170, data);
        }

        @Override // android.app.IApplicationThread
        public void updateUiTranslationState(IBinder activityToken, int state, TranslationSpec sourceSpec, TranslationSpec targetSpec, List<AutofillId> viewIds, UiTranslationSpec uiTranslationSpec) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = activityToken;
            args.arg2 = Integer.valueOf(state);
            args.arg3 = sourceSpec;
            args.arg4 = targetSpec;
            args.arg5 = viewIds;
            args.arg6 = uiTranslationSpec;
            ActivityThread.this.sendMessage(163, args);
        }

        @Override // android.app.IApplicationThread
        public void oplusScheduleReceiver(Intent intent, ActivityInfo info, CompatibilityInfo compatInfo, int resultCode, String data, Bundle extras, boolean sync, int sendingUser, int processState, int hasCode) {
            if (intent == null) {
                Slog.w(ActivityThread.TAG, "oplusScheduleReceiver: illegal intent!");
                return;
            }
            ActivityThread.this.updateProcessState(processState, false);
            ReceiverData r = new ReceiverData(intent, resultCode, data, extras, sync, false, ActivityThread.this.mAppThread.asBinder(), sendingUser);
            if (ActivityThread.DEBUG_BROADCAST) {
                Slog.i(ActivityThread.TAG, "new ReceiverData() hasCode " + hasCode);
            }
            r.mPendingResultExt.setHascode(hasCode);
            r.info = info;
            r.compatInfo = compatInfo;
            if (sync) {
                int flag = intent.getFlags();
                r.mPendingResultExt.setBroadcastState(flag, 1);
            }
            if (ActivityThread.DEBUG_BROADCAST_LIGHT || Intent.ACTION_REMOTE_INTENT.equals(intent.getAction())) {
                Slog.v(ActivityThread.TAG, "scheduleReceiver info = " + info + " intent = " + intent + " sync = " + sync + " hasCode = " + hasCode);
            }
            ActivityThread.this.sendMessage(113, r);
        }

        @Override // android.app.IApplicationThread.Stub, android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (ActivityThread.this.mOplusActivityThreadExt != null && ActivityThread.this.mOplusActivityThreadExt.onTransact(code, data, reply, flags)) {
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SafeCancellationTransport createSafeCancellationTransport(CancellationSignal cancellationSignal) {
        SafeCancellationTransport transport;
        synchronized (this) {
            if (this.mRemoteCancellations == null) {
                this.mRemoteCancellations = new ArrayMap();
            }
            transport = new SafeCancellationTransport(this, cancellationSignal);
            this.mRemoteCancellations.put(transport, cancellationSignal);
        }
        return transport;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CancellationSignal removeSafeCancellationTransport(SafeCancellationTransport transport) {
        CancellationSignal cancellation;
        synchronized (this) {
            cancellation = this.mRemoteCancellations.remove(transport);
            if (this.mRemoteCancellations.isEmpty()) {
                this.mRemoteCancellations = null;
            }
        }
        return cancellation;
    }

    private static final class SafeCancellationTransport extends ICancellationSignal.Stub {
        private final WeakReference<ActivityThread> mWeakActivityThread;

        SafeCancellationTransport(ActivityThread activityThread, CancellationSignal cancellation) {
            this.mWeakActivityThread = new WeakReference<>(activityThread);
        }

        @Override // android.os.ICancellationSignal
        public void cancel() {
            CancellationSignal cancellation;
            ActivityThread activityThread = this.mWeakActivityThread.get();
            if (activityThread != null && (cancellation = activityThread.removeSafeCancellationTransport(this)) != null) {
                cancellation.cancel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void throwRemoteServiceException(String message, int typeId, Bundle extras) {
        switch (typeId) {
            case 1:
                throw generateForegroundServiceDidNotStartInTimeException(message, extras);
            case 2:
                throw new RemoteServiceException.CannotPostForegroundServiceNotificationException(message);
            case 3:
                throw new RemoteServiceException.BadForegroundServiceNotificationException(message);
            case 4:
                throw new RemoteServiceException.MissingRequestPasswordComplexityPermissionException(message);
            case 5:
                throw new RemoteServiceException.CrashedByAdbException(message);
            default:
                throw new RemoteServiceException(message + " (with unwknown typeId:" + typeId + NavigationBarInflaterView.KEY_CODE_END);
        }
    }

    private RemoteServiceException.ForegroundServiceDidNotStartInTimeException generateForegroundServiceDidNotStartInTimeException(String message, Bundle extras) {
        String serviceClassName = RemoteServiceException.ForegroundServiceDidNotStartInTimeException.getServiceClassNameFromExtras(extras);
        Exception inner = serviceClassName == null ? null : Service.getStartForegroundServiceStackTrace(serviceClassName);
        throw new RemoteServiceException.ForegroundServiceDidNotStartInTimeException(message, inner);
    }

    class H extends Handler {
        public static final int APPLICATION_INFO_CHANGED = 156;
        public static final int ATTACH_AGENT = 155;
        public static final int ATTACH_STARTUP_AGENTS = 162;
        public static final int BIND_APPLICATION = 110;
        public static final int BIND_SERVICE = 121;
        public static final int CLEAN_UP_CONTEXT = 119;
        public static final int CONFIGURATION_CHANGED = 118;
        public static final int CREATE_BACKUP_AGENT = 128;
        public static final int CREATE_SERVICE = 114;
        public static final int DESTROY_BACKUP_AGENT = 129;
        public static final int DISPATCH_PACKAGE_BROADCAST = 133;
        public static final int DUMP_ACTIVITY = 136;
        public static final int DUMP_GFXINFO = 165;
        public static final int DUMP_HEAP = 135;
        public static final int DUMP_PROVIDER = 141;
        public static final int DUMP_RESOURCES = 166;
        public static final int DUMP_SERVICE = 123;
        public static final int ENTER_ANIMATION_COMPLETE = 149;
        public static final int EXECUTE_TRANSACTION = 159;
        public static final int EXIT_APPLICATION = 111;
        public static final int FINISH_INSTRUMENTATION_WITHOUT_RESTART = 171;
        public static final int GC_WHEN_IDLE = 120;
        public static final int INSTALL_PROVIDER = 145;
        public static final int INSTRUMENT_WITHOUT_RESTART = 170;
        public static final int LOCAL_VOICE_INTERACTION_STARTED = 154;
        public static final int LOW_MEMORY = 124;
        public static final int ON_NEW_ACTIVITY_OPTIONS = 146;
        public static final int PROFILER_CONTROL = 127;
        public static final int PURGE_RESOURCES = 161;
        public static final int RECEIVER = 113;
        public static final int RELAUNCH_ACTIVITY = 160;
        public static final int REMOVE_PROVIDER = 131;
        public static final int REQUEST_ASSIST_CONTEXT_EXTRAS = 143;
        public static final int RUN_ISOLATED_ENTRY_POINT = 158;
        public static final int SCHEDULE_CRASH = 134;
        public static final int SERVICE_ARGS = 115;
        public static final int SET_CONTENT_CAPTURE_OPTIONS_CALLBACK = 164;
        public static final int SET_CORE_SETTINGS = 138;
        public static final int SLEEPING = 137;
        public static final int START_BINDER_TRACKING = 150;
        public static final int STOP_BINDER_TRACKING_AND_DUMP = 151;
        public static final int STOP_SERVICE = 116;
        public static final int SUICIDE = 130;
        public static final int TRANSLUCENT_CONVERSION_COMPLETE = 144;
        public static final int UNBIND_SERVICE = 122;
        public static final int UNSTABLE_PROVIDER_DIED = 142;
        public static final int UPDATE_PACKAGE_COMPATIBILITY_INFO = 139;
        public static final int UPDATE_UI_TRANSLATION_STATE = 163;

        H() {
        }

        String codeToString(int code) {
            if (ActivityThread.DEBUG_MESSAGES) {
                switch (code) {
                    case 110:
                        return "BIND_APPLICATION";
                    case 111:
                        return "EXIT_APPLICATION";
                    case 113:
                        return "RECEIVER";
                    case 114:
                        return "CREATE_SERVICE";
                    case 115:
                        return "SERVICE_ARGS";
                    case 116:
                        return "STOP_SERVICE";
                    case 118:
                        return "CONFIGURATION_CHANGED";
                    case 119:
                        return "CLEAN_UP_CONTEXT";
                    case 120:
                        return "GC_WHEN_IDLE";
                    case 121:
                        return "BIND_SERVICE";
                    case 122:
                        return "UNBIND_SERVICE";
                    case 123:
                        return "DUMP_SERVICE";
                    case 124:
                        return "LOW_MEMORY";
                    case 127:
                        return "PROFILER_CONTROL";
                    case 128:
                        return "CREATE_BACKUP_AGENT";
                    case 129:
                        return "DESTROY_BACKUP_AGENT";
                    case 130:
                        return "SUICIDE";
                    case 131:
                        return "REMOVE_PROVIDER";
                    case 133:
                        return "DISPATCH_PACKAGE_BROADCAST";
                    case 134:
                        return "SCHEDULE_CRASH";
                    case 135:
                        return "DUMP_HEAP";
                    case 136:
                        return "DUMP_ACTIVITY";
                    case 138:
                        return "SET_CORE_SETTINGS";
                    case 139:
                        return "UPDATE_PACKAGE_COMPATIBILITY_INFO";
                    case 141:
                        return "DUMP_PROVIDER";
                    case 142:
                        return "UNSTABLE_PROVIDER_DIED";
                    case 143:
                        return "REQUEST_ASSIST_CONTEXT_EXTRAS";
                    case 144:
                        return "TRANSLUCENT_CONVERSION_COMPLETE";
                    case 145:
                        return "INSTALL_PROVIDER";
                    case 146:
                        return "ON_NEW_ACTIVITY_OPTIONS";
                    case 149:
                        return "ENTER_ANIMATION_COMPLETE";
                    case 154:
                        return "LOCAL_VOICE_INTERACTION_STARTED";
                    case 155:
                        return "ATTACH_AGENT";
                    case 156:
                        return "APPLICATION_INFO_CHANGED";
                    case 158:
                        return "RUN_ISOLATED_ENTRY_POINT";
                    case 159:
                        return "EXECUTE_TRANSACTION";
                    case 160:
                        return "RELAUNCH_ACTIVITY";
                    case 161:
                        return "PURGE_RESOURCES";
                    case 162:
                        return "ATTACH_STARTUP_AGENTS";
                    case 163:
                        return "UPDATE_UI_TRANSLATION_STATE";
                    case 164:
                        return "SET_CONTENT_CAPTURE_OPTIONS_CALLBACK";
                    case 165:
                        return "DUMP GFXINFO";
                    case 166:
                        return "DUMP_RESOURCES";
                    case 170:
                        return "INSTRUMENT_WITHOUT_RESTART";
                    case 171:
                        return "FINISH_INSTRUMENTATION_WITHOUT_RESTART";
                }
            }
            return Integer.toString(code);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Exception {
            if (ActivityThread.DEBUG_MESSAGES) {
                Slog.v(ActivityThread.TAG, ">>> handling: " + codeToString(msg.what));
            }
            switch (msg.what) {
                case 110:
                    Trace.traceBegin(64L, "bindApplication");
                    AppBindData data = (AppBindData) msg.obj;
                    ActivityThread.this.handleBindApplication(data);
                    Trace.traceEnd(64L);
                    break;
                case 111:
                    if (ActivityThread.this.mInitialApplication != null) {
                        ActivityThread.this.mInitialApplication.onTerminate();
                    }
                    Looper.myLooper().quit();
                    break;
                case 113:
                    if (Trace.isTagEnabled(64L)) {
                        ReceiverData rec = (ReceiverData) msg.obj;
                        if (rec.intent != null) {
                            Trace.traceBegin(64L, "broadcastReceiveComp: " + rec.intent.getAction());
                        } else {
                            Trace.traceBegin(64L, "broadcastReceiveComp");
                        }
                    }
                    ActivityThread.this.handleReceiver((ReceiverData) msg.obj);
                    Trace.traceEnd(64L);
                    break;
                case 114:
                    if (Trace.isTagEnabled(64L)) {
                        Trace.traceBegin(64L, "serviceCreate: " + String.valueOf(msg.obj));
                    }
                    ActivityThread.this.handleCreateService((CreateServiceData) msg.obj);
                    Trace.traceEnd(64L);
                    break;
                case 115:
                    if (Trace.isTagEnabled(64L)) {
                        Trace.traceBegin(64L, "serviceStart: " + String.valueOf(msg.obj));
                    }
                    ActivityThread.this.handleServiceArgs((ServiceArgsData) msg.obj);
                    Trace.traceEnd(64L);
                    break;
                case 116:
                    Trace.traceBegin(64L, "serviceStop");
                    ActivityThread.this.handleStopService((IBinder) msg.obj);
                    ActivityThread.this.schedulePurgeIdler();
                    Trace.traceEnd(64L);
                    break;
                case 118:
                    ActivityThread.this.mConfigurationController.handleConfigurationChanged((Configuration) msg.obj);
                    break;
                case 119:
                    ContextCleanupInfo cci = (ContextCleanupInfo) msg.obj;
                    cci.context.performFinalCleanup(cci.who, cci.what);
                    break;
                case 120:
                    ActivityThread.this.scheduleGcIdler();
                    break;
                case 121:
                    Trace.traceBegin(64L, "serviceBind");
                    ActivityThread.this.handleBindService((BindServiceData) msg.obj);
                    Trace.traceEnd(64L);
                    break;
                case 122:
                    Trace.traceBegin(64L, "serviceUnbind");
                    ActivityThread.this.handleUnbindService((BindServiceData) msg.obj);
                    ActivityThread.this.schedulePurgeIdler();
                    Trace.traceEnd(64L);
                    break;
                case 123:
                    ActivityThread.this.handleDumpService((DumpComponentInfo) msg.obj);
                    break;
                case 124:
                    Trace.traceBegin(64L, "lowMemory");
                    ActivityThread.this.handleLowMemory();
                    Trace.traceEnd(64L);
                    break;
                case 127:
                    ActivityThread.this.handleProfilerControl(msg.arg1 != 0, (ProfilerInfo) msg.obj, msg.arg2);
                    break;
                case 128:
                    Trace.traceBegin(64L, "backupCreateAgent");
                    ActivityThread.this.handleCreateBackupAgent((CreateBackupAgentData) msg.obj);
                    Trace.traceEnd(64L);
                    break;
                case 129:
                    Trace.traceBegin(64L, "backupDestroyAgent");
                    ActivityThread.this.handleDestroyBackupAgent((CreateBackupAgentData) msg.obj);
                    Trace.traceEnd(64L);
                    break;
                case 130:
                    Process.killProcess(Process.myPid());
                    break;
                case 131:
                    Trace.traceBegin(64L, "providerRemove");
                    ActivityThread.this.completeRemoveProvider((ProviderRefCount) msg.obj);
                    Trace.traceEnd(64L);
                    break;
                case 133:
                    Trace.traceBegin(64L, "broadcastPackage");
                    ActivityThread.this.handleDispatchPackageBroadcast(msg.arg1, (String[]) msg.obj);
                    Trace.traceEnd(64L);
                    break;
                case 134:
                    SomeArgs args = (SomeArgs) msg.obj;
                    String message = (String) args.arg1;
                    Bundle extras = (Bundle) args.arg2;
                    args.recycle();
                    ActivityThread.this.throwRemoteServiceException(message, msg.arg1, extras);
                    break;
                case 135:
                    ActivityThread.handleDumpHeap((DumpHeapData) msg.obj);
                    break;
                case 136:
                    ActivityThread.this.handleDumpActivity((DumpComponentInfo) msg.obj);
                    break;
                case 138:
                    Trace.traceBegin(64L, "setCoreSettings");
                    ActivityThread.this.handleSetCoreSettings((Bundle) msg.obj);
                    Trace.traceEnd(64L);
                    break;
                case 139:
                    ActivityThread.this.handleUpdatePackageCompatibilityInfo((UpdateCompatibilityData) msg.obj);
                    break;
                case 141:
                    ActivityThread.this.handleDumpProvider((DumpComponentInfo) msg.obj);
                    break;
                case 142:
                    ActivityThread.this.handleUnstableProviderDied((IBinder) msg.obj, false);
                    break;
                case 143:
                    ActivityThread.this.handleRequestAssistContextExtras((RequestAssistContextExtras) msg.obj);
                    break;
                case 144:
                    ActivityThread.this.handleTranslucentConversionComplete((IBinder) msg.obj, msg.arg1 == 1);
                    break;
                case 145:
                    ActivityThread.this.handleInstallProvider((ProviderInfo) msg.obj);
                    break;
                case 146:
                    Pair<IBinder, ActivityOptions> pair = (Pair) msg.obj;
                    ActivityThread.this.onNewActivityOptions(pair.first, pair.second);
                    break;
                case 149:
                    ActivityThread.this.handleEnterAnimationComplete((IBinder) msg.obj);
                    break;
                case 150:
                    ActivityThread.this.handleStartBinderTracking();
                    break;
                case 151:
                    ActivityThread.this.handleStopBinderTrackingAndDump((ParcelFileDescriptor) msg.obj);
                    break;
                case 154:
                    ActivityThread.this.handleLocalVoiceInteractionStarted((IBinder) ((SomeArgs) msg.obj).arg1, (IVoiceInteractor) ((SomeArgs) msg.obj).arg2);
                    break;
                case 155:
                    Application app = ActivityThread.this.getApplication();
                    ActivityThread.handleAttachAgent((String) msg.obj, app != null ? app.mLoadedApk : null);
                    break;
                case 156:
                    ActivityThread.this.handleApplicationInfoChanged((ApplicationInfo) msg.obj);
                    break;
                case 158:
                    ActivityThread.this.handleRunIsolatedEntryPoint((String) ((SomeArgs) msg.obj).arg1, (String[]) ((SomeArgs) msg.obj).arg2);
                    break;
                case 159:
                    ClientTransaction transaction = (ClientTransaction) msg.obj;
                    ActivityThread.this.mOplusActivityThreadExt.setImportMessage(true);
                    ActivityThread.this.mTransactionExecutor.execute(transaction);
                    if (ActivityThread.isSystem()) {
                        transaction.recycle();
                        break;
                    }
                    break;
                case 160:
                    ActivityThread.this.handleRelaunchActivityLocally((IBinder) msg.obj);
                    break;
                case 161:
                    ActivityThread.this.schedulePurgeIdler();
                    break;
                case 162:
                    ActivityThread.handleAttachStartupAgents((String) msg.obj);
                    break;
                case 163:
                    SomeArgs args2 = (SomeArgs) msg.obj;
                    ActivityThread.this.updateUiTranslationState((IBinder) args2.arg1, ((Integer) args2.arg2).intValue(), (TranslationSpec) args2.arg3, (TranslationSpec) args2.arg4, (List) args2.arg5, (UiTranslationSpec) args2.arg6);
                    break;
                case 164:
                    ActivityThread.this.handleSetContentCaptureOptionsCallback((String) msg.obj);
                    break;
                case 165:
                    ActivityThread.this.handleDumpGfxInfo((DumpComponentInfo) msg.obj);
                    break;
                case 166:
                    ActivityThread.this.handleDumpResources((DumpResourcesData) msg.obj);
                    break;
                case 170:
                    ActivityThread.this.handleInstrumentWithoutRestart((AppBindData) msg.obj);
                    break;
                case 171:
                    ActivityThread.this.handleFinishInstrumentationWithoutRestart();
                    break;
            }
            Object obj = msg.obj;
            if (obj instanceof SomeArgs) {
                ((SomeArgs) obj).recycle();
            }
            if (ActivityThread.DEBUG_MESSAGES) {
                Slog.v(ActivityThread.TAG, "<<< done: " + codeToString(msg.what));
            }
        }
    }

    private class Idler implements MessageQueue.IdleHandler {
        private Idler() {
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            ActivityClientRecord a = ActivityThread.this.mNewActivities;
            boolean stopProfiling = false;
            if (ActivityThread.this.mBoundApplication != null && ActivityThread.this.mProfiler.profileFd != null && ActivityThread.this.mProfiler.autoStopProfiler) {
                stopProfiling = true;
            }
            if (a != null) {
                ActivityThread.this.mNewActivities = null;
                ActivityClient ac = ActivityClient.getInstance();
                do {
                    if (ActivityThread.localLOGV) {
                        Slog.v(ActivityThread.TAG, "Reporting idle of " + a + " finished=" + (a.activity != null && a.activity.mFinished));
                    }
                    if (a.activity != null && !a.activity.mFinished) {
                        ac.activityIdle(a.token, a.createdConfig, stopProfiling);
                        a.createdConfig = null;
                    }
                    ActivityClientRecord prev = a;
                    a = a.nextIdle;
                    prev.nextIdle = null;
                } while (a != null);
            }
            if (stopProfiling) {
                ActivityThread.this.mProfiler.stopProfiling();
            }
            return false;
        }
    }

    final class GcIdler implements MessageQueue.IdleHandler {
        GcIdler() {
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            ActivityThread.this.doGcIfNeeded();
            ActivityThread.this.purgePendingResources();
            return false;
        }
    }

    final class PurgeIdler implements MessageQueue.IdleHandler {
        PurgeIdler() {
        }

        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            ActivityThread.this.purgePendingResources();
            return false;
        }
    }

    public static ActivityThread currentActivityThread() {
        return sCurrentActivityThread;
    }

    public static boolean isSystem() {
        if (sCurrentActivityThread != null) {
            return sCurrentActivityThread.mSystemThread;
        }
        return false;
    }

    public static String currentOpPackageName() {
        ActivityThread am = currentActivityThread();
        if (am == null || am.getApplication() == null) {
            return null;
        }
        return am.getApplication().getOpPackageName();
    }

    public static AttributionSource currentAttributionSource() {
        ActivityThread am = currentActivityThread();
        if (am == null || am.getApplication() == null) {
            return null;
        }
        return am.getApplication().getAttributionSource();
    }

    public static String currentPackageName() {
        AppBindData appBindData;
        ActivityThread am = currentActivityThread();
        if (am == null || (appBindData = am.mBoundApplication) == null) {
            return null;
        }
        return appBindData.appInfo.packageName;
    }

    public static String currentProcessName() {
        AppBindData appBindData;
        ActivityThread am = currentActivityThread();
        if (am == null || (appBindData = am.mBoundApplication) == null) {
            return null;
        }
        return appBindData.processName;
    }

    public static Application currentApplication() {
        ActivityThread am = currentActivityThread();
        if (am != null) {
            return am.mInitialApplication;
        }
        return null;
    }

    public static IPackageManager getPackageManager() {
        if (sPackageManager != null) {
            return sPackageManager;
        }
        IBinder b = ServiceManager.getService("package");
        sPackageManager = IPackageManager.Stub.asInterface(b);
        return sPackageManager;
    }

    public static IPermissionManager getPermissionManager() {
        if (sPermissionManager != null) {
            return sPermissionManager;
        }
        IBinder b = ServiceManager.getService("permissionmgr");
        sPermissionManager = IPermissionManager.Stub.asInterface(b);
        return sPermissionManager;
    }

    Resources getTopLevelResources(String resDir, String[] splitResDirs, String[] legacyOverlayDirs, String[] overlayPaths, String[] libDirs, LoadedApk pkgInfo, Configuration overrideConfig) {
        return this.mResourcesManager.getResources(null, resDir, splitResDirs, legacyOverlayDirs, overlayPaths, libDirs, null, overrideConfig, pkgInfo.getCompatibilityInfo(), pkgInfo.getClassLoader(), null);
    }

    public Handler getHandler() {
        return this.mH;
    }

    public final LoadedApk getPackageInfo(String packageName, CompatibilityInfo compatInfo, int flags) {
        return getPackageInfo(packageName, compatInfo, flags, UserHandle.myUserId());
    }

    public final LoadedApk getPackageInfo(String packageName, CompatibilityInfo compatInfo, int flags, int userId) {
        WeakReference<LoadedApk> ref;
        boolean differentUser = UserHandle.myUserId() != userId;
        ApplicationInfo ai = PackageManager.getApplicationInfoAsUserCached(packageName, 268436480L, userId < 0 ? UserHandle.myUserId() : userId);
        synchronized (this.mResourcesManager) {
            if (differentUser) {
                ref = null;
            } else if ((flags & 1) != 0) {
                ref = this.mPackages.get(packageName);
            } else {
                ref = this.mResourcePackages.get(packageName);
            }
            LoadedApk packageInfo = ref != null ? ref.get() : null;
            if (ai != null && packageInfo != null) {
                if (!isLoadedApkResourceDirsUpToDate(packageInfo, ai)) {
                    List<String> oldPaths = new ArrayList<>();
                    LoadedApk.makePaths(this, ai, oldPaths);
                    packageInfo.updateApplicationInfo(ai, oldPaths);
                }
                if (packageInfo.isSecurityViolation() && (flags & 2) == 0) {
                    throw new SecurityException("Requesting code from " + packageName + " to be run in process " + this.mBoundApplication.processName + "/" + this.mBoundApplication.appInfo.uid);
                }
                return packageInfo;
            }
            if (ai == null) {
                return null;
            }
            return getPackageInfo(ai, compatInfo, flags);
        }
    }

    public final LoadedApk getPackageInfo(ApplicationInfo ai, CompatibilityInfo compatInfo, int flags) {
        boolean includeCode = (flags & 1) != 0;
        boolean securityViolation = includeCode && ai.uid != 0 && ai.uid != 1000 && (this.mBoundApplication == null || !UserHandle.isSameApp(ai.uid, this.mBoundApplication.appInfo.uid));
        boolean registerPackage = includeCode && (1073741824 & flags) != 0;
        if ((flags & 3) == 1 && securityViolation) {
            String msg = "Requesting code from " + ai.packageName + " (with uid " + ai.uid + NavigationBarInflaterView.KEY_CODE_END;
            if (this.mBoundApplication != null) {
                msg = msg + " to be run in process " + this.mBoundApplication.processName + " (with uid " + this.mBoundApplication.appInfo.uid + NavigationBarInflaterView.KEY_CODE_END;
            }
            throw new SecurityException(msg);
        }
        return getPackageInfo(ai, compatInfo, null, securityViolation, includeCode, registerPackage);
    }

    @Override // android.app.ClientTransactionHandler
    public final LoadedApk getPackageInfoNoCheck(ApplicationInfo ai, CompatibilityInfo compatInfo) {
        return getPackageInfo(ai, compatInfo, null, false, true, false);
    }

    private LoadedApk getPackageInfoNoCheck(ApplicationInfo ai, CompatibilityInfo compatInfo, boolean isSdkSandbox) {
        return getPackageInfo(ai, compatInfo, null, false, true, false, isSdkSandbox);
    }

    public final LoadedApk peekPackageInfo(String packageName, boolean includeCode) {
        WeakReference<LoadedApk> ref;
        LoadedApk loadedApk;
        synchronized (this.mResourcesManager) {
            if (includeCode) {
                ref = this.mPackages.get(packageName);
            } else {
                ref = this.mResourcePackages.get(packageName);
            }
            loadedApk = ref != null ? ref.get() : null;
        }
        return loadedApk;
    }

    private LoadedApk getPackageInfo(ApplicationInfo aInfo, CompatibilityInfo compatInfo, ClassLoader baseLoader, boolean securityViolation, boolean includeCode, boolean registerPackage) {
        return getPackageInfo(aInfo, compatInfo, baseLoader, securityViolation, includeCode, registerPackage, false);
    }

    private LoadedApk getPackageInfo(ApplicationInfo aInfo, CompatibilityInfo compatInfo, ClassLoader baseLoader, boolean securityViolation, boolean includeCode, boolean registerPackage, boolean isSdkSandbox) {
        WeakReference<LoadedApk> ref;
        boolean differentUser = UserHandle.myUserId() != UserHandle.getUserId(aInfo.uid);
        synchronized (this.mResourcesManager) {
            try {
                if (differentUser || isSdkSandbox) {
                    ref = null;
                } else if (includeCode) {
                    ref = this.mPackages.get(aInfo.packageName);
                } else {
                    ref = this.mResourcePackages.get(aInfo.packageName);
                }
                String str = null;
                LoadedApk packageInfo = ref != null ? ref.get() : null;
                if (packageInfo != null) {
                    if (!isLoadedApkResourceDirsUpToDate(packageInfo, aInfo)) {
                        if (packageInfo.getApplicationInfo().createTimestamp > aInfo.createTimestamp) {
                            Slog.w(TAG, "getPackageInfo() called with an older ApplicationInfo than the cached version for package " + aInfo.packageName);
                        } else {
                            Slog.v(TAG, "getPackageInfo() caused update to cached ApplicationInfo for package " + aInfo.packageName);
                            List<String> oldPaths = new ArrayList<>();
                            LoadedApk.makePaths(this, aInfo, oldPaths);
                            packageInfo.updateApplicationInfo(aInfo, oldPaths);
                        }
                    }
                    return packageInfo;
                }
                if (localLOGV) {
                    StringBuilder sbAppend = new StringBuilder().append(includeCode ? "Loading code package " : "Loading resource-only package ").append(aInfo.packageName).append(" (in ");
                    AppBindData appBindData = this.mBoundApplication;
                    if (appBindData != null) {
                        str = appBindData.processName;
                    }
                    Slog.v(TAG, sbAppend.append(str).append(NavigationBarInflaterView.KEY_CODE_END).toString());
                }
                LoadedApk packageInfo2 = new LoadedApk(this, aInfo, compatInfo, baseLoader, securityViolation, includeCode && (aInfo.flags & 4) != 0, registerPackage);
                if (this.mSystemThread && "android".equals(aInfo.packageName)) {
                    packageInfo2.installSystemApplicationInfo(aInfo, getSystemContext().mPackageInfo.getClassLoader());
                }
                if (!differentUser && !isSdkSandbox) {
                    if (includeCode) {
                        this.mPackages.put(aInfo.packageName, new WeakReference<>(packageInfo2));
                    } else {
                        this.mResourcePackages.put(aInfo.packageName, new WeakReference<>(packageInfo2));
                    }
                }
                return packageInfo2;
            } finally {
            }
        }
    }

    private static boolean isLoadedApkResourceDirsUpToDate(LoadedApk loadedApk, ApplicationInfo appInfo) {
        Resources packageResources = loadedApk.mResources;
        boolean resourceDirsUpToDate = Arrays.equals(ArrayUtils.defeatNullable(appInfo.resourceDirs), ArrayUtils.defeatNullable(loadedApk.getOverlayDirs()));
        boolean overlayPathsUpToDate = Arrays.equals(ArrayUtils.defeatNullable(appInfo.overlayPaths), ArrayUtils.defeatNullable(loadedApk.getOverlayPaths()));
        return (packageResources == null || packageResources.getAssets().isUpToDate()) && resourceDirsUpToDate && overlayPathsUpToDate;
    }

    ActivityThread() {
        H h = new H();
        this.mH = h;
        this.mExecutor = new HandlerExecutor(h);
        this.mActivities = new ArrayMap<>();
        this.mPendingOverrideConfigs = new ArrayMap<>();
        this.mActivitiesToBeDestroyed = Collections.synchronizedMap(new ArrayMap());
        this.mNewActivities = null;
        this.mNumVisibleActivities = 0;
        this.mNumLaunchingActivities = new AtomicInteger();
        this.mLastProcessState = -1;
        this.mLastAssistStructures = new ArrayList<>();
        this.mServicesData = new ArrayMap<>();
        this.mServices = new ArrayMap<>();
        this.mUpdateHttpProxyOnBind = false;
        this.mAllApplications = new ArrayList<>();
        this.mBackupAgentsByUser = new SparseArray<>();
        this.mInstrumentationPackageName = null;
        this.mInstrumentationAppDir = null;
        this.mInstrumentationSplitAppDirs = null;
        this.mInstrumentationLibDir = null;
        this.mInstrumentedAppDir = null;
        this.mInstrumentedSplitAppDirs = null;
        this.mInstrumentedLibDir = null;
        this.mSystemThread = false;
        this.mSomeActivitiesChanged = false;
        this.mHiddenApiWarningShown = false;
        this.mPackages = new ArrayMap<>();
        this.mResourcePackages = new ArrayMap<>();
        this.mRelaunchingActivities = new ArrayList<>();
        this.mPendingConfiguration = null;
        this.mTransactionExecutor = new TransactionExecutor(this);
        this.mLastReportedWindowingMode = Collections.synchronizedMap(new ArrayMap());
        this.mSocExt = (IActivityThreadSocExt) ExtLoader.type(IActivityThreadSocExt.class).base(this).create();
        this.mProviderMap = new ArrayMap<>();
        this.mProviderRefCountMap = new ArrayMap<>();
        this.mLocalProviders = new ArrayMap<>();
        this.mLocalProvidersByName = new ArrayMap<>();
        this.mGetProviderKeys = new ArrayMap<>();
        this.mOnPauseListeners = new ArrayMap<>();
        this.mGcIdler = new GcIdler();
        this.mPurgeIdler = new PurgeIdler();
        this.mPurgeIdlerScheduled = false;
        this.mGcIdlerScheduled = false;
        this.mCoreSettings = null;
        this.mCoreSettingsLock = new Object();
        this.mHasImeComponent = false;
        this.mContentCaptureOptionsCallback = null;
        this.mDebugOn = false;
        this.mDebugLauncher = false;
        this.mOplusActivityThreadExt = (IActivityThreadExt) ExtLoader.type(IActivityThreadExt.class).base(this).create();
        this.mSocExt.enableActivityThreadLog();
        this.mResourcesManager = ResourcesManager.getInstance();
    }

    public ApplicationThread getApplicationThread() {
        return this.mAppThread;
    }

    public Instrumentation getInstrumentation() {
        return this.mInstrumentation;
    }

    public boolean isProfiling() {
        Profiler profiler = this.mProfiler;
        return (profiler == null || profiler.profileFile == null || this.mProfiler.profileFd != null) ? false : true;
    }

    public String getProfileFilePath() {
        return this.mProfiler.profileFile;
    }

    public Looper getLooper() {
        return this.mLooper;
    }

    public Executor getExecutor() {
        return this.mExecutor;
    }

    @Override // android.app.ActivityThreadInternal
    public Application getApplication() {
        return this.mInitialApplication;
    }

    public String getProcessName() {
        return this.mBoundApplication.processName;
    }

    @Override // android.app.ActivityThreadInternal
    public ContextImpl getSystemContext() {
        ContextImpl contextImpl;
        synchronized (this) {
            if (this.mSystemContext == null) {
                this.mSystemContext = ContextImpl.createSystemContext(this);
            }
            contextImpl = this.mSystemContext;
        }
        return contextImpl;
    }

    public ContextImpl getSystemUiContext() {
        return getSystemUiContext(0);
    }

    public ContextImpl getSystemUiContext(int displayId) {
        ContextImpl systemUiContext;
        synchronized (this) {
            if (this.mDisplaySystemUiContexts == null) {
                this.mDisplaySystemUiContexts = new SparseArray<>();
            }
            systemUiContext = this.mDisplaySystemUiContexts.get(displayId);
            if (systemUiContext == null) {
                systemUiContext = ContextImpl.createSystemUiContext(getSystemContext(), displayId);
                this.mDisplaySystemUiContexts.put(displayId, systemUiContext);
            }
        }
        return systemUiContext;
    }

    @Override // android.app.ActivityThreadInternal
    public ContextImpl getSystemUiContextNoCreate() {
        synchronized (this) {
            SparseArray<ContextImpl> sparseArray = this.mDisplaySystemUiContexts;
            if (sparseArray == null) {
                return null;
            }
            return sparseArray.get(0);
        }
    }

    void onSystemUiContextCleanup(ContextImpl context) {
        synchronized (this) {
            SparseArray<ContextImpl> sparseArray = this.mDisplaySystemUiContexts;
            if (sparseArray == null) {
                return;
            }
            int index = sparseArray.indexOfValue(context);
            if (index >= 0) {
                this.mDisplaySystemUiContexts.removeAt(index);
            }
        }
    }

    public void installSystemApplicationInfo(ApplicationInfo info, ClassLoader classLoader) {
        synchronized (this) {
            getSystemContext().installSystemApplicationInfo(info, classLoader);
            getSystemUiContext().installSystemApplicationInfo(info, classLoader);
            this.mProfiler = new Profiler();
        }
    }

    void scheduleGcIdler() {
        if (!this.mGcIdlerScheduled) {
            this.mGcIdlerScheduled = true;
            Looper.myQueue().addIdleHandler(this.mGcIdler);
        }
        this.mH.removeMessages(120);
    }

    void unscheduleGcIdler() {
        if (this.mGcIdlerScheduled) {
            this.mGcIdlerScheduled = false;
            Looper.myQueue().removeIdleHandler(this.mGcIdler);
        }
        this.mH.removeMessages(120);
    }

    void schedulePurgeIdler() {
        if (!this.mPurgeIdlerScheduled) {
            this.mPurgeIdlerScheduled = true;
            Looper.myQueue().addIdleHandler(this.mPurgeIdler);
        }
        this.mH.removeMessages(161);
    }

    void unschedulePurgeIdler() {
        if (this.mPurgeIdlerScheduled) {
            this.mPurgeIdlerScheduled = false;
            Looper.myQueue().removeIdleHandler(this.mPurgeIdler);
        }
        this.mH.removeMessages(161);
    }

    void doGcIfNeeded() {
        doGcIfNeeded("bg");
    }

    void doGcIfNeeded(String reason) {
        this.mGcIdlerScheduled = false;
        long now = SystemClock.uptimeMillis();
        if (BinderInternal.getLastGcTime() + 5000 < now) {
            BinderInternal.forceGc(reason);
        }
    }

    static void printRow(PrintWriter pw, String format, Object... objs) {
        pw.println(String.format(format, objs));
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0537  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void dumpMemInfoTable(java.io.PrintWriter r46, android.os.Debug.MemoryInfo r47, boolean r48, boolean r49, boolean r50, boolean r51, int r52, java.lang.String r53, long r54, long r56, long r58, long r60, long r62, long r64) {
        /*
            Method dump skipped, instructions count: 2578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.ActivityThread.dumpMemInfoTable(java.io.PrintWriter, android.os.Debug$MemoryInfo, boolean, boolean, boolean, boolean, int, java.lang.String, long, long, long, long, long, long):void");
    }

    private static void dumpMemoryInfo(ProtoOutputStream proto, long fieldId, String name, int pss, int cleanPss, int sharedDirty, int privateDirty, int sharedClean, int privateClean, boolean hasSwappedOutPss, int dirtySwap, int dirtySwapPss, int rss) {
        long token = proto.start(fieldId);
        proto.write(1138166333441L, name);
        proto.write(1120986464258L, pss);
        proto.write(1120986464259L, cleanPss);
        proto.write(1120986464260L, sharedDirty);
        proto.write(1120986464261L, privateDirty);
        proto.write(1120986464262L, sharedClean);
        proto.write(1120986464263L, privateClean);
        if (hasSwappedOutPss) {
            proto.write(1120986464265L, dirtySwapPss);
        } else {
            proto.write(1120986464264L, dirtySwap);
        }
        proto.write(1120986464266L, rss);
        proto.end(token);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x029a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void dumpMemInfoTable(android.util.proto.ProtoOutputStream r46, android.os.Debug.MemoryInfo r47, boolean r48, boolean r49, long r50, long r52, long r54, long r56, long r58, long r60) {
        /*
            Method dump skipped, instructions count: 934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.ActivityThread.dumpMemInfoTable(android.util.proto.ProtoOutputStream, android.os.Debug$MemoryInfo, boolean, boolean, long, long, long, long, long, long):void");
    }

    public void registerOnActivityPausedListener(Activity activity, OnActivityPausedListener listener) {
        synchronized (this.mOnPauseListeners) {
            ArrayList<OnActivityPausedListener> list = this.mOnPauseListeners.get(activity);
            if (list == null) {
                list = new ArrayList<>();
                this.mOnPauseListeners.put(activity, list);
            }
            list.add(listener);
        }
    }

    public void unregisterOnActivityPausedListener(Activity activity, OnActivityPausedListener listener) {
        synchronized (this.mOnPauseListeners) {
            ArrayList<OnActivityPausedListener> list = this.mOnPauseListeners.get(activity);
            if (list != null) {
                list.remove(listener);
            }
        }
    }

    public final ActivityInfo resolveActivityInfo(Intent intent) {
        ActivityInfo aInfo = intent.resolveActivityInfo(this.mInitialApplication.getPackageManager(), 1024);
        if (aInfo == null) {
            Instrumentation.checkStartActivityResult(-92, intent);
        }
        return aInfo;
    }

    public final Activity startActivityNow(Activity parent, String id, Intent intent, ActivityInfo activityInfo, IBinder token, Bundle state, Activity.NonConfigurationInstances lastNonConfigurationInstances, IBinder assistToken, IBinder shareableActivityToken) {
        String name;
        ActivityClientRecord r = new ActivityClientRecord();
        r.token = token;
        r.assistToken = assistToken;
        r.shareableActivityToken = shareableActivityToken;
        r.ident = 0;
        r.intent = intent;
        r.state = state;
        r.parent = parent;
        r.embeddedID = id;
        r.activityInfo = activityInfo;
        r.lastNonConfigurationInstances = lastNonConfigurationInstances;
        if (localLOGV) {
            ComponentName compname = intent.getComponent();
            if (compname != null) {
                name = compname.toShortString();
            } else {
                name = "(Intent " + intent + ").getComponent() returned null";
            }
            Slog.v(TAG, "Performing launch: action=" + intent.getAction() + ", comp=" + name + ", token=" + token);
        }
        return performLaunchActivity(r, null);
    }

    @Override // android.app.ClientTransactionHandler
    public final Activity getActivity(IBinder token) {
        ActivityClientRecord activityRecord = this.mActivities.get(token);
        if (activityRecord != null) {
            return activityRecord.activity;
        }
        return null;
    }

    @Override // android.app.ClientTransactionHandler
    public ActivityClientRecord getActivityClient(IBinder token) {
        return this.mActivities.get(token);
    }

    public Configuration getConfiguration() {
        return this.mConfigurationController.getConfiguration();
    }

    @Override // android.app.ClientTransactionHandler
    public void updatePendingConfiguration(Configuration config) {
        Configuration updatedConfig = this.mConfigurationController.updatePendingConfiguration(config);
        if (updatedConfig != null) {
            this.mPendingConfiguration = updatedConfig;
        }
    }

    @Override // android.app.ActivityThreadInternal
    public boolean isCachedProcessState() {
        boolean z;
        synchronized (this.mAppThread) {
            z = this.mLastProcessState >= 16;
        }
        return z;
    }

    @Override // android.app.ClientTransactionHandler
    public void updateProcessState(int processState, boolean fromIpc) {
        Configuration pendingConfig;
        synchronized (this.mAppThread) {
            if (this.mLastProcessState == processState) {
                return;
            }
            boolean wasCached = isCachedProcessState();
            this.mLastProcessState = processState;
            if (processState == 2) {
                this.mOplusActivityThreadExt.setTopApp(true);
            } else {
                this.mOplusActivityThreadExt.setTopApp(false);
            }
            updateVmProcessState(processState);
            if (localLOGV) {
                Slog.i(TAG, "******************* PROCESS STATE CHANGED TO: " + processState + (fromIpc ? " (from ipc" : ""));
            }
            if (!wasCached || isCachedProcessState() || this.mNumLaunchingActivities.get() != 0 || (pendingConfig = this.mConfigurationController.getPendingConfiguration(false)) == null) {
                return;
            }
            if (Looper.myLooper() == this.mH.getLooper()) {
                handleConfigurationChanged(pendingConfig);
            } else {
                sendMessage(118, pendingConfig);
            }
        }
    }

    private void updateVmProcessState(int processState) {
        int state;
        if (processState <= 6) {
            state = 0;
        } else {
            state = 1;
        }
        VMRuntime.getRuntime().updateProcessState(state);
    }

    @Override // android.app.ClientTransactionHandler
    public void countLaunchingActivities(int num) {
        this.mNumLaunchingActivities.getAndAdd(num);
    }

    public final void sendActivityResult(IBinder token, String id, int requestCode, int resultCode, Intent data) {
        if (DEBUG_RESULTS) {
            Slog.v(TAG, "sendActivityResult: id=" + id + " req=" + requestCode + " res=" + resultCode + " data=" + data);
        }
        ArrayList<ResultInfo> list = new ArrayList<>();
        list.add(new ResultInfo(id, requestCode, resultCode, data));
        ClientTransaction clientTransaction = ClientTransaction.obtain(this.mAppThread, token);
        clientTransaction.addCallback(ActivityResultItem.obtain(list));
        try {
            this.mAppThread.scheduleTransaction(clientTransaction);
        } catch (RemoteException e) {
        }
    }

    @Override // android.app.ClientTransactionHandler
    TransactionExecutor getTransactionExecutor() {
        return this.mTransactionExecutor;
    }

    @Override // android.app.ClientTransactionHandler
    void sendMessage(int what, Object obj) {
        sendMessage(what, obj, 0, 0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(int what, Object obj, int arg1) {
        sendMessage(what, obj, arg1, 0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(int what, Object obj, int arg1, int arg2) {
        sendMessage(what, obj, arg1, arg2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(int what, Object obj, int arg1, int arg2, boolean async) {
        if (DEBUG_MESSAGES) {
            Slog.v(TAG, "SCHEDULE " + what + " " + this.mH.codeToString(what) + ": " + arg1 + " / " + obj);
        }
        Message msg = Message.obtain();
        msg.what = what;
        msg.obj = obj;
        msg.arg1 = arg1;
        msg.arg2 = arg2;
        if (async) {
            msg.setAsynchronous(true);
        }
        this.mH.sendMessage(msg);
    }

    final void scheduleContextCleanup(ContextImpl context, String who, String what) {
        ContextCleanupInfo cci = new ContextCleanupInfo();
        cci.context = context;
        cci.who = who;
        cci.what = what;
        sendMessage(119, cci);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0372  */
    /* JADX WARN: Type inference failed for: r1v23, types: [android.app.Activity] */
    /* JADX WARN: Type inference failed for: r1v38, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v53, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v36, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v38, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.app.ActivityThread] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v4, types: [android.app.Application, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.app.Activity performLaunchActivity(android.app.ActivityThread.ActivityClientRecord r32, android.content.Intent r33) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 976
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.ActivityThread.performLaunchActivity(android.app.ActivityThread$ActivityClientRecord, android.content.Intent):android.app.Activity");
    }

    @Override // android.app.ClientTransactionHandler
    public void handleStartActivity(ActivityClientRecord r, PendingTransactionActions pendingActions, ActivityOptions activityOptions) {
        Activity activity = r.activity;
        if (!r.stopped) {
            throw new IllegalStateException("Can't start activity that is not stopped.");
        }
        if (r.activity.mFinished) {
            return;
        }
        unscheduleGcIdler();
        if (activityOptions != null) {
            activity.mPendingOptions = activityOptions;
        }
        activity.performStart("handleStartActivity");
        r.setState(2);
        if (pendingActions == null) {
            return;
        }
        if (pendingActions.shouldRestoreInstanceState()) {
            if (r.isPersistable()) {
                if (r.state != null || r.persistentState != null) {
                    this.mInstrumentation.callActivityOnRestoreInstanceState(activity, r.state, r.persistentState);
                }
            } else if (r.state != null) {
                this.mInstrumentation.callActivityOnRestoreInstanceState(activity, r.state);
            }
        }
        if (pendingActions.shouldCallOnPostCreate()) {
            activity.mCalled = false;
            if (r.isPersistable()) {
                this.mInstrumentation.callActivityOnPostCreate(activity, r.state, r.persistentState);
            } else {
                this.mInstrumentation.callActivityOnPostCreate(activity, r.state);
            }
            if (!activity.mCalled) {
                throw new SuperNotCalledException("Activity " + r.intent.getComponent().toShortString() + " did not call through to super.onPostCreate()");
            }
        }
        updateVisibility(r, true);
        this.mSomeActivitiesChanged = true;
    }

    private void checkAndBlockForNetworkAccess() {
        synchronized (this.mNetworkPolicyLock) {
            if (this.mNetworkBlockSeq != -1) {
                try {
                    ActivityManager.getService().waitForNetworkStateUpdate(this.mNetworkBlockSeq);
                    this.mNetworkBlockSeq = -1L;
                } catch (RemoteException e) {
                }
            }
        }
    }

    private ContextImpl createBaseContextForActivity(ActivityClientRecord r) {
        int displayId = ActivityClient.getInstance().getDisplayId(r.token);
        ContextImpl appContext = ContextImpl.createActivityContext(this, r.packageInfo, r.activityInfo, r.token, displayId, r.overrideConfig);
        DisplayManagerGlobal dm = DisplayManagerGlobal.getInstance();
        String pkgName = SystemProperties.get("debug.second-display.pkg");
        if (pkgName != null && !pkgName.isEmpty() && r.packageInfo.mPackageName.contains(pkgName)) {
            for (int id : dm.getDisplayIds()) {
                if (id != 0) {
                    Display display = dm.getCompatibleDisplay(id, appContext.getResources());
                    return (ContextImpl) appContext.createDisplayContext(display);
                }
            }
            return appContext;
        }
        return appContext;
    }

    @Override // android.app.ClientTransactionHandler
    public Activity handleLaunchActivity(ActivityClientRecord r, PendingTransactionActions pendingActions, Intent customIntent) throws Throwable {
        unscheduleGcIdler();
        this.mSomeActivitiesChanged = true;
        this.mOplusActivityThreadExt.handleLaunchActivity();
        if (r.profilerInfo != null) {
            this.mProfiler.setProfiler(r.profilerInfo);
            this.mProfiler.startProfiling();
        }
        this.mConfigurationController.handleConfigurationChanged(null, null);
        if (localLOGV) {
            Slog.v(TAG, "Handling launch of " + r);
        }
        if (ThreadedRenderer.sRendererEnabled && (r.activityInfo.flags & 512) != 0) {
            HardwareRenderer.preload();
        }
        WindowManagerGlobal.initialize();
        GraphicsEnvironment.hintActivityLaunch();
        Activity a = performLaunchActivity(r, customIntent);
        if (a != null) {
            r.createdConfig = new Configuration(this.mConfigurationController.getConfiguration());
            reportSizeConfigurations(r);
            if (!r.activity.mFinished && pendingActions != null) {
                pendingActions.setOldState(r.state);
                pendingActions.setRestoreInstanceState(true);
                pendingActions.setCallOnPostCreate(true);
            }
        } else {
            ActivityClient.getInstance().finishActivity(r.token, 0, null, 0);
        }
        return a;
    }

    private void reportSizeConfigurations(ActivityClientRecord r) {
        Configuration[] configurations;
        if (this.mActivitiesToBeDestroyed.containsKey(r.token) || (configurations = r.activity.getResources().getSizeConfigurations()) == null) {
            return;
        }
        r.mSizeConfigurations = new SizeConfigurationBuckets(configurations);
        ActivityClient.getInstance().reportSizeConfigurations(r.token, r.mSizeConfigurations);
    }

    private void deliverNewIntents(ActivityClientRecord r, List<ReferrerIntent> intents) {
        int N = intents.size();
        for (int i = 0; i < N; i++) {
            ReferrerIntent intent = intents.get(i);
            intent.setExtrasClassLoader(r.activity.getClassLoader());
            intent.prepareToEnterProcess(isProtectedComponent(r.activityInfo), r.activity.getAttributionSource());
            r.activity.mFragments.noteStateNotSaved();
            this.mInstrumentation.callActivityOnNewIntent(r.activity, intent);
        }
    }

    @Override // android.app.ClientTransactionHandler
    public void handleNewIntent(ActivityClientRecord r, List<ReferrerIntent> intents) {
        checkAndBlockForNetworkAccess();
        deliverNewIntents(r, intents);
    }

    public void handleRequestAssistContextExtras(RequestAssistContextExtras cmd) {
        Uri referrer;
        AssistStructure structure;
        boolean forAutofill = cmd.requestType == 2;
        boolean requestedOnlyContent = cmd.requestType == 3;
        if (this.mLastSessionId != cmd.sessionId) {
            this.mLastSessionId = cmd.sessionId;
            for (int i = this.mLastAssistStructures.size() - 1; i >= 0; i--) {
                AssistStructure structure2 = this.mLastAssistStructures.get(i).get();
                if (structure2 != null) {
                    structure2.clearSendChannel();
                }
                this.mLastAssistStructures.remove(i);
            }
        }
        Bundle data = new Bundle();
        AssistStructure structure3 = null;
        AssistContent content = forAutofill ? null : new AssistContent();
        long startTime = SystemClock.uptimeMillis();
        ActivityClientRecord r = this.mActivities.get(cmd.activityToken);
        Uri referrer2 = null;
        if (r == null) {
            referrer = null;
        } else {
            if (!forAutofill) {
                r.activity.getApplication().dispatchOnProvideAssistData(r.activity, data);
                r.activity.onProvideAssistData(data);
                referrer2 = r.activity.onProvideReferrer();
            }
            if (cmd.requestType == 1 || forAutofill || requestedOnlyContent) {
                if (!requestedOnlyContent) {
                    structure3 = new AssistStructure(r.activity, forAutofill, cmd.flags);
                }
                Intent activityIntent = r.activity.getIntent();
                boolean notSecure = r.window == null || (r.window.getAttributes().flags & 8192) == 0;
                if (activityIntent != null && notSecure) {
                    if (!forAutofill) {
                        Intent intent = new Intent(activityIntent);
                        intent.setFlags(intent.getFlags() & (-67));
                        content.setDefaultIntent(intent);
                    }
                } else if (!forAutofill) {
                    content.setDefaultIntent(new Intent());
                }
                if (!forAutofill) {
                    r.activity.onProvideAssistContent(content);
                }
                referrer = referrer2;
            } else {
                referrer = referrer2;
            }
        }
        if (requestedOnlyContent) {
            structure = structure3;
        } else {
            if (structure3 == null) {
                structure3 = new AssistStructure();
            }
            structure3.setAcquisitionStartTime(startTime);
            structure3.setAcquisitionEndTime(SystemClock.uptimeMillis());
            this.mLastAssistStructures.add(new WeakReference<>(structure3));
            structure = structure3;
        }
        IActivityTaskManager mgr = ActivityTaskManager.getService();
        try {
        } catch (RemoteException e) {
            e = e;
        }
        try {
            mgr.reportAssistContextExtras(cmd.requestToken, data, structure, content, referrer);
        } catch (RemoteException e2) {
            e = e2;
            throw e.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRequestDirectActions(IBinder activityToken, IVoiceInteractor interactor, CancellationSignal cancellationSignal, final RemoteCallback callback, int retryCount) {
        final ActivityClientRecord r = this.mActivities.get(activityToken);
        if (r == null) {
            Log.w(TAG, "requestDirectActions(): no activity for " + activityToken);
            callback.sendResult(null);
            return;
        }
        int lifecycleState = r.getLifecycleState();
        if (lifecycleState < 2) {
            if (retryCount > 0) {
                this.mH.sendMessageDelayed(PooledLambda.obtainMessage(new HexConsumer() { // from class: android.app.ActivityThread$$ExternalSyntheticLambda1
                    @Override // com.android.internal.util.function.HexConsumer
                    public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                        ((ActivityThread) obj).handleRequestDirectActions((IBinder) obj2, (IVoiceInteractor) obj3, (CancellationSignal) obj4, (RemoteCallback) obj5, ((Integer) obj6).intValue());
                    }
                }, this, activityToken, interactor, cancellationSignal, callback, Integer.valueOf(retryCount - 1)), REQUEST_DIRECT_ACTIONS_RETRY_TIME_MS);
                return;
            } else {
                Log.w(TAG, "requestDirectActions(" + r + "): wrong lifecycle: " + lifecycleState);
                callback.sendResult(null);
                return;
            }
        }
        if (lifecycleState >= 5) {
            Log.w(TAG, "requestDirectActions(" + r + "): wrong lifecycle: " + lifecycleState);
            callback.sendResult(null);
            return;
        }
        if (r.activity.mVoiceInteractor == null || r.activity.mVoiceInteractor.mInteractor.asBinder() != interactor.asBinder()) {
            if (r.activity.mVoiceInteractor != null) {
                r.activity.mVoiceInteractor.destroy();
            }
            r.activity.mVoiceInteractor = new VoiceInteractor(interactor, r.activity, r.activity, Looper.myLooper());
        }
        r.activity.onGetDirectActions(cancellationSignal, new Consumer() { // from class: android.app.ActivityThread$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ActivityThread.lambda$handleRequestDirectActions$0(r, callback, (List) obj);
            }
        });
    }

    static /* synthetic */ void lambda$handleRequestDirectActions$0(ActivityClientRecord r, RemoteCallback callback, List actions) {
        Objects.requireNonNull(actions);
        Preconditions.checkCollectionElementsNotNull(actions, Slice.HINT_ACTIONS);
        if (!actions.isEmpty()) {
            int actionCount = actions.size();
            for (int i = 0; i < actionCount; i++) {
                DirectAction action = (DirectAction) actions.get(i);
                action.setSource(r.activity.getTaskId(), r.activity.getAssistToken());
            }
            Bundle result = new Bundle();
            result.putParcelable(DirectAction.KEY_ACTIONS_LIST, new ParceledListSlice(actions));
            callback.sendResult(result);
            return;
        }
        callback.sendResult(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePerformDirectAction(IBinder activityToken, String actionId, Bundle arguments, CancellationSignal cancellationSignal, final RemoteCallback resultCallback) {
        ActivityClientRecord r = this.mActivities.get(activityToken);
        if (r != null) {
            int lifecycleState = r.getLifecycleState();
            if (lifecycleState < 2 || lifecycleState >= 5) {
                resultCallback.sendResult(null);
                return;
            }
            Bundle nonNullArguments = arguments != null ? arguments : Bundle.EMPTY;
            Activity activity = r.activity;
            Objects.requireNonNull(resultCallback);
            activity.onPerformDirectAction(actionId, nonNullArguments, cancellationSignal, new Consumer() { // from class: android.app.ActivityThread$$ExternalSyntheticLambda4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    resultCallback.sendResult((Bundle) obj);
                }
            });
            return;
        }
        resultCallback.sendResult(null);
    }

    public void handleTranslucentConversionComplete(IBinder token, boolean drawComplete) {
        ActivityClientRecord r = this.mActivities.get(token);
        if (r != null) {
            r.activity.onTranslucentConversionComplete(drawComplete);
        }
    }

    public void onNewActivityOptions(IBinder token, ActivityOptions options) {
        ActivityClientRecord r = this.mActivities.get(token);
        if (r != null) {
            r.activity.onNewActivityOptions(options);
        }
    }

    public void handleInstallProvider(ProviderInfo info) {
        StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
        try {
            installContentProviders(this.mInitialApplication, Arrays.asList(info));
        } finally {
            StrictMode.setThreadPolicy(oldPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEnterAnimationComplete(IBinder token) {
        ActivityClientRecord r = this.mActivities.get(token);
        if (r != null) {
            r.activity.dispatchEnterAnimationComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStartBinderTracking() {
        Binder.enableStackTracking();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStopBinderTrackingAndDump(ParcelFileDescriptor fd) {
        try {
            Binder.disableStackTracking();
            Binder.getTransactionTracker().writeTracesToFile(fd);
        } finally {
            IoUtils.closeQuietly(fd);
            Binder.getTransactionTracker().clearTraces();
        }
    }

    @Override // android.app.ClientTransactionHandler
    public void handlePictureInPictureRequested(ActivityClientRecord r) {
        boolean receivedByApp = r.activity.onPictureInPictureRequested();
        if (!receivedByApp) {
            schedulePauseWithUserLeaveHintAndReturnToCurrentState(r);
        }
    }

    @Override // android.app.ClientTransactionHandler
    public void handlePictureInPictureStateChanged(ActivityClientRecord r, PictureInPictureUiState pipState) {
        r.activity.onPictureInPictureUiStateChanged(pipState);
    }

    public void registerSplashScreenManager(SplashScreen.SplashScreenManagerGlobal manager) {
        synchronized (this) {
            this.mSplashScreenGlobal = manager;
        }
    }

    @Override // android.app.ClientTransactionHandler
    public boolean isHandleSplashScreenExit(IBinder token) {
        boolean z;
        synchronized (this) {
            SplashScreen.SplashScreenManagerGlobal splashScreenManagerGlobal = this.mSplashScreenGlobal;
            z = splashScreenManagerGlobal != null && splashScreenManagerGlobal.containsExitListener(token);
        }
        return z;
    }

    @Override // android.app.ClientTransactionHandler
    public void handleAttachSplashScreenView(ActivityClientRecord r, SplashScreenView.SplashScreenViewParcelable parcelable, SurfaceControl startingWindowLeash) {
        DecorView decorView = (DecorView) r.window.peekDecorView();
        if (parcelable != null && decorView != null) {
            createSplashScreen(r, decorView, parcelable, startingWindowLeash);
        } else {
            Slog.e(TAG, "handleAttachSplashScreenView failed, unable to attach");
        }
    }

    private void createSplashScreen(ActivityClientRecord r, DecorView decorView, SplashScreenView.SplashScreenViewParcelable parcelable, SurfaceControl startingWindowLeash) {
        SplashScreenView.Builder builder = new SplashScreenView.Builder(r.activity);
        SplashScreenView view = builder.createFromParcel(parcelable).build();
        view.attachHostWindow(r.window);
        decorView.addView(view);
        view.requestLayout();
        view.getViewTreeObserver().addOnDrawListener(new AnonymousClass1(view, r, decorView, startingWindowLeash));
    }

    /* renamed from: android.app.ActivityThread$1, reason: invalid class name */
    class AnonymousClass1 implements ViewTreeObserver.OnDrawListener {
        private boolean mHandled = false;
        final /* synthetic */ DecorView val$decorView;
        final /* synthetic */ ActivityClientRecord val$r;
        final /* synthetic */ SurfaceControl val$startingWindowLeash;
        final /* synthetic */ SplashScreenView val$view;

        AnonymousClass1(SplashScreenView splashScreenView, ActivityClientRecord activityClientRecord, DecorView decorView, SurfaceControl surfaceControl) {
            this.val$view = splashScreenView;
            this.val$r = activityClientRecord;
            this.val$decorView = decorView;
            this.val$startingWindowLeash = surfaceControl;
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            if (this.mHandled) {
                return;
            }
            this.mHandled = true;
            ActivityThread.this.syncTransferSplashscreenViewTransaction(this.val$view, this.val$r.token, this.val$decorView, this.val$startingWindowLeash);
            final SplashScreenView splashScreenView = this.val$view;
            splashScreenView.post(new Runnable() { // from class: android.app.ActivityThread$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m160lambda$onDraw$0$androidappActivityThread$1(splashScreenView);
                }
            });
        }

        /* renamed from: lambda$onDraw$0$android-app-ActivityThread$1, reason: not valid java name */
        /* synthetic */ void m160lambda$onDraw$0$androidappActivityThread$1(SplashScreenView view) {
            view.getViewTreeObserver().removeOnDrawListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: reportSplashscreenViewShown, reason: merged with bridge method [inline-methods] */
    public void m159x5a10ab37(IBinder token, SplashScreenView view) {
        ActivityClient.getInstance().reportSplashScreenAttached(token);
        synchronized (this) {
            SplashScreen.SplashScreenManagerGlobal splashScreenManagerGlobal = this.mSplashScreenGlobal;
            if (splashScreenManagerGlobal != null) {
                splashScreenManagerGlobal.handOverSplashScreenView(token, view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncTransferSplashscreenViewTransaction(final SplashScreenView view, final IBinder token, View decorView, SurfaceControl startingWindowLeash) {
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        transaction.hide(startingWindowLeash);
        decorView.getViewRootImpl().applyTransactionOnDraw(transaction);
        view.syncTransferSurfaceOnDraw();
        decorView.postOnAnimation(new Runnable() { // from class: android.app.ActivityThread$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m159x5a10ab37(token, view);
            }
        });
    }

    private void schedulePauseWithUserLeaveHintAndReturnToCurrentState(ActivityClientRecord r) {
        int prevState = r.getLifecycleState();
        if (prevState != 3 && prevState != 4) {
        }
        switch (prevState) {
            case 3:
                schedulePauseWithUserLeavingHint(r);
                scheduleResume(r);
                break;
            case 4:
                scheduleResume(r);
                schedulePauseWithUserLeavingHint(r);
                break;
        }
    }

    private void schedulePauseWithUserLeavingHint(ActivityClientRecord r) {
        ClientTransaction transaction = ClientTransaction.obtain(this.mAppThread, r.token);
        transaction.setLifecycleStateRequest(PauseActivityItem.obtain(r.activity.isFinishing(), true, r.activity.mConfigChangeFlags, false));
        executeTransaction(transaction);
    }

    private void scheduleResume(ActivityClientRecord r) {
        ClientTransaction transaction = ClientTransaction.obtain(this.mAppThread, r.token);
        transaction.setLifecycleStateRequest(ResumeActivityItem.obtain(false));
        executeTransaction(transaction);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLocalVoiceInteractionStarted(IBinder token, IVoiceInteractor interactor) {
        ActivityClientRecord r = this.mActivities.get(token);
        if (r != null) {
            r.voiceInteractor = interactor;
            r.activity.setVoiceInteractor(interactor);
            if (interactor == null) {
                r.activity.onLocalVoiceInteractionStopped();
            } else {
                r.activity.onLocalVoiceInteractionStarted();
            }
        }
    }

    private static boolean attemptAttachAgent(String agent, ClassLoader classLoader) {
        try {
            VMDebug.attachAgent(agent, classLoader);
            return true;
        } catch (IOException e) {
            Slog.e(TAG, "Attaching agent with " + classLoader + " failed: " + agent);
            return false;
        }
    }

    static void handleAttachAgent(String agent, LoadedApk loadedApk) {
        ClassLoader classLoader = loadedApk != null ? loadedApk.getClassLoader() : null;
        if (!attemptAttachAgent(agent, classLoader) && classLoader != null) {
            attemptAttachAgent(agent, null);
        }
    }

    static void handleAttachStartupAgents(String dataDir) {
        try {
            Path code_cache = ContextImpl.getCodeCacheDirBeforeBind(new File(dataDir)).toPath();
            if (!Files.exists(code_cache, new LinkOption[0])) {
                return;
            }
            Path startup_path = code_cache.resolve("startup_agents");
            if (Files.exists(startup_path, new LinkOption[0])) {
                for (Path p : Files.newDirectoryStream(startup_path)) {
                    handleAttachAgent(p.toAbsolutePath().toString() + "=" + dataDir, null);
                }
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUiTranslationState(IBinder activityToken, int state, TranslationSpec sourceSpec, TranslationSpec targetSpec, List<AutofillId> viewIds, UiTranslationSpec uiTranslationSpec) {
        ActivityClientRecord r = this.mActivities.get(activityToken);
        if (r == null) {
            Log.w(TAG, "updateUiTranslationState(): no activity for " + activityToken);
        } else {
            r.activity.updateUiTranslationState(state, sourceSpec, targetSpec, viewIds, uiTranslationSpec);
        }
    }

    public static Intent getIntentBeingBroadcast() {
        return sCurrentBroadcastIntent.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReceiver(ReceiverData data) {
        ContextImpl context;
        unscheduleGcIdler();
        String component = data.intent.getComponent().getClassName();
        LoadedApk packageInfo = getPackageInfoNoCheck(data.info.applicationInfo, data.compatInfo);
        IActivityManager mgr = ActivityManager.getService();
        try {
            Application app = packageInfo.makeApplicationInner(false, this.mInstrumentation);
            ContextImpl context2 = (ContextImpl) app.getBaseContext();
            if (data.info.splitName != null) {
                context2 = (ContextImpl) context2.createContextForSplit(data.info.splitName);
            }
            if (data.info.attributionTags != null && data.info.attributionTags.length > 0) {
                String attributionTag = data.info.attributionTags[0];
                context = (ContextImpl) context2.createAttributionContext(attributionTag);
            } else {
                context = context2;
            }
            ClassLoader cl = context.getClassLoader();
            data.intent.setExtrasClassLoader(cl);
            try {
                data.intent.prepareToEnterProcess(isProtectedComponent(data.info) || isProtectedBroadcast(data.intent), context.getAttributionSource());
                data.setExtrasClassLoader(cl);
                BroadcastReceiver receiver = packageInfo.getAppFactory().instantiateReceiver(cl, data.info.name, data.intent);
                try {
                    if (DEBUG_BROADCAST) {
                        Slog.v(TAG, "Performing receive of " + data.intent + ": app=" + app + ", appName=" + app.getPackageName() + ", pkg=" + packageInfo.getPackageName() + ", comp=" + data.intent.getComponent().toShortString() + ", dir=" + packageInfo.getAppDir());
                    }
                    boolean isOrder = data.mPendingResultExt.getOrder();
                    if (isOrder) {
                        int flag = data.intent.getFlags();
                        data.mPendingResultExt.setBroadcastState(flag, 2);
                    }
                    ThreadLocal<Intent> threadLocal = sCurrentBroadcastIntent;
                    threadLocal.set(data.intent);
                    receiver.setPendingResult(data);
                    receiver.onReceive(context.getReceiverRestrictedContext(), data.intent);
                    if (isOrder) {
                        int flag2 = data.intent.getFlags();
                        data.mPendingResultExt.setBroadcastState(flag2, 3);
                    }
                    threadLocal.set(null);
                } catch (Exception e) {
                    if (DEBUG_BROADCAST) {
                        Slog.i(TAG, "Finishing failed broadcast to " + data.intent.getComponent());
                    }
                    data.sendFinished(mgr);
                    if (!this.mInstrumentation.onException(receiver, e)) {
                        throw new RuntimeException("Unable to start receiver " + component + ": " + e.toString(), e);
                    }
                    sCurrentBroadcastIntent.set(null);
                }
                if (receiver.getPendingResult() != null) {
                    data.finish();
                }
            } catch (Throwable th) {
                sCurrentBroadcastIntent.set(null);
                throw th;
            }
        } catch (Exception e2) {
            if (DEBUG_BROADCAST) {
                Slog.i(TAG, "Finishing failed broadcast to " + data.intent.getComponent());
            }
            data.sendFinished(mgr);
            throw new RuntimeException("Unable to instantiate receiver " + component + ": " + e2.toString(), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateBackupAgent(CreateBackupAgentData data) throws Exception {
        IBinder binder;
        if (DEBUG_BACKUP) {
            Slog.v(TAG, "handleCreateBackupAgent: " + data);
        }
        try {
            PackageInfo requestedPackage = getPackageManager().getPackageInfo(data.appInfo.packageName, 0L, UserHandle.myUserId());
            if (requestedPackage.applicationInfo.uid != Process.myUid()) {
                Slog.w(TAG, "Asked to instantiate non-matching package " + data.appInfo.packageName);
                return;
            }
            unscheduleGcIdler();
            LoadedApk packageInfo = getPackageInfoNoCheck(data.appInfo, data.compatInfo);
            String packageName = packageInfo.mPackageName;
            if (packageName == null) {
                Slog.d(TAG, "Asked to create backup agent for nonexistent package");
                return;
            }
            String classname = getBackupAgentName(data);
            IBinder binder2 = null;
            try {
                Map backupAgentsForUser = getBackupAgentsForUser(data.userId);
                BackupAgent agent = (BackupAgent) backupAgentsForUser.get(packageName);
                if (agent != null) {
                    if (DEBUG_BACKUP) {
                        Slog.v(TAG, "Reusing existing agent instance");
                    }
                    binder = agent.onBind();
                } else {
                    try {
                        if (DEBUG_BACKUP) {
                            Slog.v(TAG, "Initializing agent class " + classname);
                        }
                        ClassLoader cl = packageInfo.getClassLoader();
                        BackupAgent backupAgent = (BackupAgent) cl.loadClass(classname).newInstance();
                        ContextImpl contextImplCreateAppContext = ContextImpl.createAppContext(this, packageInfo);
                        contextImplCreateAppContext.setOuterContext(backupAgent);
                        backupAgent.attach(contextImplCreateAppContext);
                        backupAgent.onCreate(UserHandle.of(data.userId), data.operationType);
                        binder2 = backupAgent.onBind();
                        backupAgentsForUser.put(packageName, backupAgent);
                        binder = binder2;
                    } catch (Exception e) {
                        Slog.e(TAG, "Agent threw during creation: " + e);
                        if (data.backupMode != 2 && data.backupMode != 3) {
                            throw e;
                        }
                        binder = binder2;
                    }
                }
                try {
                    ActivityManager.getService().backupAgentCreated(packageName, binder, data.userId);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Exception e3) {
                throw new RuntimeException("Unable to create BackupAgent " + classname + ": " + e3.toString(), e3);
            }
        } catch (RemoteException e4) {
            throw e4.rethrowFromSystemServer();
        }
    }

    private String getBackupAgentName(CreateBackupAgentData data) {
        String agentName = data.appInfo.backupAgentName;
        if (agentName != null) {
            return agentName;
        }
        if (data.backupMode == 1 || data.backupMode == 3) {
            return DEFAULT_FULL_BACKUP_AGENT;
        }
        return agentName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDestroyBackupAgent(CreateBackupAgentData data) {
        if (DEBUG_BACKUP) {
            Slog.v(TAG, "handleDestroyBackupAgent: " + data);
        }
        LoadedApk packageInfo = getPackageInfoNoCheck(data.appInfo, data.compatInfo);
        String packageName = packageInfo.mPackageName;
        ArrayMap<String, BackupAgent> backupAgents = getBackupAgentsForUser(data.userId);
        BackupAgent agent = backupAgents.get(packageName);
        if (agent != null) {
            try {
                agent.onDestroy();
            } catch (Exception e) {
                Slog.w(TAG, "Exception thrown in onDestroy by backup agent of " + data.appInfo);
                e.printStackTrace();
            }
            backupAgents.remove(packageName);
            return;
        }
        Slog.w(TAG, "Attempt to destroy unknown backup agent " + data);
    }

    private ArrayMap<String, BackupAgent> getBackupAgentsForUser(int userId) {
        ArrayMap<String, BackupAgent> backupAgents = this.mBackupAgentsByUser.get(userId);
        if (backupAgents == null) {
            ArrayMap<String, BackupAgent> backupAgents2 = new ArrayMap<>();
            this.mBackupAgentsByUser.put(userId, backupAgents2);
            return backupAgents2;
        }
        return backupAgents;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateService(CreateServiceData data) {
        ClassLoader cl;
        ContextImpl context;
        unscheduleGcIdler();
        LoadedApk packageInfo = getPackageInfoNoCheck(data.info.applicationInfo, data.compatInfo);
        Service service = null;
        try {
            if (localLOGV) {
                Slog.v(TAG, "Creating service " + data.info.name);
            }
            Application app = packageInfo.makeApplicationInner(false, this.mInstrumentation);
            if (data.info.splitName != null) {
                cl = packageInfo.getSplitClassLoader(data.info.splitName);
            } else {
                cl = packageInfo.getClassLoader();
            }
            service = packageInfo.getAppFactory().instantiateService(cl, data.info.name, data.intent);
            ContextImpl context2 = ContextImpl.getImpl(service.createServiceBaseContext(this, packageInfo));
            if (data.info.splitName != null) {
                context2 = (ContextImpl) context2.createContextForSplit(data.info.splitName);
            }
            if (data.info.attributionTags != null && data.info.attributionTags.length > 0) {
                String attributionTag = data.info.attributionTags[0];
                context = (ContextImpl) context2.createAttributionContext(attributionTag);
            } else {
                context = context2;
            }
            context.getResources().addLoaders((ResourcesLoader[]) app.getResources().getLoaders().toArray(new ResourcesLoader[0]));
            context.setOuterContext(service);
            service.attach(context, this, data.info.name, data.token, app, ActivityManager.getService());
            service.onCreate();
            synchronized (this.mResourcesManager) {
                this.mServicesData.put(data.token, data);
                this.mServices.put(data.token, service);
            }
            try {
                ActivityManager.getService().serviceDoneExecuting(data.token, 0, 0, 0);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        } catch (Exception e2) {
            if (!this.mInstrumentation.onException(service, e2)) {
                throw new RuntimeException("Unable to create service " + data.info.name + ": " + e2.toString(), e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBindService(BindServiceData data) {
        CreateServiceData createData = this.mServicesData.get(data.token);
        Service s = this.mServices.get(data.token);
        if (DEBUG_SERVICE) {
            Slog.v(TAG, "handleBindService s=" + s + " rebind=" + data.rebind);
        }
        if (s != null) {
            try {
                data.intent.setExtrasClassLoader(s.getClassLoader());
                data.intent.prepareToEnterProcess(isProtectedComponent(createData.info), s.getAttributionSource());
                try {
                    if (!data.rebind) {
                        IBinder binder = s.onBind(data.intent);
                        ActivityManager.getService().publishService(data.token, data.intent, binder);
                    } else {
                        s.onRebind(data.intent);
                        ActivityManager.getService().serviceDoneExecuting(data.token, 0, 0, 0);
                    }
                } catch (RemoteException ex) {
                    throw ex.rethrowFromSystemServer();
                }
            } catch (Exception e) {
                if (!this.mInstrumentation.onException(s, e)) {
                    throw new RuntimeException("Unable to bind to service " + s + " with " + data.intent + ": " + e.toString(), e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUnbindService(BindServiceData data) {
        CreateServiceData createData = this.mServicesData.get(data.token);
        Service s = this.mServices.get(data.token);
        if (s != null) {
            try {
                data.intent.setExtrasClassLoader(s.getClassLoader());
                data.intent.prepareToEnterProcess(isProtectedComponent(createData.info), s.getAttributionSource());
                boolean doRebind = s.onUnbind(data.intent);
                try {
                    if (doRebind) {
                        ActivityManager.getService().unbindFinished(data.token, data.intent, doRebind);
                    } else {
                        ActivityManager.getService().serviceDoneExecuting(data.token, 0, 0, 0);
                    }
                } catch (RemoteException ex) {
                    throw ex.rethrowFromSystemServer();
                }
            } catch (Exception e) {
                if (!this.mInstrumentation.onException(s, e)) {
                    throw new RuntimeException("Unable to unbind to service " + s + " with " + data.intent + ": " + e.toString(), e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDumpGfxInfo(DumpComponentInfo info) {
        StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
        try {
            try {
                ThreadedRenderer.handleDumpGfxInfo(info.fd.getFileDescriptor(), info.args);
            } catch (Exception e) {
                Log.w(TAG, "Caught exception from dumpGfxInfo()", e);
            }
        } finally {
            IoUtils.closeQuietly(info.fd);
            StrictMode.setThreadPolicy(oldPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDumpService(DumpComponentInfo info) {
        StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
        try {
            Service s = this.mServices.get(info.token);
            if (s != null) {
                PrintWriter pw = new FastPrintWriter(new FileOutputStream(info.fd.getFileDescriptor()));
                s.dump(info.fd.getFileDescriptor(), pw, info.args);
                pw.flush();
            }
        } finally {
            IoUtils.closeQuietly(info.fd);
            StrictMode.setThreadPolicy(oldPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDumpResources(DumpResourcesData info) {
        StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
        try {
            PrintWriter pw = new FastPrintWriter(new FileOutputStream(info.fd.getFileDescriptor()));
            Resources.dumpHistory(pw, "");
            pw.flush();
            if (info.finishCallback != null) {
                info.finishCallback.sendResult(null);
            }
        } finally {
            IoUtils.closeQuietly(info.fd);
            StrictMode.setThreadPolicy(oldPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDumpActivity(DumpComponentInfo info) {
        StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
        try {
            ActivityClientRecord r = this.mActivities.get(info.token);
            if (r != null && r.activity != null) {
                PrintWriter pw = new FastPrintWriter(new FileOutputStream(info.fd.getFileDescriptor()));
                r.activity.dumpInternal(info.prefix, info.fd.getFileDescriptor(), pw, info.args);
                pw.flush();
            }
        } finally {
            IoUtils.closeQuietly(info.fd);
            StrictMode.setThreadPolicy(oldPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDumpProvider(DumpComponentInfo info) {
        StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
        try {
            ProviderClientRecord r = this.mLocalProviders.get(info.token);
            if (r != null && r.mLocalProvider != null) {
                PrintWriter pw = new FastPrintWriter(new FileOutputStream(info.fd.getFileDescriptor()));
                r.mLocalProvider.dump(info.fd.getFileDescriptor(), pw, info.args);
                pw.flush();
            }
        } finally {
            IoUtils.closeQuietly(info.fd);
            StrictMode.setThreadPolicy(oldPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleServiceArgs(ServiceArgsData data) {
        int res;
        CreateServiceData createData = this.mServicesData.get(data.token);
        Service s = this.mServices.get(data.token);
        if (s != null) {
            try {
                if (data.args != null) {
                    data.args.setExtrasClassLoader(s.getClassLoader());
                    data.args.prepareToEnterProcess(isProtectedComponent(createData.info), s.getAttributionSource());
                }
                if (!data.taskRemoved) {
                    res = s.onStartCommand(data.args, data.flags, data.startId);
                } else {
                    s.onTaskRemoved(data.args);
                    res = 1000;
                }
                QueuedWork.waitToFinish();
                try {
                    ActivityManager.getService().serviceDoneExecuting(data.token, 1, data.startId, res);
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            } catch (Exception e2) {
                if (!this.mInstrumentation.onException(s, e2)) {
                    throw new RuntimeException("Unable to start service " + s + " with " + data.args + ": " + e2.toString(), e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStopService(IBinder token) {
        Service s;
        synchronized (this.mResourcesManager) {
            this.mServicesData.remove(token);
            s = this.mServices.remove(token);
        }
        if (s != null) {
            try {
                if (localLOGV) {
                    Slog.v(TAG, "Destroying service " + s);
                }
                s.onDestroy();
                s.detachAndCleanUp();
                Context context = s.getBaseContext();
                if (context instanceof ContextImpl) {
                    String who = s.getClassName();
                    ((ContextImpl) context).scheduleFinalCleanup(who, "Service");
                }
                QueuedWork.waitToFinish();
                try {
                    ActivityManager.getService().serviceDoneExecuting(token, 2, 0, 0);
                    return;
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            } catch (Exception e2) {
                if (!this.mInstrumentation.onException(s, e2)) {
                    throw new RuntimeException("Unable to stop service " + s + ": " + e2.toString(), e2);
                }
                Slog.i(TAG, "handleStopService: exception for " + token, e2);
                return;
            }
        }
        Slog.i(TAG, "handleStopService: token=" + token + " not found.");
    }

    public boolean performResumeActivity(ActivityClientRecord r, boolean finalStateRequest, String reason) {
        if (localLOGV) {
            Slog.v(TAG, "Performing resume of " + r + " finished= " + (r != null ? Boolean.valueOf(r.activity.mFinished) : null));
        }
        if (r.activity.mFinished) {
            return false;
        }
        if (r.getLifecycleState() == 3) {
            if (!finalStateRequest) {
                RuntimeException e = new IllegalStateException("Trying to resume activity which is already resumed");
                Slog.e(TAG, e.getMessage(), e);
                Slog.e(TAG, r.getStateString());
            }
            return false;
        }
        if (finalStateRequest) {
            r.hideForNow = false;
            r.activity.mStartedActivity = false;
        }
        try {
            try {
                r.activity.onStateNotSaved();
                r.activity.mFragments.noteStateNotSaved();
                checkAndBlockForNetworkAccess();
                if (r.pendingIntents != null) {
                    deliverNewIntents(r, r.pendingIntents);
                    r.pendingIntents = null;
                }
                if (r.pendingResults != null) {
                    deliverResults(r, r.pendingResults, reason);
                    r.pendingResults = null;
                }
                Trace.traceBegin(64L, "performResume");
                r.activity.performResume(r.startsNotResumed, reason);
                r.state = null;
                r.persistentState = null;
                r.setState(3);
                reportTopResumedActivityChanged(r, r.isTopResumedActivity, "topWhenResuming");
                this.mSocExt.hintBoostFWKActivityResumed(r.activity);
                this.mOplusActivityThreadExt.setLifecycleState(3);
            } catch (Exception e2) {
                if (!this.mInstrumentation.onException(r.activity, e2)) {
                    throw new RuntimeException("Unable to resume activity " + r.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                }
            }
            Trace.traceEnd(64L);
            return true;
        } catch (Throwable th) {
            Trace.traceEnd(64L);
            throw th;
        }
    }

    static final void cleanUpPendingRemoveWindows(ActivityClientRecord r, boolean force) {
        if (r.mPreserveWindow && !force) {
            return;
        }
        if (r.mPendingRemoveWindow != null) {
            r.mPendingRemoveWindowManager.removeViewImmediate(r.mPendingRemoveWindow.getDecorView());
            IBinder wtoken = r.mPendingRemoveWindow.getDecorView().getWindowToken();
            if (wtoken != null) {
                WindowManagerGlobal.getInstance().closeAll(wtoken, r.activity.getClass().getName(), "Activity");
            }
        }
        r.mPendingRemoveWindow = null;
        r.mPendingRemoveWindowManager = null;
    }

    @Override // android.app.ClientTransactionHandler
    public void handleResumeActivity(ActivityClientRecord r, boolean finalStateRequest, boolean isForward, String reason) {
        this.mOplusActivityThreadExt.handleResumeActivity();
        unscheduleGcIdler();
        this.mSomeActivitiesChanged = true;
        if (!performResumeActivity(r, finalStateRequest, reason) || this.mActivitiesToBeDestroyed.containsKey(r.token)) {
            return;
        }
        Activity a = r.activity;
        if (localLOGV) {
            Slog.v(TAG, "Resume " + r + " started activity: " + a.mStartedActivity + ", hideForNow: " + r.hideForNow + ", finished: " + a.mFinished);
        }
        int forwardBit = isForward ? 256 : 0;
        boolean willBeVisible = !a.mStartedActivity;
        if (!willBeVisible) {
            willBeVisible = ActivityClient.getInstance().willActivityBeVisible(a.getActivityToken());
        }
        if (r.window == null && !a.mFinished && willBeVisible) {
            r.window = r.activity.getWindow();
            View decor = r.window.getDecorView();
            decor.setVisibility(4);
            ViewManager wm = a.getWindowManager();
            WindowManager.LayoutParams l = r.window.getAttributes();
            a.mDecor = decor;
            l.type = 1;
            l.softInputMode |= forwardBit;
            if (r.mPreserveWindow) {
                a.mWindowAdded = true;
                r.mPreserveWindow = false;
                ViewRootImpl impl = decor.getViewRootImpl();
                if (impl != null) {
                    impl.notifyChildRebuilt();
                }
            }
            if (a.mVisibleFromClient) {
                if (!a.mWindowAdded) {
                    a.mWindowAdded = true;
                    wm.addView(decor, l);
                } else {
                    a.onWindowAttributesChanged(l);
                }
            }
        } else if (!willBeVisible) {
            if (localLOGV) {
                Slog.v(TAG, "Launch " + r + " mStartedActivity set");
            }
            r.hideForNow = true;
        }
        cleanUpPendingRemoveWindows(r, false);
        if (!r.activity.mFinished && willBeVisible && r.activity.mDecor != null && !r.hideForNow) {
            if (localLOGV) {
                Slog.v(TAG, "Resuming " + r + " with isForward=" + isForward);
            }
            ViewRootImpl impl2 = r.window.getDecorView().getViewRootImpl();
            WindowManager.LayoutParams l2 = impl2 != null ? impl2.mWindowAttributes : r.window.getAttributes();
            if ((256 & l2.softInputMode) != forwardBit) {
                l2.softInputMode = (l2.softInputMode & (-257)) | forwardBit;
                if (r.activity.mVisibleFromClient) {
                    ViewManager wm2 = a.getWindowManager();
                    wm2.updateViewLayout(r.window.getDecorView(), l2);
                }
            }
            r.activity.mVisibleFromServer = true;
            this.mNumVisibleActivities++;
            if (r.activity.mVisibleFromClient) {
                r.activity.makeVisible();
            }
        }
        ActivityClientRecord activityClientRecord = this.mNewActivities;
        if (activityClientRecord != null && activityClientRecord != r) {
            ActivityClientRecord cur = this.mNewActivities;
            do {
                ActivityClientRecord prev = cur;
                cur = cur.nextIdle;
                if (cur == r) {
                    prev.nextIdle = cur.nextIdle;
                }
            } while (cur != null);
            r.nextIdle = this.mNewActivities;
        }
        this.mOplusActivityThreadExt.updateCurrentActivity(a.getComponentName().getClassName());
        this.mOplusActivityThreadExt.hookPerformResumeActivity(r.activityInfo, this.mConfiguration);
        this.mNewActivities = r;
        if (localLOGV) {
            Slog.v(TAG, "Scheduling idle handler for " + r);
        }
        Looper.myQueue().addIdleHandler(new Idler());
    }

    @Override // android.app.ClientTransactionHandler
    public void handleTopResumedActivityChanged(ActivityClientRecord r, boolean onTop, String reason) {
        if (DEBUG_ORDER) {
            Slog.d(TAG, "Received position change to top: " + onTop + " for activity: " + r);
        }
        if (r.isTopResumedActivity == onTop) {
            if (!Build.IS_DEBUGGABLE) {
                Slog.w(TAG, "Activity top position already set to onTop=" + onTop);
                return;
            }
            Slog.e(TAG, "Activity top position already set to onTop=" + onTop);
        }
        r.isTopResumedActivity = onTop;
        this.mOplusActivityThreadExt.setTopApp(onTop);
        if (r.getLifecycleState() == 3) {
            reportTopResumedActivityChanged(r, onTop, "topStateChangedWhenResumed");
        } else if (DEBUG_ORDER) {
            Slog.d(TAG, "Won't deliver top position change in state=" + r.getLifecycleState());
        }
    }

    private void reportTopResumedActivityChanged(ActivityClientRecord r, boolean onTop, String reason) {
        if (r.lastReportedTopResumedState != onTop) {
            r.lastReportedTopResumedState = onTop;
            r.activity.performTopResumedActivityChanged(onTop, reason);
        }
    }

    @Override // android.app.ClientTransactionHandler
    public void handlePauseActivity(ActivityClientRecord r, boolean finished, boolean userLeaving, int configChanges, PendingTransactionActions pendingActions, String reason) {
        this.mOplusActivityThreadExt.handlePauseActivity();
        if (userLeaving) {
            performUserLeavingActivity(r);
        }
        r.activity.mConfigChangeFlags |= configChanges;
        performPauseActivity(r, finished, reason, pendingActions);
        this.mOplusActivityThreadExt.resetOptState();
        if (r.isPreHoneycomb()) {
            QueuedWork.waitToFinish();
        }
        this.mSomeActivitiesChanged = true;
    }

    final void performUserLeavingActivity(ActivityClientRecord r) {
        this.mInstrumentation.callActivityOnPictureInPictureRequested(r.activity);
        this.mInstrumentation.callActivityOnUserLeaving(r.activity);
    }

    final Bundle performPauseActivity(IBinder token, boolean finished, String reason, PendingTransactionActions pendingActions) {
        ActivityClientRecord r = this.mActivities.get(token);
        if (r != null) {
            return performPauseActivity(r, finished, reason, pendingActions);
        }
        return null;
    }

    private Bundle performPauseActivity(ActivityClientRecord r, boolean finished, String reason, PendingTransactionActions pendingActions) {
        ArrayList<OnActivityPausedListener> listeners;
        if (r.paused) {
            if (r.activity.mFinished) {
                return null;
            }
            RuntimeException e = new RuntimeException("Performing pause of activity that is not resumed: " + r.intent.getComponent().toShortString());
            Slog.e(TAG, e.getMessage(), e);
        }
        if (finished) {
            r.activity.mFinished = true;
        }
        boolean shouldSaveState = !r.activity.mFinished && r.isPreHoneycomb();
        if (shouldSaveState) {
            callActivityOnSaveInstanceState(r);
        }
        performPauseActivityIfNeeded(r, reason);
        synchronized (this.mOnPauseListeners) {
            listeners = this.mOnPauseListeners.remove(r.activity);
        }
        int size = listeners != null ? listeners.size() : 0;
        for (int i = 0; i < size; i++) {
            listeners.get(i).onPaused(r.activity);
        }
        Bundle oldState = pendingActions != null ? pendingActions.getOldState() : null;
        if (oldState != null && r.isPreHoneycomb()) {
            r.state = oldState;
        }
        if (shouldSaveState) {
            return r.state;
        }
        return null;
    }

    private void performPauseActivityIfNeeded(ActivityClientRecord r, String reason) {
        if (r.paused) {
            return;
        }
        reportTopResumedActivityChanged(r, false, "pausing");
        try {
            r.activity.mCalled = false;
            this.mInstrumentation.callActivityOnPause(r.activity);
        } catch (SuperNotCalledException e) {
            throw e;
        } catch (Exception e2) {
            if (!this.mInstrumentation.onException(r.activity, e2)) {
                throw new RuntimeException("Unable to pause activity " + safeToComponentShortString(r.intent) + ": " + e2.toString(), e2);
            }
        }
        if (!r.activity.mCalled) {
            throw new SuperNotCalledException("Activity " + safeToComponentShortString(r.intent) + " did not call through to super.onPause()");
        }
        r.setState(4);
        this.mOplusActivityThreadExt.setLifecycleState(4);
    }

    final void performStopActivity(IBinder token, boolean saveState, String reason) {
        ActivityClientRecord r = this.mActivities.get(token);
        performStopActivityInner(r, null, saveState, false, reason);
    }

    private static final class ProviderRefCount {
        public final ProviderClientRecord client;
        public final ContentProviderHolder holder;
        public boolean removePending;
        public int stableCount;
        public int unstableCount;

        ProviderRefCount(ContentProviderHolder inHolder, ProviderClientRecord inClient, int sCount, int uCount) {
            this.holder = inHolder;
            this.client = inClient;
            this.stableCount = sCount;
            this.unstableCount = uCount;
        }
    }

    private void performStopActivityInner(ActivityClientRecord r, PendingTransactionActions.StopInfo info, boolean saveState, boolean finalStateRequest, String reason) {
        if (localLOGV) {
            Slog.v(TAG, "Performing stop of " + r);
        }
        if (r.stopped) {
            if (r.activity.mFinished) {
                return;
            }
            if (!finalStateRequest) {
                RuntimeException e = new RuntimeException("Performing stop of activity that is already stopped: " + r.intent.getComponent().toShortString());
                Slog.e(TAG, e.getMessage(), e);
                Slog.e(TAG, r.getStateString());
            }
        }
        performPauseActivityIfNeeded(r, reason);
        if (info != null) {
            try {
                info.setDescription(r.activity.onCreateDescription());
            } catch (Exception e2) {
                if (!this.mInstrumentation.onException(r.activity, e2)) {
                    throw new RuntimeException("Unable to save state of activity " + r.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                }
            }
        }
        callActivityOnStop(r, saveState, reason);
    }

    private void callActivityOnStop(ActivityClientRecord r, boolean saveState, String reason) {
        boolean shouldSaveState = saveState && !r.activity.mFinished && r.state == null && !r.isPreHoneycomb();
        boolean isPreP = r.isPreP();
        if (shouldSaveState && isPreP) {
            callActivityOnSaveInstanceState(r);
        }
        try {
            r.activity.performStop(r.mPreserveWindow, reason);
        } catch (SuperNotCalledException e) {
            throw e;
        } catch (Exception e2) {
            if (!this.mInstrumentation.onException(r.activity, e2)) {
                throw new RuntimeException("Unable to stop activity " + r.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
            }
        }
        r.setState(5);
        if (shouldSaveState && !isPreP) {
            callActivityOnSaveInstanceState(r);
        }
    }

    private void updateVisibility(ActivityClientRecord r, boolean show) {
        View v = r.activity.mDecor;
        if (v != null) {
            if (show) {
                if (!r.activity.mVisibleFromServer) {
                    r.activity.mVisibleFromServer = true;
                    this.mNumVisibleActivities++;
                    if (r.activity.mVisibleFromClient) {
                        r.activity.makeVisible();
                        return;
                    }
                    return;
                }
                return;
            }
            if (r.activity.mVisibleFromServer) {
                r.activity.mVisibleFromServer = false;
                this.mNumVisibleActivities--;
                v.setVisibility(4);
            }
        }
    }

    @Override // android.app.ClientTransactionHandler
    public void handleStopActivity(ActivityClientRecord r, int configChanges, PendingTransactionActions pendingActions, boolean finalStateRequest, String reason) {
        r.activity.mConfigChangeFlags |= configChanges;
        PendingTransactionActions.StopInfo stopInfo = new PendingTransactionActions.StopInfo();
        performStopActivityInner(r, stopInfo, true, finalStateRequest, reason);
        if (localLOGV) {
            Slog.v(TAG, "Finishing stop of " + r + ": win=" + r.window);
        }
        updateVisibility(r, false);
        if (!r.isPreHoneycomb()) {
            QueuedWork.waitToFinish();
        }
        stopInfo.setActivity(r);
        stopInfo.setState(r.state);
        stopInfo.setPersistentState(r.persistentState);
        pendingActions.setStopInfo(stopInfo);
        this.mSomeActivitiesChanged = true;
    }

    @Override // android.app.ClientTransactionHandler
    public void reportStop(PendingTransactionActions pendingActions) {
        this.mH.post(pendingActions.getStopInfo());
    }

    @Override // android.app.ClientTransactionHandler
    public void performRestartActivity(ActivityClientRecord r, boolean start) {
        if (r.stopped) {
            r.activity.performRestart(start, "performRestartActivity");
            if (start) {
                r.setState(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetCoreSettings(Bundle coreSettings) {
        synchronized (this.mCoreSettingsLock) {
            this.mCoreSettings = coreSettings;
        }
        onCoreSettingsChange();
    }

    private void onCoreSettingsChange() {
        if (updateDebugViewAttributeState()) {
            relaunchAllActivities(false, "onCoreSettingsChange");
        }
    }

    private boolean updateDebugViewAttributeState() {
        boolean previousState = View.sDebugViewAttributes;
        View.sDebugViewAttributesApplicationPackage = this.mCoreSettings.getString(Settings.Global.DEBUG_VIEW_ATTRIBUTES_APPLICATION_PACKAGE, "");
        AppBindData appBindData = this.mBoundApplication;
        String currentPackage = (appBindData == null || appBindData.appInfo == null) ? "<unknown-app>" : this.mBoundApplication.appInfo.packageName;
        View.sDebugViewAttributes = this.mCoreSettings.getInt(Settings.Global.DEBUG_VIEW_ATTRIBUTES, 0) != 0 || View.sDebugViewAttributesApplicationPackage.equals(currentPackage);
        return previousState != View.sDebugViewAttributes;
    }

    private void relaunchAllActivities(boolean preserveWindows, String reason) {
        Log.i(TAG, "Relaunch all activities: " + reason);
        for (int i = this.mActivities.size() - 1; i >= 0; i--) {
            scheduleRelaunchActivityIfPossible(this.mActivities.valueAt(i), preserveWindows);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUpdatePackageCompatibilityInfo(UpdateCompatibilityData data) {
        LoadedApk apk = peekPackageInfo(data.pkg, false);
        if (apk != null) {
            apk.setCompatibilityInfo(data.info);
        }
        LoadedApk apk2 = peekPackageInfo(data.pkg, true);
        if (apk2 != null) {
            apk2.setCompatibilityInfo(data.info);
        }
        this.mConfigurationController.handleConfigurationChanged(data.info);
    }

    private void deliverResults(ActivityClientRecord r, List<ResultInfo> results, String reason) {
        int N = results.size();
        for (int i = 0; i < N; i++) {
            ResultInfo ri = results.get(i);
            try {
                if (ri.mData != null) {
                    ri.mData.setExtrasClassLoader(r.activity.getClassLoader());
                    ri.mData.prepareToEnterProcess(isProtectedComponent(r.activityInfo), r.activity.getAttributionSource());
                }
                if (DEBUG_RESULTS) {
                    Slog.v(TAG, "Delivering result to activity " + r + " : " + ri);
                }
                r.activity.dispatchActivityResult(ri.mResultWho, ri.mRequestCode, ri.mResultCode, ri.mData, reason);
            } catch (Exception e) {
                if (!this.mInstrumentation.onException(r.activity, e)) {
                    throw new RuntimeException("Failure delivering result " + ri + " to activity " + r.intent.getComponent().toShortString() + ": " + e.toString(), e);
                }
            }
        }
    }

    @Override // android.app.ClientTransactionHandler
    public void handleSendResult(ActivityClientRecord r, List<ResultInfo> results, String reason) {
        if (DEBUG_RESULTS) {
            Slog.v(TAG, "Handling send result to " + r);
        }
        boolean resumed = !r.paused;
        if (!r.activity.mFinished && r.activity.mDecor != null && r.hideForNow && resumed) {
            updateVisibility(r, true);
        }
        if (resumed) {
            try {
                r.activity.mCalled = false;
                this.mInstrumentation.callActivityOnPause(r.activity);
                if (!r.activity.mCalled) {
                    throw new SuperNotCalledException("Activity " + r.intent.getComponent().toShortString() + " did not call through to super.onPause()");
                }
            } catch (SuperNotCalledException e) {
                throw e;
            } catch (Exception e2) {
                if (!this.mInstrumentation.onException(r.activity, e2)) {
                    throw new RuntimeException("Unable to pause activity " + r.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                }
            }
        }
        checkAndBlockForNetworkAccess();
        deliverResults(r, results, reason);
        if (resumed) {
            r.activity.performResume(false, reason);
        }
    }

    void performDestroyActivity(ActivityClientRecord r, boolean finishing, int configChanges, boolean getNonConfigInstance, String reason) {
        if (localLOGV) {
            Slog.v(TAG, "Performing finish of " + r);
        }
        Class<?> cls = r.activity.getClass();
        r.activity.mConfigChangeFlags |= configChanges;
        if (finishing) {
            r.activity.mFinished = true;
        }
        performPauseActivityIfNeeded(r, "destroy");
        if (!r.stopped) {
            callActivityOnStop(r, false, "destroy");
        }
        if (getNonConfigInstance) {
            try {
                r.lastNonConfigurationInstances = r.activity.retainNonConfigurationInstances();
            } catch (Exception e) {
                if (!this.mInstrumentation.onException(r.activity, e)) {
                    throw new RuntimeException("Unable to retain activity " + r.intent.getComponent().toShortString() + ": " + e.toString(), e);
                }
            }
        }
        try {
            r.activity.mCalled = false;
            this.mInstrumentation.callActivityOnDestroy(r.activity);
        } catch (SuperNotCalledException e2) {
            throw e2;
        } catch (Exception e3) {
            if (!this.mInstrumentation.onException(r.activity, e3)) {
                throw new RuntimeException("Unable to destroy activity " + safeToComponentShortString(r.intent) + ": " + e3.toString(), e3);
            }
        }
        if (!r.activity.mCalled) {
            throw new SuperNotCalledException("Activity " + safeToComponentShortString(r.intent) + " did not call through to super.onDestroy()");
        }
        if (r.window != null) {
            r.window.closeAllPanels();
        }
        r.setState(6);
        this.mLastReportedWindowingMode.remove(r.activity.getActivityToken());
        schedulePurgeIdler();
        synchronized (this) {
            SplashScreen.SplashScreenManagerGlobal splashScreenManagerGlobal = this.mSplashScreenGlobal;
            if (splashScreenManagerGlobal != null) {
                splashScreenManagerGlobal.tokenDestroyed(r.token);
            }
        }
        synchronized (this.mResourcesManager) {
            this.mActivities.remove(r.token);
        }
        StrictMode.decrementExpectedActivityCount(cls);
    }

    private static String safeToComponentShortString(Intent intent) {
        ComponentName component = intent.getComponent();
        return component == null ? "[Unknown]" : component.toShortString();
    }

    @Override // android.app.ClientTransactionHandler
    public Map<IBinder, ClientTransactionItem> getActivitiesToBeDestroyed() {
        return this.mActivitiesToBeDestroyed;
    }

    @Override // android.app.ClientTransactionHandler
    public void handleDestroyActivity(ActivityClientRecord r, boolean finishing, int configChanges, boolean getNonConfigInstance, String reason) {
        performDestroyActivity(r, finishing, configChanges, getNonConfigInstance, reason);
        cleanUpPendingRemoveWindows(r, finishing);
        WindowManager wm = r.activity.getWindowManager();
        View v = r.activity.mDecor;
        if (v != null) {
            if (r.activity.mVisibleFromServer) {
                this.mNumVisibleActivities--;
            }
            IBinder wtoken = v.getWindowToken();
            if (r.activity.mWindowAdded) {
                if (r.mPreserveWindow) {
                    r.mPendingRemoveWindow = r.window;
                    r.mPendingRemoveWindowManager = wm;
                    r.window.clearContentView();
                } else {
                    ViewRootImpl viewRoot = v.getViewRootImpl();
                    if (viewRoot != null) {
                        viewRoot.setActivityConfigCallback(null);
                    }
                    wm.removeViewImmediate(v);
                }
            }
            if (wtoken != null && r.mPendingRemoveWindow == null) {
                WindowManagerGlobal.getInstance().closeAll(wtoken, r.activity.getClass().getName(), "Activity");
            } else if (r.mPendingRemoveWindow != null) {
                WindowManagerGlobal.getInstance().closeAllExceptView(r.token, v, r.activity.getClass().getName(), "Activity");
            }
            r.activity.mDecor = null;
        }
        if (r.mPendingRemoveWindow == null) {
            WindowManagerGlobal.getInstance().closeAll(r.token, r.activity.getClass().getName(), "Activity");
        }
        Context c = r.activity.getBaseContext();
        if (c instanceof ContextImpl) {
            ((ContextImpl) c).scheduleFinalCleanup(r.activity.getClass().getName(), "Activity");
        }
        if (finishing) {
            ActivityClient.getInstance().activityDestroyed(r.token);
        }
        this.mSomeActivitiesChanged = true;
    }

    @Override // android.app.ClientTransactionHandler
    public ActivityClientRecord prepareRelaunchActivity(IBinder token, List<ResultInfo> pendingResults, List<ReferrerIntent> pendingNewIntents, int configChanges, MergedConfiguration config, boolean preserveWindow) {
        ActivityClientRecord target = null;
        boolean scheduleRelaunch = false;
        synchronized (this.mResourcesManager) {
            int i = 0;
            while (true) {
                if (i >= this.mRelaunchingActivities.size()) {
                    break;
                }
                ActivityClientRecord r = this.mRelaunchingActivities.get(i);
                if (DEBUG_ORDER) {
                    Slog.d(TAG, "requestRelaunchActivity: " + this + ", trying: " + r);
                }
                if (r.token != token) {
                    i++;
                } else {
                    target = r;
                    if (pendingResults != null) {
                        if (r.pendingResults != null) {
                            r.pendingResults.addAll(pendingResults);
                        } else {
                            r.pendingResults = pendingResults;
                        }
                    }
                    if (pendingNewIntents != null) {
                        if (r.pendingIntents != null) {
                            r.pendingIntents.addAll(pendingNewIntents);
                        } else {
                            r.pendingIntents = pendingNewIntents;
                        }
                    }
                }
            }
            if (target == null) {
                if (DEBUG_ORDER) {
                    Slog.d(TAG, "requestRelaunchActivity: target is null");
                }
                target = new ActivityClientRecord();
                target.token = token;
                target.pendingResults = pendingResults;
                target.pendingIntents = pendingNewIntents;
                target.mPreserveWindow = preserveWindow;
                this.mRelaunchingActivities.add(target);
                scheduleRelaunch = true;
            }
            if (this.mDebugOn) {
                Slog.d(TAG, "prepareRelaunchActivity: " + config.getOverrideConfiguration() + " target " + target);
            }
            target.createdConfig = config.getGlobalConfiguration();
            target.overrideConfig = config.getOverrideConfiguration();
            target.pendingConfigChanges |= configChanges;
        }
        if (scheduleRelaunch) {
            return target;
        }
        return null;
    }

    @Override // android.app.ClientTransactionHandler
    public void handleRelaunchActivity(ActivityClientRecord tmp, PendingTransactionActions pendingActions) throws Throwable {
        ActivityClientRecord activityClientRecord;
        Configuration config;
        unscheduleGcIdler();
        this.mSomeActivitiesChanged = true;
        synchronized (this.mResourcesManager) {
            try {
                int N = this.mRelaunchingActivities.size();
                activityClientRecord = tmp;
                try {
                    IBinder token = activityClientRecord.token;
                    int i = 0;
                    int configChanges = 0;
                    ActivityClientRecord tmp2 = null;
                    while (i < N) {
                        try {
                            ActivityClientRecord r = this.mRelaunchingActivities.get(i);
                            if (r.token == token) {
                                try {
                                    int configChanges2 = r.pendingConfigChanges | configChanges;
                                    try {
                                        this.mRelaunchingActivities.remove(i);
                                        i--;
                                        N--;
                                        tmp2 = r;
                                        configChanges = configChanges2;
                                    } catch (Throwable th) {
                                        e = th;
                                        while (true) {
                                            try {
                                                throw e;
                                            } catch (Throwable th2) {
                                                e = th2;
                                            }
                                        }
                                    }
                                } catch (Throwable th3) {
                                    e = th3;
                                }
                            }
                            i++;
                        } catch (Throwable th4) {
                            e = th4;
                        }
                    }
                    if (tmp2 == null) {
                        if (DEBUG_CONFIGURATION) {
                            Slog.v(TAG, "Abort, activity not relaunching!");
                        }
                        return;
                    }
                    if (DEBUG_CONFIGURATION) {
                        Slog.v(TAG, "Relaunching activity " + tmp2.token + " with configChanges=0x" + Integer.toHexString(configChanges));
                    }
                    Configuration changedConfig = this.mConfigurationController.getPendingConfiguration(true);
                    this.mPendingConfiguration = null;
                    Configuration changedConfig2 = (tmp2.createdConfig == null || ((config = this.mConfigurationController.getConfiguration()) != null && (!tmp2.createdConfig.isOtherSeqNewer(config) || config.diff(tmp2.createdConfig) == 0)) || !(changedConfig == null || tmp2.createdConfig.isOtherSeqNewer(changedConfig))) ? changedConfig : tmp2.createdConfig;
                    if (DEBUG_CONFIGURATION) {
                        Slog.v(TAG, "Relaunching activity " + tmp2.token + ": changedConfig=" + changedConfig2);
                    }
                    if (changedConfig2 != null) {
                        this.mConfigurationController.updateDefaultDensity(changedConfig2.densityDpi);
                        this.mConfigurationController.handleConfigurationChanged(changedConfig2, null);
                        this.mCurDefaultDisplayDpi = this.mConfigurationController.getCurDefaultDisplayDpi();
                        this.mConfiguration = this.mConfigurationController.getConfiguration();
                    }
                    ActivityClientRecord r2 = this.mActivities.get(tmp2.token);
                    if (DEBUG_CONFIGURATION) {
                        Slog.v(TAG, "Handling relaunch of " + r2);
                    }
                    if (r2 == null) {
                        return;
                    }
                    r2.activity.mConfigChangeFlags |= configChanges;
                    r2.mPreserveWindow = tmp2.mPreserveWindow;
                    r2.activity.mChangingConfigurations = true;
                    try {
                        if (r2.mPreserveWindow) {
                            WindowManagerGlobal.getWindowSession().prepareToReplaceWindows(r2.token, true);
                        }
                        handleRelaunchActivityInner(r2, configChanges, tmp2.pendingResults, tmp2.pendingIntents, pendingActions, tmp2.startsNotResumed, tmp2.overrideConfig, "handleRelaunchActivity");
                        if (pendingActions != null) {
                            pendingActions.setReportRelaunchToWindowManager(true);
                        }
                    } catch (RemoteException e) {
                        throw e.rethrowFromSystemServer();
                    }
                } catch (Throwable th5) {
                    e = th5;
                    while (true) {
                        throw e;
                    }
                }
            } catch (Throwable th6) {
                e = th6;
                activityClientRecord = tmp;
            }
        }
    }

    void scheduleRelaunchActivity(IBinder token) {
        ActivityClientRecord r = this.mActivities.get(token);
        if (r != null) {
            Log.i(TAG, "Schedule relaunch activity: " + r.activityInfo.name);
            scheduleRelaunchActivityIfPossible(r, !r.stopped);
        }
    }

    private void scheduleRelaunchActivityIfPossible(ActivityClientRecord r, boolean preserveWindow) {
        if ((r.activity != null && r.activity.mFinished) || (r.token instanceof Binder)) {
            return;
        }
        if (preserveWindow && r.window != null) {
            r.mPreserveWindow = true;
        }
        this.mH.removeMessages(160, r.token);
        sendMessage(160, r.token);
    }

    public void handleRelaunchActivityLocally(IBinder token) {
        ActivityClientRecord r = this.mActivities.get(token);
        if (r == null) {
            Log.w(TAG, "Activity to relaunch no longer exists");
            return;
        }
        int prevState = r.getLifecycleState();
        if (prevState < 2 || prevState > 5) {
            Log.w(TAG, "Activity state must be in [ON_START..ON_STOP] in order to be relaunched,current state is " + prevState);
            return;
        }
        ActivityClient.getInstance().activityLocalRelaunch(r.token);
        MergedConfiguration mergedConfiguration = new MergedConfiguration(r.createdConfig != null ? r.createdConfig : this.mConfigurationController.getConfiguration(), r.overrideConfig);
        ActivityRelaunchItem activityRelaunchItem = ActivityRelaunchItem.obtain(null, null, 0, mergedConfiguration, r.mPreserveWindow);
        ActivityLifecycleItem lifecycleRequest = TransactionExecutorHelper.getLifecycleRequestForCurrentState(r);
        ClientTransaction transaction = ClientTransaction.obtain(this.mAppThread, r.token);
        transaction.addCallback(activityRelaunchItem);
        transaction.setLifecycleStateRequest(lifecycleRequest);
        executeTransaction(transaction);
    }

    private void handleRelaunchActivityInner(ActivityClientRecord r, int configChanges, List<ResultInfo> pendingResults, List<ReferrerIntent> pendingIntents, PendingTransactionActions pendingActions, boolean startsNotResumed, Configuration overrideConfig, String reason) throws Throwable {
        Intent customIntent = r.activity.mIntent;
        if (!r.paused) {
            performPauseActivity(r, false, reason, (PendingTransactionActions) null);
        }
        if (!r.stopped) {
            callActivityOnStop(r, true, reason);
        }
        handleDestroyActivity(r, false, configChanges, true, reason);
        r.activity = null;
        r.window = null;
        r.hideForNow = false;
        if (pendingResults != null) {
            if (r.pendingResults == null) {
                r.pendingResults = pendingResults;
            } else {
                r.pendingResults.addAll(pendingResults);
            }
        }
        if (pendingIntents != null) {
            if (r.pendingIntents == null) {
                r.pendingIntents = pendingIntents;
            } else {
                r.pendingIntents.addAll(pendingIntents);
            }
        }
        r.startsNotResumed = startsNotResumed;
        r.overrideConfig = overrideConfig;
        handleLaunchActivity(r, pendingActions, customIntent);
    }

    @Override // android.app.ClientTransactionHandler
    public void reportRelaunch(ActivityClientRecord r, PendingTransactionActions pendingActions) {
        ActivityClient.getInstance().activityRelaunched(r.token);
        if (pendingActions.shouldReportRelaunchToWindowManager() && r.window != null) {
            r.window.reportActivityRelaunched();
        }
    }

    private void callActivityOnSaveInstanceState(ActivityClientRecord r) {
        r.state = new Bundle();
        r.state.setAllowFds(false);
        if (r.isPersistable()) {
            r.persistentState = new PersistableBundle();
            this.mInstrumentation.callActivityOnSaveInstanceState(r.activity, r.state, r.persistentState);
        } else {
            this.mInstrumentation.callActivityOnSaveInstanceState(r.activity, r.state);
        }
    }

    @Override // android.app.ActivityThreadInternal
    public ArrayList<ComponentCallbacks2> collectComponentCallbacks(boolean includeUiContexts) {
        ArrayList<ComponentCallbacks2> callbacks = new ArrayList<>();
        synchronized (this.mResourcesManager) {
            int NAPP = this.mAllApplications.size();
            for (int i = 0; i < NAPP; i++) {
                callbacks.add(this.mAllApplications.get(i));
            }
            if (includeUiContexts) {
                for (int i2 = this.mActivities.size() - 1; i2 >= 0; i2--) {
                    Activity a = this.mActivities.valueAt(i2).activity;
                    if (a != null && !a.mFinished) {
                        callbacks.add(a);
                    }
                }
            }
            int NSVC = this.mServices.size();
            for (int i3 = 0; i3 < NSVC; i3++) {
                Service service = this.mServices.valueAt(i3);
                if (includeUiContexts || !(service instanceof WindowProviderService)) {
                    callbacks.add(service);
                }
            }
        }
        synchronized (this.mProviderMap) {
            int NPRV = this.mLocalProviders.size();
            for (int i4 = 0; i4 < NPRV; i4++) {
                callbacks.add(this.mLocalProviders.valueAt(i4).mLocalProvider);
            }
        }
        return callbacks;
    }

    private Configuration performConfigurationChangedForActivity(ActivityClientRecord r, Configuration newBaseConfig, int displayId) {
        r.tmpConfig.setTo(newBaseConfig);
        if (r.overrideConfig != null) {
            r.tmpConfig.updateFrom(r.overrideConfig);
        }
        Configuration reportedConfig = performActivityConfigurationChanged(r.activity, r.tmpConfig, r.overrideConfig, displayId);
        ConfigurationHelper.freeTextLayoutCachesIfNeeded(r.activity.mCurrentConfig.diff(r.tmpConfig));
        return reportedConfig;
    }

    private Configuration performActivityConfigurationChanged(Activity activity, Configuration newConfig, Configuration amOverrideConfig, int displayId) {
        ActivityClientRecord r;
        boolean shouldReportChange;
        IBinder activityToken = activity.getActivityToken();
        handleWindowingModeChangeIfNeeded(activity, newConfig);
        boolean movedToDifferentDisplay = ConfigurationHelper.isDifferentDisplay(activity.getDisplayId(), displayId);
        Configuration currentConfig = activity.mCurrentConfig;
        int diff = currentConfig.diffPublicOnly(newConfig);
        this.mOplusActivityThreadExt.excludeExtConfigDiff(diff);
        boolean z = true;
        boolean hasPublicConfigChange = diff != 0;
        ActivityClientRecord r2 = getActivityClient(activityToken);
        if (hasPublicConfigChange) {
            r = r2;
        } else {
            r = r2;
            if (!ConfigurationHelper.shouldUpdateResources(activityToken, currentConfig, newConfig, amOverrideConfig, movedToDifferentDisplay, Boolean.valueOf(hasPublicConfigChange))) {
                z = false;
            }
        }
        boolean shouldUpdateResources = z;
        boolean shouldReportChange2 = shouldReportChange(diff, currentConfig, newConfig, r != null ? r.mSizeConfigurations : null, activity.mActivityInfo.getRealConfigChanged());
        if ((!shouldUpdateResources && !this.mOplusActivityThreadExt.isWindowModeChanged(activity.mCurrentConfig.windowConfiguration.getWindowingMode(), newConfig.windowConfiguration.getWindowingMode(), activity.getPackageName())) || this.mOplusActivityThreadExt.shouldInterceptConfigForSplit(activityToken, currentConfig, newConfig, amOverrideConfig, movedToDifferentDisplay, Boolean.valueOf(hasPublicConfigChange))) {
            return null;
        }
        this.mOplusActivityThreadExt.hookConfigurationChangedActivity(activity.mActivityInfo, newConfig);
        if (activity.mCurrentConfig == null) {
            shouldReportChange = shouldReportChange2;
        } else {
            this.mOplusActivityThreadExt.shouldReportExtraConfig(activity.mActivityInfo, getPackageManager(), currentConfig, newConfig, shouldReportChange2);
            shouldReportChange = shouldReportChange2;
            this.mOplusActivityThreadExt.shouldConfigChangeByMultiSystem(shouldReportChange, activity.mActivityInfo.getRealConfigChanged(), diff, activity.getPackageName());
        }
        Configuration contextThemeWrapperOverrideConfig = activity.getOverrideConfiguration();
        Configuration finalOverrideConfig = ConfigurationController.createNewConfigAndUpdateIfNotNull(amOverrideConfig, contextThemeWrapperOverrideConfig);
        this.mResourcesManager.updateResourcesForActivity(activityToken, finalOverrideConfig, displayId);
        activity.mConfigChangeFlags = 0;
        activity.mCurrentConfig = new Configuration(newConfig);
        Configuration configToReport = ConfigurationController.createNewConfigAndUpdateIfNotNull(newConfig, contextThemeWrapperOverrideConfig);
        if (movedToDifferentDisplay) {
            activity.dispatchMovedToDisplay(displayId, configToReport);
            ViewRootImpl viewRoot = r.activity.mDecor != null ? r.activity.mDecor.getViewRootImpl() : null;
            if (viewRoot != null) {
                viewRoot.resetIME();
                Slog.v(TAG, "force get inputMethodManager after movedToDifferentDisplay");
            }
        }
        if (this.mOplusActivityThreadExt.getShouldCallActivityConfigChangeState(shouldReportChange) || this.mOplusActivityThreadExt.shouldSendConfigration(currentConfig, newConfig, activityToken)) {
            activity.mCalled = false;
            activity.onConfigurationChanged(configToReport);
            if (!activity.mCalled) {
                throw new SuperNotCalledException("Activity " + activity.getLocalClassName() + " did not call through to super.onConfigurationChanged()");
            }
        }
        return configToReport;
    }

    public static boolean shouldReportChange(int publicDiff, Configuration currentConfig, Configuration newConfig, SizeConfigurationBuckets sizeBuckets, int handledConfigChanges) {
        if (publicDiff == 0) {
            return false;
        }
        int diffWithBucket = SizeConfigurationBuckets.filterDiff(publicDiff, currentConfig, newConfig, sizeBuckets);
        int diff = diffWithBucket != 0 ? diffWithBucket : publicDiff;
        return ((~handledConfigChanges) & diff) == 0;
    }

    public final void applyConfigurationToResources(Configuration config) {
        synchronized (this.mResourcesManager) {
            this.mResourcesManager.applyConfigurationToResources(config, null);
        }
    }

    @Override // android.app.ClientTransactionHandler
    public void handleConfigurationChanged(Configuration config) {
        this.mConfigurationController.handleConfigurationChanged(config);
        this.mCurDefaultDisplayDpi = this.mConfigurationController.getCurDefaultDisplayDpi();
        this.mConfiguration = this.mConfigurationController.getConfiguration();
        this.mPendingConfiguration = this.mConfigurationController.getPendingConfiguration(false);
    }

    private void handleWindowingModeChangeIfNeeded(Activity activity, Configuration newConfiguration) {
        int newWindowingMode = newConfiguration.windowConfiguration.getWindowingMode();
        IBinder token = activity.getActivityToken();
        int oldWindowingMode = this.mLastReportedWindowingMode.getOrDefault(token, 0).intValue();
        if (oldWindowingMode == newWindowingMode) {
            return;
        }
        if (newWindowingMode == 2) {
            activity.dispatchPictureInPictureModeChanged(true, newConfiguration);
        } else if (oldWindowingMode == 2) {
            activity.dispatchPictureInPictureModeChanged(false, newConfiguration);
        }
        boolean wasInMultiWindowMode = WindowConfiguration.inMultiWindowMode(oldWindowingMode) || this.mOplusActivityThreadExt.isZoomSupportMultiWindow(activity, oldWindowingMode);
        boolean nowInMultiWindowMode = WindowConfiguration.inMultiWindowMode(newWindowingMode) || this.mOplusActivityThreadExt.isZoomSupportMultiWindow(activity, newWindowingMode);
        if (wasInMultiWindowMode != nowInMultiWindowMode) {
            activity.dispatchMultiWindowModeChanged(nowInMultiWindowMode, newConfiguration);
        }
        this.mLastReportedWindowingMode.put(token, Integer.valueOf(newWindowingMode));
    }

    public void handleSystemApplicationInfoChanged(ApplicationInfo ai) {
        Preconditions.checkState(this.mSystemThread, "Must only be called in the system process");
        handleApplicationInfoChanged(ai);
    }

    public void handleApplicationInfoChanged(ApplicationInfo ai) {
        LoadedApk apk;
        LoadedApk resApk;
        synchronized (this.mResourcesManager) {
            WeakReference<LoadedApk> ref = this.mPackages.get(ai.packageName);
            apk = ref != null ? ref.get() : null;
            WeakReference<LoadedApk> ref2 = this.mResourcePackages.get(ai.packageName);
            resApk = ref2 != null ? ref2.get() : null;
        }
        if (apk != null) {
            ArrayList<String> oldPaths = new ArrayList<>();
            LoadedApk.makePaths(this, apk.getApplicationInfo(), oldPaths);
            apk.updateApplicationInfo(ai, oldPaths);
        }
        if (resApk != null) {
            ArrayList<String> oldPaths2 = new ArrayList<>();
            LoadedApk.makePaths(this, resApk.getApplicationInfo(), oldPaths2);
            resApk.updateApplicationInfo(ai, oldPaths2);
        }
        synchronized (this.mResourcesManager) {
            this.mResourcesManager.applyAllPendingAppInfoUpdates();
        }
    }

    @Override // android.app.ClientTransactionHandler
    public void updatePendingActivityConfiguration(IBinder token, Configuration overrideConfig) {
        synchronized (this.mPendingOverrideConfigs) {
            Configuration pendingOverrideConfig = this.mPendingOverrideConfigs.get(token);
            if (pendingOverrideConfig != null && !pendingOverrideConfig.isOtherSeqNewer(overrideConfig)) {
                if (DEBUG_CONFIGURATION) {
                    Slog.v(TAG, "Activity has newer configuration pending so this transaction will be dropped. overrideConfig=" + overrideConfig + " pendingOverrideConfig=" + pendingOverrideConfig);
                }
            } else {
                this.mPendingOverrideConfigs.put(token, overrideConfig);
            }
        }
    }

    @Override // android.app.ClientTransactionHandler
    public void handleActivityConfigurationChanged(ActivityClientRecord r, Configuration overrideConfig, int displayId) {
        synchronized (this.mPendingOverrideConfigs) {
            Configuration pendingOverrideConfig = this.mPendingOverrideConfigs.get(r.token);
            if (overrideConfig.isOtherSeqNewer(pendingOverrideConfig)) {
                if (DEBUG_CONFIGURATION) {
                    Slog.v(TAG, "Activity has newer configuration pending so drop this transaction. overrideConfig=" + overrideConfig + " pendingOverrideConfig=" + pendingOverrideConfig);
                }
                return;
            }
            this.mPendingOverrideConfigs.remove(r.token);
            if (displayId == -1) {
                displayId = r.activity.getDisplayId();
            }
            boolean movedToDifferentDisplay = ConfigurationHelper.isDifferentDisplay(r.activity.getDisplayId(), displayId);
            this.mOplusActivityThreadExt.onDisplayChanged(displayId);
            if (r.overrideConfig != null && !r.overrideConfig.isOtherSeqNewer(overrideConfig) && !movedToDifferentDisplay) {
                if (DEBUG_CONFIGURATION) {
                    Slog.v(TAG, "Activity already handled newer configuration so drop this transaction. overrideConfig=" + overrideConfig + " r.overrideConfig=" + r.overrideConfig);
                }
                if (!this.mOplusActivityThreadExt.shouldSendConfigration(r.overrideConfig, overrideConfig, r.token)) {
                    return;
                }
            }
            r.overrideConfig = overrideConfig;
            ViewRootImpl viewRoot = r.activity.mDecor != null ? r.activity.mDecor.getViewRootImpl() : null;
            if (DEBUG_CONFIGURATION) {
                Slog.v(TAG, "Handle activity config changed, activity:" + r.activityInfo.name + ", displayId=" + r.activity.getDisplayId() + (movedToDifferentDisplay ? ", newDisplayId=" + displayId : "") + ", config=" + overrideConfig);
            }
            Configuration reportedConfig = performConfigurationChangedForActivity(r, this.mConfigurationController.getCompatConfiguration(), movedToDifferentDisplay ? displayId : r.activity.getDisplayId());
            if (viewRoot != null) {
                if (movedToDifferentDisplay) {
                    viewRoot.onMovedToDisplay(displayId, reportedConfig);
                }
                viewRoot.updateConfiguration(displayId);
            }
            this.mSomeActivitiesChanged = true;
        }
    }

    final void handleProfilerControl(boolean start, ProfilerInfo profilerInfo, int profileType) {
        try {
            if (start) {
                try {
                    this.mProfiler.setProfiler(profilerInfo);
                    this.mProfiler.startProfiling();
                } catch (RuntimeException e) {
                    Slog.w(TAG, "Profiling failed on path " + profilerInfo.profileFile + " -- can the process access this path?");
                }
                return;
            }
            this.mProfiler.stopProfiling();
        } finally {
            profilerInfo.closeFd();
        }
    }

    public void stopProfiling() {
        Profiler profiler = this.mProfiler;
        if (profiler != null) {
            profiler.stopProfiling();
        }
    }

    static void handleDumpHeap(DumpHeapData dhd) {
        if (dhd.runGc) {
            System.gc();
            System.runFinalization();
            System.gc();
        }
        try {
            ParcelFileDescriptor fd = dhd.fd;
            try {
                if (dhd.managed) {
                    Debug.dumpHprofData(dhd.path, fd.getFileDescriptor());
                } else if (dhd.mallocInfo) {
                    Debug.dumpNativeMallocInfo(fd.getFileDescriptor());
                } else {
                    Debug.dumpNativeHeap(fd.getFileDescriptor());
                }
                if (fd != null) {
                    fd.close();
                }
            } finally {
            }
        } catch (IOException e) {
            if (dhd.managed) {
                Slog.w(TAG, "Managed heap dump failed on path " + dhd.path + " -- can the process access this path?", e);
            } else {
                Slog.w(TAG, "Failed to dump heap", e);
            }
        } catch (RuntimeException e2) {
            Slog.wtf(TAG, "Heap dumper threw a runtime exception", e2);
        }
        try {
            ActivityManager.getService().dumpHeapFinished(dhd.path);
            if (dhd.finishCallback != null) {
                dhd.finishCallback.sendResult(null);
            }
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:59:0x00eb
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    final void handleDispatchPackageBroadcast(int r17, java.lang.String[] r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.ActivityThread.handleDispatchPackageBroadcast(int, java.lang.String[]):void");
    }

    final void handleLowMemory() {
        ArrayList<ComponentCallbacks2> callbacks = collectComponentCallbacks(true);
        int N = callbacks.size();
        for (int i = 0; i < N; i++) {
            callbacks.get(i).onLowMemory();
        }
        int i2 = Process.myUid();
        if (i2 != 1000) {
            int sqliteReleased = SQLiteDatabase.releaseMemory();
            EventLog.writeEvent(SQLITE_MEM_RELEASED_EVENT_LOG_TAG, sqliteReleased);
        }
        Canvas.freeCaches();
        Canvas.freeTextLayoutCaches();
        BinderInternal.forceGc("mem");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTrimMemory(int level) {
        Trace.traceBegin(64L, "trimMemory");
        if (DEBUG_MEMORY_TRIM) {
            Slog.v(TAG, "Trimming memory to level: " + level);
        }
        if (level >= 80) {
            PropertyInvalidatedCache.onTrimMemory();
        }
        ArrayList<ComponentCallbacks2> callbacks = collectComponentCallbacks(true);
        int N = callbacks.size();
        for (int i = 0; i < N; i++) {
            callbacks.get(i).onTrimMemory(level);
        }
        WindowManagerGlobal.getInstance().trimMemory(level);
        Trace.traceEnd(64L);
        if (SystemProperties.getInt("debug.am.run_gc_trim_level", Integer.MAX_VALUE) <= level) {
            unscheduleGcIdler();
            doGcIfNeeded("tm");
        }
        if (SystemProperties.getInt("debug.am.run_mallopt_trim_level", Integer.MAX_VALUE) <= level) {
            unschedulePurgeIdler();
            purgePendingResources();
        }
    }

    private void setupGraphicsSupport(Context context) throws ErrnoException {
        Trace.traceBegin(64L, "setupGraphicsSupport");
        if (!"android".equals(context.getPackageName())) {
            File cacheDir = context.getCacheDir();
            if (cacheDir == null) {
                Log.v(TAG, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory");
            } else {
                String tmpdir = cacheDir.getAbsolutePath();
                System.setProperty("java.io.tmpdir", tmpdir);
                try {
                    Os.setenv("TMPDIR", tmpdir, true);
                } catch (ErrnoException ex) {
                    Log.w(TAG, "Unable to initialize $TMPDIR", ex);
                }
            }
            Context deviceContext = context.createDeviceProtectedStorageContext();
            File codeCacheDir = deviceContext.getCodeCacheDir();
            if (codeCacheDir == null) {
                Log.w(TAG, "Unable to use shader/script cache: missing code-cache directory");
            } else {
                try {
                    int uid = Process.myUid();
                    String[] packages = getPackageManager().getPackagesForUid(uid);
                    if (packages != null) {
                        HardwareRenderer.setupDiskCache(codeCacheDir);
                        RenderScriptCacheDir.setupDiskCache(codeCacheDir);
                    }
                } catch (RemoteException e) {
                    Trace.traceEnd(64L);
                    throw e.rethrowFromSystemServer();
                }
            }
        }
        GraphicsEnvironment.getInstance().setup(context, this.mCoreSettings);
        Trace.traceEnd(64L);
    }

    private String getInstrumentationLibrary(ApplicationInfo appInfo, InstrumentationInfo insInfo) {
        if (appInfo.primaryCpuAbi != null && appInfo.secondaryCpuAbi != null && appInfo.secondaryCpuAbi.equals(insInfo.secondaryCpuAbi)) {
            String secondaryIsa = VMRuntime.getInstructionSet(appInfo.secondaryCpuAbi);
            String secondaryDexCodeIsa = SystemProperties.get("ro.dalvik.vm.isa." + secondaryIsa);
            String secondaryIsa2 = secondaryDexCodeIsa.isEmpty() ? secondaryIsa : secondaryDexCodeIsa;
            String runtimeIsa = VMRuntime.getRuntime().vmInstructionSet();
            if (runtimeIsa.equals(secondaryIsa2)) {
                return insInfo.secondaryNativeLibraryDir;
            }
        }
        return insInfo.nativeLibraryDir;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00b4 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0429 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleBindApplication(android.app.ActivityThread.AppBindData r26) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.ActivityThread.handleBindApplication(android.app.ActivityThread$AppBindData):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetContentCaptureOptionsCallback(String packageName) {
        IBinder b;
        if (this.mContentCaptureOptionsCallback != null || (b = ServiceManager.getService("content_capture")) == null) {
            return;
        }
        IContentCaptureManager service = IContentCaptureManager.Stub.asInterface(b);
        IContentCaptureOptionsCallback.Stub stub = new IContentCaptureOptionsCallback.Stub() { // from class: android.app.ActivityThread.2
            @Override // android.view.contentcapture.IContentCaptureOptionsCallback
            public void setContentCaptureOptions(ContentCaptureOptions options) throws RemoteException {
                if (ActivityThread.this.mInitialApplication != null) {
                    ActivityThread.this.mInitialApplication.setContentCaptureOptions(options);
                }
            }
        };
        this.mContentCaptureOptionsCallback = stub;
        try {
            service.registerContentCaptureOptionsCallback(packageName, stub);
        } catch (RemoteException e) {
            Slog.w(TAG, "registerContentCaptureOptionsCallback() failed: " + packageName, e);
            this.mContentCaptureOptionsCallback = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleInstrumentWithoutRestart(AppBindData data) {
        try {
            data.compatInfo = CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO;
            data.info = getPackageInfoNoCheck(data.appInfo, data.compatInfo);
            this.mInstrumentingWithoutRestart = true;
            InstrumentationInfo ii = prepareInstrumentation(data);
            ContextImpl appContext = ContextImpl.createAppContext(this, data.info);
            initInstrumentation(ii, data, appContext);
            try {
                this.mInstrumentation.onCreate(data.instrumentationArgs);
            } catch (Exception e) {
                throw new RuntimeException("Exception thrown in onCreate() of " + data.instrumentationName + ": " + e.toString(), e);
            }
        } catch (Exception e2) {
            Slog.e(TAG, "Error in handleInstrumentWithoutRestart", e2);
        }
    }

    private InstrumentationInfo prepareInstrumentation(AppBindData data) {
        try {
            InstrumentationInfo ii = new ApplicationPackageManager(null, getPackageManager()).getInstrumentationInfo(data.instrumentationName, 0);
            if (!Objects.equals(data.appInfo.primaryCpuAbi, ii.primaryCpuAbi) || !Objects.equals(data.appInfo.secondaryCpuAbi, ii.secondaryCpuAbi)) {
                Slog.w(TAG, "Package uses different ABI(s) than its instrumentation: package[" + data.appInfo.packageName + "]: " + data.appInfo.primaryCpuAbi + ", " + data.appInfo.secondaryCpuAbi + " instrumentation[" + ii.packageName + "]: " + ii.primaryCpuAbi + ", " + ii.secondaryCpuAbi);
            }
            this.mInstrumentationPackageName = ii.packageName;
            this.mInstrumentationAppDir = ii.sourceDir;
            this.mInstrumentationSplitAppDirs = ii.splitSourceDirs;
            this.mInstrumentationLibDir = getInstrumentationLibrary(data.appInfo, ii);
            this.mInstrumentedAppDir = data.info.getAppDir();
            this.mInstrumentedSplitAppDirs = data.info.getSplitAppDirs();
            this.mInstrumentedLibDir = data.info.getLibDir();
            return ii;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find instrumentation info for: " + data.instrumentationName);
        }
    }

    private void initInstrumentation(InstrumentationInfo ii, AppBindData data, ContextImpl appContext) {
        ApplicationInfo instrApp;
        try {
            instrApp = getPackageManager().getApplicationInfo(ii.packageName, 0L, UserHandle.myUserId());
        } catch (RemoteException e) {
            instrApp = null;
        }
        if (instrApp == null) {
            instrApp = new ApplicationInfo();
        }
        ii.copyTo(instrApp);
        instrApp.initForUser(UserHandle.myUserId());
        LoadedApk pi = getPackageInfo(instrApp, data.compatInfo, appContext.getClassLoader(), false, true, false);
        ContextImpl instrContext = ContextImpl.createAppContext(this, pi, appContext.getOpPackageName());
        try {
            ClassLoader cl = instrContext.getClassLoader();
            this.mInstrumentation = (Instrumentation) cl.loadClass(data.instrumentationName.getClassName()).newInstance();
            ComponentName component = new ComponentName(ii.packageName, ii.name);
            this.mInstrumentation.init(this, instrContext, appContext, component, data.instrumentationWatcher, data.instrumentationUiAutomationConnection);
            if (this.mProfiler.profileFile != null && !ii.handleProfiling && this.mProfiler.profileFd == null) {
                this.mProfiler.handlingProfiling = true;
                File file = new File(this.mProfiler.profileFile);
                file.getParentFile().mkdirs();
                Debug.startMethodTracing(file.toString(), 8388608);
            }
        } catch (Exception e2) {
            throw new RuntimeException("Unable to instantiate instrumentation " + data.instrumentationName + ": " + e2.toString(), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFinishInstrumentationWithoutRestart() {
        this.mInstrumentation.onDestroy();
        this.mInstrumentationPackageName = null;
        this.mInstrumentationAppDir = null;
        this.mInstrumentationSplitAppDirs = null;
        this.mInstrumentationLibDir = null;
        this.mInstrumentedAppDir = null;
        this.mInstrumentedSplitAppDirs = null;
        this.mInstrumentedLibDir = null;
        this.mInstrumentingWithoutRestart = false;
    }

    final void finishInstrumentation(int resultCode, Bundle results) {
        IActivityManager am = ActivityManager.getService();
        if (this.mProfiler.profileFile != null && this.mProfiler.handlingProfiling && this.mProfiler.profileFd == null) {
            Debug.stopMethodTracing();
        }
        try {
            am.finishInstrumentation(this.mAppThread, resultCode, results);
            if (this.mInstrumentingWithoutRestart) {
                sendMessage(171, null);
            }
        } catch (RemoteException ex) {
            throw ex.rethrowFromSystemServer();
        }
    }

    private void installContentProviders(Context context, List<ProviderInfo> providers) throws Throwable {
        ArrayList<ContentProviderHolder> results = new ArrayList<>();
        for (ProviderInfo cpi : providers) {
            if (DEBUG_PROVIDER) {
                StringBuilder buf = new StringBuilder(128);
                buf.append("Pub ");
                buf.append(cpi.authority);
                buf.append(": ");
                buf.append(cpi.name);
                Log.i(TAG, buf.toString());
            }
            ContentProviderHolder cph = installProvider(context, null, cpi, false, true, true);
            if (cph != null) {
                cph.noReleaseNeeded = true;
                results.add(cph);
            }
        }
        try {
            ActivityManager.getService().publishContentProviders(getApplicationThread(), results);
        } catch (RemoteException ex) {
            throw ex.rethrowFromSystemServer();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:42:0x007e
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public final android.content.IContentProvider acquireProvider(android.content.Context r19, java.lang.String r20, int r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.ActivityThread.acquireProvider(android.content.Context, java.lang.String, int, boolean):android.content.IContentProvider");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ProviderKey getGetProviderKey(String auth, int userId) {
        ProviderKey lock;
        ProviderKey key = new ProviderKey(auth, userId);
        synchronized (this.mGetProviderKeys) {
            lock = this.mGetProviderKeys.get(key);
            if (lock == null) {
                lock = key;
                this.mGetProviderKeys.put(key, lock);
            }
        }
        return lock;
    }

    private final void incProviderRefLocked(ProviderRefCount prc, boolean stable) {
        int unstableDelta;
        if (stable) {
            prc.stableCount++;
            if (prc.stableCount == 1) {
                if (prc.removePending) {
                    unstableDelta = -1;
                    if (DEBUG_PROVIDER) {
                        Slog.v(TAG, "incProviderRef: stable snatched provider from the jaws of death");
                    }
                    prc.removePending = false;
                    this.mH.removeMessages(131, prc);
                } else {
                    unstableDelta = 0;
                }
                try {
                    if (DEBUG_PROVIDER) {
                        Slog.v(TAG, "incProviderRef Now stable - " + prc.holder.info.name + ": unstableDelta=" + unstableDelta);
                    }
                    ActivityManager.getService().refContentProvider(prc.holder.connection, 1, unstableDelta);
                    return;
                } catch (RemoteException e) {
                    return;
                }
            }
            return;
        }
        prc.unstableCount++;
        if (prc.unstableCount == 1) {
            if (prc.removePending) {
                if (DEBUG_PROVIDER) {
                    Slog.v(TAG, "incProviderRef: unstable snatched provider from the jaws of death");
                }
                prc.removePending = false;
                this.mH.removeMessages(131, prc);
                return;
            }
            try {
                if (DEBUG_PROVIDER) {
                    Slog.v(TAG, "incProviderRef: Now unstable - " + prc.holder.info.name);
                }
                ActivityManager.getService().refContentProvider(prc.holder.connection, 0, 1);
            } catch (RemoteException e2) {
            }
        }
    }

    public final IContentProvider acquireExistingProvider(Context c, String auth, int userId, boolean stable) {
        synchronized (this.mProviderMap) {
            ProviderKey key = new ProviderKey(auth, userId);
            ProviderClientRecord pr = this.mProviderMap.get(key);
            if (pr == null) {
                return null;
            }
            IContentProvider provider = pr.mProvider;
            IBinder jBinder = provider.asBinder();
            if (!jBinder.isBinderAlive()) {
                Log.i(TAG, "Acquiring provider " + auth + " for user " + userId + ": existing object's process dead");
                handleUnstableProviderDiedLocked(jBinder, true);
                return null;
            }
            ProviderRefCount prc = this.mProviderRefCountMap.get(jBinder);
            if (prc != null) {
                incProviderRefLocked(prc, stable);
            }
            return provider;
        }
    }

    public final boolean releaseProvider(IContentProvider provider, boolean stable) {
        if (provider == null) {
            return false;
        }
        IBinder jBinder = provider.asBinder();
        synchronized (this.mProviderMap) {
            ProviderRefCount prc = this.mProviderRefCountMap.get(jBinder);
            if (prc == null) {
                return false;
            }
            boolean lastRef = false;
            if (stable) {
                if (prc.stableCount == 0) {
                    if (DEBUG_PROVIDER) {
                        Slog.v(TAG, "releaseProvider: stable ref count already 0, how?");
                    }
                    return false;
                }
                prc.stableCount--;
                if (prc.stableCount == 0) {
                    lastRef = prc.unstableCount == 0;
                    try {
                        if (DEBUG_PROVIDER) {
                            Slog.v(TAG, "releaseProvider: No longer stable w/lastRef=" + lastRef + " - " + prc.holder.info.name);
                        }
                        ActivityManager.getService().refContentProvider(prc.holder.connection, -1, lastRef ? 1 : 0);
                    } catch (RemoteException e) {
                    }
                }
            } else {
                if (prc.unstableCount == 0) {
                    if (DEBUG_PROVIDER) {
                        Slog.v(TAG, "releaseProvider: unstable ref count already 0, how?");
                    }
                    return false;
                }
                prc.unstableCount--;
                if (prc.unstableCount == 0) {
                    lastRef = prc.stableCount == 0;
                    if (!lastRef) {
                        try {
                            if (DEBUG_PROVIDER) {
                                Slog.v(TAG, "releaseProvider: No longer unstable - " + prc.holder.info.name);
                            }
                            ActivityManager.getService().refContentProvider(prc.holder.connection, 0, -1);
                        } catch (RemoteException e2) {
                        }
                    }
                }
            }
            if (lastRef) {
                if (!prc.removePending) {
                    if (DEBUG_PROVIDER) {
                        Slog.v(TAG, "releaseProvider: Enqueueing pending removal - " + prc.holder.info.name);
                    }
                    prc.removePending = true;
                    Message msg = this.mH.obtainMessage(131, prc);
                    this.mH.sendMessageDelayed(msg, 1000L);
                } else {
                    Slog.w(TAG, "Duplicate remove pending of provider " + prc.holder.info.name);
                }
            }
            return true;
        }
    }

    final void completeRemoveProvider(ProviderRefCount prc) {
        synchronized (this.mProviderMap) {
            if (!prc.removePending) {
                if (DEBUG_PROVIDER) {
                    Slog.v(TAG, "completeRemoveProvider: lost the race, provider still in use");
                }
                return;
            }
            prc.removePending = false;
            IBinder jBinder = prc.holder.provider.asBinder();
            ProviderRefCount existingPrc = this.mProviderRefCountMap.get(jBinder);
            if (existingPrc == prc) {
                this.mProviderRefCountMap.remove(jBinder);
            }
            for (int i = this.mProviderMap.size() - 1; i >= 0; i--) {
                ProviderClientRecord pr = this.mProviderMap.valueAt(i);
                IBinder myBinder = pr.mProvider.asBinder();
                if (myBinder == jBinder) {
                    this.mProviderMap.removeAt(i);
                }
            }
            try {
                if (DEBUG_PROVIDER) {
                    Slog.v(TAG, "removeProvider: Invoking ActivityManagerService.removeContentProvider(" + prc.holder.info.name + NavigationBarInflaterView.KEY_CODE_END);
                }
                ActivityManager.getService().removeContentProvider(prc.holder.connection, false);
            } catch (RemoteException e) {
            }
        }
    }

    final void handleUnstableProviderDied(IBinder provider, boolean fromClient) {
        synchronized (this.mProviderMap) {
            handleUnstableProviderDiedLocked(provider, fromClient);
        }
    }

    final void handleUnstableProviderDiedLocked(IBinder provider, boolean fromClient) {
        ProviderRefCount prc = this.mProviderRefCountMap.get(provider);
        if (prc != null) {
            if (DEBUG_PROVIDER) {
                Slog.v(TAG, "Cleaning up dead provider " + provider + " " + prc.holder.info.name);
            }
            this.mProviderRefCountMap.remove(provider);
            for (int i = this.mProviderMap.size() - 1; i >= 0; i--) {
                ProviderClientRecord pr = this.mProviderMap.valueAt(i);
                if (pr != null && pr.mProvider.asBinder() == provider) {
                    Slog.i(TAG, "Removing dead content provider:" + pr.mProvider.toString());
                    this.mProviderMap.removeAt(i);
                }
            }
            if (fromClient) {
                try {
                    ActivityManager.getService().unstableProviderDied(prc.holder.connection);
                } catch (RemoteException e) {
                }
            }
        }
    }

    final void appNotRespondingViaProvider(IBinder provider) {
        synchronized (this.mProviderMap) {
            ProviderRefCount prc = this.mProviderRefCountMap.get(provider);
            if (prc != null) {
                try {
                    ActivityManager.getService().appNotRespondingViaProvider(prc.holder.connection);
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            }
        }
    }

    private ProviderClientRecord installProviderAuthoritiesLocked(IContentProvider provider, ContentProvider localProvider, ContentProviderHolder holder) {
        String[] auths = holder.info.authority.split(NavigationBarInflaterView.GRAVITY_SEPARATOR);
        int userId = UserHandle.getUserId(holder.info.applicationInfo.uid);
        if (provider != null) {
            for (String str : auths) {
                switch (str) {
                    case "com.android.contacts":
                    case "call_log":
                    case "call_log_shadow":
                    case "com.android.blockednumber":
                    case "com.android.calendar":
                    case "downloads":
                    case "telephony":
                        Binder.allowBlocking(provider.asBinder());
                        break;
                }
            }
        }
        ProviderClientRecord pcr = new ProviderClientRecord(auths, provider, localProvider, holder);
        for (String auth : auths) {
            ProviderKey key = new ProviderKey(auth, userId);
            ProviderClientRecord existing = this.mProviderMap.get(key);
            if (existing != null) {
                Slog.w(TAG, "Content provider " + pcr.mHolder.info.name + " already published as " + auth);
            } else {
                this.mProviderMap.put(key, pcr);
            }
        }
        return pcr;
    }

    private ContentProviderHolder installProvider(Context context, ContentProviderHolder holder, ProviderInfo info, boolean noisy, boolean noReleaseNeeded, boolean stable) throws Throwable {
        IContentProvider provider;
        ContentProvider localProvider;
        ProviderRefCount providerRefCount;
        ContentProviderHolder retHolder;
        if (holder == null || holder.provider == null) {
            if (DEBUG_PROVIDER || noisy) {
                Slog.d(TAG, "Loading provider " + info.authority + ": " + info.name);
            }
            Context c = null;
            ApplicationInfo ai = info.applicationInfo;
            if (context.getPackageName().equals(ai.packageName)) {
                c = context;
            } else {
                Application application = this.mInitialApplication;
                if (application != null && application.getPackageName().equals(ai.packageName)) {
                    c = this.mInitialApplication;
                } else {
                    try {
                        try {
                            c = context.createPackageContext(ai.packageName, 1);
                        } catch (PackageManager.NameNotFoundException e) {
                        }
                    } catch (PackageManager.NameNotFoundException e2) {
                    }
                }
            }
            if (c == null) {
                Slog.w(TAG, "Unable to get context for package " + ai.packageName + " while loading content provider " + info.name);
                return null;
            }
            if (info.splitName != null) {
                try {
                    c = c.createContextForSplit(info.splitName);
                } catch (PackageManager.NameNotFoundException e3) {
                    throw new RuntimeException(e3);
                }
            }
            if (info.attributionTags != null && info.attributionTags.length > 0) {
                String attributionTag = info.attributionTags[0];
                c = c.createAttributionContext(attributionTag);
            }
            try {
                ClassLoader cl = c.getClassLoader();
                LoadedApk packageInfo = peekPackageInfo(ai.packageName, true);
                if (packageInfo == null) {
                    packageInfo = getSystemContext().mPackageInfo;
                }
                ContentProvider localProvider2 = packageInfo.getAppFactory().instantiateProvider(cl, info.name);
                provider = localProvider2.getIContentProvider();
                if (provider == null) {
                    Slog.e(TAG, "Failed to instantiate class " + info.name + " from sourceDir " + info.applicationInfo.sourceDir);
                    return null;
                }
                if (DEBUG_PROVIDER) {
                    Slog.v(TAG, "Instantiating local provider " + info.name);
                }
                localProvider2.attachInfo(c, info);
                localProvider = localProvider2;
            } catch (Exception e4) {
                if (this.mInstrumentation.onException(null, e4)) {
                    return null;
                }
                throw new RuntimeException("Unable to get provider " + info.name + ": " + e4.toString(), e4);
            }
        } else {
            IContentProvider provider2 = holder.provider;
            if (DEBUG_PROVIDER) {
                Slog.v(TAG, "Installing external provider " + info.authority + ": " + info.name);
            }
            provider = provider2;
            localProvider = null;
        }
        synchronized (this.mProviderMap) {
            try {
                try {
                    if (DEBUG_PROVIDER) {
                        Slog.v(TAG, "Checking to add " + provider + " / " + info.name);
                    }
                    IBinder jBinder = provider.asBinder();
                    if (localProvider != null) {
                        ComponentName cname = new ComponentName(info.packageName, info.name);
                        ProviderClientRecord pr = this.mLocalProvidersByName.get(cname);
                        if (pr != null) {
                            if (DEBUG_PROVIDER) {
                                Slog.v(TAG, "installProvider: lost the race, using existing local provider");
                            }
                            IContentProvider iContentProvider = pr.mProvider;
                        } else {
                            ContentProviderHolder holder2 = new ContentProviderHolder(info);
                            holder2.provider = provider;
                            holder2.noReleaseNeeded = true;
                            pr = installProviderAuthoritiesLocked(provider, localProvider, holder2);
                            this.mLocalProviders.put(jBinder, pr);
                            this.mLocalProvidersByName.put(cname, pr);
                        }
                        retHolder = pr.mHolder;
                    } else {
                        ProviderRefCount prc = this.mProviderRefCountMap.get(jBinder);
                        if (prc != null) {
                            if (DEBUG_PROVIDER) {
                                Slog.v(TAG, "installProvider: lost the race, updating ref count");
                            }
                            if (!noReleaseNeeded) {
                                incProviderRefLocked(prc, stable);
                                try {
                                    ActivityManager.getService().removeContentProvider(holder.connection, stable);
                                } catch (RemoteException e5) {
                                }
                            }
                        } else {
                            ProviderClientRecord client = installProviderAuthoritiesLocked(provider, localProvider, holder);
                            if (noReleaseNeeded) {
                                prc = new ProviderRefCount(holder, client, 1000, 1000);
                            } else {
                                if (stable) {
                                    providerRefCount = new ProviderRefCount(holder, client, 1, 0);
                                } else {
                                    providerRefCount = new ProviderRefCount(holder, client, 0, 1);
                                }
                                prc = providerRefCount;
                            }
                            this.mProviderRefCountMap.put(jBinder, prc);
                        }
                        retHolder = prc.holder;
                    }
                    return retHolder;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRunIsolatedEntryPoint(String entryPoint, String[] entryPointArgs) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Method main = Class.forName(entryPoint).getMethod("main", String[].class);
            main.invoke(null, entryPointArgs);
            System.exit(0);
        } catch (ReflectiveOperationException e) {
            throw new AndroidRuntimeException("runIsolatedEntryPoint failed", e);
        }
    }

    private void attach(boolean system2, long startSeq) {
        long startTime = SystemClock.uptimeMillis();
        sCurrentActivityThread = this;
        this.mConfigurationController = new ConfigurationController(this);
        this.mSystemThread = system2;
        this.mOplusActivityThreadExt.enableDynamicalLogIfNeed();
        this.mDebugOn = SystemProperties.getBoolean("persist.sys.assert.panic", false);
        ONETRACE_EXT.setActiveState(true);
        if (!system2) {
            DdmHandleAppName.setAppName("<pre-initialized>", UserHandle.myUserId());
            RuntimeInit.setApplicationObject(this.mAppThread.asBinder());
            IActivityManager mgr = ActivityManager.getService();
            try {
                mgr.attachApplication(this.mAppThread, startSeq);
                BinderInternal.addGcWatcher(new Runnable() { // from class: android.app.ActivityThread.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!ActivityThread.this.mSomeActivitiesChanged) {
                            return;
                        }
                        Runtime runtime = Runtime.getRuntime();
                        long dalvikMax = runtime.maxMemory();
                        long dalvikUsed = runtime.totalMemory() - runtime.freeMemory();
                        if (dalvikUsed > (3 * dalvikMax) / 4) {
                            if (ActivityThread.DEBUG_MEMORY_TRIM) {
                                Slog.d(ActivityThread.TAG, "Dalvik max=" + (dalvikMax / 1024) + " total=" + (runtime.totalMemory() / 1024) + " used=" + (dalvikUsed / 1024));
                            }
                            ActivityThread.this.mSomeActivitiesChanged = false;
                            try {
                                ActivityTaskManager.getService().releaseSomeActivities(ActivityThread.this.mAppThread);
                            } catch (RemoteException e) {
                                throw e.rethrowFromSystemServer();
                            }
                        }
                    }
                });
            } catch (RemoteException ex) {
                throw ex.rethrowFromSystemServer();
            }
        } else {
            DdmHandleAppName.setAppName("system_process", UserHandle.myUserId());
            try {
                Instrumentation instrumentation = new Instrumentation();
                this.mInstrumentation = instrumentation;
                instrumentation.basicInit(this);
                ContextImpl context = ContextImpl.createAppContext(this, getSystemContext().mPackageInfo);
                Application applicationMakeApplicationInner = context.mPackageInfo.makeApplicationInner(true, null);
                this.mInitialApplication = applicationMakeApplicationInner;
                applicationMakeApplicationInner.onCreate();
            } catch (Exception e) {
                throw new RuntimeException("Unable to instantiate Application():" + e.toString(), e);
            }
        }
        ViewRootImpl.ConfigChangedCallback configChangedCallback = new ViewRootImpl.ConfigChangedCallback() { // from class: android.app.ActivityThread$$ExternalSyntheticLambda0
            @Override // android.view.ViewRootImpl.ConfigChangedCallback
            public final void onConfigurationChanged(Configuration configuration) {
                this.f$0.m158lambda$attach$2$androidappActivityThread(configuration);
            }
        };
        ViewRootImpl.addConfigCallback(configChangedCallback);
        OplusJankMonitorExtPlugin.setLaunchStageTime.call("attach", "attach", Long.valueOf(startTime));
    }

    /* renamed from: lambda$attach$2$android-app-ActivityThread, reason: not valid java name */
    /* synthetic */ void m158lambda$attach$2$androidappActivityThread(Configuration globalConfig) {
        synchronized (this.mResourcesManager) {
            if (this.mResourcesManager.applyConfigurationToResources(globalConfig, null)) {
                this.mConfigurationController.updateLocaleListFromAppContext(this.mInitialApplication.getApplicationContext());
                Configuration updatedConfig = this.mConfigurationController.updatePendingConfiguration(globalConfig);
                if (updatedConfig != null) {
                    sendMessage(118, globalConfig);
                    this.mPendingConfiguration = updatedConfig;
                }
            }
        }
    }

    public static ActivityThread systemMain() {
        ThreadedRenderer.initForSystemProcess();
        ActivityThread thread = new ActivityThread();
        thread.attach(true, 0L);
        return thread;
    }

    public static void updateHttpProxy(Context context) {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService(ConnectivityManager.class);
        Proxy.setHttpProxyConfiguration(cm.getDefaultProxy());
    }

    public final void installSystemProviders(List<ProviderInfo> providers) throws Throwable {
        if (providers != null) {
            installContentProviders(this.mInitialApplication, providers);
        }
    }

    Bundle getCoreSettings() {
        Bundle bundle;
        synchronized (this.mCoreSettingsLock) {
            bundle = this.mCoreSettings;
        }
        return bundle;
    }

    public int getIntCoreSetting(String key, int defaultValue) {
        synchronized (this.mCoreSettingsLock) {
            Bundle bundle = this.mCoreSettings;
            if (bundle == null) {
                return defaultValue;
            }
            return bundle.getInt(key, defaultValue);
        }
    }

    public String getStringCoreSetting(String key, String defaultValue) {
        synchronized (this.mCoreSettingsLock) {
            Bundle bundle = this.mCoreSettings;
            if (bundle == null) {
                return defaultValue;
            }
            return bundle.getString(key, defaultValue);
        }
    }

    float getFloatCoreSetting(String key, float defaultValue) {
        synchronized (this.mCoreSettingsLock) {
            Bundle bundle = this.mCoreSettings;
            if (bundle == null) {
                return defaultValue;
            }
            return bundle.getFloat(key, defaultValue);
        }
    }

    private static class AndroidOs extends ForwardingOs {
        public static void install() {
            libcore.io.Os def;
            do {
                def = libcore.io.Os.getDefault();
            } while (!libcore.io.Os.compareAndSetDefault(def, new AndroidOs(def)));
        }

        private AndroidOs(libcore.io.Os os) {
            super(os);
        }

        private FileDescriptor openDeprecatedDataPath(String path, int mode) throws ErrnoException {
            Uri uri = ContentResolver.translateDeprecatedDataPath(path);
            Log.v(ActivityThread.TAG, "Redirecting " + path + " to " + uri);
            ContentResolver cr = ActivityThread.currentActivityThread().getApplication().getContentResolver();
            try {
                FileDescriptor fd = new FileDescriptor();
                fd.setInt$(cr.openFileDescriptor(uri, FileUtils.translateModePosixToString(mode)).detachFd());
                return fd;
            } catch (FileNotFoundException e) {
                throw new ErrnoException(e.getMessage(), OsConstants.ENOENT);
            } catch (SecurityException e2) {
                throw new ErrnoException(e2.getMessage(), OsConstants.EACCES);
            }
        }

        private void deleteDeprecatedDataPath(String path) throws ErrnoException, FileNotFoundException {
            Uri uri = ContentResolver.translateDeprecatedDataPath(path);
            Log.v(ActivityThread.TAG, "Redirecting " + path + " to " + uri);
            ContentResolver cr = ActivityThread.currentActivityThread().getApplication().getContentResolver();
            try {
                if (cr.delete(uri, null, null) == 0) {
                    throw new FileNotFoundException();
                }
            } catch (FileNotFoundException e) {
                throw new ErrnoException(e.getMessage(), OsConstants.ENOENT);
            } catch (SecurityException e2) {
                throw new ErrnoException(e2.getMessage(), OsConstants.EACCES);
            }
        }

        public boolean access(String path, int mode) throws ErrnoException {
            if (path != null && path.startsWith(ContentResolver.DEPRECATE_DATA_PREFIX)) {
                IoUtils.closeQuietly(openDeprecatedDataPath(path, FileUtils.translateModeAccessToPosix(mode)));
                return true;
            }
            return super.access(path, mode);
        }

        public FileDescriptor open(String path, int flags, int mode) throws ErrnoException {
            if (path != null && path.startsWith(ContentResolver.DEPRECATE_DATA_PREFIX)) {
                return openDeprecatedDataPath(path, mode);
            }
            return super.open(path, flags, mode);
        }

        public StructStat stat(String path) throws ErrnoException {
            if (path != null && path.startsWith(ContentResolver.DEPRECATE_DATA_PREFIX)) {
                FileDescriptor fd = openDeprecatedDataPath(path, OsConstants.O_RDONLY);
                try {
                    return Os.fstat(fd);
                } finally {
                    IoUtils.closeQuietly(fd);
                }
            }
            return super.stat(path);
        }

        public void unlink(String path) throws ErrnoException, FileNotFoundException {
            if (path != null && path.startsWith(ContentResolver.DEPRECATE_DATA_PREFIX)) {
                deleteDeprecatedDataPath(path);
            } else {
                super.unlink(path);
            }
        }

        public void remove(String path) throws ErrnoException, FileNotFoundException {
            if (path != null && path.startsWith(ContentResolver.DEPRECATE_DATA_PREFIX)) {
                deleteDeprecatedDataPath(path);
            } else {
                super.remove(path);
            }
        }

        public void rename(String oldPath, String newPath) throws IOException, ErrnoException {
            try {
                super.rename(oldPath, newPath);
            } catch (ErrnoException e) {
                if (e.errno == OsConstants.EXDEV && oldPath.startsWith("/storage/emulated") && newPath.startsWith("/storage/emulated")) {
                    Log.v(ActivityThread.TAG, "Recovering failed rename " + oldPath + " to " + newPath);
                    try {
                        Files.move(new File(oldPath).toPath(), new File(newPath).toPath(), StandardCopyOption.REPLACE_EXISTING);
                        return;
                    } catch (IOException e2) {
                        Log.e(ActivityThread.TAG, "Rename recovery failed ", e);
                        throw e;
                    }
                }
                throw e;
            }
        }
    }

    public static void main(String[] args) throws NumberFormatException {
        Trace.traceBegin(64L, "ActivityThreadMain");
        long startTime = SystemClock.uptimeMillis();
        AndroidOs.install();
        CloseGuard.setEnabled(false);
        Environment.initForCurrentUser();
        File configDir = Environment.getUserConfigDirectory(UserHandle.myUserId());
        TrustedCertificateStore.setDefaultUserDirectory(configDir);
        initializeMainlineModules();
        Process.setArgV0("<pre-initialized>");
        Looper.prepareMainLooper();
        long startSeq = 0;
        if (args != null) {
            for (int i = args.length - 1; i >= 0; i--) {
                if (args[i] != null && args[i].startsWith(PROC_START_SEQ_IDENT)) {
                    startSeq = Long.parseLong(args[i].substring(PROC_START_SEQ_IDENT.length()));
                }
            }
        }
        ActivityThread thread = new ActivityThread();
        thread.attach(false, startSeq);
        if (sMainThreadHandler == null) {
            sMainThreadHandler = thread.getHandler();
        }
        OplusJankMonitorExtPlugin.setLaunchStageTime.call("activityThreadMain", "activityThreadMain", Long.valueOf(startTime));
        Trace.traceEnd(64L);
        STATIC_EXT.setMessageLogger();
        Looper.loop();
        throw new RuntimeException("Main thread loop unexpectedly exited");
    }

    public static void initializeMainlineModules() {
        TelephonyFrameworkInitializer.setTelephonyServiceManager(new TelephonyServiceManager());
        StatsFrameworkInitializer.setStatsServiceManager(new StatsServiceManager());
        MediaFrameworkPlatformInitializer.setMediaServiceManager(new MediaServiceManager());
        MediaFrameworkInitializer.setMediaServiceManager(new MediaServiceManager());
        BluetoothFrameworkInitializer.setBluetoothServiceManager(new BluetoothServiceManager());
        BluetoothFrameworkInitializer.setBinderCallsStatsInitializer(new Consumer() { // from class: android.app.ActivityThread$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BinderCallsStats.startForBluetooth((Context) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void purgePendingResources() {
        Trace.traceBegin(64L, "purgePendingResources");
        nPurgePendingResources();
        Trace.traceEnd(64L);
    }

    public static boolean isProtectedComponent(ActivityInfo ai) {
        return isProtectedComponent(ai, ai.permission);
    }

    public static boolean isProtectedComponent(ServiceInfo si) {
        return isProtectedComponent(si, si.permission);
    }

    private static boolean isProtectedComponent(ComponentInfo ci, String permission) {
        if (!StrictMode.vmUnsafeIntentLaunchEnabled()) {
            return false;
        }
        if (!ci.exported) {
            return true;
        }
        if (permission != null) {
            try {
                PermissionInfo pi = getPermissionManager().getPermissionInfo(permission, currentOpPackageName(), 0);
                if (pi != null) {
                    return pi.getProtection() == 2;
                }
                return false;
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    public static boolean isProtectedBroadcast(Intent intent) {
        if (!StrictMode.vmUnsafeIntentLaunchEnabled()) {
            return false;
        }
        try {
            return getPackageManager().isProtectedBroadcast(intent.getAction());
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // android.app.ActivityThreadInternal
    public boolean isInDensityCompatMode() {
        return this.mDensityCompatMode;
    }
}
