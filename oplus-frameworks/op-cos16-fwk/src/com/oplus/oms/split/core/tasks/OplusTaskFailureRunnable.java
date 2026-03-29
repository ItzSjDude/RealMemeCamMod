package com.oplus.oms.split.core.tasks;

final class OplusTaskFailureRunnable<T> implements Runnable {
    private final InvokeFailureListener<T> mFailureExecutor;
    private final OplusTask<T> mTask;

    
    public OplusTaskFailureRunnable(InvokeFailureListener<T> executor, OplusTask<T> task) {
        this.mFailureExecutor = executor;
        this.mTask = task;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mFailureExecutor.mListener != null) {
            this.mFailureExecutor.mListener.onFailure(this.mTask.getException());
        }
    }
}
