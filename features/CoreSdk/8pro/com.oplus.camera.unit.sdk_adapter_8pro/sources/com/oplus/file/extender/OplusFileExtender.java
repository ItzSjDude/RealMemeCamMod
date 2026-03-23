package com.oplus.file.extender;

import com.common.Util;
/* loaded from: classes.dex */
public class OplusFileExtender {
    private long mNativePtr;

    private native void close(long j);

    private native byte[] getBuffer(long j, String str);

    private native String getTag(long j);

    private native String getValue(long j, String str);

    private native long openFd(int i);

    private native long openPath(String str);

    private native void setBuffer(long j, String str, byte[] bArr);

    private native void setTag(long j, String str);

    private native void setValue(long j, String str, String str2);

    public OplusFileExtender(String str) {
        this.mNativePtr = 0L;
        this.mNativePtr = openPath(str);
    }

    public OplusFileExtender(int i) {
        this.mNativePtr = 0L;
        this.mNativePtr = openFd(i);
    }

    public void setTag(String str) {
        setTag(this.mNativePtr, str);
    }

    public void setExtensionData(String str, String str2) {
        setValue(this.mNativePtr, str, str2);
    }

    public byte[] getExtensionDataByteArray(String str) {
        return getBuffer(this.mNativePtr, str);
    }

    public String getExtensionDataString(String str) {
        return getValue(this.mNativePtr, str);
    }

    public String getTag() {
        return getTag(this.mNativePtr);
    }

    public void setExtensionData(String str, byte[] bArr) {
        setBuffer(this.mNativePtr, str, bArr);
    }

    public void close() {
        close(this.mNativePtr);
    }

    static {
        Util.loadJNILibrary("FileExtender-jni");
    }
}
