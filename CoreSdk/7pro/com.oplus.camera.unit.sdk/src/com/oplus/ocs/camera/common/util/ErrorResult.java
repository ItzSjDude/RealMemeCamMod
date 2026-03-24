package com.oplus.ocs.camera.common.util;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class ErrorResult {
    public static final String CAMERA_DEVICE_ERROR = "camera device error";
    public static final int ERROR_CODE_ILLEGAL_STATE_ERROR = 10003;
    public static final int ERROR_CODE_PARAMETER_ERROR = 10001;
    public static final int ERROR_CODE_START = 10000;
    public static final int ERROR_CODE_STREAM_SURFACE_ERROR = 10002;
    public static final String ERROR_MSG_ILLEGAL_STATE_ERROR = "illegal state error";
    public static final String ERROR_MSG_PARAMETER_ERROR = "parameter config error";
    public static final String ERROR_MSG_STREAM_SURFACE_ERROR = "stream surface error";
    private int mErrorCode;
    private String mErrorInfo;
    public static final ErrorResult PARAMETER_ERROR = new ErrorResult(10001, "parameter config error");
    public static final ErrorResult STREAM_SURFACE_ERROR = new ErrorResult(10002, "stream surface error");
    public static final ErrorResult ILLEGAL_STATE_ERROR = new ErrorResult(10003, "illegal state error");

    public ErrorResult(int i, String str) {
        this.mErrorCode = 0;
        this.mErrorInfo = null;
        this.mErrorCode = i;
        this.mErrorInfo = str;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public String getErrorInfo() {
        return this.mErrorInfo;
    }

    @NonNull
    public String toString() {
        return "[error code: " + getErrorCode() + ", error info: " + getErrorInfo() + "]";
    }
}
