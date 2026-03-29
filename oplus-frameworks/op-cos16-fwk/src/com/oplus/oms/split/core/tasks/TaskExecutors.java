package com.oplus.oms.split.core.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public class TaskExecutors {
    public static final Executor MAIN_THREAD = new MainThreadExecutor();

    private TaskExecutors() {
    }

    static final class MainThreadExecutor implements Executor {
        private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());

        MainThreadExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            this.mMainThreadHandler.post(command);
        }
    }
}
