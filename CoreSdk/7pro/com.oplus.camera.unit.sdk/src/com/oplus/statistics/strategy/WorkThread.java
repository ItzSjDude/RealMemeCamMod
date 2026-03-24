package com.oplus.statistics.strategy;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
@SynthesizedClassMap({$$Lambda$WorkThread$VOfC_ZjVs4dE0vI9lL4k56FQIyY.class})
/* loaded from: classes.dex */
public class WorkThread extends HandlerThread {
    public static final int MSG_WHAT_CHATTY_EVENT = 1;
    private static final String TAG = "WorkThread";
    private Handler mHandler;
    private final List<Runnable> mPendingTaskList;
    private final SparseArray<PendingTask> mPendingTaskMap;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface MsgWhatType {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onLooperPrepared$0() {
        return "onLooperPrepared, but looper is null";
    }

    private WorkThread() {
        super("OplusTrack-thread");
        this.mPendingTaskList = new ArrayList();
        this.mPendingTaskMap = new SparseArray<>();
        start();
    }

    public static WorkThread getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public static void execute(Runnable runnable) {
        getInstance().post(runnable);
    }

    public synchronized void postDelay(int i, @NonNull Runnable runnable, long j) {
        if (this.mHandler != null) {
            this.mHandler.postDelayed(runnable, j);
        } else {
            this.mPendingTaskMap.put(i, new PendingTask(runnable, j));
        }
    }

    public synchronized void post(Runnable runnable) {
        if (this.mHandler != null) {
            this.mHandler.post(runnable);
        } else {
            this.mPendingTaskList.add(runnable);
        }
    }

    public synchronized boolean hasMessages(int i) {
        if (this.mHandler != null) {
            return this.mHandler.hasMessages(i);
        }
        return this.mPendingTaskMap.get(i) != null;
    }

    public synchronized void removeMessages(int i) {
        if (this.mHandler != null) {
            this.mHandler.removeMessages(i);
        } else {
            this.mPendingTaskMap.remove(i);
        }
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        super.onLooperPrepared();
        Looper looper = getLooper();
        if (looper == null) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.strategy.-$$Lambda$WorkThread$VOfC_ZjVs4dE0vI9lL4k56FQIyY
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return WorkThread.lambda$onLooperPrepared$0();
                }
            });
            return;
        }
        synchronized (this) {
            this.mHandler = new Handler(looper);
            for (Runnable runnable : this.mPendingTaskList) {
                this.mHandler.post(runnable);
            }
            this.mPendingTaskList.clear();
            for (int i = 0; i < this.mPendingTaskMap.size(); i++) {
                PendingTask valueAt = this.mPendingTaskMap.valueAt(i);
                this.mHandler.postDelayed(valueAt.runnable, valueAt.delayMillis);
            }
            this.mPendingTaskMap.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SingletonHolder {
        private static final WorkThread INSTANCE = new WorkThread();

        private SingletonHolder() {
        }
    }

    /* loaded from: classes.dex */
    static class PendingTask {
        private final long delayMillis;
        private final Runnable runnable;

        public PendingTask(@NonNull Runnable runnable, long j) {
            this.runnable = runnable;
            this.delayMillis = j;
        }
    }
}
