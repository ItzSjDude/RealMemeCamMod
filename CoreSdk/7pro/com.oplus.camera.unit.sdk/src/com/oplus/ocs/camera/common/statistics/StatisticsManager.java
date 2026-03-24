package com.oplus.ocs.camera.common.statistics;

import android.content.Context;
import android.util.Size;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.statistics.model.CaptureDcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.DcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.EnterExitDcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.PreviewDcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.SmaWireStatusAndModuleIDDcsMsgData;
import com.oplus.ocs.camera.common.statistics.model.VideoDcsMsgData;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.statistics.OplusTrack;
/* loaded from: classes.dex */
public class StatisticsManager {
    private static final String TAG = "StatisticsManager";
    private CaptureDcsMsgData mCaptureDcsMsgData;
    private EnterExitDcsMsgData mEnterExitDcsMsgData;
    private long mEnterTime;
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SingleTonHolder {
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
        reportEnterExit(false);
    }

    public void onOpenCamera(int i, String str) {
        this.mPreviewDcsMsgData = new PreviewDcsMsgData(i);
        this.mCaptureDcsMsgData = new CaptureDcsMsgData(i);
        this.mVideoDcsMsgData = new VideoDcsMsgData(i);
        this.mSmaWireStatusAndModuleIDDcsMsgData = new SmaWireStatusAndModuleIDDcsMsgData(i);
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
        if (this.mPreviewDcsMsgData != null) {
            if ("rear_main_front_main".equals(this.mPreviewDcsMsgData.mbDualCamera) && "front_main".equals(str)) {
                return;
            }
            this.mPreviewStartTime = System.currentTimeMillis();
            this.mPreviewEndDcsMsgData = this.mPreviewDcsMsgData.m2clone();
            this.mPreviewDcsMsgData.mbEndPreview = false;
            this.mPreviewDcsMsgData.report();
        }
    }

    public void reportPreviewEnd(String str) {
        if (this.mPreviewEndDcsMsgData != null) {
            if ("rear_main_front_main".equals(this.mPreviewEndDcsMsgData.mbDualCamera) && "front_main".equals(str)) {
                return;
            }
            this.mPreviewEndDcsMsgData.mPreviewDuration = System.currentTimeMillis() - this.mPreviewStartTime;
            this.mPreviewEndDcsMsgData.mbEndPreview = true;
            this.mPreviewEndDcsMsgData.report();
        }
    }

    public void reportVideo() {
        if (this.mVideoDcsMsgData != null) {
            this.mVideoDcsMsgData.report();
        }
    }

    public void reportCapture() {
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.report();
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
        if (this.mSmaWireStatusAndModuleIDDcsMsgData != null) {
            this.mSmaWireStatusAndModuleIDDcsMsgData.mbIsWireStatus = z;
            this.mSmaWireStatusAndModuleIDDcsMsgData.mModuleID = str;
            this.mSmaWireStatusAndModuleIDDcsMsgData.report();
        }
    }

    public synchronized void report(DcsMsgData dcsMsgData) {
        dcsMsgData.fillParams();
        dcsMsgData.mParams.put(StatisticConstant.KEY_PACK_NAME, this.mPackageName);
        dcsMsgData.mParams.put(StatisticConstant.KEY_ENTER_TIME, String.valueOf(this.mEnterTime));
        if (this.mPreviewStartTime > 0) {
            dcsMsgData.mParams.put(StatisticConstant.KEY_PREVIEW_START_TIME, String.valueOf(this.mPreviewStartTime));
        }
        CameraUnitLog.d(TAG, "report, mEventId: " + dcsMsgData.mEventType.mEventId + ", params: " + dcsMsgData.mParams);
        OplusTrack.onCommon(ContextHolder.getContext(), StatisticConstant.STATISTIC_APP_CODE, dcsMsgData.mEventType.mCategory, dcsMsgData.mEventType.mEventId, dcsMsgData.mParams);
    }

    public void setModeName(String str) {
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewDcsMsgData.mModeName = str;
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
        if (this.mVideoDcsMsgData != null) {
            this.mVideoDcsMsgData.mFps = String.valueOf(i);
        }
    }

    public void setVideoSize(Size size) {
        if (this.mVideoDcsMsgData == null || size == null) {
            return;
        }
        this.mVideoDcsMsgData.mWidth = size.getWidth();
        this.mVideoDcsMsgData.mHeight = size.getHeight();
    }

    public void setCaptureSize(Size size) {
        if (this.mCaptureDcsMsgData == null || size == null) {
            return;
        }
        this.mCaptureDcsMsgData.mWidth = size.getWidth();
        this.mCaptureDcsMsgData.mHeight = size.getHeight();
    }

    public void setZoomValue(String str) {
        if (this.mVideoDcsMsgData != null) {
            this.mVideoDcsMsgData.mZoomValue = str;
        }
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.mZoomValue = str;
        }
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewDcsMsgData.mZoomValue = str;
        }
    }

    public void setAiEnhance(boolean z) {
        if (this.mVideoDcsMsgData != null) {
            this.mVideoDcsMsgData.mAiEnhance = z;
        }
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewDcsMsgData.mAiEnhance = z;
        }
    }

    public void setPortraitMode(boolean z) {
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.mPortraitMode = z;
        }
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewDcsMsgData.mPortraitMode = z;
        }
    }

    public void setNightState(int i) {
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.mNightState = i;
        }
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewDcsMsgData.mNightState = i;
        }
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewEndDcsMsgData.mNightState = i;
        }
    }

    public void setCameraId(int i, String str) {
        if (!"rear_main_rear_wide".equals(str) && !"rear_main_rear_tele".equals(str) && !"rear_wide_rear_tele".equals(str) && !"rear_main_front_main".equals(str) && !"rear_sat".equals(str)) {
            str = "off";
        }
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.mCameraId = i;
            this.mCaptureDcsMsgData.mbDualCamera = str;
        }
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewDcsMsgData.mCameraId = i;
            this.mPreviewDcsMsgData.mbDualCamera = str;
        }
        if (this.mVideoDcsMsgData != null) {
            this.mVideoDcsMsgData.mCameraId = i;
            this.mVideoDcsMsgData.mbDualCamera = str;
        }
    }

    public void setHdrStatus(int i) {
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.mHdrStatus = i;
        }
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewDcsMsgData.mHdrStatus = i;
        }
        if (this.mPreviewEndDcsMsgData != null) {
            this.mPreviewEndDcsMsgData.mHdrStatus = i;
        }
    }

    public void setSlowMotion(boolean z) {
        if (this.mCaptureDcsMsgData != null) {
            this.mVideoDcsMsgData.mSlowMotion = z;
        }
        if (this.mPreviewDcsMsgData != null) {
            this.mPreviewDcsMsgData.mSlowMotion = z;
        }
    }

    public void setMultiFrameDenoise(boolean z) {
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.mMultiFrameDenoise = z;
        }
    }

    public void setRemosaic(boolean z) {
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.mRemosaic = z;
        }
    }

    public void setIsRectify(boolean z) {
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.mIsRectify = z;
        }
        if (this.mCaptureDcsMsgData != null) {
            this.mPreviewDcsMsgData.mIsRectify = z;
        }
        if (this.mCaptureDcsMsgData != null) {
            this.mVideoDcsMsgData.mIsRectify = z;
        }
    }

    public void setIsConnectGimbal(boolean z) {
        if (this.mCaptureDcsMsgData != null) {
            this.mCaptureDcsMsgData.mIsConnectGimbal = z;
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
}
