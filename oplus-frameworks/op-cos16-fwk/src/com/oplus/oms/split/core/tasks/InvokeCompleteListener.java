package com.oplus.oms.split.core.tasks;

import java.util.concurrent.Executor;


public class InvokeCompleteListener<T> implements InvocationListener<T> {
    private final Executor mExecutor;
    final OplusOnCompleteListener<T> mListener;

    
    public InvokeCompleteListener(Executor executor, OplusOnCompleteListener<T> listener) {
        this.mExecutor = executor;
        this.mListener = listener;
    }

    @Override // com.oplus.oms.split.core.tasks.InvocationListener
    public void invoke(OplusTask<T> task) {
        if (this.mListener == null) {
            return;
        }
        this.mExecutor.execute(new OplusTaskCompleteRunnable(this, task));
    }
}
