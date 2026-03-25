package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.graphics.Bitmap;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureResult;
import android.os.ConditionVariable;
import android.os.Handler;
import android.util.ArrayMap;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterConstant;
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

    /* JADX WARN: Removed duplicated region for block: B:217:0x0653 */
    /*
     * JADX WARN: Removed duplicated region for block: B:221:0x0666 A[Catch: all ->
     * 0x068a, TryCatch #6 {, blocks: (B:218:0x0655, B:219:0x065e, B:221:0x0666,
     * B:223:0x066f, B:224:0x0672), top: B:245:0x0655 }]
     */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    protected void addFrameAndProcessImage(long j) {
        ImageCategory imageCategory;
        boolean z;
        boolean z2 = false;
        boolean z3;
        List<ImageCategory.ImageItemInfo> list;
        ImageCategory.ImageItemInfo imageItemInfo;
        int iMax;
        boolean z4;
        int iIntValue;
        CameraMetadata cameraMetadata;
        CameraMetadata cameraMetadata2;
        List<ImageCategory.ImageItemInfo> list2;
        HashMap map;
        int i;
        boolean z5;
        boolean z6;
        boolean z7;
        Map<Integer, List<ImageCategory.TuningItemInfo>> map2;
        List<ImageCategory.TuningItemInfo> list3;
        ApsAdapterInterface.ImageProcessListener imageProcessListener;
        synchronized (this.mImageQueueLock) {
            imageCategory = this.mImageProcessMap.get(Long.valueOf(j));
        }
        int i2 = 1;
        ApsAdapterLog.v(TAG, "addFrameAndProcessImage, timestamp: " + j + ", imageCategory: " + imageCategory, true);
        if (imageCategory == null || !imageCategory.isValid()) {
            z = false;
        } else {
            List<ImageCategory.ImageItemInfo> list4 = imageCategory.mImageItemList;
            ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem;
            Map<Integer, List<ImageCategory.TuningItemInfo>> map3 = imageCategory.mTuningItemLists;
            HashMap map4 = new HashMap();
            Iterator<Integer> it = map3.keySet().iterator();
            while (it.hasNext()) {
                map4.put(it.next(), 0);
            }
            synchronized (this.mImageQueueLock) {
                if (1 < list4.size()
                        && ApsAdapterConstant.PICTURE_DOL.equals(list4.get(0).mImageBuffer.getSurfaceUsage())) {
                    Collections.swap(list4, 0, 1);
                }
                int i3 = 0;
                int i4 = 0;
                z3 = false;
                while (true) {
                    int i5 = i4;
                    if (i3 >= list4.size()) {
                        break;
                    }
                    ImageCategory.ImageItemInfo imageItemInfo2 = list4.get(i3);
                    if (((Boolean) imageItemInfo2.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()
                            && ((Integer) imageItemInfo2.get(ApsParameters.KEY_REC_BURST_NUMBER)).intValue() == i2
                            && (imageProcessListener = this.mImageProcessListener) != null) {
                        imageProcessListener.onBurstShotStart(
                                ((Long) imageItemInfo2.get(ApsParameters.KEY_BURST_SHOT_FLAG_ID)).longValue());
                    }
                    if (((Boolean) imageItemInfo2.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()
                            && !((Boolean) imageItemInfo2.get(ApsParameters.KEY_VALID_BURST_SHOT_IMAGE))
                                    .booleanValue()) {
                        countBurstShot(imageItemInfo2, metaItemInfo);
                        list2 = list4;
                        map = map4;
                        i = i3;
                        i4 = i5;
                        z6 = false;
                    } else {
                        if (((Boolean) imageItemInfo2.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()) {
                            iIntValue = ((Integer) metaItemInfo.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                        } else {
                            iIntValue = ((Integer) imageItemInfo2.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                        }
                        long jLongValue = ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue();
                        ApsResult.ImageBuffer imageBuffer = imageItemInfo2.mImageBuffer;
                        int format = imageItemInfo2.mImageBuffer.getFormat();
                        ArrayMap arrayMap = (ArrayMap) metaItemInfo.get(ApsParameters.KEY_META_MAP);
                        CameraMetadata cameraMetadata3 = (arrayMap == null || !arrayMap
                                .containsKey(String.valueOf(metaItemInfo.get(ApsParameters.KEY_LOGIC_CAMERA_ID))))
                                        ? null
                                        : (CameraMetadata) arrayMap.get(
                                                String.valueOf(metaItemInfo.get(ApsParameters.KEY_LOGIC_CAMERA_ID)));
                        CameraMetadata cameraMetadata4 = (arrayMap == null
                                || !arrayMap.containsKey(Integer.toString(iIntValue))) ? null
                                        : (CameraMetadata) arrayMap.get(Integer.toString(iIntValue));
                        int[] iArr = (int[]) metaItemInfo.get(ApsParameters.KEY_INPUT_SIZE);
                        boolean zBooleanValue = ((Boolean) metaItemInfo.get(ApsParameters.KEY_REPROCESS_META_DATA))
                                .booleanValue();
                        int iIntValue2 = ((Integer) metaItemInfo.get(ApsParameters.KEY_MAX_HOLD_IMAGES)).intValue();
                        int iIntValue3 = ((Integer) metaItemInfo.get(ApsParameters.KEY_PREFER_ADD_FRAME_TYPE))
                                .intValue();
                        boolean zBooleanValue2 = ((Boolean) metaItemInfo.get(ApsParameters.KEY_VIDEO_SNAPSHOT))
                                .booleanValue();
                        int iIntValue4 = ((Integer) metaItemInfo.get(ApsParameters.KEY_SPECIFIC_APS_PROCESS_ALGO))
                                .intValue();
                        String str = (String) metaItemInfo.get(ApsParameters.KEY_10BITS_ENABLE);
                        String str2 = (String) metaItemInfo.get(ApsParameters.KEY_INPUT_EVLIST);
                        if (metaItemInfo.mImageBuffer != null) {
                            cameraMetadata = null;
                            cameraMetadata2 = null;
                        } else {
                            cameraMetadata = cameraMetadata3;
                            cameraMetadata2 = cameraMetadata4;
                        }
                        String[] strArr = (String[]) metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE);
                        ApsWatermarkParam apsWatermarkParam = (ApsWatermarkParam) metaItemInfo
                                .get(ApsParameters.KEY_APS_WATERMARK_PARAM);
                        ApsParameters apsParameters = new ApsParameters();
                        list2 = list4;
                        ApsAdapterInterface.ImageProcessListener imageProcessListener2 = this.mImageProcessListener;
                        map = map4;
                        i = i3;
                        if (imageProcessListener2 != null) {
                            apsParameters.setAll(imageProcessListener2.fillApsParameters(imageCategory, 1, false));
                        }
                        if (((Boolean) metaItemInfo.get(ApsParameters.KEY_REQUEST_MIXED_FORMAT)).booleanValue()
                                && (37 == format || 32 == format)) {
                            ApsAdapterLog.d(TAG, "addFrameAndProcessImage, is hdr mixed frame raw buffer");
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        int iAddFrameBuff = this.mApsInterface.addFrameBuff(
                                new ApsCaptureParam(jLongValue, imageBuffer, iIntValue, cameraMetadata, cameraMetadata2,
                                        metaItemInfo.mImageBuffer, iArr, null, zBooleanValue, iIntValue2, iIntValue3,
                                        zBooleanValue2, false, iIntValue4, str, str2, z5),
                                apsParameters.getParameters(), strArr, apsWatermarkParam);
                        ApsAdapterLog.v(TAG, "addFrameAndProcessImage, add yuv frame buff ret: " + iAddFrameBuff
                                + ", timestamp: " + j + ", role: " + iIntValue);
                        if (1 == iAddFrameBuff) {
                            ApsUtils.detachImage(imageBuffer.getImageReader(), imageBuffer.getImage());
                        } else if (2 == iAddFrameBuff) {
                            imageBuffer.addRef();
                        }
                        i4 = format;
                        z6 = true;
                    }
                    if (!z6 || (list3 = map3.get(Integer.valueOf(i4))) == null || list3.isEmpty()) {
                        z7 = z6;
                        map4 = map;
                        map2 = map3;
                    } else {
                        HashMap map5 = map;
                        int iIntValue5 = ((Integer) map5.get(Integer.valueOf(i4))).intValue();
                        if (iIntValue5 < list3.size()) {
                            ImageCategory.TuningItemInfo tuningItemInfo = list3.get(iIntValue5);
                            int iIntValue6 = ((Integer) tuningItemInfo.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                            long jLongValue2 = ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue();
                            ApsResult.ImageBuffer imageBuffer2 = tuningItemInfo.mTuningBuffer;
                            ArrayMap arrayMap2 = (ArrayMap) metaItemInfo.get(ApsParameters.KEY_META_MAP);
                            CameraMetadata cameraMetadata5 = (arrayMap2 == null || !arrayMap2
                                    .containsKey(String.valueOf(metaItemInfo.get(ApsParameters.KEY_LOGIC_CAMERA_ID))))
                                            ? null
                                            : (CameraMetadata) arrayMap2.get(String
                                                    .valueOf(metaItemInfo.get(ApsParameters.KEY_LOGIC_CAMERA_ID)));
                            boolean zBooleanValue3 = ((Boolean) metaItemInfo.get(ApsParameters.KEY_REPROCESS_META_DATA))
                                    .booleanValue();
                            int iIntValue7 = ((Integer) metaItemInfo.get(ApsParameters.KEY_MAX_HOLD_IMAGES)).intValue();
                            int iIntValue8 = ((Integer) metaItemInfo.get(ApsParameters.KEY_PREFER_ADD_FRAME_TYPE))
                                    .intValue();
                            boolean zBooleanValue4 = ((Boolean) metaItemInfo.get(ApsParameters.KEY_VIDEO_SNAPSHOT))
                                    .booleanValue();
                            int iIntValue9 = ((Integer) metaItemInfo.get(ApsParameters.KEY_SPECIFIC_APS_PROCESS_ALGO))
                                    .intValue();
                            String str3 = (String) metaItemInfo.get(ApsParameters.KEY_10BITS_ENABLE);
                            String str4 = (String) metaItemInfo.get(ApsParameters.KEY_INPUT_EVLIST);
                            boolean zBooleanValue5 = ((Boolean) tuningItemInfo
                                    .get(ApsParameters.KEY_RAW_SYNC_PROCESS_FLAG)).booleanValue();
                            String[] strArr2 = zBooleanValue5
                                    ? new String[] { (String) metaItemInfo.get(ApsParameters.KEY_CROP_WIDTH),
                                            (String) metaItemInfo.get(ApsParameters.KEY_CROP_HEIGHT) }
                                    : null;
                            String[] strArr3 = (String[]) metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE);
                            ApsWatermarkParam apsWatermarkParam2 = (ApsWatermarkParam) metaItemInfo
                                    .get(ApsParameters.KEY_APS_WATERMARK_PARAM);
                            ApsParameters apsParameters2 = new ApsParameters();
                            map2 = map3;
                            ApsAdapterInterface.ImageProcessListener imageProcessListener3 = this.mImageProcessListener;
                            z7 = z6;
                            if (imageProcessListener3 != null) {
                                apsParameters2.setAll(imageProcessListener3.fillApsParameters(imageCategory, 1, false));
                            }
                            int iAddFrameBuff2 = this.mApsInterface.addFrameBuff(
                                    new ApsCaptureParam(jLongValue2, imageBuffer2, iIntValue6, cameraMetadata5, null,
                                            metaItemInfo.mImageBuffer, null, strArr2, zBooleanValue3, iIntValue7,
                                            iIntValue8, zBooleanValue4, zBooleanValue5, iIntValue9, str3, str4, false),
                                    apsParameters2.getParameters(), strArr3, apsWatermarkParam2);
                            ApsAdapterLog.v(TAG, "addFrameAndProcessImage, add tuning frame buff ret: " + iAddFrameBuff2
                                    + ", timestamp: " + j + ", role: " + iIntValue6);
                            if (1 == iAddFrameBuff2) {
                                ApsUtils.detachImage(imageBuffer2.getImageReader(), imageBuffer2.getImage());
                            } else if (2 == iAddFrameBuff2) {
                                imageBuffer2.addRef();
                            }
                            Integer numValueOf = Integer.valueOf(i4);
                            Integer numValueOf2 = Integer.valueOf(iIntValue5 + 1);
                            map4 = map5;
                            map4.put(numValueOf, numValueOf2);
                        } else {
                            map2 = map3;
                            map4 = map5;
                            z7 = z6;
                        }
                    }
                    i3 = i + 1;
                    list4 = list2;
                    map3 = map2;
                    z3 = z7;
                    i2 = 1;
                }
                list = list4;
            }
            String str5 = TAG;
            ApsAdapterLog.v(str5,
                    "addFrameAndProcessImage, isNeedProcessImage: " + z3 + ", imageCategory: " + imageCategory, true);
            synchronized (this.mImageQueueLock) {
                imageItemInfo = imageCategory.mImageItemList.get(0);
            }
            boolean z8 = ((Boolean) metaItemInfo.get(ApsParameters.KEY_REPROCESS_META_DATA)).booleanValue()
                    && ((Integer) imageItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT)).intValue() == 32;
            if (z8) {
                synchronized (this.mRawImageCategoryLock) {
                    ImageCategory imageCategory2 = this.mRawImageCategory;
                    if (imageCategory2 != null) {
                        imageCategory2.releaseImageItemList();
                    }
                    this.mRawImageCategory = imageCategory;
                }
            }
            synchronized (this.mAddFrameLock) {
                this.mAddFrameMetadataList.add(metaItemInfo);
            }
            if (((ApsCameraRequestTag) metaItemInfo.get(ApsParameters.KEY_CAMERA_REQUEST_TAG)).mbQcom) {
                iMax = ((Integer) metaItemInfo.get(ApsParameters.KEY_MAX_BURST_SHOT_NUMBER)).intValue();
            } else {
                iMax = Math.max(((Integer) metaItemInfo.get(ApsParameters.KEY_CSHOT_REQUEST_NUMER)).intValue(),
                        this.mBurstShotRequestNum);
            }
            this.mBurstShotRequestNum = iMax;
            ApsAdapterLog.d(str5, "addFrameAndProcessImage, mBurstShotRequestNum: " + this.mBurstShotRequestNum);
            if (this.mImageProcessListener == null
                    || !((Boolean) imageItemInfo.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()
                    || ((Integer) imageItemInfo.get(ApsParameters.KEY_REC_BURST_NUMBER))
                            .intValue() < this.mBurstShotRequestNum) {
                z4 = false;
            } else {
                z4 = false;
                this.mBurstShotRequestNum = 0;
                this.mImageProcessListener.afterAddFrame(imageItemInfo, metaItemInfo);
            }
            z = z4;
            if (countAddFrame(((Long) metaItemInfo.get(ApsParameters.KEY_MERGE_IDENTITY)).longValue(), list.size(),
                    ((Integer) metaItemInfo.get(ApsParameters.KEY_MERGE_NUMBER)).intValue(), false, imageItemInfo)
                    && z3) {
                ApsAdapterLog.d(str5, "addFrameAndProcessImage, enter");
                ApsAdapterLog.d(str5, "addFrameAndProcessImage, KEY_RAW_SR_ENABLE: "
                        + ((String) imageItemInfo.get(ApsParameters.KEY_RAW_SR_ENABLE)));
                boolean z9 = (((Integer) imageItemInfo.get(ApsParameters.KEY_IMAGE_FORMAT)).intValue() != 32
                        || ApsParameters.FLAG_ON.equals(imageItemInfo.get(ApsParameters.KEY_RAW_SR_ENABLE))
                        || this.mRawImageCategory == null) ? true : z;
                if (this.mImageProcessListener != null
                        && !((Boolean) imageItemInfo.get(ApsParameters.KEY_BURST_SHOT)).booleanValue()
                        && (ApsParameters.FLAG_ON.equals(metaItemInfo.get(ApsParameters.KEY_SUPER_RAW_ENABLE)) || z9)) {
                    this.mImageProcessListener.afterAddFrame(imageItemInfo, metaItemInfo);
                    ApsAdapterLog.d(str5, "addFrameAndProcessImage, after afterAddFrame");
                }
                ApsParameters apsParameters3 = new ApsParameters();
                if (this.mImageProcessListener != null) {
                    ApsAdapterLog.d(str5, "addFrameAndProcessImage, before fillApsParameters");
                    apsParameters3.setAll(this.mImageProcessListener.fillApsParameters(imageCategory, 1, true));
                    ApsAdapterLog.d(str5, "addFrameAndProcessImage, after fillApsParameters");
                }
                if (!z8) {
                    ApsAdapterLog.d(str5, "addFrameAndProcessImage, lock");
                    synchronized (this.mImageQueueLock) {
                        imageCategory.releaseImageItemList();
                        imageItemInfo.mImageBuffer = null;
                        this.mImageProcessMap.remove(Long.valueOf(j));
                    }
                    z = true;
                }
                int iProcessImages = this.mApsInterface.processImages(apsParameters3.getParameters(),
                        (String[]) metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE),
                        (ApsWatermarkParam) metaItemInfo.get(ApsParameters.KEY_APS_WATERMARK_PARAM));
                ApsAdapterLog.d(str5, "addFrameAndProcessImage, processImages result: " + iProcessImages, true);
                synchronized (this.mAddFrameLock) {
                    this.mAddFrameMetadataList.clear();
                }
                if (this.mImageProcessListener != null) {
                    metaItemInfo.setParameter(ApsParameters.KEY_END_OF_CAPTURE, Boolean.valueOf(z9));
                    this.mImageProcessListener.afterProcessImage(iProcessImages, imageItemInfo, metaItemInfo);
                }
            } else {
                ApsAdapterLog.w(str5, "addFrameAndProcessImage, countAddFrame return false");
                if (!z3) {
                    synchronized (this.mAddFrameLock) {
                        this.mAddFrameMetadataList.clear();
                    }
                }
                if (!z8) {
                    synchronized (this.mImageQueueLock) {
                        imageCategory.releaseImageItemList();
                        this.mImageProcessMap.remove(Long.valueOf(j));
                    }
                    z2 = true;
                }
                synchronized (this.mImageQueueLock) {
                    if (!z2) {
                        this.mImageProcessMap.remove(Long.valueOf(j));
                        if (this.mImageProcessMap.isEmpty()) {
                            this.mAddFrameConditionVariable.open();
                            ApsAdapterInterface.ImageProcessListener imageProcessListener4 = this.mImageProcessListener;
                            if (imageProcessListener4 != null) {
                                imageProcessListener4.onProcessQueueEmpty();
                            }
                        }
                    } else if (this.mImageProcessMap.isEmpty()) {
                    }
                }
                ApsAdapterLog.v(TAG, "addFrameAndProcessImage X, haveRelease: " + z2);
                return;
            }
        }
        z2 = z;
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
