package android.view;

import android.graphics.FrameInfo;
import android.hardware.display.DisplayManagerGlobal;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.Log;
import android.util.TimeUtils;
import android.view.DisplayEventReceiver;
import java.io.PrintWriter;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes3.dex */
public final class Choreographer {
    public static final int CALLBACK_ANIMATION = 1;
    public static final int CALLBACK_COMMIT = 4;
    public static final int CALLBACK_INPUT = 0;
    public static final int CALLBACK_INSETS_ANIMATION = 2;
    private static final int CALLBACK_LAST = 4;
    public static final int CALLBACK_TRAVERSAL = 3;
    private static final boolean DEBUG_FRAMES = false;
    private static final boolean DEBUG_JANK = false;
    private static final long DEFAULT_FRAME_DELAY = 10;
    public static final int MSG_DO_ANIM_CALLBACK = 103;
    private static final int MSG_DO_FRAME = 0;
    public static final int MSG_DO_INITIATIVE_FRAME = 104;
    private static final int MSG_DO_SCHEDULE_CALLBACK = 2;
    private static final int MSG_DO_SCHEDULE_VSYNC = 1;
    private static final String TAG = "Choreographer";
    private static volatile Choreographer mMainInstance;
    private CallbackRecord mCallbackPool;
    private final CallbackQueue[] mCallbackQueues;
    private boolean mCallbacksRunning;
    public IChoreographerExt mChoreographerExt;
    public IChoreographerSocExt mChoreographerSocExt;
    private IChoreographerWrapper mChoreographerWrapper;
    private boolean mDebugPrintNextFrameTimeDelta;
    private final FrameDisplayEventReceiver mDisplayEventReceiver;
    private int mFPSDivisor;
    FrameInfo mFrameInfo;

    @Deprecated
    private long mFrameIntervalNanos;
    private boolean mFrameScheduled;
    private final FrameHandler mHandler;
    private long mLastFrameIntervalNanos;
    private long mLastFrameTimeNanos;
    private DisplayEventReceiver.VsyncEventData mLastVsyncEventData;
    private final Object mLock;
    private final Looper mLooper;
    private static volatile long sFrameDelay = 10;
    private static final ThreadLocal<Choreographer> sThreadInstance = new ThreadLocal<Choreographer>() { // from class: android.view.Choreographer.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Choreographer initialValue() {
            Looper looper = Looper.myLooper();
            if (looper == null) {
                throw new IllegalStateException("The current thread must have a looper!");
            }
            Choreographer choreographer = new Choreographer(looper, 0);
            if (looper == Looper.getMainLooper()) {
                Choreographer.mMainInstance = choreographer;
            }
            return choreographer;
        }
    };
    private static final ThreadLocal<Choreographer> sSfThreadInstance = new ThreadLocal<Choreographer>() { // from class: android.view.Choreographer.2
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Choreographer initialValue() {
            Looper looper = Looper.myLooper();
            if (looper == null) {
                throw new IllegalStateException("The current thread must have a looper!");
            }
            return new Choreographer(looper, 1);
        }
    };
    private static final boolean USE_VSYNC = SystemProperties.getBoolean("debug.choreographer.vsync", true);
    private static final boolean USE_FRAME_TIME = SystemProperties.getBoolean("debug.choreographer.frametime", true);
    private static final int SKIPPED_FRAME_WARNING_LIMIT = SystemProperties.getInt("debug.choreographer.skipwarning", 30);
    private static final Object FRAME_CALLBACK_TOKEN = new Object() { // from class: android.view.Choreographer.3
        public String toString() {
            return "FRAME_CALLBACK_TOKEN";
        }
    };
    private static final Object VSYNC_CALLBACK_TOKEN = new Object() { // from class: android.view.Choreographer.4
        public String toString() {
            return "VSYNC_CALLBACK_TOKEN";
        }
    };
    private static final String[] CALLBACK_TRACE_TITLES = {"input", "animation", "insets_animation", "traversal", "commit"};

    public interface FrameCallback {
        void doFrame(long j);
    }

    public interface VsyncCallback {
        void onVsync(FrameData frameData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Choreographer(Looper looper, int i) {
        FrameDisplayEventReceiver frameDisplayEventReceiver;
        this.mLock = new Object();
        this.mFPSDivisor = 1;
        this.mLastVsyncEventData = new DisplayEventReceiver.VsyncEventData();
        this.mFrameInfo = new FrameInfo();
        Object[] objArr = 0;
        this.mChoreographerWrapper = new ChoreographerWrapper();
        this.mChoreographerExt = (IChoreographerExt) ExtLoader.type(IChoreographerExt.class).base(this).create();
        this.mLooper = looper;
        this.mHandler = new FrameHandler(looper);
        if (USE_VSYNC) {
            frameDisplayEventReceiver = new FrameDisplayEventReceiver(looper, i);
        } else {
            frameDisplayEventReceiver = null;
        }
        this.mDisplayEventReceiver = frameDisplayEventReceiver;
        this.mLastFrameTimeNanos = Long.MIN_VALUE;
        this.mFrameIntervalNanos = (long) (1.0E9f / getRefreshRate());
        IChoreographerSocExt iChoreographerSocExt = (IChoreographerSocExt) ExtLoader.type(IChoreographerSocExt.class).base(this).create();
        this.mChoreographerSocExt = iChoreographerSocExt;
        iChoreographerSocExt.setFrameInterval(this.mFrameIntervalNanos);
        this.mCallbackQueues = new CallbackQueue[5];
        for (int i2 = 0; i2 <= 4; i2++) {
            this.mCallbackQueues[i2] = new CallbackQueue();
        }
        setFPSDivisor(SystemProperties.getInt(ThreadedRenderer.DEBUG_FPS_DIVISOR, 1));
    }

    private static float getRefreshRate() {
        DisplayInfo di = DisplayManagerGlobal.getInstance().getDisplayInfo(0);
        return di.getRefreshRate();
    }

    public static Choreographer getInstance() {
        return sThreadInstance.get();
    }

    public static Choreographer getSfInstance() {
        return sSfThreadInstance.get();
    }

    public static Choreographer getMainThreadInstance() {
        return mMainInstance;
    }

    public static void releaseInstance() {
        ThreadLocal<Choreographer> threadLocal = sThreadInstance;
        Choreographer old = threadLocal.get();
        threadLocal.remove();
        old.dispose();
    }

    private void dispose() {
        this.mDisplayEventReceiver.dispose();
    }

    public static long getFrameDelay() {
        return sFrameDelay;
    }

    public static void setFrameDelay(long frameDelay) {
        sFrameDelay = frameDelay;
    }

    public static long subtractFrameDelay(long delayMillis) {
        long frameDelay = sFrameDelay;
        if (delayMillis <= frameDelay) {
            return 0L;
        }
        return delayMillis - frameDelay;
    }

    public long getFrameIntervalNanos() {
        long j;
        synchronized (this.mLock) {
            j = this.mLastFrameIntervalNanos;
        }
        return j;
    }

    void dump(String prefix, PrintWriter writer) {
        String innerPrefix = prefix + "  ";
        writer.print(prefix);
        writer.println("Choreographer:");
        writer.print(innerPrefix);
        writer.print("mFrameScheduled=");
        writer.println(this.mFrameScheduled);
        writer.print(innerPrefix);
        writer.print("mLastFrameTime=");
        writer.println(TimeUtils.formatUptime(this.mLastFrameTimeNanos / TimeUtils.NANOS_PER_MS));
    }

    public void postCallback(int callbackType, Runnable action, Object token) {
        postCallbackDelayed(callbackType, action, token, 0L);
    }

    public void postCallbackDelayed(int callbackType, Runnable action, Object token, long delayMillis) {
        if (action == null) {
            throw new IllegalArgumentException("action must not be null");
        }
        if (callbackType < 0 || callbackType > 4) {
            throw new IllegalArgumentException("callbackType is invalid");
        }
        postCallbackDelayedInternal(callbackType, action, token, delayMillis);
    }

    private void postCallbackDelayedInternal(int callbackType, Object action, Object token, long delayMillis) {
        synchronized (this.mLock) {
            long now = SystemClock.uptimeMillis();
            long dueTime = now + delayMillis;
            this.mCallbackQueues[callbackType].addCallbackLocked(dueTime, action, token);
            if (dueTime <= now) {
                scheduleFrameLocked(now);
            } else {
                Message msg = this.mHandler.obtainMessage(2, action);
                msg.arg1 = callbackType;
                msg.setAsynchronous(true);
                this.mHandler.sendMessageAtTime(msg, dueTime);
            }
        }
    }

    public void postVsyncCallback(VsyncCallback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        postCallbackDelayedInternal(1, callback, VSYNC_CALLBACK_TOKEN, 0L);
    }

    public void removeCallbacks(int callbackType, Runnable action, Object token) {
        if (callbackType < 0 || callbackType > 4) {
            throw new IllegalArgumentException("callbackType is invalid");
        }
        removeCallbacksInternal(callbackType, action, token);
    }

    private void removeCallbacksInternal(int callbackType, Object action, Object token) {
        synchronized (this.mLock) {
            this.mCallbackQueues[callbackType].removeCallbacksLocked(action, token);
            if (action != null && token == null) {
                this.mHandler.removeMessages(2, action);
            }
        }
    }

    public void postFrameCallback(FrameCallback callback) {
        postFrameCallbackDelayed(callback, 0L);
    }

    public void postFrameCallbackDelayed(FrameCallback callback, long delayMillis) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        postCallbackDelayedInternal(1, callback, FRAME_CALLBACK_TOKEN, delayMillis);
    }

    public void removeFrameCallback(FrameCallback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        removeCallbacksInternal(1, callback, FRAME_CALLBACK_TOKEN);
    }

    public void removeVsyncCallback(VsyncCallback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        removeCallbacksInternal(1, callback, VSYNC_CALLBACK_TOKEN);
    }

    public long getFrameTime() {
        return getFrameTimeNanos() / TimeUtils.NANOS_PER_MS;
    }

    public long getFrameTimeNanos() {
        long jNanoTime;
        synchronized (this.mLock) {
            if (!this.mCallbacksRunning) {
                throw new IllegalStateException("This method must only be called as part of a callback while a frame is in progress.");
            }
            jNanoTime = USE_FRAME_TIME ? this.mLastFrameTimeNanos : System.nanoTime();
        }
        return jNanoTime;
    }

    public long getLastFrameTimeNanos() {
        long jNanoTime;
        synchronized (this.mLock) {
            jNanoTime = USE_FRAME_TIME ? this.mLastFrameTimeNanos : System.nanoTime();
        }
        return jNanoTime;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleFrameLocked(long now) {
        if (!this.mFrameScheduled) {
            this.mFrameScheduled = true;
            if (this.mChoreographerSocExt.hookScheduleFrameLocked(USE_VSYNC, this.mHandler, this.mFrameIntervalNanos)) {
                if (!isRunningOnLooperThreadLocked()) {
                    Message msg = this.mHandler.obtainMessage(1);
                    msg.setAsynchronous(true);
                    this.mHandler.sendMessageAtFrontOfQueue(msg);
                    return;
                }
                scheduleVsyncLocked();
                return;
            }
            sFrameDelay = this.mChoreographerSocExt.getFrameDelay(sFrameDelay, this.mLastFrameTimeNanos);
            long nextFrameTime = Math.max((this.mLastFrameTimeNanos / TimeUtils.NANOS_PER_MS) + sFrameDelay, now);
            Message msg2 = this.mHandler.obtainMessage(0);
            msg2.setAsynchronous(true);
            this.mHandler.sendMessageAtTime(msg2, nextFrameTime);
        }
    }

    public long getVsyncId() {
        return this.mLastVsyncEventData.preferredFrameTimeline().vsyncId;
    }

    public long getFrameDeadline() {
        return this.mLastVsyncEventData.preferredFrameTimeline().deadline;
    }

    void setFPSDivisor(int divisor) {
        if (divisor <= 0) {
            divisor = 1;
        }
        this.mFPSDivisor = divisor;
        ThreadedRenderer.setFPSDivisor(divisor);
    }

    private void traceMessage(String msg) {
        Trace.traceBegin(8L, msg);
        Trace.traceEnd(8L);
    }

    /* JADX WARN: Removed duplicated region for block: B:166:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0136 A[Catch: all -> 0x013d, TryCatch #20 {all -> 0x013d, blocks: (B:52:0x012e, B:54:0x0136, B:55:0x0138, B:42:0x00e1, B:43:0x00ff, B:47:0x0111, B:51:0x0121), top: B:186:0x00e1 }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void doFrame(long r46, int r48, android.view.DisplayEventReceiver.VsyncEventData r49) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 899
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.Choreographer.doFrame(long, int, android.view.DisplayEventReceiver$VsyncEventData):void");
    }

    void doCallbacks(int callbackType, FrameData frameData, long frameIntervalNanos) {
        long frameTimeNanos = frameData.mFrameTimeNanos;
        synchronized (this.mLock) {
            long now = System.nanoTime();
            CallbackRecord callbacks = this.mCallbackQueues[callbackType].extractDueCallbacksLocked(now / TimeUtils.NANOS_PER_MS);
            if (callbacks == null) {
                return;
            }
            this.mCallbacksRunning = true;
            if (callbackType == 4) {
                long jitterNanos = now - frameTimeNanos;
                Trace.traceCounter(8L, "jitterNanos", (int) jitterNanos);
                if (jitterNanos >= 2 * frameIntervalNanos) {
                    long lastFrameOffset = (jitterNanos % frameIntervalNanos) + frameIntervalNanos;
                    long frameTimeNanos2 = now - lastFrameOffset;
                    this.mLastFrameTimeNanos = frameTimeNanos2;
                    frameData.updateFrameData(frameTimeNanos2);
                }
            }
            try {
                Trace.traceBegin(8L, CALLBACK_TRACE_TITLES[callbackType]);
                this.mChoreographerSocExt.hookDoCallbackPerfHint(callbackType, true);
                for (CallbackRecord c = callbacks; c != null; c = c.next) {
                    c.run(frameData);
                }
                synchronized (this.mLock) {
                    this.mCallbacksRunning = false;
                    do {
                        CallbackRecord next = callbacks.next;
                        recycleCallbackLocked(callbacks);
                        callbacks = next;
                    } while (callbacks != null);
                }
                this.mChoreographerSocExt.hookDoCallbackPerfHint(callbackType, false);
                Trace.traceEnd(8L);
            } catch (Throwable th) {
                synchronized (this.mLock) {
                    this.mCallbacksRunning = false;
                    do {
                        CallbackRecord next2 = callbacks.next;
                        recycleCallbackLocked(callbacks);
                        callbacks = next2;
                    } while (callbacks != null);
                    this.mChoreographerSocExt.hookDoCallbackPerfHint(callbackType, false);
                    Trace.traceEnd(8L);
                    throw th;
                }
            }
        }
    }

    void doScheduleVsync() {
        synchronized (this.mLock) {
            if (this.mFrameScheduled) {
                scheduleVsyncLocked();
            }
        }
    }

    void doScheduleCallback(int callbackType) {
        synchronized (this.mLock) {
            if (!this.mFrameScheduled) {
                long now = SystemClock.uptimeMillis();
                if (this.mCallbackQueues[callbackType].hasDueCallbacksLocked(now)) {
                    scheduleFrameLocked(now);
                }
            }
        }
    }

    private void scheduleVsyncLocked() {
        try {
            Trace.traceBegin(8L, "Choreographer#scheduleVsyncLocked");
            this.mDisplayEventReceiver.scheduleVsync();
            this.mChoreographerSocExt.setScheduleVsync(true);
        } finally {
            Trace.traceEnd(8L);
        }
    }

    private boolean isRunningOnLooperThreadLocked() {
        return Looper.myLooper() == this.mLooper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CallbackRecord obtainCallbackLocked(long dueTime, Object action, Object token) {
        CallbackRecord callback = this.mCallbackPool;
        if (callback == null) {
            callback = new CallbackRecord();
        } else {
            this.mCallbackPool = callback.next;
            callback.next = null;
        }
        callback.dueTime = dueTime;
        callback.action = action;
        callback.token = token;
        return callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recycleCallbackLocked(CallbackRecord callback) {
        callback.action = null;
        callback.token = null;
        callback.next = this.mCallbackPool;
        this.mCallbackPool = callback;
    }

    public static class FrameTimeline {
        static final FrameTimeline INVALID_FRAME_TIMELINE = new FrameTimeline(-1, Long.MAX_VALUE, Long.MAX_VALUE);
        private long mDeadlineNanos;
        private long mExpectedPresentTimeNanos;
        private long mVsyncId;

        FrameTimeline(long vsyncId, long expectedPresentTimeNanos, long deadlineNanos) {
            this.mVsyncId = vsyncId;
            this.mExpectedPresentTimeNanos = expectedPresentTimeNanos;
            this.mDeadlineNanos = deadlineNanos;
        }

        public long getVsyncId() {
            return this.mVsyncId;
        }

        void resetVsyncId() {
            this.mVsyncId = -1L;
        }

        public long getExpectedPresentationTimeNanos() {
            return this.mExpectedPresentTimeNanos;
        }

        public long getDeadlineNanos() {
            return this.mDeadlineNanos;
        }
    }

    public static class FrameData {
        static final FrameTimeline[] INVALID_FRAME_TIMELINES = new FrameTimeline[0];
        private long mFrameTimeNanos;
        private FrameTimeline[] mFrameTimelines;
        private FrameTimeline mPreferredFrameTimeline;

        FrameData() {
            this.mFrameTimelines = INVALID_FRAME_TIMELINES;
            this.mPreferredFrameTimeline = FrameTimeline.INVALID_FRAME_TIMELINE;
        }

        FrameData(long frameTimeNanos, DisplayEventReceiver.VsyncEventData vsyncEventData) {
            FrameTimeline[] frameTimelines = new FrameTimeline[vsyncEventData.frameTimelines.length];
            for (int i = 0; i < vsyncEventData.frameTimelines.length; i++) {
                DisplayEventReceiver.VsyncEventData.FrameTimeline frameTimeline = vsyncEventData.frameTimelines[i];
                frameTimelines[i] = new FrameTimeline(frameTimeline.vsyncId, frameTimeline.expectedPresentTime, frameTimeline.deadline);
            }
            this.mFrameTimeNanos = frameTimeNanos;
            this.mFrameTimelines = frameTimelines;
            this.mPreferredFrameTimeline = frameTimelines[vsyncEventData.preferredFrameTimelineIndex];
        }

        void updateFrameData(long frameTimeNanos) {
            this.mFrameTimeNanos = frameTimeNanos;
            for (FrameTimeline ft : this.mFrameTimelines) {
                ft.resetVsyncId();
            }
        }

        public long getFrameTimeNanos() {
            return this.mFrameTimeNanos;
        }

        public FrameTimeline[] getFrameTimelines() {
            return this.mFrameTimelines;
        }

        public FrameTimeline getPreferredFrameTimeline() {
            return this.mPreferredFrameTimeline;
        }

        private FrameTimeline[] convertFrameTimelines(DisplayEventReceiver.VsyncEventData vsyncEventData) {
            FrameTimeline[] frameTimelines = new FrameTimeline[vsyncEventData.frameTimelines.length];
            for (int i = 0; i < vsyncEventData.frameTimelines.length; i++) {
                DisplayEventReceiver.VsyncEventData.FrameTimeline frameTimeline = vsyncEventData.frameTimelines[i];
                frameTimelines[i] = new FrameTimeline(frameTimeline.vsyncId, frameTimeline.expectedPresentTime, frameTimeline.deadline);
            }
            return frameTimelines;
        }
    }

    private final class FrameHandler extends Handler {
        public FrameHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Throwable {
            switch (msg.what) {
                case 0:
                    Choreographer.this.doFrame(System.nanoTime(), 0, new DisplayEventReceiver.VsyncEventData());
                    break;
                case 1:
                    Choreographer.this.doScheduleVsync();
                    break;
                case 2:
                    Choreographer.this.doScheduleCallback(msg.arg1);
                    break;
                case 103:
                    Choreographer.this.mChoreographerExt.doAnimCallback((FrameData) msg.obj);
                    break;
                case 104:
                    Choreographer.this.mChoreographerExt.doInitiativeFrame(((Long) msg.obj).longValue(), msg.arg1);
                    break;
            }
        }
    }

    private final class FrameDisplayEventReceiver extends DisplayEventReceiver implements Runnable {
        private int mFrame;
        private boolean mHavePendingVsync;
        private DisplayEventReceiver.VsyncEventData mLastVsyncEventData;
        private long mTimestampNanos;

        public FrameDisplayEventReceiver(Looper looper, int vsyncSource) {
            super(looper, vsyncSource, 0);
            this.mLastVsyncEventData = new DisplayEventReceiver.VsyncEventData();
        }

        @Override // android.view.DisplayEventReceiver
        public void onVsync(long timestampNanos, long physicalDisplayId, int frame, DisplayEventReceiver.VsyncEventData vsyncEventData) {
            try {
                if (Trace.isTagEnabled(8L)) {
                    Trace.traceBegin(8L, "Choreographer#onVsync " + vsyncEventData.preferredFrameTimeline().vsyncId);
                }
                long now = System.nanoTime();
                if (timestampNanos > now) {
                    Log.w(Choreographer.TAG, "Frame time is " + ((timestampNanos - now) * 1.0E-6f) + " ms in the future!  Check that graphics HAL is generating vsync timestamps using the correct timebase.");
                    timestampNanos = now;
                }
                if (this.mHavePendingVsync) {
                    Log.w(Choreographer.TAG, "Already have a pending vsync event.  There should only be one at a time.");
                } else {
                    this.mHavePendingVsync = true;
                }
                this.mTimestampNanos = timestampNanos;
                this.mFrame = frame;
                this.mLastVsyncEventData = vsyncEventData;
                Choreographer.this.mChoreographerSocExt.setVsyncTime(this.mTimestampNanos);
                Message msg = Message.obtain(Choreographer.this.mHandler, this);
                msg.setAsynchronous(true);
                Choreographer.this.mHandler.sendMessageAtTime(msg, timestampNanos / TimeUtils.NANOS_PER_MS);
                Choreographer.this.mChoreographerSocExt.hookDoFramePerfHint(vsyncEventData.preferredFrameTimeline().vsyncId, true);
            } finally {
                Trace.traceEnd(8L);
            }
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            this.mHavePendingVsync = false;
            Choreographer.this.doFrame(this.mTimestampNanos, this.mFrame, this.mLastVsyncEventData);
        }
    }

    private static final class CallbackRecord {
        public Object action;
        public long dueTime;
        public CallbackRecord next;
        public Object token;

        private CallbackRecord() {
        }

        public void run(long frameTimeNanos) {
            if (this.token == Choreographer.FRAME_CALLBACK_TOKEN) {
                ((FrameCallback) this.action).doFrame(frameTimeNanos);
            } else {
                ((Runnable) this.action).run();
            }
        }

        void run(FrameData frameData) {
            if (this.token == Choreographer.VSYNC_CALLBACK_TOKEN) {
                ((VsyncCallback) this.action).onVsync(frameData);
            } else {
                run(frameData.getFrameTimeNanos());
            }
        }
    }

    private final class CallbackQueue {
        private CallbackRecord mHead;

        private CallbackQueue() {
        }

        public boolean hasDueCallbacksLocked(long now) {
            CallbackRecord callbackRecord = this.mHead;
            return callbackRecord != null && callbackRecord.dueTime <= now;
        }

        public CallbackRecord extractDueCallbacksLocked(long now) {
            CallbackRecord callbacks = this.mHead;
            if (callbacks == null || callbacks.dueTime > now) {
                return null;
            }
            CallbackRecord last = callbacks;
            CallbackRecord next = last.next;
            while (true) {
                if (next == null) {
                    break;
                }
                if (next.dueTime > now) {
                    last.next = null;
                    break;
                }
                last = next;
                next = next.next;
            }
            this.mHead = next;
            return callbacks;
        }

        public void addCallbackLocked(long dueTime, Object action, Object token) {
            CallbackRecord callback = Choreographer.this.obtainCallbackLocked(dueTime, action, token);
            CallbackRecord entry = this.mHead;
            if (entry == null) {
                this.mHead = callback;
                return;
            }
            if (dueTime < entry.dueTime) {
                callback.next = entry;
                this.mHead = callback;
                return;
            }
            while (true) {
                if (entry.next == null) {
                    break;
                }
                if (dueTime < entry.next.dueTime) {
                    callback.next = entry.next;
                    break;
                }
                entry = entry.next;
            }
            entry.next = callback;
        }

        public void removeCallbacksLocked(Object action, Object token) {
            CallbackRecord predecessor = null;
            CallbackRecord callback = this.mHead;
            while (callback != null) {
                CallbackRecord next = callback.next;
                if ((action == null || callback.action == action) && (token == null || callback.token == token)) {
                    if (predecessor != null) {
                        predecessor.next = next;
                    } else {
                        this.mHead = next;
                    }
                    Choreographer.this.recycleCallbackLocked(callback);
                } else {
                    predecessor = callback;
                }
                callback = next;
            }
        }
    }

    public void doEstimationFrame(long frameTimeNano) {
    }

    public void doPreAnimation(long frameTimeNanos, long frameIntervalNanos) {
    }

    public void forceFrameScheduled() {
    }

    public boolean isEmptyCallback() {
        return true;
    }

    public IChoreographerWrapper getWrapper() {
        return this.mChoreographerWrapper;
    }

    private class ChoreographerWrapper implements IChoreographerWrapper {
        private ChoreographerWrapper() {
        }

        @Override // android.view.IChoreographerWrapper
        public void scheduleFrameLocked(long now) {
            Choreographer.this.scheduleFrameLocked(now);
        }

        @Override // android.view.IChoreographerWrapper
        public void setFrameScheduled(boolean frameScheduled) {
            Choreographer.this.mFrameScheduled = frameScheduled;
        }

        @Override // android.view.IChoreographerWrapper
        public Handler getHandler() {
            return Choreographer.this.mHandler;
        }

        @Override // android.view.IChoreographerWrapper
        public Object getLock() {
            return Choreographer.this.mLock;
        }

        @Override // android.view.IChoreographerWrapper
        public Object getCallbackQueues() {
            return Choreographer.this.mCallbackQueues;
        }

        @Override // android.view.IChoreographerWrapper
        public int getCallbackLastConst() {
            return 4;
        }

        @Override // android.view.IChoreographerWrapper
        public int getMsgDoFrameConst() {
            return 0;
        }

        @Override // android.view.IChoreographerWrapper
        public void addCallbackLockedForCallbackQueue(Object callback, long dueTime, Object action, Object token) {
            if (callback instanceof CallbackQueue) {
                ((CallbackQueue) callback).addCallbackLocked(dueTime, action, token);
            }
        }

        @Override // android.view.IChoreographerWrapper
        public void setFrameTimeNanosForFrameData(FrameData frameData, long frameTimeNanos) {
            frameData.mFrameTimeNanos = frameTimeNanos;
        }
    }
}
