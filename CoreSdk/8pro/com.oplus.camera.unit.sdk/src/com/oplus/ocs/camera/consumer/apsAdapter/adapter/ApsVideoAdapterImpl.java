package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.camera2.CaptureResult;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.ArrayMap;
import com.common.StaticsConstant;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Implementation of APS Video Adapter.
 * Responsible for handling video frame buffering and metadata synchronization
 * for the APS pipeline.
 */
class ApsVideoAdapterImpl {
    private static final boolean DEBUG = false;
    private static final int MSG_APS_ADD_VIDEO_FRAME = 1;
    private static final String TAG = "ApsVideoAdapterImpl";
    private static final int MAX_INFLIGHT_VIDEO_FRAMES = 5;

    private ApsInterface mApsInterface;
    private ApsAdapterInterface.ImageProcessListener mImageProcessListener;
    private final Object mVideoQueueLock = new Object();
    private final Object mPermitLock = new Object();
    private Boolean mbPermit = true;
    protected ApsAdapterListener.ApsServiceListener mApsServiceListener = null;
    private LinkedHashMap<Long, ImageCategory> mVideoProcessMap = new LinkedHashMap<>();
    private ProcessHandler mVideoProcessHandler = null;
    private ImageCategory.MetaItemInfo mCurMetaItemInfo = null;

    protected ApsVideoAdapterImpl(ApsInterface apsInterface,
            ApsAdapterInterface.ImageProcessListener imageProcessListener) {
        this.mApsInterface = apsInterface;
        this.mImageProcessListener = imageProcessListener;
        createProcessThread();
    }

    private void createProcessThread() {
        HandlerThread thread = null;
        if (this.mVideoProcessHandler == null) {
            thread = new HandlerThread("VideoProcessThread");
            thread.start();
            this.mVideoProcessHandler = new ProcessHandler(thread.getLooper());
        }

        ApsAdapterLog.v(TAG, "createProcessThread, thread id: " + (thread == null ? 0 : thread.getThreadId()));
    }

    public void setPermitProcess(boolean permit) {
        synchronized (this.mPermitLock) {
            if (this.mbPermit != permit) {
                ApsAdapterLog.d(TAG, "setPermitProcess, mbPermit: " + this.mbPermit + " => " + permit);
            }
            this.mbPermit = permit;
        }
    }

    protected void addImage(ImageCategory.ImageItemInfo imageItemInfo) {
        synchronized (this.mVideoQueueLock) {
            checkImageOverflow();
            long timestamp = ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            ImageCategory category;

            if (this.mVideoProcessMap.containsKey(timestamp)) {
                category = this.mVideoProcessMap.get(timestamp);
                category.mImageItemList.add(imageItemInfo);
            } else {
                category = new ImageCategory();
                category.mImageItemList.add(imageItemInfo);
                this.mVideoProcessMap.put(timestamp, category);
            }

            boolean needMetadata = ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_VIDEO_META_DATA)).booleanValue();

            if (category.isValid() || !needMetadata) {
                if (!needMetadata) {
                    if (this.mCurMetaItemInfo != null) {
                        category.mMetaItem = this.mCurMetaItemInfo.copy();
                    } else {
                        category.mMetaItem = new ImageCategory.MetaItemInfo();
                    }
                    category.mMetaItem.setParameter(ApsParameters.KEY_TIME_STAMP, timestamp);
                }

                this.mVideoProcessMap.remove(timestamp);
                Message msg = this.mVideoProcessHandler.obtainMessage(MSG_APS_ADD_VIDEO_FRAME);
                msg.obj = category;
                msg.sendToTarget();
            }
        }
    }

    protected void addMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        synchronized (this.mVideoQueueLock) {
            if (this.mCurMetaItemInfo == null || ((Long) this.mCurMetaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER))
                    .longValue() < ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue()) {
                this.mCurMetaItemInfo = metaItemInfo;
            }

            long timestamp = ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            ImageCategory category;

            if (this.mVideoProcessMap.containsKey(timestamp)) {
                category = this.mVideoProcessMap.get(timestamp);
                category.mMetaItem = metaItemInfo;
            } else {
                category = new ImageCategory();
                category.mMetaItem = metaItemInfo;
                this.mVideoProcessMap.put(timestamp, category);
            }

            if (category.isValid()) {
                this.mVideoProcessMap.remove(timestamp);
                Message msg = this.mVideoProcessHandler.obtainMessage(MSG_APS_ADD_VIDEO_FRAME);
                msg.obj = category;
                msg.sendToTarget();
            }
        }
    }

    private int addVideoFrameBuff(ImageCategory imageCategory) {
        synchronized (this.mPermitLock) {
            if (!this.mbPermit) {
                imageCategory.releaseImageItemList();
                return 0;
            }

            ImageCategory.ImageItemInfo imageItem = imageCategory.mImageItemList.get(0);
            ImageCategory.MetaItemInfo metaItem = imageCategory.mMetaItem != null ? imageCategory.mMetaItem
                    : new ImageCategory.MetaItemInfo();

            ApsParameters apsParams = new ApsParameters();
            if (this.mImageProcessListener != null) {
                apsParams.setAll(this.mImageProcessListener.fillApsParameters(imageCategory, 3, false));
            }

            ApsWatermarkParam watermarkParam = (ApsWatermarkParam) metaItem.get(ApsParameters.KEY_APS_WATERMARK_PARAM);
            List<ImageCategory.ImageItemInfo> imageList = imageCategory.mImageItemList;
            ApsResult.ImageBuffer[] buffers = new ApsResult.ImageBuffer[imageList.size()];
            int[] roles = new int[imageList.size()];

            for (int i = 0; i < imageList.size(); i++) {
                try {
                    ImageCategory.ImageItemInfo info = imageList.get(i);
                    buffers[i] = info.mImageBuffer;
                    roles[i] = ((Integer) info.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                } catch (Exception e) {
                    ApsAdapterLog.e(TAG, "addVideoFrameBuff error.", e);
                    return -1;
                }
            }

            CaptureResult captureResult = (CaptureResult) metaItem.get(ApsParameters.KEY_CAPTURE_RESULT);
            long frameNumber = (captureResult != null) ? captureResult.getFrameNumber() : -1L;
            long timestamp = ((Long) imageItem.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            boolean needMetaData = ((Boolean) imageItem.get(ApsParameters.KEY_NEED_META_DATA)).booleanValue();
            boolean isVideo = metaItem.get(ApsParameters.KEY_ITEM_INFO_TYPE) == ImageCategory.ItemInfoType.VIDEO;
            boolean isDetached = ((Boolean) imageItem.get(ApsParameters.KEY_IS_DETACHED)).booleanValue();
            long consumerPtr = ApsUtils.getConsumerPtr(imageItem.mImageBuffer.getImageReader());
            String captureMode = (String) metaItem.get(ApsParameters.KEY_CAPTURE_MODE);

            ApsPreviewParam previewParam = new ApsPreviewParam(frameNumber, apsParams.getParameters(),
                    timestamp, buffers, captureResult,
                    (ArrayMap) metaItem.get(ApsParameters.KEY_META_MAP), metaItem.mImageBuffer, roles,
                    needMetaData, isVideo, isDetached, consumerPtr, true, captureMode);

            return this.mApsInterface.addPreviewFrameBuff(previewParam, watermarkParam);
        }
    }

    protected void onPreviewReceived(ApsResult result) {
        if (this.mApsServiceListener != null) {
            this.mApsServiceListener.onVideoReceived(result);
        }
    }

    protected void flushImage() {
        synchronized (this.mVideoQueueLock) {
            for (ImageCategory category : this.mVideoProcessMap.values()) {
                if (category != null) {
                    category.releaseImageItemList();
                }
            }
            this.mVideoProcessMap.clear();
            this.mCurMetaItemInfo = null;
        }
    }

    protected void destroy() {
        if (this.mVideoProcessHandler != null) {
            this.mVideoProcessHandler.getLooper().quitSafely();
            this.mVideoProcessHandler = null;
        }
    }

    private void checkImageOverflow() {
        List<Long> availableTimestamps = new ArrayList<>();
        for (Map.Entry<Long, ImageCategory> entry : this.mVideoProcessMap.entrySet()) {
            if (!entry.getValue().mImageItemList.isEmpty()) {
                availableTimestamps.add(entry.getKey());
            }
        }

        if (availableTimestamps.size() > MAX_INFLIGHT_VIDEO_FRAMES) {
            List<Long> overflowTimestamps = availableTimestamps.subList(0,
                    availableTimestamps.size() - MAX_INFLIGHT_VIDEO_FRAMES);

            for (Long timestamp : overflowTimestamps) {
                ImageCategory removedCategory = this.mVideoProcessMap.remove(timestamp);
                ApsAdapterLog.e(TAG, "checkImageOverflow, category: " + removedCategory);

                if (removedCategory != null) {
                    removedCategory.releaseImageItemList();
                }

                if (this.mApsServiceListener != null) {
                    this.mApsServiceListener.reportDataToDcs(StaticsConstant.EventType.ABNORMAL_DISPLAY,
                            "abnormal_preview", 4);
                }
            }
        }
    }

    private class ProcessHandler extends Handler {
        private ProcessHandler(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message msg) {
            if (msg.what == MSG_APS_ADD_VIDEO_FRAME) {
                if (msg.obj instanceof ImageCategory) {
                    addVideoFrameBuff((ImageCategory) msg.obj);
                } else {
                    ApsAdapterLog.e(TAG, "handleMessage, error msg object: " + msg.obj);
                }
            } else {
                ApsAdapterLog.e(TAG, "handleMessage, unknown msg type: " + msg.what);
            }
        }
    }
}
