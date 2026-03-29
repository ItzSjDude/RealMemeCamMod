package com.oplus.oms.split.core.tasks;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.oplus.oms.split.common.SplitLog;
import java.util.concurrent.Executor;

public class CallbackExecutor implements Executor {
    private static final String TAG = CallbackExecutor.class.getSimpleName();
    private Handler mExecutorHandler;

    private CallbackExecutor() {
    }

    public static CallbackExecutor getInstance() {
        return InnerHolder.INSTANCE;
    }

    public void init(boolean runOnMainThread) {
        if (runOnMainThread) {
            this.mExecutorHandler = new Handler(Looper.getMainLooper());
            return;
        }
        HandlerThread thread = new HandlerThread("callback_executor_thread");
        thread.start();
        this.mExecutorHandler = new Handler(thread.getLooper());
    }

    public Handler getHandler() {
        return this.mExecutorHandler;
    }

    public boolean isRunOnMainThread() {
        return this.mExecutorHandler != null && this.mExecutorHandler.getLooper() == Looper.getMainLooper();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        if (this.mExecutorHandler != null) {
            this.mExecutorHandler.post(command);
        } else {
            SplitLog.e(TAG, "Executor has not been initialized.", new Object[0]);
        }
    }

    private static class InnerHolder {
        private static final CallbackExecutor INSTANCE = new CallbackExecutor();

        private InnerHolder() {
        }
    }
}
