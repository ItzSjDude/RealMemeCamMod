package com.oplus.oms.split.core.tasks;

final class OplusTaskCompleteRunnable<T> implements Runnable {
    private final InvokeCompleteListener<T> mInvokeCompleteListener;
    private final OplusTask<T> mTask;

    
    public OplusTaskCompleteRunnable(InvokeCompleteListener<T> invokeListener, OplusTask<T> task) {
        this.mInvokeCompleteListener = invokeListener;
        this.mTask = task;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mInvokeCompleteListener.mListener != null) {
            this.mInvokeCompleteListener.mListener.onComplete(this.mTask);
        }
    }
}
