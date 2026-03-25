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

/* JADX INFO: loaded from: classes.dex */
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
    private List<CaptureRequest> mCaptureRequestList = new CopyOnWriteArrayList();
    private long mFrameNumber = -1;

    protected ApsPreviewAdapterImpl(ApsInterface apsInterface,
            ApsAdapterInterface.ImageProcessListener imageProcessListener) {
        this.mApsInterface = null;
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
        CameraHandlerThread cameraHandlerThread = null;
        Object[] objArr = null;
        if (this.mProcessHandler == null) {
            CameraHandlerThread cameraHandlerThread2 = new CameraHandlerThread("PreviewProcessThread");
            cameraHandlerThread2.enableUxState();
            cameraHandlerThread2.start();
            this.mProcessHandler = new ProcessHandler(cameraHandlerThread2.getLooper());
            cameraHandlerThread = cameraHandlerThread2;
        }
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("createProcessThread, thread id: ");
        sb.append(cameraHandlerThread == null ? 0 : cameraHandlerThread.getThreadId());
        ApsAdapterLog.v(str, sb.toString());
    }

    private void createDecisionThread() {
        HandlerThread handlerThread;
        if (this.mDecisionHandler == null) {
            ApsAdapterLog.traceBeginSection("createDecisionHandler");
            handlerThread = new HandlerThread("PreviewDecisionThread");
            handlerThread.start();
            this.mDecisionHandler = new Handler(handlerThread.getLooper());
            ApsAdapterLog.traceEndSection("createDecisionHandler");
        } else {
            handlerThread = null;
        }
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("createDecisionThread, thread id: ");
        sb.append(handlerThread == null ? 0 : handlerThread.getThreadId());
        ApsAdapterLog.v(str, sb.toString());
    }

    public Handler getDecisionHandler() {
        if (this.mDecisionHandler == null) {
            createDecisionThread();
        }
        return this.mDecisionHandler;
    }

    private boolean checkSendFrames(long j, ImageCategory imageCategory) {
        Set set = (Set) imageCategory.mImageItemList.get(0).get(ApsParameters.KEY_FRAMES_CAN_NOT_SKIP);
        if (set != null) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                long jLongValue = ((Long) it.next()).longValue();
                ImageCategory imageCategory2 = this.mProcessMap.get(Long.valueOf(jLongValue));
                if (imageCategory2 != null && !imageCategory2.mbAlreadySendAps
                        && !imageCategory2.mImageItemList.isEmpty() && jLongValue < j) {
                    ApsAdapterLog.i(TAG, "checkSendFrames, stop sending frame " + j + " to avoid skip " + jLongValue
                            + " which is marked by ApsParameters.KEY_FRAMES_CAN_NOT_SKIP");
                    imageCategory2.mbHoldSendAps = true;
                    imageCategory.mbNeedReSendAps = true;
                    this.mProcessMap.put(Long.valueOf(j), imageCategory);
                    return false;
                }
            }
        }
        return true;
    }

    private void checkReSendFrames(ImageCategory imageCategory) {
        if (imageCategory.mbHoldSendAps) {
            ArrayList arrayList = new ArrayList();
            Iterator<Map.Entry<Long, ImageCategory>> it = this.mProcessMap.entrySet().iterator();
            while (it != null && it.hasNext()) {
                Map.Entry<Long, ImageCategory> next = it.next();
                if (!next.getValue().mbAlreadySendAps && next.getValue().mbNeedReSendAps) {
                    arrayList.add(next.getKey());
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                long jLongValue = ((Long) it2.next()).longValue();
                Message messageObtainMessage = this.mProcessHandler.obtainMessage(2);
                messageObtainMessage.obj = this.mProcessMap.remove(Long.valueOf(jLongValue));
                messageObtainMessage.sendToTarget();
                ApsAdapterLog.i(TAG, "checkReSendFrames, resend frame " + jLongValue);
            }
        }
    }

    private void sendImageAndMetaToAps(long j, ImageCategory imageCategory) {
        if (checkSendFrames(j, imageCategory)) {
            imageCategory.mbAlreadySendAps = true;
            Message messageObtainMessage = this.mProcessHandler.obtainMessage(2);
            messageObtainMessage.obj = imageCategory;
            messageObtainMessage.sendToTarget();
        }
        checkReSendFrames(imageCategory);
    }

    public void setPermitProcess(boolean z) {
        synchronized (this.mPermitLock) {
            if (this.mbPermit.booleanValue() != z) {
                ApsAdapterLog.d(TAG, "setPermitProcess, mbPermit: " + this.mbPermit + " => " + z);
            }
            this.mbPermit = Boolean.valueOf(z);
        }
    }

    private boolean checkNeedMatchTimeStamp(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory imageCategory) {
        if (imageCategory.mbNeedMatchTimeStamp || imageCategory.mMetaItem != null
                || ((Integer) imageItemInfo.get(ApsParameters.KEY_PREVIEW_STREAM_NUMBER))
                        .intValue() != imageCategory.mImageItemList.size()) {
            return false;
        }
        ImageCategory.MetaItemInfo metaItemInfo = this.mCurMetaItemInfo;
        if (metaItemInfo != null && metaItemInfo.mImageBuffer == null) {
            return true;
        }
        ImageCategory.MetaItemInfo metaItemInfo2 = this.mCurMetaItemInfo;
        if (metaItemInfo2 == null || metaItemInfo2.mImageBuffer == null || this.mMetaImage == null) {
            return false;
        }
        ImageCategory.MetaItemInfo metaItemInfo3 = this.mCurMetaItemInfo;
        ImageReader imageReader = metaItemInfo3.mImageBuffer.getImageReader();
        Image image = this.mMetaImage;
        metaItemInfo3.mImageBuffer = new ApsResult.ImageBuffer(imageReader, image, ApsUtils.getHardwareBuffer(image),
                this.mMetaImage.getTimestamp());
        this.mMetaImageRefCounter.setMetaImageRef(this.mMetaImage, null, true);
        return true;
    }

    public void setApsConnected(boolean z) {
        ApsAdapterLog.d(TAG, "setApsConnected, mbApsConnected: " + this.mbApsConnected + " => " + z);
        this.mbApsConnected = Boolean.valueOf(z);
    }

    protected void addImage(ImageCategory.ImageItemInfo imageItemInfo) {
        ImageCategory imageCategory;
        if (!this.mbApsConnected.booleanValue()) {
            checkImageOverflow((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP));
            return;
        }
        synchronized (this.mQueueLock) {
            long jLongValue = ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            if (this.mProcessMap.containsKey(Long.valueOf(jLongValue))) {
                imageCategory = this.mProcessMap.get(Long.valueOf(jLongValue));
                imageCategory.mImageItemList.add(imageItemInfo);
            } else {
                imageCategory = new ImageCategory();
                imageCategory.mImageItemList.add(imageItemInfo);
                this.mProcessMap.put(Long.valueOf(jLongValue), imageCategory);
            }
            boolean zIsValid = imageCategory.isValid();
            imageCategory.mbNeedMatchTimeStamp = ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_MATCH_TIME_STAMP))
                    .booleanValue();
            if (zIsValid || checkNeedMatchTimeStamp(imageItemInfo, imageCategory)) {
                checkImageOverflow(Long.valueOf(jLongValue));
                if (zIsValid) {
                    this.mProcessMap.remove(Long.valueOf(jLongValue));
                } else {
                    imageCategory.mMetaItem = this.mCurMetaItemInfo.copy();
                    imageCategory.mMetaItem.setParameter(ApsParameters.KEY_TIME_STAMP, Long.valueOf(jLongValue));
                }
                sendImageAndMetaToAps(jLongValue, imageCategory);
            }
        }
    }

    protected void addMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        ImageCategory imageCategory;
        synchronized (this.mQueueLock) {
            ImageCategory.MetaItemInfo metaItemInfo2 = this.mCurMetaItemInfo;
            if (metaItemInfo2 == null || ((Long) metaItemInfo2.get(ApsParameters.KEY_FRAME_NUMBER))
                    .longValue() < ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue()) {
                this.mCurMetaItemInfo = metaItemInfo;
            }
            long jLongValue = ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            if (this.mProcessMap.containsKey(Long.valueOf(jLongValue))) {
                imageCategory = this.mProcessMap.get(Long.valueOf(jLongValue));
                if (imageCategory.mbAlreadySendAps) {
                    this.mProcessMap.remove(Long.valueOf(jLongValue));
                    if (metaItemInfo.mImageBuffer != null) {
                        metaItemInfo.mImageBuffer.close();
                    }
                    return;
                } else if (imageCategory.mMetaItem == null || imageCategory.mMetaItem.mImageBuffer == null) {
                    imageCategory.mMetaItem = metaItemInfo;
                }
            } else {
                imageCategory = new ImageCategory();
                imageCategory.mMetaItem = metaItemInfo;
                this.mProcessMap.put(Long.valueOf(jLongValue), imageCategory);
            }
            if (imageCategory.isValid()) {
                checkImageOverflow(Long.valueOf(jLongValue));
                this.mProcessMap.remove(Long.valueOf(jLongValue));
                sendImageAndMetaToAps(jLongValue, imageCategory);
            }
        }
    }

    protected boolean dropFrame(long j) {
        synchronized (this.mQueueLock) {
            if (!this.mProcessMap.isEmpty()) {
                Optional<Long> optionalFindFirst = this.mProcessMap.keySet().stream().sorted().findFirst();
                if (optionalFindFirst.isPresent()) {
                    Long l = optionalFindFirst.get();
                    this.mProcessMap.remove(l).releaseImageItemList();
                    ApsAdapterLog.i(TAG, "dropFrame, frameNumber: " + j + ", timestamp: " + l, true);
                    ApsAdapterListener.ApsServiceListener apsServiceListener = this.mApsServiceListener;
                    if (apsServiceListener != null) {
                        apsServiceListener.reportDataToDcs(StaticsConstant.EventType.ABNORMAL_DISPLAY,
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

    /* JADX INFO: Access modifiers changed from: private */
    public int addPreviewFrameBuff(ImageCategory imageCategory) {
        int iAddPreviewFrameBuff;
        synchronized (this.mPermitLock) {
            if (!this.mbPermit.booleanValue()) {
                imageCategory.releaseImageItemList();
                return 0;
            }
            synchronized (this.mQueueLock) {
                System.currentTimeMillis();
                ImageCategory.ImageItemInfo imageItemInfo = imageCategory.mImageItemList.get(0);
                ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem != null ? imageCategory.mMetaItem
                        : new ImageCategory.MetaItemInfo();
                ApsParameters apsParameters = new ApsParameters();
                ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
                if (imageProcessListener != null) {
                    apsParameters.setAll(imageProcessListener.fillApsParameters(imageCategory, 2, false));
                }
                List<ImageCategory.ImageItemInfo> list = imageCategory.mImageItemList;
                ApsResult.ImageBuffer[] imageBufferArr = new ApsResult.ImageBuffer[list.size()];
                int[] iArr = new int[list.size()];
                iAddPreviewFrameBuff = -1;
                for (int i = 0; i < list.size(); i++) {
                    try {
                        ImageCategory.ImageItemInfo imageItemInfo2 = list.get(i);
                        imageBufferArr[i] = imageItemInfo2.mImageBuffer;
                        iArr[i] = ((Integer) imageItemInfo2.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                    } catch (Exception e) {
                        ApsAdapterLog.e(TAG, "addPreviewFrameBuff error.", e);
                    }
                }
                long jLongValue = -1;
                if (imageCategory.mbNeedMatchTimeStamp) {
                    CaptureResult captureResult = (CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT);
                    if (captureResult != null) {
                        jLongValue = captureResult.getFrameNumber();
                    }
                } else {
                    Long l = (Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER);
                    if (l != null) {
                        jLongValue = l.longValue();
                    }
                }
                long j = jLongValue;
                ApsPreviewParam apsPreviewParam = new ApsPreviewParam(j, apsParameters.getParameters(),
                        ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue(), imageBufferArr,
                        (CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT),
                        (ArrayMap) metaItemInfo.get(ApsParameters.KEY_META_MAP), metaItemInfo.mImageBuffer, iArr,
                        ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_META_DATA)).booleanValue(),
                        metaItemInfo.get(ApsParameters.KEY_ITEM_INFO_TYPE) == ImageCategory.ItemInfoType.VIDEO, false,
                        0L,
                        metaItemInfo.mImageBuffer == null || ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP))
                                .longValue() == metaItemInfo.mImageBuffer.getTimestamp(),
                        (String) metaItemInfo.get(ApsParameters.KEY_CAPTURE_MODE));
                ApsAdapterInterface.ImageProcessListener imageProcessListener2 = this.mImageProcessListener;
                if (imageProcessListener2 != null) {
                    imageProcessListener2.onPreviewFrameProcessStarted(j,
                            (Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP));
                }
                iAddPreviewFrameBuff = this.mApsInterface.addPreviewFrameBuff(apsPreviewParam, null);
            }
            return iAddPreviewFrameBuff;
        }
    }

    protected void onDecisionControlData(final ApsAdapterDecision.DecisionControlData decisionControlData) {
        if (this.mApsInterface == null || decisionControlData.mDecisionCallback == null) {
            return;
        }
        getDecisionHandler().removeCallbacksAndMessages(null);
        getDecisionHandler().post(new Runnable() { // from class:
                                                   // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewAdapterImpl.1
            @Override // java.lang.Runnable
            public void run() {
                ApsPreviewDecisionParam apsPreviewDecisionParam = new ApsPreviewDecisionParam(
                        decisionControlData.mZoomValue, decisionControlData.mCaptureResult,
                        decisionControlData.mLogicCameraType, decisionControlData.mCameraId,
                        Integer.parseInt(decisionControlData.mLogicCameraId), decisionControlData.mPiEnable,
                        decisionControlData.mAlgoVisualizationEnable, decisionControlData.mPictureVisualizationEnable,
                        decisionControlData.mTripodEnable, decisionControlData.mUltraHighResolutionEnable,
                        decisionControlData.mFilterEnable, decisionControlData.mCaptureMode,
                        decisionControlData.mNeonEnable, decisionControlData.mSCPEnable,
                        decisionControlData.mFaceBeautyEnable, decisionControlData.mSuperRawEnable,
                        decisionControlData.mStreamerEnable, decisionControlData.mRecordingCapture,
                        decisionControlData.mAlgoHashMap);
                apsPreviewDecisionParam.setAvailMem(decisionControlData.mAvailMem);
                decisionControlData.mDecisionCallback.onDecisionResult(
                        ApsPreviewAdapterImpl.this.mApsInterface.previewDecision(apsPreviewDecisionParam));
            }
        });
    }

    protected void init(ApsInitParameter apsInitParameter) {
        ProcessHandler processHandler;
        synchronized (this.mApsInitLock) {
            ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
            if (imageProcessListener == null) {
                return;
            }
            ApsInitParameter apsInitParameter2 = imageProcessListener.getApsInitParameter(apsInitParameter,
                    this.mInitParameter);
            if (apsInitParameter2 != null && (processHandler = this.mProcessHandler) != null
                    && processHandler.getLooper().getThread().isAlive()) {
                ApsAdapterLog.v(TAG,
                        "init, mInitParameter: " + this.mInitParameter + ", parameter: " + apsInitParameter);
                this.mInitParameter = apsInitParameter2;
                ApsParameters apsParameters = new ApsParameters();
                apsParameters.set(ApsParameters.KEY_PACKAGE_NAME, AlgoSwitchConfig.getPackageName());
                apsParameters.set(ApsParameters.KEY_TOTAL_MEMORY, String.valueOf(AlgoSwitchConfig.getTotalMemory()));
                Context context = ApsContextHolder.getContext();
                if (context != null) {
                    apsParameters.set(ApsParameters.KEY_AVAI_MEMORY, String.valueOf(ApsUtils.getAvailMemory(context)));
                }
                ApsAdapterInterface.ImageProcessListener imageProcessListener2 = this.mImageProcessListener;
                if (imageProcessListener2 != null) {
                    apsParameters.setAll(imageProcessListener2.fillApsParameters(apsInitParameter));
                }
                ApsInitParameter apsInitParameter3 = new ApsInitParameter();
                apsInitParameter3.mParameters = apsParameters.getParameters();
                apsInitParameter3.mVendorTags = apsInitParameter.mVendorTags;
                apsInitParameter3.mMetadata = (CameraMetadata) apsInitParameter
                        .get(ApsParameters.KEY_CAMERA_CHARACTERISTICS);
                apsInitParameter3.mApsModule = apsInitParameter.mApsModule;
                apsInitParameter3.mInitAlgo = new String[apsInitParameter2.mInitAlgo.length];
                apsInitParameter3.mPreviewConfig = apsInitParameter.mPreviewConfig;
                apsInitParameter3.mVideoSurface = apsInitParameter.mVideoSurface;
                apsInitParameter3.mbHeicProcessInApp = apsInitParameter.mbHeicProcessInApp;
                String[] strArr = apsInitParameter2.mInitAlgo;
                int length = strArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    apsInitParameter3.mInitAlgo[i2] = strArr[i];
                    i++;
                    i2++;
                }
                ApsInterface apsInterface = this.mApsInterface;
                if (apsInterface != null) {
                    apsInterface.initAlgo(apsInitParameter3);
                    this.mFrameNumber = -1L;
                }
            }
        }
    }

    protected void unInit(int i) {
        ApsInitParameter apsInitParameter;
        synchronized (this.mApsInitLock) {
            ApsAdapterLog.v(TAG, "unInit, module: " + i);
            ApsInterface apsInterface = this.mApsInterface;
            if (apsInterface != null) {
                apsInterface.unInitAlgo(i);
            }
            if (1 == i) {
                this.mInitParameter = null;
            } else if (3 == i && (apsInitParameter = this.mInitParameter) != null) {
                apsInitParameter.remove(ApsParameters.KEY_PREVIEW_SIZE);
            }
        }
    }

    protected void onPreviewReceived(ApsResult apsResult) {
        boolean metaImageRef;
        if (this.mApsServiceListener != null) {
            ApsResult.ImageBuffer imageBuffer = apsResult.getImageBuffer();
            if (apsResult.getMetaImage() != null && apsResult.mMetaImageRefCounter != null) {
                this.mMetaImageRefCounter = apsResult.mMetaImageRefCounter;
                synchronized (this.mQueueLock) {
                    metaImageRef = apsResult.mMetaImageRefCounter.setMetaImageRef(apsResult.getMetaImage(), null, true);
                    if (metaImageRef) {
                        apsResult.mMetaImageRefCounter.setMetaImageRef(this.mMetaImage, null, false);
                        this.mMetaImage = apsResult.getMetaImage();
                    }
                }
                if (!metaImageRef) {
                    closeImageBuffer(imageBuffer);
                    ApsAdapterLog.w(TAG, "onPreviewReceived, metadata invalid, drop it");
                    return;
                }
            }
            try {
                ApsTotalResult apsTotalResult = new ApsTotalResult(apsResult.mMetadata, apsResult.getMetaImage(),
                        apsResult.mMetaImageRefCounter, apsResult.mFrameId);
                if (imageBuffer != null) {
                    imageBuffer.setApsInterface(this.mApsInterface);
                    if (!this.mCaptureRequestList.isEmpty()) {
                        imageBuffer.addRef();
                        CaptureRequest captureRequestRemove = this.mCaptureRequestList.remove(0);
                        ApsAdapterLog.v(TAG, "onPreviewReceived, captureRequest: " + captureRequestRemove
                                + " mMetadata:" + apsResult.mMetadata);
                        if (captureRequestRemove != null) {
                            if (apsResult.mMetaImageRefCounter != null) {
                                apsResult.mMetaImageRefCounter.setMetaImageRef(apsResult.getMetaImage(), null, true);
                            }
                            ApsTotalResult apsTotalResult2 = new ApsTotalResult(apsResult.mMetadata,
                                    apsResult.getMetaImage(), apsResult.mMetaImageRefCounter, apsResult.mFrameId);
                            captureRequestRemove.mCaptureCallback.onApsCaptureStarted(apsResult.mIdentity);
                            captureRequestRemove.mCaptureCallback.onApsCaptureCompleted(apsResult, apsTotalResult2,
                                    captureRequestRemove.mRequestTag);
                        }
                    }
                }
                this.mApsServiceListener.onPreviewReceived(apsResult, apsTotalResult);
            } catch (IllegalStateException e) {
                e.printStackTrace();
                closeImageBuffer(imageBuffer);
                ApsAdapterLog.w(TAG,
                        "onPreviewReceived, create ApsTotalResult fail, maybe image already closed, drop it");
            }
        }
    }

    private void closeImageBuffer(ApsResult.ImageBuffer imageBuffer) {
        if (imageBuffer != null) {
            imageBuffer.close();
        }
    }

    protected void flushImage() {
        synchronized (this.mQueueLock) {
            Iterator<Map.Entry<Long, ImageCategory>> it = this.mProcessMap.entrySet().iterator();
            while (it.hasNext()) {
                ImageCategory value = it.next().getValue();
                if (value != null && !value.mbAlreadySendAps) {
                    value.releaseImageItemList();
                }
                it.remove();
            }
            synchronized (this.mQueueLock) {
                APSClient.MetaImageRefCounter metaImageRefCounter = this.mMetaImageRefCounter;
                if (metaImageRefCounter != null) {
                    metaImageRefCounter.setMetaImageRef(this.mMetaImage, null, false);
                    this.mMetaImage = null;
                }
                this.mCurMetaItemInfo = null;
            }
        }
        ApsInterface apsInterface = this.mApsInterface;
        if (apsInterface != null) {
            apsInterface.flushImage();
        }
    }

    protected void destroy() {
        ProcessHandler processHandler = this.mProcessHandler;
        if (processHandler != null) {
            processHandler.getLooper().quitSafely();
            this.mProcessHandler = null;
        }
        Handler handler = this.mDecisionHandler;
        if (handler != null) {
            handler.getLooper().quitSafely();
            this.mDecisionHandler = null;
        }
    }

    private void checkImageOverflow(Long l) {
        synchronized (this.mQueueLock) {
            if (this.mProcessMap.size() - 6 > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<Map.Entry<Long, ImageCategory>> it = this.mProcessMap.entrySet().iterator();
                while (it != null && it.hasNext()) {
                    Map.Entry<Long, ImageCategory> next = it.next();
                    if (l.longValue() > next.getKey().longValue()) {
                        arrayList.add(next.getKey());
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    long jLongValue = ((Long) it2.next()).longValue();
                    ImageCategory imageCategoryRemove = this.mProcessMap.remove(Long.valueOf(jLongValue));
                    ApsAdapterLog.v(TAG, "checkImageOverflow, time: " + jLongValue, true);
                    if (imageCategoryRemove != null && !imageCategoryRemove.mbAlreadySendAps) {
                        imageCategoryRemove.releaseImageItemList();
                    }
                    ApsAdapterListener.ApsServiceListener apsServiceListener = this.mApsServiceListener;
                    if (apsServiceListener != null) {
                        apsServiceListener.reportDataToDcs(StaticsConstant.EventType.ABNORMAL_DISPLAY,
                                "abnormal_preview", 4);
                    }
                }
                arrayList.clear();
            }
        }
    }

    private void checkMetaImageOverflow(Long l) {
        if (this.mProcessMap.size() - 6 > 0) {
            long jLongValue = 0;
            Iterator<Map.Entry<Long, ImageCategory>> it = this.mProcessMap.entrySet().iterator();
            while (it != null && it.hasNext()) {
                Map.Entry<Long, ImageCategory> next = it.next();
                if (l.longValue() > next.getKey().longValue()) {
                    jLongValue = next.getKey().longValue();
                }
            }
            ImageCategory imageCategoryRemove = this.mProcessMap.remove(Long.valueOf(jLongValue));
            ApsAdapterLog.v(TAG, "checkMetaImageOverflow, time: " + jLongValue);
            if (imageCategoryRemove == null || imageCategoryRemove.mbAlreadySendAps
                    || imageCategoryRemove.mMetaItem == null || imageCategoryRemove.mMetaItem.mImageBuffer == null) {
                return;
            }
            imageCategoryRemove.mMetaItem.mImageBuffer.close();
            imageCategoryRemove.mMetaItem = null;
        }
    }

    private class ProcessHandler extends Handler {
        private ProcessHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 2) {
                if (message.obj != null && (message.obj instanceof ImageCategory)) {
                    ImageCategory imageCategory = (ImageCategory) message.obj;
                    ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem;
                    if (!imageCategory.mbNeedMatchTimeStamp && metaItemInfo != null
                            && ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER))
                                    .longValue() <= ApsPreviewAdapterImpl.this.mFrameNumber) {
                        if (-1 == ApsPreviewAdapterImpl.this.mFrameNumber) {
                            metaItemInfo.setParameter(ApsParameters.KEY_FRAME_NUMBER,
                                    ApsPreviewAdapterImpl.FIRST_PREVIEW_FRAME_NUMBER);
                        } else {
                            metaItemInfo.setParameter(ApsParameters.KEY_FRAME_NUMBER,
                                    Long.valueOf(ApsPreviewAdapterImpl.this.mFrameNumber));
                        }
                    }
                    if (ApsPreviewAdapterImpl.this.mApsInterface.isApsPreviewInit()
                            && (metaItemInfo == null || !imageCategory.mbNeedMatchTimeStamp
                                    || ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER))
                                            .longValue() >= ApsPreviewAdapterImpl.this.mFrameNumber
                                    || metaItemInfo.mImageBuffer != null)) {
                        ApsPreviewAdapterImpl.this.addPreviewFrameBuff(imageCategory);
                        ApsPreviewAdapterImpl apsPreviewAdapterImpl = ApsPreviewAdapterImpl.this;
                        apsPreviewAdapterImpl.mFrameNumber = metaItemInfo != null
                                ? ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue()
                                : apsPreviewAdapterImpl.mFrameNumber;
                        return;
                    }
                    ApsAdapterLog.w(ApsPreviewAdapterImpl.TAG, "handleMessage,mbNeedMatchTimeStamp: "
                            + imageCategory.mbNeedMatchTimeStamp + " drop this frame because of wrong frame order.");
                    imageCategory.releaseImageItemList();
                    return;
                }
                ApsAdapterLog.e(ApsPreviewAdapterImpl.TAG, "handleMessage, error msg: " + message.obj);
                return;
            }
            ApsAdapterLog.e(ApsPreviewAdapterImpl.TAG, "handleMessage, msg: " + message.what + " is not defined.");
        }
    }

    private class CaptureRequest {
        private ApsAdapterListener.CaptureCallback mCaptureCallback;
        private ApsCameraRequestTag mRequestTag;

        private CaptureRequest(ApsAdapterListener.CaptureCallback captureCallback,
                ApsCameraRequestTag apsCameraRequestTag) {
            this.mCaptureCallback = captureCallback;
            this.mRequestTag = apsCameraRequestTag;
        }
    }
}
