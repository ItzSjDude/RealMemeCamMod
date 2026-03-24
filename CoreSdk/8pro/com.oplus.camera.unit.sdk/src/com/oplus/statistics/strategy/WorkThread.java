package com.oplus.statistics.strategy;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WorkThread extends HandlerThread {
    public static final int MSG_WHAT_CHATTY_EVENT = 1;
    private static final String TAG = "WorkThread";
    private Handler mHandler;
    private final List<Runnable> mPendingTaskList;
    private final SparseArray<PendingTask> mPendingTaskMap;

    @Retention(RetentionPolicy.SOURCE)
    public @interface MsgWhatType {
    }

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: 0x0000: CONST_STR  "onLooperPrepared, but looper is null" */
    static /* synthetic */ String lambda$onLooperPrepared$0() {
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
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.postDelayed(runnable, j);
        } else {
            this.mPendingTaskMap.put(i, new PendingTask(runnable, j));
        }
    }

    public synchronized void post(Runnable runnable) {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(runnable);
        } else {
            this.mPendingTaskList.add(runnable);
        }
    }

    public synchronized boolean hasMessages(int i) {
        Handler handler = this.mHandler;
        if (handler != null) {
            return handler.hasMessages(i);
        }
        return this.mPendingTaskMap.get(i) != null;
    }

    public synchronized void removeMessages(int i) {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeMessages(i);
        } else {
            this.mPendingTaskMap.remove(i);
        }
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        super.onLooperPrepared();
        Looper looper = getLooper();
        if (looper == null) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.strategy.WorkThread$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return WorkThread.lambda$onLooperPrepared$0();
                }
            });
            return;
        }
        synchronized (this) {
            this.mHandler = new Handler(looper);
            Iterator<Runnable> it = this.mPendingTaskList.iterator();
            while (it.hasNext()) {
                this.mHandler.post(it.next());
            }
            this.mPendingTaskList.clear();
            for (int i = 0; i < this.mPendingTaskMap.size(); i++) {
                PendingTask pendingTaskValueAt = this.mPendingTaskMap.valueAt(i);
                this.mHandler.postDelayed(pendingTaskValueAt.runnable, pendingTaskValueAt.delayMillis);
            }
            this.mPendingTaskMap.clear();
        }
    }

    private static class SingletonHolder {
        private static final WorkThread INSTANCE = new WorkThread();

        private SingletonHolder() {
        }
    }

    static class PendingTask {
        private final long delayMillis;
        private final Runnable runnable;

        public PendingTask(@NonNull Runnable runnable, long j) {
            this.runnable = runnable;
            this.delayMillis = j;
        }
    }
}
