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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ApsPreviewAdapterImpl {
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

    /* JADX INFO: Access modifiers changed from: protected */
    public ApsPreviewAdapterImpl(ApsInterface apsInterface, ApsAdapterInterface.ImageProcessListener imageProcessListener) {
        this.mApsInterface = null;
        this.mApsInterface = apsInterface;
        this.mImageProcessListener = imageProcessListener;
        createProcessThread();
    }

    private void createProcessThread() {
        CameraHandlerThread cameraHandlerThread = null;
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
        Set<Long> set = (Set) imageCategory.mImageItemList.get(0).get(ApsParameters.KEY_FRAMES_CAN_NOT_SKIP);
        if (set != null) {
            for (Long l : set) {
                long longValue = l.longValue();
                ImageCategory imageCategory2 = this.mProcessMap.get(Long.valueOf(longValue));
                if (imageCategory2 != null && !imageCategory2.mbAlreadySendAps && !imageCategory2.mImageItemList.isEmpty() && longValue < j) {
                    String str = TAG;
                    ApsAdapterLog.i(str, "checkSendFrames, stop sending frame " + j + " to avoid skip " + longValue + " which is marked by ApsParameters.KEY_FRAMES_CAN_NOT_SKIP");
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
            ArrayList<Long> arrayList = new ArrayList();
            Iterator<Map.Entry<Long, ImageCategory>> it = this.mProcessMap.entrySet().iterator();
            while (it != null && it.hasNext()) {
                Map.Entry<Long, ImageCategory> next = it.next();
                if (!next.getValue().mbAlreadySendAps && next.getValue().mbNeedReSendAps) {
                    arrayList.add(next.getKey());
                }
            }
            for (Long l : arrayList) {
                long longValue = l.longValue();
                Message obtainMessage = this.mProcessHandler.obtainMessage(2);
                obtainMessage.obj = this.mProcessMap.remove(Long.valueOf(longValue));
                obtainMessage.sendToTarget();
                String str = TAG;
                ApsAdapterLog.i(str, "checkReSendFrames, resend frame " + longValue);
            }
        }
    }

    private void sendImageAndMetaToAps(long j, ImageCategory imageCategory) {
        if (checkSendFrames(j, imageCategory)) {
            imageCategory.mbAlreadySendAps = true;
            Message obtainMessage = this.mProcessHandler.obtainMessage(2);
            obtainMessage.obj = imageCategory;
            obtainMessage.sendToTarget();
        }
        checkReSendFrames(imageCategory);
    }

    public void setPermitProcess(boolean z) {
        synchronized (this.mPermitLock) {
            if (this.mbPermit.booleanValue() != z) {
                String str = TAG;
                ApsAdapterLog.d(str, "setPermitProcess, mbPermit: " + this.mbPermit + " => " + z);
            }
            this.mbPermit = Boolean.valueOf(z);
        }
    }

    private boolean checkNeedMatchTimeStamp(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory imageCategory) {
        if (!imageCategory.mbNeedMatchTimeStamp && imageCategory.mMetaItem == null && ((Integer) imageItemInfo.get(ApsParameters.KEY_PREVIEW_STREAM_NUMBER)).intValue() == imageCategory.mImageItemList.size()) {
            ImageCategory.MetaItemInfo metaItemInfo = this.mCurMetaItemInfo;
            if (metaItemInfo == null || metaItemInfo.mImageBuffer != null) {
                ImageCategory.MetaItemInfo metaItemInfo2 = this.mCurMetaItemInfo;
                if (metaItemInfo2 == null || metaItemInfo2.mImageBuffer == null || this.mMetaImage == null) {
                    return false;
                }
                ImageCategory.MetaItemInfo metaItemInfo3 = this.mCurMetaItemInfo;
                ImageReader imageReader = metaItemInfo3.mImageBuffer.getImageReader();
                Image image = this.mMetaImage;
                metaItemInfo3.mImageBuffer = new ApsResult.ImageBuffer(imageReader, image, ApsUtils.getHardwareBuffer(image), this.mMetaImage.getTimestamp());
                this.mMetaImageRefCounter.setMetaImageRef(this.mMetaImage, null, true);
                return true;
            }
            return true;
        }
        return false;
    }

    public void setApsConnected(boolean z) {
        String str = TAG;
        ApsAdapterLog.d(str, "setApsConnected, mbApsConnected: " + this.mbApsConnected + " => " + z);
        this.mbApsConnected = Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addImage(ImageCategory.ImageItemInfo imageItemInfo) {
        ImageCategory imageCategory;
        if (!this.mbApsConnected.booleanValue()) {
            checkImageOverflow((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP));
            return;
        }
        synchronized (this.mQueueLock) {
            long longValue = ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            if (this.mProcessMap.containsKey(Long.valueOf(longValue))) {
                imageCategory = this.mProcessMap.get(Long.valueOf(longValue));
                imageCategory.mImageItemList.add(imageItemInfo);
            } else {
                imageCategory = new ImageCategory();
                imageCategory.mImageItemList.add(imageItemInfo);
                this.mProcessMap.put(Long.valueOf(longValue), imageCategory);
            }
            boolean isValid = imageCategory.isValid();
            imageCategory.mbNeedMatchTimeStamp = ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_MATCH_TIME_STAMP)).booleanValue();
            if (isValid || checkNeedMatchTimeStamp(imageItemInfo, imageCategory)) {
                checkImageOverflow(Long.valueOf(longValue));
                if (isValid) {
                    this.mProcessMap.remove(Long.valueOf(longValue));
                } else {
                    imageCategory.mMetaItem = this.mCurMetaItemInfo.copy();
                    imageCategory.mMetaItem.setParameter(ApsParameters.KEY_TIME_STAMP, Long.valueOf(longValue));
                }
                sendImageAndMetaToAps(longValue, imageCategory);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        ImageCategory imageCategory;
        synchronized (this.mQueueLock) {
            ImageCategory.MetaItemInfo metaItemInfo2 = this.mCurMetaItemInfo;
            if (metaItemInfo2 == null || ((Long) metaItemInfo2.get(ApsParameters.KEY_FRAME_NUMBER)).longValue() < ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue()) {
                this.mCurMetaItemInfo = metaItemInfo;
            }
            long longValue = ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue();
            if (this.mProcessMap.containsKey(Long.valueOf(longValue))) {
                imageCategory = this.mProcessMap.get(Long.valueOf(longValue));
                if (imageCategory.mbAlreadySendAps) {
                    this.mProcessMap.remove(Long.valueOf(longValue));
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
                this.mProcessMap.put(Long.valueOf(longValue), imageCategory);
            }
            if (imageCategory.isValid()) {
                checkImageOverflow(Long.valueOf(longValue));
                this.mProcessMap.remove(Long.valueOf(longValue));
                sendImageAndMetaToAps(longValue, imageCategory);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean dropFrame(long j) {
        synchronized (this.mQueueLock) {
            if (!this.mProcessMap.isEmpty()) {
                Optional<Long> findFirst = this.mProcessMap.keySet().stream().sorted().findFirst();
                if (findFirst.isPresent()) {
                    Long l = findFirst.get();
                    this.mProcessMap.remove(l).releaseImageItemList();
                    String str = TAG;
                    ApsAdapterLog.i(str, "dropFrame, frameNumber: " + j + ", timestamp: " + l, true);
                    ApsAdapterListener.ApsServiceListener apsServiceListener = this.mApsServiceListener;
                    if (apsServiceListener != null) {
                        apsServiceListener.reportDataToDcs(StaticsConstant.EventType.ABNORMAL_DISPLAY, StaticsConstant.AbnormalDisplayKeys.KEY_ABNORMAL_PREVIEW, 4);
                    }
                }
            }
        }
        return true;
    }

    public void videoSnapshot(ApsAdapterListener.CaptureCallback captureCallback, ApsCameraRequestTag apsCameraRequestTag) {
        this.mCaptureRequestList.add(new CaptureRequest(captureCallback, apsCameraRequestTag));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int addPreviewFrameBuff(ImageCategory imageCategory) {
        int i;
        synchronized (this.mPermitLock) {
            if (!this.mbPermit.booleanValue()) {
                imageCategory.releaseImageItemList();
                return 0;
            }
            synchronized (this.mQueueLock) {
                System.currentTimeMillis();
                ImageCategory.ImageItemInfo imageItemInfo = imageCategory.mImageItemList.get(0);
                ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem != null ? imageCategory.mMetaItem : new ImageCategory.MetaItemInfo();
                ApsParameters apsParameters = new ApsParameters();
                ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
                if (imageProcessListener != null) {
                    apsParameters.setAll(imageProcessListener.fillApsParameters(imageCategory, 2, false));
                }
                List<ImageCategory.ImageItemInfo> list = imageCategory.mImageItemList;
                ApsResult.ImageBuffer[] imageBufferArr = new ApsResult.ImageBuffer[list.size()];
                int[] iArr = new int[list.size()];
                i = -1;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    try {
                        ImageCategory.ImageItemInfo imageItemInfo2 = list.get(i2);
                        imageBufferArr[i2] = imageItemInfo2.mImageBuffer;
                        iArr[i2] = ((Integer) imageItemInfo2.get(ApsParameters.KEY_IMAGE_ROLE)).intValue();
                    } catch (Exception e) {
                        ApsAdapterLog.e(TAG, "addPreviewFrameBuff error.", e);
                    }
                }
                long j = -1;
                if (imageCategory.mbNeedMatchTimeStamp) {
                    CaptureResult captureResult = (CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT);
                    if (captureResult != null) {
                        j = captureResult.getFrameNumber();
                    }
                } else {
                    Long l = (Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER);
                    if (l != null) {
                        j = l.longValue();
                    }
                }
                long j2 = j;
                ApsPreviewParam apsPreviewParam = new ApsPreviewParam(j2, apsParameters.getParameters(), ((Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue(), imageBufferArr, (CaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT), (ArrayMap) metaItemInfo.get(ApsParameters.KEY_META_MAP), metaItemInfo.mImageBuffer, iArr, ((Boolean) imageItemInfo.get(ApsParameters.KEY_NEED_META_DATA)).booleanValue(), metaItemInfo.get(ApsParameters.KEY_ITEM_INFO_TYPE) == ImageCategory.ItemInfoType.VIDEO, false, 0L, metaItemInfo.mImageBuffer == null || ((Long) metaItemInfo.get(ApsParameters.KEY_TIME_STAMP)).longValue() == metaItemInfo.mImageBuffer.getTimestamp(), (String) metaItemInfo.get(ApsParameters.KEY_CAPTURE_MODE));
                ApsAdapterInterface.ImageProcessListener imageProcessListener2 = this.mImageProcessListener;
                if (imageProcessListener2 != null) {
                    imageProcessListener2.onPreviewFrameProcessStarted(j2, (Long) imageItemInfo.get(ApsParameters.KEY_TIME_STAMP));
                }
                i = this.mApsInterface.addPreviewFrameBuff(apsPreviewParam, null);
            }
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDecisionControlData(final ApsAdapterDecision.DecisionControlData decisionControlData) {
        if (this.mApsInterface == null || decisionControlData.mDecisionCallback == null) {
            return;
        }
        getDecisionHandler().removeCallbacksAndMessages(null);
        getDecisionHandler().post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewAdapterImpl.1
            @Override // java.lang.Runnable
            public void run() {
                ApsPreviewDecisionParam apsPreviewDecisionParam = new ApsPreviewDecisionParam(decisionControlData.mZoomValue, decisionControlData.mCaptureResult, decisionControlData.mLogicCameraType, decisionControlData.mCameraId, Integer.parseInt(decisionControlData.mLogicCameraId), decisionControlData.mPiEnable, decisionControlData.mAlgoVisualizationEnable, decisionControlData.mPictureVisualizationEnable, decisionControlData.mTripodEnable, decisionControlData.mUltraHighResolutionEnable, decisionControlData.mFilterEnable, decisionControlData.mCaptureMode, decisionControlData.mNeonEnable, decisionControlData.mSCPEnable, decisionControlData.mFaceBeautyEnable, decisionControlData.mSuperRawEnable, decisionControlData.mStreamerEnable, decisionControlData.mRecordingCapture, decisionControlData.mAlgoHashMap);
                apsPreviewDecisionParam.setAvailMem(decisionControlData.mAvailMem);
                decisionControlData.mDecisionCallback.onDecisionResult(ApsPreviewAdapterImpl.this.mApsInterface.previewDecision(apsPreviewDecisionParam));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void init(ApsInitParameter apsInitParameter) {
        ProcessHandler processHandler;
        synchronized (this.mApsInitLock) {
            ApsAdapterInterface.ImageProcessListener imageProcessListener = this.mImageProcessListener;
            if (imageProcessListener == null) {
                return;
            }
            ApsInitParameter apsInitParameter2 = imageProcessListener.getApsInitParameter(apsInitParameter, this.mInitParameter);
            if (apsInitParameter2 != null && (processHandler = this.mProcessHandler) != null && processHandler.getLooper().getThread().isAlive()) {
                ApsAdapterLog.v(TAG, "init, mInitParameter: " + this.mInitParameter + ", parameter: " + apsInitParameter);
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
                apsInitParameter3.mMetadata = (CameraMetadata) apsInitParameter.get(ApsParameters.KEY_CAMERA_CHARACTERISTICS);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void unInit(int i) {
        ApsInitParameter apsInitParameter;
        synchronized (this.mApsInitLock) {
            String str = TAG;
            ApsAdapterLog.v(str, "unInit, module: " + i);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPreviewReceived(ApsResult apsResult) {
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
                ApsTotalResult apsTotalResult = new ApsTotalResult(apsResult.mMetadata, apsResult.getMetaImage(), apsResult.mMetaImageRefCounter, apsResult.mFrameId);
                if (imageBuffer != null) {
                    imageBuffer.setApsInterface(this.mApsInterface);
                    if (!this.mCaptureRequestList.isEmpty()) {
                        imageBuffer.addRef();
                        CaptureRequest remove = this.mCaptureRequestList.remove(0);
                        String str = TAG;
                        ApsAdapterLog.v(str, "onPreviewReceived, captureRequest: " + remove + " mMetadata:" + apsResult.mMetadata);
                        if (remove != null) {
                            if (apsResult.mMetaImageRefCounter != null) {
                                apsResult.mMetaImageRefCounter.setMetaImageRef(apsResult.getMetaImage(), null, true);
                            }
                            ApsTotalResult apsTotalResult2 = new ApsTotalResult(apsResult.mMetadata, apsResult.getMetaImage(), apsResult.mMetaImageRefCounter, apsResult.mFrameId);
                            remove.mCaptureCallback.onApsCaptureStarted(apsResult.mIdentity);
                            remove.mCaptureCallback.onApsCaptureCompleted(apsResult, apsTotalResult2, remove.mRequestTag);
                        }
                    }
                }
                this.mApsServiceListener.onPreviewReceived(apsResult, apsTotalResult);
            } catch (IllegalStateException e) {
                e.printStackTrace();
                closeImageBuffer(imageBuffer);
                ApsAdapterLog.w(TAG, "onPreviewReceived, create ApsTotalResult fail, maybe image already closed, drop it");
            }
        }
    }

    private void closeImageBuffer(ApsResult.ImageBuffer imageBuffer) {
        if (imageBuffer != null) {
            imageBuffer.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void flushImage() {
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void destroy() {
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
                ArrayList<Long> arrayList = new ArrayList();
                Iterator<Map.Entry<Long, ImageCategory>> it = this.mProcessMap.entrySet().iterator();
                while (it != null && it.hasNext()) {
                    Map.Entry<Long, ImageCategory> next = it.next();
                    if (l.longValue() > next.getKey().longValue()) {
                        arrayList.add(next.getKey());
                    }
                }
                for (Long l2 : arrayList) {
                    long longValue = l2.longValue();
                    ImageCategory remove = this.mProcessMap.remove(Long.valueOf(longValue));
                    String str = TAG;
                    ApsAdapterLog.v(str, "checkImageOverflow, time: " + longValue, true);
                    if (remove != null && !remove.mbAlreadySendAps) {
                        remove.releaseImageItemList();
                    }
                    ApsAdapterListener.ApsServiceListener apsServiceListener = this.mApsServiceListener;
                    if (apsServiceListener != null) {
                        apsServiceListener.reportDataToDcs(StaticsConstant.EventType.ABNORMAL_DISPLAY, StaticsConstant.AbnormalDisplayKeys.KEY_ABNORMAL_PREVIEW, 4);
                    }
                }
                arrayList.clear();
            }
        }
    }

    private void checkMetaImageOverflow(Long l) {
        if (this.mProcessMap.size() - 6 > 0) {
            long j = 0;
            Iterator<Map.Entry<Long, ImageCategory>> it = this.mProcessMap.entrySet().iterator();
            while (it != null && it.hasNext()) {
                Map.Entry<Long, ImageCategory> next = it.next();
                if (l.longValue() > next.getKey().longValue()) {
                    j = next.getKey().longValue();
                }
            }
            ImageCategory remove = this.mProcessMap.remove(Long.valueOf(j));
            String str = TAG;
            ApsAdapterLog.v(str, "checkMetaImageOverflow, time: " + j);
            if (remove == null || remove.mbAlreadySendAps || remove.mMetaItem == null || remove.mMetaItem.mImageBuffer == null) {
                return;
            }
            remove.mMetaItem.mImageBuffer.close();
            remove.mMetaItem = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ProcessHandler extends Handler {
        private ProcessHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 2) {
                if (message.obj != null && (message.obj instanceof ImageCategory)) {
                    ImageCategory imageCategory = (ImageCategory) message.obj;
                    ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem;
                    if (!imageCategory.mbNeedMatchTimeStamp && metaItemInfo != null && ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue() <= ApsPreviewAdapterImpl.this.mFrameNumber) {
                        if (-1 == ApsPreviewAdapterImpl.this.mFrameNumber) {
                            metaItemInfo.setParameter(ApsParameters.KEY_FRAME_NUMBER, ApsPreviewAdapterImpl.FIRST_PREVIEW_FRAME_NUMBER);
                        } else {
                            metaItemInfo.setParameter(ApsParameters.KEY_FRAME_NUMBER, Long.valueOf(ApsPreviewAdapterImpl.this.mFrameNumber));
                        }
                    }
                    if (ApsPreviewAdapterImpl.this.mApsInterface.isApsPreviewInit() && (metaItemInfo == null || !imageCategory.mbNeedMatchTimeStamp || ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue() >= ApsPreviewAdapterImpl.this.mFrameNumber || metaItemInfo.mImageBuffer != null)) {
                        ApsPreviewAdapterImpl.this.addPreviewFrameBuff(imageCategory);
                        ApsPreviewAdapterImpl apsPreviewAdapterImpl = ApsPreviewAdapterImpl.this;
                        apsPreviewAdapterImpl.mFrameNumber = metaItemInfo != null ? ((Long) metaItemInfo.get(ApsParameters.KEY_FRAME_NUMBER)).longValue() : apsPreviewAdapterImpl.mFrameNumber;
                        return;
                    }
                    String str = ApsPreviewAdapterImpl.TAG;
                    ApsAdapterLog.w(str, "handleMessage,mbNeedMatchTimeStamp: " + imageCategory.mbNeedMatchTimeStamp + " drop this frame because of wrong frame order.");
                    imageCategory.releaseImageItemList();
                    return;
                }
                String str2 = ApsPreviewAdapterImpl.TAG;
                ApsAdapterLog.e(str2, "handleMessage, error msg: " + message.obj);
                return;
            }
            String str3 = ApsPreviewAdapterImpl.TAG;
            ApsAdapterLog.e(str3, "handleMessage, msg: " + message.what + " is not defined.");
        }
    }

    /* loaded from: classes.dex */
    private class CaptureRequest {
        private ApsAdapterListener.CaptureCallback mCaptureCallback;
        private ApsCameraRequestTag mRequestTag;

        private CaptureRequest(ApsAdapterListener.CaptureCallback captureCallback, ApsCameraRequestTag apsCameraRequestTag) {
            this.mCaptureCallback = captureCallback;
            this.mRequestTag = apsCameraRequestTag;
        }
    }
}
