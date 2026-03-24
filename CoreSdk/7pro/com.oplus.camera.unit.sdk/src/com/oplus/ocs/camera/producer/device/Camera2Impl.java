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
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.media.ImageReader;
import android.media.ImageWriter;
import android.os.ConditionVariable;
import android.os.Handler;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.ocs.camera.SdkConfig;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
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
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsTotalResult;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
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
    private static final int IZOOM_OFF = 0;
    private static final int IZOOM_ON = 1;
    private static final String TAG = "Camera2Impl";
    private static final float ZOOM_ONE = 1.0f;
    private String mCameraType;
    private static final byte[] MTK_TUNING_REQUEST_RAW = {1};
    private static final byte[] MTK_TUNING_REQUEST_YUV = {2};
    private static final byte[] MTK_TUNING_REQUEST_RAW_AND_YUV = {3};
    private final ConditionVariable mDeviceVariable = new ConditionVariable();
    private final ConditionVariable mSessionVariable = new ConditionVariable();
    private final ConditionVariable mRepeatingVariable = new ConditionVariable();
    private final Object mSessionLock = new Object();
    private final AtomicBoolean mbIsPreviewing = new AtomicBoolean(false);
    private CameraDevice mCameraDevice = null;
    private CameraCaptureSession mCaptureSession = null;
    private CaptureRequest.Builder mPreviewBuilder = null;
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
    private volatile int[] mNewestSensorMask = null;
    private volatile int[] mNewestMasterPipeline = null;
    private boolean mbMtkLowMemoryPlatform = false;
    private boolean mbContinueShot = false;
    private Set<Long> mMtkCShortFrameNumberSet = new HashSet();
    private boolean mbFlashAutoMode = false;
    private boolean mbSupportTorchFlash = false;
    private FlashController.TriggerStateListener mTriggerStateListener = new FlashController.TriggerStateListener() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.1
        @Override // com.oplus.ocs.camera.producer.device.FlashController.TriggerStateListener
        public void onAeConverged(final boolean z) {
            CameraUnitLog.d(Camera2Impl.TAG, "onAeConverged, start");
            Camera2Impl.this.mbWaitingAeAfConverge = false;
            Camera2Impl.this.mTakePictureCallbackHandler.postAtFrontOfQueue(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.1.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Camera2Impl.this.lockAeStateForPreCapture();
                        if (z) {
                            if (Camera2Impl.this.mNewestSensorMask != null && Camera2Impl.this.mNewestMasterPipeline != null && !"id_photo_mode".equals(Camera2Impl.this.mTakePictureRequestTag.mCaptureMode) && CameraCharacteristicsHelper.getCameraCharacteristicsWrapper("rear_sat") != null) {
                                CameraUnitLog.v(Camera2Impl.TAG, "onAeConverged, mCaptureRequestTag.mSensorMask: " + Arrays.toString(Camera2Impl.this.mTakePictureRequestTag.mSensorMask) + " -> " + Arrays.toString(Camera2Impl.this.mNewestSensorMask) + ", mCaptureRequestTag.mMasterPipeline: " + Camera2Impl.this.mTakePictureRequestTag.mMasterPipeline + " -> " + Camera2Impl.this.mNewestMasterPipeline[0]);
                                Camera2Impl.this.mTakePictureRequestTag.mSensorMask = Camera2Impl.this.mNewestSensorMask;
                                Camera2Impl.this.mTakePictureRequestTag.mMasterPipeline = Camera2Impl.this.mNewestMasterPipeline[0];
                            }
                            Camera2Impl.this.takePicture(Camera2Impl.this.mTakePictureRequestTag, Camera2Impl.this.mTakePictureParameter, Camera2Impl.this.mTakePictureCallbackHandler);
                            synchronized (Camera2Impl.this.mSessionLock) {
                                if (!Camera2Impl.this.mbAeAfLocked && !Camera2Impl.this.isFrontCamera() && Util.isQcomPlatform()) {
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
    private FlashController mFlashController = new FlashController(false, this.mTriggerStateListener);
    private CameraDevice.StateCallback mStateCallback = new CameraDevice.StateCallback() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.2
        private static final String TAG = "StateCallback";

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            CameraUnitLog.e(TAG, "onOpened," + cameraDevice + ", CameraUnit version: 3.411.12");
            CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.onCameraOpened");
            Camera2Impl.this.mCameraDevice = cameraDevice;
            Camera2Impl.this.mDeviceVariable.open();
            CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.onCameraOpened");
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            CameraUnitLog.d(TAG, "onDisconnected," + cameraDevice + ", CameraUnit version: 3.411.12");
            Camera2Impl.this.releaseBlocks();
            if (Camera2Impl.this.mCameraStateCallback != null) {
                Camera2Impl.this.mCameraStateCallback.onDisconnected(cameraDevice);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(@NonNull CameraDevice cameraDevice, int i) {
            CameraUnitLog.d(TAG, "onError," + cameraDevice + ", CameraUnit version: 3.411.12");
            Camera2Impl.this.mCameraDevice = cameraDevice;
            Camera2Impl.this.releaseBlocks();
            if (Camera2Impl.this.mCameraStateCallback != null) {
                Camera2Impl.this.mCameraStateCallback.onError(cameraDevice, i);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(CameraDevice cameraDevice) {
            CameraUnitLog.e(TAG, "onClosed," + cameraDevice + ", CameraUnit version: 3.411.12");
            if (Camera2Impl.this.mCameraDevice == null || Camera2Impl.this.mCameraDevice.equals(cameraDevice)) {
                Camera2Impl.this.mCameraDevice = null;
                Camera2Impl.this.closeAllImageReader();
                Camera2Impl.this.mDeviceVariable.open();
                return;
            }
            CameraUnitLog.e(TAG, "onClosed, camera device not match return!");
        }
    };
    private CameraPreviewCallbackAdapter.PreviewMetadataCallback mCallback = new CameraPreviewCallbackAdapter.PreviewMetadataCallback() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.3
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
                Camera2Impl.this.mNewestMasterPipeline = new int[]{decisionResult.mMasterPipeline};
            }
        }
    };
    private CameraCaptureSession.CaptureCallback mPreviewCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.4
        private boolean mbHaveSearching = false;

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
            Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureStarted(captureRequest, j, j2);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            if (Camera2Impl.this.mFirstRequestHash == captureRequest.hashCode() && !Camera2Impl.this.mbFirstMetaArrived) {
                onFirstPreviewMetaArrive(captureRequest);
            }
            checkSmaWireStatusAndModuleIdArrived(totalCaptureResult);
            CameraIdType cameraIdType = CameraCharacteristicsHelper.getCameraIdType(Camera2Impl.this.getLogicId());
            if (cameraIdType != null) {
                Camera2Impl.this.mCameraPreviewCallbackAdapter.onCaptureCompleted(captureRequest, totalCaptureResult, cameraIdType.getCameraType());
            }
            Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
            Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_MODE);
            if (Camera2Impl.this.mbAeAfLocked) {
                Camera2Impl.this.mbNeedAutoFlash = false;
            } else if (num2 == null || num == null || 2 != num2.intValue()) {
                if (Camera2Impl.this.mbFlashAutoMode && num2 != null && 1 == num2.intValue()) {
                    this.mbHaveSearching = false;
                }
            } else if (4 == num.intValue()) {
                Camera2Impl.this.mbNeedAutoFlash = true;
                this.mbHaveSearching = false;
            } else if (1 == num.intValue()) {
                this.mbHaveSearching = true;
            } else if (2 == num.intValue() && this.mbHaveSearching) {
                Camera2Impl.this.mbNeedAutoFlash = false;
                this.mbHaveSearching = false;
            }
            synchronized (Camera2Impl.this.mSessionLock) {
                Camera2Impl.this.mFlashController.getFlashControllerCallback().notifyMetadataReceived(captureRequest, totalCaptureResult);
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
            CameraUnitLog.w(Camera2Impl.TAG, "PreviewRequestCallback, onCaptureFailed, fail reason: " + captureFailure.getReason() + ", sequenceId:" + captureFailure.getSequenceId());
            if (Camera2Impl.this.mFirstRequestHash == captureRequest.hashCode() && !Camera2Impl.this.mbFirstMetaArrived) {
                onFirstPreviewMetaArrive(captureRequest);
            }
            Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureFailed(captureRequest, captureFailure);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureProgressed(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull CaptureRequest captureRequest, @NonNull CaptureResult captureResult) {
            Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureProgressed(captureRequest, captureResult);
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
        public void onCaptureBufferLost(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull CaptureRequest captureRequest, @NonNull Surface surface, long j) {
            Camera2Impl.this.mCameraPreviewCallbackAdapter.onPreviewCaptureBufferLost(captureRequest, surface, j);
        }

        private void onFirstPreviewMetaArrive(CaptureRequest captureRequest) {
            CameraUnitLog.e(Camera2Impl.TAG, "firstRepeatingArrive");
            StatisticsManager.getInstance().reportPreview(Camera2Impl.this.mCameraType);
            Camera2Impl.this.mbFirstMetaArrived = true;
            Camera2Impl.this.mRepeatingVariable.open();
            Camera2Impl.this.mFirstRequestHash = 0;
            Camera2Impl.this.mCameraPreviewCallbackAdapter.onFirstMetaArrived();
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
                char[] cArr = new char[bArr.length - 2];
                int length = cArr.length;
                while (i < length) {
                    int i2 = i + 1;
                    cArr[i] = (char) bArr[i2];
                    i = i2;
                }
                String str = new String(cArr);
                StatisticsManager.getInstance().reportSmaStatusAndModuleId(z, str);
                Camera2Impl.this.mbSmaWireStatusAndModuleIdArrived = true;
                CameraUnitLog.d(Camera2Impl.TAG, "checkSmaWireStatusAndModuleIdArrived, smaWireConnected : " + z + ", moduleID: " + str);
            } catch (Throwable unused) {
            }
        }
    };
    private CameraCaptureSession.StateCallback mSessionStateCallback = new CameraCaptureSession.StateCallback() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.5
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
            CameraUnitLog.d(TAG, "onConfigureFailed," + cameraCaptureSession);
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
        public void onSurfacePrepared(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull Surface surface) {
            if (Camera2Impl.this.mCameraSessionCallback != null) {
                Camera2Impl.this.mCameraSessionCallback.onSurfacePrepared(cameraCaptureSession, surface);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public Camera2Impl(@NonNull String str) {
        this.mCameraType = null;
        this.mCameraType = str;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void setCallback(CameraDevice.StateCallback stateCallback, CameraCaptureSession.StateCallback stateCallback2, CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter, CameraPictureCallbackAdapter cameraPictureCallbackAdapter, CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter) {
        this.mCameraStateCallback = stateCallback;
        this.mCameraSessionCallback = stateCallback2;
        this.mCameraPreviewCallbackAdapter = cameraPreviewCallbackAdapter;
        this.mCameraPreviewCallbackAdapter.setPreviewMetadataCallback(this.mCallback);
        this.mCameraPictureCallbackAdapter = cameraPictureCallbackAdapter;
        this.mCameraRecordingCallbackAdapter = cameraRecordingCallbackAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void takeNextBurstCapture(CaptureResult captureResult, CameraRequestTag cameraRequestTag) {
        if (Util.isQcomPlatform() || !CameraCharacteristicsHelper.isSupportCShot(cameraRequestTag.mCameraType)) {
            return;
        }
        CameraUnitLog.d(TAG, "takeNextBurstCapture, mbContinueShot :" + this.mbContinueShot);
        if (this.mbContinueShot && cameraRequestTag.mReceiveCshotNum < 20) {
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
        public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onCaptureStarted(captureRequest, j, j2);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onCaptureCompleted(captureRequest, totalCaptureResult, CameraCharacteristicsHelper.getCameraIdType(Camera2Impl.this.getLogicId()).getCameraType());
            Camera2Impl.this.takeNextBurstCapture(totalCaptureResult, (CameraRequestTag) captureRequest.getTag());
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onCaptureFailed(captureRequest, captureFailure);
            CameraUnitLog.e(Camera2Impl.TAG, "onCaptureFailed");
            if (Camera2Impl.this.isFlashRequired((CameraRequestTag) captureRequest.getTag())) {
                synchronized (Camera2Impl.this.mSessionLock) {
                    Camera2Impl.this.resetParamsForFlash(true);
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureProgressed(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull CaptureRequest captureRequest, @NonNull CaptureResult captureResult) {
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
                if (Camera2Impl.this.mTakePictureRequestTag.mbIsFlashRequired || Camera2Impl.this.needSetIZoomState(Camera2Impl.this.mTakePictureRequestTag)) {
                    synchronized (Camera2Impl.this.mSessionLock) {
                        if (Camera2Impl.this.mTakePictureRequestTag.mbIsFlashRequired) {
                            Camera2Impl.this.resetParamsForFlash(Camera2Impl.this.mFlashController.isAeTriggerStart());
                        }
                        if (Camera2Impl.this.needSetIZoomState(Camera2Impl.this.mTakePictureRequestTag)) {
                            Camera2Impl.this.setIZoomEnable(false, null);
                        }
                    }
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureSequenceAborted(@NonNull CameraCaptureSession cameraCaptureSession, int i) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onPictureCaptureSequenceAborted(i);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureBufferLost(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull CaptureRequest captureRequest, @NonNull Surface surface, long j) {
            Camera2Impl.this.mCameraPictureCallbackAdapter.onPictureCaptureBufferLost(captureRequest, surface, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFrontCamera() {
        return this.mCameraType.equals("front_main");
    }

    private boolean isRearMainCamera() {
        return this.mCameraType.equals("rear_main");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lockAeStateForPreCapture() throws CameraAccessException {
        CameraUnitLog.d(TAG, "lockAeStateForPreCapture, start");
        if (this.mbAeAfLocked || this.mPreviewBuilder == null) {
            return;
        }
        if (!Util.isQcomPlatform()) {
            try {
                this.mPreviewBuilder.set(CameraMetadataKey.KEY_AE_LOCK_BY_TOUCH, 0);
            } catch (Exception e) {
                CameraUnitLog.e(TAG, "lockAeStateForPreCapture, error mgs: " + e.getMessage());
            }
        }
        if (this.mPreviewBuilder != null) {
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.TRUE);
        }
        requestRepeating(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAutoFocusCancelCaptureRequest() throws CameraAccessException, IllegalStateException {
        CameraUnitLog.d(TAG, "sendAutoFocusCancelCaptureRequest, start");
        if (this.mPreviewBuilder != null) {
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            this.mCaptureSession.capture(this.mPreviewBuilder.build(), this.mPreviewCallback, null);
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
            requestRepeating(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetParamsForFlash(boolean z) {
        CameraUnitLog.d(TAG, "resetParamsForFlash, start cancelAETrigger: " + z);
        this.mFlashController.resetState();
        if (this.mPreviewBuilder == null) {
            return;
        }
        if (z) {
            try {
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 2);
                if (!this.mbAeAfLocked && !isFrontCamera()) {
                    this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
                }
                this.mCaptureSession.capture(this.mPreviewBuilder.build(), this.mPreviewCallback, null);
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 0);
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
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
            return "on".equals(this.mFlashMode) || ("auto".equals(this.mFlashMode) && this.mbNeedAutoFlash);
        }
        return false;
    }

    private void triggerAeAfForFlash(Handler handler) {
        CameraUnitLog.d(TAG, "triggerAeAfForFlash, start");
        if (this.mPreviewBuilder == null) {
            return;
        }
        try {
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
            if (this.mFocusMode != null && this.mFocusMode.intValue() != 1 && !isFrontCamera() && !this.mbAeAfLocked && !((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_TORCH_FLASH, false)).booleanValue()) {
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
            }
            this.mCaptureSession.capture(this.mPreviewBuilder.build(), this.mPreviewCallback, handler);
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 0);
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
        } catch (CameraAccessException | IllegalStateException e) {
            CameraUnitLog.e(TAG, "triggerAeAfForFlash", e);
        }
    }

    private boolean checkAeAfState(@NonNull CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        CameraUnitLog.d(TAG, "checkAeAfState, start");
        if (!isFlashRequired(cameraRequestTag) || this.mFlashController == null || this.mFlashController.isAeConverged() || this.mbAeAfLocked) {
            return true;
        }
        CameraUnitLog.d(TAG, "checkAeAfState, mbAeAfLocked: " + this.mbAeAfLocked);
        if (isFrontCamera() || this.mbSupportTorchFlash) {
            setFlashMode("torch", this.mPreviewBuilder, false);
            updateProTorchMode(1);
            requestRepeating(handler);
        }
        cameraRequestTag.mbIsFlashRequired = true;
        parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_BRACKET_MODE, (Parameter.Key<int[]>) new int[]{0});
        this.mFlashController.setNeedCapture(true);
        this.mFlashController.setCurrentState(0);
        triggerAeAfForFlash(handler);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIZoomEnable(boolean z, Handler handler) {
        if (this.mPreviewBuilder != null) {
            try {
                this.mPreviewBuilder.set(CameraMetadataKey.KEY_IZOOM_PREVIEW, new int[]{z ? 1 : 0});
                requestRepeating(handler);
                CameraUnitLog.d(TAG, "setIZoomPreviewState, enable: " + z);
            } catch (IllegalArgumentException unused) {
                CameraUnitLog.e(TAG, "setIZoomPreviewState, failed");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needSetIZoomState(@NonNull CameraRequestTag cameraRequestTag) {
        return !((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_IZOOM_PREVIEW_ENABLE, false)).booleanValue() && Util.isQcomPlatform() && 4 == cameraRequestTag.mSupportCaptureZoomFeature;
    }

    private void lockAe(boolean z) {
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.valueOf(z));
        this.mbAeAfLocked = z;
    }

    private void lockAwb(boolean z) {
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(z));
    }

    private void updateProTorchMode(int i) {
        CameraUnitLog.d(TAG, "updateProTorchMode, value: " + i);
        Parameter build = new PreviewParameter.Builder().build();
        build.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_PRO_TORCH_MODE, (Parameter.Key<int[]>) new int[]{i});
        build.update(this.mPreviewBuilder, 1);
    }

    private void setFlashMode(String str, CaptureRequest.Builder builder, boolean z) {
        CameraUnitLog.d(TAG, "setFlashMode, value: " + str);
        if (str == null || this.mbWaitingAeAfConverge) {
            return;
        }
        if (z) {
            this.mFlashMode = str;
        }
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != 3551) {
            if (hashCode != 109935) {
                if (hashCode != 3005871) {
                    if (hashCode == 110547964 && str.equals("torch")) {
                        c = 3;
                    }
                } else if (str.equals("auto")) {
                    c = 2;
                }
            } else if (str.equals("off")) {
                c = 1;
            }
        } else if (str.equals("on")) {
            c = 0;
        }
        switch (c) {
            case 0:
                builder.set(CaptureRequest.FLASH_MODE, 1);
                builder.set(CaptureRequest.CONTROL_AE_MODE, 3);
                return;
            case 1:
                builder.set(CaptureRequest.FLASH_MODE, 0);
                builder.set(CaptureRequest.CONTROL_AE_MODE, 1);
                return;
            case 2:
                builder.set(CaptureRequest.FLASH_MODE, 1);
                builder.set(CaptureRequest.CONTROL_AE_MODE, 2);
                return;
            case 3:
                builder.set(CaptureRequest.FLASH_MODE, 2);
                builder.set(CaptureRequest.CONTROL_AE_MODE, 1);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseBlocks() {
        this.mDeviceVariable.open();
        this.mSessionVariable.open();
        this.mRepeatingVariable.open();
    }

    private void setFocusMode(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler, Size size, Collection<Surface> collection) {
        int intValue = ((Integer) parameter.get(PreviewParameter.KEY_FOCUS_MODE)).intValue();
        RectF rectF = (RectF) parameter.get(PreviewParameter.KEY_AF_REGIONS);
        RectF rectF2 = (RectF) parameter.get(PreviewParameter.KEY_AE_REGIONS);
        Integer num = this.mFocusMode;
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
        if (3 == intValue) {
            autoFocus(cameraRequestTag, rectF, rectF2, handler, size, collection, parameter);
            this.mAfRegion = rectF;
        } else if (1 != intValue && 2 != intValue) {
            if (4 == intValue) {
                lockFocus();
                this.mAfRegion = null;
            } else if (intValue == 0) {
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 0);
            }
        } else if (!Util.isSystemCamera()) {
            MeteringRectangle[] meteringRectangleArr = (MeteringRectangle[]) this.mPreviewBuilder.get(CaptureRequest.CONTROL_AF_REGIONS);
            if (meteringRectangleArr == null || meteringRectangleArr.length <= 0) {
                return;
            }
            if (meteringRectangleArr[0].getX() == 0 && meteringRectangleArr[0].getY() == 0 && meteringRectangleArr[0].getWidth() == 0 && meteringRectangleArr[0].getHeight() == 0) {
                return;
            }
            cancelAutoFocus(cameraRequestTag, intValue, handler, collection, parameter);
        } else if (num != null && 4 != num.intValue() && 3 != num.intValue()) {
            cancelAutoFocus(cameraRequestTag, intValue, handler, collection, parameter);
        } else if (1 == intValue) {
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 4);
        } else if (2 == intValue) {
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
        }
    }

    private void autoFocus(CameraRequestTag cameraRequestTag, RectF rectF, RectF rectF2, Handler handler, Size size, @NonNull Collection<Surface> collection, @NonNull Parameter parameter) {
        CameraUnitLog.v(TAG, "autoFocus, afRect: " + rectF + ", aeRect: " + rectF2 + ", mAfRegion: " + this.mAfRegion);
        if ((rectF == null && rectF2 == null) || size == null) {
            return;
        }
        try {
            CameraCharacteristicsWrapper cameraCharacteristicsWrapper = CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(this.mCameraType);
            if (cameraCharacteristicsWrapper == null) {
                CameraUnitLog.e(TAG, "autoFocus, characteristics or previewSize is null");
            } else if (this.mCameraDevice == null) {
                CameraUnitLog.e(TAG, "autoFocus, camera already closed.");
            } else {
                CaptureRequest.Builder createCaptureRequest = this.mCameraDevice.createCaptureRequest(this.mSessionEntity.getTemplate());
                for (Surface surface : collection) {
                    createCaptureRequest.addTarget(surface);
                }
                float f = cameraRequestTag == null ? 1.0f : cameraRequestTag.mZoomRatio;
                Rect cropRegionForZoom = Util.getCropRegionForZoom(Float.valueOf(f), this.mCameraType);
                int intValue = ((Integer) cameraCharacteristicsWrapper.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
                MeteringRectangle[] defaultWeightRegion = AEAFHelp.getDefaultWeightRegion();
                Rect rect = defaultWeightRegion[0].getRect();
                if (rectF2 != null) {
                    rect = AEAFHelp.calculateTapArea(rectF2, size, intValue, cropRegionForZoom);
                    if (f >= ZOOM_ONE) {
                        defaultWeightRegion = new MeteringRectangle[]{new MeteringRectangle(rect, AEAFHelp.getExposureMeteringWeight())};
                    }
                }
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_MODE, 1);
                int i = (f > ZOOM_ONE ? 1 : (f == ZOOM_ONE ? 0 : -1));
                if (i < 0) {
                    parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_AE_REGION, (Parameter.Key<int[]>) new CameraMeteringRectangle(rect, AEAFHelp.getExposureMeteringWeight()).getValue());
                } else {
                    createCaptureRequest.set(CaptureRequest.CONTROL_AE_REGIONS, defaultWeightRegion);
                    this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_REGIONS, defaultWeightRegion);
                }
                if (rectF != null) {
                    if (AEAFHelp.getDefaultFocusArea().equals(rectF)) {
                        MeteringRectangle[] defaultWeightRegion2 = AEAFHelp.getDefaultWeightRegion();
                        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 1);
                        parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_AF_REGION, (Parameter.Key<int[]>) new CameraMeteringRectangle(defaultWeightRegion2[0]).getValue());
                        createCaptureRequest.set(CaptureRequest.CONTROL_AF_REGIONS, defaultWeightRegion2);
                        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_REGIONS, defaultWeightRegion2);
                    } else {
                        Rect calculateTapArea = AEAFHelp.calculateTapArea(rectF, size, intValue, cropRegionForZoom);
                        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 1);
                        if (i < 0) {
                            parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_AF_REGION, (Parameter.Key<int[]>) new CameraMeteringRectangle(calculateTapArea, AEAFHelp.getFocusMeteringWeight()).getValue());
                        } else {
                            MeteringRectangle[] meteringRectangleArr = {new MeteringRectangle(calculateTapArea, AEAFHelp.getFocusMeteringWeight())};
                            createCaptureRequest.set(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr);
                            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr);
                        }
                    }
                    if (rectF.equals(this.mAfRegion)) {
                        return;
                    }
                    parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AF_REGIONS, (CaptureRequest.Key) createCaptureRequest.get(CaptureRequest.CONTROL_AF_REGIONS));
                    parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_REGIONS, (CaptureRequest.Key) createCaptureRequest.get(CaptureRequest.CONTROL_AE_REGIONS));
                    parameter.update(createCaptureRequest, 4);
                    createCaptureRequest.setTag(cameraRequestTag);
                    setFlashMode(this.mFlashMode, createCaptureRequest, true);
                    setZoomRatio(createCaptureRequest, f);
                    createCaptureRequest.set(CaptureRequest.CONTROL_MODE, 1);
                    createCaptureRequest.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
                    createCaptureRequest.set(CaptureRequest.CONTROL_AF_MODE, 1);
                    requestCapture(createCaptureRequest, this.mPreviewCallback, handler);
                }
            }
        } catch (CameraAccessException e) {
            CameraUnitLog.e(TAG, "autoFocus", e);
        }
    }

    private void cancelAutoFocus(CameraRequestTag cameraRequestTag, int i, Handler handler, Collection<Surface> collection, Parameter parameter) {
        if (isFrontCamera() || this.mFlashController == null || !this.mFlashController.isAeTriggerStart()) {
            try {
                CaptureRequest.Builder createCaptureRequest = this.mCameraDevice.createCaptureRequest(this.mSessionEntity.getTemplate());
                for (Surface surface : collection) {
                    createCaptureRequest.addTarget(surface);
                }
                if (parameter != null) {
                    parameter.update(createCaptureRequest, 2);
                }
                setZoomRatio(createCaptureRequest, cameraRequestTag.mZoomRatio);
                createCaptureRequest.setTag(cameraRequestTag);
                createCaptureRequest.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
                setFlashMode((String) parameter.get(PreviewParameter.KEY_FLASH_MODE), createCaptureRequest, false);
                requestCapture(createCaptureRequest, this.mPreviewCallback, handler);
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_MODE, 1);
                if (1 == i) {
                    this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 4);
                } else if (2 == i) {
                    this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
                }
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_REGIONS, AEAFHelp.getDefaultWeightRegion());
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_REGIONS, AEAFHelp.getDefaultWeightRegion());
            } catch (CameraAccessException e) {
                CameraUnitLog.e(TAG, "cancelAutoFocus", e);
            }
        }
    }

    private void lockFocus() {
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_MODE, 1);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 1);
    }

    private CaptureRequest.Builder createVideoSnapshotBuilder() {
        CaptureRequest.Builder builder;
        try {
            builder = this.mCameraDevice.createCaptureRequest(4);
        } catch (CameraAccessException e) {
            e = e;
            builder = null;
        }
        try {
            builder.setTag(this.mTakePictureRequestTag);
        } catch (CameraAccessException e2) {
            e = e2;
            CameraUnitLog.e(TAG, "createVideoSnapshotBuilder, e: " + e.getMessage());
            return builder;
        }
        return builder;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void videoSnapshot(@NonNull final CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        CameraUnitLog.d(TAG, "videoSnapshot");
        this.mTakePictureRequestTag = cameraRequestTag;
        this.mTakePictureParameter = parameter;
        this.mTakePictureCallbackHandler = handler;
        if (!cameraRequestTag.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag, Parameter.ParameterStage.BEFORE_TAKE_PICTURE, 35)) {
            handler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.6
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraPictureCallbackAdapter) cameraRequestTag.mCallback).onCaptureFailed((CaptureRequest) null, (CameraPictureCallbackAdapter.PictureResult) null);
                }
            });
            return;
        }
        CaptureRequest.Builder createVideoSnapshotBuilder = createVideoSnapshotBuilder();
        if (createVideoSnapshotBuilder != null) {
            for (SurfaceKey surfaceKey : cameraRequestTag.mAddTargetSurfaces.keySet()) {
                SurfaceWrapper findWrapper = findWrapper(surfaceKey.getUsage(), surfaceKey.getCameraType(), surfaceKey.getFormat());
                if (findWrapper != null) {
                    CameraUnitLog.d(TAG, "videoSnapshot, add surface wrapper: " + findWrapper);
                    createVideoSnapshotBuilder.addTarget(this.mOutputConfigurationMap.get(findWrapper).getSurface());
                }
            }
            if (parameter != null) {
                parameter.update(createVideoSnapshotBuilder, 2);
                addDefaultParameter(createVideoSnapshotBuilder, parameter);
                if (parameter.containCustomKey(PreviewParameter.KEY_FLASH_MODE)) {
                    setFlashMode((String) parameter.get(PreviewParameter.KEY_FLASH_MODE), createVideoSnapshotBuilder, false);
                }
                if (parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
                    setZoomRatio(createVideoSnapshotBuilder, ((Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue());
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

    /* JADX WARN: Removed duplicated region for block: B:233:0x05e9 A[Catch: Exception -> 0x0674, TryCatch #5 {Exception -> 0x0674, blocks: (B:9:0x004a, B:11:0x0056, B:13:0x005f, B:15:0x0066, B:32:0x0095, B:34:0x009a, B:36:0x00a0, B:38:0x00a6, B:41:0x00b9, B:42:0x00cd, B:44:0x00d4, B:46:0x00ec, B:49:0x010f, B:51:0x012a, B:53:0x0136, B:55:0x013c, B:60:0x014d, B:61:0x016b, B:63:0x016f, B:65:0x0177, B:67:0x017f, B:71:0x018e, B:75:0x01a1, B:79:0x01b4, B:83:0x01be, B:84:0x01d6, B:87:0x01e4, B:89:0x01e9, B:96:0x01f8, B:97:0x022d, B:99:0x0236, B:100:0x0239, B:102:0x024e, B:104:0x025a, B:106:0x0262, B:108:0x026a, B:110:0x026e, B:113:0x027c, B:115:0x0284, B:116:0x0293, B:118:0x029f, B:120:0x02a7, B:122:0x02ab, B:124:0x02b1, B:135:0x031d, B:137:0x036d, B:138:0x0377, B:144:0x038c, B:134:0x0312, B:133:0x02ec, B:145:0x03a6, B:147:0x03aa, B:149:0x03af, B:150:0x03bc, B:152:0x03c0, B:154:0x03c5, B:155:0x03d2, B:157:0x0413, B:159:0x0417, B:161:0x041b, B:163:0x0423, B:165:0x0427, B:167:0x042b, B:169:0x0430, B:171:0x0436, B:173:0x0474, B:175:0x0493, B:177:0x049b, B:178:0x04aa, B:180:0x04b2, B:181:0x04c1, B:182:0x04cc, B:172:0x0459, B:183:0x04f4, B:185:0x04fa, B:215:0x055f, B:222:0x058d, B:224:0x05a2, B:226:0x05ac, B:228:0x05c4, B:230:0x05d2, B:229:0x05cc, B:231:0x05db, B:233:0x05e9, B:235:0x05fa, B:236:0x0600, B:221:0x0573, B:213:0x0543, B:237:0x0604, B:239:0x0608, B:241:0x060c, B:242:0x062b, B:244:0x0647, B:245:0x064f, B:246:0x0656, B:248:0x065a, B:249:0x065f, B:252:0x0669, B:111:0x0274, B:112:0x0279, B:16:0x0069, B:18:0x006f, B:21:0x0075, B:23:0x007b, B:25:0x0081, B:27:0x008b, B:140:0x037f, B:126:0x02b5, B:128:0x02b9, B:129:0x02cf, B:217:0x0565), top: B:267:0x004a, inners: #3, #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0565 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0600 A[SYNTHETIC] */
    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void takePicture(@androidx.annotation.NonNull final com.oplus.ocs.camera.common.util.CameraRequestTag r18, com.oplus.ocs.camera.common.parameter.Parameter r19, android.os.Handler r20) {
        /*
            Method dump skipped, instructions count: 1662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.device.Camera2Impl.takePicture(com.oplus.ocs.camera.common.util.CameraRequestTag, com.oplus.ocs.camera.common.parameter.Parameter, android.os.Handler):void");
    }

    private void processMTKCaptureRequest(CaptureRequest.Builder builder, CameraRequestTag cameraRequestTag, Parameter parameter) {
        if (builder != null) {
            builder.set(CameraMetadataKey.KEY_MTK_TUNING_DATA_REQUEST, cameraRequestTag.getRequestMode() == CameraRequestTag.RequestMode.CAPTURE_RAW ? MTK_TUNING_REQUEST_RAW : MTK_TUNING_REQUEST_YUV);
            if (32 == cameraRequestTag.mRequestFormat) {
                builder.set(CameraMetadataKey.KEY_MTK_CAPTURE_PROCESS_RAW_ENABLE, 1);
                builder.set(CameraMetadataKey.KEY_MTK_CAPTURE_RAW_BITS_PER_PIXEL, new int[]{12});
            } else if (34 == cameraRequestTag.mRequestFormat) {
                builder.set(CameraMetadataKey.KEY_MTK_CAPTURE_PRIVATE_RAW_ENABLE, new int[]{1});
            } else if (37 == cameraRequestTag.mRequestFormat) {
                builder.set(CameraMetadataKey.KEY_MTK_CAPTURE_PROCESS_RAW_ENABLE, 1);
                builder.set(CameraMetadataKey.KEY_MTK_CAPTURE_RAW_BITS_PER_PIXEL, new int[]{10});
            } else if (36 == cameraRequestTag.mRequestFormat) {
                builder.set(CameraMetadataKey.KEY_MTK_CAPTURE_PROCESS_RAW_ENABLE, 0);
                builder.set(CameraMetadataKey.KEY_MTK_CAPTURE_RAW_BITS_PER_PIXEL, new int[]{12});
            }
            if (cameraRequestTag.mbBurstShot) {
                try {
                    builder.set(CameraMetadataKey.KEY_REQUEST_CSHOT_ENABLE, new int[]{1});
                    builder.set(CameraMetadataKey.KEY_REQUEST_EARLY_NOTIFY, new int[]{1});
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            byte[] bArr = (byte[]) builder.get(CameraMetadataKey.KEY_MTK_REQUEST_ZSL_MODE);
            if (bArr != null && bArr.length > 0) {
                builder.set(CaptureRequest.CONTROL_ENABLE_ZSL, Boolean.valueOf(1 == bArr[0]));
            }
            if (cameraRequestTag.mbHdrTrigger && "auto".equals(cameraRequestTag.mHdrMode)) {
                int[] iArr = (int[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(this.mCameraType).get(CameraCharacteristicsWrapper.KEY_MSNR_MOVE_RIGHT);
                if (iArr != null && iArr.length >= 1 && iArr[0] == 1) {
                    CameraUnitLog.i(TAG, "burstCapture, need to set msnr to 0");
                    cameraRequestTag.mbMsnrMoveRight = true;
                    builder.set(CameraMetadataKey.KEY_MTK_REQUEST_MSNR, 0);
                }
            } else {
                cameraRequestTag.mbMsnrMoveRight = false;
            }
            if (isSupportBss(cameraRequestTag)) {
                try {
                    builder.set(CameraMetadataKey.KEY_MTK_MFNR_DOZIP_WITH_BSS, 1);
                } catch (Exception e2) {
                    CameraUnitLog.e(TAG, "burstCapture, exception: " + e2.getMessage());
                }
            }
            if (this.mbMtkLowMemoryPlatform) {
                boolean z = cameraRequestTag.mbBurstShot;
            }
        }
    }

    private boolean isSupportBss(CameraRequestTag cameraRequestTag) {
        String[] strArr = cameraRequestTag.mApsAlgoFlags;
        if (strArr == null || strArr.length <= 0 || !cameraRequestTag.mbSupportQuickJpeg) {
            return false;
        }
        return ParameterKeys.ALGO_NAME_MFNR.equals(strArr[0]) || ParameterKeys.ALGO_NAME_AINR.equals(strArr[0]) || ParameterKeys.ALGO_NAME_AIHDR.equals(strArr[0]);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void abortCaptures() {
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplAbortCaptures");
        if (this.mCaptureSession != null) {
            try {
                this.mCaptureSession.abortCaptures();
            } catch (CameraAccessException | IllegalStateException e) {
                e.printStackTrace();
            }
        }
        CameraUnitLog.traceEndSection("CameraUnitCamera2ImplAbortCaptures");
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x01c2, code lost:
        if (r8.mImageWriter != null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01db, code lost:
        if (r8.mImageWriter != null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e7, code lost:
        if (r8.mImageWriter == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01e9, code lost:
        r8.mImageWriter.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01ee, code lost:
        com.oplus.ocs.camera.common.util.CameraUnitLog.traceEndSection("CameraUnitCamera2ImplReprocessImage");
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01f3, code lost:
        return;
     */
    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void reprocessImage(android.media.Image r9, android.hardware.camera2.TotalCaptureResult r10, android.graphics.Rect r11, final com.oplus.ocs.camera.common.util.CameraRequestTag r12, com.oplus.ocs.camera.common.parameter.Parameter r13, android.os.Handler r14) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.device.Camera2Impl.reprocessImage(android.media.Image, android.hardware.camera2.TotalCaptureResult, android.graphics.Rect, com.oplus.ocs.camera.common.util.CameraRequestTag, com.oplus.ocs.camera.common.parameter.Parameter, android.os.Handler):void");
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
        Rect rect4 = (Rect) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(this.mCameraType).get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (rect2 == null || rect4 == null) {
            f = 1.0f;
            f2 = 1.0f;
        } else {
            f = rect2.width() / rect4.width();
            f2 = rect2.height() / rect4.height();
        }
        int width = (int) ((rect.width() * (ZOOM_ONE - f)) / 2.0f);
        int height = (int) ((rect.height() * (ZOOM_ONE - f2)) / 2.0f);
        rect3.set(rect.left + width, rect.top + height, rect.right - width, rect.bottom - height);
        CameraUnitLog.v(TAG, "getZoomCropFormRegion, newCropRegion: " + rect3 + ", zoomCropRegion: " + rect2 + ", activeRegion: " + rect4 + ", cropRect: " + rect);
        return rect3;
    }

    private Rect calculateCropRect(Rect rect) {
        if (isRearMainCamera()) {
            Size[] sizeArr = (Size[]) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_BACK_NIGHT_RAW_PICTURE_SIZE, null);
            Size size = (sizeArr == null || sizeArr.length == 0) ? null : sizeArr[0];
            Rect rect2 = (Rect) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(this.mCameraType).get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
            if (rect2 != null && rect != null && rect.width() > 0 && rect.height() > 0 && size != null) {
                if (size.getWidth() != rect.width() || size.getHeight() != rect.height()) {
                    float width = rect2.width() / (size.getWidth() * ZOOM_ONE);
                    float height = rect2.height() / (size.getHeight() * ZOOM_ONE);
                    Rect rect3 = new Rect();
                    rect3.set((int) (rect.left * width), (int) (rect.top * height), (int) (rect.right * width), (int) (rect.bottom * height));
                    CameraUnitLog.v(TAG, "calculateCropRect, newCropRect: (" + rect3.left + ", " + rect3.top + ", " + rect3.right + ", " + rect3.bottom + "), scaleW: " + width + ", scaleH: " + height);
                    return rect3;
                }
                CameraUnitLog.v(TAG, "calculateCropRect, not need cropRect");
                return null;
            }
        }
        return rect;
    }

    private void setZoomRatio(CaptureRequest.Builder builder, float f) {
        setZoomRatio(builder, f, Util.getCropRegionForZoom(Float.valueOf(f), this.mCameraType));
    }

    @SuppressLint({"NewApi"})
    private void setZoomRatio(CaptureRequest.Builder builder, float f, Rect rect) {
        Boolean bool = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SAT_NEED_SET_ZOOMRATIO, false);
        Boolean bool2 = (Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_NEED_SET_ZOOMRATIO, false);
        CameraUnitLog.v(TAG, "setZoomRatio, zoomRatio: " + f + ", cropRegion: " + rect + ", isSatNeedSetZoomRatio: " + bool + ", isNeedSetZoomRatio: " + bool2);
        if (bool.booleanValue() || bool2.booleanValue()) {
            builder.set(CaptureRequest.CONTROL_ZOOM_RATIO, Float.valueOf(f));
        } else {
            builder.set(CaptureRequest.SCALER_CROP_REGION, rect);
        }
    }

    private void addDefaultParameter(CaptureRequest.Builder builder, Parameter parameter) {
        if (!parameter.containAndroidKey(CaptureRequest.JPEG_QUALITY)) {
            builder.set(CaptureRequest.JPEG_QUALITY, (byte) 95);
        }
        if (parameter.containAndroidKey(CaptureRequest.JPEG_ORIENTATION)) {
            return;
        }
        builder.set(CaptureRequest.JPEG_ORIENTATION, 90);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void startRecording(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        try {
            CameraUnitLog.v(TAG, "startRecording");
            if (!this.mbQcomHighFrameRate || cameraRequestTag.mbNormalVideoHFR) {
                cameraRequestTag.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag, Parameter.ParameterStage.START_RECORDING, 35);
                for (SurfaceWrapper surfaceWrapper : findWrappers(CameraSessionEntity.SurfaceUsage.RECORDING)) {
                    this.mPreviewBuilder.addTarget(this.mOutputConfigurationMap.get(surfaceWrapper).getSurface());
                }
            }
            if (parameter != null) {
                parameter.update(this.mPreviewBuilder, 1);
            }
            requestRepeating(handler);
            this.mRecordingTag = cameraRequestTag;
            this.mCameraRecordingCallbackAdapter.onRecordingResult(new CameraRecordingCallbackAdapter.RecordingResult(1, (CameraRequestTag) this.mRecordingTag));
        } catch (IllegalStateException e) {
            CameraUnitLog.e(TAG, "startRecording failed", e);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void resumeRecording(Parameter parameter, Handler handler) {
        CameraUnitLog.v(TAG, "resumeRecording");
        this.mCameraRecordingCallbackAdapter.onRecordingResult(new CameraRecordingCallbackAdapter.RecordingResult(3, (CameraRequestTag) this.mRecordingTag));
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void pauseRecording(Parameter parameter, Handler handler) {
        CameraUnitLog.v(TAG, "pauseRecording");
        this.mCameraRecordingCallbackAdapter.onRecordingResult(new CameraRecordingCallbackAdapter.RecordingResult(2, (CameraRequestTag) this.mRecordingTag));
    }

    private void endOfStream(Parameter parameter, Handler handler) {
        CameraUnitLog.v(TAG, "endOfStream, start");
        try {
            CaptureRequest.Builder createCaptureRequest = this.mCameraDevice.createCaptureRequest(this.mSessionEntity.getTemplate());
            for (SurfaceWrapper surfaceWrapper : findWrappers(CameraSessionEntity.SurfaceUsage.RECORDING)) {
                createCaptureRequest.addTarget(this.mOutputConfigurationMap.get(surfaceWrapper).getSurface());
            }
            for (SurfaceWrapper surfaceWrapper2 : findWrappers(CameraSessionEntity.SurfaceUsage.PREVIEW)) {
                createCaptureRequest.addTarget(this.mOutputConfigurationMap.get(surfaceWrapper2).getSurface());
            }
            parameter.update(createCaptureRequest, 1);
            setFlashMode(this.mFlashMode, createCaptureRequest, true);
            if (parameter != null && parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
                float floatValue = ((Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue();
                setZoomRatio(createCaptureRequest, floatValue);
                StatisticsManager.getInstance().setZoomValue(String.valueOf(floatValue));
            }
            final ConditionVariable conditionVariable = new ConditionVariable();
            requestCapture(createCaptureRequest, new CameraCaptureSession.CaptureCallback() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.9
                @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                    conditionVariable.open();
                    CameraUnitLog.d(Camera2Impl.TAG, "endOfStream, onCaptureCompleted");
                }

                @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
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
                if (!"front_main".equals(this.mCameraType) && Util.isQcomPlatform()) {
                    if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_STOP_REPEATING_BEFORE_END_OF_STREAM, true)).booleanValue()) {
                        this.mCaptureSession.stopRepeating();
                    }
                    if (parameter.containCustomKey(PreviewParameter.KEY_END_OF_STREAM) && ((byte[]) parameter.get(PreviewParameter.KEY_END_OF_STREAM))[0] == 1) {
                        endOfStream(parameter, handler);
                        parameter.set((Parameter.Key<Parameter.Key<byte[]>>) PreviewParameter.KEY_END_OF_STREAM, (Parameter.Key<byte[]>) new byte[]{0});
                    }
                }
                parameter.update(this.mPreviewBuilder, 1);
                if (parameter.containCustomKey(PreviewParameter.KEY_END_OF_STREAM)) {
                    parameter.remove(PreviewParameter.KEY_END_OF_STREAM);
                }
            }
            if (this.mRecordingTag != null) {
                z = ((CameraRequestTag) this.mRecordingTag).mbNormalVideoHFR;
            }
            if (!this.mbQcomHighFrameRate || z) {
                for (SurfaceWrapper surfaceWrapper : findWrappers(CameraSessionEntity.SurfaceUsage.RECORDING)) {
                    this.mPreviewBuilder.removeTarget(this.mOutputConfigurationMap.get(surfaceWrapper).getSurface());
                }
            }
            requestRepeating(handler);
            this.mCameraRecordingCallbackAdapter.onRecordingResult(new CameraRecordingCallbackAdapter.RecordingResult(4, (CameraRequestTag) this.mRecordingTag));
            this.mRecordingTag = null;
        } catch (CameraAccessException | IllegalStateException e) {
            CameraUnitLog.e(TAG, "stopRecording", e.getCause());
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public int getLogicId() {
        if (this.mCameraDevice == null) {
            return -1;
        }
        return Integer.parseInt(this.mCameraDevice.getId());
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    @SuppressLint({"MissingPermission"})
    public void openCameraDevice(int i, Handler handler) throws CameraAccessException, SecurityException {
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplOpenCameraDevice");
        CameraManager cameraManager = (CameraManager) ContextHolder.getContext().getSystemService("camera");
        if (cameraManager == null) {
            return;
        }
        CameraUnitLog.e(TAG, "openCameraDevice, cameraId: " + i);
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
        if (this.mCameraDevice != null) {
            CameraUnitLog.e(TAG, "closeCameraDevice");
            this.mDeviceVariable.close();
            this.mCameraDevice.close();
            this.mDeviceVariable.block();
        }
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
    public void createNewSession(CameraSessionEntity cameraSessionEntity, Parameter parameter, final Handler handler) throws Exception {
        OutputConfiguration outputConfiguration;
        SurfaceWrapper cameraMetadataSurface;
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplCreateSession");
        this.mFocusMode = 4;
        this.mRecordingTag = null;
        closeAllImageReader();
        LinkedList<SurfaceWrapper> allSurfaceWrapper = cameraSessionEntity.getAllSurfaceWrapper();
        boolean useMetadataSurface = cameraSessionEntity.getUseMetadataSurface();
        CameraUnitLog.i(TAG, "createNewSession, surfaceWrapperList: " + allSurfaceWrapper + " useMetaSurface: " + useMetadataSurface);
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
            if (CameraSessionEntity.SurfaceUsage.PREVIEW.equals(surfaceUsage)) {
                if (next.getSurface() != null) {
                    CameraUnitLog.d(TAG, "createNewSession, wrapper Surface is: " + next.getSurface());
                    outputConfiguration = new OutputConfiguration(next.getSurface());
                } else {
                    CameraUnitLog.d(TAG, "createNewSession, wrapper Surface is null, " + halSurfaceSize + ", surfaceType: " + next.getSurfaceType());
                    outputConfiguration = new OutputConfiguration(halSurfaceSize, SurfaceWrapper.getSurfaceClass(next.getSurfaceType()));
                }
            } else if (CameraSessionEntity.SurfaceUsage.REPROCESS.equals(surfaceUsage)) {
                inputConfiguration = new InputConfiguration(halSurfaceSize.getWidth(), halSurfaceSize.getHeight(), next.getFormat());
                outputConfiguration = null;
            } else {
                outputConfiguration = new OutputConfiguration(next.getSurface());
            }
            CameraUnitLog.i(TAG, "createNewSession, wrapper.getSurface(): " + next.getSurface());
            if (-1 != next.getPhysicalCameraId()) {
                outputConfiguration.setPhysicalCameraId(String.valueOf(next.getPhysicalCameraId()));
            }
            if (outputConfiguration != null) {
                this.mOutputConfigurationMap.put(next, outputConfiguration);
            }
        }
        this.mbQcomHighFrameRate = 1 == cameraSessionEntity.getOperationMode();
        SessionConfiguration sessionConfiguration = new SessionConfiguration(cameraSessionEntity.getOperationMode(), new ArrayList(this.mOutputConfigurationMap.values()), new Executor() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.10
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, this.mSessionStateCallback);
        if (inputConfiguration != null) {
            sessionConfiguration.setInputConfiguration(inputConfiguration);
        }
        this.mPreviewBuilder = this.mCameraDevice.createCaptureRequest(cameraSessionEntity.getTemplate());
        if (this.mbQcomHighFrameRate && (parameter == null || !parameter.containAndroidKey(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE))) {
            throw new IllegalArgumentException("Invalid parameter, the slow video mode must have fps.");
        }
        if (parameter != null) {
            parameter.update(this.mPreviewBuilder, 3);
        }
        Util.dumpAvailableSessionKeys(this.mCameraType);
        sessionConfiguration.setSessionParameters(this.mPreviewBuilder.build());
        StatisticsManager.getInstance().setModeName(this.mSessionEntity.getConfig().getModeName());
        this.mSessionVariable.close();
        Util.dumpSessionConfig(sessionConfiguration, allSurfaceWrapper, this.mCameraDevice.getId());
        CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.createCaptureSession");
        this.mCameraDevice.createCaptureSession(sessionConfiguration);
        CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.createCaptureSession");
        CameraUnitLog.traceEndSection("CameraUnitCamera2ImplCreateSession");
        this.mSessionVariable.block();
        if (parameter.containCustomKey(ConfigureParameter.KEY_TORCH_FLASH_ENABLE)) {
            this.mbSupportTorchFlash = "on".equals(parameter.get(ConfigureParameter.KEY_TORCH_FLASH_ENABLE));
            this.mFlashController.setTorchFlash(this.mbSupportTorchFlash);
        }
        this.mFlashController.setSupportWaitAf(((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_TRIGGER_FLASH_WAIT_AF, false)).booleanValue());
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void closeOldSession() {
        CameraUnitLog.e(TAG, "closeOldSession");
        synchronized (this.mSessionLock) {
            this.mFlashController.resetState();
            this.mbAeAfLocked = false;
            this.mAfRegion = null;
            if (this.mCaptureSession != null) {
                this.mCaptureSession.close();
                this.mCaptureSession = null;
            }
            this.mPreviewBuilder = null;
        }
        if (this.mSessionSurfaceWrapperList != null) {
            Iterator<SurfaceWrapper> it = this.mSessionSurfaceWrapperList.iterator();
            while (it.hasNext()) {
                SurfaceWrapper next = it.next();
                ImageReader imageReader = SurfacePool.getInstance().getImageReader(new SurfaceKey(next.getCameraType(), next.getSurfaceUsage(), next.getFormat()));
                if (next.getSurface() != null && next.getSurfaceUsage() != CameraSessionEntity.SurfaceUsage.RECORDING) {
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
        if (this.mSessionSurfaceWrapperList != null) {
            Iterator<SurfaceWrapper> it = this.mSessionSurfaceWrapperList.iterator();
            while (it.hasNext()) {
                SurfaceWrapper next = it.next();
                SurfacePool.getInstance().closeImageReader(new SurfaceKey(next.getCameraType(), next.getSurfaceUsage(), next.getFormat()));
            }
            this.mSessionSurfaceWrapperList = null;
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public boolean startPreview(CameraRequestTag cameraRequestTag, Parameter parameter, Handler handler) {
        boolean z;
        boolean z2;
        Throwable th;
        Long l;
        CameraUnitLog.e(TAG, "startPreview, parameter: " + parameter + ", tag: " + cameraRequestTag + ", mbFirstMetaArrived: " + this.mbFirstMetaArrived + ", tag hashCode: " + cameraRequestTag.hashCode());
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplStartPreview");
        if (parameter != null) {
            parameter.update(this.mPreviewBuilder, 1);
            if (parameter.containCustomKey(PreviewParameter.KEY_BURST_SHOT_ENABLE)) {
                this.mbContinueShot = "on".equals(parameter.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));
            }
            if (parameter.get(CaptureRequest.JPEG_ORIENTATION) != null) {
                this.mSessionEntity.getApsTag().mJpegOrientation = ((Integer) parameter.get(CaptureRequest.JPEG_ORIENTATION)).intValue();
            }
            Boolean bool = (Boolean) parameter.get(CaptureRequest.CONTROL_AE_LOCK);
            this.mbAeAfLocked = bool != null && bool.booleanValue();
        }
        if (cameraRequestTag != null) {
            cameraRequestTag.mHalCallbackHandler = handler;
            boolean linkSurfaceToConsumer = cameraRequestTag.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag, Parameter.ParameterStage.START_PREVIEW, 35);
            if (!linkSurfaceToConsumer) {
                CameraUnitLog.e(TAG, "startPreview, linkToObserver return failed!");
                return false;
            }
            for (Map.Entry<SurfaceKey, Surface> entry : cameraRequestTag.mRemoveTargetSurfaces.entrySet()) {
                SurfaceWrapper findWrapper = findWrapper(entry.getKey().getUsage(), entry.getKey().getCameraType(), entry.getKey().getFormat());
                if (findWrapper != null) {
                    this.mPreviewBuilder.removeTarget(this.mOutputConfigurationMap.get(findWrapper).getSurface());
                }
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (this.mbQcomHighFrameRate && !cameraRequestTag.mbNormalVideoHFR) {
                for (SurfaceWrapper surfaceWrapper : findWrappers(CameraSessionEntity.SurfaceUsage.RECORDING)) {
                    Surface surface = this.mOutputConfigurationMap.get(surfaceWrapper).getSurface();
                    if (surface != null) {
                        this.mPreviewBuilder.addTarget(surface);
                        arrayList2.add(surface);
                    }
                    if (linkSlowVideoHfrImageReader(cameraRequestTag, surfaceWrapper, handler)) {
                        this.mSessionEntity.getApsTag().mSlowVideoHfrSurface = SurfacePool.getInstance().getVideoSurface();
                    }
                }
            }
            CameraUnitLog.d(TAG, "startPreview, tag.mTargetSurfaces: " + cameraRequestTag.mAddTargetSurfaces + ", linkMetaReader " + linkMetadataImageReader(handler));
            boolean z3 = false;
            Size size = null;
            for (Map.Entry<SurfaceKey, Surface> entry2 : cameraRequestTag.mAddTargetSurfaces.entrySet()) {
                SurfaceWrapper findWrapper2 = findWrapper(entry2.getKey().getUsage(), entry2.getKey().getCameraType(), entry2.getKey().getFormat());
                if (findWrapper2 != null) {
                    OutputConfiguration outputConfiguration = this.mOutputConfigurationMap.get(findWrapper2);
                    CameraUnitLog.v(TAG, "startPreview, entry key: " + entry2.getKey());
                    if (outputConfiguration != null) {
                        if (outputConfiguration.getSurface() == null) {
                            outputConfiguration.addSurface(findWrapper2.getSurface() != null ? findWrapper2.getSurface() : entry2.getValue());
                            arrayList.add(outputConfiguration);
                        }
                        this.mPreviewBuilder.addTarget(outputConfiguration.getSurface());
                        arrayList2.add(outputConfiguration.getSurface());
                        size = findWrapper2.getHalSurfaceSize();
                    }
                    z3 = true;
                }
            }
            if (arrayList.size() > 0) {
                try {
                    this.mCaptureSession.finalizeOutputConfigurations(arrayList);
                } catch (CameraAccessException | IllegalStateException e) {
                    CameraUnitLog.e(TAG, "startPreview", e);
                    return false;
                }
            }
            if (!z3 && Util.isSystemCamera()) {
                CameraUnitLog.e(TAG, "startPreview, has not add surface");
                return false;
            }
            this.mPreviewBuilder.setTag(cameraRequestTag);
            if (cameraRequestTag.mbStarburstEnable) {
                CameraUnitLog.e(TAG, "startPreview, init starburst info");
                try {
                    this.mPreviewBuilder.set(CameraMetadataKey.KEY_STARBURST_INFO, new float[CameraConstant.STARBURST_INFO_LENGTH]);
                } catch (Throwable th2) {
                    CameraUnitLog.e(TAG, "startPreview, starburst info is not supported, skip", th2);
                }
            }
            if (parameter != null) {
                if (parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
                    cameraRequestTag.mZoomRatio = ((Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue();
                    setZoomRatio(this.mPreviewBuilder, cameraRequestTag.mZoomRatio);
                    StatisticsManager.getInstance().setZoomValue(String.valueOf(cameraRequestTag.mZoomRatio));
                }
                if (parameter.containCustomKey(PreviewParameter.KEY_FOCUS_MODE)) {
                    if (this.mRecordingTag != null) {
                        for (SurfaceWrapper surfaceWrapper2 : findWrappers(CameraSessionEntity.SurfaceUsage.RECORDING)) {
                            arrayList2.add(this.mOutputConfigurationMap.get(surfaceWrapper2).getSurface());
                        }
                    }
                    setFocusMode(cameraRequestTag, parameter, handler, size, arrayList2);
                }
            }
            if ("professional_mode".equals(cameraRequestTag.mCaptureMode) && (l = (Long) this.mPreviewBuilder.get(CaptureRequest.SENSOR_EXPOSURE_TIME)) != null && 40000000 < l.longValue()) {
                CameraUnitLog.w(TAG, "startPreview, restrict exposure time to 40000000");
                this.mPreviewBuilder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, 40000000L);
            }
            z = linkSurfaceToConsumer;
        } else {
            z = true;
        }
        if (parameter != null && parameter.containCustomKey(PreviewParameter.KEY_FLASH_MODE)) {
            setFlashMode((String) parameter.get(PreviewParameter.KEY_FLASH_MODE), this.mPreviewBuilder, true);
        } else {
            this.mFlashMode = null;
        }
        CaptureRequest build = this.mPreviewBuilder.build();
        if (build.getTag() == null) {
            CameraUnitLog.d(TAG, "startPreview tag is null");
            return false;
        }
        try {
            ArrayList arrayList3 = new ArrayList();
            if (this.mbQcomHighFrameRate) {
                try {
                    arrayList3.addAll(((CameraConstrainedHighSpeedCaptureSession) this.mCaptureSession).createHighSpeedRequestList(build));
                } catch (CameraAccessException | IllegalStateException e2) {
                    th = e2;
                    z2 = false;
                    CameraUnitLog.e(TAG, "startPreview", th);
                    this.mRepeatingVariable.open();
                    z = z2;
                    CameraUnitLog.traceEndSection("CameraUnitCamera2ImplStartPreview");
                    return z;
                }
            } else {
                arrayList3.add(build);
            }
            if (!this.mbFirstMetaArrived && !arrayList3.isEmpty()) {
                this.mRepeatingVariable.close();
                try {
                    this.mFirstRequestHash = ((CaptureRequest) arrayList3.get(0)).hashCode();
                } catch (CameraAccessException | IllegalStateException e3) {
                    th = e3;
                    z2 = false;
                    CameraUnitLog.e(TAG, "startPreview", th);
                    this.mRepeatingVariable.open();
                    z = z2;
                    CameraUnitLog.traceEndSection("CameraUnitCamera2ImplStartPreview");
                    return z;
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
                try {
                    this.mbFlashAutoMode = false;
                } catch (CameraAccessException | IllegalStateException e4) {
                    e = e4;
                    th = e;
                    CameraUnitLog.e(TAG, "startPreview", th);
                    this.mRepeatingVariable.open();
                    z = z2;
                    CameraUnitLog.traceEndSection("CameraUnitCamera2ImplStartPreview");
                    return z;
                }
            }
            CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.setRepeatingRequest");
            this.mCaptureSession.setRepeatingBurst(arrayList3, this.mPreviewCallback, handler);
            CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.setRepeatingRequest");
            this.mbIsPreviewing.set(true);
            if (!this.mbFirstMetaArrived) {
                this.mRepeatingVariable.block();
            }
        } catch (CameraAccessException | IllegalStateException e5) {
            e = e5;
            z2 = false;
        }
        CameraUnitLog.traceEndSection("CameraUnitCamera2ImplStartPreview");
        return z;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void stopPreview(boolean z) {
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplStopPreview");
        try {
            CameraUnitLog.v(TAG, "stopPreview");
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
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2Interface
    public void beforeCloseSession() {
        CameraUnitLog.traceBeginSection("CameraUnitCamera2ImplBeforeCloseSession");
        if (this.mSessionSurfaceWrapperList != null) {
            this.mSessionSurfaceWrapperList.forEach(new Consumer() { // from class: com.oplus.ocs.camera.producer.device.-$$Lambda$Camera2Impl$yFmEqBLRxAx21rTWeVC0ACVFBzw
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
        if (CameraSessionEntity.SurfaceUsage.PREVIEW.equals(surfaceWrapper.getSurfaceUsage()) || CameraSessionEntity.SurfaceUsage.PREVIEW_FRAME.equals(surfaceWrapper.getSurfaceUsage())) {
            ImageReader imageReader = SurfacePool.getInstance().getImageReader(new SurfaceKey(surfaceWrapper.getCameraType(), surfaceWrapper.getSurfaceUsage(), surfaceWrapper.getFormat()));
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
                    arrayList.addAll(((CameraConstrainedHighSpeedCaptureSession) this.mCaptureSession).createHighSpeedRequestList(this.mPreviewBuilder.build()));
                } else {
                    arrayList.add(this.mPreviewBuilder.build());
                }
                CameraUnitLog.d(TAG, "requestRepeating, fps: " + this.mPreviewBuilder.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE));
                this.mCaptureSession.setRepeatingBurst(arrayList, this.mPreviewCallback, handler);
            } catch (Throwable th) {
                CameraUnitLog.e(TAG, "requestRepeating, have exception", th);
            }
        }
    }

    private boolean requestCapture(CaptureRequest.Builder builder, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        try {
            ArrayList arrayList = new ArrayList();
            if (this.mbQcomHighFrameRate) {
                arrayList.addAll(((CameraConstrainedHighSpeedCaptureSession) this.mCaptureSession).createHighSpeedRequestList(builder.build()));
            } else {
                arrayList.add(builder.build());
            }
            CameraUnitLog.d(TAG, "requestCapture, fps: " + this.mPreviewBuilder.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE));
            this.mCaptureSession.captureBurst(arrayList, captureCallback, handler);
            return true;
        } catch (CameraAccessException | IllegalStateException e) {
            CameraUnitLog.e(TAG, "requestCapture, have exception", e);
            return true;
        }
    }

    private SurfaceWrapper findWrapper(String str, String str2, int i) {
        for (SurfaceWrapper surfaceWrapper : this.mOutputConfigurationMap.keySet()) {
            if (surfaceWrapper.getSurfaceUsage().equals(str) && surfaceWrapper.getCameraType().equals(str2) && surfaceWrapper.getFormat() == i) {
                CameraUnitLog.v(TAG, "findWrapper, wrapper: " + surfaceWrapper);
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

    private int getCustomTuningMode(String[] strArr) {
        if (strArr == null || strArr.length <= 0 || !(ParameterKeys.ALGO_NAME_FRONT_PORTRAIT_SUPERNIGHT.equals(strArr[0]) || ParameterKeys.ALGO_NAME_SUPERNIGHT.equals(strArr[0]))) {
            return -1;
        }
        CameraUnitLog.d(TAG, "getCustomTuningMode, customTuningMode: 14");
        return 14;
    }

    private int getIspTuningMode(String[] strArr, boolean z, int i, int i2, int i3) {
        if (strArr == null || strArr.length <= 0 || !(ParameterKeys.ALGO_NAME_MFNR.equals(strArr[0]) || ParameterKeys.ALGO_NAME_AINR.equals(strArr[0]) || ParameterKeys.ALGO_NAME_AIHDR.equals(strArr[0]) || ParameterKeys.ALGO_NAME_FRONT_PORTRAIT_SUPERNIGHT.equals(strArr[0]) || ParameterKeys.ALGO_NAME_SUPERNIGHT.equals(strArr[0]))) {
            return -1;
        }
        int i4 = 5007;
        if (isCustomSuperNightTuningMode(strArr[0])) {
            i4 = 14;
        } else if (isSuperNightTuningMode(strArr[0], z)) {
            i4 = 4;
        } else if ((i != i2 - 1 || !isLastFrameUseHDRTuningMode(strArr[0], i3, z)) && (i != i2 - 2 || !isSecondLastFrameUseHDRTuningMode(strArr[0], i3))) {
            i4 = ParameterKeys.ALGO_NAME_MFNR.equals(strArr[0]) ? 1 : 2;
        }
        CameraUnitLog.d(TAG, "getIspTuningMode, ispTuningMode: " + i4);
        return i4;
    }

    private boolean isCustomSuperNightTuningMode(String str) {
        return ParameterKeys.ALGO_NAME_SUPERNIGHT.equals(str) || ParameterKeys.ALGO_NAME_FRONT_PORTRAIT_SUPERNIGHT.equals(str);
    }

    private boolean isSuperNightTuningMode(String str, boolean z) {
        return ParameterKeys.ALGO_NAME_AIHDR.equals(str) && z;
    }

    private boolean isLastFrameUseHDRTuningMode(String str, int i, boolean z) {
        return (ParameterKeys.ALGO_NAME_AINR.equals(str) && z) || (ParameterKeys.ALGO_NAME_MFNR.equals(str) && (26 == i || 27 == i || 32 == i)) || isAINRHDRTuningMode(str, i) || isAINRCoupleHDRTuningMode(str, i);
    }

    private boolean isSecondLastFrameUseHDRTuningMode(String str, int i) {
        return (ParameterKeys.ALGO_NAME_MFNR.equals(str) && (27 == i || 32 == i)) || isAINRHDRTuningMode(str, i);
    }

    private boolean isAINRHDRTuningMode(String str, int i) {
        return ParameterKeys.ALGO_NAME_AINR.equals(str) && 36 == i;
    }

    private boolean isAINRCoupleHDRTuningMode(String str, int i) {
        return ParameterKeys.ALGO_NAME_AINR.equals(str) && 37 == i;
    }

    private SurfaceWrapper getCameraMetadataSurface() {
        Size size = new Size(300, 1024);
        SurfaceWrapper surfaceWrapper = new SurfaceWrapper("meta", CameraSessionEntity.SurfaceUsage.METADATA, size, size, 35, 3);
        surfaceWrapper.setPhysicalCameraId(-1);
        surfaceWrapper.setMaxImageNumber(40);
        surfaceWrapper.setIntention(51L);
        surfaceWrapper.setSurface(SurfacePool.getInstance().createImageReader(surfaceWrapper).getSurface());
        return surfaceWrapper;
    }

    private boolean linkMetadataImageReader(Handler handler) {
        ImageReader imageReader = null;
        if (this.mSessionSurfaceWrapperList != null) {
            Iterator<SurfaceWrapper> it = this.mSessionSurfaceWrapperList.iterator();
            while (it.hasNext()) {
                SurfaceWrapper next = it.next();
                SurfaceKey surfaceKey = new SurfaceKey(next.getCameraType(), next.getSurfaceUsage(), next.getFormat());
                if (CameraSessionEntity.SurfaceUsage.METADATA.equals(surfaceKey.getUsage())) {
                    imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
                }
            }
        }
        if (imageReader != null) {
            imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.oplus.ocs.camera.producer.device.Camera2Impl.11
                @Override // android.media.ImageReader.OnImageAvailableListener
                public void onImageAvailable(ImageReader imageReader2) {
                    Camera2Impl.this.mCameraPreviewCallbackAdapter.onCaptureCompleted(imageReader2);
                }
            }, handler);
            return true;
        }
        return false;
    }

    private boolean linkSlowVideoHfrImageReader(CameraRequestTag cameraRequestTag, SurfaceWrapper surfaceWrapper, Handler handler) {
        if (3 != surfaceWrapper.getSurfaceType()) {
            return false;
        }
        SurfaceKey surfaceKey = new SurfaceKey(surfaceWrapper.getCameraType(), surfaceWrapper.getSurfaceUsage(), surfaceWrapper.getFormat());
        HashMap<SurfaceKey, Surface> hashMap = new HashMap<>();
        hashMap.put(surfaceKey, null);
        CameraRequestTag cameraRequestTag2 = new CameraRequestTag(null, handler);
        cameraRequestTag2.mAddTargetSurfaces = hashMap;
        cameraRequestTag2.mConsumerInterface = cameraRequestTag.mConsumerInterface;
        cameraRequestTag2.mConsumerInterface.linkSurfaceToConsumer(cameraRequestTag2, Parameter.ParameterStage.START_RECORDING, 35);
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

    private void updatePreviewBuilderTag(CaptureRequest.Builder builder) {
        if (this.mPreviewBuilder != null) {
            Integer num = (Integer) this.mPreviewBuilder.get(CaptureRequest.CONTROL_AF_MODE);
            if (num != null) {
                builder.set(CaptureRequest.CONTROL_AF_MODE, num);
            }
            Boolean bool = (Boolean) this.mPreviewBuilder.get(CaptureRequest.CONTROL_AE_LOCK);
            if (bool != null) {
                builder.set(CaptureRequest.CONTROL_AE_LOCK, bool);
            }
        }
    }

    private void updatePreviewTarget(CaptureRequest.Builder builder, @Nullable CameraRequestTag cameraRequestTag, int i) {
        if (cameraRequestTag.mbNeedPreviewStream != null) {
            for (SurfaceWrapper surfaceWrapper : this.mOutputConfigurationMap.keySet()) {
                if (CameraSessionEntity.SurfaceUsage.PREVIEW.equals(surfaceWrapper.getSurfaceUsage())) {
                    if (cameraRequestTag.mbNeedPreviewStream[i]) {
                        builder.addTarget(surfaceWrapper.getSurface());
                    } else {
                        builder.removeTarget(surfaceWrapper.getSurface());
                    }
                }
            }
        }
    }

    private void updateHdrKey(CaptureRequest.Builder builder, @Nullable CameraRequestTag cameraRequestTag, int i) {
        if (!Util.isQcomPlatform() || cameraRequestTag.mbBurstShot) {
            return;
        }
        if (26 == cameraRequestTag.mApsDecisionFeatureType || 27 == cameraRequestTag.mApsDecisionFeatureType) {
            CameraUnitLog.v(TAG, "updateHdrKey, mTouchEVValue: " + cameraRequestTag.mTouchEVValue);
            boolean z = cameraRequestTag.mCaptureEvList[i] - cameraRequestTag.mTouchEVValue >= 0;
            setMFSRParameter(builder, cameraRequestTag, z);
            builder.set(CaptureRequest.CONTROL_ENABLE_ZSL, Boolean.valueOf(z || 26 == cameraRequestTag.mApsDecisionFeatureType));
            builder.set(CameraMetadataKey.KEY_APS_FEATURE_TYPE, new int[]{cameraRequestTag.mApsDecisionFeatureType});
        }
    }

    private void updateMFSRKey(CaptureRequest.Builder builder, @Nullable CameraRequestTag cameraRequestTag) {
        boolean z = false;
        if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_MFNR, false)).booleanValue()) {
            CameraUnitLog.d(TAG, "updateMFSRKey, mApsDecisionFeatureType: " + cameraRequestTag.mApsDecisionFeatureType + ", mMFSRFrameCount: " + cameraRequestTag.mMFSRFrameCount);
            if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_MFNR, false)).booleanValue()) {
                if (3 == cameraRequestTag.mApsDecisionFeatureType && cameraRequestTag.mMFSRFrameCount != 0 && !cameraRequestTag.mbBurstShot) {
                    z = true;
                }
                setMFSRParameter(builder, cameraRequestTag, z);
            }
        }
    }

    private void setMFSRParameter(CaptureRequest.Builder builder, @Nullable CameraRequestTag cameraRequestTag, boolean z) {
        if (z) {
            builder.set(CameraMetadataKey.KEY_MFSR_FRAME_NUM, new int[]{cameraRequestTag.mMFSRFrameCount});
            builder.set(CameraMetadataKey.KEY_CUSTOM_NOISE_REDUCTION, (byte) 102);
            builder.set(CaptureRequest.NOISE_REDUCTION_MODE, 2);
            return;
        }
        builder.set(CameraMetadataKey.KEY_MFSR_FRAME_NUM, new int[]{0});
        builder.set(CameraMetadataKey.KEY_CUSTOM_NOISE_REDUCTION, (byte) 0);
        builder.set(CaptureRequest.NOISE_REDUCTION_MODE, 1);
    }
}
