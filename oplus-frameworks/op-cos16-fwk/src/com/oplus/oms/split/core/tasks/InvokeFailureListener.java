package com.oplus.oms.split.core.tasks;

import java.util.concurrent.Executor;


public class InvokeFailureListener<T> implements InvocationListener<T> {
    private final Executor mExecutor;
    final OplusOnFailureListener mListener;

    
    public InvokeFailureListener(Executor executor, OplusOnFailureListener listener) {
        this.mExecutor = executor;
        this.mListener = listener;
    }

    @Override // com.oplus.oms.split.core.tasks.InvocationListener
    public void invoke(OplusTask<T> task) {
        if (this.mListener != null && !task.isSuccessful()) {
            this.mExecutor.execute(new OplusTaskFailureRunnable(this, task));
        }
    }
}
