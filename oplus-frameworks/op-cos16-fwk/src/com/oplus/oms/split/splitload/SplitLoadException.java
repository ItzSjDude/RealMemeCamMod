package com.oplus.oms.split.splitload;

final class SplitLoadException extends Exception {
    private final int mErrorCode;

    
    public SplitLoadException(int errorCode, Throwable e) {
        super("Split Load Error: " + errorCode, e);
        this.mErrorCode = errorCode;
    }

    
    public int getErrorCode() {
        return this.mErrorCode;
    }
}
