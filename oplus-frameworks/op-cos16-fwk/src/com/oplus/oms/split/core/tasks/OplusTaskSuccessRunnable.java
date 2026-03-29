package com.oplus.oms.split.core.tasks;

final class OplusTaskSuccessRunnable<T> implements Runnable {
    private final InvokeSuccessListener<T> mInvokeSuccessListener;
    private final OplusTask<T> mTask;

    
    public OplusTaskSuccessRunnable(InvokeSuccessListener<T> executor, OplusTask<T> task) {
        this.mInvokeSuccessListener = executor;
        this.mTask = task;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mInvokeSuccessListener.mListener != null) {
            this.mInvokeSuccessListener.mListener.onSuccess(this.mTask.getResult());
        }
    }
}
