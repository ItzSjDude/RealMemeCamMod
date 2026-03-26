package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.graphics.Bitmap;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CameraMetadata;
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
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
class ApsCaptureAdapterImpl {
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

    private static class BurstShotParameter {
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

    private static class CaptureInfo {
        public boolean mbCaptureRawDone;

        private CaptureInfo() {
            this.mbCaptureRawDone = false;
        }
    }

    protected ApsCaptureAdapterImpl(ApsInterface apsInterface,
            ApsAdapterInterface.ImageProcessListener imageProcessListener, Handler handler) {
        this.mApsInterface = null;
        this.mImageProcessHandler = null;
        this.mImageProcessListener = null;
        this.mApsInterface = apsInterface;
        this.mImageProcessListener = imageProcessListener;
        this.mImageProcessHandler = handler;
    }

    public void startCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        ApsParameters apsParameters = new ApsParameters();
        for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry : metaItemInfo.mParameterMap
                .entrySet()) {
            ApsParameters.Key<?> key = entry.getKey();
            if (key.getName().equals(ApsParameters.KEY_CAPTURE_ALGO_LIST.getName())) {
                String strReplace = Arrays.toString((String[]) entry.getValue().getValue().get()).replace('[', ' ')
                        .replace(']', ' ');
                ApsAdapterLog.v(TAG, "startCapture, algoList: " + strReplace);
                apsParameters.set(APSClient.KEY_CAPTURE_ALGO_LIST, strReplace);
            } else {
                apsParameters.set(key.getName(), String.valueOf(entry.getValue().getValue().get()));
            }
        }
        this.mImageProcessHandler.obtainMessage(4, apsParameters).sendToTarget();
    }

    protected void startCapture(ApsParameters apsParameters) {
        ApsInterface apsInterface = this.mApsInterface;
        if (apsInterface != null) {
            apsInterface.startCapture(apsParameters);
        }
    }

    protected int beforeCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        synchronized (this.mImageQueueLock) {
            this.mCurrentCaptureInfo = new CaptureInfo();
            this.mbAddFirstFrame = false;
            this.mbAbortCaptures = false;
        }
        ApsAdapterLog.v(TAG, "beforeCapture");
        ApsParameters apsParameters = new ApsParameters();
        for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry : metaItemInfo.mParameterMap
                .entrySet()) {
            if (1 == entry.getKey().getCategory()) {
                if (entry.getValue().getValue().get() instanceof Object[]) {
                    ApsAdapterLog.i(TAG, "beforeCapture, Object[], key : " + entry.getKey().getName() + " ; value : "
                            + Arrays.toString((Object[]) entry.getValue().getValue().get()));
                    apsParameters.set(entry.getKey().getName(),
                            Arrays.toString((Object[]) entry.getValue().getValue().get()));
                } else {
                    ApsAdapterLog.i(TAG, "beforeCapture, String, key : " + entry.getKey().getName() + " ;  value : "
                            + String.valueOf(entry.getValue().getValue().get()));
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

    protected int abortCaptures() {
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

    protected void addImage(ImageCategory.ImageItemInfo imageItemInfo) {
        synchronized (this.mImageQueueLock) {
            long jLongValue = ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            ImageCategory captureImageCategory = null;
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap = this.mImageProcessMap;
            if (concurrentHashMap != null) {
                if (concurrentHashMap.containsKey(Long.valueOf(jLongValue))) {
                    captureImageCategory = this.mImageProcessMap.get(Long.valueOf(jLongValue));
                    captureImageCategory.mImageItemList.add(imageItemInfo);
                } else {
                    captureImageCategory = new CaptureImageCategory();
                    captureImageCategory.mImageItemList.add(imageItemInfo);
                    this.mImageProcessMap.put(Long.valueOf(jLongValue), captureImageCategory);
                }
            }
            if (captureImageCategory != null && !this.mbAbortCaptures) {
                ApsAdapterLog.v(TAG, "addImage, timestamp:" + jLongValue + ", size: " + this.mImageProcessMap.size()
                        + ", isValid: " + captureImageCategory.isValid(), true);
                if (captureImageCategory.isValid()) {
                    this.mImageProcessHandler.obtainMessage(3, Long.valueOf(jLongValue)).sendToTarget();
                }
                return;
            }
            ApsAdapterLog.d(TAG, "addImage, timeStamp: " + jLongValue + " category null.");
            if (imageItemInfo.mImageBuffer != null) {
                imageItemInfo.mImageBuffer.close();
            }
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap2 = this.mImageProcessMap;
            if (concurrentHashMap2 != null && this.mbAbortCaptures) {
                concurrentHashMap2.remove(Long.valueOf(jLongValue));
            }
        }
    }

    protected void addMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        synchronized (this.mImageQueueLock) {
            long jLongValue = ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            ImageCategory captureImageCategory = null;
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap = this.mImageProcessMap;
            if (concurrentHashMap != null) {
                if (concurrentHashMap.containsKey(Long.valueOf(jLongValue))) {
                    captureImageCategory = this.mImageProcessMap.get(Long.valueOf(jLongValue));
                    captureImageCategory.mMetaItem = metaItemInfo;
                } else {
                    captureImageCategory = new CaptureImageCategory();
                    captureImageCategory.mMetaItem = metaItemInfo;
                    this.mImageProcessMap.put(Long.valueOf(jLongValue), captureImageCategory);
                }
            }
            if (captureImageCategory != null && !this.mbAbortCaptures) {
                ApsAdapterLog.d(TAG, "addMetaInfo, timestamp: " + jLongValue + ", size: " + this.mImageProcessMap.size()
                        + ", isValid: " + captureImageCategory.isValid(), true);
                if (captureImageCategory.isValid()) {
                    this.mImageProcessHandler.obtainMessage(3, Long.valueOf(jLongValue)).sendToTarget();
                }
                return;
            }
            ApsAdapterLog.d(TAG, "addMetaInfo, timeStamp: " + jLongValue + " category null.");
            if (metaItemInfo.mImageBuffer != null) {
                metaItemInfo.mImageBuffer.close();
            }
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap2 = this.mImageProcessMap;
            if (concurrentHashMap2 != null && this.mbAbortCaptures) {
                concurrentHashMap2.remove(Long.valueOf(jLongValue));
            }
        }
    }

    protected void addTuningItem(ImageCategory.TuningItemInfo tuningItemInfo) {
        synchronized (this.mImageQueueLock) {
            long jLongValue = ((Long) tuningItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            int iIntValue = ((Integer) tuningItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT_HINT)).intValue();
            int format = iIntValue != 0 ? iIntValue : tuningItemInfo.mTuningBuffer.getImage().getFormat();
            String str = TAG;
            ApsAdapterLog.d(str, "addTuningItem, timeStamp: " + jLongValue + ", imageFormatHint: " + iIntValue
                    + ", format: " + format + ", role: " + tuningItemInfo.get(ApsParameters.KEY_IMAGE_ROLE));
            ImageCategory captureImageCategory = null;
            ConcurrentHashMap<Long, ImageCategory> concurrentHashMap = this.mImageProcessMap;
            if (concurrentHashMap != null) {
                if (concurrentHashMap.containsKey(Long.valueOf(jLongValue))) {
                    captureImageCategory = this.mImageProcessMap.get(Long.valueOf(jLongValue));
                    List<ImageCategory.TuningItemInfo> arrayList = captureImageCategory.mTuningItemLists
                            .get(Integer.valueOf(format));
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        captureImageCategory.mTuningItemLists.put(Integer.valueOf(format), arrayList);
                    }
                    arrayList.add(tuningItemInfo);
                } else {
                    captureImageCategory = new CaptureImageCategory();
                    ArrayList arrayList2 = new ArrayList();
                    captureImageCategory.mTuningItemLists.put(Integer.valueOf(format), arrayList2);
                    arrayList2.add(tuningItemInfo);
                    this.mImageProcessMap.put(Long.valueOf(jLongValue), captureImageCategory);
                }
            }
            if (captureImageCategory == null) {
                ApsAdapterLog.d(str, "addTuningItem, timeStamp: " + jLongValue + " category null.");
                return;
            }
            ApsAdapterLog.d(str,
                    "addTuningItem, isValid: " + captureImageCategory.isValid() + ", timeStamp: " + jLongValue);
            if (captureImageCategory.isValid()) {
                this.mImageProcessHandler.obtainMessage(3, Long.valueOf(jLongValue)).sendToTarget();
            }
        }
    }

    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo) {
        ApsParameters apsParameters = new ApsParameters();
        for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry : metaItemInfo.mParameterMap
                .entrySet()) {
            if (1 == entry.getKey().getCategory()) {
                if (entry.getValue().getValue().get() instanceof Object[]) {
                    apsParameters.set(entry.getKey().getName(),
                            Arrays.toString((Object[]) entry.getValue().getValue().get()));
                } else {
                    apsParameters.set(entry.getKey().getName(), String.valueOf(entry.getValue().getValue().get()));
                }
            }
        }
        ApsInterface apsInterface = this.mApsInterface;
        return apsInterface != null ? apsInterface.processBitmap(bitmap, captureResult, apsParameters) : bitmap;
    }

    protected void waitAddFrameFinish() {
        ConcurrentHashMap<Long, ImageCategory> concurrentHashMap;
        ConcurrentHashMap<Long, ImageCategory> concurrentHashMap2 = this.mImageProcessMap;
        if (concurrentHashMap2 != null && !concurrentHashMap2.isEmpty()) {
            ApsAdapterLog.v(TAG, "waitAddFrameFinish, block");
            this.mAddFrameConditionVariable.block();
        }
        ConcurrentHashMap<Long, Integer> concurrentHashMap3 = this.mAddFrameFinishMap;
        if (concurrentHashMap3 != null && !concurrentHashMap3.isEmpty()
                && (concurrentHashMap = this.mImageProcessMap) != null && concurrentHashMap.isEmpty()) {
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

    protected void resetRawImageCategoryInfo() {
        synchronized (this.mRawImageCategoryLock) {
            ImageCategory imageCategory = this.mRawImageCategory;
            if (imageCategory != null) {
                imageCategory.releaseImageItemList();
                this.mRawImageCategory = null;
            }
        }
    }

    protected void countBurstShot(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        int iMax;
        synchronized (this.mBurstShotLock) {
            if (((Boolean) imageItemInfo.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()) {
                BurstShotParameter burstShotParameter = this.mBurstShotCountMap
                        .get(imageItemInfo.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID));
                if (burstShotParameter == null) {
                    burstShotParameter = new BurstShotParameter();
                }
                burstShotParameter.mCount++;
                burstShotParameter.mCshotPath = (String) imageItemInfo.get(ApsParameters.KEY_CSHOT_PATH);
                if (((Boolean) imageItemInfo.get(ApsParameters.KEY_VALID_BURST_SHOT_IMAGE)).booleanValue()) {
                    burstShotParameter.mImageCount++;
                }
                if (((ApsCameraRequestTag) metaItemInfo.get(ApsParameters.KEY_CAMERA_REQUEST_TAG)).mbQcom) {
                    iMax = ((Integer) metaItemInfo.get(ApsParameters.KEY_MAX_BURST_SHOT_NUMBER)).intValue();
                } else {
                    iMax = Math.max(((Integer) metaItemInfo.get(ApsParameters.KEY_CSHOT_REQUEST_NUMER)).intValue(),
                            this.mBurstShotRequestNum);
                }
                burstShotParameter.mCShotRequestNum = iMax;
                ApsAdapterLog.v(TAG,
                        "countBurstShot, mCount: " + burstShotParameter.mCount + ", mCshotPath: "
                                + burstShotParameter.mCshotPath + ", mBurstShotFlagId: "
                                + imageItemInfo.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID) + ", map size: "
                                + this.mBurstShotCountMap.size() + ", metaItemInfo.mCShotRequestNum: "
                                + metaItemInfo.get(ApsParameters.KEY_CSHOT_REQUEST_NUMER)
                                + ", parameter.mCShotRequestNum: " + burstShotParameter.mCShotRequestNum);
                if (burstShotParameter.mCount >= burstShotParameter.mCShotRequestNum) {
                    if (this.mImageProcessListener != null) {
                        imageItemInfo.setParameter(ApsParameters.KEY_BURST_COUNT,
                                Integer.valueOf(burstShotParameter.mImageCount));
                        this.mImageProcessListener.onBurstShotEnd(imageItemInfo, metaItemInfo);
                    }
                    this.mBurstShotCountMap.remove(imageItemInfo.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID));
                } else {
                    this.mBurstShotCountMap.put((Long) imageItemInfo.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID),
                            burstShotParameter);
                }
            }
        }
    }

    protected void addFrame(long j) {
        synchronized (this.mImageQueueLock) {
            String str = TAG;
            ApsAdapterLog.v(str, "addFrame, imageCategory timestamp: " + j);
            ImageCategory imageCategory = this.mImageProcessMap.get(Long.valueOf(j));
            boolean z = false;
            if (imageCategory != null && imageCategory.isValid()) {
                ImageCategory.ImageItemInfo imageItemInfo = imageCategory.mImageItemList.get(0);
                boolean zBooleanValue = ((Boolean) imageCategory.mMetaItem
                        .get(ApsParameters.KEY_IS_LONG_EXPOSURE_CAPTURE_ENABLE)).booleanValue();
                if (((Integer) imageItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT)).intValue() != 32
                        || !this.mCurrentCaptureInfo.mbCaptureRawDone) {
                    z = zBooleanValue;
                } else {
                    if (!((Boolean) imageItemInfo.get(ApsParameters.KEY_RAW_ON_REPROCESS)).booleanValue()) {
                        ApsAdapterLog.v(str, "addFrame, capture raw done, so return, timestamp: " + j);
                        imageCategory.releaseImageItemList();
                        this.mImageProcessMap.remove(Long.valueOf(j));
                        return;
                    }
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
        ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem != null ? imageCategory.mMetaItem
                : new ImageCategory.MetaItemInfo();
        boolean zBooleanValue = ((Boolean) metaItemInfo.get(ApsParameters.KEY_IS_LONG_EXPOSURE_CAPTURE_ENABLE))
                .booleanValue();
        if (((Integer) imageItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT)).intValue() == 32) {
            synchronized (this.mRawImageCategoryLock) {
                if (this.mRawImageCategory != null
                        && !((Boolean) metaItemInfo.get(ApsParameters.KEY_IS_CAPTURE_LAST_FRAME)).booleanValue()) {
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
                if (zBooleanValue) {
                    imageBuffer.addRef();
                }
                iArr[i] = ((Integer) imageItemInfo2.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
            } catch (Exception e) {
                ApsAdapterLog.e(TAG, "addPreviewFrameBuff error.", e);
                return -1;
            }
        }
        long frameNumber = metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT) != null
                ? ((CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT)).getFrameNumber()
                : -1L;
        ApsPreviewParam apsPreviewParam = new ApsPreviewParam(frameNumber, apsParameters.getParameters(),
                ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue(), imageBufferArr,
                (CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT),
                (ArrayMap) metaItemInfo.get(ApsParameters.KEY_META_MAP), metaItemInfo.mImageBuffer, iArr,
                ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_META_DATA)).booleanValue(),
                metaItemInfo.get(ApsParameters.KEY_ITEM_INFO_TYPE) == ImageCategory.ItemInfoType.VIDEO, false, 0L,
                metaItemInfo.mImageBuffer == null || ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP))
                        .longValue() == metaItemInfo.mImageBuffer.getTimestamp(),
                (String) metaItemInfo.get(ApsParameters.KEY_CAPTURE_MODE));
        ApsAdapterInterface.ImageProcessListener imageProcessListener2 = this.mImageProcessListener;
        if (imageProcessListener2 != null) {
            imageProcessListener2.onPreviewFrameProcessStarted(frameNumber,
                    (Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP));
        }
        return this.mApsInterface.addPreviewFrameBuff(apsPreviewParam, null);
    }

    protected void addFrameAndProcessImage(long timestamp) {
        ImageCategory imageCategory;
        boolean isProcessed;
        boolean isFrameAdded = false;
        boolean isNeedProcessImage;
        List<ImageCategory.ImageItemInfo> imageItemList;
        ImageCategory.ImageItemInfo imageItem;
        int maxBurstShotNum;
        boolean shouldEndBurst;
        int imageRole;
        CameraMetadata logicMetadata;
        CameraMetadata physicalMetadata;
        List<ImageCategory.ImageItemInfo> tempImageList;
        HashMap tuningItemStatusMap;
        int itemIndex;
        boolean isHdrMixedFrameRaw;
        boolean isImageProcessed;
        boolean isImageProcessedReturn;
        Map<Integer, List<ImageCategory.TuningItemInfo>> tuningItemListsMap;
        List<ImageCategory.TuningItemInfo> tuningItemList;
        ApsAdapterInterface.ImageProcessListener imageProcessListener;

        synchronized (this.mImageQueueLock) {
            imageCategory = this.mImageProcessMap.get(Long.valueOf(timestamp));
        }

        ApsAdapterLog.v(TAG, "addFrameAndProcessImage, timestamp: " + timestamp + ", imageCategory: " + imageCategory,
                true);

        if (imageCategory == null || !imageCategory.isValid()) {
            isProcessed = false;
        } else {
            List<ImageCategory.ImageItemInfo> currentImageList = imageCategory.mImageItemList;
            ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem;
            Map<Integer, List<ImageCategory.TuningItemInfo>> currentTuningItemListsMap = imageCategory.mTuningItemLists;
            HashMap currentTuningItemStatusMap = new HashMap();

            for (Integer type : currentTuningItemListsMap.keySet()) {
                currentTuningItemStatusMap.put(type, 0);
            }

            synchronized (this.mImageQueueLock) {
                if (1 < currentImageList.size()
                        && "surface_key_picture_dol".equals(currentImageList.get(0).mImageBuffer.getSurfaceUsage())) {
                    Collections.swap(currentImageList, 0, 1);
                }

                itemIndex = 0;
                int lastImageFormat = 0;
                isNeedProcessImage = false;

                while (true) {
                    int prevImageFormat = lastImageFormat;

                    if (itemIndex >= currentImageList.size()) {
                        break;
                    }

                    ImageCategory.ImageItemInfo currentItem = currentImageList.get(itemIndex);

                    if (((Boolean) currentItem.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()
                            && ((Integer) currentItem.get(ApsParameters.KEY_REC_BURST_NUMBER)).intValue() == 1
                            && (imageProcessListener = this.mImageProcessListener) != null) {
                        imageProcessListener.onBurstShotStart(
                                ((Long) currentItem.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID)).longValue());
                    }

                    if (((Boolean) currentItem.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()
                            && !((Boolean) currentItem.get(ApsParameters.KEY_VALID_BURST_SHOT_IMAGE)).booleanValue()) {
                        countBurstShot(currentItem, metaItemInfo);
                        tempImageList = currentImageList;
                        tuningItemStatusMap = currentTuningItemStatusMap;
                        lastImageFormat = prevImageFormat;
                        isImageProcessed = false;
                    } else {
                        if (((Boolean) currentItem.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()) {
                            imageRole = ((Integer) metaItemInfo.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                        } else {
                            imageRole = ((Integer) currentItem.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                        }

                        long frameNumber = ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue();
                        ApsResult.ImageBuffer imageBuffer = currentItem.mImageBuffer;
                        int format = currentItem.mImageBuffer.getFormat();
                        ArrayMap metaMap = (ArrayMap) metaItemInfo.get(ApsParameters.KEY_META_MAP);

                        CameraMetadata cameraMetadataLogic = (metaMap == null || !metaMap
                                .containsKey(String.valueOf(metaItemInfo.get(ApsParameters.KEY_LOGIC_CAMERA_ID))))
                                        ? null
                                        : (CameraMetadata) metaMap.get(
                                                String.valueOf(metaItemInfo.get(ApsParameters.KEY_LOGIC_CAMERA_ID)));

                        CameraMetadata cameraMetadataRole = (metaMap == null
                                || !metaMap.containsKey(Integer.toString(imageRole)))
                                        ? null
                                        : (CameraMetadata) metaMap.get(Integer.toString(imageRole));

                        int[] inputSize = (int[]) metaItemInfo.get(ApsParameters.KEY_INPUT_SIZE);
                        boolean isReprocessMeta = ((Boolean) metaItemInfo.get(ApsParameters.KEY_REPROCESS_META_DATA))
                                .booleanValue();
                        int maxHoldImages = ((Integer) metaItemInfo.get(ApsParameters.KEY_MAX_HOLD_IMAGES)).intValue();
                        int preferAddFrameType = ((Integer) metaItemInfo.get(ApsParameters.KEY_PREFER_ADD_FRAME_TYPE))
                                .intValue();
                        boolean isVideoSnapshot = ((Boolean) metaItemInfo.get(ApsParameters.KEY_VIDEO_SNAPSHOT))
                                .booleanValue();
                        int specificApsProcessAlgo = ((Integer) metaItemInfo
                                .get(ApsParameters.KEY_SPECIFIC_APS_PROCESS_ALGO)).intValue();
                        String bits10Enable = (String) metaItemInfo.get(ApsParameters.KEY_10BITS_ENABLE);
                        String inputEvList = (String) metaItemInfo.get(ApsParameters.KEY_INPUT_EVLIST);

                        if (metaItemInfo.mImageBuffer != null) {
                            logicMetadata = null;
                            physicalMetadata = null;
                        } else {
                            logicMetadata = cameraMetadataLogic;
                            physicalMetadata = cameraMetadataRole;
                        }

                        String[] algoTypeArr = (String[]) metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE);
                        ApsWatermarkParam watermarkParam = (ApsWatermarkParam) metaItemInfo
                                .get(ApsParameters.KEY_APS_WATERMARK_PARAM);
                        ApsParameters apsParams = new ApsParameters();
                        tempImageList = currentImageList;
                        ApsAdapterInterface.ImageProcessListener listener = this.mImageProcessListener;
                        tuningItemStatusMap = currentTuningItemStatusMap;

                        if (listener != null) {
                            apsParams.setAll(listener.fillApsParameters(imageCategory, 1, false));
                        }

                        if (((Boolean) metaItemInfo.get(ApsParameters.KEY_REQUEST_MIXED_FORMAT)).booleanValue()
                                && (37 == format || 32 == format)) {
                            ApsAdapterLog.d(TAG, "addFrameAndProcessImage, is hdr mixed frame raw buffer");
                            isHdrMixedFrameRaw = true;
                        } else {
                            isHdrMixedFrameRaw = false;
                        }

                        int addFrameRet = this.mApsInterface.addFrameBuff(
                                new ApsCaptureParam(frameNumber, imageBuffer, imageRole, logicMetadata,
                                        physicalMetadata,
                                        metaItemInfo.mImageBuffer, inputSize, null, isReprocessMeta, maxHoldImages,
                                        preferAddFrameType,
                                        isVideoSnapshot, false, specificApsProcessAlgo, bits10Enable, inputEvList,
                                        isHdrMixedFrameRaw),
                                apsParams.getParameters(), algoTypeArr, watermarkParam);

                        ApsAdapterLog.v(TAG, "addFrameAndProcessImage, add yuv frame buff ret: " + addFrameRet
                                + ", timestamp: " + timestamp + ", role: " + imageRole);

                        if (1 == addFrameRet) {
                            ApsUtils.detachImage(imageBuffer.getImageReader(), imageBuffer.getImage());
                        } else if (2 == addFrameRet) {
                            imageBuffer.addRef();
                        }

                        lastImageFormat = format;
                        isImageProcessed = true;
                    }

                    if (!isImageProcessed || (tuningItemList = currentTuningItemListsMap
                            .get(Integer.valueOf(lastImageFormat))) == null || tuningItemList.isEmpty()) {
                        isImageProcessedReturn = isImageProcessed;
                        tuningItemListsMap = currentTuningItemListsMap;
                    } else {
                        int tuningItemIndex = ((Integer) tuningItemStatusMap.get(Integer.valueOf(lastImageFormat)))
                                .intValue();

                        if (tuningItemIndex < tuningItemList.size()) {
                            ImageCategory.TuningItemInfo tuningItem = tuningItemList.get(tuningItemIndex);
                            int tuningImageRole = ((Integer) tuningItem.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                            long tuningFrameNumber = ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER))
                                    .longValue();
                            ApsResult.ImageBuffer tuningBuffer = tuningItem.mTuningBuffer;
                            ArrayMap tuningMetaMap = (ArrayMap) metaItemInfo.get(ApsParameters.KEY_META_MAP);

                            CameraMetadata tuningLogicMetadata = (tuningMetaMap == null || !tuningMetaMap
                                    .containsKey(String.valueOf(metaItemInfo.get(ApsParameters.KEY_LOGIC_CAMERA_ID))))
                                            ? null
                                            : (CameraMetadata) tuningMetaMap.get(String
                                                    .valueOf(metaItemInfo.get(ApsParameters.KEY_LOGIC_CAMERA_ID)));

                            boolean isReprocessMetaTuning = ((Boolean) metaItemInfo
                                    .get(ApsParameters.KEY_REPROCESS_META_DATA)).booleanValue();
                            int maxHoldImagesTuning = ((Integer) metaItemInfo.get(ApsParameters.KEY_MAX_HOLD_IMAGES))
                                    .intValue();
                            int preferAddFrameTypeTuning = ((Integer) metaItemInfo
                                    .get(ApsParameters.KEY_PREFER_ADD_FRAME_TYPE)).intValue();
                            boolean isVideoSnapshotTuning = ((Boolean) metaItemInfo
                                    .get(ApsParameters.KEY_VIDEO_SNAPSHOT)).booleanValue();
                            int specificApsProcessAlgoTuning = ((Integer) metaItemInfo
                                    .get(ApsParameters.KEY_SPECIFIC_APS_PROCESS_ALGO)).intValue();
                            String bits10EnableTuning = (String) metaItemInfo.get(ApsParameters.KEY_10BITS_ENABLE);
                            String inputEvListTuning = (String) metaItemInfo.get(ApsParameters.KEY_INPUT_EVLIST);
                            boolean isRawSyncProcess = ((Boolean) tuningItem
                                    .get(ApsParameters.KEY_RAW_SYNC_PROCESS_FLAG)).booleanValue();

                            String[] cropSizeArr = isRawSyncProcess
                                    ? new String[] { (String) metaItemInfo.get(ApsParameters.KEY_CROP_WIDTH),
                                            (String) metaItemInfo.get(ApsParameters.KEY_CROP_HEIGHT) }
                                    : null;
                            String[] algoTypeArrTuning = (String[]) metaItemInfo
                                    .get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE);
                            ApsWatermarkParam watermarkParamTuning = (ApsWatermarkParam) metaItemInfo
                                    .get(ApsParameters.KEY_APS_WATERMARK_PARAM);
                            ApsParameters apsParamsTuning = new ApsParameters();
                            tuningItemListsMap = currentTuningItemListsMap;
                            ApsAdapterInterface.ImageProcessListener listenerTuning = this.mImageProcessListener;
                            isImageProcessedReturn = isImageProcessed;

                            if (listenerTuning != null) {
                                apsParamsTuning.setAll(listenerTuning.fillApsParameters(imageCategory, 1, false));
                            }

                            int addTuningRet = this.mApsInterface.addFrameBuff(
                                    new ApsCaptureParam(tuningFrameNumber, tuningBuffer, tuningImageRole,
                                            tuningLogicMetadata,
                                            null, metaItemInfo.mImageBuffer, null, cropSizeArr, isReprocessMetaTuning,
                                            maxHoldImagesTuning,
                                            preferAddFrameTypeTuning, isVideoSnapshotTuning, isRawSyncProcess,
                                            specificApsProcessAlgoTuning,
                                            bits10EnableTuning, inputEvListTuning, false),
                                    apsParamsTuning.getParameters(), algoTypeArrTuning, watermarkParamTuning);

                            ApsAdapterLog.v(TAG, "addFrameAndProcessImage, add tuning frame buff ret: " + addTuningRet
                                    + ", timestamp: " + timestamp + ", role: " + tuningImageRole);

                            if (1 == addTuningRet) {
                                ApsUtils.detachImage(tuningBuffer.getImageReader(), tuningBuffer.getImage());
                            } else if (2 == addTuningRet) {
                                tuningBuffer.addRef();
                            }

                            tuningItemStatusMap.put(Integer.valueOf(lastImageFormat),
                                    Integer.valueOf(tuningItemIndex + 1));
                        } else {
                            tuningItemListsMap = currentTuningItemListsMap;
                            isImageProcessedReturn = isImageProcessed;
                        }
                    }

                    itemIndex++;
                    currentImageList = tempImageList;
                    currentTuningItemListsMap = tuningItemListsMap;
                    isNeedProcessImage = isImageProcessedReturn;
                }
                imageItemList = currentImageList;
            }

            ApsAdapterLog.v(TAG, "addFrameAndProcessImage, isNeedProcessImage: " + isNeedProcessImage
                    + ", imageCategory: " + imageCategory, true);

            synchronized (this.mImageQueueLock) {
                imageItem = imageCategory.mImageItemList.get(0);
            }

            boolean isReprocessRaw = ((Boolean) metaItemInfo.get(ApsParameters.KEY_REPROCESS_META_DATA)).booleanValue()
                    && ((Integer) imageItem.get(ApsParameters.KEY_IMAGE_FORMAT)).intValue() == 32;

            if (isReprocessRaw) {
                synchronized (this.mRawImageCategoryLock) {
                    ImageCategory rawImageCategoryCached = this.mRawImageCategory;
                    if (rawImageCategoryCached != null) {
                        rawImageCategoryCached.releaseImageItemList();
                    }
                    this.mRawImageCategory = imageCategory;
                }
            }

            synchronized (this.mAddFrameLock) {
                this.mAddFrameMetadataList.add(metaItemInfo);
            }

            if (((ApsCameraRequestTag) metaItemInfo.get(ApsParameters.KEY_CAMERA_REQUEST_TAG)).mbQcom) {
                maxBurstShotNum = ((Integer) metaItemInfo.get(ApsParameters.KEY_MAX_BURST_SHOT_NUMBER)).intValue();
            } else {
                maxBurstShotNum = Math.max(
                        ((Integer) metaItemInfo.get(ApsParameters.KEY_CSHOT_REQUEST_NUMER)).intValue(),
                        this.mBurstShotRequestNum);
            }

            this.mBurstShotRequestNum = maxBurstShotNum;
            ApsAdapterLog.d(TAG, "addFrameAndProcessImage, mBurstShotRequestNum: " + this.mBurstShotRequestNum);

            if (this.mImageProcessListener == null
                    || !((Boolean) imageItem.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()
                    || ((Integer) imageItem.get(ApsParameters.KEY_REC_BURST_NUMBER))
                            .intValue() < this.mBurstShotRequestNum) {
                shouldEndBurst = false;
            } else {
                shouldEndBurst = false;
                this.mBurstShotRequestNum = 0;
                this.mImageProcessListener.afterAddFrame(imageItem, metaItemInfo);
            }

            isProcessed = shouldEndBurst;

            if (countAddFrame(((Long) metaItemInfo.get(ApsParameters.KEY_MERGE_IDENTITY)).longValue(),
                    imageItemList.size(),
                    ((Integer) metaItemInfo.get(ApsParameters.KEY_MERGE_NUMBER)).intValue(), false, imageItem)
                    && isNeedProcessImage) {
                ApsAdapterLog.d(TAG, "addFrameAndProcessImage, enter");
                ApsAdapterLog.d(TAG, "addFrameAndProcessImage, KEY_RAW_SR_ENABLE: "
                        + ((String) imageItem.get(ApsParameters.KEY_RAW_SR_ENABLE)));

                boolean isSendAfterAddFrame = (((Integer) imageItem.get(ApsParameters.KEY_IMAGE_FORMAT))
                        .intValue() != 32
                        || "1".equals(imageItem.get(ApsParameters.KEY_RAW_SR_ENABLE))
                        || this.mRawImageCategory == null) ? true : isProcessed;

                if (this.mImageProcessListener != null
                        && !((Boolean) imageItem.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()
                        && ("1".equals(metaItemInfo.get(ApsParameters.KEY_SUPER_RAW_ENABLE)) || isSendAfterAddFrame)) {
                    this.mImageProcessListener.afterAddFrame(imageItem, metaItemInfo);
                    ApsAdapterLog.d(TAG, "addFrameAndProcessImage, after afterAddFrame");
                }

                ApsParameters processParams = new ApsParameters();

                if (this.mImageProcessListener != null) {
                    ApsAdapterLog.d(TAG, "addFrameAndProcessImage, before fillApsParameters");
                    processParams.setAll(this.mImageProcessListener.fillApsParameters(imageCategory, 1, true));
                    ApsAdapterLog.d(TAG, "addFrameAndProcessImage, after fillApsParameters");
                }

                if (!isReprocessRaw) {
                    ApsAdapterLog.d(TAG, "addFrameAndProcessImage, lock");
                    synchronized (this.mImageQueueLock) {
                        imageCategory.releaseImageItemList();
                        imageItem.mImageBuffer = null;
                        this.mImageProcessMap.remove(Long.valueOf(timestamp));
                    }
                    isProcessed = true;
                }

                int processImagesRet = this.mApsInterface.processImages(processParams.getParameters(),
                        (String[]) metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE),
                        (ApsWatermarkParam) metaItemInfo.get(ApsParameters.KEY_APS_WATERMARK_PARAM));

                ApsAdapterLog.d(TAG, "addFrameAndProcessImage, processImages result: " + processImagesRet, true);

                synchronized (this.mAddFrameLock) {
                    this.mAddFrameMetadataList.clear();
                }

                if (this.mImageProcessListener != null) {
                    metaItemInfo.setParameter(ApsParameters.KEY_END_OF_CAPTURE, Boolean.valueOf(isSendAfterAddFrame));
                    this.mImageProcessListener.afterProcessImage(processImagesRet, imageItem, metaItemInfo);
                }
            } else {
                ApsAdapterLog.w(TAG, "addFrameAndProcessImage, countAddFrame return false");

                if (!isNeedProcessImage) {
                    synchronized (this.mAddFrameLock) {
                        this.mAddFrameMetadataList.clear();
                    }
                }

                if (!isReprocessRaw) {
                    synchronized (this.mImageQueueLock) {
                        imageCategory.releaseImageItemList();
                        this.mImageProcessMap.remove(Long.valueOf(timestamp));
                    }
                    isFrameAdded = true;
                }

                synchronized (this.mImageQueueLock) {
                    if (!isFrameAdded) {
                        this.mImageProcessMap.remove(Long.valueOf(timestamp));
                        if (this.mImageProcessMap.isEmpty()) {
                            this.mAddFrameConditionVariable.open();
                            ApsAdapterInterface.ImageProcessListener listenerQueue = this.mImageProcessListener;
                            if (listenerQueue != null) {
                                listenerQueue.onProcessQueueEmpty();
                            }
                        }
                    }
                }

                ApsAdapterLog.v(TAG, "addFrameAndProcessImage X, haveRelease: " + isFrameAdded);
                return;
            }
        }

        isFrameAdded = isProcessed;

        synchronized (this.mImageQueueLock) {
        }
    }

    protected boolean countAddFrame(long j, int i, int i2, boolean z, ImageCategory.ImageItemInfo imageItemInfo) {
        Integer numValueOf;
        synchronized (this.mAddFrameLock) {
            if (i2 == i) {
                ApsAdapterLog.v(TAG, "countAddFrame, identity: " + j + ", isCaptureFailed: " + z + ", mApsInterface: "
                        + this.mApsInterface, true);
                if (z) {
                    handleCaptureFailed(imageItemInfo, i, i2);
                    return false;
                }
                this.mbCaptureFail = false;
                return true;
            }
            Integer num = this.mAddFrameFinishMap.get(Long.valueOf(j));
            if (num == null) {
                numValueOf = Integer.valueOf(i);
                this.mbCaptureFail = z;
            } else {
                numValueOf = Integer.valueOf(num.intValue() + i);
                this.mbCaptureFail |= z;
            }
            ApsAdapterLog.v(TAG, "countAddFrame, mMergeIdentity: " + j + ", count: " + numValueOf + ", mMergeNum: " + i2
                    + ", isCaptureFailed: " + z + ", mbCaptureFail: " + this.mbCaptureFail, true);
            if (numValueOf.intValue() >= i2) {
                this.mAddFrameFinishMap.remove(Long.valueOf(j));
                if (!this.mbCaptureFail) {
                    return true;
                }
                handleCaptureFailed(imageItemInfo, i, i2);
                return false;
            }
            this.mAddFrameFinishMap.put(Long.valueOf(j), numValueOf);
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
                        ApsAdapterLog.v(TAG, "handleCaptureFailed, release and remove imageCatory timeStamp: " + l);
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

    protected void closeCamera() {
        ImageCategory.MetaItemInfo metaItemInfo;
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
                    boolean z = metaItemInfo == null
                            || !((Boolean) metaItemInfo.get(ApsParameters.KEY_USE_TUNING_DATA)).booleanValue()
                            || (imageCategory.mTuningItemLists != null && imageCategory.mTuningItemLists.size() > 0);
                    if (metaItemInfo != null && imageCategory.mMetaItem == null && z
                            && imageCategory.mImageItemList != null
                            && imageCategory.mImageItemList
                                    .size() == ((Integer) metaItemInfo.get(ApsParameters.KEY_CAPTURE_STREAM_NUMBER))
                                            .intValue()) {
                        metaItemInfo.setParameter(ApsParameters.KEY_TIME_STAMP,
                                (Long) imageCategory.mImageItemList.get(0).get(ApsParameters.KEY_TIME_STAMP));
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
            }
            if (!this.mImageProcessMap.isEmpty()) {
                ApsAdapterLog.v(TAG, "closeCamera, mAddFrameConditionVariable close");
                this.mAddFrameConditionVariable.close();
            }
        }
    }

    protected void onJpegReceived(ApsResult apsResult) {
        ApsAdapterLog.v(TAG, "onJpegReceived, result: " + apsResult.toString());
        ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
        if (imageProcessListener != null) {
            imageProcessListener.onJpegReceived(apsResult);
        }
    }

    protected void onRawReceived(ApsResult apsResult) {
        ApsAdapterLog.v(TAG, "onRawReceived, result: " + apsResult + ", result.mIdentity: " + apsResult.mIdentity);
        if (this.mImageProcessListener != null) {
            synchronized (this.mRawImageCategoryLock) {
                if (this.mRawImageCategory != null && (apsResult.mIdentity == ((Long) this.mRawImageCategory.mMetaItem
                        .get(ApsParameters.KEY_MERGE_IDENTITY)).longValue()
                        || (apsResult.getImageBuffer() != null
                                && apsResult.mIdentity == apsResult.getImageBuffer().getTimestamp()))) {
                    this.mImageProcessListener.onReprocess(this.mRawImageCategory, apsResult);
                    this.mRawImageCategory = null;
                }
            }
        }
    }

    protected void onHeicReceived(ApsResult apsResult) {
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
        ApsAdapterLog.v(TAG, "setHeicProcessInApp: " + z);
        this.mbHeicProcessInApp = z;
    }

    public void updateThumbnailMap(long j) {
        if (!this.mbHeicProcessInApp) {
            ApsAdapterLog.v(TAG,
                    "updateThumbnailMap, return because heic process in aps or not need to update thumbnail");
            return;
        }
        String str = TAG;
        ApsAdapterLog.v(str, "updateThumbnailMap, timestamp: " + j);
        synchronized (this.mHeicReceivedLock) {
            Map<Long, ApsResult> map = this.mHeifImageMap;
            if (map != null && map.containsKey(Long.valueOf(j))) {
                ApsResult apsResultRemove = this.mHeifImageMap.remove(Long.valueOf(j));
                ArrayList<Long> arrayList = this.mHeifThumbnailList;
                if (arrayList != null) {
                    arrayList.add(Long.valueOf(j));
                }
                ApsInterface apsInterface = this.mApsInterface;
                if (apsInterface != null) {
                    apsInterface.updateThumbnailMap(apsResultRemove);
                }
            } else if (this.mHeifThumbnailList != null) {
                ApsAdapterLog.v(str, "updateThumbnailMap, wait for heic callback, timestamp: " + j);
                this.mHeifThumbnailList.add(Long.valueOf(j));
            }
        }
        ApsAdapterLog.v(str, "updateThumbnailMap, X");
    }

    public boolean notifyLastCaptureFrame(ImageCategory.ImageItemInfo imageItemInfo,
            ImageCategory.MetaItemInfo metaItemInfo) {
        String str = TAG;
        ApsAdapterLog.v(str, "notifyLastCaptureFrame, format: " + metaItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT));
        synchronized (this.mImageQueueLock) {
            synchronized (this.mRawImageCategoryLock) {
                this.mCurrentCaptureInfo.mbCaptureRawDone = true;
                if (32 == ((Integer) metaItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT)).intValue()
                        && this.mRawImageCategory != null) {
                    Iterator<Long> it = this.mImageProcessMap.keySet().iterator();
                    while (it.hasNext()) {
                        ImageCategory imageCategory = this.mImageProcessMap.get(Long.valueOf(it.next().longValue()));
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
