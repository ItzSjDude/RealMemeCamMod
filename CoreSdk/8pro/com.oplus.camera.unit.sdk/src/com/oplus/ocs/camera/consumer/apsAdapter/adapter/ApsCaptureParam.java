package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.camera2.CameraMetadata;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ApsCaptureParam {
    private String m10BitsEnable;
    private String mCaptureEvList;
    private String[] mCropSize;
    private long mFrameNumber;
    private ApsResult.ImageBuffer mImageBuffer;
    private int[] mInputSize;
    private CameraMetadata mLogicMeta;
    private int mMaxHoldImages;
    private ApsResult.ImageBuffer mMetaBuffer;
    private CameraMetadata mPhysicMeta;
    private int mPreferType;
    private int mRole;
    private int mSpecificAlgo;
    private boolean mbMixedFormatRawFrame;
    private boolean mbRawSyncProcessFrame;
    private boolean mbReprocessFrame;
    private boolean mbVideoSnapshot;

    public ApsCaptureParam(long j, ApsResult.ImageBuffer imageBuffer, int i, CameraMetadata cameraMetadata, CameraMetadata cameraMetadata2, ApsResult.ImageBuffer imageBuffer2, int[] iArr, String[] strArr, boolean z, int i2, int i3, boolean z2, boolean z3, int i4, String str, String str2, boolean z4) {
        this.mFrameNumber = j;
        this.mImageBuffer = imageBuffer;
        this.mRole = i;
        this.mLogicMeta = cameraMetadata;
        this.mPhysicMeta = cameraMetadata2;
        this.mMetaBuffer = imageBuffer2;
        this.mInputSize = iArr;
        this.mCropSize = strArr;
        this.mbReprocessFrame = z;
        this.mMaxHoldImages = i2;
        this.mPreferType = i3;
        this.mbVideoSnapshot = z2;
        this.mbRawSyncProcessFrame = z3;
        this.mSpecificAlgo = i4;
        this.m10BitsEnable = str;
        this.mCaptureEvList = str2;
        this.mbMixedFormatRawFrame = z4;
    }

    public long getFrameNumber() {
        return this.mFrameNumber;
    }

    public ApsResult.ImageBuffer getImageBuffer() {
        return this.mImageBuffer;
    }

    public ApsResult.ImageBuffer getMetaBuffer() {
        return this.mMetaBuffer;
    }

    public boolean getIsReprocessFrame() {
        return this.mbReprocessFrame;
    }

    public int[] getInputSize() {
        return this.mInputSize;
    }

    public boolean getIsMbMixedFormatRawFrame() {
        return this.mbMixedFormatRawFrame;
    }

    public String[] getCropSize() {
        return this.mCropSize;
    }

    public int getRole() {
        return this.mRole;
    }

    public CameraMetadata getLogicMeta() {
        return this.mLogicMeta;
    }

    public CameraMetadata getPhysicMeta() {
        return this.mPhysicMeta;
    }

    public int getMaxHoldImages() {
        return this.mMaxHoldImages;
    }

    public int getPreferType() {
        return this.mPreferType;
    }

    public boolean getIsVideoSnapshot() {
        return this.mbVideoSnapshot;
    }

    public boolean isRawSyncProcess() {
        return this.mbRawSyncProcessFrame;
    }

    public int getSpecificAlgo() {
        return this.mSpecificAlgo;
    }

    public String get10BitsEnable() {
        return this.m10BitsEnable;
    }

    public String getCaptureEvList() {
        return this.mCaptureEvList;
    }

    public String toString() {
        return "{mFrameNumber: " + this.mFrameNumber + ", mImageBuffer: " + this.mImageBuffer + ", mRole: " + this.mRole + ", mLogicMeta: " + this.mLogicMeta + ", mPhysicMeta: " + this.mPhysicMeta + ", mInputSize: " + Arrays.toString(this.mInputSize) + ", mbReprocessFrame: " + this.mbReprocessFrame + ", mMaxHoldImages: " + this.mMaxHoldImages + ", mPreferType: " + this.mPreferType + ", mbVideoSnapshot: " + this.mbVideoSnapshot + ", mbRawSyncProcessFrame: " + this.mbRawSyncProcessFrame + ", mSpecificAlgo: " + this.mSpecificAlgo + ", mb10BitsEnable: " + this.m10BitsEnable + ", mb10BitsEnable: " + this.mCaptureEvList + "}";
    }
}
