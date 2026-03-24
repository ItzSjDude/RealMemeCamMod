package com.oplus.ocs.camera.common.statistics;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Size;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.ocs.camera.common.statistics.model.CaptureDcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.DcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.EnterExitDcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.EventCommonDcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.PreviewDcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.SmaWireStatusAndModuleIDDcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.VideoDcsMsgData;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.statistics.OplusTrack;

/* JADX INFO: loaded from: classes.dex */
public class StatisticsManager {
    public static final long DELAY_TIME_3S = 3000;
    public static final int MSG_ADD_ERROR_CODE = 1;
    public static final int MSG_DELAY_PROCESS_AE_TRIGGER_CAPTURE = 5;
    public static final int MSG_DELAY_PROCESS_APS_MISS_FRAME = 3;
    public static final int MSG_DELAY_PROCESS_HAL_MISS_FRAME = 4;
    public static final int MSG_DELAY_PROCESS_OPEN_CAMERA = 2;
    private static final String TAG = "StatisticsManager";
    private CaptureDcsMsgData mCaptureDcsMsgData;
    private DcsHandler mDcsHandler;
    private EnterExitDcsMsgData mEnterExitDcsMsgData;
    private long mEnterTime;
    private EventCommonDcsMsgData mEventCommonDcsMsgData;
    private String mPackageName;
    private PreviewDcsMsgData mPreviewDcsMsgData;
    private PreviewDcsMsgData mPreviewEndDcsMsgData;
    private long mPreviewStartTime;
    private SmaWireStatusAndModuleIDDcsMsgData mSmaWireStatusAndModuleIDDcsMsgData;
    private VideoDcsMsgData mVideoDcsMsgData;

    private StatisticsManager() {
        this.mEnterTime = 0L;
        this.mPackageName = null;
        this.mPreviewStartTime = 0L;
        this.mPreviewDcsMsgData = null;
        this.mPreviewEndDcsMsgData = null;
        this.mCaptureDcsMsgData = null;
        this.mVideoDcsMsgData = null;
        this.mEnterExitDcsMsgData = null;
        this.mSmaWireStatusAndModuleIDDcsMsgData = null;
        this.mEventCommonDcsMsgData = null;
        this.mDcsHandler = null;
    }

    private class DcsHandler extends Handler {
        public DcsHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            CameraUnitLog.i(StatisticsManager.TAG, "handleMessage, msg.what: " + message.what);
            int i = message.what;
            if (i == 1) {
                StatisticsManager.this.reportApsErrorCode(StatisticConstant.ALGO_PROCESS_ERROR, (String) message.obj);
                return;
            }
            if (i == 2) {
                StatisticsManager.this.reportAbnormalDisplay("abnormal_preview", 1);
                return;
            }
            if (i == 3) {
                StatisticsManager.this.reportAbnormalDisplay("abnormal_preview", 5);
            } else if (i == 4) {
                StatisticsManager.this.reportAbnormalDisplay("abnormal_preview", 3);
            } else {
                if (i != 5) {
                    return;
                }
                StatisticsManager.this.reportFunctionalError(StatisticConstant.FunctionalErrorKeys.KEY_CAPTURE_FAILED, 23);
            }
        }
    }

    private static class SingleTonHolder {
        private static final StatisticsManager INSTANCE = new StatisticsManager();

        private SingleTonHolder() {
        }
    }

    public static StatisticsManager getInstance() {
        return SingleTonHolder.INSTANCE;
    }

    public void init(Context context) {
        this.mEnterTime = System.currentTimeMillis();
        this.mPackageName = context.getPackageName();
        OplusTrack.init(context);
        if (this.mDcsHandler == null) {
            HandlerThread handlerThread = new HandlerThread("DcsHandler");
            handlerThread.start();
            this.mDcsHandler = new DcsHandler(handlerThread.getLooper());
        }
        reportEnterExit(false);
    }

    public void release(boolean z) {
        DcsHandler dcsHandler = this.mDcsHandler;
        if (dcsHandler != null) {
            dcsHandler.removeCallbacksAndMessages(null);
            if (z) {
                this.mDcsHandler.getLooper().quitSafely();
            }
        }
    }

    public void onOpenCamera(int i, String str) {
        this.mPreviewDcsMsgData = new PreviewDcsMsgData(i);
        this.mCaptureDcsMsgData = new CaptureDcsMsgData(i);
        this.mVideoDcsMsgData = new VideoDcsMsgData(i);
        this.mSmaWireStatusAndModuleIDDcsMsgData = new SmaWireStatusAndModuleIDDcsMsgData(i);
        this.mEventCommonDcsMsgData = new EventCommonDcsMsgData(i);
        if ("rear_wide".equals(str)) {
            this.mPreviewDcsMsgData.mbWide = true;
            this.mCaptureDcsMsgData.mbWide = true;
            this.mVideoDcsMsgData.mbWide = true;
        }
        if ("rear_main_rear_wide".equals(str) || "rear_main_rear_tele".equals(str) || "rear_wide_rear_tele".equals(str) || "rear_main_front_main".equals(str) || "rear_sat".equals(str)) {
            this.mPreviewDcsMsgData.mbDualCamera = str;
        } else {
            this.mPreviewDcsMsgData.mbDualCamera = "off";
        }
    }

    public void reportPreview(String str) {
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewDcsMsgData;
        if (previewDcsMsgData != null) {
            if ("rear_main_front_main".equals(previewDcsMsgData.mbDualCamera) && "front_main".equals(str)) {
                return;
            }
            this.mPreviewStartTime = System.currentTimeMillis();
            this.mPreviewEndDcsMsgData = this.mPreviewDcsMsgData.m3clone();
            this.mPreviewDcsMsgData.mbEndPreview = false;
            this.mPreviewDcsMsgData.report();
        }
    }

    public void reportPreviewEnd(String str) {
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewEndDcsMsgData;
        if (previewDcsMsgData != null) {
            if ("rear_main_front_main".equals(previewDcsMsgData.mbDualCamera) && "front_main".equals(str)) {
                return;
            }
            this.mPreviewEndDcsMsgData.mPreviewDuration = System.currentTimeMillis() - this.mPreviewStartTime;
            this.mPreviewEndDcsMsgData.mbEndPreview = true;
            this.mPreviewEndDcsMsgData.report();
        }
    }

    public void reportVideo() {
        VideoDcsMsgData videoDcsMsgData = this.mVideoDcsMsgData;
        if (videoDcsMsgData != null) {
            videoDcsMsgData.report();
        }
    }

    public void reportCapture() {
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.report();
        }
    }

    public void reportEnterExit(boolean z) {
        if (this.mEnterExitDcsMsgData == null) {
            this.mEnterExitDcsMsgData = new EnterExitDcsMsgData();
        }
        if (z) {
            this.mEnterExitDcsMsgData.mDuration = System.currentTimeMillis() - this.mEnterTime;
        }
        this.mEnterExitDcsMsgData.mbEnter = !z;
        this.mEnterExitDcsMsgData.report();
    }

    public void reportSmaStatusAndModuleId(boolean z, String str) {
        SmaWireStatusAndModuleIDDcsMsgData smaWireStatusAndModuleIDDcsMsgData = this.mSmaWireStatusAndModuleIDDcsMsgData;
        if (smaWireStatusAndModuleIDDcsMsgData != null) {
            smaWireStatusAndModuleIDDcsMsgData.mbIsWireStatus = z;
            this.mSmaWireStatusAndModuleIDDcsMsgData.mModuleID = str;
            this.mSmaWireStatusAndModuleIDDcsMsgData.report();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportApsErrorCode(String str, String str2) {
        reportDcsData(StatisticConstant.EventType.ERROR_CODE, str, str2);
    }

    public void reportFunctionalError(String str, int i) {
        reportDcsData(StatisticConstant.EventType.FUNCTIONAL_ERROR, str, String.valueOf(i));
    }

    public void reportAbnormalDisplay(String str, int i) {
        reportDcsData(StatisticConstant.EventType.ABNORMAL_DISPLAY, str, String.valueOf(i));
    }

    public void reportDcsData(StatisticConstant.EventType eventType, String str, String str2) {
        EventCommonDcsMsgData eventCommonDcsMsgData = this.mEventCommonDcsMsgData;
        if (eventCommonDcsMsgData != null) {
            eventCommonDcsMsgData.mEventType = eventType;
            this.mEventCommonDcsMsgData.mEventKey = str;
            this.mEventCommonDcsMsgData.mEventValue = str2;
            this.mEventCommonDcsMsgData.report();
        }
    }

    public synchronized void report(DcsMsgData dcsMsgData) {
        dcsMsgData.fillParams();
        dcsMsgData.mParams.put(StatisticConstant.KEY_PACK_NAME, this.mPackageName);
        dcsMsgData.mParams.put(StatisticConstant.KEY_ENTER_TIME, String.valueOf(this.mEnterTime));
        if (this.mPreviewStartTime > 0) {
            dcsMsgData.mParams.put(StatisticConstant.KEY_PREVIEW_START_TIME, String.valueOf(this.mPreviewStartTime));
        }
        CameraUnitLog.d(TAG, "report, mAppId: " + dcsMsgData.mEventType.mAppId + ", mEventId: " + dcsMsgData.mEventType.mEventId + ", params: " + dcsMsgData.mParams);
        OplusTrack.onCommon(ContextHolder.getContext(), dcsMsgData.mEventType.mAppId, dcsMsgData.mEventType.mCategory, dcsMsgData.mEventType.mEventId, dcsMsgData.mParams);
    }

    public void setModeName(String str) {
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewDcsMsgData;
        if (previewDcsMsgData != null) {
            previewDcsMsgData.mModeName = str;
        }
    }

    public <T> void setFeature(Parameter.Key<T> key, T t) {
        setFeature(this.mPreviewDcsMsgData, key, t);
        setFeature(this.mCaptureDcsMsgData, key, t);
        setFeature(this.mPreviewEndDcsMsgData, key, t);
        setFeature(this.mVideoDcsMsgData, key, t);
    }

    private <T> void setFeature(DcsMsgData dcsMsgData, Parameter.Key<T> key, T t) {
        if (dcsMsgData == null) {
            return;
        }
        if (ConfigureParameter.VIDEO_STABILIZATION_MODE == key) {
            dcsMsgData.mbVideoStabilization = "video_stabilization".equals(t);
            dcsMsgData.mbSuperStabilization = "super_stabilization".equals(t);
        } else if (ConfigureParameter.VIDEO_3HDR_MODE == key) {
            dcsMsgData.m3Hdr = t == null ? "off" : t.toString();
        }
    }

    public void setVideoFps(int i) {
        VideoDcsMsgData videoDcsMsgData = this.mVideoDcsMsgData;
        if (videoDcsMsgData != null) {
            videoDcsMsgData.mFps = String.valueOf(i);
        }
    }

    public void setVideoSize(Size size) {
        VideoDcsMsgData videoDcsMsgData = this.mVideoDcsMsgData;
        if (videoDcsMsgData == null || size == null) {
            return;
        }
        videoDcsMsgData.mWidth = size.getWidth();
        this.mVideoDcsMsgData.mHeight = size.getHeight();
    }

    public void setCaptureSize(Size size) {
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData == null || size == null) {
            return;
        }
        captureDcsMsgData.mWidth = size.getWidth();
        this.mCaptureDcsMsgData.mHeight = size.getHeight();
    }

    public void setZoomValue(String str) {
        VideoDcsMsgData videoDcsMsgData = this.mVideoDcsMsgData;
        if (videoDcsMsgData != null) {
            videoDcsMsgData.mZoomValue = str;
        }
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.mZoomValue = str;
        }
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewDcsMsgData;
        if (previewDcsMsgData != null) {
            previewDcsMsgData.mZoomValue = str;
        }
    }

    public void setAiEnhance(boolean z) {
        VideoDcsMsgData videoDcsMsgData = this.mVideoDcsMsgData;
        if (videoDcsMsgData != null) {
            videoDcsMsgData.mAiEnhance = z;
        }
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewDcsMsgData;
        if (previewDcsMsgData != null) {
            previewDcsMsgData.mAiEnhance = z;
        }
    }

    public void setPortraitMode(boolean z) {
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.mPortraitMode = z;
        }
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewDcsMsgData;
        if (previewDcsMsgData != null) {
            previewDcsMsgData.mPortraitMode = z;
        }
    }

    public void setNightState(int i) {
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.mNightState = i;
        }
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewDcsMsgData;
        if (previewDcsMsgData != null) {
            previewDcsMsgData.mNightState = i;
        }
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewEndDcsMsgData.mNightState = i;
        }
    }

    public void setCameraId(int i, String str) {
        if (!"rear_main_rear_wide".equals(str) && !"rear_main_rear_tele".equals(str) && !"rear_wide_rear_tele".equals(str) && !"rear_main_front_main".equals(str) && !"rear_sat".equals(str)) {
            str = "off";
        }
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.mCameraId = i;
            this.mCaptureDcsMsgData.mbDualCamera = str;
        }
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewDcsMsgData;
        if (previewDcsMsgData != null) {
            previewDcsMsgData.mCameraId = i;
            this.mPreviewDcsMsgData.mbDualCamera = str;
        }
        VideoDcsMsgData videoDcsMsgData = this.mVideoDcsMsgData;
        if (videoDcsMsgData != null) {
            videoDcsMsgData.mCameraId = i;
            this.mVideoDcsMsgData.mbDualCamera = str;
        }
    }

    public void setHdrStatus(int i) {
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.mHdrStatus = i;
        }
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewDcsMsgData;
        if (previewDcsMsgData != null) {
            previewDcsMsgData.mHdrStatus = i;
        }
        PreviewDcsMsgData previewDcsMsgData2 = this.mPreviewEndDcsMsgData;
        if (previewDcsMsgData2 != null) {
            previewDcsMsgData2.mHdrStatus = i;
        }
    }

    public void setSlowMotion(boolean z) {
        VideoDcsMsgData videoDcsMsgData = this.mVideoDcsMsgData;
        if (videoDcsMsgData != null) {
            videoDcsMsgData.mSlowMotion = z;
        }
        PreviewDcsMsgData previewDcsMsgData = this.mPreviewDcsMsgData;
        if (previewDcsMsgData != null) {
            previewDcsMsgData.mSlowMotion = z;
        }
    }

    public void setMultiFrameDenoise(boolean z) {
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.mMultiFrameDenoise = z;
        }
    }

    public void setRemosaic(boolean z) {
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.mRemosaic = z;
        }
    }

    public void setIsRectify(boolean z) {
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.mIsRectify = z;
        }
        if (this.mCaptureDcsMsgData != null) {
            this.mPreviewDcsMsgData.mIsRectify = z;
        }
        if (this.mCaptureDcsMsgData != null) {
            this.mVideoDcsMsgData.mIsRectify = z;
        }
    }

    public void setIsConnectGimbal(boolean z) {
        CaptureDcsMsgData captureDcsMsgData = this.mCaptureDcsMsgData;
        if (captureDcsMsgData != null) {
            captureDcsMsgData.mIsConnectGimbal = z;
        }
        if (this.mCaptureDcsMsgData != null) {
            this.mPreviewDcsMsgData.mIsConnectGimbal = z;
        }
        if (this.mCaptureDcsMsgData != null) {
            this.mVideoDcsMsgData.mIsConnectGimbal = z;
        }
    }

    public void setAiEnhanceStart(int i) {
        if (this.mCaptureDcsMsgData != null) {
            this.mVideoDcsMsgData.mAiEnhanceStart = i;
        }
    }

    public void setAiEnhanceEnd(int i) {
        if (this.mCaptureDcsMsgData != null) {
            this.mVideoDcsMsgData.mAiEnhanceEnd = i;
        }
    }

    public void setAiEnhanceChange(int i) {
        if (this.mCaptureDcsMsgData != null) {
            this.mVideoDcsMsgData.mAiEnhanceChange = i;
        }
    }

    public void setApsErrorCode(String str) {
        DcsHandler dcsHandler = this.mDcsHandler;
        if (dcsHandler != null) {
            Message messageObtainMessage = dcsHandler.obtainMessage();
            messageObtainMessage.what = 1;
            messageObtainMessage.obj = str;
            this.mDcsHandler.sendMessage(messageObtainMessage);
        }
    }

    public void setDcsDelayProcessMsg(int i, long j) {
        DcsHandler dcsHandler = this.mDcsHandler;
        if (dcsHandler != null) {
            dcsHandler.sendEmptyMessageDelayed(i, j);
        }
    }

    public void cancelDelayProcessMsg(int i) {
        DcsHandler dcsHandler = this.mDcsHandler;
        if (dcsHandler != null) {
            dcsHandler.removeMessages(i);
        }
    }
}
