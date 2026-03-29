package com.oplus.oms.split.splitinstall;

public final class InstallException extends Exception {
    private final int mErrorCode;

    
    public InstallException(int errorCode, Throwable e) {
        super("Split Install Error: " + errorCode, e);
        this.mErrorCode = errorCode;
    }

    
    public int getErrorCode() {
        return this.mErrorCode;
    }
}
