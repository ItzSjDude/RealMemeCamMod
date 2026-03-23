package com.coloros.ocs.camera.util;

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
    private com.oplus.ocs.camera.common.util.ErrorResult mErrorResult;
    public static final ErrorResult PARAMETER_ERROR = new ErrorResult(10001, "parameter config error");
    public static final ErrorResult STREAM_SURFACE_ERROR = new ErrorResult(10002, "stream surface error");
    public static final ErrorResult ILLEGAL_STATE_ERROR = new ErrorResult(10003, "illegal state error");

    public ErrorResult(int i, String str) {
        this.mErrorResult = null;
        this.mErrorResult = new com.oplus.ocs.camera.common.util.ErrorResult(i, str);
    }

    public ErrorResult(com.oplus.ocs.camera.common.util.ErrorResult errorResult) {
        this.mErrorResult = null;
        this.mErrorResult = errorResult;
    }

    public int getErrorCode() {
        return this.mErrorResult.getErrorCode();
    }

    public String getErrorInfo() {
        return this.mErrorResult.getErrorInfo();
    }

    @NonNull
    public String toString() {
        return this.mErrorResult.toString();
    }
}
