package com.oplus.oms.split.core.tasks;

public class OplusRuntimeExecutionException extends RuntimeException {
    
    public OplusRuntimeExecutionException(Throwable th) {
        super(th);
    }

    protected int getErrorCode() {
        return -100;
    }
}
