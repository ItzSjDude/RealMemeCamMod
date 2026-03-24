package com.oplus.ocs.camera.producer.device;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.media.Image;
import android.media.ImageReader;
import android.media.ImageWriter;
import android.os.ConditionVariable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.SdkConfig;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsOtherParameter;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfacePool;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ConfigInfoPkg;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsTotalResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.producer.device.CaptureRequestProxy;
import com.oplus.ocs.camera.producer.device.FlashController;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraIdType;
import com.oplus.ocs.camera.producer.info.CameraMeteringRectangle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(ApsConstant.FEATURE_TYPE_AI_HDR)
/* loaded from: classes.dex */
public class Camera2Impl implements Camera2Interface {
    private static final int BUFFER_SIZE = 8;
    private static final int END_OF_STREAM_TIMEOUT = 1000;
    private static final int FLASH_AUTO_FRAME_COUNTER_MAX = 10;
    private static final int IZOOM_OFF = 0;
    private static final int IZOOM_ON = 1;
    private static final String TAG = "Camera2Impl";
    private static final float ZOOM_ONE = 1.0f;
    private CameraPreviewCallbackAdapter.PreviewMetadataCallback mCallback;
    private String mCameraType;
    private FlashController mFlashController;
    private CameraCaptureSession.CaptureCallback mPreviewCallback;
    private CameraCaptureSession.StateCallback mSessionStateCallback;
    private CameraDevice.StateCallback mStateCallback;
    private FlashController.TriggerStateListener mTriggerStateListener;
    private final ConditionVariable mDeviceVariable = new ConditionVariable();
    private final ConditionVariable mSessionVariable = new ConditionVariable();
    private final ConditionVariable mRepeatingVariable = new ConditionVariable();
    private final Object mSessionLock = new Object();
    private final AtomicBoolean mbIsPreviewing = new AtomicBoolean(false);
    private CameraDevice mCameraDevice = null;
    private CameraCaptureSession mCaptureSession = null;
    private CaptureRequestProxy.Builder mPreviewBuilder = null;
    private int mFirstRequestHash = 0;
    private boolean mbFirstMetaArrived = false;
    private ImageWriter mImageWriter = null;
    private boolean mbSmaWireStatusAndModuleIdArrived = false;
    private boolean mbQcomHighFrameRate = false;
    private CameraDevice.StateCallback mCameraStateCallback = null;
    private CameraCaptureSession.StateCallback mCameraSessionCallback = null;
    private CameraPreviewCallbackAdapter mCameraPreviewCallbackAdapter = null;
    private CameraPictureCallbackAdapter mCameraPictureCallbackAdapter = null;
    private CameraRecordingCallbackAdapter mCameraRecordingCallbackAdapter = null;
    private LinkedHashMap<SurfaceWrapper, OutputConfiguration> mOutputConfigurationMap = new LinkedHashMap<>();
    private CameraSessionEntity mSessionEntity = null;
    private Object mRecordingTag = null;
    private RectF mAfRegion = null;
    private boolean mbAeAfLocked = false;
    private volatile String mFlashMode = "off";
    private volatile Integer mFocusMode = 4;
    private CameraRequestTag mTakePictureRequestTag = null;
    private Parameter mTakePictureParameter = null;
    private Handler mTakePictureCallbackHandler = null;
    private LinkedList<SurfaceWrapper> mSessionSurfaceWrapperList = null;
    private final CaptureCallback mPictureCallback = new CaptureCallback();
    private boolean mbNeedAutoFlash = false;
    private boolean mbWaitingAeAfConverge = false;
    private boolean mbWaitingTriggerAndStartAiFlash = false;
    private volatile int[] mNewestSensorMask = null;
    private volatile int[] mNewestMasterPipeline = null;
    private volatile int mOfflineNightExpTime = 0;
    private boolean mbMtkLowMemoryPlatform = false;
    private boolean mbContinueShot = false;
    private Set<Long> mMtkCShortFrameNumberSet = new HashSet();
    private boolean mbFlashAutoMode = false;
    private boolean mbSupportTorchFlash = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Camera2Impl(@NonNull String str) {
        this.mCameraType = null;
        FlashController.TriggerStateListener triggerStateListener = new FlashController.TriggerStateListener() { // from
                                                                                                                 // class:
                                                                                                                 // com.oplus.ocs.camera.producer.device.Camera2Impl.1
            @Override // com.oplus.ocs.camera.producer.device.FlashController.TriggerStateListener
            public void onAeConverged(final boolean z) {
                CameraUnitLog.e(Camera2Impl.TAG, "onAeConverged, start");
                Camera2Impl.this.mbWaitingAeAfConverge = false;
                if (PlatformUtil.isMtkPlatform()
                        && ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_AI_FLASH_SUPPORT, false))
                                .booleanValue()) {
                    Camera2Impl.this.mbWaitingTriggerAndStartAiFlash = true;
                }
                Camera2Impl.this.mTakePictureCallbackHandler.postAtFrontOfQueue(new Runnable() { // from class:
                                                                                                 // com.oplus.ocs.camera.producer.device.Camera2Impl.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Camera2Impl.this.lockAeStateForPreCapture();
                            if (z) {
                                if (Camera2Impl.this.mNewestSensorMask != null
                                        && Camera2Impl.this.mNewestMasterPipeline != null
                                        && !"id_photo_mode".equals(Camera2Impl.this.mTakePictureRequestTag.mCaptureMode)
                                        && CameraCharacteristicsHelper
                                                .getCameraCharacteristicsWrapper("rear_sat") != null) {
                                    CameraUnitLog.v(Camera2Impl.TAG,
                                            "onAeConverged, mCaptureRequestTag.mSensorMask: "
                                                    + Arrays.toString(
                                                            Camera2Impl.this.mTakePictureRequestTag.mSensorMask)
                                                    + " -> " + Arrays.toString(Camera2Impl.this.mNewestSensorMask)
                                                    + ", mCaptureRequestTag.mMasterPipeline: "
                                                    + Camera2Impl.this.mTakePictureRequestTag.mMasterPipeline + " -> "
                                                    + Camera2Impl.this.mNewestMasterPipeline[0]);
                                    Camera2Impl.this.mTakePictureRequestTag.mSensorMask = Camera2Impl.this.mNewestSensorMask;
                                    Camera2Impl.this.mTakePictureRequestTag.mMasterPipeline = Camera2Impl.this.mNewestMasterPipeline[0];
                                }
                                Camera2Impl.this.takePicture(Camera2Impl.this.mTakePictureRequestTag,
                                        Camera2Impl.this.mTakePictureParameter,
                                        Camera2Impl.this.mTakePictureCallbackHandler);
                                synchronized (Camera2Impl.this.mSessionLock) {
                                    if (!Camera2Impl.this.mbAeAfLocked && !Camera2Impl.this.isFrontCamera()
                                            && PlatformUtil.isQualcommPlatform()) {
                                        Camera2Impl.this.sendAutoFocusCancelCaptureRequest();
                                    }
                                }
                                Camera2Impl.this.mFlashController.setNeedCapture(false);
                            }
                        } catch (CameraAccessException | IllegalStateException e) {
                            CameraUnitLog.e(Camera2Impl.TAG, "onAeConverged", e);
                        }
                    }
                });
            }
        };
        this.mTriggerStateListener = triggerStateListener;
        this.mFlashController = new FlashController(triggerStateListener);
        this.mStateCallback = new CameraDevice.StateCallback() { // from class:
                                                                 // com.oplus.ocs.camera.producer.device.Camera2Impl.2
            private static final String TAG = "StateCallback";

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                CameraUnitLog.e(TAG, "onOpened," + cameraDevice + ", CameraUnit version: 3.512.9");
                StatisticsManager.getInstance().cancelDelayProcessMsg(2);
                CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.onCameraOpened");
                Camera2Impl.this.mCameraDevice = cameraDevice;
                Camera2Impl.this.mDeviceVariable.open();
                CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.onCameraOpened");
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                CameraUnitLog.d(TAG, "onDisconnected," + cameraDevice + ", CameraUnit version: 3.512.9");
                Camera2Impl.this.mbFirstMetaArrived = false;
                Camera2Impl.this.releaseBlocks();
                if (Camera2Impl.this.mCameraStateCallback != null) {
                    Camera2Impl.this.mCameraStateCallback.onDisconnected(cameraDevice);
                }
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(@NonNull CameraDevice cameraDevice, int i) {
                CameraUnitLog.d(TAG, "onError," + cameraDevice + ", CameraUnit version: 3.512.9");
                Camera2Impl.this.mbFirstMetaArrived = false;
                Camera2Impl.this.releaseBlocks();
                if (Camera2Impl.this.mCameraStateCallback != null) {
                    Camera2Impl.this.mCameraStateCallback.onError(cameraDevice, i);
                }
                StatisticsManager.getInstance().reportAbnormalDisplay("abnormal_preview", 1);
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onClosed(CameraDevice cameraDevice) {
                CameraUnitLog.e(TAG, "onClosed," + cameraDevice + ", CameraUnit version: 3.512.9");
                if (Camera2Impl.this.mCameraDevice == null || Camera2Impl.this.mCameraDevice.equals(cameraDevice)) {
                    Camera2Impl.this.mCameraDevice = null;
                    Camera2Impl.this.closeAllImageReader();
                    Camera2Impl.this.mDeviceVariable.open();
                    return;
                }
                CameraUnitLog.e(TAG, "onClosed, camera device not match return!");
            }
        };
        this.mCallback = new CameraPreviewCallbackAdapter.PreviewMetadataCallback() { // from class:
                                                                                      // com.oplus.ocs.camera.producer.device.Camera2Impl.3
            @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter.PreviewMetadataCallback
            public void notifyMetadataReceived(ApsTotalResult apsTotalResult) {
                if (apsTotalResult == null || apsTotalResult.getTotalResult() == null) {
                    return;
                }
                TotalCaptureResult totalResult = apsTotalResult.getTotalResult();
                Camera2Impl.this.mFocusMode = (Integer) totalResult.get(CaptureResult.CONTROL_AF_MODE);
            }

            @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter.PreviewMetadataCallback
            public void onDecisionArrived(ApsAdapterDecision.DecisionResult decisionResult) {
                if (decisionResult != null) {
                    Camera2Impl.this.mNewestSensorMask = decisionResult.mSensorMask;
                    Camera2Impl.this.mNewestMasterPipeline = new int[] { decisionResult.mMasterPipeline };
                    Camera2Impl.this.mOfflineNightExpTime = decisionResult.mOfflineNightExpTime;
                }
            }
        };
        this.mPreviewCallback = new CameraCaptureSession.CaptureCallback() { // from class:
                                                                             // com.oplus.ocs.camera.producer.device.Camera2Impl.4
            private boolean mbHaveSearching = false;
            private int mPrevAeMode = -1;
            private int mPrevAeState = -1;
            private int mFlashAutoStartFrameCounter = 10;

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest,
                    long j, long j2) {
                Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureStarted(captureRequest, j, j2);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest,
                    TotalCaptureResult totalCaptureResult) {
                long longValue = ((Long) totalCaptureResult.get(CaptureResult.SENSOR_TIMESTAMP)).longValue();
                CameraUnitLog.traceBegin(
                        "CameraUnit.CameraStartupPerformance.onCaptureCompleted, timestamp: " + longValue,
                        "onPreviewMetaArrived", longValue);
                if (Camera2Impl.this.mFirstRequestHash == captureRequest.hashCode()
                        && !Camera2Impl.this.mbFirstMetaArrived) {
                    onFirstPreviewMetaArrive(captureRequest);
                }
                checkSmaWireStatusAndModuleIdArrived(totalCaptureResult);
                CameraIdType cameraIdType = CameraCharacteristicsHelper.getCameraIdType(Camera2Impl.this.getLogicId());
                if (cameraIdType != null) {
                    Camera2Impl.this.mCameraPreviewCallbackAdapter.onCaptureCompleted(captureRequest,
                            totalCaptureResult, cameraIdType.getCameraType());
                }
                CameraUnitLog.traceEnd(
                        "CameraUnit.CameraStartupPerformance.onCaptureCompleted, timestamp: " + longValue,
                        "onPreviewMetaArrived");
                Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
                Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_MODE);
                if (Camera2Impl.this.mbAeAfLocked) {
                    Camera2Impl.this.mbNeedAutoFlash = false;
                } else {
                    boolean z = true;
                    if (num2 == null || num == null || 2 != num2.intValue()) {
                        if (Camera2Impl.this.mbFlashAutoMode && num2 != null && 1 == num2.intValue()) {
                            this.mbHaveSearching = false;
                        }
                    } else {
                        if (3 == this.mPrevAeMode) {
                            this.mFlashAutoStartFrameCounter = 0;
                        } else {
                            int i = this.mFlashAutoStartFrameCounter;
                            if (i < 10) {
                                this.mFlashAutoStartFrameCounter = i + 1;
                            }
                        }
                        if (4 == num.intValue()) {
                            Camera2Impl.this.mbNeedAutoFlash = true;
                            this.mbHaveSearching = false;
                        } else if (1 == num.intValue()) {
                            this.mbHaveSearching = true;
                        } else if (2 == num.intValue()) {
                            if (this.mFlashAutoStartFrameCounter >= 10 || 4 != this.mPrevAeState) {
                                z = false;
                            }
                            if (this.mbHaveSearching || z) {
                                Camera2Impl.this.mbNeedAutoFlash = false;
                                this.mbHaveSearching = false;
                            }
                        }
                    }
                }
                synchronized (Camera2Impl.this.mSessionLock) {
                    Camera2Impl.this.mFlashController.getFlashControllerCallback()
                            .notifyMetadataReceived(captureRequest, totalCaptureResult);
                }
                this.mPrevAeMode = num2 != null ? num2.intValue() : -1;
                this.mPrevAeState = num != null ? num.intValue() : -1;
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest,
                    CaptureFailure captureFailure) {
                CameraUnitLog.w(Camera2Impl.TAG, "PreviewRequestCallback, onCaptureFailed, fail reason: "
                        + captureFailure.getReason() + ", sequenceId:" + captureFailure.getSequenceId());
                if (Camera2Impl.this.mFirstRequestHash == captureRequest.hashCode()
                        && !Camera2Impl.this.mbFirstMetaArrived) {
                    onFirstPreviewMetaArrive(captureRequest);
                }
                Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureFailed(captureRequest, captureFailure);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureProgressed(@NonNull CameraCaptureSession cameraCaptureSession,
                    @NonNull CaptureRequest captureRequest, @NonNull CaptureResult captureResult) {
                Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureProgressed(captureRequest,
                        captureResult);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureSequenceCompleted(@NonNull CameraCaptureSession cameraCaptureSession, int i, long j) {
                Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureSequenceCompleted(i, j);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureSequenceAborted(@NonNull CameraCaptureSession cameraCaptureSession, int i) {
                Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureSequenceAborted(i);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureBufferLost(@NonNull CameraCaptureSession cameraCaptureSession,
                    @NonNull CaptureRequest captureRequest, @NonNull Surface surface, long j) {
                Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureBufferLost(captureRequest, surface, j);
            }

            private void onFirstPreviewMetaArrive(CaptureRequest captureRequest) {
                CameraUnitLog.e(Camera2Impl.TAG, "firstRepeatingArrive");
                StatisticsManager.getInstance().reportPreview(Camera2Impl.this.mCameraType);
                Camera2Impl.this.mbFirstMetaArrived = true;
                Camera2Impl.this.mRepeatingVariable.open();
                Camera2Impl.this.mFirstRequestHash = 0;
                Camera2Impl.this.mCameraPreviewCallbackAdapter.onFirstMetaArrived();
                StatisticsManager.getInstance().cancelDelayProcessMsg(4);
                StatisticsManager.getInstance().setDcsDelayProcessMsg(3, StatisticsManager.DELAY_TIME_3S);
            }

            private void checkSmaWireStatusAndModuleIdArrived(TotalCaptureResult totalCaptureResult) {
                if (Camera2Impl.this.mbSmaWireStatusAndModuleIdArrived) {
                    return;
                }
                try {
                    byte[] bArr = (byte[]) totalCaptureResult.get(CameraMetadataKey.KEY_DOUBLE_OIS_WIRECUTOFF);
                    if (bArr == null || bArr.length <= 0) {
                        return;
                    }
                    int i = 0;
                    boolean z = bArr[0] == 1;
                    int length = bArr.length - 2;
                    char[] cArr = new char[length];
                    while (i < length) {
                        int i2 = i + 1;
                        cArr[i] = (char) bArr[i2];
                        i = i2;
                    }
                    String str2 = new String(cArr);
                    StatisticsManager.getInstance().reportSmaStatusAndModuleId(z, str2);
                    Camera2Impl.this.mbSmaWireStatusAndModuleIdArrived = true;
                    CameraUnitLog.d(Camera2Impl.TAG,
                            "checkSmaWireStatusAndModuleIdArrived, smaWireConnected : " + z + ", moduleID: " + str2);
                } catch (Throwable th) {
                    Camera2Impl.this.mbSmaWireStatusAndModuleIdArrived = true;
                    CameraUnitLog.e(Camera2Impl.TAG, "checkSmaWireStatusAndModuleIdArrived, key does not exist: " + th);
                }
            }
        };
        this.mSessionStateCallback = new CameraCaptureSession.StateCallback() { // from class:
                                                                                // com.oplus.ocs.camera.producer.device.Camera2Impl.5
            private static final String TAG = "StateCallback";

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                CameraUnitLog.e(TAG, "onConfigured," + cameraCaptureSession);
                CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.onCameraCaptureSessionConfigured");
                Camera2Impl.this.mCaptureSession = cameraCaptureSession;
                Camera2Impl.this.mSessionVariable.open();
                CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.onCameraCaptureSessionConfigured");
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                CameraUnitLog.d(TAG, "onConfigureFailed," + cameraCaptureSession, true);
                if (Camera2Impl.this.mCameraSessionCallback != null) {
                    Camera2Impl.this.mCameraSessionCallback.onConfigureFailed(cameraCaptureSession);
                }
                Camera2Impl.this.mSessionVariable.open();
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onReady(@NonNull CameraCaptureSession cameraCaptureSession) {
                if (Camera2Impl.this.mCameraSessionCallback != null) {
                    Camera2Impl.this.mCameraSessionCallback.onReady(cameraCaptureSession);
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onActive(@NonNull CameraCaptureSession cameraCaptureSession) {
                if (Camera2Impl.this.mCameraSessionCallback != null) {
                    Camera2Impl.this.mCameraSessionCallback.onActive(cameraCaptureSession);
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onCaptureQueueEmpty(@NonNull CameraCaptureSession cameraCaptureSession) {
                if (Camera2Impl.this.mCameraSessionCallback != null) {
                    Camera2Impl.this.mCameraSessionCallback.onCaptureQueueEmpty(cameraCaptureSession);
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onSurfacePrepared(@NonNull CameraCaptureSession cameraCaptureSession,
                    @NonNull Surface surface) {
                if (Camera2Impl.this.mCameraSessionCallback != null) {
                    Camera2Impl.this.mCameraSessionCallback.onSurfacePrepared(cameraCaptureSession, surface);
                }
            }
        };
        this.mCameraType = str;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void setCallback(CameraDevice.StateCallback stateCallback, CameraCaptureSession.StateCallback stateCallback2,
            CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter,
            CameraPictureCallbackAdapter cameraPictureCallbackAdapter,
            CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter) {
        this.mCameraStateCallback = stateCallback;
        this.mCameraSessionCallback = stateCallback2;
        this.mCameraPreviewCallbackAdapter = cameraPreviewCallbackAdapter;
        cameraPreviewCallbackAdapter.setPreviewMetadataCallback(this.mCallback);
        this.mCameraPictureCallbackAdapter = cameraPictureCallbackAdapter;
        this.mCameraRecordingCallbackAdapter = cameraRecordingCallbackAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void takeNextBurstCapture(CaptureResult captureResult, CameraRequestTag cameraRequestTag) {
        if (PlatformUtil.isQualcommPlatform()
                || !CameraCharacteristicsHelper.isSupportCShot(cameraRequestTag.mCameraType)) {
            return;
        }
        CameraUnitLog.d(TAG, "takeNextBurstCapture, mbContinueShot :" + this.mbContinueShot);
        if (this.mbContinueShot && cameraRequestTag.mReceiveCshotNum < cameraRequestTag.mMaxBustShotNum) {
            long frameNumber = captureResult.getFrameNumber();
            boolean z = true;
            cameraRequestTag.mRequestNum = 1;
            if (this.mMtkCShortFrameNumberSet.contains(Long.valueOf(frameNumber))) {
                return;
            }
            int[] iArr = (int[]) captureResult.get(CameraMetadataKey.KEY_RESULT_CSHOT_EARLY_NOTIFY);
            if (iArr != null && iArr.length > 0) {
                for (int i : iArr) {
                    if (i == 1) {
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                takePicture(cameraRequestTag, this.mTakePictureParameter, this.mTakePictureCallbackHandler);
                this.mMtkCShortFrameNumberSet.add(Long.valueOf(frameNumber));
                return;
            }
            return;
        }
        this.mMtkCShortFrameNumberSet.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class CaptureCallback extends CameraCaptureSession.CaptureCallback {
        private CameraRequestTag mRequestTag = null;

        CaptureCallback() {
        }

        public void setRequestTag(CameraRequestTag cameraRequestTag) {
            this.mRequestTag = cameraRequestTag;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j,
                long j2) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onCaptureStarted(captureRequest, j, j2);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest,
                TotalCaptureResult totalCaptureResult) {
            CameraIdType cameraIdType = CameraCharacteristicsHelper.getCameraIdType(Camera2Impl.this.getLogicId());
            if (cameraIdType != null) {
                Camera2Impl.this.mCameraPictureCallbackAdapter.onCaptureCompleted(captureRequest, totalCaptureResult,
                        cameraIdType.getCameraType());
            }
            CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
            Camera2Impl.this.takeNextBurstCapture(totalCaptureResult, cameraRequestTag);
            if (48 == cameraRequestTag.mApsDecisionFeatureType || 49 == cameraRequestTag.mApsDecisionFeatureType
                    || 50 == cameraRequestTag.mApsDecisionFeatureType) {
                Camera2Impl.this.setRequestCaptureNum(0);
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest,
                CaptureFailure captureFailure) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onCaptureFailed(captureRequest, captureFailure);
            CameraUnitLog.e(Camera2Impl.TAG, "onCaptureFailed, fail reason:" + captureFailure.getReason());
            if (Camera2Impl.this.isFlashRequired((CameraRequestTag) captureRequest.getTag())) {
                synchronized (Camera2Impl.this.mSessionLock) {
                    Camera2Impl.this.resetParamsForFlash(true);
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureProgressed(@NonNull CameraCaptureSession cameraCaptureSession,
                @NonNull CaptureRequest captureRequest, @NonNull CaptureResult captureResult) {
            CameraPictureCallbackAdapter.PictureResult.Builder builder = new CameraPictureCallbackAdapter.PictureResult.Builder();
            builder.setCaptureResult(captureResult);
            CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
            builder.set(ApsOtherParameter.KEY_REQUEST_TAG, cameraRequestTag.mAppOpaqueObj);
            Camera2Impl.this.mCameraPictureCallbackAdapter.onPictureCaptureProgressed(captureRequest, builder.build());
            Camera2Impl.this.takeNextBurstCapture(captureResult, cameraRequestTag);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureSequenceCompleted(@NonNull CameraCaptureSession cameraCaptureSession, int i, long j) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onPictureCaptureSequenceCompleted(i, j);
            if (Camera2Impl.this.mTakePictureRequestTag != null) {
                if (!Camera2Impl.this.mTakePictureRequestTag.mbIsFlashRequired) {
                    Camera2Impl camera2Impl = Camera2Impl.this;
                    if (!camera2Impl.needSetIZoomState(camera2Impl.mTakePictureRequestTag)) {
                        return;
                    }
                }
                synchronized (Camera2Impl.this.mSessionLock) {
                    if (Camera2Impl.this.mTakePictureRequestTag.mbIsFlashRequired) {
                        Camera2Impl camera2Impl2 = Camera2Impl.this;
                        camera2Impl2.resetParamsForFlash(camera2Impl2.mFlashController.isAeTriggerStart());
                    }
                    Camera2Impl camera2Impl3 = Camera2Impl.this;
                    if (camera2Impl3.needSetIZoomState(camera2Impl3.mTakePictureRequestTag)) {
                        Camera2Impl.this.setIZoomEnable(false, null);
                    }
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureSequenceAborted(@NonNull CameraCaptureSession cameraCaptureSession, int i) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onPictureCaptureSequenceAborted(i);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureBufferLost(@NonNull CameraCaptureSession cameraCaptureSession,
                @NonNull CaptureRequest captureRequest, @NonNull Surface surface, long j) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onPictureCaptureBufferLost(captureRequest, surface, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFrontCamera() {
        return this.mCameraType.equals("front_main") || this.mCameraType.equals("front_wide");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lockAeStateForPreCapture() throws CameraAccessException {
        CameraUnitLog.d(TAG, "lockAeStateForPreCapture, start");
        if (this.mbAeAfLocked || this.mPreviewBuilder == null) {
            return;
        }
        if (PlatformUtil.isMtkPlatform()) {
            this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_AE_LOCK_BY_TOUCH, 0);
        }
        CaptureRequestProxy.Builder builder = this.mPreviewBuilder;
        if (builder != null) {
            builder.setParameter(CaptureRequest.CONTROL_AE_LOCK, Boolean.TRUE);
        }
        Parameter parameter = this.mTakePictureParameter;
        if (parameter != null) {
            parameter.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.TRUE);
        }
        requestRepeating(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAutoFocusCancelCaptureRequest() throws CameraAccessException, IllegalStateException {
        CameraUnitLog.d(TAG, "sendAutoFocusCancelCaptureRequest, start");
        CaptureRequestProxy.Builder builder = this.mPreviewBuilder;
        if (builder != null) {
            builder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            this.mCaptureSession.capture(this.mPreviewBuilder.build(), this.mPreviewCallback, null);
            this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 0);
            requestRepeating(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetParamsForFlash(boolean z) {
        CameraUnitLog.d(TAG, "resetParamsForFlash, start cancelAETrigger: " + z);
        this.mFlashController.resetState();
        CaptureRequestProxy.Builder builder = this.mPreviewBuilder;
        if (builder == null) {
            return;
        }
        if (z) {
            try {
                builder.setParameter(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 2);
                if (!this.mbAeAfLocked && !isFrontCamera()) {
                    this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 2);
                }
                this.mCaptureSession.capture(this.mPreviewBuilder.build(), this.mPreviewCallback, null);
                this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 0);
                this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 0);
            } catch (CameraAccessException | IllegalStateException e) {
                CameraUnitLog.e(TAG, "resetParamsForFlash", e);
                return;
            }
        }
        if (this.mbSupportTorchFlash) {
            setFlashMode(this.mFlashMode, this.mPreviewBuilder, true);
            updateProTorchMode(0);
        }
        if (!this.mbAeAfLocked) {
            lockAe(false);
        }
        requestRepeating(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFlashRequired(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag == null || !cameraRequestTag.mbBurstShot) {
            return "on".equals(this.mFlashMode)
                    || ("auto".equals(this.mFlashMode) && isNeedAutoFlash(cameraRequestTag));
        }
        return false;
    }

    private boolean isNeedAutoFlash(CameraRequestTag cameraRequestTag) {
        boolean z = this.mbNeedAutoFlash;
        if (PlatformUtil.isMtkPlatform() && !z) {
            z = 29 == cameraRequestTag.mFeatureType && 4 == cameraRequestTag.mRequestNum;
        }
        CameraUnitLog.d(TAG, "isNeedAutoFlash, mbNeedAutoFlash: " + this.mbNeedAutoFlash + ", needAutoFlash: " + z);
        return z;
    }

    private void triggerAeAfForFlash(Handler handler) {
        CameraUnitLog.d(TAG, "triggerAeAfForFlash, start", true);
        CaptureRequestProxy.Builder builder = this.mPreviewBuilder;
        if (builder == null) {
            return;
        }
        try {
            builder.setParameter(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
            if (this.mFocusMode != null && this.mFocusMode.intValue() != 1 && !isFrontCamera() && !this.mbAeAfLocked
                    && !((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_TORCH_FLASH, false))
                            .booleanValue()) {
                this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 1);
            }
            this.mCaptureSession.capture(this.mPreviewBuilder.build(), this.mPreviewCallback, handler);
            this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 0);
            this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 0);
        } catch (CameraAccessException | IllegalStateException e) {
            CameraUnitLog.e(TAG, "triggerAeAfForFlash", e);
        }
    }

    private boolean checkAeAfState(@NonNull CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        FlashController flashController;
        CameraUnitLog.d(TAG, "checkAeAfState, start");
        if (!isFlashRequired(cameraRequestTag) || (flashController = this.mFlashController) == null
                || flashController.isAeConverged() || this.mbAeAfLocked) {
            return true;
        }
        CameraUnitLog.d(TAG, "checkAeAfState, mbAeAfLocked: " + this.mbAeAfLocked);
        if (isFrontCamera() || this.mbSupportTorchFlash) {
            setFlashMode("torch", this.mPreviewBuilder, false);
            updateProTorchMode(1);
            requestRepeating(handler);
        }
        if (48 != cameraRequestTag.mApsDecisionFeatureType && 49 != cameraRequestTag.mApsDecisionFeatureType
                && 50 != cameraRequestTag.mApsDecisionFeatureType) {
            parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_BRACKET_MODE,
                    (Parameter.Key<int[]>) new int[] { 0 });
        }
        cameraRequestTag.mbIsFlashRequired = true;
        this.mFlashController.setNeedCapture(true);
        this.mFlashController.setFrontCamera(isFrontCamera());
        this.mFlashController.setCurrentState(0);
        triggerAeAfForFlash(handler);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIZoomEnable(boolean z, Handler handler) {
        CaptureRequestProxy.Builder builder = this.mPreviewBuilder;
        if (builder != null) {
            builder.setParameter(CameraMetadataKey.KEY_IZOOM_PREVIEW, new int[] { z ? 1 : 0 });
            requestRepeating(handler);
            CameraUnitLog.d(TAG, "setIZoomPreviewState, enable: " + z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestCaptureNum(int i) {
        if (this.mPreviewBuilder != null) {
            CameraUnitLog.d(TAG, "setRequestCaptureNum, num: " + i);
            this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_REQUEST_CAPTURE_NUM, new int[] { i });
            requestRepeating(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needSetIZoomState(@NonNull CameraRequestTag cameraRequestTag) {
        return !((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_IZOOM_PREVIEW_ENABLE, false))
                .booleanValue() && PlatformUtil.isQualcommPlatform()
                && 4 == cameraRequestTag.mSupportCaptureZoomFeature;
    }

    private boolean needCaptureEVList(@NonNull CameraRequestTag cameraRequestTag) {
        int intValue = ((Integer) CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_NIGHT_OFFLINE_R2Y_CAPTURE_EVLIST_EXP_TIME_THRESHOLD, 0))
                .intValue();
        if (PlatformUtil.isQualcommPlatform()) {
            return 42 == cameraRequestTag.mApsDecisionFeatureType || 51 == cameraRequestTag.mApsDecisionFeatureType
                    || 48 == cameraRequestTag.mApsDecisionFeatureType || 49 == cameraRequestTag.mApsDecisionFeatureType
                    || 50 == cameraRequestTag.mApsDecisionFeatureType
                    || (Util.isSupportOfflineNight(cameraRequestTag.mCaptureMode) && cameraRequestTag.mbInNightProcess
                            && !cameraRequestTag.mbTripodEnable && (intValue == 0
                                    || (intValue > 0 && this.mOfflineNightExpTime <= intValue)))
                    || ("portrait_mode".equals(cameraRequestTag.mCaptureMode)
                            && 26 == cameraRequestTag.mApsDecisionFeatureType && ((Boolean) CameraConfigHelper
                                    .getConfigValue(CameraConfigBase.KEY_CHDR_NEED_EVLIST, false)).booleanValue());
        }
        return false;
    }

    private void setCaptureEVList(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag.mCaptureEVList == null || cameraRequestTag.mCaptureEVList.length == 0) {
            CameraUnitLog.w(TAG, "setCaptureEVList, ev list is not existed");
            return;
        }
        CaptureRequestProxy.Builder builder = this.mPreviewBuilder;
        if (builder != null) {
            try {
                if (builder.setParameter(CameraMetadataKey.KEY_MFSR_CAPTURE_EV_LIST, cameraRequestTag.mCaptureEVList)) {
                    if (this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_APS_FEATURE_TYPE,
                            new int[] { cameraRequestTag.mApsDecisionFeatureType })) {
                        if (48 == cameraRequestTag.mApsDecisionFeatureType
                                || 49 == cameraRequestTag.mApsDecisionFeatureType
                                || 50 == cameraRequestTag.mApsDecisionFeatureType) {
                            if (this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_REQUEST_CAPTURE_NUM,
                                    new int[] { cameraRequestTag.mRequestNum })) {
                                CaptureRequestProxy.Builder builder2 = this.mPreviewBuilder;
                                CaptureRequest.Key<int[]> key = CameraMetadataKey.KEY_IS_BURST_CAPTURE;
                                int[] iArr = new int[1];
                                iArr[0] = cameraRequestTag.mbBurstShot ? 1 : 0;
                                if (builder2.setParameter(key, iArr)) {
                                    CameraUnitLog.e(TAG,
                                            "setCaptureEVList, tag.mRequestNum: " + cameraRequestTag.mRequestNum);
                                }
                            }
                            CameraUnitLog.e(TAG, "setCaptureEVList, set capture num error, so return");
                            return;
                        }
                        this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_CAPTURE_REQUEST_NUM,
                                new int[] { cameraRequestTag.mRequestNum });
                        ArrayList arrayList = new ArrayList();
                        if (48 != cameraRequestTag.mApsDecisionFeatureType
                                && 49 != cameraRequestTag.mApsDecisionFeatureType
                                && 50 != cameraRequestTag.mApsDecisionFeatureType) {
                            for (int i = 0; i < 3; i++) {
                                arrayList.add(this.mPreviewBuilder.build());
                            }
                            this.mCaptureSession.captureBurst(arrayList, this.mPreviewCallback, null);
                            this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_MFSR_CAPTURE_EV_LIST, null);
                            requestRepeating(null);
                            CameraUnitLog.d(TAG,
                                    "setCaptureEVList, mCaptureEVList: "
                                            + Arrays.toString(cameraRequestTag.mCaptureEVList)
                                            + ", mApsDecisionFeatureType: " + cameraRequestTag.mApsDecisionFeatureType);
                            return;
                        }
                        arrayList.add(this.mPreviewBuilder.build());
                        this.mCaptureSession.captureBurst(arrayList, this.mPreviewCallback, null);
                        this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_MFSR_CAPTURE_EV_LIST, null);
                        requestRepeating(null);
                        CameraUnitLog.d(TAG,
                                "setCaptureEVList, mCaptureEVList: " + Arrays.toString(cameraRequestTag.mCaptureEVList)
                                        + ", mApsDecisionFeatureType: " + cameraRequestTag.mApsDecisionFeatureType);
                        return;
                    }
                }
                CameraUnitLog.e(TAG, "setCaptureEVList, set ev list error, so return");
            } catch (CameraAccessException | IllegalArgumentException unused) {
                CameraUnitLog.e(TAG, "setCaptureEVList, failed");
            }
        }
    }

    private void lockAe(boolean z) {
        this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AE_LOCK, Boolean.valueOf(z));
        this.mbAeAfLocked = z;
    }

    private void lockAwb(boolean z) {
        this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(z));
    }

    private void updateProTorchMode(int i) {
        CameraUnitLog.d(TAG, "updateProTorchMode, value: " + i);
        Parameter build = new PreviewParameter.Builder().build();
        build.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_PRO_TORCH_MODE,
                (Parameter.Key<int[]>) new int[] { i });
        build.update(this.mPreviewBuilder, 1);
    }

    private void setFlashMode(String flashModeStr, CaptureRequestProxy.Builder builder, boolean updateField) {
        CameraUnitLog.d(TAG, "setFlashMode, value: " + flashModeStr, true);
        if (flashModeStr == null || this.mbWaitingAeAfConverge) {
            return;
        }
        if (updateField) {
            this.mFlashMode = flashModeStr;
        }
        int flashModeInt;
        switch (flashModeStr) {
            case "on":
                flashModeInt = 0;
                break;
            case "off":
                flashModeInt = 1;
                break;
            case "auto":
                flashModeInt = 2;
                break;
            case "torch":
                flashModeInt = 3;
                break;
            default:
                return;
        }
        switch (flashModeInt) {
            case 0: // "on" - FLASH_MODE=1(SINGLE), AE_MODE=3(ON_ALWAYS_FLASH)
                builder.setParameter(CaptureRequest.FLASH_MODE, Integer.valueOf(1));
                builder.setParameter(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(3));
                break;
            case 1: // "off" - FLASH_MODE=0(OFF), AE_MODE=1(ON)
                builder.setParameter(CaptureRequest.FLASH_MODE, Integer.valueOf(0));
                builder.setParameter(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(1));
                break;
            case 2: // "auto" - FLASH_MODE=1(SINGLE), AE_MODE=2(ON_AUTO_FLASH)
                builder.setParameter(CaptureRequest.FLASH_MODE, Integer.valueOf(1));
                builder.setParameter(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(2));
                break;
            case 3: // "torch" - FLASH_MODE=2(TORCH), AE_MODE=1(ON)
                builder.setParameter(CaptureRequest.FLASH_MODE, Integer.valueOf(2));
                builder.setParameter(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(1));
                break;
            default:
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseBlocks() {
        this.mDeviceVariable.open();
        this.mSessionVariable.open();
        this.mRepeatingVariable.open();
    }

    private void setFocusMode(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler, Size size,
            Collection<Surface> collection) {
        int intValue = ((Integer) parameter.get(PreviewParameter.KEY_FOCUS_MODE)).intValue();
        RectF rectF = (RectF) parameter.get(PreviewParameter.KEY_AF_REGIONS);
        RectF rectF2 = (RectF) parameter.get(PreviewParameter.KEY_AE_REGIONS);
        Integer num = this.mFocusMode;
        this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 0);
        if (3 == intValue) {
            autoFocus(cameraRequestTag, rectF, rectF2, handler, size, collection, parameter);
            this.mAfRegion = rectF;
        } else if (1 != intValue && 2 != intValue) {
            if (4 == intValue) {
                lockFocus();
                this.mAfRegion = null;
            } else if (intValue == 0) {
                this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_MODE, 0);
            }
        } else if (!Util.isSystemCamera()) {
            MeteringRectangle[] meteringRectangleArr = (MeteringRectangle[]) this.mPreviewBuilder
                    .getParameter(CaptureRequest.CONTROL_AF_REGIONS);
            if (meteringRectangleArr == null || meteringRectangleArr.length <= 0) {
                return;
            }
            if (meteringRectangleArr[0].getX() == 0 && meteringRectangleArr[0].getY() == 0
                    && meteringRectangleArr[0].getWidth() == 0 && meteringRectangleArr[0].getHeight() == 0) {
                return;
            }
            cancelAutoFocus(cameraRequestTag, intValue, handler, collection, parameter);
        } else if (num != null && 4 != num.intValue() && 3 != num.intValue() && num.intValue() != 0) {
            cancelAutoFocus(cameraRequestTag, intValue, handler, collection, parameter);
        } else if (1 == intValue) {
            this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_MODE, 4);
        } else if (2 == intValue) {
            this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_MODE, 3);
        }
    }

    private void autoFocus(CameraRequestTag cameraRequestTag, RectF rectF, RectF rectF2, Handler handler, Size size,
            @NonNull Collection<Surface> collection, @NonNull Parameter parameter) {
        CameraUnitLog.v(TAG, "autoFocus, afRect: " + rectF + ", aeRect: " + rectF2 + ", mAfRegion: " + this.mAfRegion);
        if ((rectF == null && rectF2 == null) || size == null) {
            return;
        }
        try {
            CameraCharacteristicsWrapper cameraCharacteristicsWrapper = CameraCharacteristicsHelper
                    .getCameraCharacteristicsWrapper(this.mCameraType);
            if (cameraCharacteristicsWrapper == null) {
                CameraUnitLog.e(TAG, "autoFocus, characteristics or previewSize is null");
                return;
            }
            CameraDevice cameraDevice = this.mCameraDevice;
            if (cameraDevice == null) {
                CameraUnitLog.e(TAG, "autoFocus, camera already closed.");
                return;
            }
            CaptureRequestProxy.Builder builder = new CaptureRequestProxy.Builder(
                    cameraDevice.createCaptureRequest(this.mSessionEntity.getTemplate()));
            for (Surface surface : collection) {
                builder.addTarget(surface);
            }
            float f = cameraRequestTag == null ? 1.0f : cameraRequestTag.mZoomRatio;
            Rect cropRegionForZoom = Util.getCropRegionForZoom(Float.valueOf(f), this.mCameraType);
            int intValue = ((Integer) cameraCharacteristicsWrapper.get(CameraCharacteristics.SENSOR_ORIENTATION))
                    .intValue();
            MeteringRectangle[] defaultWeightRegion = AEAFHelp.getDefaultWeightRegion();
            Rect rect = defaultWeightRegion[0].getRect();
            if (rectF2 != null) {
                rect = AEAFHelp.calculateTapArea(rectF2, size, intValue, cropRegionForZoom);
                if (f >= 1.0f) {
                    defaultWeightRegion = new MeteringRectangle[] {
                            new MeteringRectangle(rect, AEAFHelp.getExposureMeteringWeight()) };
                }
            }
            this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_MODE, 1);
            int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
            if (i < 0) {
                parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_AE_REGION,
                        (Parameter.Key<int[]>) new CameraMeteringRectangle(rect, AEAFHelp.getExposureMeteringWeight())
                                .getValue());
                this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_AE_REGION,
                        new CameraMeteringRectangle(rect, AEAFHelp.getExposureMeteringWeight()).getValue());
            } else {
                builder.setParameter(CaptureRequest.CONTROL_AE_REGIONS, defaultWeightRegion);
                this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AE_REGIONS, defaultWeightRegion);
            }
            if (rectF != null) {
                if (AEAFHelp.getDefaultFocusArea().equals(rectF)) {
                    MeteringRectangle[] defaultWeightRegion2 = AEAFHelp.getDefaultWeightRegion();
                    this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_MODE, 1);
                    parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_AF_REGION,
                            (Parameter.Key<int[]>) new CameraMeteringRectangle(defaultWeightRegion2[0]).getValue());
                    builder.setParameter(CaptureRequest.CONTROL_AF_REGIONS, defaultWeightRegion2);
                    this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_REGIONS, defaultWeightRegion2);
                    this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_AF_REGION,
                            new CameraMeteringRectangle(defaultWeightRegion2[0]).getValue());
                } else {
                    Rect calculateTapArea = AEAFHelp.calculateTapArea(rectF, size, intValue, cropRegionForZoom);
                    this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_MODE, 1);
                    if (i < 0) {
                        int[] value = new CameraMeteringRectangle(calculateTapArea, AEAFHelp.getFocusMeteringWeight())
                                .getValue();
                        parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_AF_REGION,
                                (Parameter.Key<int[]>) value);
                        this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_AF_REGION, value);
                    } else {
                        MeteringRectangle[] meteringRectangleArr = {
                                new MeteringRectangle(calculateTapArea, AEAFHelp.getFocusMeteringWeight()) };
                        builder.setParameter(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr);
                        this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr);
                    }
                }
                if (rectF.equals(this.mAfRegion)) {
                    return;
                }
                parameter.set(CaptureRequest.CONTROL_AF_REGIONS,
                        (MeteringRectangle[]) builder.getParameter(CaptureRequest.CONTROL_AF_REGIONS));
                parameter.set(CaptureRequest.CONTROL_AE_REGIONS,
                        (MeteringRectangle[]) builder.getParameter(CaptureRequest.CONTROL_AE_REGIONS));
                parameter.update(builder, 4);
                builder.setTag(cameraRequestTag);
                setFlashMode(this.mFlashMode, builder, true);
                setZoomRatio(builder, f, parameter);
                builder.setParameter(CaptureRequest.CONTROL_MODE, 1);
                builder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 1);
                builder.setParameter(CaptureRequest.CONTROL_AF_MODE, 1);
                requestCapture(builder, this.mPreviewCallback, handler);
            }
        } catch (CameraAccessException e) {
            CameraUnitLog.e(TAG, "autoFocus", e);
        }
    }

    private void cancelAutoFocus(CameraRequestTag cameraRequestTag, int i, Handler handler,
            Collection<Surface> collection, Parameter parameter) {
        FlashController flashController;
        if (isFrontCamera() || (flashController = this.mFlashController) == null
                || !flashController.isAeTriggerStart()) {
            try {
                CaptureRequestProxy.Builder builder = new CaptureRequestProxy.Builder(
                        this.mCameraDevice.createCaptureRequest(this.mSessionEntity.getTemplate()));
                for (Surface surface : collection) {
                    builder.addTarget(surface);
                }
                if (parameter != null) {
                    parameter.update(builder, 1);
                }
                setZoomRatio(builder, cameraRequestTag.mZoomRatio, parameter);
                builder.setTag(cameraRequestTag);
                builder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 2);
                setFlashMode((String) parameter.get(PreviewParameter.KEY_FLASH_MODE), builder, false);
                requestCapture(builder, this.mPreviewCallback, handler);
                this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_TRIGGER, 0);
                this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_MODE, 1);
                if (1 == i) {
                    this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_MODE, 4);
                } else if (2 == i) {
                    this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_MODE, 3);
                }
                this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_REGIONS, AEAFHelp.getDefaultWeightRegion());
                this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AE_REGIONS, AEAFHelp.getDefaultWeightRegion());
            } catch (CameraAccessException e) {
                CameraUnitLog.e(TAG, "cancelAutoFocus", e);
            }
        }
    }

    private void lockFocus() {
        this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_MODE, 1);
        this.mPreviewBuilder.setParameter(CaptureRequest.CONTROL_AF_MODE, 1);
    }

    private CaptureRequestProxy.Builder createVideoSnapshotBuilder() {
        CaptureRequestProxy.Builder builder = null;
        try {
            CaptureRequestProxy.Builder builder2 = new CaptureRequestProxy.Builder(
                    this.mCameraDevice.createCaptureRequest(4));
            try {
                builder2.setTag(this.mTakePictureRequestTag);
                return builder2;
            } catch (CameraAccessException e) {
                e = e;
                builder = builder2;
                CameraUnitLog.e(TAG, "createVideoSnapshotBuilder, e: " + e.getMessage());
                return builder;
            }
        } catch (CameraAccessException e2) {
            e = e2;
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void videoSnapshot(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        CameraUnitLog.d(TAG, "videoSnapshot");
        this.mTakePictureRequestTag = cameraRequestTag;
        this.mTakePictureParameter = parameter;
        this.mTakePictureCallbackHandler = handler;
        if (!cameraRequestTag.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag,
                Parameter.ParameterStage.BEFORE_TAKE_PICTURE, 35)) {
            handler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.6
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraPictureCallbackAdapter) cameraRequestTag.mCallback).onCaptureFailed((CaptureRequest) null,
                            (CameraPictureCallbackAdapter.PictureResult) null);
                }
            });
            return;
        }
        CaptureRequestProxy.Builder createVideoSnapshotBuilder = createVideoSnapshotBuilder();
        if (createVideoSnapshotBuilder != null) {
            for (SurfaceKey surfaceKey : cameraRequestTag.mAddTargetSurfaces.keySet()) {
                SurfaceWrapper findWrapper = findWrapper(surfaceKey.getUsage(), surfaceKey.getCameraType(),
                        surfaceKey.getFormat());
                if (findWrapper != null) {
                    CameraUnitLog.d(TAG, "videoSnapshot, add surface wrapper: " + findWrapper);
                    createVideoSnapshotBuilder.addTarget(this.mOutputConfigurationMap.get(findWrapper).getSurface());
                }
            }
            if (parameter != null) {
                parameter.update(createVideoSnapshotBuilder, 2);
                addDefaultParameter(createVideoSnapshotBuilder, parameter);
                if (parameter.containCustomKey(PreviewParameter.KEY_FLASH_MODE)) {
                    setFlashMode((String) parameter.get(PreviewParameter.KEY_FLASH_MODE), createVideoSnapshotBuilder,
                            false);
                }
                if (parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
                    setZoomRatio(createVideoSnapshotBuilder,
                            ((Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue(), parameter);
                }
                if (parameter.containCustomKey(PreviewParameter.KEY_FOCUS_MODE)
                        && 3 == ((Integer) parameter.get(PreviewParameter.KEY_FOCUS_MODE)).intValue()) {
                    createVideoSnapshotBuilder.setParameter(CaptureRequest.CONTROL_AF_MODE, 1);
                }
            }
            try {
                this.mPictureCallback.setRequestTag(cameraRequestTag);
                if (cameraRequestTag.mCallback instanceof CameraPictureCallbackAdapter) {
                    ((CameraPictureCallbackAdapter) cameraRequestTag.mCallback).onCapturePrepared();
                }
                this.mCaptureSession.capture(createVideoSnapshotBuilder.build(), this.mPictureCallback, handler);
            } catch (CameraAccessException | IllegalStateException e) {
                CameraUnitLog.e(TAG, "videoSnapshot, e: " + e.getMessage());
            }
        }
    }

    private void addCaptureSurface(CameraRequestTag cameraRequestTag, CaptureRequestProxy.Builder builder,
            HashMap<SurfaceKey, Surface> hashMap) {
        Iterator<SurfaceKey> it = hashMap.keySet().iterator();
        boolean z = false;
        boolean z2 = false;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            SurfaceKey next = it.next();
            SurfaceWrapper findWrapper = findWrapper(next.getUsage(), next.getCameraType(), next.getFormat());
            if (findWrapper != null && (!"professional_mode".equals(cameraRequestTag.mCaptureMode)
                    || !"surface_key_preview".equals(findWrapper.getSurfaceUsage()) || !"1".equals(
                            CameraConfigHelper.getConfigValue(DefaultUtill.KEY_SUPPORT_EXPERT_MODE_NZSL_SUPPORT)))) {
                CameraUnitLog.d(TAG, "takePicture, add surface wrapper: " + findWrapper);
                if ("surface_key_picture_mfnr".equals(next.getUsage())) {
                    z2 = true;
                }
                builder.addTarget(this.mOutputConfigurationMap.get(findWrapper).getSurface());
                if ("surface_key_picture".equals(findWrapper.getSurfaceUsage())
                        || "surface_key_picture_mfnr".equals(findWrapper.getSurfaceUsage())) {
                    if (cameraRequestTag.mApsRequestTag.mCaptureStreamNumber <= 1
                            || "rear_main".equals(next.getCameraType())) {
                        Size appSurfaceSize = findWrapper.getAppSurfaceSize();
                        cameraRequestTag.mApsRequestTag.mPictureSize = appSurfaceSize;
                        CameraUnitLog.d(TAG, "takePicture, update output picture size: " + appSurfaceSize);
                    }
                    if (cameraRequestTag.mbSatOpen && (next.getFormat() == 37 || next.getFormat() == 32)) {
                        SurfaceWrapper findWrapper2 = findWrapper(next.getUsage(), "rear_wide",
                                cameraRequestTag.mbPhoto10BitsEnable ? 34 : 35);
                        SurfaceWrapper findWrapper3 = findWrapper(next.getUsage(), "rear_main",
                                cameraRequestTag.mbPhoto10BitsEnable ? 34 : 35);
                        SurfaceWrapper findWrapper4 = findWrapper(next.getUsage(), "rear_tele",
                                cameraRequestTag.mbPhoto10BitsEnable ? 34 : 35);
                        Size[] sizeArr = new Size[3];
                        sizeArr[0] = findWrapper2 != null ? findWrapper2.getAppSurfaceSize() : null;
                        sizeArr[1] = findWrapper3 != null ? findWrapper3.getAppSurfaceSize() : null;
                        sizeArr[2] = findWrapper4 != null ? findWrapper4.getAppSurfaceSize() : null;
                        cameraRequestTag.mSensorSizes = sizeArr;
                    }
                    cameraRequestTag.mMaxImages = findWrapper.getMaxImageNumber();
                }
            }
        }
        if (z2) {
            if (cameraRequestTag.mApsDecisionFeatureType != 5 && cameraRequestTag.mCaptureSurface != 1) {
                z = true;
            }
            SurfaceWrapper findWrapper5 = findWrapper(z ? "surface_key_picture" : "surface_key_picture_mfnr",
                    this.mCameraType, 35);
            builder.removeTarget(this.mOutputConfigurationMap.get(findWrapper5).getSurface());
            CameraUnitLog.d(TAG, "takePicture, remove surface useMfnr: " + z + ", wrapper: " + findWrapper5);
        }
    }

    /*
     * JADX WARN: Removed duplicated region for block: B:167:0x0415 A[Catch:
     * Exception -> 0x0957, TryCatch #0 {Exception -> 0x0957, blocks: (B:12:0x006b,
     * B:14:0x0077, B:16:0x0080, B:19:0x0089, B:36:0x00b6, B:38:0x00bb, B:40:0x00c1,
     * B:42:0x00c7, B:46:0x00dc, B:49:0x00e6, B:50:0x00f2, B:52:0x00f8, B:54:0x010d,
     * B:55:0x0112, B:57:0x011b, B:59:0x011f, B:64:0x0128, B:65:0x0131, B:67:0x0143,
     * B:69:0x0150, B:71:0x015c, B:73:0x0162, B:75:0x016a, B:77:0x0170, B:80:0x017e,
     * B:82:0x0186, B:83:0x0195, B:85:0x019d, B:86:0x01aa, B:88:0x01b6, B:90:0x01bc,
     * B:92:0x01c0, B:93:0x01c2, B:95:0x01d0, B:97:0x01d4, B:98:0x01db,
     * B:100:0x01e1, B:102:0x01e5, B:104:0x01ed, B:106:0x01f1, B:107:0x01f6,
     * B:109:0x0240, B:111:0x0246, B:113:0x024c, B:115:0x0252, B:117:0x0256,
     * B:119:0x025b, B:121:0x028d, B:122:0x0291, B:124:0x02a3, B:125:0x02ac,
     * B:126:0x02b1, B:128:0x02b5, B:131:0x02bb, B:132:0x02c9, B:134:0x02cf,
     * B:135:0x02f2, B:136:0x02f9, B:138:0x02ff, B:140:0x0303, B:142:0x0307,
     * B:144:0x030c, B:146:0x0344, B:148:0x0348, B:165:0x03b0, B:167:0x0415,
     * B:168:0x0423, B:170:0x0439, B:172:0x043d, B:174:0x0442, B:176:0x044a,
     * B:178:0x044e, B:182:0x045e, B:191:0x04d3, B:192:0x04de, B:196:0x04e5,
     * B:199:0x04f6, B:201:0x04fb, B:203:0x04ff, B:204:0x050a, B:208:0x0513,
     * B:210:0x0524, B:212:0x0528, B:214:0x052d, B:215:0x053a, B:217:0x053e,
     * B:219:0x0543, B:220:0x0550, B:223:0x0595, B:225:0x0599, B:227:0x059d,
     * B:229:0x05a5, B:231:0x05aa, B:233:0x05ae, B:235:0x05b3, B:237:0x05b7,
     * B:239:0x05c4, B:241:0x05f6, B:243:0x0617, B:245:0x061f, B:246:0x062e,
     * B:248:0x0636, B:249:0x0645, B:252:0x067d, B:254:0x0683, B:256:0x0687,
     * B:258:0x068b, B:260:0x0690, B:264:0x0699, B:266:0x069d, B:268:0x06a2,
     * B:270:0x06a7, B:272:0x06ae, B:281:0x0730, B:283:0x0734, B:285:0x073c,
     * B:287:0x0753, B:289:0x076e, B:292:0x0781, B:294:0x0787, B:296:0x078b,
     * B:298:0x0790, B:300:0x0796, B:302:0x079c, B:316:0x07e1, B:318:0x07e7,
     * B:320:0x07ec, B:322:0x07f1, B:323:0x07fc, B:326:0x0803, B:327:0x080f,
     * B:329:0x0815, B:330:0x0821, B:331:0x082c, B:333:0x0832, B:335:0x0853,
     * B:337:0x085d, B:339:0x0875, B:341:0x0884, B:340:0x087d, B:343:0x0890,
     * B:345:0x089a, B:348:0x08ab, B:350:0x08b8, B:352:0x08c9, B:353:0x08cf,
     * B:347:0x08a8, B:304:0x07a2, B:306:0x07a6, B:308:0x07ac, B:309:0x07b4,
     * B:311:0x07b8, B:313:0x07c0, B:314:0x07c8, B:286:0x0748, B:274:0x06cd,
     * B:276:0x06d5, B:277:0x06f4, B:279:0x06fc, B:280:0x071b, B:250:0x0651,
     * B:240:0x05e1, B:183:0x0483, B:185:0x0498, B:188:0x04ad, B:149:0x034b,
     * B:151:0x035c, B:154:0x0375, B:156:0x0379, B:158:0x0387, B:160:0x038b,
     * B:161:0x038e, B:163:0x039f, B:354:0x08d9, B:356:0x08de, B:358:0x08e3,
     * B:360:0x08e7, B:362:0x08eb, B:363:0x0908, B:365:0x0925, B:367:0x0934,
     * B:366:0x092d, B:368:0x0937, B:370:0x093b, B:371:0x0940, B:375:0x094c,
     * B:78:0x0176, B:79:0x017b, B:20:0x008c, B:22:0x0092, B:25:0x0098, B:27:0x009e,
     * B:29:0x00a4, B:31:0x00ac), top: B:380:0x006b }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:170:0x0439 A[Catch:
     * Exception -> 0x0957, TryCatch #0 {Exception -> 0x0957, blocks: (B:12:0x006b,
     * B:14:0x0077, B:16:0x0080, B:19:0x0089, B:36:0x00b6, B:38:0x00bb, B:40:0x00c1,
     * B:42:0x00c7, B:46:0x00dc, B:49:0x00e6, B:50:0x00f2, B:52:0x00f8, B:54:0x010d,
     * B:55:0x0112, B:57:0x011b, B:59:0x011f, B:64:0x0128, B:65:0x0131, B:67:0x0143,
     * B:69:0x0150, B:71:0x015c, B:73:0x0162, B:75:0x016a, B:77:0x0170, B:80:0x017e,
     * B:82:0x0186, B:83:0x0195, B:85:0x019d, B:86:0x01aa, B:88:0x01b6, B:90:0x01bc,
     * B:92:0x01c0, B:93:0x01c2, B:95:0x01d0, B:97:0x01d4, B:98:0x01db,
     * B:100:0x01e1, B:102:0x01e5, B:104:0x01ed, B:106:0x01f1, B:107:0x01f6,
     * B:109:0x0240, B:111:0x0246, B:113:0x024c, B:115:0x0252, B:117:0x0256,
     * B:119:0x025b, B:121:0x028d, B:122:0x0291, B:124:0x02a3, B:125:0x02ac,
     * B:126:0x02b1, B:128:0x02b5, B:131:0x02bb, B:132:0x02c9, B:134:0x02cf,
     * B:135:0x02f2, B:136:0x02f9, B:138:0x02ff, B:140:0x0303, B:142:0x0307,
     * B:144:0x030c, B:146:0x0344, B:148:0x0348, B:165:0x03b0, B:167:0x0415,
     * B:168:0x0423, B:170:0x0439, B:172:0x043d, B:174:0x0442, B:176:0x044a,
     * B:178:0x044e, B:182:0x045e, B:191:0x04d3, B:192:0x04de, B:196:0x04e5,
     * B:199:0x04f6, B:201:0x04fb, B:203:0x04ff, B:204:0x050a, B:208:0x0513,
     * B:210:0x0524, B:212:0x0528, B:214:0x052d, B:215:0x053a, B:217:0x053e,
     * B:219:0x0543, B:220:0x0550, B:223:0x0595, B:225:0x0599, B:227:0x059d,
     * B:229:0x05a5, B:231:0x05aa, B:233:0x05ae, B:235:0x05b3, B:237:0x05b7,
     * B:239:0x05c4, B:241:0x05f6, B:243:0x0617, B:245:0x061f, B:246:0x062e,
     * B:248:0x0636, B:249:0x0645, B:252:0x067d, B:254:0x0683, B:256:0x0687,
     * B:258:0x068b, B:260:0x0690, B:264:0x0699, B:266:0x069d, B:268:0x06a2,
     * B:270:0x06a7, B:272:0x06ae, B:281:0x0730, B:283:0x0734, B:285:0x073c,
     * B:287:0x0753, B:289:0x076e, B:292:0x0781, B:294:0x0787, B:296:0x078b,
     * B:298:0x0790, B:300:0x0796, B:302:0x079c, B:316:0x07e1, B:318:0x07e7,
     * B:320:0x07ec, B:322:0x07f1, B:323:0x07fc, B:326:0x0803, B:327:0x080f,
     * B:329:0x0815, B:330:0x0821, B:331:0x082c, B:333:0x0832, B:335:0x0853,
     * B:337:0x085d, B:339:0x0875, B:341:0x0884, B:340:0x087d, B:343:0x0890,
     * B:345:0x089a, B:348:0x08ab, B:350:0x08b8, B:352:0x08c9, B:353:0x08cf,
     * B:347:0x08a8, B:304:0x07a2, B:306:0x07a6, B:308:0x07ac, B:309:0x07b4,
     * B:311:0x07b8, B:313:0x07c0, B:314:0x07c8, B:286:0x0748, B:274:0x06cd,
     * B:276:0x06d5, B:277:0x06f4, B:279:0x06fc, B:280:0x071b, B:250:0x0651,
     * B:240:0x05e1, B:183:0x0483, B:185:0x0498, B:188:0x04ad, B:149:0x034b,
     * B:151:0x035c, B:154:0x0375, B:156:0x0379, B:158:0x0387, B:160:0x038b,
     * B:161:0x038e, B:163:0x039f, B:354:0x08d9, B:356:0x08de, B:358:0x08e3,
     * B:360:0x08e7, B:362:0x08eb, B:363:0x0908, B:365:0x0925, B:367:0x0934,
     * B:366:0x092d, B:368:0x0937, B:370:0x093b, B:371:0x0940, B:375:0x094c,
     * B:78:0x0176, B:79:0x017b, B:20:0x008c, B:22:0x0092, B:25:0x0098, B:27:0x009e,
     * B:29:0x00a4, B:31:0x00ac), top: B:380:0x006b }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:191:0x04d3 A[Catch:
     * Exception -> 0x0957, TryCatch #0 {Exception -> 0x0957, blocks: (B:12:0x006b,
     * B:14:0x0077, B:16:0x0080, B:19:0x0089, B:36:0x00b6, B:38:0x00bb, B:40:0x00c1,
     * B:42:0x00c7, B:46:0x00dc, B:49:0x00e6, B:50:0x00f2, B:52:0x00f8, B:54:0x010d,
     * B:55:0x0112, B:57:0x011b, B:59:0x011f, B:64:0x0128, B:65:0x0131, B:67:0x0143,
     * B:69:0x0150, B:71:0x015c, B:73:0x0162, B:75:0x016a, B:77:0x0170, B:80:0x017e,
     * B:82:0x0186, B:83:0x0195, B:85:0x019d, B:86:0x01aa, B:88:0x01b6, B:90:0x01bc,
     * B:92:0x01c0, B:93:0x01c2, B:95:0x01d0, B:97:0x01d4, B:98:0x01db,
     * B:100:0x01e1, B:102:0x01e5, B:104:0x01ed, B:106:0x01f1, B:107:0x01f6,
     * B:109:0x0240, B:111:0x0246, B:113:0x024c, B:115:0x0252, B:117:0x0256,
     * B:119:0x025b, B:121:0x028d, B:122:0x0291, B:124:0x02a3, B:125:0x02ac,
     * B:126:0x02b1, B:128:0x02b5, B:131:0x02bb, B:132:0x02c9, B:134:0x02cf,
     * B:135:0x02f2, B:136:0x02f9, B:138:0x02ff, B:140:0x0303, B:142:0x0307,
     * B:144:0x030c, B:146:0x0344, B:148:0x0348, B:165:0x03b0, B:167:0x0415,
     * B:168:0x0423, B:170:0x0439, B:172:0x043d, B:174:0x0442, B:176:0x044a,
     * B:178:0x044e, B:182:0x045e, B:191:0x04d3, B:192:0x04de, B:196:0x04e5,
     * B:199:0x04f6, B:201:0x04fb, B:203:0x04ff, B:204:0x050a, B:208:0x0513,
     * B:210:0x0524, B:212:0x0528, B:214:0x052d, B:215:0x053a, B:217:0x053e,
     * B:219:0x0543, B:220:0x0550, B:223:0x0595, B:225:0x0599, B:227:0x059d,
     * B:229:0x05a5, B:231:0x05aa, B:233:0x05ae, B:235:0x05b3, B:237:0x05b7,
     * B:239:0x05c4, B:241:0x05f6, B:243:0x0617, B:245:0x061f, B:246:0x062e,
     * B:248:0x0636, B:249:0x0645, B:252:0x067d, B:254:0x0683, B:256:0x0687,
     * B:258:0x068b, B:260:0x0690, B:264:0x0699, B:266:0x069d, B:268:0x06a2,
     * B:270:0x06a7, B:272:0x06ae, B:281:0x0730, B:283:0x0734, B:285:0x073c,
     * B:287:0x0753, B:289:0x076e, B:292:0x0781, B:294:0x0787, B:296:0x078b,
     * B:298:0x0790, B:300:0x0796, B:302:0x079c, B:316:0x07e1, B:318:0x07e7,
     * B:320:0x07ec, B:322:0x07f1, B:323:0x07fc, B:326:0x0803, B:327:0x080f,
     * B:329:0x0815, B:330:0x0821, B:331:0x082c, B:333:0x0832, B:335:0x0853,
     * B:337:0x085d, B:339:0x0875, B:341:0x0884, B:340:0x087d, B:343:0x0890,
     * B:345:0x089a, B:348:0x08ab, B:350:0x08b8, B:352:0x08c9, B:353:0x08cf,
     * B:347:0x08a8, B:304:0x07a2, B:306:0x07a6, B:308:0x07ac, B:309:0x07b4,
     * B:311:0x07b8, B:313:0x07c0, B:314:0x07c8, B:286:0x0748, B:274:0x06cd,
     * B:276:0x06d5, B:277:0x06f4, B:279:0x06fc, B:280:0x071b, B:250:0x0651,
     * B:240:0x05e1, B:183:0x0483, B:185:0x0498, B:188:0x04ad, B:149:0x034b,
     * B:151:0x035c, B:154:0x0375, B:156:0x0379, B:158:0x0387, B:160:0x038b,
     * B:161:0x038e, B:163:0x039f, B:354:0x08d9, B:356:0x08de, B:358:0x08e3,
     * B:360:0x08e7, B:362:0x08eb, B:363:0x0908, B:365:0x0925, B:367:0x0934,
     * B:366:0x092d, B:368:0x0937, B:370:0x093b, B:371:0x0940, B:375:0x094c,
     * B:78:0x0176, B:79:0x017b, B:20:0x008c, B:22:0x0092, B:25:0x0098, B:27:0x009e,
     * B:29:0x00a4, B:31:0x00ac), top: B:380:0x006b }]
     */
    /* JADX WARN: Removed duplicated region for block: B:194:0x04e2 */
    /*
     * JADX WARN: Removed duplicated region for block: B:199:0x04f6 A[Catch:
     * Exception -> 0x0957, TryCatch #0 {Exception -> 0x0957, blocks: (B:12:0x006b,
     * B:14:0x0077, B:16:0x0080, B:19:0x0089, B:36:0x00b6, B:38:0x00bb, B:40:0x00c1,
     * B:42:0x00c7, B:46:0x00dc, B:49:0x00e6, B:50:0x00f2, B:52:0x00f8, B:54:0x010d,
     * B:55:0x0112, B:57:0x011b, B:59:0x011f, B:64:0x0128, B:65:0x0131, B:67:0x0143,
     * B:69:0x0150, B:71:0x015c, B:73:0x0162, B:75:0x016a, B:77:0x0170, B:80:0x017e,
     * B:82:0x0186, B:83:0x0195, B:85:0x019d, B:86:0x01aa, B:88:0x01b6, B:90:0x01bc,
     * B:92:0x01c0, B:93:0x01c2, B:95:0x01d0, B:97:0x01d4, B:98:0x01db,
     * B:100:0x01e1, B:102:0x01e5, B:104:0x01ed, B:106:0x01f1, B:107:0x01f6,
     * B:109:0x0240, B:111:0x0246, B:113:0x024c, B:115:0x0252, B:117:0x0256,
     * B:119:0x025b, B:121:0x028d, B:122:0x0291, B:124:0x02a3, B:125:0x02ac,
     * B:126:0x02b1, B:128:0x02b5, B:131:0x02bb, B:132:0x02c9, B:134:0x02cf,
     * B:135:0x02f2, B:136:0x02f9, B:138:0x02ff, B:140:0x0303, B:142:0x0307,
     * B:144:0x030c, B:146:0x0344, B:148:0x0348, B:165:0x03b0, B:167:0x0415,
     * B:168:0x0423, B:170:0x0439, B:172:0x043d, B:174:0x0442, B:176:0x044a,
     * B:178:0x044e, B:182:0x045e, B:191:0x04d3, B:192:0x04de, B:196:0x04e5,
     * B:199:0x04f6, B:201:0x04fb, B:203:0x04ff, B:204:0x050a, B:208:0x0513,
     * B:210:0x0524, B:212:0x0528, B:214:0x052d, B:215:0x053a, B:217:0x053e,
     * B:219:0x0543, B:220:0x0550, B:223:0x0595, B:225:0x0599, B:227:0x059d,
     * B:229:0x05a5, B:231:0x05aa, B:233:0x05ae, B:235:0x05b3, B:237:0x05b7,
     * B:239:0x05c4, B:241:0x05f6, B:243:0x0617, B:245:0x061f, B:246:0x062e,
     * B:248:0x0636, B:249:0x0645, B:252:0x067d, B:254:0x0683, B:256:0x0687,
     * B:258:0x068b, B:260:0x0690, B:264:0x0699, B:266:0x069d, B:268:0x06a2,
     * B:270:0x06a7, B:272:0x06ae, B:281:0x0730, B:283:0x0734, B:285:0x073c,
     * B:287:0x0753, B:289:0x076e, B:292:0x0781, B:294:0x0787, B:296:0x078b,
     * B:298:0x0790, B:300:0x0796, B:302:0x079c, B:316:0x07e1, B:318:0x07e7,
     * B:320:0x07ec, B:322:0x07f1, B:323:0x07fc, B:326:0x0803, B:327:0x080f,
     * B:329:0x0815, B:330:0x0821, B:331:0x082c, B:333:0x0832, B:335:0x0853,
     * B:337:0x085d, B:339:0x0875, B:341:0x0884, B:340:0x087d, B:343:0x0890,
     * B:345:0x089a, B:348:0x08ab, B:350:0x08b8, B:352:0x08c9, B:353:0x08cf,
     * B:347:0x08a8, B:304:0x07a2, B:306:0x07a6, B:308:0x07ac, B:309:0x07b4,
     * B:311:0x07b8, B:313:0x07c0, B:314:0x07c8, B:286:0x0748, B:274:0x06cd,
     * B:276:0x06d5, B:277:0x06f4, B:279:0x06fc, B:280:0x071b, B:250:0x0651,
     * B:240:0x05e1, B:183:0x0483, B:185:0x0498, B:188:0x04ad, B:149:0x034b,
     * B:151:0x035c, B:154:0x0375, B:156:0x0379, B:158:0x0387, B:160:0x038b,
     * B:161:0x038e, B:163:0x039f, B:354:0x08d9, B:356:0x08de, B:358:0x08e3,
     * B:360:0x08e7, B:362:0x08eb, B:363:0x0908, B:365:0x0925, B:367:0x0934,
     * B:366:0x092d, B:368:0x0937, B:370:0x093b, B:371:0x0940, B:375:0x094c,
     * B:78:0x0176, B:79:0x017b, B:20:0x008c, B:22:0x0092, B:25:0x0098, B:27:0x009e,
     * B:29:0x00a4, B:31:0x00ac), top: B:380:0x006b }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:201:0x04fb A[Catch:
     * Exception -> 0x0957, TryCatch #0 {Exception -> 0x0957, blocks: (B:12:0x006b,
     * B:14:0x0077, B:16:0x0080, B:19:0x0089, B:36:0x00b6, B:38:0x00bb, B:40:0x00c1,
     * B:42:0x00c7, B:46:0x00dc, B:49:0x00e6, B:50:0x00f2, B:52:0x00f8, B:54:0x010d,
     * B:55:0x0112, B:57:0x011b, B:59:0x011f, B:64:0x0128, B:65:0x0131, B:67:0x0143,
     * B:69:0x0150, B:71:0x015c, B:73:0x0162, B:75:0x016a, B:77:0x0170, B:80:0x017e,
     * B:82:0x0186, B:83:0x0195, B:85:0x019d, B:86:0x01aa, B:88:0x01b6, B:90:0x01bc,
     * B:92:0x01c0, B:93:0x01c2, B:95:0x01d0, B:97:0x01d4, B:98:0x01db,
     * B:100:0x01e1, B:102:0x01e5, B:104:0x01ed, B:106:0x01f1, B:107:0x01f6,
     * B:109:0x0240, B:111:0x0246, B:113:0x024c, B:115:0x0252, B:117:0x0256,
     * B:119:0x025b, B:121:0x028d, B:122:0x0291, B:124:0x02a3, B:125:0x02ac,
     * B:126:0x02b1, B:128:0x02b5, B:131:0x02bb, B:132:0x02c9, B:134:0x02cf,
     * B:135:0x02f2, B:136:0x02f9, B:138:0x02ff, B:140:0x0303, B:142:0x0307,
     * B:144:0x030c, B:146:0x0344, B:148:0x0348, B:165:0x03b0, B:167:0x0415,
     * B:168:0x0423, B:170:0x0439, B:172:0x043d, B:174:0x0442, B:176:0x044a,
     * B:178:0x044e, B:182:0x045e, B:191:0x04d3, B:192:0x04de, B:196:0x04e5,
     * B:199:0x04f6, B:201:0x04fb, B:203:0x04ff, B:204:0x050a, B:208:0x0513,
     * B:210:0x0524, B:212:0x0528, B:214:0x052d, B:215:0x053a, B:217:0x053e,
     * B:219:0x0543, B:220:0x0550, B:223:0x0595, B:225:0x0599, B:227:0x059d,
     * B:229:0x05a5, B:231:0x05aa, B:233:0x05ae, B:235:0x05b3, B:237:0x05b7,
     * B:239:0x05c4, B:241:0x05f6, B:243:0x0617, B:245:0x061f, B:246:0x062e,
     * B:248:0x0636, B:249:0x0645, B:252:0x067d, B:254:0x0683, B:256:0x0687,
     * B:258:0x068b, B:260:0x0690, B:264:0x0699, B:266:0x069d, B:268:0x06a2,
     * B:270:0x06a7, B:272:0x06ae, B:281:0x0730, B:283:0x0734, B:285:0x073c,
     * B:287:0x0753, B:289:0x076e, B:292:0x0781, B:294:0x0787, B:296:0x078b,
     * B:298:0x0790, B:300:0x0796, B:302:0x079c, B:316:0x07e1, B:318:0x07e7,
     * B:320:0x07ec, B:322:0x07f1, B:323:0x07fc, B:326:0x0803, B:327:0x080f,
     * B:329:0x0815, B:330:0x0821, B:331:0x082c, B:333:0x0832, B:335:0x0853,
     * B:337:0x085d, B:339:0x0875, B:341:0x0884, B:340:0x087d, B:343:0x0890,
     * B:345:0x089a, B:348:0x08ab, B:350:0x08b8, B:352:0x08c9, B:353:0x08cf,
     * B:347:0x08a8, B:304:0x07a2, B:306:0x07a6, B:308:0x07ac, B:309:0x07b4,
     * B:311:0x07b8, B:313:0x07c0, B:314:0x07c8, B:286:0x0748, B:274:0x06cd,
     * B:276:0x06d5, B:277:0x06f4, B:279:0x06fc, B:280:0x071b, B:250:0x0651,
     * B:240:0x05e1, B:183:0x0483, B:185:0x0498, B:188:0x04ad, B:149:0x034b,
     * B:151:0x035c, B:154:0x0375, B:156:0x0379, B:158:0x0387, B:160:0x038b,
     * B:161:0x038e, B:163:0x039f, B:354:0x08d9, B:356:0x08de, B:358:0x08e3,
     * B:360:0x08e7, B:362:0x08eb, B:363:0x0908, B:365:0x0925, B:367:0x0934,
     * B:366:0x092d, B:368:0x0937, B:370:0x093b, B:371:0x0940, B:375:0x094c,
     * B:78:0x0176, B:79:0x017b, B:20:0x008c, B:22:0x0092, B:25:0x0098, B:27:0x009e,
     * B:29:0x00a4, B:31:0x00ac), top: B:380:0x006b }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:289:0x076e A[Catch:
     * Exception -> 0x0957, TryCatch #0 {Exception -> 0x0957, blocks: (B:12:0x006b,
     * B:14:0x0077, B:16:0x0080, B:19:0x0089, B:36:0x00b6, B:38:0x00bb, B:40:0x00c1,
     * B:42:0x00c7, B:46:0x00dc, B:49:0x00e6, B:50:0x00f2, B:52:0x00f8, B:54:0x010d,
     * B:55:0x0112, B:57:0x011b, B:59:0x011f, B:64:0x0128, B:65:0x0131, B:67:0x0143,
     * B:69:0x0150, B:71:0x015c, B:73:0x0162, B:75:0x016a, B:77:0x0170, B:80:0x017e,
     * B:82:0x0186, B:83:0x0195, B:85:0x019d, B:86:0x01aa, B:88:0x01b6, B:90:0x01bc,
     * B:92:0x01c0, B:93:0x01c2, B:95:0x01d0, B:97:0x01d4, B:98:0x01db,
     * B:100:0x01e1, B:102:0x01e5, B:104:0x01ed, B:106:0x01f1, B:107:0x01f6,
     * B:109:0x0240, B:111:0x0246, B:113:0x024c, B:115:0x0252, B:117:0x0256,
     * B:119:0x025b, B:121:0x028d, B:122:0x0291, B:124:0x02a3, B:125:0x02ac,
     * B:126:0x02b1, B:128:0x02b5, B:131:0x02bb, B:132:0x02c9, B:134:0x02cf,
     * B:135:0x02f2, B:136:0x02f9, B:138:0x02ff, B:140:0x0303, B:142:0x0307,
     * B:144:0x030c, B:146:0x0344, B:148:0x0348, B:165:0x03b0, B:167:0x0415,
     * B:168:0x0423, B:170:0x0439, B:172:0x043d, B:174:0x0442, B:176:0x044a,
     * B:178:0x044e, B:182:0x045e, B:191:0x04d3, B:192:0x04de, B:196:0x04e5,
     * B:199:0x04f6, B:201:0x04fb, B:203:0x04ff, B:204:0x050a, B:208:0x0513,
     * B:210:0x0524, B:212:0x0528, B:214:0x052d, B:215:0x053a, B:217:0x053e,
     * B:219:0x0543, B:220:0x0550, B:223:0x0595, B:225:0x0599, B:227:0x059d,
     * B:229:0x05a5, B:231:0x05aa, B:233:0x05ae, B:235:0x05b3, B:237:0x05b7,
     * B:239:0x05c4, B:241:0x05f6, B:243:0x0617, B:245:0x061f, B:246:0x062e,
     * B:248:0x0636, B:249:0x0645, B:252:0x067d, B:254:0x0683, B:256:0x0687,
     * B:258:0x068b, B:260:0x0690, B:264:0x0699, B:266:0x069d, B:268:0x06a2,
     * B:270:0x06a7, B:272:0x06ae, B:281:0x0730, B:283:0x0734, B:285:0x073c,
     * B:287:0x0753, B:289:0x076e, B:292:0x0781, B:294:0x0787, B:296:0x078b,
     * B:298:0x0790, B:300:0x0796, B:302:0x079c, B:316:0x07e1, B:318:0x07e7,
     * B:320:0x07ec, B:322:0x07f1, B:323:0x07fc, B:326:0x0803, B:327:0x080f,
     * B:329:0x0815, B:330:0x0821, B:331:0x082c, B:333:0x0832, B:335:0x0853,
     * B:337:0x085d, B:339:0x0875, B:341:0x0884, B:340:0x087d, B:343:0x0890,
     * B:345:0x089a, B:348:0x08ab, B:350:0x08b8, B:352:0x08c9, B:353:0x08cf,
     * B:347:0x08a8, B:304:0x07a2, B:306:0x07a6, B:308:0x07ac, B:309:0x07b4,
     * B:311:0x07b8, B:313:0x07c0, B:314:0x07c8, B:286:0x0748, B:274:0x06cd,
     * B:276:0x06d5, B:277:0x06f4, B:279:0x06fc, B:280:0x071b, B:250:0x0651,
     * B:240:0x05e1, B:183:0x0483, B:185:0x0498, B:188:0x04ad, B:149:0x034b,
     * B:151:0x035c, B:154:0x0375, B:156:0x0379, B:158:0x0387, B:160:0x038b,
     * B:161:0x038e, B:163:0x039f, B:354:0x08d9, B:356:0x08de, B:358:0x08e3,
     * B:360:0x08e7, B:362:0x08eb, B:363:0x0908, B:365:0x0925, B:367:0x0934,
     * B:366:0x092d, B:368:0x0937, B:370:0x093b, B:371:0x0940, B:375:0x094c,
     * B:78:0x0176, B:79:0x017b, B:20:0x008c, B:22:0x0092, B:25:0x0098, B:27:0x009e,
     * B:29:0x00a4, B:31:0x00ac), top: B:380:0x006b }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:350:0x08b8 A[Catch:
     * Exception -> 0x0957, TryCatch #0 {Exception -> 0x0957, blocks: (B:12:0x006b,
     * B:14:0x0077, B:16:0x0080, B:19:0x0089, B:36:0x00b6, B:38:0x00bb, B:40:0x00c1,
     * B:42:0x00c7, B:46:0x00dc, B:49:0x00e6, B:50:0x00f2, B:52:0x00f8, B:54:0x010d,
     * B:55:0x0112, B:57:0x011b, B:59:0x011f, B:64:0x0128, B:65:0x0131, B:67:0x0143,
     * B:69:0x0150, B:71:0x015c, B:73:0x0162, B:75:0x016a, B:77:0x0170, B:80:0x017e,
     * B:82:0x0186, B:83:0x0195, B:85:0x019d, B:86:0x01aa, B:88:0x01b6, B:90:0x01bc,
     * B:92:0x01c0, B:93:0x01c2, B:95:0x01d0, B:97:0x01d4, B:98:0x01db,
     * B:100:0x01e1, B:102:0x01e5, B:104:0x01ed, B:106:0x01f1, B:107:0x01f6,
     * B:109:0x0240, B:111:0x0246, B:113:0x024c, B:115:0x0252, B:117:0x0256,
     * B:119:0x025b, B:121:0x028d, B:122:0x0291, B:124:0x02a3, B:125:0x02ac,
     * B:126:0x02b1, B:128:0x02b5, B:131:0x02bb, B:132:0x02c9, B:134:0x02cf,
     * B:135:0x02f2, B:136:0x02f9, B:138:0x02ff, B:140:0x0303, B:142:0x0307,
     * B:144:0x030c, B:146:0x0344, B:148:0x0348, B:165:0x03b0, B:167:0x0415,
     * B:168:0x0423, B:170:0x0439, B:172:0x043d, B:174:0x0442, B:176:0x044a,
     * B:178:0x044e, B:182:0x045e, B:191:0x04d3, B:192:0x04de, B:196:0x04e5,
     * B:199:0x04f6, B:201:0x04fb, B:203:0x04ff, B:204:0x050a, B:208:0x0513,
     * B:210:0x0524, B:212:0x0528, B:214:0x052d, B:215:0x053a, B:217:0x053e,
     * B:219:0x0543, B:220:0x0550, B:223:0x0595, B:225:0x0599, B:227:0x059d,
     * B:229:0x05a5, B:231:0x05aa, B:233:0x05ae, B:235:0x05b3, B:237:0x05b7,
     * B:239:0x05c4, B:241:0x05f6, B:243:0x0617, B:245:0x061f, B:246:0x062e,
     * B:248:0x0636, B:249:0x0645, B:252:0x067d, B:254:0x0683, B:256:0x0687,
     * B:258:0x068b, B:260:0x0690, B:264:0x0699, B:266:0x069d, B:268:0x06a2,
     * B:270:0x06a7, B:272:0x06ae, B:281:0x0730, B:283:0x0734, B:285:0x073c,
     * B:287:0x0753, B:289:0x076e, B:292:0x0781, B:294:0x0787, B:296:0x078b,
     * B:298:0x0790, B:300:0x0796, B:302:0x079c, B:316:0x07e1, B:318:0x07e7,
     * B:320:0x07ec, B:322:0x07f1, B:323:0x07fc, B:326:0x0803, B:327:0x080f,
     * B:329:0x0815, B:330:0x0821, B:331:0x082c, B:333:0x0832, B:335:0x0853,
     * B:337:0x085d, B:339:0x0875, B:341:0x0884, B:340:0x087d, B:343:0x0890,
     * B:345:0x089a, B:348:0x08ab, B:350:0x08b8, B:352:0x08c9, B:353:0x08cf,
     * B:347:0x08a8, B:304:0x07a2, B:306:0x07a6, B:308:0x07ac, B:309:0x07b4,
     * B:311:0x07b8, B:313:0x07c0, B:314:0x07c8, B:286:0x0748, B:274:0x06cd,
     * B:276:0x06d5, B:277:0x06f4, B:279:0x06fc, B:280:0x071b, B:250:0x0651,
     * B:240:0x05e1, B:183:0x0483, B:185:0x0498, B:188:0x04ad, B:149:0x034b,
     * B:151:0x035c, B:154:0x0375, B:156:0x0379, B:158:0x0387, B:160:0x038b,
     * B:161:0x038e, B:163:0x039f, B:354:0x08d9, B:356:0x08de, B:358:0x08e3,
     * B:360:0x08e7, B:362:0x08eb, B:363:0x0908, B:365:0x0925, B:367:0x0934,
     * B:366:0x092d, B:368:0x0937, B:370:0x093b, B:371:0x0940, B:375:0x094c,
     * B:78:0x0176, B:79:0x017b, B:20:0x008c, B:22:0x0092, B:25:0x0098, B:27:0x009e,
     * B:29:0x00a4, B:31:0x00ac), top: B:380:0x006b }]
     */
    /* JADX WARN: Removed duplicated region for block: B:383:0x08cf A[SYNTHETIC] */
    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void takePicture(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        CameraUnitLog.e(TAG, "takePicture start, mbBurstShot: " + cameraRequestTag.mbBurstShot + ", mRequestNum: "
                + cameraRequestTag.mRequestNum + ", mOfflineNightExpTime: " + this.mOfflineNightExpTime);
        this.mTakePictureParameter = parameter;
        this.mTakePictureCallbackHandler = handler;
        if (!checkAeAfState(cameraRequestTag, parameter, handler)) {
            CameraUnitLog.d(TAG, "takePicture, checkAeAfState false, so returned, wait AeAf converged", true);
            this.mbWaitingAeAfConverge = true;
            StatisticsManager.getInstance().setDcsDelayProcessMsg(5, 3000L);
            return;
        }
        this.mTakePictureRequestTag = cameraRequestTag;
        if (needSetIZoomState(cameraRequestTag)) {
            setIZoomEnable(true, handler);
        }
        if (needCaptureEVList(cameraRequestTag)) {
            setCaptureEVList(cameraRequestTag);
        }
        try {
            if (!cameraRequestTag.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag, "before_take_picture",
                    35)) {
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        if (cameraRequestTag.mCallback instanceof CameraPictureCallbackAdapter) {
                            ((CameraPictureCallbackAdapter) cameraRequestTag.mCallback).onCaptureFailed(null, null);
                        }
                    }
                });
                return;
            }
            boolean inNightProcess = cameraRequestTag.mbInNightProcess;
            int templateType = cameraRequestTag.mCaptureIntent;
            if (templateType < 0) {
                if (PlatformUtil.isMtkPlatform() || cameraRequestTag.mbBurstShot || inNightProcess
                        || isFlashRequired(cameraRequestTag) || !isEnableZsl(parameter)
                        || !"none".equals(cameraRequestTag.mRawValue) || isAutoExposureTime(parameter)) {
                    templateType = 2;
                } else {
                    templateType = 5;
                }
            }
            if (cameraRequestTag.mbBurstShot && !isFlashRequired(cameraRequestTag) && isEnableZsl(parameter)
                    && ((Boolean) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_REQUEST_TEMPLATE_ZERO_SHUTTER_LAG, false))
                            .booleanValue()) {
                templateType = 5;
            }
            if (parameter.containCustomKey(PreviewParameter.KEY_BURST_SHOT_ENABLE)) {
                this.mbContinueShot = "on".equals(parameter.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));
            }
            CaptureRequestProxy.Builder captureBuilder = cameraRequestTag.mCaptureBuild;
            boolean mtkPlatform = PlatformUtil.isMtkPlatform();
            if (captureBuilder == null) {
                captureBuilder = new CaptureRequestProxy.Builder(this.mCameraDevice.createCaptureRequest(templateType));
                updatePreviewBuilderTag(captureBuilder);
                parameter.update(captureBuilder, 2);
                if (cameraRequestTag.mCaptureTargetSurfacesList == null) {
                    addCaptureSurface(cameraRequestTag, captureBuilder, cameraRequestTag.mAddTargetSurfaces);
                }
                updateMFSRKey(captureBuilder, cameraRequestTag);
                if (mtkPlatform) {
                    if (cameraRequestTag.mbAIShutter && 42 == cameraRequestTag.mApsDecisionFeatureType) {
                        captureBuilder.setParameter(CaptureRequest.CONTROL_ENABLE_ZSL, false);
                    }
                    processMTKCaptureRequest(captureBuilder, cameraRequestTag, parameter);
                }
                this.mPictureCallback.setRequestTag(cameraRequestTag);
                if (parameter.containCustomKey(PreviewParameter.KEY_FLASH_MODE)) {
                    String flashMode = (String) parameter.get(PreviewParameter.KEY_FLASH_MODE);
                    if (this.mbSupportTorchFlash && ("on".equals(flashMode)
                            || ("auto".equals(flashMode) && isNeedAutoFlash(cameraRequestTag)))) {
                        setFlashMode("torch", captureBuilder, false);
                    } else {
                        setFlashMode(flashMode, captureBuilder, true);
                    }
                } else {
                    this.mFlashMode = null;
                }
                if (parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
                    setZoomRatio(captureBuilder, ((Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue(),
                            parameter);
                }
                if (parameter.containCustomKey(PreviewParameter.KEY_NIGHT_MODE)) {
                    captureBuilder.setParameter(CameraMetadataKey.KEY_NIGHT_MODE,
                            parameter.get(PreviewParameter.KEY_NIGHT_MODE));
                }
                addDefaultParameter(captureBuilder, parameter);
            }
            if (mtkPlatform && cameraRequestTag.mbBurstShot) {
                cameraRequestTag.mCaptureBuild = captureBuilder;
            }
            List<CaptureRequest> requestList = new ArrayList<>();
            captureBuilder.setTag(cameraRequestTag);
            if ((cameraRequestTag.mCallback instanceof CameraPictureCallbackAdapter) && !cameraRequestTag.mbBurstShot) {
                ((CameraPictureCallbackAdapter) cameraRequestTag.mCallback).onCapturePrepared();
            }
            if (mtkPlatform) {
                if (cameraRequestTag.mCaptureEvList != null
                        && (!CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId)
                                || !cameraRequestTag.mbInNightProcess)) {
                    captureBuilder.setParameter(CaptureRequest.CONTROL_AE_LOCK, true);
                }
            }
            for (int i = 0; i < cameraRequestTag.mRequestNum; i++) {
                if (cameraRequestTag.mCaptureTargetSurfacesList != null) {
                    if (i > 0) {
                        for (SurfaceKey key : cameraRequestTag.mCaptureTargetSurfacesList[i - 1].keySet()) {
                            SurfaceWrapper wrapper = findWrapper(key.getUsage(), key.getCameraType(), key.getFormat());
                            if (wrapper != null) {
                                captureBuilder.removeTarget(wrapper.getSurface());
                            }
                        }
                    }
                    addCaptureSurface(cameraRequestTag, captureBuilder, cameraRequestTag.mCaptureTargetSurfacesList[i]);
                }
                if (mtkPlatform && !cameraRequestTag.mbStarryProcess && !cameraRequestTag.mbBurstShot
                        && cameraRequestTag.mRequestNum > 1) {
                    setPreCollectEnable(captureBuilder, cameraRequestTag, i);
                }
                if (cameraRequestTag.mCaptureEvList != null && cameraRequestTag.mCaptureEvList.length > 0) {
                    captureBuilder.setParameter(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION,
                            cameraRequestTag.mCaptureEvList[i]);
                }
                if (cameraRequestTag.mCaptureEtList != null && cameraRequestTag.mCaptureEtList.length > 0) {
                    captureBuilder.setParameter(CaptureRequest.SENSOR_EXPOSURE_TIME,
                            cameraRequestTag.mCaptureEtList[i]);
                }
                if (!"professional_mode".equals(cameraRequestTag.mCaptureMode)
                        || !"1".equals(CameraConfigHelper.getConfigValue("com.oplus.expert.nzsl.support"))) {
                    updatePreviewTarget(captureBuilder, cameraRequestTag, i);
                }
                CaptureRequest request = captureBuilder.build();
                requestList.add(request);
                if (cameraRequestTag.mbBurstShot) {
                    this.mCaptureSession.capture(request, this.mPictureCallback, handler);
                    if (mtkPlatform) {
                        cameraRequestTag.mReceiveCshotNum++;
                    }
                }
            }
            if (this.mbWaitingTriggerAndStartAiFlash) {
                this.mbWaitingTriggerAndStartAiFlash = false;
            }
            if (!cameraRequestTag.mbBurstShot) {
                if (SdkConfig.META_DUMP) {
                    CameraUnitLog.d(TAG, "takePicture, aps tag: " + cameraRequestTag);
                    Util.dumpCaptureRequest(captureBuilder.build(), "capture");
                }
                CameraUnitLog.traceBegin("Camera2ImplTakePicture");
                CameraUnitLog.e(TAG, "takePicture, captureBurst request to HAL, repeating: "
                        + cameraRequestTag.mbRepeatingRequestCapture);
                if (cameraRequestTag.mbRepeatingRequestCapture) {
                    this.mCaptureSession.setRepeatingBurst(requestList, this.mPictureCallback, handler);
                } else {
                    this.mCaptureSession.captureBurst(requestList, this.mPictureCallback, handler);
                }
                CameraUnitLog.traceEnd("Camera2ImplTakePicture");
            }
            if (cameraRequestTag.mbStopPreviewAfterCapture) {
                this.mCaptureSession.stopRepeating();
            }
            StatisticsManager.getInstance().setMultiFrameDenoise(cameraRequestTag.mRequestNum > 1);
            StatisticsManager.getInstance().reportCapture();
        } catch (Exception e) {
            StatisticsManager.getInstance().reportFunctionalError("capture_failed", 8);
            CameraUnitLog.e(TAG, "takePicture", e);
        }
    }

    private void setPreCollectEnable(CaptureRequestProxy.Builder builder, CameraRequestTag cameraRequestTag, int i) {
        if (cameraRequestTag.mApsAlgoFlags == null || cameraRequestTag.mApsAlgoFlags.length < 1
                || cameraRequestTag.mRequestNum <= 1) {
            return;
        }
        if (cameraRequestTag.mPreCollectFrameCount != 0) {
            if (cameraRequestTag.mPreCollectFrameCount != 0 && i >= cameraRequestTag.mPreCollectFrameCount) {
                builder.setParameter(CameraMetadataKey.KEY_MTK_CONTROL_CAPTURE_PRE_COLLECT_ENABLE, new int[] { 1 });
            } else {
                builder.setParameter(CameraMetadataKey.KEY_MTK_CONTROL_CAPTURE_PRE_COLLECT_ENABLE, new int[] { 0 });
            }
        } else if ("aps_algo_mfll".equals(cameraRequestTag.mApsAlgoFlags[0])) {
            if (23 == cameraRequestTag.mApsDecisionSceneMode || 22 == cameraRequestTag.mApsDecisionSceneMode
                    || 27 == cameraRequestTag.mApsDecisionSceneMode || 33 == cameraRequestTag.mApsDecisionSceneMode
                    || 35 == cameraRequestTag.mApsDecisionSceneMode) {
                if (cameraRequestTag.mMFSRFrameCount != 0 && i >= cameraRequestTag.mMFSRFrameCount) {
                    builder.setParameter(CameraMetadataKey.KEY_MTK_CONTROL_CAPTURE_PRE_COLLECT_ENABLE, new int[] { 1 });
                } else {
                    builder.setParameter(CameraMetadataKey.KEY_MTK_CONTROL_CAPTURE_PRE_COLLECT_ENABLE, new int[] { 0 });
                }
            }
        } else if ("aps_algo_ainr".equals(cameraRequestTag.mApsAlgoFlags[0])) {
            if (33 == cameraRequestTag.mApsDecisionSceneMode || 38 == cameraRequestTag.mApsDecisionSceneMode) {
                if (cameraRequestTag.mMFSRFrameCount != 0 && i >= cameraRequestTag.mMFSRFrameCount) {
                    builder.setParameter(CameraMetadataKey.KEY_MTK_CONTROL_CAPTURE_PRE_COLLECT_ENABLE, new int[] { 1 });
                } else {
                    builder.setParameter(CameraMetadataKey.KEY_MTK_CONTROL_CAPTURE_PRE_COLLECT_ENABLE, new int[] { 0 });
                }
            }
        }
    }

    private void processMTKCaptureRequest(CaptureRequestProxy.Builder builder, CameraRequestTag cameraRequestTag,
            Parameter parameter) {
        if (builder != null) {
            builder.setParameter(CameraConstant.KEY_MTK_TUNING_DATA_REQUEST,
                    cameraRequestTag.getRequestMode() == CameraRequestTag.RequestMode.CAPTURE_RAW
                            ? CameraConstant.MTK_TUNING_REQUEST_RAW
                            : CameraConstant.MTK_TUNING_REQUEST_YUV);
            if (!Util.isSystemCamera()) {
                if (isApsDecisionAlgoOpen(cameraRequestTag.mApsAlgoFlags, ParameterKeys.ALGO_NAME_SUPERPHOTO)
                        && !cameraRequestTag.mbBurstShot) {
                    builder.setParameter(CameraMetadataKey.KEY_CAPTURE_REQUEST_PICTURE_SIZE_SCALE, new int[] { 1 });
                } else {
                    builder.setParameter(CameraMetadataKey.KEY_CAPTURE_REQUEST_PICTURE_SIZE_SCALE, new int[] { 0 });
                }
                if (((Boolean) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_SUPPORT_MTK_SEAMLESS_REMOSAIC_ZOOM, false))
                        .booleanValue()) {
                    Float f = (Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO);
                    if (4 == cameraRequestTag.mSupportCaptureZoomFeature && f != null && f.floatValue() >= 2.0f) {
                        builder.setParameter(CameraMetadataKey.KEY_MTK_SEAMLESS_REMOSAIC_ENABLE, new int[] { 1 });
                    } else {
                        builder.setParameter(CameraMetadataKey.KEY_MTK_SEAMLESS_REMOSAIC_ENABLE, new int[] { 0 });
                    }
                }
                if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_MTK_INSENSOR_ZOOM, false))
                        .booleanValue()) {
                    if (4 == cameraRequestTag.mSupportCaptureZoomFeature) {
                        builder.setParameter(CameraMetadataKey.KEY_MTK_IN_SENSOR_ZOOM_MODE, new int[] { 1 });
                    } else {
                        builder.setParameter(CameraMetadataKey.KEY_MTK_IN_SENSOR_ZOOM_MODE, new int[] { 0 });
                    }
                }
            }
            if (32 == cameraRequestTag.mRequestFormat) {
                if (48 != cameraRequestTag.mApsDecisionFeatureType && 49 != cameraRequestTag.mApsDecisionFeatureType
                        && 50 != cameraRequestTag.mApsDecisionFeatureType) {
                    builder.setParameter(CameraMetadataKey.KEY_MTK_CAPTURE_PROCESS_RAW_ENABLE, 1);
                }
                builder.setParameter(CameraMetadataKey.KEY_MTK_CAPTURE_RAW_BITS_PER_PIXEL, new int[] { 12 });
            } else if (34 == cameraRequestTag.mRequestFormat) {
                builder.setParameter(CameraMetadataKey.KEY_MTK_CAPTURE_PRIVATE_RAW_ENABLE, new int[] { 1 });
            } else if (37 == cameraRequestTag.mRequestFormat) {
                if (48 != cameraRequestTag.mApsDecisionFeatureType && 49 != cameraRequestTag.mApsDecisionFeatureType
                        && 50 != cameraRequestTag.mApsDecisionFeatureType) {
                    builder.setParameter(CameraMetadataKey.KEY_MTK_CAPTURE_PROCESS_RAW_ENABLE, 1);
                }
                builder.setParameter(CameraMetadataKey.KEY_MTK_CAPTURE_RAW_BITS_PER_PIXEL, new int[] { 10 });
            } else if (36 == cameraRequestTag.mRequestFormat) {
                builder.setParameter(CameraMetadataKey.KEY_MTK_CAPTURE_PROCESS_RAW_ENABLE, 0);
                builder.setParameter(CameraMetadataKey.KEY_MTK_CAPTURE_RAW_BITS_PER_PIXEL, new int[] { 12 });
            }
            if (cameraRequestTag.mbBurstShot) {
                builder.setParameter(CameraMetadataKey.KEY_REQUEST_CSHOT_ENABLE, new int[] { 1 });
                builder.setParameter(CameraMetadataKey.KEY_REQUEST_EARLY_NOTIFY, new int[] { 1 });
            }
            if (cameraRequestTag.mbHdrTrigger && "auto".equals(cameraRequestTag.mHdrMode)) {
                int[] iArr = (int[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(this.mCameraType)
                        .get(CameraCharacteristicsWrapper.KEY_MSNR_MOVE_RIGHT);
                if (iArr != null && iArr.length >= 1 && iArr[0] == 1) {
                    CameraUnitLog.i(TAG, "burstCapture, need to set msnr to 0");
                    cameraRequestTag.mbMsnrMoveRight = true;
                    builder.setParameter(CameraMetadataKey.KEY_MTK_REQUEST_MSNR, 0);
                }
            } else {
                cameraRequestTag.mbMsnrMoveRight = false;
            }
            if (this.mbMtkLowMemoryPlatform) {
                boolean z = cameraRequestTag.mbBurstShot;
            }
        }
    }

    private boolean isSupportBss(CameraRequestTag cameraRequestTag) {
        String[] strArr = cameraRequestTag.mApsAlgoFlags;
        if (strArr == null || strArr.length <= 0) {
            return false;
        }
        return "aps_algo_mfll".equals(strArr[0]) || "aps_algo_ainr".equals(strArr[0])
                || ParameterKeys.ALGO_NAME_AIHDR.equals(strArr[0]);
    }

    private boolean isApsDecisionAlgoOpen(String[] strArr, String str) {
        if (strArr != null) {
            for (String str2 : strArr) {
                if (TextUtils.equals(str, str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void abortCaptures() {
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplAbortCaptures");
        CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
        if (cameraCaptureSession != null) {
            try {
                cameraCaptureSession.abortCaptures();
            } catch (CameraAccessException | IllegalStateException e) {
                e.printStackTrace();
            }
        }
        CameraUnitLog.traceEndSection("CameraUnitCamera2ImplAbortCaptures");
    }

    /*
     * JADX WARN: Code restructure failed: missing block: B:64:0x019f, code lost:
     * if (r9 != null) goto L48;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:71:0x01b5, code lost:
     * if (r9 != null) goto L48;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:75:0x01bf, code lost:
     * if (r9 == null) goto L46;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:76:0x01c1, code lost:
     * r9.close();
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:77:0x01c4, code lost:
     * com.oplus.ocs.camera.common.util.CameraUnitLog.traceEndSection(
     * "CameraUnitCamera2ImplReprocessImage");
     */

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void reprocessImage(Image image, TotalCaptureResult totalCaptureResult, Rect rect,
            CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplReprocessImage");
        if (!cameraRequestTag.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag, "before_take_picture", 35)) {
            handler.post(new Runnable() {
                @Override
                public void run() {
                    if (cameraRequestTag.mCallback instanceof CameraPictureCallbackAdapter) {
                        ((CameraPictureCallbackAdapter) cameraRequestTag.mCallback).onCaptureFailed(null, null);
                    }
                }
            });
            return;
        }
        try {
            if (image != null) {
                if (this.mImageWriter != null) {
                    this.mImageWriter.close();
                    this.mImageWriter = null;
                }
                if (this.mCaptureSession != null && this.mCaptureSession.isReprocessable()
                        && this.mCaptureSession.getInputSurface() != null) {
                    this.mImageWriter = ImageWriter.newInstance(this.mCaptureSession.getInputSurface(), 20);
                    if (cameraRequestTag.mbTimeLapsePro || cameraRequestTag.mbStarVideoEnable
                            || cameraRequestTag.mbStarVideoVerifyFrame) {
                        for (int i = 0; i < image.getPlanes().length; i++) {
                            java.nio.ByteBuffer buffer = image.getPlanes()[i].getBuffer();
                            CameraUnitLog.v(TAG, "reprocessImage, plane index: " + i + ", buffer: " + buffer
                                    + ", mark: " + buffer.mark());
                        }
                        java.nio.ByteBuffer buffer0 = image.getPlanes()[0].getBuffer();
                        buffer0.position(0);
                        buffer0.putInt(cameraRequestTag.mFrameFlag);
                        buffer0.position(0);
                    }
                    this.mImageWriter.queueInputImage(image);
                } else if (image != null) {
                    image.close();
                }
            }
            CameraUnitLog.d(TAG, "reprocessImage, tag.mRequestNum: " + cameraRequestTag.mRequestNum
                    + ", tag.mTargetSurfaces: " + cameraRequestTag.mAddTargetSurfaces + ", tag: " + cameraRequestTag);
            if (this.mCaptureSession != null) {
                CaptureRequestProxy.Builder reprocessBuilder = new CaptureRequestProxy.Builder(
                        this.mCameraDevice.createReprocessCaptureRequest(totalCaptureResult));
                for (SurfaceKey key : cameraRequestTag.mAddTargetSurfaces.keySet()) {
                    SurfaceWrapper wrapper = findWrapper(key.getUsage(), key.getCameraType(), key.getFormat());
                    if (wrapper != null) {
                        CameraUnitLog.d(TAG, "reprocessImage, add surface wrapper: " + wrapper);
                        reprocessBuilder.addTarget(this.mOutputConfigurationMap.get(wrapper).getSurface());
                    }
                }
                reprocessBuilder.setTag(cameraRequestTag);
                if (parameter != null) {
                    parameter.update(reprocessBuilder, 2);
                    addDefaultParameter(reprocessBuilder, parameter);
                }
                if (rect != null && rect.width() > 0 && rect.height() > 0) {
                    float zoomRatio = 1.0f;
                    if (parameter != null && parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
                        zoomRatio = ((Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue();
                    }
                    Rect zoomCropRegion = Util.getCropRegionForZoom(zoomRatio, this.mCameraType);
                    Rect finalCropRegion = getZoomCropFormRegion(rect, zoomCropRegion);
                    setZoomRatio(reprocessBuilder, zoomRatio, finalCropRegion);
                    reprocessBuilder.setParameter(CameraMetadataKey.REPROCESS_SCALER_CROP_REGION, rect);
                }
                this.mPictureCallback.setRequestTag(cameraRequestTag);
                this.mCaptureSession.capture(reprocessBuilder.build(), this.mPictureCallback, handler);
            }
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "reprocessImage, error: ", e);
            if (this.mCameraPictureCallbackAdapter != null) {
                this.mCameraPictureCallbackAdapter.onCaptureFailed(null, null);
            }
        } finally {
            if (this.mImageWriter != null) {
                this.mImageWriter.close();
            }
            CameraUnitLog.traceEndSection("CameraUnitCamera2ImplReprocessImage");
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public boolean getSupportWrapper(String str, String str2, int i) {
        for (SurfaceWrapper surfaceWrapper : this.mOutputConfigurationMap.keySet()) {
            if (str == null || str.equals(surfaceWrapper.getSurfaceUsage())) {
                if (str2 == null || str2.equals(surfaceWrapper.getCameraType())) {
                    if (i == 0 || i == surfaceWrapper.getFormat()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private Rect getZoomCropFormRegion(Rect rect, Rect rect2) {
        float f;
        float f2;
        Rect rect3 = new Rect();
        Rect rect4 = (Rect) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(this.mCameraType)
                .get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (rect2 == null || rect4 == null) {
            f = 1.0f;
            f2 = 1.0f;
        } else {
            f = rect2.width() / rect4.width();
            f2 = rect2.height() / rect4.height();
        }
        int width = (int) ((rect.width() * (1.0f - f)) / 2.0f);
        int height = (int) ((rect.height() * (1.0f - f2)) / 2.0f);
        rect3.set(rect.left + width, rect.top + height, rect.right - width, rect.bottom - height);
        CameraUnitLog.v(TAG, "getZoomCropFormRegion, newCropRegion: " + rect3 + ", zoomCropRegion: " + rect2
                + ", activeRegion: " + rect4 + ", cropRect: " + rect);
        return rect3;
    }

    private void setZoomRatio(CaptureRequestProxy.Builder builder, float f, Parameter parameter) {
        if (parameter.containCustomKey(PreviewParameter.KEY_ZOOM_SCALE_ENABLE)
                ? ((Boolean) parameter.get(PreviewParameter.KEY_ZOOM_SCALE_ENABLE)).booleanValue()
                : false) {
            f = 1.0f;
            if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_ENABLE_FRONT_CAMERA_SCALE))) {
                builder.setParameter(CameraMetadataKey.KEY_NAME_ZOOM_SCALE,
                        (Float) parameter.get(PreviewParameter.KEY_ZOOM_SCALE));
            }
        }
        setZoomRatio(builder, f, Util.getCropRegionForZoom(Float.valueOf(f), this.mCameraType));
    }

    private void setZoomRatio(CaptureRequestProxy.Builder builder, float f) {
        setZoomRatio(builder, f, Util.getCropRegionForZoom(Float.valueOf(f), this.mCameraType));
    }

    @SuppressLint({ "NewApi" })
    private void setZoomRatio(CaptureRequestProxy.Builder builder, float f, Rect rect) {
        Boolean bool = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SAT_NEED_SET_ZOOMRATIO, false);
        Boolean bool2 = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_NEED_SET_ZOOMRATIO, false);
        CameraUnitLog.v(TAG, "setZoomRatio, zoomRatio: " + f + ", cropRegion: " + rect + ", isSatNeedSetZoomRatio: "
                + bool + ", isNeedSetZoomRatio: " + bool2);
        if (bool.booleanValue() || bool2.booleanValue()) {
            builder.setParameter(CaptureRequest.CONTROL_ZOOM_RATIO, Float.valueOf(f));
        } else {
            builder.setParameter(CaptureRequest.SCALER_CROP_REGION, rect);
        }
    }

    private void addDefaultParameter(CaptureRequestProxy.Builder builder, Parameter parameter) {
        if (!parameter.containAndroidKey(CaptureRequest.JPEG_QUALITY)) {
            builder.setParameter(CaptureRequest.JPEG_QUALITY, (byte) 95);
        }
        if (parameter.containAndroidKey(CaptureRequest.JPEG_ORIENTATION)) {
            return;
        }
        builder.setParameter(CaptureRequest.JPEG_ORIENTATION, 90);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void startRecording(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        try {
            CameraUnitLog.v(TAG, "startRecording");
            if (!this.mbQcomHighFrameRate || cameraRequestTag.mbNormalVideoHFR) {
                cameraRequestTag.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag,
                        Parameter.ParameterStage.START_RECORDING, 35);
                for (SurfaceWrapper surfaceWrapper : findWrappers("surface_key_recording")) {
                    this.mPreviewBuilder.addTarget(this.mOutputConfigurationMap.get(surfaceWrapper).getSurface());
                }
            }
            if (parameter != null) {
                parameter.update(this.mPreviewBuilder, 1);
            }
            requestRepeating(handler);
            this.mRecordingTag = cameraRequestTag;
            CameraRequestTag cameraRequestTag2 = cameraRequestTag;
            this.mCameraRecordingCallbackAdapter
                    .onRecordingResult(new CameraRecordingCallbackAdapter.RecordingResult(1, cameraRequestTag));
        } catch (IllegalStateException e) {
            CameraUnitLog.e(TAG, "startRecording failed", e);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void resumeRecording(Parameter parameter, Handler handler) {
        CameraUnitLog.v(TAG, "resumeRecording");
        this.mCameraRecordingCallbackAdapter.onRecordingResult(
                new CameraRecordingCallbackAdapter.RecordingResult(3, (CameraRequestTag) this.mRecordingTag));
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void pauseRecording(Parameter parameter, Handler handler) {
        CameraUnitLog.v(TAG, "pauseRecording");
        this.mCameraRecordingCallbackAdapter.onRecordingResult(
                new CameraRecordingCallbackAdapter.RecordingResult(2, (CameraRequestTag) this.mRecordingTag));
    }

    private void endOfStream(Parameter parameter, Handler handler) {
        CameraUnitLog.v(TAG, "endOfStream, start");
        try {
            CaptureRequestProxy.Builder builder = new CaptureRequestProxy.Builder(
                    this.mCameraDevice.createCaptureRequest(this.mSessionEntity.getTemplate()));
            for (SurfaceWrapper surfaceWrapper : findWrappers("surface_key_recording")) {
                builder.addTarget(this.mOutputConfigurationMap.get(surfaceWrapper).getSurface());
            }
            for (SurfaceWrapper surfaceWrapper2 : findWrappers("surface_key_preview")) {
                builder.addTarget(this.mOutputConfigurationMap.get(surfaceWrapper2).getSurface());
            }
            parameter.update(builder, 1);
            setFlashMode(this.mFlashMode, builder, true);
            if (parameter != null && parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
                float floatValue = ((Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue();
                setZoomRatio(builder, floatValue, parameter);
                StatisticsManager.getInstance().setZoomValue(String.valueOf(floatValue));
            }
            final ConditionVariable conditionVariable = new ConditionVariable();
            requestCapture(builder, new CameraCaptureSession.CaptureCallback() { // from class:
                                                                                 // com.oplus.ocs.camera.producer.device.Camera2Impl.9
                @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest,
                        TotalCaptureResult totalCaptureResult) {
                    conditionVariable.open();
                    CameraUnitLog.d(Camera2Impl.TAG, "endOfStream, onCaptureCompleted");
                }

                @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest,
                        CaptureFailure captureFailure) {
                    conditionVariable.open();
                    CameraUnitLog.e(Camera2Impl.TAG, "endOfStream, onCaptureFailed");
                }

                @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                public void onCaptureSequenceAborted(CameraCaptureSession cameraCaptureSession, int i) {
                    conditionVariable.open();
                    CameraUnitLog.d(Camera2Impl.TAG, "endOfStream, onCaptureSequenceAborted");
                }
            }, handler);
            conditionVariable.block(1000L);
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "endOfStream", e);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void stopRecording(Parameter parameter, Handler handler) {
        try {
            CameraUnitLog.v(TAG, "stopRecording");
            boolean z = false;
            if (parameter != null) {
                if ((!"front_main".equals(this.mCameraType)
                        || "1".equals(
                                CameraConfigHelper.getConfigValue(DefaultUtill.KEY_SUPPORT_END_FRONT_VIDEO_EIS_STREAM))
                        || "1".equals(CameraConfigHelper
                                .getConfigValue(DefaultUtill.KEY_SUPPORT_END_FRONT_VIDEO_MCTF_STREAM)))
                        && PlatformUtil.isQualcommPlatform()) {
                    if (((Boolean) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_STOP_REPEATING_BEFORE_END_OF_STREAM, true))
                            .booleanValue()) {
                        this.mCaptureSession.stopRepeating();
                    }
                    if (parameter.containCustomKey(PreviewParameter.KEY_END_OF_STREAM)
                            && ((byte[]) parameter.get(PreviewParameter.KEY_END_OF_STREAM))[0] == 1) {
                        endOfStream(parameter, handler);
                        parameter.set((Parameter.Key<Parameter.Key<byte[]>>) PreviewParameter.KEY_END_OF_STREAM,
                                (Parameter.Key<byte[]>) new byte[] { 0 });
                    }
                }
                parameter.update(this.mPreviewBuilder, 1);
                if (parameter.containCustomKey(PreviewParameter.KEY_END_OF_STREAM)) {
                    parameter.remove(PreviewParameter.KEY_END_OF_STREAM);
                }
            }
            Object obj = this.mRecordingTag;
            if (obj != null) {
                z = ((CameraRequestTag) obj).mbNormalVideoHFR;
            }
            if (!this.mbQcomHighFrameRate || z) {
                for (SurfaceWrapper surfaceWrapper : findWrappers("surface_key_recording")) {
                    this.mPreviewBuilder.removeTarget(this.mOutputConfigurationMap.get(surfaceWrapper).getSurface());
                }
            }
            requestRepeating(handler);
            this.mCameraRecordingCallbackAdapter.onRecordingResult(
                    new CameraRecordingCallbackAdapter.RecordingResult(4, (CameraRequestTag) this.mRecordingTag));
            this.mRecordingTag = null;
        } catch (CameraAccessException | IllegalStateException e) {
            CameraUnitLog.e(TAG, "stopRecording", e.getCause());
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public int getLogicId() {
        CameraDevice cameraDevice = this.mCameraDevice;
        if (cameraDevice == null) {
            return -1;
        }
        return Integer.parseInt(cameraDevice.getId());
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    @SuppressLint({ "MissingPermission" })
    public void openCameraDevice(int i, Handler handler) throws CameraAccessException, SecurityException {
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplOpenCameraDevice");
        CameraManager cameraManager = (CameraManager) ContextHolder.getContext().getSystemService("camera");
        if (cameraManager == null) {
            return;
        }
        CameraUnitLog.e(TAG, "openCameraDevice, cameraId: " + i);
        StatisticsManager.getInstance().setDcsDelayProcessMsg(2, StatisticsManager.DELAY_TIME_3S);
        this.mDeviceVariable.close();
        CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.openCamera");
        cameraManager.openCamera(String.valueOf(i), this.mStateCallback, handler);
        CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.openCamera");
        CameraUnitLog.traceEndSection("CameraUnitCamera2ImplOpenCameraDevice");
        this.mDeviceVariable.block();
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void closeCameraDevice() {
        this.mAfRegion = null;
        this.mbWaitingAeAfConverge = false;
        this.mbWaitingTriggerAndStartAiFlash = false;
        CameraUnitLog.traceBegin("CameraUnitCamera2ImplCloseDevice");
        if (this.mCameraDevice != null) {
            CameraUnitLog.e(TAG, "closeCameraDevice");
            this.mDeviceVariable.close();
            this.mCameraDevice.close();
            this.mDeviceVariable.block();
        }
        CameraUnitLog.traceEnd("CameraUnitCamera2ImplCloseDevice");
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public CameraSessionEntity getSessionEntity() {
        return this.mSessionEntity;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public ConfigInfoPkg getConfigInfo() {
        if (this.mPreviewBuilder == null) {
            return null;
        }
        ConfigInfoPkg configInfoPkg = new ConfigInfoPkg();
        configInfoPkg.mApsRequestTag = this.mSessionEntity.getApsTag();
        configInfoPkg.mRequest = this.mPreviewBuilder.build();
        return configInfoPkg;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void createNewSession(CameraSessionEntity cameraSessionEntity, Parameter parameter, final Handler handler)
            throws Exception {
        OutputConfiguration outputConfiguration;
        SurfaceWrapper cameraMetadataSurface;
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplCreateSession");
        CameraUnitLog.e(TAG, "CameraUnitTest, createNewSession");
        this.mFocusMode = 4;
        this.mRecordingTag = null;
        closeAllImageReader();
        CameraUnitLog.traceBeginSection("createNewSession.getAllSurfaceWrapper");
        LinkedList<SurfaceWrapper> allSurfaceWrapper = cameraSessionEntity.getAllSurfaceWrapper();
        CameraUnitLog.traceEndSection("createNewSession.getAllSurfaceWrapper");
        boolean useMetadataSurface = cameraSessionEntity.getUseMetadataSurface();
        CameraUnitLog.i(TAG, "createNewSession, surfaceWrapperList: " + allSurfaceWrapper + " useMetaSurface: "
                + useMetadataSurface);
        if (allSurfaceWrapper == null || allSurfaceWrapper.isEmpty()) {
            throw new IllegalArgumentException("no valid surface");
        }
        if (useMetadataSurface && (cameraMetadataSurface = getCameraMetadataSurface()) != null) {
            allSurfaceWrapper.add(cameraMetadataSurface);
        }
        this.mSessionEntity = cameraSessionEntity;
        this.mSessionSurfaceWrapperList = allSurfaceWrapper;
        if (cameraSessionEntity.getDelay() > 0) {
            Thread.sleep(cameraSessionEntity.getDelay());
        }
        this.mOutputConfigurationMap.clear();
        this.mAfRegion = null;
        Iterator<SurfaceWrapper> it = allSurfaceWrapper.iterator();
        InputConfiguration inputConfiguration = null;
        while (it.hasNext()) {
            SurfaceWrapper next = it.next();
            String surfaceUsage = next.getSurfaceUsage();
            Size halSurfaceSize = next.getHalSurfaceSize();
            if ("surface_key_preview".equals(surfaceUsage)) {
                if (next.getSurface() != null) {
                    CameraUnitLog.d(TAG, "createNewSession, wrapper Surface is: " + next.getSurface());
                    outputConfiguration = new OutputConfiguration(next.getSurface());
                } else {
                    CameraUnitLog.d(TAG, "createNewSession, wrapper Surface is null, " + halSurfaceSize
                            + ", surfaceType: " + next.getSurfaceType());
                    outputConfiguration = new OutputConfiguration(halSurfaceSize,
                            SurfaceWrapper.getSurfaceClass(next.getSurfaceType()));
                }
            } else if ("surface_key_reprocess".equals(surfaceUsage)) {
                inputConfiguration = new InputConfiguration(halSurfaceSize.getWidth(), halSurfaceSize.getHeight(),
                        next.getFormat());
                outputConfiguration = null;
            } else {
                outputConfiguration = new OutputConfiguration(next.getSurface());
            }
            addVideoDynamicRangeProfile(outputConfiguration, surfaceUsage);
            CameraUnitLog.i(TAG, "createNewSession, wrapper.getSurface(): " + next.getSurface());
            if (-1 != next.getPhysicalCameraId()) {
                outputConfiguration.setPhysicalCameraId(String.valueOf(next.getPhysicalCameraId()));
            }
            if (outputConfiguration != null) {
                this.mOutputConfigurationMap.put(next, outputConfiguration);
            }
        }
        this.mbQcomHighFrameRate = 1 == cameraSessionEntity.getOperationMode();
        SessionConfiguration sessionConfiguration = new SessionConfiguration(cameraSessionEntity.getOperationMode(),
                new ArrayList(this.mOutputConfigurationMap.values()), new Executor() { // from class:
                                                                                       // com.oplus.ocs.camera.producer.device.Camera2Impl.10
                    @Override // java.util.concurrent.Executor
                    public void execute(Runnable runnable) {
                        handler.post(runnable);
                    }
                }, this.mSessionStateCallback);
        if (inputConfiguration != null) {
            sessionConfiguration.setInputConfiguration(inputConfiguration);
        }
        this.mPreviewBuilder = new CaptureRequestProxy.Builder(
                this.mCameraDevice.createCaptureRequest(cameraSessionEntity.getTemplate()));
        if (this.mbQcomHighFrameRate
                && (parameter == null || !parameter.containAndroidKey(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE))) {
            throw new IllegalArgumentException("Invalid parameter, the slow video mode must have fps.");
        }
        if (parameter != null) {
            parameter.update(this.mPreviewBuilder, 3);
        }
        Util.dumpAvailableSessionKeys(this.mCameraType);
        sessionConfiguration.setSessionParameters(this.mPreviewBuilder.build());
        this.mSessionVariable.close();
        Util.dumpSessionConfig(sessionConfiguration, allSurfaceWrapper, this.mCameraDevice.getId());
        CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.createCaptureSession");
        this.mCameraDevice.createCaptureSession(sessionConfiguration);
        CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.createCaptureSession");
        CameraUnitLog.traceEndSection("CameraUnitCamera2ImplCreateSession");
        StatisticsManager.getInstance().setModeName(this.mSessionEntity.getConfig().getModeName());
        this.mSessionVariable.block();
        if (parameter.containCustomKey(ConfigureParameter.KEY_TORCH_FLASH_ENABLE)) {
            boolean equals = "on".equals(parameter.get(ConfigureParameter.KEY_TORCH_FLASH_ENABLE));
            this.mbSupportTorchFlash = equals;
            this.mFlashController.setTorchFlash(equals);
        } else if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SELF_AWB_SUPPORT, false))
                .booleanValue() && isFrontCamera()) {
            this.mbSupportTorchFlash = true;
            this.mFlashController.setTorchFlash(true);
        }
        this.mFlashController.setSupportWaitAf(
                ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_TRIGGER_FLASH_WAIT_AF, false))
                        .booleanValue());
    }

    @TargetApi(33)
    private void addVideoDynamicRangeProfile(OutputConfiguration outputConfiguration, String str) {
        DynamicRangeProfiles dynamicRangeProfiles;
        if (PlatformUtil.isMtkPlatform() && com.common.Util.isAfterAndroidS()) {
            if (("surface_key_preview".equals(str) || "surface_key_recording".equals(str))
                    && CameraConstant.STATUS_ON.equals(this.mSessionEntity.getConfig().getConfigureParameter()
                            .get(ConfigureParameter.KEY_MOVIE_HDR_ENABLE))
                    && (dynamicRangeProfiles = (DynamicRangeProfiles) CameraCharacteristicsHelper
                            .getCameraCharacteristicsWrapper(this.mCameraType)
                            .get(CameraCharacteristics.REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES)) != null
                    && dynamicRangeProfiles.getSupportedProfiles().contains(2L)) {
                outputConfiguration.setDynamicRangeProfile(2L);
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void closeOldSession() {
        CameraUnitLog.e(TAG, "closeOldSession");
        CameraUnitLog.traceBegin("CameraUnitCamera2ImplCloseOldSession");
        synchronized (this.mSessionLock) {
            this.mFlashController.resetState();
            this.mbAeAfLocked = false;
            this.mAfRegion = null;
            CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
            if (cameraCaptureSession != null) {
                cameraCaptureSession.close();
                this.mCaptureSession = null;
            }
            this.mPreviewBuilder = null;
        }
        CameraUnitLog.traceEnd("CameraUnitCamera2ImplCloseOldSession");
        LinkedList<SurfaceWrapper> linkedList = this.mSessionSurfaceWrapperList;
        if (linkedList != null) {
            Iterator<SurfaceWrapper> it = linkedList.iterator();
            while (it.hasNext()) {
                SurfaceWrapper next = it.next();
                ImageReader imageReader = SurfacePool.getInstance()
                        .getImageReader(new SurfaceKey(next.getCameraType(), next.getSurfaceUsage(), next.getFormat()));
                if (next.getSurface() != null && next.getSurfaceUsage() != "surface_key_recording") {
                    next.getSurface().release();
                }
                if (imageReader != null) {
                    imageReader.setOnImageAvailableListener(null, null);
                }
            }
        }
        SurfacePool.getInstance().releaseVideoSurface();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeAllImageReader() {
        LinkedList<SurfaceWrapper> linkedList = this.mSessionSurfaceWrapperList;
        if (linkedList != null) {
            Iterator<SurfaceWrapper> it = linkedList.iterator();
            while (it.hasNext()) {
                SurfaceWrapper next = it.next();
                SurfacePool.getInstance().closeImageReader(
                        new SurfaceKey(next.getCameraType(), next.getSurfaceUsage(), next.getFormat()));
            }
            this.mSessionSurfaceWrapperList = null;
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public boolean startPreview(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        String str;
        String str2;
        boolean z;
        boolean z2;
        boolean z3;
        Long l;
        CameraUnitLog.e(TAG,
                "startPreview, parameter: " + parameter + ", tag: " + cameraRequestTag + ", mbFirstMetaArrived: "
                        + this.mbFirstMetaArrived + ", tag hashCode: " + cameraRequestTag.hashCode());
        String str3 = "CameraUnitCamera2ImplStartPreview";
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplStartPreview");
        if (parameter != null) {
            Integer num = (Integer) parameter.get(CameraMetadataKey.KEY_ONLY_ZOOM_CHANGE);
            if (num == null || num.intValue() == 0) {
                parameter.update(this.mPreviewBuilder, 1);
                if (parameter.containCustomKey(PreviewParameter.KEY_BURST_SHOT_ENABLE)) {
                    this.mbContinueShot = "on".equals(parameter.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));
                }
                if (parameter.get(CaptureRequest.JPEG_ORIENTATION) != null) {
                    this.mSessionEntity
                            .getApsTag().mJpegOrientation = ((Integer) parameter.get(CaptureRequest.JPEG_ORIENTATION))
                                    .intValue();
                }
                Boolean bool = (Boolean) parameter.get(CaptureRequest.CONTROL_AE_LOCK);
                this.mbAeAfLocked = bool != null && bool.booleanValue();
            } else {
                if (parameter.containAndroidKey(CameraMetadataKey.KEY_SOD_TOUCH_REGION)
                        && PlatformUtil.isMtkPlatform()) {
                    this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_SOD_TOUCH_REGION,
                            (int[]) parameter.get(CameraMetadataKey.KEY_SOD_TOUCH_REGION));
                }
                CameraUnitLog.v(TAG, "startPreview, only zoom change, no update parameter");
            }
        }
        if (cameraRequestTag != null) {
            cameraRequestTag.mHalCallbackHandler = handler;
            z = cameraRequestTag.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag,
                    Parameter.ParameterStage.START_PREVIEW, 35);
            if (!z) {
                CameraUnitLog.e(TAG, "startPreview, linkToObserver return failed!");
                return false;
            }
            for (Map.Entry<SurfaceKey, Surface> entry : cameraRequestTag.mRemoveTargetSurfaces.entrySet()) {
                SurfaceWrapper findWrapper = findWrapper(entry.getKey().getUsage(), entry.getKey().getCameraType(),
                        entry.getKey().getFormat());
                if (findWrapper != null) {
                    this.mPreviewBuilder.removeTarget(this.mOutputConfigurationMap.get(findWrapper).getSurface());
                }
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (this.mbQcomHighFrameRate && !cameraRequestTag.mbNormalVideoHFR) {
                for (SurfaceWrapper surfaceWrapper : findWrappers("surface_key_recording")) {
                    Surface surface = this.mOutputConfigurationMap.get(surfaceWrapper).getSurface();
                    if (surface != null) {
                        this.mPreviewBuilder.addTarget(surface);
                        arrayList2.add(surface);
                    }
                    if (linkSlowVideoHfrImageReader(cameraRequestTag, surfaceWrapper, handler)) {
                        this.mSessionEntity.getApsTag().mSlowVideoHfrSurface = SurfacePool.getInstance()
                                .getVideoSurface();
                    }
                }
            }
            linkMetadataImageReader(handler);
            Iterator<Map.Entry<SurfaceKey, Surface>> it = cameraRequestTag.mAddTargetSurfaces.entrySet().iterator();
            boolean z4 = false;
            Size size = null;
            while (it.hasNext()) {
                Map.Entry<SurfaceKey, Surface> next = it.next();
                Iterator<Map.Entry<SurfaceKey, Surface>> it2 = it;
                String str4 = str3;
                SurfaceWrapper findWrapper2 = findWrapper(next.getKey().getUsage(), next.getKey().getCameraType(),
                        next.getKey().getFormat());
                if (findWrapper2 == null) {
                    it = it2;
                    str3 = str4;
                } else {
                    OutputConfiguration outputConfiguration = this.mOutputConfigurationMap.get(findWrapper2);
                    if (outputConfiguration != null) {
                        if (outputConfiguration.getSurface() == null) {
                            outputConfiguration.addSurface(
                                    findWrapper2.getSurface() != null ? findWrapper2.getSurface() : next.getValue());
                            arrayList.add(outputConfiguration);
                        }
                        this.mPreviewBuilder.addTarget(outputConfiguration.getSurface());
                        arrayList2.add(outputConfiguration.getSurface());
                        size = findWrapper2.getHalSurfaceSize();
                    }
                    it = it2;
                    str3 = str4;
                    z4 = true;
                }
            }
            str = str3;
            if (arrayList.size() > 0) {
                try {
                    this.mCaptureSession.finalizeOutputConfigurations(arrayList);
                } catch (CameraAccessException | IllegalStateException e) {
                    CameraUnitLog.e(TAG, "startPreview", e);
                    return false;
                }
            }
            if (!z4 && Util.isSystemCamera()) {
                CameraUnitLog.e(TAG, "startPreview, has not add surface");
                return false;
            }
            this.mPreviewBuilder.setTag(cameraRequestTag);
            if (cameraRequestTag.mbStarburstEnable) {
                CameraUnitLog.e(TAG, "startPreview, init starburst info");
                this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_STARBURST_INFO,
                        new float[CameraConstant.STARBURST_INFO_LENGTH]);
            }
            if (!cameraRequestTag.mbBurstShot && (48 == cameraRequestTag.mFeatureType
                    || 49 == cameraRequestTag.mFeatureType || 50 == cameraRequestTag.mFeatureType)) {
                this.mPreviewBuilder.setParameter(CameraMetadataKey.KEY_IS_BURST_CAPTURE, new int[] { 0 });
            }
            if (parameter != null) {
                if (parameter.containCustomKey(PreviewParameter.KEY_ZOOM_SCALE_ENABLE)) {
                    cameraRequestTag.mbScaleEnable = ((Boolean) parameter.get(PreviewParameter.KEY_ZOOM_SCALE_ENABLE))
                            .booleanValue();
                }
                if (parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
                    cameraRequestTag.mZoomRatio = ((Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue();
                    setZoomRatio(this.mPreviewBuilder, cameraRequestTag.mZoomRatio, parameter);
                    StatisticsManager.getInstance().setZoomValue(String.valueOf(cameraRequestTag.mZoomRatio));
                }
                if (parameter.containCustomKey(PreviewParameter.KEY_FOCUS_MODE)) {
                    if (this.mRecordingTag != null) {
                        for (SurfaceWrapper surfaceWrapper2 : findWrappers("surface_key_recording")) {
                            arrayList2.add(this.mOutputConfigurationMap.get(surfaceWrapper2).getSurface());
                        }
                    }
                    str2 = null;
                    setFocusMode(cameraRequestTag, parameter, handler, size, arrayList2);
                    if ("professional_mode".equals(cameraRequestTag.mCaptureMode)
                            && (l = (Long) this.mPreviewBuilder
                                    .getParameter(CaptureRequest.SENSOR_EXPOSURE_TIME)) != null
                            && 40000000 < l.longValue()) {
                        CameraUnitLog.w(TAG, "startPreview, restrict exposure time to 40000000");
                        this.mPreviewBuilder.setParameter(CaptureRequest.SENSOR_EXPOSURE_TIME, 40000000L);
                    }
                }
            }
            str2 = null;
            if ("professional_mode".equals(cameraRequestTag.mCaptureMode)) {
                CameraUnitLog.w(TAG, "startPreview, restrict exposure time to 40000000");
                this.mPreviewBuilder.setParameter(CaptureRequest.SENSOR_EXPOSURE_TIME, 40000000L);
            }
        } else {
            str = "CameraUnitCamera2ImplStartPreview";
            str2 = null;
            z = true;
        }
        if (parameter != null && parameter.containCustomKey(PreviewParameter.KEY_FLASH_MODE)) {
            setFlashMode((String) parameter.get(PreviewParameter.KEY_FLASH_MODE), this.mPreviewBuilder, true);
        } else {
            this.mFlashMode = str2;
        }
        CaptureRequest build = this.mPreviewBuilder.build();
        if (build.getTag() == null) {
            CameraUnitLog.d(TAG, "startPreview tag is null");
            return false;
        }
        try {
            ArrayList arrayList3 = new ArrayList();
            if (this.mbQcomHighFrameRate) {
                arrayList3.addAll(((CameraConstrainedHighSpeedCaptureSession) this.mCaptureSession)
                        .createHighSpeedRequestList(build));
            } else {
                arrayList3.add(build);
            }
            if (!this.mbFirstMetaArrived && !arrayList3.isEmpty()) {
                this.mRepeatingVariable.close();
                z2 = false;
                try {
                    this.mFirstRequestHash = ((CaptureRequest) arrayList3.get(0)).hashCode();
                } catch (CameraAccessException | IllegalStateException e2) {
                    e = e2;
                    CameraUnitLog.e(TAG, "startPreview", e);
                    this.mRepeatingVariable.open();
                    z3 = z2;
                    CameraUnitLog.traceEndSection(str);
                    return z3;
                }
            }
            if (SdkConfig.META_DUMP) {
                Util.dumpCaptureRequest(build, "preview");
            }
            if (parameter != null && parameter.containCustomKey(PreviewParameter.KEY_FLASH_MODE)) {
                this.mbFlashAutoMode = ((String) parameter.get(PreviewParameter.KEY_FLASH_MODE)).equals("auto");
                z2 = false;
            } else {
                z2 = false;
                this.mbFlashAutoMode = false;
            }
            CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.setRepeatingRequest");
            this.mCaptureSession.setRepeatingBurst(arrayList3, this.mPreviewCallback, handler);
            CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.setRepeatingRequest");
            this.mbIsPreviewing.set(true);
            if (!this.mbFirstMetaArrived) {
                this.mRepeatingVariable.block();
            }
            z3 = z;
        } catch (CameraAccessException | IllegalStateException e3) {
            e = e3;
            z2 = false;
        }
        CameraUnitLog.traceEndSection(str);
        return z3;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void stopPreview(boolean z) {
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplStopPreview");
        try {
            CameraUnitLog.e(TAG, "stopPreview");
            this.mbIsPreviewing.set(false);
            this.mCaptureSession.stopRepeating();
            CameraIdType cameraIdType = CameraCharacteristicsHelper.getCameraIdType(getLogicId());
            if (cameraIdType != null) {
                this.mCameraPreviewCallbackAdapter.onPreviewRequestStopped(cameraIdType.getCameraType());
            }
            StatisticsManager.getInstance().reportPreviewEnd(this.mCameraType);
            this.mbFirstMetaArrived = false;
            this.mbSmaWireStatusAndModuleIdArrived = false;
            this.mFirstRequestHash = 0;
            this.mFlashMode = "off";
            CameraUnitLog.v(TAG, "stopPreview, begin abortCaptures, abortCaptures: " + z);
            if (z) {
                this.mCaptureSession.abortCaptures();
            }
            CameraUnitLog.v(TAG, "stopPreview, X");
        } catch (CameraAccessException e) {
            CameraUnitLog.e(TAG, "stopPreview failed", e);
            this.mStateCallback.onError(this.mCameraDevice, 4);
        } catch (IllegalStateException e2) {
            CameraUnitLog.e(TAG, "stopPreview failed", e2);
        }
        CameraUnitLog.traceEndSection("CameraUnitCamera2ImplStopPreview");
        StatisticsManager.getInstance().release(false);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void beforeCloseSession() {
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplBeforeCloseSession");
        LinkedList<SurfaceWrapper> linkedList = this.mSessionSurfaceWrapperList;
        if (linkedList != null) {
            linkedList.forEach(new Consumer() { // from class:
                                                // com.oplus.ocs.camera.producer.device.Camera2Impl$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Camera2Impl.lambda$beforeCloseSession$0((SurfaceWrapper) obj);
                }
            });
        }
        CameraUnitLog.traceEndSection("CameraUnitCamera2ImplBeforeCloseSession");
        CameraUnitLog.d(TAG, "beforeCloseSession");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$beforeCloseSession$0(SurfaceWrapper surfaceWrapper) {
        if ("surface_key_preview".equals(surfaceWrapper.getSurfaceUsage())
                || "surface_key_preview_frame".equals(surfaceWrapper.getSurfaceUsage())) {
            ImageReader imageReader = SurfacePool.getInstance().getImageReader(new SurfaceKey(
                    surfaceWrapper.getCameraType(), surfaceWrapper.getSurfaceUsage(), surfaceWrapper.getFormat()));
            if (imageReader != null) {
                imageReader.setOnImageAvailableListener(null, null);
            }
        }
    }

    private void requestRepeating(Handler handler) {
        if (this.mbIsPreviewing.get()) {
            try {
                ArrayList arrayList = new ArrayList();
                if (this.mbQcomHighFrameRate) {
                    arrayList.addAll(((CameraConstrainedHighSpeedCaptureSession) this.mCaptureSession)
                            .createHighSpeedRequestList(this.mPreviewBuilder.build()));
                } else {
                    arrayList.add(this.mPreviewBuilder.build());
                }
                CameraUnitLog.d(TAG, "requestRepeating, fps: "
                        + this.mPreviewBuilder.getParameter(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE));
                this.mCaptureSession.setRepeatingBurst(arrayList, this.mPreviewCallback, handler);
            } catch (Throwable th) {
                CameraUnitLog.e(TAG, "requestRepeating, have exception", th);
            }
        }
    }

    private boolean requestCapture(CaptureRequestProxy.Builder builder,
            CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        try {
            ArrayList arrayList = new ArrayList();
            if (this.mbQcomHighFrameRate) {
                arrayList.addAll(((CameraConstrainedHighSpeedCaptureSession) this.mCaptureSession)
                        .createHighSpeedRequestList(builder.build()));
            } else {
                arrayList.add(builder.build());
            }
            CameraUnitLog.d(TAG, "requestCapture, fps: "
                    + this.mPreviewBuilder.getParameter(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE));
            this.mCaptureSession.captureBurst(arrayList, captureCallback, handler);
            return true;
        } catch (CameraAccessException | IllegalStateException e) {
            CameraUnitLog.e(TAG, "requestCapture, have exception", e);
            return true;
        }
    }

    private SurfaceWrapper findWrapper(String str, String str2, int i) {
        for (SurfaceWrapper surfaceWrapper : this.mOutputConfigurationMap.keySet()) {
            if (surfaceWrapper.getSurfaceUsage().equals(str) && surfaceWrapper.getCameraType().equals(str2)
                    && surfaceWrapper.getFormat() == i) {
                return surfaceWrapper;
            }
        }
        return null;
    }

    private List<SurfaceWrapper> findWrappers(String str) {
        LinkedList linkedList = new LinkedList();
        for (SurfaceWrapper surfaceWrapper : this.mOutputConfigurationMap.keySet()) {
            if (surfaceWrapper.getSurfaceUsage().equals(str)) {
                linkedList.add(surfaceWrapper);
            }
        }
        return linkedList;
    }

    private int getIspTuningMode(String[] strArr, boolean z, int i, int i2, int i3) {
        if (strArr != null && strArr.length > 0) {
            if (i2 > 1 && ("aps_algo_mfll".equals(strArr[0]) || "aps_algo_ainr".equals(strArr[0])
                    || ParameterKeys.ALGO_NAME_AIHDR.equals(strArr[0]))) {
                int i4 = 5502;
                if (isSuperNightTuningMode(strArr[0], z)) {
                    i4 = 4;
                } else if ((i != i2 - 1 || !isLastFrameUseHDRTuningMode(strArr[0], i3, z))
                        && (i != i2 - 2 || !isSecondLastFrameUseHDRTuningMode(strArr[0], i3))) {
                    i4 = "aps_algo_mfll".equals(strArr[0]) ? 1 : 2;
                }
                CameraUnitLog.d(TAG, "getIspTuningMode, ispTuningMode: " + i4);
                return i4;
            }
        }
        return -1;
    }

    private boolean isCustomSuperNightTuningMode(String str) {
        return ParameterKeys.ALGO_NAME_SUPERNIGHT.equals(str)
                || ParameterKeys.ALGO_NAME_FRONT_PORTRAIT_SUPERNIGHT.equals(str);
    }

    private boolean isSuperNightTuningMode(String str, boolean z) {
        return (ParameterKeys.ALGO_NAME_AIHDR.equals(str) && z)
                || (this.mbWaitingTriggerAndStartAiFlash && ParameterKeys.ALGO_NAME_AIHDR.equals(str)
                        && !((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_TORCH_FLASH, false))
                                .booleanValue());
    }

    private boolean isLastFrameUseHDRTuningMode(String str, int i, boolean z) {
        return ("aps_algo_ainr".equals(str) && z)
                || ("aps_algo_mfll".equals(str) && (26 == i || 27 == i || 32 == i || 30 == i))
                || isAINRHDRTuningMode(str, i) || isAINRCoupleHDRTuningMode(str, i);
    }

    private boolean isSecondLastFrameUseHDRTuningMode(String str, int i) {
        return ("aps_algo_mfll".equals(str) && (27 == i || 32 == i)) || isAINRHDRTuningMode(str, i);
    }

    private boolean isAINRHDRTuningMode(String str, int i) {
        return "aps_algo_ainr".equals(str) && 36 == i;
    }

    private boolean isAINRCoupleHDRTuningMode(String str, int i) {
        return "aps_algo_ainr".equals(str) && 37 == i;
    }

    private SurfaceWrapper getCameraMetadataSurface() {
        Size size = new Size(300, 1024);
        SurfaceWrapper surfaceWrapper = new SurfaceWrapper("meta", "surface_key_metadata", size, size, 35, 3);
        surfaceWrapper.setPhysicalCameraId(-1);
        surfaceWrapper.setMaxImageNumber(40);
        surfaceWrapper.setIntention(51L);
        surfaceWrapper.setSurface(SurfacePool.getInstance().createImageReader(surfaceWrapper).getSurface());
        return surfaceWrapper;
    }

    private boolean linkMetadataImageReader(Handler handler) {
        LinkedList<SurfaceWrapper> linkedList = this.mSessionSurfaceWrapperList;
        ImageReader imageReader = null;
        if (linkedList != null) {
            Iterator<SurfaceWrapper> it = linkedList.iterator();
            while (it.hasNext()) {
                SurfaceWrapper next = it.next();
                SurfaceKey surfaceKey = new SurfaceKey(next.getCameraType(), next.getSurfaceUsage(), next.getFormat());
                if ("surface_key_metadata".equals(surfaceKey.getUsage())) {
                    imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
                }
            }
        }
        if (imageReader != null) {
            imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class:
                                                                                                 // com.oplus.ocs.camera.producer.device.Camera2Impl.11
                @Override // android.media.ImageReader.OnImageAvailableListener
                public void onImageAvailable(ImageReader imageReader2) {
                    Camera2Impl.this.mCameraPreviewCallbackAdapter.onCaptureCompleted(imageReader2);
                }
            }, handler);
            return true;
        }
        return false;
    }

    private boolean linkSlowVideoHfrImageReader(CameraRequestTag cameraRequestTag, SurfaceWrapper surfaceWrapper,
            Handler handler) {
        if (3 != surfaceWrapper.getSurfaceType()) {
            return false;
        }
        SurfaceKey surfaceKey = new SurfaceKey(surfaceWrapper.getCameraType(), surfaceWrapper.getSurfaceUsage(),
                surfaceWrapper.getFormat());
        HashMap<SurfaceKey, Surface> hashMap = new HashMap<>();
        hashMap.put(surfaceKey, null);
        CameraRequestTag cameraRequestTag2 = new CameraRequestTag(null, handler);
        cameraRequestTag2.mAddTargetSurfaces = hashMap;
        cameraRequestTag2.mConsumerInterface = cameraRequestTag.mConsumerInterface;
        cameraRequestTag2.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag2,
                Parameter.ParameterStage.START_RECORDING, 35);
        return true;
    }

    private boolean isAutoExposureTime(Parameter parameter) {
        Long l = (Long) parameter.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        return l == null || -1 == l.longValue();
    }

    private boolean isEnableZsl(Parameter parameter) {
        Boolean bool = (Boolean) parameter.get(CaptureRequest.CONTROL_ENABLE_ZSL);
        return bool != null && bool.booleanValue();
    }

    private void updatePreviewBuilderTag(CaptureRequestProxy.Builder builder) {
        CaptureRequestProxy.Builder builder2 = this.mPreviewBuilder;
        if (builder2 != null) {
            Integer num = (Integer) builder2.getParameter(CaptureRequest.CONTROL_AF_MODE);
            if (num != null) {
                builder.setParameter(CaptureRequest.CONTROL_AF_MODE, num);
            }
            Boolean bool = (Boolean) this.mPreviewBuilder.getParameter(CaptureRequest.CONTROL_AE_LOCK);
            if (bool != null) {
                builder.setParameter(CaptureRequest.CONTROL_AE_LOCK, bool);
            }
        }
    }

    private void updatePreviewTarget(CaptureRequestProxy.Builder builder, @Nullable CameraRequestTag cameraRequestTag,
            int i) {
        if (cameraRequestTag.mbNeedPreviewStream != null) {
            for (SurfaceWrapper surfaceWrapper : this.mOutputConfigurationMap.keySet()) {
                if ("surface_key_preview".equals(surfaceWrapper.getSurfaceUsage())) {
                    if (cameraRequestTag.mbNeedPreviewStream[i]) {
                        CameraUnitLog.v(TAG, "updatePreviewTarget, add preview surface target");
                        builder.addTarget(surfaceWrapper.getSurface());
                    } else {
                        CameraUnitLog.v(TAG, "updatePreviewTarget, remove preview surface target");
                        builder.removeTarget(surfaceWrapper.getSurface());
                    }
                }
            }
        }
    }

    private void updateHdrKey(CaptureRequestProxy.Builder builder, @Nullable CameraRequestTag cameraRequestTag, int i,
            Parameter parameter) {
        if (!PlatformUtil.isQualcommPlatform() || cameraRequestTag.mbBurstShot) {
            return;
        }
        if (26 == cameraRequestTag.mApsDecisionFeatureType || 27 == cameraRequestTag.mApsDecisionFeatureType
                || 43 == cameraRequestTag.mApsDecisionFeatureType || 42 == cameraRequestTag.mApsDecisionFeatureType) {
            CameraUnitLog.v(TAG, "updateHdrKey, mTouchEVValue: " + cameraRequestTag.mTouchEVValue);
            boolean z = cameraRequestTag.mCaptureEvList[i] - cameraRequestTag.mTouchEVValue >= 0;
            if (42 == cameraRequestTag.mApsDecisionFeatureType) {
                z = z && i == 0;
            }
            setMFSRParameter(builder, cameraRequestTag, z);
            boolean z2 = z || 26 == cameraRequestTag.mApsDecisionFeatureType;
            if (43 == cameraRequestTag.mApsDecisionFeatureType) {
                int[] iArr = i == 0 ? (int[]) parameter.get(PreviewParameter.KEY_BRACKET_MODE) : new int[] { 17 };
                CameraUnitLog.d(TAG, "updateHdrKey, set bracket mode to hal: " + Arrays.toString(iArr));
                builder.setParameter(CameraMetadataKey.KEY_BRACKET_MODE, iArr);
                z2 = false;
            }
            builder.setParameter(CaptureRequest.CONTROL_ENABLE_ZSL, Boolean.valueOf(z2));
            builder.setParameter(CameraMetadataKey.KEY_APS_FEATURE_TYPE,
                    new int[] { cameraRequestTag.mApsDecisionFeatureType });
        }
    }

    private void updateMFSRKey(CaptureRequestProxy.Builder builder, @Nullable CameraRequestTag cameraRequestTag) {
        boolean z = false;
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_MFNR, false)).booleanValue()) {
            CameraUnitLog.d(TAG, "updateMFSRKey, mApsDecisionFeatureType: " + cameraRequestTag.mApsDecisionFeatureType
                    + ", mMFSRFrameCount: " + cameraRequestTag.mMFSRFrameCount);
            if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_MFNR, false)).booleanValue()) {
                if (3 == cameraRequestTag.mApsDecisionFeatureType && cameraRequestTag.mMFSRFrameCount != 0
                        && !cameraRequestTag.mbBurstShot) {
                    z = true;
                }
                setMFSRParameter(builder, cameraRequestTag, z);
            }
        }
    }

    private void setMFSRParameter(CaptureRequestProxy.Builder builder, @Nullable CameraRequestTag cameraRequestTag,
            boolean z) {
        if (z) {
            builder.setParameter(CameraMetadataKey.KEY_MFSR_FRAME_NUM, new int[] { cameraRequestTag.mMFSRFrameCount });
            builder.setParameter(CameraMetadataKey.KEY_CUSTOM_NOISE_REDUCTION, (byte) 102);
            builder.setParameter(CaptureRequest.NOISE_REDUCTION_MODE, 2);
            return;
        }
        builder.setParameter(CameraMetadataKey.KEY_MFSR_FRAME_NUM, new int[] { 0 });
        builder.setParameter(CameraMetadataKey.KEY_CUSTOM_NOISE_REDUCTION, (byte) 0);
        builder.setParameter(CaptureRequest.NOISE_REDUCTION_MODE, 1);
    }
}
