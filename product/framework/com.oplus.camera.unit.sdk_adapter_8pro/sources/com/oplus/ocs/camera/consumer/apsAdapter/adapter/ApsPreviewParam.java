package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureResult;
import android.util.ArrayMap;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
/* loaded from: classes.dex */
public class ApsPreviewParam {
    private String mCaptureMode;
    private long mConsumerPtr;
    private long mFrameIdx;
    private ApsResult.ImageBuffer[] mImageBufferArray;
    private ApsResult.ImageBuffer mMetaBuffer;
    private CaptureResult mMetaObj;
    private ArrayMap<String, CameraMetadata> mMetadataMap;
    private String[] mProcessParamters;
    private int[] mRole;
    private long mTimeStamp;
    private boolean mbIsDetached;
    private boolean mbMatchedMetadata;
    private boolean mbNeedMetadata;
    private boolean mbVideoImageAddToAps;

    public ApsPreviewParam() {
        this.mFrameIdx = 0L;
        this.mProcessParamters = null;
        this.mTimeStamp = 0L;
        this.mImageBufferArray = null;
        this.mMetaBuffer = null;
        this.mMetaObj = null;
        this.mRole = null;
        this.mbNeedMetadata = true;
        this.mbVideoImageAddToAps = false;
        this.mbIsDetached = false;
        this.mConsumerPtr = 0L;
        this.mbMatchedMetadata = true;
        this.mCaptureMode = null;
        this.mMetadataMap = null;
    }

    public ApsPreviewParam(long j, String[] strArr, long j2, ApsResult.ImageBuffer[] imageBufferArr, CaptureResult captureResult, ArrayMap<String, CameraMetadata> arrayMap, ApsResult.ImageBuffer imageBuffer, int[] iArr, boolean z, boolean z2, boolean z3, long j3, boolean z4, String str) {
        this.mFrameIdx = j;
        this.mProcessParamters = strArr;
        this.mTimeStamp = j2;
        this.mImageBufferArray = imageBufferArr;
        this.mMetaObj = captureResult;
        this.mMetadataMap = arrayMap;
        this.mMetaBuffer = imageBuffer;
        this.mRole = iArr;
        this.mbNeedMetadata = z;
        this.mbVideoImageAddToAps = z2;
        this.mbIsDetached = z3;
        this.mConsumerPtr = j3;
        this.mbMatchedMetadata = z4;
        this.mCaptureMode = str;
    }

    public boolean getNeedMetadata() {
        return this.mbNeedMetadata;
    }

    public boolean getIsMatchedMetadata() {
        return this.mbMatchedMetadata;
    }

    public boolean getVideoImageAddToAps() {
        return this.mbVideoImageAddToAps;
    }

    public long getFrameIdx() {
        return this.mFrameIdx;
    }

    public void setFrameIdx(long j) {
        this.mFrameIdx = j;
    }

    public String[] getProcessParamters() {
        return this.mProcessParamters;
    }

    public void setProcessParamters(String[] strArr) {
        this.mProcessParamters = strArr;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public long getConsumerPtr() {
        return this.mConsumerPtr;
    }

    public void setTimeStamp(long j) {
        this.mTimeStamp = j;
    }

    public ApsResult.ImageBuffer[] getImageBufferArray() {
        return this.mImageBufferArray;
    }

    public void setImageBufferArray(ApsResult.ImageBuffer[] imageBufferArr) {
        this.mImageBufferArray = imageBufferArr;
    }

    public ApsResult.ImageBuffer getMetaBuffer() {
        return this.mMetaBuffer;
    }

    public void setMetaBuffer(ApsResult.ImageBuffer imageBuffer) {
        this.mMetaBuffer = imageBuffer;
    }

    public CaptureResult getMetaObj() {
        return this.mMetaObj;
    }

    public void setMetaObj(CaptureResult captureResult) {
        this.mMetaObj = captureResult;
    }

    public ArrayMap<String, CameraMetadata> getMetadataPtr() {
        return this.mMetadataMap;
    }

    public void setMetadataPtr(ArrayMap<String, CameraMetadata> arrayMap) {
        this.mMetadataMap = arrayMap;
    }

    public int[] getRole() {
        return this.mRole;
    }

    public void setRole(int[] iArr) {
        this.mRole = iArr;
    }

    public boolean getIsDetached() {
        return this.mbIsDetached;
    }

    public String getCaptureMode() {
        return this.mCaptureMode;
    }
}
