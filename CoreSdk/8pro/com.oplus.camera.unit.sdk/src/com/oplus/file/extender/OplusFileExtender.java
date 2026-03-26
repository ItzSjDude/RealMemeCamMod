package com.oplus.file.extender;

import com.common.Util;

/* JADX INFO: loaded from: classes.dex */
public class OplusFileExtender {
    private long mNativePtr;

    private native void close(long handle);

    private native byte[] getBuffer(long handle, String key);

    private native String getTag(long handle);

    private native String getValue(long handle, String key);

    private native long openFd(int fd);

    private native long openPath(String path);

    private native void setBuffer(long handle, String key, byte[] buffer);

    private native void setTag(long handle, String tag);

    private native void setValue(long handle, String key, String value);

    public OplusFileExtender(String path) {
        this.mNativePtr = 0L;
        this.mNativePtr = openPath(path);
    }

    public OplusFileExtender(int fd) {
        this.mNativePtr = 0L;
        this.mNativePtr = openFd(fd);
    }

    public void setTag(String tag) {
        setTag(this.mNativePtr, tag);
    }

    public void setExtensionData(String key, String value) {
        setValue(this.mNativePtr, key, value);
    }

    public byte[] getExtensionDataByteArray(String key) {
        return getBuffer(this.mNativePtr, key);
    }

    public String getExtensionDataString(String key) {
        return getValue(this.mNativePtr, key);
    }

    public String getTag() {
        return getTag(this.mNativePtr);
    }

    public void setExtensionData(String key, byte[] buffer) {
        setBuffer(this.mNativePtr, key, buffer);
    }

    public void close() {
        close(this.mNativePtr);
    }

    static {
        Util.loadJNILibrary("FileExtender-jni");
    }
}
