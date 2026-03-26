package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.content.Context;
import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.ArrayMap;
import com.common.StaticsConstant;
import com.oplus.ocs.camera.common.util.CameraHandlerThread;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsContextHolder;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * Implementation of APS Preview Adapter.
 * Responsible for handling preview frame buffering, metadata synchronization,
 * and decision control.
 */
class ApsPreviewAdapterImpl {
    private static final boolean DEBUG = false;
    private static final Long FIRST_PREVIEW_FRAME_NUMBER = 0L;
    private static final int MAX_INFLIGHT_IMAGE_NUMBER = 6;
    private static final int MSG_APS_ADD_PREVIEW_FRAME = 2;
    public static final String TAG = "ApsPreviewAdapterImpl";

    private ApsInterface mApsInterface;
    private ApsAdapterInterface.ImageProcessListener mImageProcessListener;
    private final Object mApsInitLock = new Object();
    private final Object mQueueLock = new Object();
    private final Object mPermitLock = new Object();
    protected ApsAdapterListener.ApsServiceListener mApsServiceListener = null;
    private Boolean mbPermit = true;
    private Boolean mbApsConnected = false;
    private ImageCategory.MetaItemInfo mCurMetaItemInfo = null;
    private Image mMetaImage = null;
    private APSClient.MetaImageRefCounter mMetaImageRefCounter = null;
    private LinkedHashMap<Long, ImageCategory> mProcessMap = new LinkedHashMap<>();
    private Handler mDecisionHandler = null;
    private ProcessHandler mProcessHandler = null;
    private ApsInitParameter mInitParameter = null;
    private List<CaptureRequest> mCaptureRequestList = new CopyOnWriteArrayList<>();
    private long mFrameNumber = -1;

    protected ApsPreviewAdapterImpl(ApsInterface apsInterface,
            ApsAdapterInterface.ImageProcessListener imageProcessListener) {
        this.mApsInterface = apsInterface;
        this.mImageProcessListener = imageProcessListener;
        createProcessThread();
    }

    private void createProcessThread() {
        CameraHandlerThread thread = null;
        if (this.mProcessHandler == null) {
            thread = new CameraHandlerThread("PreviewProcessThread");
            thread.enableUxState();
            thread.start();
            this.mProcessHandler = new ProcessHandler(thread.getLooper());
        }

        ApsAdapterLog.v(TAG, "createProcessThread, thread id: " + (thread == null ? 0 : thread.getThreadId()));
    }

    private void createDecisionThread() {
        HandlerThread thread;
        if (this.mDecisionHandler == null) {
            ApsAdapterLog.traceBeginSection("createDecisionHandler");
            thread = new HandlerThread("PreviewDecisionThread");
            thread.start();
            this.mDecisionHandler = new Handler(thread.getLooper());
            ApsAdapterLog.traceEndSection("createDecisionHandler");
        } else {
            thread = null;
        }

        ApsAdapterLog.v(TAG, "createDecisionThread, thread id: " + (thread == null ? 0 : thread.getThreadId()));
    }

    public Handler getDecisionHandler() {
        if (this.mDecisionHandler == null) {
            createDecisionThread();
        }
        return this.mDecisionHandler;
    }

    private boolean checkSendFrames(long timestamp, ImageCategory imageCategory) {
        Set<Long> nonSkipFrames = (Set<Long>) imageCategory.mImageItemList.get(0)
                .get(ApsParameters.KEY_FRAMES_CAN_NOT_SKIP);

        if (nonSkipFrames != null) {
            for (Long nonSkipTimestamp : nonSkipFrames) {
                long ts = nonSkipTimestamp.longValue();
                ImageCategory pendingCategory = this.mProcessMap.get(ts);

                if (pendingCategory != null && !pendingCategory.mbAlreadySendAps
                        && !pendingCategory.mImageItemList.isEmpty() && ts < timestamp) {
                    ApsAdapterLog.i(TAG, "checkSendFrames, stop sending frame " + timestamp + " to avoid skip " + ts
                            + " which is marked by ApsParameters.KEY_FRAMES_CAN_NOT_SKIP");
                    pendingCategory.mbHoldSendAps = true;
                    imageCategory.mbNeedReSendAps = true;
                    this.mProcessMap.put(timestamp, imageCategory);
                    return false;
                }
            }
        }
        return true;
    }

    private void checkReSendFrames(ImageCategory imageCategory) {
        if (imageCategory.mbHoldSendAps) {
            List<Long> resendTimestamps = new ArrayList<>();
            for (Map.Entry<Long, ImageCategory> entry : this.mProcessMap.entrySet()) {
                if (!entry.getValue().mbAlreadySendAps && entry.getValue().mbNeedReSendAps) {
                    resendTimestamps.add(entry.getKey());
                }
            }

            for (Long ts : resendTimestamps) {
                Message msg = this.mProcessHandler.obtainMessage(MSG_APS_ADD_PREVIEW_FRAME);
                msg.obj = this.mProcessMap.remove(ts);
                msg.sendToTarget();
                ApsAdapterLog.i(TAG, "checkReSendFrames, resend frame " + ts);
            }
        }
    }

    private void sendImageAndMetaToAps(long timestamp, ImageCategory imageCategory) {
        if (checkSendFrames(timestamp, imageCategory)) {
            imageCategory.mbAlreadySendAps = true;
            Message msg = this.mProcessHandler.obtainMessage(MSG_APS_ADD_PREVIEW_FRAME);
            msg.obj = imageCategory;
            msg.sendToTarget();
        }
        checkReSendFrames(imageCategory);
    }

    public void setPermitProcess(boolean permit) {
        synchronized (this.mPermitLock) {
            if (this.mbPermit != permit) {
                ApsAdapterLog.d(TAG, "setPermitProcess, mbPermit: " + this.mbPermit + " => " + permit);
            }
            this.mbPermit = permit;
        }
    }

    private boolean checkNeedMatchTimeStamp(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory imageCategory) {
        if (imageCategory.mbNeedMatchTimeStamp || imageCategory.mMetaItem != null
                || ((Integer) imageItemInfo.get(ApsParameters.KEY_PREVIEW_STREAM_NUMBER))
                        .intValue() != imageCategory.mImageItemList.size()) {
            return false;
        }

        if (this.mCurMetaItemInfo != null && this.mCurMetaItemInfo.mImageBuffer == null) {
            return true;
        }

        if (this.mCurMetaItemInfo == null || this.mCurMetaItemInfo.mImageBuffer == null || this.mMetaImage == null) {
            return false;
        }

        ImageCategory.MetaItemInfo metaInfo = this.mCurMetaItemInfo;
        ImageReader reader = metaInfo.mImageBuffer.getImageReader();
        Image metaImg = this.mMetaImage;

        metaInfo.mImageBuffer = new ApsResult.ImageBuffer(reader, metaImg, ApsUtils.getHardwareBuffer(metaImg),
                metaImg.getTimestamp());
        this.mMetaImageRefCounter.setMetaImageRef(metaImg, null, true);
        return true;
    }

    public void setApsConnected(boolean connected) {
        ApsAdapterLog.d(TAG, "setApsConnected, mbApsConnected: " + this.mbApsConnected + " => " + connected);
        this.mbApsConnected = connected;
    }

    protected void addImage(ImageCategory.ImageItemInfo imageItemInfo) {
        if (!this.mbApsConnected) {
            checkImageOverflow((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP));
            return;
        }

        synchronized (this.mQueueLock) {
            long timestampValue = ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            ImageCategory category;

            if (this.mProcessMap.containsKey(timestampValue)) {
                category = this.mProcessMap.get(timestampValue);
                category.mImageItemList.add(imageItemInfo);
            } else {
                category = new ImageCategory();
                category.mImageItemList.add(imageItemInfo);
                this.mProcessMap.put(timestampValue, category);
            }

            boolean isValid = category.isValid();
            category.mbNeedMatchTimeStamp = ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_MATCH_TIME_STAMP))
                    .booleanValue();

            if (isValid || checkNeedMatchTimeStamp(imageItemInfo, category)) {
                checkImageOverflow(timestampValue);
                if (isValid) {
                    this.mProcessMap.remove(timestampValue);
                } else {
                    category.mMetaItem = this.mCurMetaItemInfo.copy();
                    category.mMetaItem.setParameter(ApsParameters.KEY_TIME_STAMP, timestampValue);
                }
                sendImageAndMetaToAps(timestampValue, category);
            }
        }
    }

    protected void addMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        synchronized (this.mQueueLock) {
            if (this.mCurMetaItemInfo == null || ((Long) this.mCurMetaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER))
                    .longValue() < ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue()) {
                this.mCurMetaItemInfo = metaItemInfo;
            }

            long timestamp = ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            ImageCategory category;

            if (this.mProcessMap.containsKey(timestamp)) {
                category = this.mProcessMap.get(timestamp);
                if (category.mbAlreadySendAps) {
                    this.mProcessMap.remove(timestamp);
                    if (metaItemInfo.mImageBuffer != null) {
                        metaItemInfo.mImageBuffer.close();
                    }
                    return;
                } else if (category.mMetaItem == null || category.mMetaItem.mImageBuffer == null) {
                    category.mMetaItem = metaItemInfo;
                }
            } else {
                category = new ImageCategory();
                category.mMetaItem = metaItemInfo;
                this.mProcessMap.put(timestamp, category);
            }

            if (category.isValid()) {
                checkImageOverflow(timestamp);
                this.mProcessMap.remove(timestamp);
                sendImageAndMetaToAps(timestamp, category);
            }
        }
    }

    protected boolean dropFrame(long frameNumber) {
        synchronized (this.mQueueLock) {
            if (!this.mProcessMap.isEmpty()) {
                Optional<Long> firstTimestamp = this.mProcessMap.keySet().stream().sorted().findFirst();
                if (firstTimestamp.isPresent()) {
                    Long timestamp = firstTimestamp.get();
                    this.mProcessMap.remove(timestamp).releaseImageItemList();
                    ApsAdapterLog.i(TAG, "dropFrame, frameNumber: " + frameNumber + ", timestamp: " + timestamp, true);

                    if (this.mApsServiceListener != null) {
                        this.mApsServiceListener.reportDataToDcs(StaticsConstant.EventType.ABNORMAL_DISPLAY,
                                "abnormal_preview", 4);
                    }
                }
            }
        }
        return true;
    }

    public void videoSnapshot(ApsAdapterListener.CaptureCallback captureCallback,
            ApsCameraRequestTag apsCameraRequestTag) {
        this.mCaptureRequestList.add(new CaptureRequest(captureCallback, apsCameraRequestTag));
    }

    private int addPreviewFrameBuff(ImageCategory imageCategory) {
        synchronized (this.mPermitLock) {
            if (!this.mbPermit) {
                imageCategory.releaseImageItemList();
                return 0;
            }

            synchronized (this.mQueueLock) {
                ImageCategory.ImageItemInfo imageItem = imageCategory.mImageItemList.get(0);
                ImageCategory.MetaItemInfo metaItem = imageCategory.mMetaItem != null ? imageCategory.mMetaItem
                        : new ImageCategory.MetaItemInfo();

                ApsParameters apsParams = new ApsParameters();
                if (this.mImageProcessListener != null) {
                    apsParams.setAll(this.mImageProcessListener.fillApsParameters(imageCategory, 2, false));
                }

                List<ImageCategory.ImageItemInfo> imageList = imageCategory.mImageItemList;
                ApsResult.ImageBuffer[] buffers = new ApsResult.ImageBuffer[imageList.size()];
                int[] roles = new int[imageList.size()];

                for (int i = 0; i < imageList.size(); i++) {
                    try {
                        ImageCategory.ImageItemInfo info = imageList.get(i);
                        buffers[i] = info.mImageBuffer;
                        roles[i] = ((Integer) info.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                    } catch (Exception e) {
                        ApsAdapterLog.e(TAG, "addPreviewFrameBuff error.", e);
                    }
                }

                long frameNumber = -1;
                if (imageCategory.mbNeedMatchTimeStamp) {
                    CaptureResult result = (CaptureResult) metaItem.get(ApsParameters.KEY_CAPTURE_RESULT);
                    if (result != null) {
                        frameNumber = result.getFrameNumber();
                    }
                } else {
                    Long fn = (Long) metaItem.get(ApsParameters.KEY_FRAME_NUMBER);
                    if (fn != null) {
                        frameNumber = fn.longValue();
                    }
                }

                long timestamp = ((Long) imageItem.get(ApsParameters.KEY_TIME_STAMP)).longValue();

                ApsPreviewParam previewParam = new ApsPreviewParam(frameNumber, apsParams.getParameters(),
                        timestamp, buffers,
                        (CaptureResult) metaItem.get(ApsParameters.KEY_CAPTURE_RESULT),
                        (ArrayMap) metaItem.get(ApsParameters.KEY_META_MAP), metaItem.mImageBuffer, roles,
                        ((Boolean) imageItem.get(ApsParameters.KEY_NEED_META_DATA)).booleanValue(),
                        metaItem.get(ApsParameters.KEY_ITEM_INFO_TYPE) == ImageCategory.ItemInfoType.VIDEO, false,
                        0L,
                        metaItem.mImageBuffer == null || ((Long) metaItem.get(ApsParameters.KEY_TIME_STAMP))
                                .longValue() == metaItem.mImageBuffer.getTimestamp(),
                        (String) metaItem.get(ApsParameters.KEY_CAPTURE_MODE));

                if (this.mImageProcessListener != null) {
                    this.mImageProcessListener.onPreviewFrameProcessStarted(frameNumber, timestamp);
                }

                return this.mApsInterface.addPreviewFrameBuff(previewParam, null);
            }
        }
    }

    protected void onDecisionControlData(final ApsAdapterDecision.DecisionControlData decisionData) {
        if (this.mApsInterface == null || decisionData.mDecisionCallback == null) {
            return;
        }

        getDecisionHandler().removeCallbacksAndMessages(null);
        getDecisionHandler().post(() -> {
            ApsPreviewDecisionParam decisionParam = new ApsPreviewDecisionParam(
                    decisionData.mZoomValue, decisionData.mCaptureResult,
                    decisionData.mLogicCameraType, decisionData.mCameraId,
                    Integer.parseInt(decisionData.mLogicCameraId), decisionData.mPiEnable,
                    decisionData.mAlgoVisualizationEnable, decisionData.mPictureVisualizationEnable,
                    decisionData.mTripodEnable, decisionData.mUltraHighResolutionEnable,
                    decisionData.mFilterEnable, decisionData.mCaptureMode,
                    decisionData.mNeonEnable, decisionData.mSCPEnable,
                    decisionData.mFaceBeautyEnable, decisionData.mSuperRawEnable,
                    decisionData.mStreamerEnable, decisionData.mRecordingCapture,
                    decisionData.mAlgoHashMap);

            decisionParam.setAvailMem(decisionData.mAvailMem);
            decisionData.mDecisionCallback.onDecisionResult(
                    mApsInterface.previewDecision(decisionParam));
        });
    }

    protected void init(ApsInitParameter parameter) {
        synchronized (this.mApsInitLock) {
            if (this.mImageProcessListener == null) {
                return;
            }

            ApsInitParameter refinedParam = this.mImageProcessListener.getApsInitParameter(parameter,
                    this.mInitParameter);

            if (refinedParam != null && this.mProcessHandler != null
                    && this.mProcessHandler.getLooper().getThread().isAlive()) {

                ApsAdapterLog.v(TAG, "init, mInitParameter: " + this.mInitParameter + ", parameter: " + parameter);
                this.mInitParameter = refinedParam;

                ApsParameters apsParams = new ApsParameters();
                apsParams.set(ApsParameters.KEY_PACKAGE_NAME, AlgoSwitchConfig.getPackageName());
                apsParams.set(ApsParameters.KEY_TOTAL_MEMORY, String.valueOf(AlgoSwitchConfig.getTotalMemory()));

                Context context = ApsContextHolder.getContext();
                if (context != null) {
                    apsParams.set(ApsParameters.KEY_AVAI_MEMORY, String.valueOf(ApsUtils.getAvailMemory(context)));
                }

                if (this.mImageProcessListener != null) {
                    apsParams.setAll(this.mImageProcessListener.fillApsParameters(parameter));
                }

                ApsInitParameter initParam = new ApsInitParameter();
                initParam.mParameters = apsParams.getParameters();
                initParam.mVendorTags = parameter.mVendorTags;
                initParam.mMetadata = (CameraMetadata) parameter.get(ApsParameters.KEY_CAMERA_CHARACTERISTICS);
                initParam.mApsModule = parameter.mApsModule;
                initParam.mInitAlgo = new String[refinedParam.mInitAlgo.length];
                initParam.mPreviewConfig = parameter.mPreviewConfig;
                initParam.mVideoSurface = parameter.mVideoSurface;
                initParam.mbHeicProcessInApp = parameter.mbHeicProcessInApp;

                for (int algoIdx = 0; algoIdx < refinedParam.mInitAlgo.length; algoIdx++) {
                    initParam.mInitAlgo[algoIdx] = refinedParam.mInitAlgo[algoIdx];
                }

                if (this.mApsInterface != null) {
                    this.mApsInterface.initAlgo(initParam);
                    this.mFrameNumber = -1L;
                }
            }
        }
    }

    protected void unInit(int module) {
        synchronized (this.mApsInitLock) {
            ApsAdapterLog.v(TAG, "unInit, module: " + module);

            if (this.mApsInterface != null) {
                this.mApsInterface.unInitAlgo(module);
            }

            if (1 == module) {
                this.mInitParameter = null;
            } else if (3 == module && this.mInitParameter != null) {
                this.mInitParameter.remove(ApsParameters.KEY_PREVIEW_SIZE);
            }
        }
    }

    protected void onPreviewReceived(ApsResult result) {
        if (this.mApsServiceListener == null) {
            return;
        }

        ApsResult.ImageBuffer imageBuffer = result.getImageBuffer();

        if (result.getMetaImage() != null && result.mMetaImageRefCounter != null) {
            this.mMetaImageRefCounter = result.mMetaImageRefCounter;

            synchronized (this.mQueueLock) {
                boolean metaValid = result.mMetaImageRefCounter.setMetaImageRef(result.getMetaImage(), null, true);

                if (metaValid) {
                    result.mMetaImageRefCounter.setMetaImageRef(this.mMetaImage, null, false);
                    this.mMetaImage = result.getMetaImage();
                } else {
                    closeImageBuffer(imageBuffer);
                    ApsAdapterLog.w(TAG, "onPreviewReceived, metadata invalid, drop it");
                    return;
                }
            }
        }

        try {
            ApsTotalResult totalResult = new ApsTotalResult(result.mMetadata, result.getMetaImage(),
                    result.mMetaImageRefCounter, result.mFrameId);

            if (imageBuffer != null) {
                imageBuffer.setApsInterface(this.mApsInterface);

                if (!this.mCaptureRequestList.isEmpty()) {
                    imageBuffer.addRef();
                    CaptureRequest request = this.mCaptureRequestList.remove(0);

                    ApsAdapterLog.v(TAG,
                            "onPreviewReceived, captureRequest: " + request + " mMetadata:" + result.mMetadata);

                    if (request != null) {
                        if (result.mMetaImageRefCounter != null) {
                            result.mMetaImageRefCounter.setMetaImageRef(result.getMetaImage(), null, true);
                        }
                        ApsTotalResult snapshotResult = new ApsTotalResult(result.mMetadata,
                                result.getMetaImage(), result.mMetaImageRefCounter, result.mFrameId);
                        request.mCaptureCallback.onApsCaptureStarted(result.mIdentity);
                        request.mCaptureCallback.onApsCaptureCompleted(result, snapshotResult, request.mRequestTag);
                    }
                }
            }
            this.mApsServiceListener.onPreviewReceived(result, totalResult);

        } catch (IllegalStateException e) {
            ApsAdapterLog.w(TAG, "onPreviewReceived, create ApsTotalResult fail, maybe image already closed, drop it",
                    e);
            closeImageBuffer(imageBuffer);
        }
    }

    private void closeImageBuffer(ApsResult.ImageBuffer buffer) {
        if (buffer != null) {
            buffer.close();
        }
    }

    protected void flushImage() {
        synchronized (this.mQueueLock) {
            Iterator<Map.Entry<Long, ImageCategory>> iterator = this.mProcessMap.entrySet().iterator();
            while (iterator.hasNext()) {
                ImageCategory category = iterator.next().getValue();
                if (category != null && !category.mbAlreadySendAps) {
                    category.releaseImageItemList();
                }
                iterator.remove();
            }

            if (this.mMetaImageRefCounter != null) {
                this.mMetaImageRefCounter.setMetaImageRef(this.mMetaImage, null, false);
                this.mMetaImage = null;
            }
            this.mCurMetaItemInfo = null;
        }

        if (this.mApsInterface != null) {
            this.mApsInterface.flushImage();
        }
    }

    protected void destroy() {
        if (this.mProcessHandler != null) {
            this.mProcessHandler.getLooper().quitSafely();
            this.mProcessHandler = null;
        }
        if (this.mDecisionHandler != null) {
            this.mDecisionHandler.getLooper().quitSafely();
            this.mDecisionHandler = null;
        }
    }

    private void checkImageOverflow(long timestamp) {
        synchronized (this.mQueueLock) {
            int overflowCount = this.mProcessMap.size() - MAX_INFLIGHT_IMAGE_NUMBER;
            if (overflowCount > 0) {
                List<Long> overflowTimestamps = new ArrayList<>();
                for (Long ts : this.mProcessMap.keySet()) {
                    if (timestamp > ts) {
                        overflowTimestamps.add(ts);
                    }
                }

                for (Long ts : overflowTimestamps) {
                    ImageCategory removedCategory = this.mProcessMap.remove(ts);
                    ApsAdapterLog.v(TAG, "checkImageOverflow, time: " + ts, true);

                    if (removedCategory != null && !removedCategory.mbAlreadySendAps) {
                        removedCategory.releaseImageItemList();
                    }

                    if (this.mApsServiceListener != null) {
                        this.mApsServiceListener.reportDataToDcs(StaticsConstant.EventType.ABNORMAL_DISPLAY,
                                "abnormal_preview", 4);
                    }
                }
            }
        }
    }

    private void checkMetaImageOverflow(long timestamp) {
        if (this.mProcessMap.size() - MAX_INFLIGHT_IMAGE_NUMBER > 0) {
            long targetTimestamp = 0;
            for (Long ts : this.mProcessMap.keySet()) {
                if (timestamp > ts) {
                    targetTimestamp = ts;
                }
            }

            ImageCategory category = this.mProcessMap.remove(targetTimestamp);
            ApsAdapterLog.v(TAG, "checkMetaImageOverflow, time: " + targetTimestamp);

            if (category != null && !category.mbAlreadySendAps && category.mMetaItem != null
                    && category.mMetaItem.mImageBuffer != null) {
                category.mMetaItem.mImageBuffer.close();
                category.mMetaItem = null;
            }
        }
    }

    private class ProcessHandler extends Handler {
        private ProcessHandler(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message msg) {
            if (msg.what == MSG_APS_ADD_PREVIEW_FRAME) {
                if (msg.obj instanceof ImageCategory) {
                    ImageCategory category = (ImageCategory) msg.obj;
                    ImageCategory.MetaItemInfo metaInfo = category.mMetaItem;

                    if (!category.mbNeedMatchTimeStamp && metaInfo != null) {
                        Long frameNumObj = (Long) metaInfo.get(ApsParameters.KEY_FRAME_NUMBER);
                        if (frameNumObj != null && frameNumObj.longValue() <= mFrameNumber) {
                            long correctedFrameNum = (mFrameNumber == -1) ? FIRST_PREVIEW_FRAME_NUMBER : mFrameNumber;
                            metaInfo.setParameter(ApsParameters.KEY_FRAME_NUMBER, correctedFrameNum);
                        }
                    }

                    if (mApsInterface.isApsPreviewInit()) {
                        long currentFrameNum = (metaInfo != null)
                                ? ((Long) metaInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue()
                                : mFrameNumber;

                        if (metaInfo == null || !category.mbNeedMatchTimeStamp || currentFrameNum >= mFrameNumber
                                || metaInfo.mImageBuffer != null) {

                            addPreviewFrameBuff(category);
                            mFrameNumber = currentFrameNum;
                            return;
                        }
                    }

                    ApsAdapterLog.w(TAG, "handleMessage, mbNeedMatchTimeStamp: " + category.mbNeedMatchTimeStamp
                            + " drop this frame because of wrong frame order.");
                    category.releaseImageItemList();
                } else {
                    ApsAdapterLog.e(TAG,
                            "handleMessage, error msg object type: " + (msg.obj == null ? "null" : msg.obj.getClass()));
                }
            } else {
                ApsAdapterLog.e(TAG, "handleMessage, unknown msg type: " + msg.what);
            }
        }
    }

    private static class CaptureRequest {
        private final ApsAdapterListener.CaptureCallback mCaptureCallback;
        private final ApsCameraRequestTag mRequestTag;

        private CaptureRequest(ApsAdapterListener.CaptureCallback callback, ApsCameraRequestTag tag) {
            this.mCaptureCallback = callback;
            this.mRequestTag = tag;
        }
    }
}
