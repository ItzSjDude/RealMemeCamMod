package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.HardwareBuffer;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsContextHolder;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class ApsResult {
    private static final String TAG = "ApsResult";
    public long mAppAlgoFlag;
    public String mApsInitFinish;
    public int mBufferType;
    public String mCaptureErrorCode;
    public byte[] mCopyBuffer;
    public int mCropBottom;
    public int mCropLeft;
    public int mCropRight;
    public int mCropTop;
    public ApsAdapterDecision.DecisionResult mDecisionResult;
    public ApsExifData mExifData;
    public ApsExtendData mExtendData;
    public long mFrameId;
    public int mHeight;
    private HardwareBuffer mHwbuffer;
    public long mIdentity;
    private Image mImage;
    private ImageBuffer mImageBuffer;
    public int mIsLastVideoFrame;
    public int mIsMotionDetected;
    public int mIsStartInterpolationFrame;
    public long mMeshPtr;
    public int mMessageType;
    private Image mMetaImage;
    public APSClient.MetaImageRefCounter mMetaImageRefCounter;
    public TotalCaptureResult mMetadata;
    public int mNoiseReductionStrength;
    public String mPipelineName;
    public String mPreviewErrorCode;
    public HashMap<String, Long> mProcTimes;
    public long mRefTimestamp;
    public String[] mResultString;
    public int mRotation;
    public int mSTHeight;
    public int mSTWidth;
    public int mScanline;
    public int mStride;
    private HardwareBuffer mSubHwbuffer;
    public int mWidth;
    public boolean mbHasSTResult;
    public boolean mbHeifProcessInAps;
    public boolean mbNeedDetach;

    public ApsResult() {
        this.mMessageType = 0;
        this.mRotation = 0;
        this.mBufferType = 0;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mStride = 0;
        this.mScanline = 0;
        this.mIdentity = 0L;
        this.mAppAlgoFlag = 0L;
        this.mCopyBuffer = null;
        this.mCropLeft = 0;
        this.mCropTop = 0;
        this.mCropRight = 0;
        this.mCropBottom = 0;
        this.mSTWidth = 0;
        this.mSTHeight = 0;
        this.mbHasSTResult = false;
        this.mPipelineName = null;
        this.mIsMotionDetected = 0;
        this.mIsStartInterpolationFrame = 0;
        this.mIsLastVideoFrame = 0;
        this.mFrameId = 0L;
        this.mbNeedDetach = false;
        this.mbHeifProcessInAps = false;
        this.mApsInitFinish = null;
        this.mMetadata = null;
        this.mExifData = null;
        this.mExtendData = null;
        this.mResultString = null;
        this.mNoiseReductionStrength = 0;
        this.mRefTimestamp = -1L;
        this.mMeshPtr = 0L;
        this.mPreviewErrorCode = null;
        this.mCaptureErrorCode = null;
        this.mDecisionResult = null;
        this.mImage = null;
        this.mHwbuffer = null;
        this.mSubHwbuffer = null;
        this.mImageBuffer = null;
        this.mMetaImage = null;
        this.mMetaImageRefCounter = null;
        this.mProcTimes = null;
    }

    public ApsResult(Image image) {
        this.mMessageType = 0;
        this.mRotation = 0;
        this.mBufferType = 0;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mStride = 0;
        this.mScanline = 0;
        this.mIdentity = 0L;
        this.mAppAlgoFlag = 0L;
        this.mCopyBuffer = null;
        this.mCropLeft = 0;
        this.mCropTop = 0;
        this.mCropRight = 0;
        this.mCropBottom = 0;
        this.mSTWidth = 0;
        this.mSTHeight = 0;
        this.mbHasSTResult = false;
        this.mPipelineName = null;
        this.mIsMotionDetected = 0;
        this.mIsStartInterpolationFrame = 0;
        this.mIsLastVideoFrame = 0;
        this.mFrameId = 0L;
        this.mbNeedDetach = false;
        this.mbHeifProcessInAps = false;
        this.mApsInitFinish = null;
        this.mMetadata = null;
        this.mExifData = null;
        this.mExtendData = null;
        this.mResultString = null;
        this.mNoiseReductionStrength = 0;
        this.mRefTimestamp = -1L;
        this.mMeshPtr = 0L;
        this.mPreviewErrorCode = null;
        this.mCaptureErrorCode = null;
        this.mDecisionResult = null;
        this.mHwbuffer = null;
        this.mSubHwbuffer = null;
        this.mImageBuffer = null;
        this.mMetaImage = null;
        this.mMetaImageRefCounter = null;
        this.mProcTimes = null;
        this.mImage = image;
    }

    public ImageBuffer getImageBuffer() {
        synchronized (ApsContextHolder.getContext()) {
            ImageBuffer imageBuffer = this.mImageBuffer;
            if (imageBuffer != null) {
                return imageBuffer;
            }
            Image image = this.mImage;
            if (image != null) {
                try {
                    if (this.mSubHwbuffer != null) {
                        this.mImageBuffer = new ImageBuffer((ImageReader) null, image, ApsUtils.getHardwareBuffer(image), this.mSubHwbuffer, this.mIdentity);
                    } else {
                        this.mImageBuffer = new ImageBuffer(null, image, ApsUtils.getHardwareBuffer(image), this.mIdentity);
                    }
                } catch (IllegalStateException e) {
                    ApsAdapterLog.e(TAG, "getImageBuffer, get buffer from Image error.", e);
                }
            } else {
                HardwareBuffer hardwareBuffer = this.mHwbuffer;
                if (hardwareBuffer != null && !hardwareBuffer.isClosed()) {
                    this.mImageBuffer = new ImageBuffer((ImageReader) null, (Image) null, this.mHwbuffer, (HardwareBuffer) null, this.mIdentity, 1, this.mPipelineName, (String) null);
                }
            }
            return this.mImageBuffer;
        }
    }

    public void setImage(Image image) {
        this.mImage = image;
    }

    public void setHwBuffer(HardwareBuffer hardwareBuffer) {
        this.mHwbuffer = hardwareBuffer;
    }

    public void setSubHwBuffer(HardwareBuffer hardwareBuffer) {
        this.mSubHwbuffer = hardwareBuffer;
    }

    public void setMetaImage(Image image) {
        this.mMetaImage = image;
    }

    public void setResultString(String[] strArr) {
        this.mResultString = strArr;
    }

    public Image getImage() {
        return this.mImage;
    }

    public Image getMetaImage() {
        return this.mMetaImage;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ApsResult: {");
        sb.append("mMessageType: ");
        sb.append(this.mMessageType);
        sb.append(", mRotation: ");
        sb.append(this.mRotation);
        sb.append(", mBufferType: ");
        sb.append(this.mBufferType);
        sb.append(", mWidth: ");
        sb.append(this.mWidth);
        sb.append(", mHeight: ");
        sb.append(this.mHeight);
        sb.append(", mStride: ");
        sb.append(this.mStride);
        sb.append(", mScanline: ");
        sb.append(this.mScanline);
        sb.append(", mIdentity: ");
        sb.append(this.mIdentity);
        sb.append(", mAppAlgoFlag: ");
        sb.append(this.mAppAlgoFlag);
        sb.append(", mCopyBuffer.length: ");
        byte[] bArr = this.mCopyBuffer;
        sb.append(bArr != null ? bArr.length : 0);
        sb.append(", mCropLeft: ");
        sb.append(this.mCropLeft);
        sb.append(", mCropTop: ");
        sb.append(this.mCropTop);
        sb.append(", mCropRight: ");
        sb.append(this.mCropRight);
        sb.append(", mCropBottom: ");
        sb.append(this.mCropBottom);
        sb.append(", mSTWidth: ");
        sb.append(this.mSTWidth);
        sb.append(", mSTHeight: ");
        sb.append(this.mSTHeight);
        sb.append(", mbHasSTResult: ");
        sb.append(this.mbHasSTResult);
        sb.append(", mPipelineName: ");
        sb.append(this.mPipelineName);
        sb.append(", mNoiseReductionStrength: ");
        sb.append(this.mNoiseReductionStrength);
        sb.append(", mIsLastVideoFrame: ");
        sb.append(this.mIsLastVideoFrame);
        sb.append(", mIsStartInterpolationFrame: ");
        sb.append(this.mIsStartInterpolationFrame);
        sb.append(", mIsMotionDetected: ");
        sb.append(this.mIsMotionDetected);
        sb.append(", mMetadata: ");
        sb.append(this.mMetadata);
        sb.append(", mExifData: ");
        sb.append(this.mExifData);
        sb.append(", mExtendData: ");
        sb.append(this.mExtendData);
        sb.append(", mImage: ");
        sb.append(this.mImage);
        sb.append(", mHwbuffer: ");
        sb.append(this.mHwbuffer);
        sb.append(", mImageBuffer: ");
        sb.append(this.mImageBuffer);
        sb.append(", mProcTimer: ");
        sb.append(this.mProcTimes);
        sb.append(", mMeshPtr: ");
        sb.append(this.mMeshPtr);
        sb.append("}");
        return sb.toString();
    }

    public static class ImageBuffer {
        private static final int REFERENCE_COUNT_ZERO = 0;
        private static final int TYPE_FROM_APP = 0;
        private static final int TYPE_FROM_APS = 1;
        private ApsInterface mApsInterface;
        private int mFormat;
        private HardwareBuffer mHardwareBuffer;
        private Image mImage;
        private ImageReader mImageReader;
        private String mPipelineName;
        private AtomicInteger mRef;
        private HardwareBuffer mSubHardwareBuffer;
        private String mSurfaceUsage;
        private long mTimestamp;
        private int mType;

        public ImageBuffer(ImageReader imageReader, Image image, HardwareBuffer hardwareBuffer, long j, String str) {
            this(imageReader, image, hardwareBuffer, (HardwareBuffer) null, j, 0, (String) null, str);
        }

        public ImageBuffer(ImageReader imageReader, Image image, HardwareBuffer hardwareBuffer, long j) {
            this(imageReader, image, hardwareBuffer, (HardwareBuffer) null, j, 0, (String) null, (String) null);
        }

        public ImageBuffer(ImageReader imageReader, Image image, HardwareBuffer hardwareBuffer, HardwareBuffer hardwareBuffer2, long j) {
            this(imageReader, image, hardwareBuffer, hardwareBuffer2, j, 0, (String) null, (String) null);
        }

        public ImageBuffer(ImageReader imageReader, Image image, HardwareBuffer hardwareBuffer, long j, int i) {
            this(imageReader, image, hardwareBuffer, j, 0, (String) null, (String) null, i);
        }

        public ImageBuffer(ImageReader imageReader, Image image, HardwareBuffer hardwareBuffer, HardwareBuffer hardwareBuffer2, long j, int i, String str, String str2) {
            this.mImageReader = null;
            this.mImage = null;
            this.mHardwareBuffer = null;
            this.mSubHardwareBuffer = null;
            this.mTimestamp = 0L;
            this.mRef = new AtomicInteger(1);
            this.mApsInterface = null;
            int format = 0;
            this.mFormat = 0;
            this.mImageReader = imageReader;
            this.mImage = image;
            this.mHardwareBuffer = hardwareBuffer;
            this.mSubHardwareBuffer = hardwareBuffer2;
            this.mTimestamp = j;
            this.mType = i;
            this.mPipelineName = str;
            this.mSurfaceUsage = str2;
            if (image != null) {
                try {
                    format = image.getFormat();
                } catch (Throwable th) {
                    ApsAdapterLog.e(ApsResult.TAG, "Fail to get image format.", th);
                    return;
                }
            }
            this.mFormat = format;
        }

        public ImageBuffer(ImageReader imageReader, Image image, HardwareBuffer hardwareBuffer, long j, int i, String str, String str2, int i2) {
            this.mImageReader = null;
            this.mImage = null;
            this.mHardwareBuffer = null;
            this.mSubHardwareBuffer = null;
            this.mTimestamp = 0L;
            this.mRef = new AtomicInteger(1);
            this.mApsInterface = null;
            this.mImageReader = imageReader;
            this.mImage = image;
            this.mHardwareBuffer = hardwareBuffer;
            this.mTimestamp = j;
            this.mType = i;
            this.mPipelineName = str;
            this.mSurfaceUsage = str2;
            this.mFormat = i2;
        }

        public final void setApsInterface(ApsInterface apsInterface) {
            this.mApsInterface = apsInterface;
        }

        public final ImageReader getImageReader() {
            return this.mImageReader;
        }

        public final Image getImage() {
            return this.mImage;
        }

        public final int getFormat() {
            return this.mFormat;
        }

        public final HardwareBuffer getHardwareBuffer() {
            return this.mHardwareBuffer;
        }

        public final HardwareBuffer getSubHardwareBuffer() {
            return this.mSubHardwareBuffer;
        }

        public final long getTimestamp() {
            return this.mTimestamp;
        }

        public final int addRef() {
            return this.mRef.addAndGet(1);
        }

        public final void close() {
            if (this.mRef.decrementAndGet() == 0) {
                String str = this.mSurfaceUsage;
                if (str != null && !ApsUtils.RECORDING.equals(str) && !ApsUtils.PREVIEW_FRAME.equals(this.mSurfaceUsage) && !ApsUtils.PREVIEW_IN_PREVIEW.equals(this.mSurfaceUsage)) {
                    ApsAdapterLog.v(ApsResult.TAG, "close ImageBuffer timestamp: " + this.mTimestamp + ", mImage: " + this.mImage + ", mType: " + this.mType);
                }
                ApsInterface apsInterface = this.mApsInterface;
                if (apsInterface != null && 1 == this.mType) {
                    apsInterface.releaseBuffer(this.mPipelineName, this.mHardwareBuffer);
                }
                synchronized (this.mHardwareBuffer) {
                    this.mHardwareBuffer.close();
                }
                HardwareBuffer hardwareBuffer = this.mSubHardwareBuffer;
                if (hardwareBuffer != null) {
                    ApsInterface apsInterface2 = this.mApsInterface;
                    if (apsInterface2 != null) {
                        apsInterface2.releaseBuffer(this.mPipelineName, hardwareBuffer);
                    }
                    this.mSubHardwareBuffer.close();
                }
                Image image = this.mImage;
                if (image != null) {
                    synchronized (image) {
                        try {
                            this.mImage.close();
                        } catch (Exception e) {
                            ApsAdapterLog.e(ApsResult.TAG, "Fail to close image.", e);
                            this.mImage = null;
                        }
                    }
                }
            }
        }

        public final String getSurfaceUsage() {
            return this.mSurfaceUsage;
        }

        public String toString() {
            return "{ImageReader: " + this.mImageReader + ", Image: " + this.mImage + ",HardwareBuffer: " + this.mHardwareBuffer + ", TimeStamp: " + this.mTimestamp + ", Reference: " + this.mRef.get() + "}";
        }
    }
}
