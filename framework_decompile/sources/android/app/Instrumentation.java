package android.app;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.input.InputManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.IBinder;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.PerformanceCollector;
import android.os.PersistableBundle;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.TestLooperManager;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowManagerGlobal;
import com.android.internal.R;
import com.android.internal.content.ReferrerIntent;
import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public class Instrumentation {
    private static final long CONNECT_TIMEOUT_MILLIS = 5000;
    public static final String REPORT_KEY_IDENTIFIER = "id";
    public static final String REPORT_KEY_STREAMRESULT = "stream";
    private static final String TAG = "Instrumentation";
    private List<ActivityMonitor> mActivityMonitors;
    private Context mAppContext;
    private ComponentName mComponent;
    private Context mInstrContext;
    private PerformanceCollector mPerformanceCollector;
    private Thread mRunner;
    private UiAutomation mUiAutomation;
    private IUiAutomationConnection mUiAutomationConnection;
    private List<ActivityWaiter> mWaitingActivities;
    private IInstrumentationWatcher mWatcher;
    private final Object mSync = new Object();
    private ActivityThread mThread = null;
    private MessageQueue mMessageQueue = null;
    private boolean mAutomaticPerformanceSnapshots = false;
    private Bundle mPerfMetrics = new Bundle();
    private final Object mAnimationCompleteLock = new Object();
    IInstrumentationExt mIInstrumentationExt = (IInstrumentationExt) ExtLoader.type(IInstrumentationExt.class).base(this).create();

    @Retention(RetentionPolicy.SOURCE)
    public @interface UiAutomationFlags {
    }

    private void checkInstrumenting(String method) {
        if (this.mInstrContext == null) {
            throw new RuntimeException(method + " cannot be called outside of instrumented processes");
        }
    }

    public boolean isInstrumenting() {
        if (this.mInstrContext == null) {
            return false;
        }
        return true;
    }

    public void onCreate(Bundle arguments) {
    }

    public void start() {
        if (this.mRunner != null) {
            throw new RuntimeException("Instrumentation already started");
        }
        InstrumentationThread instrumentationThread = new InstrumentationThread("Instr: " + getClass().getName());
        this.mRunner = instrumentationThread;
        instrumentationThread.start();
    }

    public void onStart() {
    }

    public boolean onException(Object obj, Throwable e) {
        return false;
    }

    public void sendStatus(int resultCode, Bundle results) {
        IInstrumentationWatcher iInstrumentationWatcher = this.mWatcher;
        if (iInstrumentationWatcher != null) {
            try {
                iInstrumentationWatcher.instrumentationStatus(this.mComponent, resultCode, results);
            } catch (RemoteException e) {
                this.mWatcher = null;
            }
        }
    }

    public void addResults(Bundle results) {
        IActivityManager am = ActivityManager.getService();
        try {
            am.addInstrumentationResults(this.mThread.getApplicationThread(), results);
        } catch (RemoteException ex) {
            throw ex.rethrowFromSystemServer();
        }
    }

    public void finish(int resultCode, Bundle results) {
        if (this.mAutomaticPerformanceSnapshots) {
            endPerformanceSnapshot();
        }
        if (this.mPerfMetrics != null) {
            if (results == null) {
                results = new Bundle();
            }
            results.putAll(this.mPerfMetrics);
        }
        UiAutomation uiAutomation = this.mUiAutomation;
        if (uiAutomation != null && !uiAutomation.isDestroyed()) {
            this.mUiAutomation.disconnect();
            this.mUiAutomation = null;
        }
        this.mThread.finishInstrumentation(resultCode, results);
    }

    public void setAutomaticPerformanceSnapshots() {
        this.mAutomaticPerformanceSnapshots = true;
        this.mPerformanceCollector = new PerformanceCollector();
    }

    public void startPerformanceSnapshot() {
        if (!isProfiling()) {
            this.mPerformanceCollector.beginSnapshot(null);
        }
    }

    public void endPerformanceSnapshot() {
        if (!isProfiling()) {
            this.mPerfMetrics = this.mPerformanceCollector.endSnapshot();
        }
    }

    public void onDestroy() {
    }

    public Context getContext() {
        return this.mInstrContext;
    }

    public ComponentName getComponentName() {
        return this.mComponent;
    }

    public Context getTargetContext() {
        return this.mAppContext;
    }

    public String getProcessName() {
        return this.mThread.getProcessName();
    }

    public boolean isProfiling() {
        return this.mThread.isProfiling();
    }

    public void startProfiling() {
        if (this.mThread.isProfiling()) {
            File file = new File(this.mThread.getProfileFilePath());
            file.getParentFile().mkdirs();
            Debug.startMethodTracing(file.toString(), 8388608);
        }
    }

    public void stopProfiling() {
        if (this.mThread.isProfiling()) {
            Debug.stopMethodTracing();
        }
    }

    public void setInTouchMode(boolean inTouch) {
        try {
            IWindowManager.Stub.asInterface(ServiceManager.getService(Context.WINDOW_SERVICE)).setInTouchMode(inTouch);
        } catch (RemoteException e) {
        }
    }

    public void resetInTouchMode() throws Resources.NotFoundException {
        boolean defaultInTouchMode = getContext().getResources().getBoolean(R.bool.config_defaultInTouchMode);
        setInTouchMode(defaultInTouchMode);
    }

    public void waitForIdle(Runnable recipient) {
        this.mMessageQueue.addIdleHandler(new Idler(recipient));
        this.mThread.getHandler().post(new EmptyRunnable());
    }

    public void waitForIdleSync() {
        validateNotAppThread();
        Idler idler = new Idler(null);
        this.mMessageQueue.addIdleHandler(idler);
        this.mThread.getHandler().post(new EmptyRunnable());
        idler.waitForIdle();
    }

    private void waitForEnterAnimationComplete(Activity activity) {
        synchronized (this.mAnimationCompleteLock) {
            long timeout = 5000;
            while (timeout > 0) {
                try {
                    if (activity.mEnterAnimationComplete) {
                        break;
                    }
                    long startTime = System.currentTimeMillis();
                    this.mAnimationCompleteLock.wait(timeout);
                    long totalTime = System.currentTimeMillis() - startTime;
                    timeout -= totalTime;
                } catch (InterruptedException e) {
                }
            }
        }
    }

    public void onEnterAnimationComplete() {
        synchronized (this.mAnimationCompleteLock) {
            this.mAnimationCompleteLock.notifyAll();
        }
    }

    public void runOnMainSync(Runnable runner) {
        validateNotAppThread();
        SyncRunnable sr = new SyncRunnable(runner);
        this.mThread.getHandler().post(sr);
        sr.waitForComplete();
    }

    public Activity startActivitySync(Intent intent) {
        return startActivitySync(intent, null);
    }

    public Activity startActivitySync(Intent intent, Bundle options) {
        Activity activity;
        validateNotAppThread();
        synchronized (this.mSync) {
            Intent intent2 = new Intent(intent);
            ActivityInfo ai = intent2.resolveActivityInfo(getTargetContext().getPackageManager(), 0);
            if (ai == null) {
                throw new RuntimeException("Unable to resolve activity for: " + intent2);
            }
            String myProc = this.mThread.getProcessName();
            if (!ai.processName.equals(myProc)) {
                throw new RuntimeException("Intent in process " + myProc + " resolved to different process " + ai.processName + ": " + intent2);
            }
            intent2.setComponent(new ComponentName(ai.applicationInfo.packageName, ai.name));
            ActivityWaiter aw = new ActivityWaiter(intent2);
            if (this.mWaitingActivities == null) {
                this.mWaitingActivities = new ArrayList();
            }
            this.mWaitingActivities.add(aw);
            getTargetContext().startActivity(intent2, options);
            do {
                try {
                    this.mSync.wait();
                } catch (InterruptedException e) {
                }
            } while (this.mWaitingActivities.contains(aw));
            activity = aw.activity;
        }
        waitForEnterAnimationComplete(activity);
        SurfaceControl.Transaction t = new SurfaceControl.Transaction();
        try {
            t.apply(true);
            t.close();
            return activity;
        } catch (Throwable th) {
            try {
                t.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static class ActivityMonitor {
        private final boolean mBlock;
        private final String mClass;
        int mHits;
        private final boolean mIgnoreMatchingSpecificIntents;
        Activity mLastActivity;
        private final ActivityResult mResult;
        private final IntentFilter mWhich;

        public ActivityMonitor(IntentFilter which, ActivityResult result, boolean block) {
            this.mHits = 0;
            this.mLastActivity = null;
            this.mWhich = which;
            this.mClass = null;
            this.mResult = result;
            this.mBlock = block;
            this.mIgnoreMatchingSpecificIntents = false;
        }

        public ActivityMonitor(String cls, ActivityResult result, boolean block) {
            this.mHits = 0;
            this.mLastActivity = null;
            this.mWhich = null;
            this.mClass = cls;
            this.mResult = result;
            this.mBlock = block;
            this.mIgnoreMatchingSpecificIntents = false;
        }

        public ActivityMonitor() {
            this.mHits = 0;
            this.mLastActivity = null;
            this.mWhich = null;
            this.mClass = null;
            this.mResult = null;
            this.mBlock = false;
            this.mIgnoreMatchingSpecificIntents = true;
        }

        final boolean ignoreMatchingSpecificIntents() {
            return this.mIgnoreMatchingSpecificIntents;
        }

        public final IntentFilter getFilter() {
            return this.mWhich;
        }

        public final ActivityResult getResult() {
            return this.mResult;
        }

        public final boolean isBlocking() {
            return this.mBlock;
        }

        public final int getHits() {
            return this.mHits;
        }

        public final Activity getLastActivity() {
            return this.mLastActivity;
        }

        public final Activity waitForActivity() {
            Activity res;
            synchronized (this) {
                while (true) {
                    res = this.mLastActivity;
                    if (res == null) {
                        try {
                            wait();
                        } catch (InterruptedException e) {
                        }
                    } else {
                        this.mLastActivity = null;
                    }
                }
            }
            return res;
        }

        public final Activity waitForActivityWithTimeout(long timeOut) {
            synchronized (this) {
                if (this.mLastActivity == null) {
                    try {
                        wait(timeOut);
                    } catch (InterruptedException e) {
                    }
                }
                Activity res = this.mLastActivity;
                if (res == null) {
                    return null;
                }
                this.mLastActivity = null;
                return res;
            }
        }

        public ActivityResult onStartActivity(Context who, Intent intent, Bundle options) {
            return onStartActivity(intent);
        }

        public ActivityResult onStartActivity(Intent intent) {
            return null;
        }

        final boolean match(Context who, Activity activity, Intent intent) {
            if (this.mIgnoreMatchingSpecificIntents) {
                return false;
            }
            synchronized (this) {
                IntentFilter intentFilter = this.mWhich;
                if (intentFilter != null && intentFilter.match(who.getContentResolver(), intent, true, Instrumentation.TAG) < 0) {
                    return false;
                }
                if (this.mClass != null) {
                    String cls = null;
                    if (activity != null) {
                        cls = activity.getClass().getName();
                    } else if (intent.getComponent() != null) {
                        cls = intent.getComponent().getClassName();
                    }
                    if (cls == null || !this.mClass.equals(cls)) {
                        return false;
                    }
                }
                if (activity != null) {
                    this.mLastActivity = activity;
                    notifyAll();
                }
                return true;
            }
        }
    }

    public void addMonitor(ActivityMonitor monitor) {
        synchronized (this.mSync) {
            if (this.mActivityMonitors == null) {
                this.mActivityMonitors = new ArrayList();
            }
            this.mActivityMonitors.add(monitor);
        }
    }

    public ActivityMonitor addMonitor(IntentFilter filter, ActivityResult result, boolean block) {
        ActivityMonitor am = new ActivityMonitor(filter, result, block);
        addMonitor(am);
        return am;
    }

    public ActivityMonitor addMonitor(String cls, ActivityResult result, boolean block) {
        ActivityMonitor am = new ActivityMonitor(cls, result, block);
        addMonitor(am);
        return am;
    }

    public boolean checkMonitorHit(ActivityMonitor monitor, int minHits) {
        waitForIdleSync();
        synchronized (this.mSync) {
            if (monitor.getHits() < minHits) {
                return false;
            }
            this.mActivityMonitors.remove(monitor);
            return true;
        }
    }

    public Activity waitForMonitor(ActivityMonitor monitor) {
        Activity activity = monitor.waitForActivity();
        synchronized (this.mSync) {
            this.mActivityMonitors.remove(monitor);
        }
        return activity;
    }

    public Activity waitForMonitorWithTimeout(ActivityMonitor monitor, long timeOut) {
        Activity activity = monitor.waitForActivityWithTimeout(timeOut);
        synchronized (this.mSync) {
            this.mActivityMonitors.remove(monitor);
        }
        return activity;
    }

    public void removeMonitor(ActivityMonitor monitor) {
        synchronized (this.mSync) {
            this.mActivityMonitors.remove(monitor);
        }
    }

    /* renamed from: android.app.Instrumentation$1MenuRunnable, reason: invalid class name */
    class C1MenuRunnable implements Runnable {
        private final Activity activity;
        private final int flags;
        private final int identifier;
        boolean returnValue;

        public C1MenuRunnable(Activity _activity, int _identifier, int _flags) {
            this.activity = _activity;
            this.identifier = _identifier;
            this.flags = _flags;
        }

        @Override // java.lang.Runnable
        public void run() {
            Window win = this.activity.getWindow();
            this.returnValue = win.performPanelIdentifierAction(0, this.identifier, this.flags);
        }
    }

    public boolean invokeMenuActionSync(Activity targetActivity, int id, int flag) {
        C1MenuRunnable mr = new C1MenuRunnable(targetActivity, id, flag);
        runOnMainSync(mr);
        return mr.returnValue;
    }

    public boolean invokeContextMenuAction(Activity targetActivity, int id, int flag) throws InterruptedException {
        validateNotAppThread();
        KeyEvent downEvent = new KeyEvent(0, 23);
        sendKeySync(downEvent);
        waitForIdleSync();
        try {
            Thread.sleep(ViewConfiguration.getLongPressTimeout());
            KeyEvent upEvent = new KeyEvent(1, 23);
            sendKeySync(upEvent);
            waitForIdleSync();
            C1ContextMenuRunnable cmr = new C1ContextMenuRunnable(targetActivity, id, flag);
            runOnMainSync(cmr);
            return cmr.returnValue;
        } catch (InterruptedException e) {
            Log.e(TAG, "Could not sleep for long press timeout", e);
            return false;
        }
    }

    /* renamed from: android.app.Instrumentation$1ContextMenuRunnable, reason: invalid class name */
    class C1ContextMenuRunnable implements Runnable {
        private final Activity activity;
        private final int flags;
        private final int identifier;
        boolean returnValue;

        public C1ContextMenuRunnable(Activity _activity, int _identifier, int _flags) {
            this.activity = _activity;
            this.identifier = _identifier;
            this.flags = _flags;
        }

        @Override // java.lang.Runnable
        public void run() {
            Window win = this.activity.getWindow();
            this.returnValue = win.performContextMenuIdentifierAction(this.identifier, this.flags);
        }
    }

    public void sendStringSync(String text) {
        if (text == null) {
            return;
        }
        KeyCharacterMap keyCharacterMap = KeyCharacterMap.load(-1);
        KeyEvent[] events = keyCharacterMap.getEvents(text.toCharArray());
        if (events != null) {
            for (KeyEvent keyEvent : events) {
                sendKeySync(KeyEvent.changeTimeRepeat(keyEvent, SystemClock.uptimeMillis(), 0));
            }
        }
    }

    public void sendKeySync(KeyEvent event) {
        validateNotAppThread();
        long downTime = event.getDownTime();
        long eventTime = event.getEventTime();
        int source = event.getSource();
        if (source == 0) {
            source = 257;
        }
        if (eventTime == 0) {
            eventTime = SystemClock.uptimeMillis();
        }
        if (downTime == 0) {
            downTime = eventTime;
        }
        KeyEvent newEvent = new KeyEvent(event);
        newEvent.setTime(downTime, eventTime);
        newEvent.setSource(source);
        newEvent.setFlags(event.getFlags() | 8);
        InputManager.getInstance().injectInputEvent(newEvent, 2);
    }

    public void sendKeyDownUpSync(int keyCode) {
        sendKeySync(new KeyEvent(0, keyCode));
        sendKeySync(new KeyEvent(1, keyCode));
    }

    public void sendCharacterSync(int keyCode) {
        sendKeyDownUpSync(keyCode);
    }

    public void sendPointerSync(MotionEvent event) {
        validateNotAppThread();
        if ((event.getSource() & 2) == 0) {
            event.setSource(4098);
        }
        syncInputTransactionsAndInjectEventIntoSelf(event);
    }

    private void syncInputTransactionsAndInjectEventIntoSelf(MotionEvent event) {
        boolean syncBefore = event.getAction() == 0 || event.isFromSource(8194);
        boolean syncAfter = event.getAction() == 1;
        if (syncBefore) {
            try {
                WindowManagerGlobal.getWindowManagerService().syncInputTransactions(true);
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
                return;
            }
        }
        InputManager.getInstance().injectInputEvent(event, 2, Process.myUid());
        if (syncAfter) {
            WindowManagerGlobal.getWindowManagerService().syncInputTransactions(true);
        }
    }

    public void sendTrackballEventSync(MotionEvent event) {
        validateNotAppThread();
        if (!event.isFromSource(4)) {
            event.setSource(65540);
        }
        InputManager.getInstance().injectInputEvent(event, 2);
    }

    public Application newApplication(ClassLoader cl, String className, Context context) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        Application app = getFactory(context.getPackageName()).instantiateApplication(cl, className);
        app.attach(context);
        return app;
    }

    public static Application newApplication(Class<?> clazz, Context context) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        Application app = (Application) clazz.newInstance();
        app.attach(context);
        return app;
    }

    public void callApplicationOnCreate(Application app) {
        app.onCreate();
    }

    public Activity newActivity(Class<?> clazz, Context context, IBinder token, Application application, Intent intent, ActivityInfo info, CharSequence title, Activity parent, String id, Object lastNonConfigurationInstance) throws IllegalAccessException, InstantiationException {
        Application application2;
        Activity activity = (Activity) clazz.newInstance();
        if (application != null) {
            application2 = application;
        } else {
            application2 = new Application();
        }
        activity.attach(context, null, this, token, 0, application2, intent, info, title, parent, id, (Activity.NonConfigurationInstances) lastNonConfigurationInstance, new Configuration(), null, null, null, null, null, null);
        return activity;
    }

    public Activity newActivity(ClassLoader cl, String className, Intent intent) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        String pkg = (intent == null || intent.getComponent() == null) ? null : intent.getComponent().getPackageName();
        return getFactory(pkg).instantiateActivity(cl, className, intent);
    }

    private AppComponentFactory getFactory(String pkg) {
        if (pkg == null) {
            Log.e(TAG, "No pkg specified, disabling AppComponentFactory");
            return AppComponentFactory.DEFAULT;
        }
        ActivityThread activityThread = this.mThread;
        if (activityThread == null) {
            Log.e(TAG, "Uninitialized ActivityThread, likely app-created Instrumentation, disabling AppComponentFactory", new Throwable());
            return AppComponentFactory.DEFAULT;
        }
        LoadedApk apk = activityThread.peekPackageInfo(pkg, true);
        if (apk == null) {
            apk = this.mThread.getSystemContext().mPackageInfo;
        }
        return apk.getAppFactory();
    }

    private void prePerformCreate(Activity activity) {
        if (this.mWaitingActivities != null) {
            synchronized (this.mSync) {
                int N = this.mWaitingActivities.size();
                for (int i = 0; i < N; i++) {
                    ActivityWaiter aw = this.mWaitingActivities.get(i);
                    Intent intent = aw.intent;
                    if (intent.filterEquals(activity.getIntent())) {
                        aw.activity = activity;
                        this.mMessageQueue.addIdleHandler(new ActivityGoing(aw));
                    }
                }
            }
        }
    }

    private void postPerformCreate(Activity activity) {
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int N = this.mActivityMonitors.size();
                for (int i = 0; i < N; i++) {
                    ActivityMonitor am = this.mActivityMonitors.get(i);
                    am.match(activity, activity, activity.getIntent());
                }
            }
        }
    }

    public void callActivityOnCreate(Activity activity, Bundle icicle) {
        prePerformCreate(activity);
        activity.performCreate(icicle);
        postPerformCreate(activity);
    }

    public void callActivityOnCreate(Activity activity, Bundle icicle, PersistableBundle persistentState) {
        prePerformCreate(activity);
        activity.performCreate(icicle, persistentState);
        postPerformCreate(activity);
    }

    public void callActivityOnDestroy(Activity activity) {
        activity.performDestroy();
    }

    public void callActivityOnRestoreInstanceState(Activity activity, Bundle savedInstanceState) {
        activity.performRestoreInstanceState(savedInstanceState);
    }

    public void callActivityOnRestoreInstanceState(Activity activity, Bundle savedInstanceState, PersistableBundle persistentState) {
        activity.performRestoreInstanceState(savedInstanceState, persistentState);
    }

    public void callActivityOnPostCreate(Activity activity, Bundle savedInstanceState) {
        activity.onPostCreate(savedInstanceState);
    }

    public void callActivityOnPostCreate(Activity activity, Bundle savedInstanceState, PersistableBundle persistentState) {
        activity.onPostCreate(savedInstanceState, persistentState);
    }

    public void callActivityOnNewIntent(Activity activity, Intent intent) {
        activity.performNewIntent(intent);
    }

    public void callActivityOnNewIntent(Activity activity, ReferrerIntent intent) {
        String oldReferrer = activity.mReferrer;
        if (intent != null) {
            try {
                activity.mReferrer = intent.mReferrer;
            } catch (Throwable th) {
                activity.mReferrer = oldReferrer;
                throw th;
            }
        }
        callActivityOnNewIntent(activity, intent != null ? new Intent(intent) : null);
        activity.mReferrer = oldReferrer;
    }

    public void callActivityOnStart(Activity activity) {
        activity.onStart();
    }

    public void callActivityOnRestart(Activity activity) {
        activity.onRestart();
    }

    public void callActivityOnResume(Activity activity) {
        activity.mResumed = true;
        activity.onResume();
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int N = this.mActivityMonitors.size();
                for (int i = 0; i < N; i++) {
                    ActivityMonitor am = this.mActivityMonitors.get(i);
                    am.match(activity, activity, activity.getIntent());
                }
            }
        }
    }

    public void callActivityOnStop(Activity activity) {
        activity.onStop();
    }

    public void callActivityOnSaveInstanceState(Activity activity, Bundle outState) {
        activity.performSaveInstanceState(outState);
    }

    public void callActivityOnSaveInstanceState(Activity activity, Bundle outState, PersistableBundle outPersistentState) {
        activity.performSaveInstanceState(outState, outPersistentState);
    }

    public void callActivityOnPause(Activity activity) {
        activity.performPause();
    }

    public void callActivityOnUserLeaving(Activity activity) {
        activity.performUserLeaving();
    }

    public void callActivityOnPictureInPictureRequested(Activity activity) {
        activity.onPictureInPictureRequested();
    }

    @Deprecated
    public void startAllocCounting() {
        Runtime.getRuntime().gc();
        Runtime.getRuntime().runFinalization();
        Runtime.getRuntime().gc();
        Debug.resetAllCounts();
        Debug.startAllocCounting();
    }

    @Deprecated
    public void stopAllocCounting() {
        Runtime.getRuntime().gc();
        Runtime.getRuntime().runFinalization();
        Runtime.getRuntime().gc();
        Debug.stopAllocCounting();
    }

    private void addValue(String key, int value, Bundle results) {
        if (results.containsKey(key)) {
            List<Integer> list = results.getIntegerArrayList(key);
            if (list != null) {
                list.add(Integer.valueOf(value));
                return;
            }
            return;
        }
        ArrayList<Integer> list2 = new ArrayList<>();
        list2.add(Integer.valueOf(value));
        results.putIntegerArrayList(key, list2);
    }

    public Bundle getAllocCounts() {
        Bundle results = new Bundle();
        results.putLong(PerformanceCollector.METRIC_KEY_GLOBAL_ALLOC_COUNT, Debug.getGlobalAllocCount());
        results.putLong(PerformanceCollector.METRIC_KEY_GLOBAL_ALLOC_SIZE, Debug.getGlobalAllocSize());
        results.putLong(PerformanceCollector.METRIC_KEY_GLOBAL_FREED_COUNT, Debug.getGlobalFreedCount());
        results.putLong(PerformanceCollector.METRIC_KEY_GLOBAL_FREED_SIZE, Debug.getGlobalFreedSize());
        results.putLong(PerformanceCollector.METRIC_KEY_GC_INVOCATION_COUNT, Debug.getGlobalGcInvocationCount());
        return results;
    }

    public Bundle getBinderCounts() {
        Bundle results = new Bundle();
        results.putLong(PerformanceCollector.METRIC_KEY_SENT_TRANSACTIONS, Debug.getBinderSentTransactions());
        results.putLong(PerformanceCollector.METRIC_KEY_RECEIVED_TRANSACTIONS, Debug.getBinderReceivedTransactions());
        return results;
    }

    public static final class ActivityResult {
        private final int mResultCode;
        private final Intent mResultData;

        public ActivityResult(int resultCode, Intent resultData) {
            this.mResultCode = resultCode;
            this.mResultData = resultData;
        }

        public int getResultCode() {
            return this.mResultCode;
        }

        public Intent getResultData() {
            return this.mResultData;
        }
    }

    public ActivityResult execStartActivity(Context who, IBinder contextThread, IBinder token, Activity target, Intent intent, int requestCode, Bundle options) {
        Bundle options2;
        IActivityTaskManager service;
        String opPackageName;
        String attributionTag;
        String strResolveTypeIfNeeded;
        String str;
        if (!this.mIInstrumentationExt.beginHookExecStartActivity(intent, Binder.getCallingPid(), Binder.getCallingUid(), "start")) {
            return null;
        }
        IApplicationThread whoThread = (IApplicationThread) contextThread;
        Uri referrer = target != null ? target.onProvideReferrer() : null;
        if (referrer != null) {
            intent.putExtra(Intent.EXTRA_REFERRER, referrer);
        }
        if (this.mActivityMonitors == null) {
            options2 = options;
        } else {
            synchronized (this.mSync) {
                try {
                    try {
                        int N = this.mActivityMonitors.size();
                        int i = 0;
                        Bundle options3 = options;
                        while (true) {
                            if (i >= N) {
                                break;
                            }
                            ActivityMonitor am = this.mActivityMonitors.get(i);
                            ActivityResult result = null;
                            if (am.ignoreMatchingSpecificIntents()) {
                                if (options3 == null) {
                                    options3 = ActivityOptions.makeBasic().toBundle();
                                }
                                result = am.onStartActivity(who, intent, options3);
                            }
                            if (result != null) {
                                am.mHits++;
                                return result;
                            }
                            if (!am.match(who, null, intent)) {
                                i++;
                            } else {
                                am.mHits++;
                                if (am.isBlocking()) {
                                    return requestCode >= 0 ? am.getResult() : null;
                                }
                            }
                        }
                        options2 = options3;
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            }
        }
        try {
            intent.migrateExtraStreamToClipData(who);
            intent.prepareToLeaveProcess(who);
            service = ActivityTaskManager.getService();
            opPackageName = who.getOpPackageName();
            attributionTag = who.getAttributionTag();
            strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(who.getContentResolver());
            if (target == null) {
                str = null;
            } else {
                try {
                    str = target.mEmbeddedID;
                } catch (RemoteException e) {
                    e = e;
                    throw new RuntimeException("Failure from system", e);
                }
            }
        } catch (RemoteException e2) {
            e = e2;
        }
        try {
            int result2 = service.startActivity(whoThread, opPackageName, attributionTag, intent, strResolveTypeIfNeeded, token, str, requestCode, 0, null, options2);
            checkStartActivityResult(result2, intent);
            return null;
        } catch (RemoteException e3) {
            e = e3;
            throw new RuntimeException("Failure from system", e);
        }
    }

    public void execStartActivities(Context who, IBinder contextThread, IBinder token, Activity target, Intent[] intents, Bundle options) {
        execStartActivitiesAsUser(who, contextThread, token, target, intents, options, who.getUserId());
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0066, code lost:
    
        r15 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int execStartActivitiesAsUser(android.content.Context r17, android.os.IBinder r18, android.os.IBinder r19, android.app.Activity r20, android.content.Intent[] r21, android.os.Bundle r22, int r23) throws java.lang.Throwable {
        /*
            r16 = this;
            r1 = r16
            r2 = r17
            r12 = r21
            r13 = r18
            android.app.IApplicationThread r13 = (android.app.IApplicationThread) r13
            java.util.List<android.app.Instrumentation$ActivityMonitor> r0 = r1.mActivityMonitors
            r14 = 0
            if (r0 == 0) goto L6f
            java.lang.Object r3 = r1.mSync
            monitor-enter(r3)
            java.util.List<android.app.Instrumentation$ActivityMonitor> r0 = r1.mActivityMonitors     // Catch: java.lang.Throwable -> L68
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L68
            r4 = 0
            r5 = r4
            r4 = r22
        L1c:
            if (r5 >= r0) goto L65
            java.util.List<android.app.Instrumentation$ActivityMonitor> r6 = r1.mActivityMonitors     // Catch: java.lang.Throwable -> L6d
            java.lang.Object r6 = r6.get(r5)     // Catch: java.lang.Throwable -> L6d
            android.app.Instrumentation$ActivityMonitor r6 = (android.app.Instrumentation.ActivityMonitor) r6     // Catch: java.lang.Throwable -> L6d
            r7 = 0
            boolean r8 = r6.ignoreMatchingSpecificIntents()     // Catch: java.lang.Throwable -> L6d
            if (r8 == 0) goto L3f
            if (r4 != 0) goto L38
            android.app.ActivityOptions r8 = android.app.ActivityOptions.makeBasic()     // Catch: java.lang.Throwable -> L6d
            android.os.Bundle r8 = r8.toBundle()     // Catch: java.lang.Throwable -> L6d
            r4 = r8
        L38:
            r8 = r12[r14]     // Catch: java.lang.Throwable -> L6d
            android.app.Instrumentation$ActivityResult r8 = r6.onStartActivity(r2, r8, r4)     // Catch: java.lang.Throwable -> L6d
            r7 = r8
        L3f:
            r8 = -96
            if (r7 == 0) goto L4b
            int r9 = r6.mHits     // Catch: java.lang.Throwable -> L6d
            int r9 = r9 + 1
            r6.mHits = r9     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            return r8
        L4b:
            r9 = 0
            r10 = r12[r14]     // Catch: java.lang.Throwable -> L6d
            boolean r9 = r6.match(r2, r9, r10)     // Catch: java.lang.Throwable -> L6d
            if (r9 == 0) goto L62
            int r9 = r6.mHits     // Catch: java.lang.Throwable -> L6d
            int r9 = r9 + 1
            r6.mHits = r9     // Catch: java.lang.Throwable -> L6d
            boolean r9 = r6.isBlocking()     // Catch: java.lang.Throwable -> L6d
            if (r9 == 0) goto L65
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            return r8
        L62:
            int r5 = r5 + 1
            goto L1c
        L65:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            r15 = r4
            goto L71
        L68:
            r0 = move-exception
            r4 = r22
        L6b:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            throw r0
        L6d:
            r0 = move-exception
            goto L6b
        L6f:
            r15 = r22
        L71:
            int r0 = r12.length     // Catch: android.os.RemoteException -> Lb0
            java.lang.String[] r0 = new java.lang.String[r0]     // Catch: android.os.RemoteException -> Lb0
            r3 = 0
        L75:
            int r4 = r12.length     // Catch: android.os.RemoteException -> Lb0
            if (r3 >= r4) goto L91
            r4 = r12[r3]     // Catch: android.os.RemoteException -> Lb0
            r4.migrateExtraStreamToClipData(r2)     // Catch: android.os.RemoteException -> Lb0
            r4 = r12[r3]     // Catch: android.os.RemoteException -> Lb0
            r4.prepareToLeaveProcess(r2)     // Catch: android.os.RemoteException -> Lb0
            r4 = r12[r3]     // Catch: android.os.RemoteException -> Lb0
            android.content.ContentResolver r5 = r17.getContentResolver()     // Catch: android.os.RemoteException -> Lb0
            java.lang.String r4 = r4.resolveTypeIfNeeded(r5)     // Catch: android.os.RemoteException -> Lb0
            r0[r3] = r4     // Catch: android.os.RemoteException -> Lb0
            int r3 = r3 + 1
            goto L75
        L91:
            android.app.IActivityTaskManager r3 = android.app.ActivityTaskManager.getService()     // Catch: android.os.RemoteException -> Lb0
            java.lang.String r5 = r17.getOpPackageName()     // Catch: android.os.RemoteException -> Lb0
            java.lang.String r6 = r17.getAttributionTag()     // Catch: android.os.RemoteException -> Lb0
            r4 = r13
            r7 = r21
            r8 = r0
            r9 = r19
            r10 = r15
            r11 = r23
            int r3 = r3.startActivities(r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: android.os.RemoteException -> Lb0
            r4 = r12[r14]     // Catch: android.os.RemoteException -> Lb0
            checkStartActivityResult(r3, r4)     // Catch: android.os.RemoteException -> Lb0
            return r3
        Lb0:
            r0 = move-exception
            java.lang.RuntimeException r3 = new java.lang.RuntimeException
            java.lang.String r4 = "Failure from system"
            r3.<init>(r4, r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.Instrumentation.execStartActivitiesAsUser(android.content.Context, android.os.IBinder, android.os.IBinder, android.app.Activity, android.content.Intent[], android.os.Bundle, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
    
        r17 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Instrumentation.ActivityResult execStartActivity(android.content.Context r19, android.os.IBinder r20, android.os.IBinder r21, java.lang.String r22, android.content.Intent r23, int r24, android.os.Bundle r25) {
        /*
            r18 = this;
            r1 = r18
            r2 = r19
            r15 = r23
            r16 = r20
            android.app.IApplicationThread r16 = (android.app.IApplicationThread) r16
            java.util.List<android.app.Instrumentation$ActivityMonitor> r0 = r1.mActivityMonitors
            r14 = 0
            if (r0 == 0) goto L6f
            java.lang.Object r3 = r1.mSync
            monitor-enter(r3)
            java.util.List<android.app.Instrumentation$ActivityMonitor> r0 = r1.mActivityMonitors     // Catch: java.lang.Throwable -> L68
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L68
            r4 = 0
            r5 = r4
            r4 = r25
        L1c:
            if (r5 >= r0) goto L64
            java.util.List<android.app.Instrumentation$ActivityMonitor> r6 = r1.mActivityMonitors     // Catch: java.lang.Throwable -> L6d
            java.lang.Object r6 = r6.get(r5)     // Catch: java.lang.Throwable -> L6d
            android.app.Instrumentation$ActivityMonitor r6 = (android.app.Instrumentation.ActivityMonitor) r6     // Catch: java.lang.Throwable -> L6d
            r7 = 0
            boolean r8 = r6.ignoreMatchingSpecificIntents()     // Catch: java.lang.Throwable -> L6d
            if (r8 == 0) goto L3d
            if (r4 != 0) goto L38
            android.app.ActivityOptions r8 = android.app.ActivityOptions.makeBasic()     // Catch: java.lang.Throwable -> L6d
            android.os.Bundle r8 = r8.toBundle()     // Catch: java.lang.Throwable -> L6d
            r4 = r8
        L38:
            android.app.Instrumentation$ActivityResult r8 = r6.onStartActivity(r2, r15, r4)     // Catch: java.lang.Throwable -> L6d
            r7 = r8
        L3d:
            if (r7 == 0) goto L47
            int r8 = r6.mHits     // Catch: java.lang.Throwable -> L6d
            int r8 = r8 + 1
            r6.mHits = r8     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            return r7
        L47:
            boolean r8 = r6.match(r2, r14, r15)     // Catch: java.lang.Throwable -> L6d
            if (r8 == 0) goto L61
            int r8 = r6.mHits     // Catch: java.lang.Throwable -> L6d
            int r8 = r8 + 1
            r6.mHits = r8     // Catch: java.lang.Throwable -> L6d
            boolean r8 = r6.isBlocking()     // Catch: java.lang.Throwable -> L6d
            if (r8 == 0) goto L64
            if (r24 < 0) goto L5f
            android.app.Instrumentation$ActivityResult r14 = r6.getResult()     // Catch: java.lang.Throwable -> L6d
        L5f:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            return r14
        L61:
            int r5 = r5 + 1
            goto L1c
        L64:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            r17 = r4
            goto L71
        L68:
            r0 = move-exception
            r4 = r25
        L6b:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            throw r0
        L6d:
            r0 = move-exception
            goto L6b
        L6f:
            r17 = r25
        L71:
            r15.migrateExtraStreamToClipData(r2)     // Catch: android.os.RemoteException -> La3
            r15.prepareToLeaveProcess(r2)     // Catch: android.os.RemoteException -> La3
            android.app.IActivityTaskManager r3 = android.app.ActivityTaskManager.getService()     // Catch: android.os.RemoteException -> La3
            java.lang.String r5 = r19.getOpPackageName()     // Catch: android.os.RemoteException -> La3
            java.lang.String r6 = r19.getAttributionTag()     // Catch: android.os.RemoteException -> La3
            android.content.ContentResolver r0 = r19.getContentResolver()     // Catch: android.os.RemoteException -> La3
            java.lang.String r8 = r15.resolveTypeIfNeeded(r0)     // Catch: android.os.RemoteException -> La3
            r12 = 0
            r13 = 0
            r4 = r16
            r7 = r23
            r9 = r21
            r10 = r22
            r11 = r24
            r0 = r14
            r14 = r17
            int r3 = r3.startActivity(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)     // Catch: android.os.RemoteException -> La3
            checkStartActivityResult(r3, r15)     // Catch: android.os.RemoteException -> La3
            return r0
        La3:
            r0 = move-exception
            java.lang.RuntimeException r3 = new java.lang.RuntimeException
            java.lang.String r4 = "Failure from system"
            r3.<init>(r4, r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.Instrumentation.execStartActivity(android.content.Context, android.os.IBinder, android.os.IBinder, java.lang.String, android.content.Intent, int, android.os.Bundle):android.app.Instrumentation$ActivityResult");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
    
        r17 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Instrumentation.ActivityResult execStartActivity(android.content.Context r20, android.os.IBinder r21, android.os.IBinder r22, java.lang.String r23, android.content.Intent r24, int r25, android.os.Bundle r26, android.os.UserHandle r27) {
        /*
            r19 = this;
            r1 = r19
            r2 = r20
            r15 = r24
            r16 = r21
            android.app.IApplicationThread r16 = (android.app.IApplicationThread) r16
            java.util.List<android.app.Instrumentation$ActivityMonitor> r0 = r1.mActivityMonitors
            r14 = 0
            if (r0 == 0) goto L6f
            java.lang.Object r3 = r1.mSync
            monitor-enter(r3)
            java.util.List<android.app.Instrumentation$ActivityMonitor> r0 = r1.mActivityMonitors     // Catch: java.lang.Throwable -> L68
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L68
            r4 = 0
            r5 = r4
            r4 = r26
        L1c:
            if (r5 >= r0) goto L64
            java.util.List<android.app.Instrumentation$ActivityMonitor> r6 = r1.mActivityMonitors     // Catch: java.lang.Throwable -> L6d
            java.lang.Object r6 = r6.get(r5)     // Catch: java.lang.Throwable -> L6d
            android.app.Instrumentation$ActivityMonitor r6 = (android.app.Instrumentation.ActivityMonitor) r6     // Catch: java.lang.Throwable -> L6d
            r7 = 0
            boolean r8 = r6.ignoreMatchingSpecificIntents()     // Catch: java.lang.Throwable -> L6d
            if (r8 == 0) goto L3d
            if (r4 != 0) goto L38
            android.app.ActivityOptions r8 = android.app.ActivityOptions.makeBasic()     // Catch: java.lang.Throwable -> L6d
            android.os.Bundle r8 = r8.toBundle()     // Catch: java.lang.Throwable -> L6d
            r4 = r8
        L38:
            android.app.Instrumentation$ActivityResult r8 = r6.onStartActivity(r2, r15, r4)     // Catch: java.lang.Throwable -> L6d
            r7 = r8
        L3d:
            if (r7 == 0) goto L47
            int r8 = r6.mHits     // Catch: java.lang.Throwable -> L6d
            int r8 = r8 + 1
            r6.mHits = r8     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            return r7
        L47:
            boolean r8 = r6.match(r2, r14, r15)     // Catch: java.lang.Throwable -> L6d
            if (r8 == 0) goto L61
            int r8 = r6.mHits     // Catch: java.lang.Throwable -> L6d
            int r8 = r8 + 1
            r6.mHits = r8     // Catch: java.lang.Throwable -> L6d
            boolean r8 = r6.isBlocking()     // Catch: java.lang.Throwable -> L6d
            if (r8 == 0) goto L64
            if (r25 < 0) goto L5f
            android.app.Instrumentation$ActivityResult r14 = r6.getResult()     // Catch: java.lang.Throwable -> L6d
        L5f:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            return r14
        L61:
            int r5 = r5 + 1
            goto L1c
        L64:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            r17 = r4
            goto L71
        L68:
            r0 = move-exception
            r4 = r26
        L6b:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            throw r0
        L6d:
            r0 = move-exception
            goto L6b
        L6f:
            r17 = r26
        L71:
            r15.migrateExtraStreamToClipData(r2)     // Catch: android.os.RemoteException -> Lac
            r15.prepareToLeaveProcess(r2)     // Catch: android.os.RemoteException -> Lac
            android.app.IActivityTaskManager r3 = android.app.ActivityTaskManager.getService()     // Catch: android.os.RemoteException -> Lac
            java.lang.String r5 = r20.getOpPackageName()     // Catch: android.os.RemoteException -> Lac
            java.lang.String r6 = r20.getAttributionTag()     // Catch: android.os.RemoteException -> Lac
            android.content.ContentResolver r0 = r20.getContentResolver()     // Catch: android.os.RemoteException -> Lac
            java.lang.String r8 = r15.resolveTypeIfNeeded(r0)     // Catch: android.os.RemoteException -> Lac
            r12 = 0
            r13 = 0
            int r0 = r27.getIdentifier()     // Catch: android.os.RemoteException -> Lac
            r4 = r16
            r7 = r24
            r9 = r22
            r10 = r23
            r11 = r25
            r18 = r14
            r14 = r17
            r1 = r15
            r15 = r0
            int r0 = r3.startActivityAsUser(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)     // Catch: android.os.RemoteException -> Laa
            checkStartActivityResult(r0, r1)     // Catch: android.os.RemoteException -> Laa
            return r18
        Laa:
            r0 = move-exception
            goto Lae
        Lac:
            r0 = move-exception
            r1 = r15
        Lae:
            java.lang.RuntimeException r3 = new java.lang.RuntimeException
            java.lang.String r4 = "Failure from system"
            r3.<init>(r4, r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.Instrumentation.execStartActivity(android.content.Context, android.os.IBinder, android.os.IBinder, java.lang.String, android.content.Intent, int, android.os.Bundle, android.os.UserHandle):android.app.Instrumentation$ActivityResult");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0067, code lost:
    
        r18 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Instrumentation.ActivityResult execStartActivityAsCaller(android.content.Context r20, android.os.IBinder r21, android.os.IBinder r22, android.app.Activity r23, android.content.Intent r24, int r25, android.os.Bundle r26, boolean r27, int r28) {
        /*
            r19 = this;
            r1 = r19
            r2 = r20
            r3 = r23
            r15 = r24
            r17 = r21
            android.app.IApplicationThread r17 = (android.app.IApplicationThread) r17
            java.util.List<android.app.Instrumentation$ActivityMonitor> r0 = r1.mActivityMonitors
            r14 = 0
            if (r0 == 0) goto L71
            java.lang.Object r4 = r1.mSync
            monitor-enter(r4)
            java.util.List<android.app.Instrumentation$ActivityMonitor> r0 = r1.mActivityMonitors     // Catch: java.lang.Throwable -> L6a
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L6a
            r5 = 0
            r6 = r5
            r5 = r26
        L1e:
            if (r6 >= r0) goto L66
            java.util.List<android.app.Instrumentation$ActivityMonitor> r7 = r1.mActivityMonitors     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r7 = r7.get(r6)     // Catch: java.lang.Throwable -> L6f
            android.app.Instrumentation$ActivityMonitor r7 = (android.app.Instrumentation.ActivityMonitor) r7     // Catch: java.lang.Throwable -> L6f
            r8 = 0
            boolean r9 = r7.ignoreMatchingSpecificIntents()     // Catch: java.lang.Throwable -> L6f
            if (r9 == 0) goto L3f
            if (r5 != 0) goto L3a
            android.app.ActivityOptions r9 = android.app.ActivityOptions.makeBasic()     // Catch: java.lang.Throwable -> L6f
            android.os.Bundle r9 = r9.toBundle()     // Catch: java.lang.Throwable -> L6f
            r5 = r9
        L3a:
            android.app.Instrumentation$ActivityResult r9 = r7.onStartActivity(r2, r15, r5)     // Catch: java.lang.Throwable -> L6f
            r8 = r9
        L3f:
            if (r8 == 0) goto L49
            int r9 = r7.mHits     // Catch: java.lang.Throwable -> L6f
            int r9 = r9 + 1
            r7.mHits = r9     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6f
            return r8
        L49:
            boolean r9 = r7.match(r2, r14, r15)     // Catch: java.lang.Throwable -> L6f
            if (r9 == 0) goto L63
            int r9 = r7.mHits     // Catch: java.lang.Throwable -> L6f
            int r9 = r9 + 1
            r7.mHits = r9     // Catch: java.lang.Throwable -> L6f
            boolean r9 = r7.isBlocking()     // Catch: java.lang.Throwable -> L6f
            if (r9 == 0) goto L66
            if (r25 < 0) goto L61
            android.app.Instrumentation$ActivityResult r14 = r7.getResult()     // Catch: java.lang.Throwable -> L6f
        L61:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6f
            return r14
        L63:
            int r6 = r6 + 1
            goto L1e
        L66:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6f
            r18 = r5
            goto L73
        L6a:
            r0 = move-exception
            r5 = r26
        L6d:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6f
            throw r0
        L6f:
            r0 = move-exception
            goto L6d
        L71:
            r18 = r26
        L73:
            r15.migrateExtraStreamToClipData(r2)     // Catch: android.os.RemoteException -> Lb2
            r15.prepareToLeaveProcess(r2)     // Catch: android.os.RemoteException -> Lb2
            android.app.IActivityTaskManager r4 = android.app.ActivityTaskManager.getService()     // Catch: android.os.RemoteException -> Lb2
            java.lang.String r6 = r20.getOpPackageName()     // Catch: android.os.RemoteException -> Lb2
            android.content.ContentResolver r0 = r20.getContentResolver()     // Catch: android.os.RemoteException -> Lb2
            java.lang.String r8 = r15.resolveTypeIfNeeded(r0)     // Catch: android.os.RemoteException -> Lb2
            if (r3 == 0) goto L8f
            java.lang.String r0 = r3.mEmbeddedID     // Catch: android.os.RemoteException -> Lb2
            r10 = r0
            goto L90
        L8f:
            r10 = r14
        L90:
            r12 = 0
            r13 = 0
            r5 = r17
            r7 = r24
            r9 = r22
            r11 = r25
            r0 = r14
            r14 = r18
            r15 = r27
            r16 = r28
            int r4 = r4.startActivityAsCaller(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16)     // Catch: android.os.RemoteException -> Lae
            r5 = r24
            checkStartActivityResult(r4, r5)     // Catch: android.os.RemoteException -> Lac
            return r0
        Lac:
            r0 = move-exception
            goto Lb4
        Lae:
            r0 = move-exception
            r5 = r24
            goto Lb4
        Lb2:
            r0 = move-exception
            r5 = r15
        Lb4:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException
            java.lang.String r6 = "Failure from system"
            r4.<init>(r6, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.Instrumentation.execStartActivityAsCaller(android.content.Context, android.os.IBinder, android.os.IBinder, android.app.Activity, android.content.Intent, int, android.os.Bundle, boolean, int):android.app.Instrumentation$ActivityResult");
    }

    public void execStartActivityFromAppTask(Context who, IBinder contextThread, IAppTask appTask, Intent intent, Bundle options) {
        IApplicationThread whoThread = (IApplicationThread) contextThread;
        if (this.mActivityMonitors != null) {
            synchronized (this.mSync) {
                int N = this.mActivityMonitors.size();
                int i = 0;
                while (true) {
                    if (i >= N) {
                        break;
                    }
                    ActivityMonitor am = this.mActivityMonitors.get(i);
                    ActivityResult result = null;
                    if (am.ignoreMatchingSpecificIntents()) {
                        if (options == null) {
                            options = ActivityOptions.makeBasic().toBundle();
                        }
                        result = am.onStartActivity(who, intent, options);
                    }
                    if (result != null) {
                        am.mHits++;
                        return;
                    } else if (!am.match(who, null, intent)) {
                        i++;
                    } else {
                        am.mHits++;
                        if (am.isBlocking()) {
                            return;
                        }
                    }
                }
            }
        }
        try {
            intent.migrateExtraStreamToClipData(who);
            intent.prepareToLeaveProcess(who);
            int result2 = appTask.startActivity(whoThread.asBinder(), who.getOpPackageName(), who.getAttributionTag(), intent, intent.resolveTypeIfNeeded(who.getContentResolver()), options);
            checkStartActivityResult(result2, intent);
        } catch (RemoteException e) {
            throw new RuntimeException("Failure from system", e);
        }
    }

    final void init(ActivityThread thread, Context instrContext, Context appContext, ComponentName component, IInstrumentationWatcher watcher, IUiAutomationConnection uiAutomationConnection) {
        this.mThread = thread;
        thread.getLooper();
        this.mMessageQueue = Looper.myQueue();
        this.mInstrContext = instrContext;
        this.mAppContext = appContext;
        this.mComponent = component;
        this.mWatcher = watcher;
        this.mUiAutomationConnection = uiAutomationConnection;
    }

    final void basicInit(ActivityThread thread) {
        this.mThread = thread;
    }

    public static void checkStartActivityResult(int res, Object intent) {
        if (!ActivityManager.isStartResultFatalError(res)) {
            return;
        }
        switch (res) {
            case -100:
                throw new IllegalStateException("Cannot start voice activity on a hidden session");
            case ActivityManager.START_VOICE_NOT_ACTIVE_SESSION /* -99 */:
                throw new IllegalStateException("Session calling startVoiceActivity does not match active session");
            case ActivityManager.START_NOT_CURRENT_USER_ACTIVITY /* -98 */:
            default:
                throw new AndroidRuntimeException("Unknown error code " + res + " when starting " + intent);
            case ActivityManager.START_NOT_VOICE_COMPATIBLE /* -97 */:
                throw new SecurityException("Starting under voice control not allowed for: " + intent);
            case ActivityManager.START_CANCELED /* -96 */:
                throw new AndroidRuntimeException("Activity could not be started for " + intent);
            case ActivityManager.START_NOT_ACTIVITY /* -95 */:
                throw new IllegalArgumentException("PendingIntent is not an activity");
            case ActivityManager.START_PERMISSION_DENIED /* -94 */:
                throw new SecurityException("Not allowed to start activity " + intent);
            case ActivityManager.START_FORWARD_AND_REQUEST_CONFLICT /* -93 */:
                throw new AndroidRuntimeException("FORWARD_RESULT_FLAG used while also requesting a result");
            case ActivityManager.START_CLASS_NOT_FOUND /* -92 */:
            case ActivityManager.START_INTENT_NOT_RESOLVED /* -91 */:
                if ((intent instanceof Intent) && ((Intent) intent).getComponent() != null) {
                    throw new ActivityNotFoundException("Unable to find explicit activity class " + ((Intent) intent).getComponent().toShortString() + "; have you declared this activity in your AndroidManifest.xml, or does your intent not match its declared <intent-filter>?");
                }
                throw new ActivityNotFoundException("No Activity found to handle " + intent);
            case ActivityManager.START_ASSISTANT_HIDDEN_SESSION /* -90 */:
                throw new IllegalStateException("Cannot start assistant activity on a hidden session");
            case ActivityManager.START_ASSISTANT_NOT_ACTIVE_SESSION /* -89 */:
                throw new IllegalStateException("Session calling startAssistantActivity does not match active session");
        }
    }

    private final void validateNotAppThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new RuntimeException("This method can not be called from the main application thread");
        }
    }

    public UiAutomation getUiAutomation() {
        return getUiAutomation(0);
    }

    public UiAutomation getUiAutomation(int flags) {
        UiAutomation uiAutomation = this.mUiAutomation;
        boolean mustCreateNewAutomation = uiAutomation == null || uiAutomation.isDestroyed();
        if (this.mUiAutomationConnection != null) {
            if (!mustCreateNewAutomation && this.mUiAutomation.getFlags() == flags) {
                return this.mUiAutomation;
            }
            if (mustCreateNewAutomation) {
                this.mUiAutomation = new UiAutomation(getTargetContext().getMainLooper(), this.mUiAutomationConnection);
            } else {
                this.mUiAutomation.disconnect();
            }
            if (getTargetContext().getApplicationInfo().targetSdkVersion <= 30) {
                this.mUiAutomation.connect(flags);
                return this.mUiAutomation;
            }
            try {
                this.mUiAutomation.connectWithTimeout(flags, 5000L);
                return this.mUiAutomation;
            } catch (TimeoutException e) {
                this.mUiAutomation.destroy();
                this.mUiAutomation = null;
            }
        }
        return null;
    }

    public TestLooperManager acquireLooperManager(Looper looper) {
        checkInstrumenting("acquireLooperManager");
        return new TestLooperManager(looper);
    }

    private final class InstrumentationThread extends Thread {
        public InstrumentationThread(String name) {
            super(name);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Process.setThreadPriority(-8);
            } catch (RuntimeException e) {
                Log.w(Instrumentation.TAG, "Exception setting priority of instrumentation thread " + Process.myTid(), e);
            }
            if (Instrumentation.this.mAutomaticPerformanceSnapshots) {
                Instrumentation.this.startPerformanceSnapshot();
            }
            Instrumentation.this.onStart();
        }
    }

    private static final class EmptyRunnable implements Runnable {
        private EmptyRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    private static final class SyncRunnable implements Runnable {
        private boolean mComplete;
        private final Runnable mTarget;

        public SyncRunnable(Runnable target) {
            this.mTarget = target;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mTarget.run();
            synchronized (this) {
                this.mComplete = true;
                notifyAll();
            }
        }

        public void waitForComplete() {
            synchronized (this) {
                while (!this.mComplete) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
    }

    private static final class ActivityWaiter {
        public Activity activity;
        public final Intent intent;

        public ActivityWaiter(Intent _intent) {
            this.intent = _intent;
        }
    }

    private final class ActivityGoing implements MessageQueue.IdleHandler {
        private final ActivityWaiter mWaiter;

        public ActivityGoing(ActivityWaiter waiter) {
            this.mWaiter = waiter;
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            synchronized (Instrumentation.this.mSync) {
                Instrumentation.this.mWaitingActivities.remove(this.mWaiter);
                Instrumentation.this.mSync.notifyAll();
            }
            return false;
        }
    }

    private static final class Idler implements MessageQueue.IdleHandler {
        private final Runnable mCallback;
        private boolean mIdle = false;

        public Idler(Runnable callback) {
            this.mCallback = callback;
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            Runnable runnable = this.mCallback;
            if (runnable != null) {
                runnable.run();
            }
            synchronized (this) {
                this.mIdle = true;
                notifyAll();
            }
            return false;
        }

        public void waitForIdle() {
            synchronized (this) {
                while (!this.mIdle) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
    }
}
