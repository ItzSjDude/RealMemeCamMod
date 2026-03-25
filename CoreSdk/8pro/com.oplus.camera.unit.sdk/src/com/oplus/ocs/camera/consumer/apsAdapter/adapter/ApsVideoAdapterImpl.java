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

/* JADX INFO: loaded from: classes.dex */
class ApsVideoAdapterImpl {
    private static final boolean DEBUG = false;
    private static final int MSG_APS_ADD_VIDEO_FRAME = 1;
    private static final String TAG = "ApsVideoAdapterImpl";
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

    /*
     * JADX DEBUG: Multi-variable search result rejected for r1v6, resolved type:
     * java.lang.Object[]
     */
    /* JADX WARN: Multi-variable type inference failed */
    private void createProcessThread() {
        HandlerThread handlerThread = null;
        Object[] objArr = null;
        if (this.mVideoProcessHandler == null) {
            HandlerThread handlerThread2 = new HandlerThread("VideoProcessThread");
            handlerThread2.start();
            this.mVideoProcessHandler = new ProcessHandler(handlerThread2.getLooper());
            handlerThread = handlerThread2;
        }
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("createProcessThread, thread id: ");
        sb.append(handlerThread == null ? 0 : handlerThread.getThreadId());
        ApsAdapterLog.v(str, sb.toString());
    }

    public void setPermitProcess(boolean z) {
        synchronized (this.mPermitLock) {
            if (this.mbPermit.booleanValue() != z) {
                ApsAdapterLog.d(TAG, "setPermitProcess, mbPermit: " + this.mbPermit + " => " + z);
            }
            this.mbPermit = Boolean.valueOf(z);
        }
    }

    protected void addImage(ImageCategory.ImageItemInfo imageItemInfo) {
        ImageCategory imageCategory;
        synchronized (this.mVideoQueueLock) {
            checkImageOverflow();
            long jLongValue = ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            if (this.mVideoProcessMap.containsKey(Long.valueOf(jLongValue))) {
                imageCategory = this.mVideoProcessMap.get(Long.valueOf(jLongValue));
                imageCategory.mImageItemList.add(imageItemInfo);
            } else {
                imageCategory = new ImageCategory();
                imageCategory.mImageItemList.add(imageItemInfo);
                this.mVideoProcessMap.put(Long.valueOf(jLongValue), imageCategory);
            }
            boolean zBooleanValue = ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_VIDEO_META_DATA))
                    .booleanValue();
            if (imageCategory.isValid() || !zBooleanValue) {
                if (!zBooleanValue) {
                    ImageCategory.MetaItemInfo metaItemInfo = this.mCurMetaItemInfo;
                    if (metaItemInfo != null) {
                        imageCategory.mMetaItem = metaItemInfo.copy();
                    } else {
                        imageCategory.mMetaItem = new ImageCategory.MetaItemInfo();
                    }
                    imageCategory.mMetaItem.setParameter(ApsParameters.KEY_TIME_STAMP, Long.valueOf(jLongValue));
                }
                this.mVideoProcessMap.remove(Long.valueOf(jLongValue));
                Message messageObtainMessage = this.mVideoProcessHandler.obtainMessage(1);
                messageObtainMessage.obj = imageCategory;
                messageObtainMessage.sendToTarget();
            }
        }
    }

    protected void addMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        ImageCategory imageCategory;
        synchronized (this.mVideoQueueLock) {
            ImageCategory.MetaItemInfo metaItemInfo2 = this.mCurMetaItemInfo;
            if (metaItemInfo2 == null || ((Long) metaItemInfo2.get(ApsParameters.KEY_FRAME_NUMBER))
                    .longValue() < ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue()) {
                this.mCurMetaItemInfo = metaItemInfo;
            }
            long jLongValue = ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            if (this.mVideoProcessMap.containsKey(Long.valueOf(jLongValue))) {
                imageCategory = this.mVideoProcessMap.get(Long.valueOf(jLongValue));
                imageCategory.mMetaItem = metaItemInfo;
            } else {
                imageCategory = new ImageCategory();
                imageCategory.mMetaItem = metaItemInfo;
                this.mVideoProcessMap.put(Long.valueOf(jLongValue), imageCategory);
            }
            if (imageCategory.isValid()) {
                this.mVideoProcessMap.remove(Long.valueOf(jLongValue));
                Message messageObtainMessage = this.mVideoProcessHandler.obtainMessage(1);
                messageObtainMessage.obj = imageCategory;
                messageObtainMessage.sendToTarget();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int addVideoFrameBuff(ImageCategory imageCategory) {
        synchronized (this.mPermitLock) {
            if (!this.mbPermit.booleanValue()) {
                imageCategory.releaseImageItemList();
                return 0;
            }
            System.currentTimeMillis();
            ImageCategory.ImageItemInfo imageItemInfo = imageCategory.mImageItemList.get(0);
            ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem != null ? imageCategory.mMetaItem
                    : new ImageCategory.MetaItemInfo();
            ApsParameters apsParameters = new ApsParameters();
            ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
            if (imageProcessListener != null) {
                apsParameters.setAll(imageProcessListener.fillApsParameters(imageCategory, 3, false));
            }
            ApsWatermarkParam apsWatermarkParam = (ApsWatermarkParam) metaItemInfo
                    .get(ApsParameters.KEY_APS_WATERMARK_PARAM);
            List<ImageCategory.ImageItemInfo> list = imageCategory.mImageItemList;
            ApsResult.ImageBuffer[] imageBufferArr = new ApsResult.ImageBuffer[list.size()];
            int[] iArr = new int[list.size()];
            for (int i = 0; i < list.size(); i++) {
                try {
                    ImageCategory.ImageItemInfo imageItemInfo2 = list.get(i);
                    imageBufferArr[i] = imageItemInfo2.mImageBuffer;
                    iArr[i] = ((Integer) imageItemInfo2.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                } catch (Exception e) {
                    e.printStackTrace();
                    return -1;
                }
            }
            return this.mApsInterface
                    .addPreviewFrameBuff(new ApsPreviewParam(
                            metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT) != null
                                    ? ((CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT))
                                            .getFrameNumber()
                                    : -1L,
                            apsParameters.getParameters(),
                            ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue(), imageBufferArr,
                            (CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT),
                            (ArrayMap) metaItemInfo.get(ApsParameters.KEY_META_MAP), metaItemInfo.mImageBuffer, iArr,
                            ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_META_DATA)).booleanValue(),
                            metaItemInfo.get(ApsParameters.KEY_ITEM_INFO_TYPE) == ImageCategory.ItemInfoType.VIDEO,
                            ((Boolean) imageItemInfo.get(ApsParameters.KEY_IS_DETACHED)).booleanValue(),
                            ApsUtils.getConsumerPtr(imageItemInfo.mImageBuffer.getImageReader()), true,
                            (String) metaItemInfo.get(ApsParameters.KEY_CAPTURE_MODE)), apsWatermarkParam);
        }
    }

    protected void onPreviewReceived(ApsResult apsResult) {
        ApsAdapterListener.ApsServiceListener apsServiceListener = this.mApsServiceListener;
        if (apsServiceListener != null) {
            apsServiceListener.onVideoReceived(apsResult);
        }
    }

    protected void flushImage() {
        synchronized (this.mVideoQueueLock) {
            Iterator<Map.Entry<Long, ImageCategory>> it = this.mVideoProcessMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Long, ImageCategory> next = it.next();
                if (next.getValue() != null) {
                    for (ImageCategory.ImageItemInfo imageItemInfo : next.getValue().mImageItemList) {
                        if (imageItemInfo != null && imageItemInfo.mImageBuffer != null) {
                            imageItemInfo.mImageBuffer.close();
                        }
                    }
                }
                it.remove();
            }
            this.mCurMetaItemInfo = null;
        }
    }

    protected void destroy() {
        ProcessHandler processHandler = this.mVideoProcessHandler;
        if (processHandler != null) {
            processHandler.getLooper().quitSafely();
            this.mVideoProcessHandler = null;
        }
    }

    private void checkImageOverflow() {
        ArrayList arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        for (Map.Entry<Long, ImageCategory> entry : this.mVideoProcessMap.entrySet()) {
            if (!entry.getValue().mImageItemList.isEmpty()) {
                arrayList.add(entry.getKey());
            }
        }
        if (arrayList.size() > 5) {
            arrayList2 = arrayList.subList(0, arrayList.size() - 5);
        }
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ImageCategory imageCategoryRemove = this.mVideoProcessMap
                    .remove(Long.valueOf(((Long) it.next()).longValue()));
            ApsAdapterLog.e(TAG, "checkImageOverflow, category: " + imageCategoryRemove);
            if (imageCategoryRemove != null) {
                imageCategoryRemove.releaseImageItemList();
            }
            ApsAdapterListener.ApsServiceListener apsServiceListener = this.mApsServiceListener;
            if (apsServiceListener != null) {
                apsServiceListener.reportDataToDcs(StaticsConstant.EventType.ABNORMAL_DISPLAY, "abnormal_preview", 4);
            }
        }
    }

    private class ProcessHandler extends Handler {
        private ProcessHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                ApsAdapterLog.e(ApsVideoAdapterImpl.TAG, "handleMessage, msg: " + message.what + " is not defined.");
                return;
            }
            if (message.obj == null || !(message.obj instanceof ImageCategory)) {
                ApsAdapterLog.e(ApsVideoAdapterImpl.TAG, "handleMessage, error msg: " + message.obj);
                return;
            }
            ApsVideoAdapterImpl.this.addVideoFrameBuff((ImageCategory) message.obj);
        }
    }
}
