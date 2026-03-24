package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.graphics.Bitmap;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CaptureResult;
import android.os.ConditionVariable;
import android.os.Handler;
import android.util.ArrayMap;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ApsCaptureAdapterImpl {
    private static final boolean DEBUG = false;
    private static final int MFLL_HDR_FRAME_NUM = 6;
    public static final String TAG = "ApsCaptureAdapterImpl";
    private ApsInterface mApsInterface;
    private Handler mImageProcessHandler;
    private ApsAdapterInterface.ImageProcessListener mImageProcessListener;
    private final Object mImageQueueLock = new Object();
    private final Object mRawImageCategoryLock = new Object();
    private final Object mBurstShotLock = new Object();
    private final Object mAddFrameLock = new Object();
    private final Object mHeicReceivedLock = new Object();
    private ConcurrentHashMap<Long, ImageCategory> mImageProcessMap = new ConcurrentHashMap<>();
    private ConditionVariable mAddFrameConditionVariable = new ConditionVariable();
    private ConcurrentHashMap<Long, BurstShotParameter> mBurstShotCountMap = new ConcurrentHashMap<>();
    private ConcurrentHashMap<Long, Integer> mAddFrameFinishMap = new ConcurrentHashMap<>();
    private List<ImageCategory.MetaItemInfo> mAddFrameMetadataList = new ArrayList();
    private ImageCategory mRawImageCategory = null;
    private boolean mbCaptureFail = false;
    private boolean mbHeicProcessInApp = false;
    private boolean mbAbortCaptures = false;
    private int mBurstShotRequestNum = 0;
    private boolean mbAddFirstFrame = false;
    private CaptureInfo mCurrentCaptureInfo = new CaptureInfo();
    private ArrayList<Long> mHeifThumbnailList = new ArrayList<>();
    private Map<Long, ApsResult> mHeifImageMap = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class BurstShotParameter {
        public int mCShotRequestNum;
        public int mCount;
        public String mCshotPath;
        public int mImageCount;

        private BurstShotParameter() {
            this.mCount = 0;
            this.mImageCount = 0;
            this.mCShotRequestNum = 0;
            this.mCshotPath = null;
        }
    }

    /* loaded from: classes.dex */
    private static class CaptureInfo {
        public boolean mbCaptureRawDone;

        private CaptureInfo() {
            this.mbCaptureRawDone = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ApsCaptureAdapterImpl(ApsInterface apsInterface, ApsAdapterInterface.ImageProcessListener imageProcessListener, Handler handler) {
        this.mApsInterface = null;
        this.mImageProcessHandler = null;
        this.mImageProcessListener = null;
        this.mApsInterface = apsInterface;
        this.mImageProcessListener = imageProcessListener;
        this.mImageProcessHandler = handler;
    }

    public void startCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        ApsParameters apsParameters = new ApsParameters();
        for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry : metaItemInfo.mParameterMap.entrySet()) {
            ApsParameters.Key<?> key = entry.getKey();
            if (key.getName().equals(ApsParameters.KEY_CAPTURE_ALGO_LIST.getName())) {
                String replace = Arrays.toString((String[]) entry.getValue().getValue().get()).replace('[', ' ').replace(']', ' ');
                String str = TAG;
                ApsAdapterLog.v(str, "startCapture, algoList: " + replace);
                apsParameters.set(APSClient.KEY_CAPTURE_ALGO_LIST, replace);
            } else {
                apsParameters.set(key.getName(), String.valueOf(entry.getValue().getValue().get()));
            }
        }
        this.mImageProcessHandler.obtainMessage(4, apsParameters).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startCapture(ApsParameters apsParameters) {
        ApsInterface apsInterface = this.mApsInterface;
        if (apsInterface != null) {
            apsInterface.startCapture(apsParameters);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int beforeCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        synchronized (this.mImageQueueLock) {
            this.mCurrentCaptureInfo = new CaptureInfo();
            this.mbAddFirstFrame = false;
            this.mbAbortCaptures = false;
        }
        ApsAdapterLog.v(TAG, "beforeCapture");
        ApsParameters apsParameters = new ApsParameters();
        for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry : metaItemInfo.mParameterMap.entrySet()) {
            if (1 == entry.getKey().getCategory()) {
                if (entry.getValue().getValue().get() instanceof Object[]) {
                    String str = TAG;
                    ApsAdapterLog.i(str, "beforeCapture, Object[], key : " + entry.getKey().getName() + " ; value : " + Arrays.toString((Object[]) entry.getValue().getValue().get()));
                    apsParameters.set(entry.getKey().getName(), Arrays.toString((Object[]) entry.getValue().getValue().get()));
                } else {
                    String str2 = TAG;
                    ApsAdapterLog.i(str2, "beforeCapture, String, key : " + entry.getKey().getName() + " ;  value : " + String.valueOf(entry.getValue().getValue().get()));
                    apsParameters.set(entry.getKey().getName(), String.valueOf(entry.getValue().getValue().get()));
                }
            }
        }
        ApsInterface apsInterface = this.mApsInterface;
        if (apsInterface != null) {
            return apsInterface.beforeCapture(apsParameters);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int abortCaptures() {
        ConcurrentHashMap<Long, Integer> concurrentHashMap = this.mAddFrameFinishMap;
        if (concurrentHashMap == null || !concurrentHashMap.isEmpty()) {
            return -1;
        }
        ApsAdapterLog.i(TAG, "abortCaptures, mAddFrameFinishMap is empty");
        synchronized (this.mImageQueueLock) {
            this.mbAbortCaptures = true;
        }
        this.mApsInterface.abortCaptures();
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addImage(ImageCategory.ImageItemInfo imageItemInfo) {
        synchronized (this.mImageQueueLock) {
            long longValue = ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            ImageCategory imageCategory = null;
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap = this.mImageProcessMap;
            if (concurrentHashMap != null) {
                if (concurrentHashMap.containsKey(Long.valueOf(longValue))) {
                    imageCategory = this.mImageProcessMap.get(Long.valueOf(longValue));
                    imageCategory.mImageItemList.add(imageItemInfo);
                } else {
                    imageCategory = new CaptureImageCategory();
                    imageCategory.mImageItemList.add(imageItemInfo);
                    this.mImageProcessMap.put(Long.valueOf(longValue), imageCategory);
                }
            }
            if (imageCategory != null && !this.mbAbortCaptures) {
                String str = TAG;
                ApsAdapterLog.v(str, "addImage, timestamp:" + longValue + ", size: " + this.mImageProcessMap.size() + ", isValid: " + imageCategory.isValid(), true);
                if (imageCategory.isValid()) {
                    this.mImageProcessHandler.obtainMessage(3, Long.valueOf(longValue)).sendToTarget();
                }
                return;
            }
            String str2 = TAG;
            ApsAdapterLog.d(str2, "addImage, timeStamp: " + longValue + " category null.");
            if (imageItemInfo.mImageBuffer != null) {
                imageItemInfo.mImageBuffer.close();
            }
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap2 = this.mImageProcessMap;
            if (concurrentHashMap2 != null && this.mbAbortCaptures) {
                concurrentHashMap2.remove(Long.valueOf(longValue));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        synchronized (this.mImageQueueLock) {
            long longValue = ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            ImageCategory imageCategory = null;
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap = this.mImageProcessMap;
            if (concurrentHashMap != null) {
                if (concurrentHashMap.containsKey(Long.valueOf(longValue))) {
                    imageCategory = this.mImageProcessMap.get(Long.valueOf(longValue));
                    imageCategory.mMetaItem = metaItemInfo;
                } else {
                    imageCategory = new CaptureImageCategory();
                    imageCategory.mMetaItem = metaItemInfo;
                    this.mImageProcessMap.put(Long.valueOf(longValue), imageCategory);
                }
            }
            if (imageCategory != null && !this.mbAbortCaptures) {
                String str = TAG;
                ApsAdapterLog.d(str, "addMetaInfo, timestamp: " + longValue + ", size: " + this.mImageProcessMap.size() + ", isValid: " + imageCategory.isValid(), true);
                if (imageCategory.isValid()) {
                    this.mImageProcessHandler.obtainMessage(3, Long.valueOf(longValue)).sendToTarget();
                }
                return;
            }
            String str2 = TAG;
            ApsAdapterLog.d(str2, "addMetaInfo, timeStamp: " + longValue + " category null.");
            if (metaItemInfo.mImageBuffer != null) {
                metaItemInfo.mImageBuffer.close();
            }
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap2 = this.mImageProcessMap;
            if (concurrentHashMap2 != null && this.mbAbortCaptures) {
                concurrentHashMap2.remove(Long.valueOf(longValue));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addTuningItem(ImageCategory.TuningItemInfo tuningItemInfo) {
        synchronized (this.mImageQueueLock) {
            long longValue = ((Long) tuningItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            int intValue = ((Integer) tuningItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT_HINT)).intValue();
            int format = intValue != 0 ? intValue : tuningItemInfo.mTuningBuffer.getImage().getFormat();
            String str = TAG;
            ApsAdapterLog.d(str, "addTuningItem, timeStamp: " + longValue + ", imageFormatHint: " + intValue + ", format: " + format + ", role: " + tuningItemInfo.get(ApsParameters.KEY_IMAGE_ROLE));
            ImageCategory imageCategory = null;
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap = this.mImageProcessMap;
            if (concurrentHashMap != null) {
                if (concurrentHashMap.containsKey(Long.valueOf(longValue))) {
                    imageCategory = this.mImageProcessMap.get(Long.valueOf(longValue));
                    List<ImageCategory.TuningItemInfo> list = imageCategory.mTuningItemLists.get(Integer.valueOf(format));
                    if (list == null) {
                        list = new ArrayList<>();
                        imageCategory.mTuningItemLists.put(Integer.valueOf(format), list);
                    }
                    list.add(tuningItemInfo);
                } else {
                    imageCategory = new CaptureImageCategory();
                    ArrayList arrayList = new ArrayList();
                    imageCategory.mTuningItemLists.put(Integer.valueOf(format), arrayList);
                    arrayList.add(tuningItemInfo);
                    this.mImageProcessMap.put(Long.valueOf(longValue), imageCategory);
                }
            }
            if (imageCategory == null) {
                ApsAdapterLog.d(str, "addTuningItem, timeStamp: " + longValue + " category null.");
                return;
            }
            ApsAdapterLog.d(str, "addTuningItem, isValid: " + imageCategory.isValid() + ", timeStamp: " + longValue);
            if (imageCategory.isValid()) {
                this.mImageProcessHandler.obtainMessage(3, Long.valueOf(longValue)).sendToTarget();
            }
        }
    }

    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo) {
        ApsParameters apsParameters = new ApsParameters();
        for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry : metaItemInfo.mParameterMap.entrySet()) {
            if (1 == entry.getKey().getCategory()) {
                if (entry.getValue().getValue().get() instanceof Object[]) {
                    apsParameters.set(entry.getKey().getName(), Arrays.toString((Object[]) entry.getValue().getValue().get()));
                } else {
                    apsParameters.set(entry.getKey().getName(), String.valueOf(entry.getValue().getValue().get()));
                }
            }
        }
        ApsInterface apsInterface = this.mApsInterface;
        return apsInterface != null ? apsInterface.processBitmap(bitmap, captureResult, apsParameters) : bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void waitAddFrameFinish() {
        ConcurrentHashMap<Long, ImageCategory> concurrentHashMap;
        ConcurrentHashMap<Long, ImageCategory> concurrentHashMap2 = this.mImageProcessMap;
        if (concurrentHashMap2 != null && !concurrentHashMap2.isEmpty()) {
            ApsAdapterLog.v(TAG, "waitAddFrameFinish, block");
            this.mAddFrameConditionVariable.block();
        }
        ConcurrentHashMap<Long, Integer> concurrentHashMap3 = this.mAddFrameFinishMap;
        if (concurrentHashMap3 != null && !concurrentHashMap3.isEmpty() && (concurrentHashMap = this.mImageProcessMap) != null && concurrentHashMap.isEmpty()) {
            ApsAdapterLog.e(TAG, "waitAddFrameFinish, the images may be not all arrived, so clear all the hashMap");
            ApsInterface apsInterface = this.mApsInterface;
            if (apsInterface != null) {
                apsInterface.clear();
            }
            this.mAddFrameFinishMap.clear();
            synchronized (this.mAddFrameLock) {
                this.mAddFrameMetadataList.clear();
            }
        }
        resetRawImageCategoryInfo();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetRawImageCategoryInfo() {
        synchronized (this.mRawImageCategoryLock) {
            ImageCategory imageCategory = this.mRawImageCategory;
            if (imageCategory != null) {
                imageCategory.releaseImageItemList();
                this.mRawImageCategory = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void countBurstShot(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        int max;
        synchronized (this.mBurstShotLock) {
            if (((Boolean) imageItemInfo.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()) {
                BurstShotParameter burstShotParameter = this.mBurstShotCountMap.get(imageItemInfo.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID));
                if (burstShotParameter == null) {
                    burstShotParameter = new BurstShotParameter();
                }
                burstShotParameter.mCount++;
                burstShotParameter.mCshotPath = (String) imageItemInfo.get(ApsParameters.KEY_CSHOT_PATH);
                if (((Boolean) imageItemInfo.get(ApsParameters.KEY_VALID_BURST_SHOT_IMAGE)).booleanValue()) {
                    burstShotParameter.mImageCount++;
                }
                if (((ApsCameraRequestTag) metaItemInfo.get(ApsParameters.KEY_CAMERA_REQUEST_TAG)).mbQcom) {
                    max = ((Integer) metaItemInfo.get(ApsParameters.KEY_MAX_BURST_SHOT_NUMBER)).intValue();
                } else {
                    max = Math.max(((Integer) metaItemInfo.get(ApsParameters.KEY_CSHOT_REQUEST_NUMER)).intValue(), this.mBurstShotRequestNum);
                }
                burstShotParameter.mCShotRequestNum = max;
                ApsAdapterLog.v(TAG, "countBurstShot, mCount: " + burstShotParameter.mCount + ", mCshotPath: " + burstShotParameter.mCshotPath + ", mBurstShotFlagId: " + imageItemInfo.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID) + ", map size: " + this.mBurstShotCountMap.size() + ", metaItemInfo.mCShotRequestNum: " + metaItemInfo.get(ApsParameters.KEY_CSHOT_REQUEST_NUMER) + ", parameter.mCShotRequestNum: " + burstShotParameter.mCShotRequestNum);
                if (burstShotParameter.mCount >= burstShotParameter.mCShotRequestNum) {
                    if (this.mImageProcessListener != null) {
                        imageItemInfo.setParameter(ApsParameters.KEY_BURST_COUNT, Integer.valueOf(burstShotParameter.mImageCount));
                        this.mImageProcessListener.onBurstShotEnd(imageItemInfo, metaItemInfo);
                    }
                    this.mBurstShotCountMap.remove(imageItemInfo.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID));
                } else {
                    this.mBurstShotCountMap.put((Long) imageItemInfo.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID), burstShotParameter);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addFrame(long j) {
        synchronized (this.mImageQueueLock) {
            String str = TAG;
            ApsAdapterLog.v(str, "addFrame, imageCategory timestamp: " + j);
            ImageCategory imageCategory = this.mImageProcessMap.get(Long.valueOf(j));
            boolean z = false;
            if (imageCategory != null && imageCategory.isValid()) {
                ImageCategory.ImageItemInfo imageItemInfo = imageCategory.mImageItemList.get(0);
                boolean booleanValue = ((Boolean) imageCategory.mMetaItem.get(ApsParameters.KEY_IS_LONG_EXPOSURE_CAPTURE_ENABLE)).booleanValue();
                if (((Integer) imageItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT)).intValue() != 32 || !this.mCurrentCaptureInfo.mbCaptureRawDone) {
                    z = booleanValue;
                } else if (!((Boolean) imageItemInfo.get(ApsParameters.KEY_RAW_ON_REPROCESS)).booleanValue()) {
                    ApsAdapterLog.v(str, "addFrame, capture raw done, so return, timestamp: " + j);
                    imageCategory.releaseImageItemList();
                    this.mImageProcessMap.remove(Long.valueOf(j));
                    return;
                } else {
                    ApsAdapterLog.v(str, "addFrame, receive raw processed by APS, timestamp: " + j);
                    imageItemInfo.setParameter(ApsParameters.KEY_RAW_ON_REPROCESS, false);
                }
                if (this.mApsInterface == null) {
                    ApsAdapterLog.e(str, "addFrame, mApsInterface is null, timestamp: " + j);
                    imageCategory.releaseImageItemList();
                    this.mImageProcessMap.remove(Long.valueOf(j));
                    return;
                }
                if (!this.mbAddFirstFrame) {
                    this.mbAddFirstFrame = true;
                    ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
                    if (imageProcessListener != null) {
                        imageProcessListener.onFirstCaptureFrameAdd(imageCategory);
                    }
                }
                if (z) {
                    addPreviewFrameBuff(imageCategory);
                    this.mImageProcessMap.remove(Long.valueOf(j));
                }
            }
            if (z) {
                return;
            }
            addFrameAndProcessImage(j);
        }
    }

    private int addPreviewFrameBuff(ImageCategory imageCategory) {
        ImageCategory.ImageItemInfo imageItemInfo = imageCategory.mImageItemList.get(0);
        ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem != null ? imageCategory.mMetaItem : new ImageCategory.MetaItemInfo();
        boolean booleanValue = ((Boolean) metaItemInfo.get(ApsParameters.KEY_IS_LONG_EXPOSURE_CAPTURE_ENABLE)).booleanValue();
        if (((Integer) imageItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT)).intValue() == 32) {
            synchronized (this.mRawImageCategoryLock) {
                if (this.mRawImageCategory != null && !((Boolean) metaItemInfo.get(ApsParameters.KEY_IS_CAPTURE_LAST_FRAME)).booleanValue()) {
                    this.mRawImageCategory.releaseImageItemList();
                }
                this.mRawImageCategory = imageCategory;
            }
        }
        ApsParameters apsParameters = new ApsParameters();
        ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
        if (imageProcessListener != null) {
            apsParameters.setAll(imageProcessListener.fillApsParameters(imageCategory, 4, false));
        }
        List<ImageCategory.ImageItemInfo> list = imageCategory.mImageItemList;
        if (list == null || list.isEmpty()) {
            ApsAdapterLog.w(TAG, "addPreviewFrameBuff, invalid image item list, imageCategory: " + imageCategory);
            return -1;
        }
        ApsResult.ImageBuffer[] imageBufferArr = new ApsResult.ImageBuffer[list.size()];
        int[] iArr = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            try {
                ImageCategory.ImageItemInfo imageItemInfo2 = list.get(i);
                ApsResult.ImageBuffer imageBuffer = imageItemInfo2.mImageBuffer;
                imageBufferArr[i] = imageBuffer;
                if (booleanValue) {
                    imageBuffer.addRef();
                }
                iArr[i] = ((Integer) imageItemInfo2.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
            } catch (Exception e) {
                ApsAdapterLog.e(TAG, "addPreviewFrameBuff error.", e);
                return -1;
            }
        }
        long frameNumber = metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT) != null ? ((CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT)).getFrameNumber() : -1L;
        ApsPreviewParam apsPreviewParam = new ApsPreviewParam(frameNumber, apsParameters.getParameters(), ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue(), imageBufferArr, (CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT), (ArrayMap) metaItemInfo.get(ApsParameters.KEY_META_MAP), metaItemInfo.mImageBuffer, iArr, ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_META_DATA)).booleanValue(), metaItemInfo.get(ApsParameters.KEY_ITEM_INFO_TYPE) == ImageCategory.ItemInfoType.VIDEO, false, 0L, metaItemInfo.mImageBuffer == null || ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue() == metaItemInfo.mImageBuffer.getTimestamp(), (String) metaItemInfo.get(ApsParameters.KEY_CAPTURE_MODE));
        ApsAdapterInterface.ImageProcessListener imageProcessListener2 = this.mImageProcessListener;
        if (imageProcessListener2 != null) {
            imageProcessListener2.onPreviewFrameProcessStarted(frameNumber, (Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP));
        }
        return this.mApsInterface.addPreviewFrameBuff(apsPreviewParam, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:217:0x0653  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void addFrameAndProcessImage(long r42) {
        /*
            Method dump skipped, instructions count: 1680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureAdapterImpl.addFrameAndProcessImage(long):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean countAddFrame(long j, int i, int i2, boolean z, ImageCategory.ImageItemInfo imageItemInfo) {
        Integer valueOf;
        synchronized (this.mAddFrameLock) {
            if (i2 == i) {
                ApsAdapterLog.v(TAG, "countAddFrame, identity: " + j + ", isCaptureFailed: " + z + ", mApsInterface: " + this.mApsInterface, true);
                if (z) {
                    handleCaptureFailed(imageItemInfo, i, i2);
                    return false;
                }
                this.mbCaptureFail = false;
                return true;
            }
            Integer num = this.mAddFrameFinishMap.get(Long.valueOf(j));
            if (num == null) {
                valueOf = Integer.valueOf(i);
                this.mbCaptureFail = z;
            } else {
                valueOf = Integer.valueOf(num.intValue() + i);
                this.mbCaptureFail |= z;
            }
            ApsAdapterLog.v(TAG, "countAddFrame, mMergeIdentity: " + j + ", count: " + valueOf + ", mMergeNum: " + i2 + ", isCaptureFailed: " + z + ", mbCaptureFail: " + this.mbCaptureFail, true);
            if (valueOf.intValue() >= i2) {
                this.mAddFrameFinishMap.remove(Long.valueOf(j));
                if (this.mbCaptureFail) {
                    handleCaptureFailed(imageItemInfo, i, i2);
                    return false;
                }
                return true;
            }
            this.mAddFrameFinishMap.put(Long.valueOf(j), valueOf);
            return false;
        }
    }

    private void handleCaptureFailed(ImageCategory.ImageItemInfo imageItemInfo, int i, int i2) {
        if (this.mApsInterface == null || this.mImageProcessListener == null) {
            return;
        }
        synchronized (this.mImageQueueLock) {
            if (!this.mImageProcessMap.isEmpty()) {
                ApsAdapterLog.v(TAG, "handleCaptureFailed, clear invalid imageCategory from imageProcessMap E");
                for (Long l : this.mImageProcessMap.keySet()) {
                    ImageCategory imageCategory = this.mImageProcessMap.get(l);
                    if (imageCategory != null && !imageCategory.isValid()) {
                        String str = TAG;
                        ApsAdapterLog.v(str, "handleCaptureFailed, release and remove imageCatory timeStamp: " + l);
                        imageCategory.releaseImageItemList();
                        this.mImageProcessMap.remove(l);
                    }
                }
                ApsAdapterLog.v(TAG, "handleCaptureFailed, clear invalid imageCategory from imageProcessMap X");
            }
        }
        if (i2 > i) {
            this.mApsInterface.clear();
        }
        ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
        if (imageProcessListener != null) {
            imageProcessListener.afterAddFrame(imageItemInfo, null);
        }
        this.mbCaptureFail = false;
    }

    private String[] parserAlgoFlags(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return null;
        }
        int length = iArr.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = String.valueOf(iArr[i]);
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void closeCamera() {
        ImageCategory.MetaItemInfo metaItemInfo;
        boolean z;
        synchronized (this.mAddFrameLock) {
            if (this.mAddFrameMetadataList.size() > 0) {
                List<ImageCategory.MetaItemInfo> list = this.mAddFrameMetadataList;
                metaItemInfo = list.get(list.size() - 1);
            } else {
                metaItemInfo = null;
            }
        }
        synchronized (this.mImageQueueLock) {
            for (Long l : this.mImageProcessMap.keySet()) {
                ImageCategory imageCategory = this.mImageProcessMap.get(l);
                if (!imageCategory.isValid()) {
                    String str = TAG;
                    ApsAdapterLog.v(str, "closeCamera, key: " + l);
                    if (metaItemInfo != null && ((Boolean) metaItemInfo.get(ApsParameters.KEY_USE_TUNING_DATA)).booleanValue() && (imageCategory.mTuningItemLists == null || imageCategory.mTuningItemLists.size() <= 0)) {
                        z = false;
                        if (metaItemInfo == null && imageCategory.mMetaItem == null && z && imageCategory.mImageItemList != null && imageCategory.mImageItemList.size() == ((Integer) metaItemInfo.get(ApsParameters.KEY_CAPTURE_STREAM_NUMBER)).intValue()) {
                            metaItemInfo.setParameter(ApsParameters.KEY_TIME_STAMP, (Long) imageCategory.mImageItemList.get(0).get(ApsParameters.KEY_TIME_STAMP));
                            imageCategory.mMetaItem = metaItemInfo.copy();
                            this.mImageProcessMap.put(l, imageCategory);
                            if (imageCategory.isValid()) {
                                this.mImageProcessHandler.obtainMessage(3, l).sendToTarget();
                                ApsAdapterLog.v(str, "closeCamera, send message to add frame");
                            } else {
                                ApsAdapterLog.e(str, "closeCamera, fail to send aps process");
                            }
                        } else {
                            ApsAdapterLog.v(str, "closeCamera, the imageCategory is removed");
                            this.mImageProcessMap.remove(l);
                        }
                        ApsAdapterLog.v(str, "closeCamera, imageCategory: " + imageCategory.toString());
                    }
                    z = true;
                    if (metaItemInfo == null) {
                    }
                    ApsAdapterLog.v(str, "closeCamera, the imageCategory is removed");
                    this.mImageProcessMap.remove(l);
                    ApsAdapterLog.v(str, "closeCamera, imageCategory: " + imageCategory.toString());
                }
            }
            if (!this.mImageProcessMap.isEmpty()) {
                ApsAdapterLog.v(TAG, "closeCamera, mAddFrameConditionVariable close");
                this.mAddFrameConditionVariable.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onJpegReceived(ApsResult apsResult) {
        String str = TAG;
        ApsAdapterLog.v(str, "onJpegReceived, result: " + apsResult.toString());
        ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
        if (imageProcessListener != null) {
            imageProcessListener.onJpegReceived(apsResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRawReceived(ApsResult apsResult) {
        String str = TAG;
        ApsAdapterLog.v(str, "onRawReceived, result: " + apsResult + ", result.mIdentity: " + apsResult.mIdentity);
        if (this.mImageProcessListener != null) {
            synchronized (this.mRawImageCategoryLock) {
                if (this.mRawImageCategory != null && (apsResult.mIdentity == ((Long) this.mRawImageCategory.mMetaItem.get(ApsParameters.KEY_MERGE_IDENTITY)).longValue() || (apsResult.getImageBuffer() != null && apsResult.mIdentity == apsResult.getImageBuffer().getTimestamp()))) {
                    this.mImageProcessListener.onReprocess(this.mRawImageCategory, apsResult);
                    this.mRawImageCategory = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHeicReceived(ApsResult apsResult) {
        String str = TAG;
        ApsAdapterLog.v(str, "onHeicReceived, result: " + apsResult.toString());
        if (apsResult.mbHeifProcessInAps || !this.mbHeicProcessInApp) {
            ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
            if (imageProcessListener != null) {
                imageProcessListener.onHeicReceived(apsResult);
            }
        } else {
            synchronized (this.mHeicReceivedLock) {
                if (this.mHeifThumbnailList.contains(Long.valueOf(apsResult.mIdentity))) {
                    ApsAdapterLog.v(str, "onHeicReceived, callback buffer, timestamp: " + apsResult.mIdentity);
                    this.mHeifThumbnailList.remove(Long.valueOf(apsResult.mIdentity));
                    ApsAdapterInterface.ImageProcessListener imageProcessListener2 = this.mImageProcessListener;
                    if (imageProcessListener2 != null) {
                        imageProcessListener2.onHeicReceived(apsResult);
                    }
                } else if (this.mHeifImageMap != null) {
                    ApsAdapterLog.v(str, "onHeicReceived, wait for thumbnail uri, timestamp: " + apsResult.mIdentity);
                    this.mHeifImageMap.put(Long.valueOf(apsResult.mIdentity), copyApsResult(apsResult));
                }
            }
        }
        ApsAdapterLog.v(str, "onHeicReceived, X.");
    }

    private ApsResult copyApsResult(ApsResult apsResult) {
        if (apsResult == null) {
            return null;
        }
        ApsResult apsResult2 = new ApsResult();
        apsResult2.mIdentity = apsResult.mIdentity;
        apsResult2.mBufferType = apsResult.mBufferType;
        apsResult2.mCopyBuffer = apsResult.mCopyBuffer;
        apsResult2.mExifData = apsResult.mExifData;
        apsResult2.mExtendData = apsResult.mExtendData;
        apsResult2.mWidth = apsResult.mWidth;
        apsResult2.mHeight = apsResult.mHeight;
        apsResult2.mScanline = apsResult.mScanline;
        apsResult2.mStride = apsResult.mStride;
        apsResult2.mSTHeight = apsResult.mSTHeight;
        apsResult2.mSTWidth = apsResult.mSTWidth;
        apsResult2.mbHasSTResult = apsResult.mbHasSTResult;
        return apsResult2;
    }

    public void initHeifCodec(long j) {
        ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
        if (imageProcessListener != null) {
            imageProcessListener.initHeifCodec(j);
        }
    }

    public void processHeifCodec(long j, HardwareBuffer hardwareBuffer, ApsExifData apsExifData, int i, int i2) {
        ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
        if (imageProcessListener != null) {
            imageProcessListener.processHeifCodec(j, hardwareBuffer, apsExifData, i, i2);
        }
    }

    public void uninitHeifCodec(long j) {
        ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
        if (imageProcessListener != null) {
            imageProcessListener.uninitHeifCodec(j);
        }
    }

    public void setHeicProcessInApp(boolean z) {
        String str = TAG;
        ApsAdapterLog.v(str, "setHeicProcessInApp: " + z);
        this.mbHeicProcessInApp = z;
    }

    public void updateThumbnailMap(long j) {
        if (!this.mbHeicProcessInApp) {
            ApsAdapterLog.v(TAG, "updateThumbnailMap, return because heic process in aps or not need to update thumbnail");
            return;
        }
        String str = TAG;
        ApsAdapterLog.v(str, "updateThumbnailMap, timestamp: " + j);
        synchronized (this.mHeicReceivedLock) {
            Map<Long, ApsResult> map = this.mHeifImageMap;
            if (map != null && map.containsKey(Long.valueOf(j))) {
                ApsResult remove = this.mHeifImageMap.remove(Long.valueOf(j));
                ArrayList<Long> arrayList = this.mHeifThumbnailList;
                if (arrayList != null) {
                    arrayList.add(Long.valueOf(j));
                }
                ApsInterface apsInterface = this.mApsInterface;
                if (apsInterface != null) {
                    apsInterface.updateThumbnailMap(remove);
                }
            } else if (this.mHeifThumbnailList != null) {
                ApsAdapterLog.v(str, "updateThumbnailMap, wait for heic callback, timestamp: " + j);
                this.mHeifThumbnailList.add(Long.valueOf(j));
            }
        }
        ApsAdapterLog.v(str, "updateThumbnailMap, X");
    }

    public boolean notifyLastCaptureFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        String str = TAG;
        ApsAdapterLog.v(str, "notifyLastCaptureFrame, format: " + metaItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT));
        synchronized (this.mImageQueueLock) {
            synchronized (this.mRawImageCategoryLock) {
                this.mCurrentCaptureInfo.mbCaptureRawDone = true;
                if (32 == ((Integer) metaItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT)).intValue() && this.mRawImageCategory != null) {
                    for (Long l : this.mImageProcessMap.keySet()) {
                        ImageCategory imageCategory = this.mImageProcessMap.get(Long.valueOf(l.longValue()));
                        if (imageCategory.mMetaItem != null) {
                            imageCategory.mMetaItem.setParameter(ApsParameters.KEY_IS_CAPTURE_LAST_FRAME, false);
                        }
                    }
                    this.mRawImageCategory.mMetaItem.setParameter(ApsParameters.KEY_IS_CAPTURE_LAST_FRAME, true);
                    addPreviewFrameBuff(this.mRawImageCategory);
                    return true;
                }
                ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
                if (imageProcessListener != null) {
                    imageProcessListener.afterAddFrame(imageItemInfo, metaItemInfo);
                }
                ApsAdapterLog.e(str, "notify Last CaptureFrame fail");
                return false;
            }
        }
    }
}
