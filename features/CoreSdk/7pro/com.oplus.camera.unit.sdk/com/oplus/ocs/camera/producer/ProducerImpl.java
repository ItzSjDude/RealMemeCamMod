package com.oplus.ocs.camera.producer;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.os.ConditionVariable;
import android.os.Handler;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.ProducerConsumerInterfaceContract;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraDeviceInterface;
import com.oplus.ocs.camera.appinterface.CameraFlashCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.converter.CustomParameterConverter;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfacePool;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ConfigInfoPkg;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.ErrorResult;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.SensorManagerClient;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.device.Camera2DeviceInterface;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.mode.ModeFactory;
import com.oplus.ocs.camera.producer.mode.ModeInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ProducerImpl implements CameraDeviceInterface, ProducerConsumerInterfaceContract.ProducerInterface {
    private static final int DELAY_TO_AVOID_FRAMEWORK_CONFLICT = 50;
    private static final String TAG = "ProducerImpl";
    private static final int WAIT_CLOSE_CAMERA_TIME = 2000;
    private boolean mbManageMultiDevice;
    private ProducerConsumerInterfaceContract.ConsumerInterface mConsumerInterface = null;
    private PreviewParameter.Builder mAllStageParameterBuilder = null;
    private PreviewParameter.Builder mSubAllStageParameterBuilder = null;
    private CameraPreviewCallbackAdapter mPreviewCallback = null;
    private Map<String, Surface> mPreviewSurfaces = null;
    private ModeInterface mCurrentMode = null;
    private DefaultFlashCallbackAdapter mDefaultFlashCallbackAdapter = null;
    private volatile Camera2DeviceInterface mCamera2DeviceInterface = null;
    private volatile Camera2DeviceInterface mSubCamera2DeviceInterface = null;
    private volatile DefaultCameraStateCallbackAdapter mDefaultCameraStateCallbackAdapter = null;
    private SensorManagerClient mSensorManagerClient = null;
    private final Object mDeviceLock = new Object();
    private final Object mPreviewResultLock = new Object();
    CameraRequestTag mCurrentPreviewRequestTag = null;
    CameraRequestTag mCurrentCaptureRequestTag = null;
    private boolean mbApsFinishAddFrame = true;
    private boolean mbApsFinishProcessFrame = true;
    private ConditionVariable mCaptureSig = new ConditionVariable();
    private boolean mbTakingPicture = false;
    private int mCameraState = 0;
    private Size mSurfaceSizeTemp = null;
    private ConditionVariable mConfigureSig = new ConditionVariable();
    private volatile int mConfigureCallbackCount = 0;
    private int mCloseSessionCallBackCount = 0;
    private boolean mbStopPreviewAfterCapture = false;
    private boolean mbSessionConfigured = false;

    static /* synthetic */ int access$1508(ProducerImpl producerImpl) {
        int i = producerImpl.mConfigureCallbackCount;
        producerImpl.mConfigureCallbackCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$1608(ProducerImpl producerImpl) {
        int i = producerImpl.mCloseSessionCallBackCount;
        producerImpl.mCloseSessionCallBackCount = i + 1;
        return i;
    }

    public ProducerImpl(boolean z) {
        this.mbManageMultiDevice = false;
        this.mbManageMultiDevice = z;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public CameraDeviceInfoInterface getCameraDeviceInfo(String str, String str2) {
        if (ModeFactory.getMode(str) != null) {
            return ModeFactory.getMode(str).getCameraDeviceInfo(str2);
        }
        return null;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void configure(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        CameraUnitLog.traceBeginSection("CameraUnitProducerImplConfigure");
        if (this.mCamera2DeviceInterface == null) {
            CameraUnitLog.e(TAG, "configure, camera has not been opened, please call configure after open camera!");
            return;
        }
        this.mbSessionConfigured = false;
        if (this.mAllStageParameterBuilder != null) {
            this.mAllStageParameterBuilder.clear();
        } else {
            this.mAllStageParameterBuilder = new PreviewParameter.Builder();
        }
        if (this.mSubAllStageParameterBuilder != null) {
            this.mSubAllStageParameterBuilder.clear();
        } else {
            this.mSubAllStageParameterBuilder = new PreviewParameter.Builder();
        }
        this.mCurrentMode = ModeFactory.getMode(sdkCameraDeviceConfig.getModeName());
        this.mCaptureSig.open();
        CameraUnitLog.d(TAG, "configure, modeName: " + sdkCameraDeviceConfig.getModeName() + ", mCurrentMode: " + this.mCurrentMode);
        CameraConfigHelper.blockApsConfigIfNeeded();
        if (this.mbManageMultiDevice) {
            this.mConfigureCallbackCount = 0;
            int i = 0;
            for (Map.Entry<String, SdkCameraDeviceConfig> entry : sdkCameraDeviceConfig.split().entrySet()) {
                String key = entry.getKey();
                SdkCameraDeviceConfig value = entry.getValue();
                updateReportedCameraId(key, value);
                this.mConfigureSig.close();
                CameraUnitLog.d(TAG, "configure, count: " + i + ", mConfigureCallbackCount: " + this.mConfigureCallbackCount);
                if (i > 0 && this.mConfigureCallbackCount < i) {
                    this.mConfigureSig.block();
                }
                i++;
                if ("rear_main".equals(key)) {
                    configureSession(value, this.mAllStageParameterBuilder, this.mCamera2DeviceInterface, 0);
                } else {
                    configureSession(value, this.mSubAllStageParameterBuilder, this.mSubCamera2DeviceInterface, DELAY_TO_AVOID_FRAMEWORK_CONFLICT);
                }
            }
        } else {
            configureSession(sdkCameraDeviceConfig, this.mAllStageParameterBuilder, this.mCamera2DeviceInterface, 0);
        }
        CameraUnitLog.traceEndSection("CameraUnitProducerImplConfigure");
    }

    private void configureSession(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig, @NonNull PreviewParameter.Builder builder, @NonNull Camera2DeviceInterface camera2DeviceInterface, int i) {
        CameraSessionEntity configure = this.mCurrentMode.configure(sdkCameraDeviceConfig, camera2DeviceInterface.getCameraType());
        if (configure == null) {
            if (this.mDefaultCameraStateCallbackAdapter != null) {
                this.mDefaultCameraStateCallbackAdapter.onSessionConfigureFail(ErrorResult.PARAMETER_ERROR);
            }
            CameraUnitLog.e(TAG, "configureSession, fail");
            return;
        }
        CameraUnitLog.d(TAG, "configureSession, operationMode: " + configure.getOperationMode() + ", hex value: 0x" + Integer.toHexString(configure.getOperationMode()));
        Parameter buildStageParameter = buildStageParameter(Parameter.ParameterStage.CONFIGURE, camera2DeviceInterface.getCameraType(), builder, null);
        configure.setDelay(i);
        camera2DeviceInterface.configure(configure, buildStageParameter);
    }

    public void setCameraState(int i) {
        CameraUnitLog.v(TAG, "setCameraState, state: " + this.mCameraState + "->" + i);
        this.mCameraState = i;
    }

    private void updateReportedCameraId(@NonNull String str, @NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        Size appSurfaceSize = sdkCameraDeviceConfig.getDefaultPreviewSurface().getAppSurfaceSize();
        if (this.mSurfaceSizeTemp == null) {
            this.mSurfaceSizeTemp = appSurfaceSize;
            return;
        }
        if (Util.compareSize(appSurfaceSize, this.mSurfaceSizeTemp) > 0 && "rear_main".equals(str)) {
            StatisticsManager.getInstance().setCameraId(1, "rear_main_front_main");
        } else {
            StatisticsManager.getInstance().setCameraId(0, "rear_main_front_main");
        }
        this.mSurfaceSizeTemp = null;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void setParameter(@NonNull String str, Object obj) {
        if (this.mAllStageParameterBuilder == null) {
            CameraUnitLog.e(TAG, "setParameter, mPreviewParameterBuilder is null!");
        } else {
            this.mAllStageParameterBuilder.set(str, obj);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void setParameter(String str, @NonNull String str2, Object obj) {
        if (this.mbManageMultiDevice) {
            if ("rear_main".equals(str)) {
                this.mAllStageParameterBuilder.set(str2, obj);
                return;
            } else {
                this.mSubAllStageParameterBuilder.set(str2, obj);
                return;
            }
        }
        setParameter(str2, obj);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public <T> void setParameter(String str, @NonNull CaptureRequest.Key<T> key, T t) {
        if (this.mbManageMultiDevice) {
            if ("rear_main".equals(str)) {
                this.mAllStageParameterBuilder.set((CaptureRequest.Key<CaptureRequest.Key<T>>) key, (CaptureRequest.Key<T>) t);
                return;
            } else {
                this.mSubAllStageParameterBuilder.set((CaptureRequest.Key<CaptureRequest.Key<T>>) key, (CaptureRequest.Key<T>) t);
                return;
            }
        }
        setParameter((CaptureRequest.Key<CaptureRequest.Key<T>>) key, (CaptureRequest.Key<T>) t);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public <T> void setParameter(@NonNull CaptureRequest.Key<T> key, T t) {
        if (this.mAllStageParameterBuilder == null) {
            CameraUnitLog.e(TAG, "setParameter, mPreviewParameterBuilder is null!");
        } else {
            this.mAllStageParameterBuilder.set((CaptureRequest.Key<CaptureRequest.Key<T>>) key, (CaptureRequest.Key<T>) t);
        }
    }

    private Parameter buildStageParameter(String str, String str2, @NonNull PreviewParameter.Builder builder, @Nullable CameraRequestTag cameraRequestTag) {
        this.mCurrentMode.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        Parameter build = builder.build();
        this.mCurrentMode.updateStageParameter(build, str, str2, cameraRequestTag);
        return build;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void startPreview(Map<String, Surface> map, CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter, Handler handler) {
        if (this.mbStopPreviewAfterCapture) {
            CameraUnitLog.d(TAG, "startPreview, intercept preview");
            return;
        }
        CameraUnitLog.i(TAG, "startPreview, previewSurfaces: " + map + ", mCurrentMode: " + this.mCurrentMode);
        CameraUnitLog.traceBeginSection("CameraUnitProducerImplStartPreview");
        if (!Util.isSystemCamera() && (map == null || map.isEmpty())) {
            throw new IllegalArgumentException("preview surface are not allowed null!");
        }
        Camera2DeviceInterface camera2DeviceInterface = this.mCamera2DeviceInterface;
        Camera2DeviceInterface camera2DeviceInterface2 = this.mSubCamera2DeviceInterface;
        this.mPreviewCallback = cameraPreviewCallbackAdapter;
        this.mPreviewSurfaces = map;
        if (camera2DeviceInterface == null || ((this.mbManageMultiDevice && camera2DeviceInterface2 == null) || this.mCurrentMode == null)) {
            CameraUnitLog.e(TAG, "startPreview, invalid state, mCamera2DeviceInterface: " + camera2DeviceInterface + ", mCurrentMode: " + this.mCurrentMode);
            return;
        }
        if (this.mbManageMultiDevice) {
            if (map == null || map.isEmpty()) {
                throw new IllegalArgumentException("preview surface are not allowed null in multi device!");
            }
            for (Map.Entry<String, Surface> entry : map.entrySet()) {
                Camera2DeviceInterface camera2DeviceInterface3 = "rear_main".equals(entry.getKey()) ? camera2DeviceInterface : camera2DeviceInterface2;
                PreviewParameter.Builder builder = "rear_main".equals(entry.getKey()) ? this.mAllStageParameterBuilder : this.mSubAllStageParameterBuilder;
                CameraRequestTag createRequestTag = this.mCurrentMode.createRequestTag(entry.getKey(), cameraPreviewCallbackAdapter, handler, Parameter.ParameterStage.START_PREVIEW, builder);
                createRequestTag.mConsumerInterface = this.mConsumerInterface;
                if (entry.getValue() != null) {
                    createRequestTag.mAddTargetSurfaces.put(new SurfaceKey(camera2DeviceInterface3.getCameraType(), CameraSessionEntity.SurfaceUsage.PREVIEW, 0), entry.getValue());
                }
                camera2DeviceInterface3.startPreview(createRequestTag, buildStageParameter(Parameter.ParameterStage.START_PREVIEW, entry.getKey(), builder, createRequestTag));
            }
        } else {
            String cameraType = camera2DeviceInterface.getCameraType();
            CameraRequestTag createRequestTag2 = this.mCurrentMode.createRequestTag(cameraType, cameraPreviewCallbackAdapter, handler, Parameter.ParameterStage.START_PREVIEW, this.mAllStageParameterBuilder);
            createRequestTag2.mConsumerInterface = this.mConsumerInterface;
            Parameter buildStageParameter = buildStageParameter(Parameter.ParameterStage.START_PREVIEW, cameraType, this.mAllStageParameterBuilder, createRequestTag2);
            CameraUnitLog.d(TAG, "startPreview, tag hashCode: " + createRequestTag2.hashCode());
            if (map != null) {
                for (Surface surface : map.values()) {
                    createRequestTag2.mAddTargetSurfaces.put(new SurfaceKey(cameraType, CameraSessionEntity.SurfaceUsage.PREVIEW, 35), surface);
                }
            }
            int[] iArr = (int[]) buildStageParameter.get(PreviewParameter.KEY_TRIPOD_MODE);
            boolean z = true;
            createRequestTag2.mbTripodEnable = (iArr == null || iArr[0] != 1) ? false : false;
            checkFlashModeConflict(buildStageParameter, camera2DeviceInterface);
            camera2DeviceInterface.startPreview(createRequestTag2, buildStageParameter);
            if (this.mCurrentCaptureRequestTag != null) {
                this.mCurrentCaptureRequestTag.mbRepeatingRequestCapture = false;
            }
            if (this.mCurrentPreviewRequestTag != null) {
                this.mCurrentPreviewRequestTag.mbLongExposureCaptureEnable = false;
            }
            this.mCurrentPreviewRequestTag = createRequestTag2;
        }
        CameraUnitLog.traceEndSection("CameraUnitProducerImplStartPreview");
    }

    private void checkFlashModeConflict(Parameter parameter, Camera2DeviceInterface camera2DeviceInterface) {
        if (parameter == null || camera2DeviceInterface == null || !parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
            return;
        }
        Float f = (Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO);
        boolean equals = "rear_sat".equals(camera2DeviceInterface.getCameraType());
        Boolean bool = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FLASH_WIDE_TEL_SUPPORT, false);
        if (!equals || bool.booleanValue()) {
            return;
        }
        CameraDeviceInfoInterface cameraDeviceInfo = this.mCurrentMode.getCameraDeviceInfo(camera2DeviceInterface.getCameraType());
        List list = (List) cameraDeviceInfo.getPreviewParameterRange(PreviewParameter.KEY_SAT_CAMERA_NONE_ZOOM_RATIO.getName());
        boolean z = true;
        if (list == null || list.size() < 2 || (f.floatValue() >= ((Float) list.get(1)).floatValue() && (list.size() != 3 || f.floatValue() < ((Float) list.get(2)).floatValue()))) {
            z = false;
        }
        if (z) {
            parameter.set((Parameter.Key<Parameter.Key<String>>) PreviewParameter.KEY_FLASH_MODE, (Parameter.Key<String>) "off");
            ArrayList arrayList = new ArrayList();
            arrayList.add("off");
            if (this.mDefaultFlashCallbackAdapter != null) {
                this.mDefaultFlashCallbackAdapter.onFlashModeChanged("off");
                this.mDefaultFlashCallbackAdapter.onFlashModeSupportListChanged(arrayList);
                return;
            }
            return;
        }
        List<String> list2 = (List) cameraDeviceInfo.getPreviewParameterRange(PreviewParameter.KEY_FLASH_MODE.getName());
        if (this.mDefaultFlashCallbackAdapter != null) {
            this.mDefaultFlashCallbackAdapter.onFlashModeChanged((String) parameter.get(PreviewParameter.KEY_FLASH_MODE));
            this.mDefaultFlashCallbackAdapter.onFlashModeSupportListChanged(list2);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void stopPreview() {
        if (this.mCamera2DeviceInterface != null) {
            this.mCamera2DeviceInterface.stopPreview(true);
        }
        setCameraState(0);
        CameraUnitLog.d(TAG, "stopPreview");
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void stopPreview(boolean z) {
        if (this.mCamera2DeviceInterface != null) {
            this.mCamera2DeviceInterface.stopPreview(z);
        }
        setCameraState(0);
        CameraUnitLog.d(TAG, "stopPreview");
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void closeSession() {
        if (this.mCamera2DeviceInterface != null) {
            this.mCamera2DeviceInterface.closeSession();
        }
        if (this.mbManageMultiDevice) {
            this.mSubCamera2DeviceInterface.closeSession();
        }
        this.mCloseSessionCallBackCount = 0;
        CameraUnitLog.d(TAG, "closeSession");
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public boolean needApsProcessor() {
        return !this.mbManageMultiDevice;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public boolean isAiEnhancementVideoOpen() {
        if (this.mAllStageParameterBuilder == null) {
            CameraUnitLog.d(TAG, "isAiEnhancementVideoOpen, mAllStageParameterBuilder is null");
            return false;
        }
        Object obj = this.mAllStageParameterBuilder.get(ConfigureParameter.AI_NIGHT_VIDEO_MODE);
        return obj != null && 1 == ((Integer) obj).intValue();
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public void onReprocess(Image image, TotalCaptureResult totalCaptureResult, Rect rect, CameraRequestTag cameraRequestTag) {
        if (image == null || totalCaptureResult == null || cameraRequestTag == null) {
            if (cameraRequestTag != null) {
                CameraUnitLog.e(TAG, "onReprocess, failed");
                handleCaptureFailed(cameraRequestTag.mUserCallbackHandler, (CameraPictureCallbackAdapter) cameraRequestTag.mCallback);
            }
        } else if (this.mCamera2DeviceInterface != null) {
            CameraUnitLog.d(TAG, "onReprocess, image: " + image + ", rect: " + rect);
            if (cameraRequestTag.mbLongExposureCaptureEnable) {
                cameraRequestTag = (CameraRequestTag) cameraRequestTag.clone();
            }
            CameraRequestTag cameraRequestTag2 = cameraRequestTag;
            cameraRequestTag2.setRequestMode(CameraRequestTag.RequestMode.CAPTURE_REPROCESS);
            Parameter buildStageParameter = buildStageParameter(Parameter.ParameterStage.BEFORE_TAKE_PICTURE, this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder, cameraRequestTag2);
            cameraRequestTag2.mRequestNum = 1;
            cameraRequestTag2.mCaptureEvList = null;
            cameraRequestTag2.mbInNightProcess = false;
            cameraRequestTag2.mAddTargetSurfaces.clear();
            if ("rear_sat".equals(cameraRequestTag2.mCameraType)) {
                if (this.mCamera2DeviceInterface.getSupportWrapper(CameraSessionEntity.SurfaceUsage.REPROCESS_YUV, "rear_sat", cameraRequestTag2.mRequestFormat)) {
                    cameraRequestTag2.mAddTargetSurfaces.put(new SurfaceKey("rear_sat", CameraSessionEntity.SurfaceUsage.REPROCESS_YUV, cameraRequestTag2.mRequestFormat), null);
                } else {
                    cameraRequestTag2.mAddTargetSurfaces.put(new SurfaceKey("rear_main", CameraSessionEntity.SurfaceUsage.PICTURE, cameraRequestTag2.mRequestFormat), null);
                    cameraRequestTag2.mAddTargetSurfaces.put(new SurfaceKey("rear_wide", CameraSessionEntity.SurfaceUsage.PICTURE, cameraRequestTag2.mRequestFormat), null);
                    cameraRequestTag2.mAddTargetSurfaces.put(new SurfaceKey("rear_tele", CameraSessionEntity.SurfaceUsage.PICTURE, cameraRequestTag2.mRequestFormat), null);
                }
            } else {
                cameraRequestTag2.mAddTargetSurfaces.put(new SurfaceKey(this.mCamera2DeviceInterface.getCameraType(), CameraSessionEntity.SurfaceUsage.PICTURE, cameraRequestTag2.mRequestFormat), null);
            }
            this.mCamera2DeviceInterface.reprocessImage(image, totalCaptureResult, rect, cameraRequestTag2, buildStageParameter);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void takePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler) {
        if (this.mCamera2DeviceInterface != null) {
            synchronized (this.mPreviewResultLock) {
                CameraRequestTag createRequestTag = this.mCurrentMode.createRequestTag(this.mCamera2DeviceInterface.getCameraType(), cameraPictureCallbackAdapter, handler, Parameter.ParameterStage.BEFORE_TAKE_PICTURE, this.mAllStageParameterBuilder);
                createRequestTag.mbStopPreviewAfterCapture = this.mbStopPreviewAfterCapture;
                this.mCurrentCaptureRequestTag = createRequestTag;
                if (createRequestTag.mbLongExposureCaptureEnable) {
                    this.mCurrentPreviewRequestTag.mbLongExposureCaptureEnable = true;
                }
                createRequestTag.mConsumerInterface = this.mConsumerInterface;
                boolean z = createRequestTag.mbBurstShot && CameraCharacteristicsHelper.isSupportCShot(createRequestTag.mCameraType);
                if (this.mCurrentMode.isAllowedToTakePicture(cameraPictureCallbackAdapter, handler, createRequestTag) && (this.mbApsFinishAddFrame || z)) {
                    if (this.mCurrentMode.isNeedAPSProcess()) {
                        this.mbApsFinishAddFrame = false;
                        this.mbApsFinishProcessFrame = false;
                        this.mbTakingPicture = true;
                    }
                    setCameraState(2);
                    this.mCaptureSig.close();
                    Parameter buildStageParameter = buildStageParameter(Parameter.ParameterStage.BEFORE_TAKE_PICTURE, this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder, createRequestTag);
                    this.mConsumerInterface.beforeCapture(null);
                    if (this.mCurrentMode.isSupportVideoSnapShot(this.mCamera2DeviceInterface.getCameraType())) {
                        createRequestTag.mAppOpaqueObj = buildStageParameter.get(PreviewParameter.KEY_REQUEST_TAG);
                        CameraUnitLog.d(TAG, "takePicture, is video snap shot.");
                        if (this.mCurrentMode.isVideoSnapShotByAps(this.mCamera2DeviceInterface.getCameraType())) {
                            ApsCameraRequestTag apsCameraRequestTag = new ApsCameraRequestTag();
                            apsCameraRequestTag.mbFrontCamera = CameraCharacteristicsHelper.isFrontCamera(createRequestTag.mRearFrontCameraId);
                            apsCameraRequestTag.mbQcom = Util.isQcomPlatform();
                            apsCameraRequestTag.mbPIAI = false;
                            apsCameraRequestTag.mTag = createRequestTag;
                            if (!createRequestTag.mApsRequestTag.mPreviewSize.equals(createRequestTag.mApsRequestTag.mInputVideoSize)) {
                                createRequestTag.mUpScaleOutputSize = new int[]{createRequestTag.mApsRequestTag.mInputVideoSize.getWidth(), createRequestTag.mApsRequestTag.mInputVideoSize.getHeight()};
                            }
                            createRequestTag.mConsumerInterface.videoSnapshot(apsCameraRequestTag);
                            if (createRequestTag.mApsRequestTag != null && !createRequestTag.mApsRequestTag.mbPreviewProcessByAps) {
                                createRequestTag.mApsRequestTag.mVideoSnapShotTimeStamp = System.currentTimeMillis();
                                createRequestTag.mApsRequestTag.mbNeedSendVideoSnapShotImage = true;
                                createRequestTag.mApsRequestTag.mbNeedSendVideoSnapShotMeta = true;
                            }
                        } else {
                            this.mCamera2DeviceInterface.videoSnapshot(createRequestTag, buildStageParameter);
                        }
                    } else {
                        CameraUnitLog.v(TAG, "takePicture, mbSuperTextOpen: " + createRequestTag.mbSuperTextOpen + ", mSuperTextVertices:" + createRequestTag.mSuperTextVertices);
                        if (createRequestTag.mbSuperTextOpen) {
                            this.mAllStageParameterBuilder.remove(PreviewParameter.KEY_SUPER_TEXT_VERTICES);
                        }
                        this.mCamera2DeviceInterface.takePicture(createRequestTag, buildStageParameter);
                    }
                    return;
                }
                CameraUnitLog.e(TAG, "takePicture, not allow take picture, mbApsFinishAddFrame: " + this.mbApsFinishAddFrame);
                handleCaptureFailed(handler, cameraPictureCallbackAdapter);
                return;
            }
        }
        CameraUnitLog.e(TAG, "takePicture, failed");
        handleCaptureFailed(handler, cameraPictureCallbackAdapter);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void abortCaptures() {
        if (this.mbTakingPicture) {
            this.mCamera2DeviceInterface.abortCaptures();
            this.mbApsFinishAddFrame = true;
            this.mbApsFinishProcessFrame = true;
            this.mbTakingPicture = false;
            setCameraState(1);
            this.mCaptureSig.open();
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public Surface getVideoSurface() {
        return SurfacePool.getInstance().getVideoSurface();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void startRecording(CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter, Handler handler) {
        if (this.mCamera2DeviceInterface != null) {
            CameraRequestTag createRequestTag = this.mCurrentMode.createRequestTag(this.mCamera2DeviceInterface.getCameraType(), cameraRecordingCallbackAdapter, handler, Parameter.ParameterStage.START_RECORDING, this.mAllStageParameterBuilder);
            createRequestTag.mConsumerInterface = this.mConsumerInterface;
            this.mCamera2DeviceInterface.startRecording(createRequestTag, buildStageParameter(Parameter.ParameterStage.START_RECORDING, this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder, createRequestTag));
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void resumeRecording() {
        if (this.mCamera2DeviceInterface != null) {
            this.mCamera2DeviceInterface.resumeRecording(null);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void pauseRecording() {
        if (this.mCamera2DeviceInterface != null) {
            this.mCamera2DeviceInterface.pauseRecording(null);
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void stopRecording() {
        if (this.mCamera2DeviceInterface != null) {
            this.mCamera2DeviceInterface.stopRecording(buildStageParameter(Parameter.ParameterStage.STOP_RECORDING, this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder, null));
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void close(boolean z) {
        CameraUnitLog.d(TAG, "close, sync: " + z + ", mbTakingPicture: " + this.mbTakingPicture);
        close(z, true);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void close(boolean z, boolean z2) {
        boolean z3 = z2 && !(isApsFinishAddFrame() && this.mbApsFinishProcessFrame) && this.mCurrentMode.needDelayCloseForCapture();
        CameraUnitLog.d(TAG, "close, sync: " + z + ", mbTakingPicture: " + this.mbTakingPicture + ", needDelay: " + z3);
        if (z3) {
            this.mCaptureSig.block(2000L);
        }
        if (this.mbTakingPicture) {
            this.mbTakingPicture = false;
        }
        setCameraState(4);
        if (this.mCamera2DeviceInterface != null) {
            this.mCamera2DeviceInterface.close(z);
        }
        if (this.mSubCamera2DeviceInterface != null) {
            this.mSubCamera2DeviceInterface.close(z);
        }
        this.mDefaultCameraStateCallbackAdapter = null;
        CameraUnitLog.d(TAG, "close, end");
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void registerFlashCallback(CameraFlashCallbackAdapter cameraFlashCallbackAdapter, Handler handler) {
        this.mDefaultFlashCallbackAdapter = new DefaultFlashCallbackAdapter(cameraFlashCallbackAdapter, handler);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, int i, int i2, int i3) {
        ImageCategory.MetaItemInfo metaItemInfo = new ImageCategory.MetaItemInfo();
        metaItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP, captureResult.get(CaptureResult.SENSOR_TIMESTAMP));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAMERA_ID, String.valueOf(i));
        metaItemInfo.setParameter(ParameterKeys.KEY_LOGIC_CAMERA_ID, Integer.valueOf(i2));
        metaItemInfo.setParameter(ParameterKeys.KEY_ORIENTATION, Integer.valueOf(i3));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_ALGO_LIST, new String[]{ParameterKeys.ALGO_NAME_FACE_RECTIFY});
        if (this.mAllStageParameterBuilder != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_ZOOM_RATIO, String.valueOf(this.mAllStageParameterBuilder.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO) ? ((Float) this.mAllStageParameterBuilder.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue() : 1.0f));
        }
        return this.mConsumerInterface.processBitmap(bitmap, captureResult, metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void updateThumbnailMap(long j) {
        this.mConsumerInterface.updateThumbnailMap(j);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public boolean notifyLastCaptureFrame() {
        ImageCategory.MetaItemInfo metaItemInfo = new ImageCategory.MetaItemInfo();
        if (this.mCurrentCaptureRequestTag != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_IMAGE_FORMAT, Integer.valueOf(this.mCurrentCaptureRequestTag.mRequestFormat));
        }
        return this.mConsumerInterface.notifyLastCaptureFrame(metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void setStopPreviewAfterCapture(boolean z) {
        this.mbStopPreviewAfterCapture = z;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public CameraStateCallbackAdapter createCameraStateCallback(@NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, Handler handler) {
        if (this.mDefaultCameraStateCallbackAdapter == null) {
            CameraUnitLog.i(TAG, "createCameraStateCallback, no valid callback, create new");
            this.mDefaultCameraStateCallbackAdapter = new DefaultCameraStateCallbackAdapter(cameraStateCallbackAdapter, handler);
        } else {
            CameraUnitLog.i(TAG, "createCameraStateCallback, callback already exists, return old");
        }
        return this.mDefaultCameraStateCallbackAdapter;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public void setConsumer(ProducerConsumerInterfaceContract.ConsumerInterface consumerInterface) {
        this.mConsumerInterface = consumerInterface;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public void onFirstPreviewMetaReceived() {
        setCameraState(1);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public void onFinishAddFrame() {
        this.mbApsFinishAddFrame = true;
        setCameraState(1);
        this.mbTakingPicture = false;
        this.mCaptureSig.open();
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public void onAfterProcessImage() {
        this.mbApsFinishProcessFrame = true;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public void onCaptureCompleted() {
        if (isNeedApsProcessor()) {
            return;
        }
        this.mCaptureSig.open();
    }

    private boolean isNeedApsProcessor() {
        return AlgoSwitchConfig.getApsMode() != 0;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public void onPreviewResultReceived(Handler handler, CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        synchronized (this.mPreviewResultLock) {
            if (this.mbTakingPicture) {
                CameraUnitLog.d(TAG, "onPreviewResultReceived, mbTakingPicture: " + this.mbTakingPicture);
            } else if (!this.mbSessionConfigured) {
                CameraUnitLog.e(TAG, "onPreviewResultReceived, mbSessionConfigured is false, return!");
            } else if (this.mCurrentMode == null) {
                CameraUnitLog.e(TAG, "onPreviewResultReceived, mCurrentMode is null, return!");
            } else {
                boolean needStartPreview = this.mCurrentMode.needStartPreview(previewResult);
                if (this.mCamera2DeviceInterface != null && !this.mbManageMultiDevice) {
                    buildStageParameter(Parameter.ParameterStage.START_PREVIEW, this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder, this.mCurrentPreviewRequestTag);
                }
                if (needStartPreview) {
                    startPreview(this.mPreviewSurfaces, this.mPreviewCallback, handler);
                }
            }
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public boolean needMatchPreviewTimestamp(String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult) {
        return this.mCurrentMode.needMatchPreviewTimestamp(this.mCameraState, str, cameraRequestTag, decisionResult);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public boolean isApsFinishAddFrame() {
        return this.mbApsFinishAddFrame;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public boolean isApsFinishProcessFrame() {
        return this.mbApsFinishProcessFrame;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public Map<String, Object> generateImageInfo(Image image) {
        return this.mPreviewCallback.generateImageInfo(image);
    }

    private void handleCaptureFailed(Handler handler, final CameraPictureCallbackAdapter cameraPictureCallbackAdapter) {
        if (handler == null || cameraPictureCallbackAdapter == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.1
            @Override // java.lang.Runnable
            public void run() {
                cameraPictureCallbackAdapter.onCaptureFailed((CaptureRequest) null, (CameraPictureCallbackAdapter.PictureResult) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SensorManagerClient getSensorManagerClient() {
        if (this.mSensorManagerClient == null) {
            this.mSensorManagerClient = new SensorManagerClient(ContextHolder.getContext());
        }
        return this.mSensorManagerClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSensorRegistrationStatus(int i) {
        if (i == 0) {
            getSensorManagerClient().unregisterSensor(i);
        } else {
            getSensorManagerClient().registerSensor(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class DefaultCameraStateCallbackAdapter extends CameraStateCallbackAdapter {
        private CameraStateCallbackAdapter mCameraStateCallbackAdapter;
        private Handler mHandler;

        DefaultCameraStateCallbackAdapter(@NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, Handler handler) {
            this.mCameraStateCallbackAdapter = null;
            this.mHandler = null;
            if (cameraStateCallbackAdapter == null) {
                throw new IllegalArgumentException("cameraStateCallbackAdapter is not allowed to null!");
            }
            this.mCameraStateCallbackAdapter = cameraStateCallbackAdapter;
            this.mHandler = handler;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
        public synchronized void onCameraOpened(Camera2DeviceInterface camera2DeviceInterface) {
            super.onCameraOpened(camera2DeviceInterface);
            CameraUnitLog.d(ProducerImpl.TAG, "onCameraOpened, camera2DeviceInterface: " + camera2DeviceInterface);
            ProducerImpl.this.mbApsFinishAddFrame = true;
            ProducerImpl.this.mbApsFinishProcessFrame = true;
            synchronized (ProducerImpl.this.mDeviceLock) {
                if (!ProducerImpl.this.mbManageMultiDevice) {
                    ProducerImpl.this.mCamera2DeviceInterface = camera2DeviceInterface;
                } else {
                    String cameraType = camera2DeviceInterface.getCameraType();
                    CameraUnitLog.d(ProducerImpl.TAG, "onCameraOpened, cameraType: " + cameraType);
                    if ("rear_main".equals(cameraType)) {
                        ProducerImpl.this.mCamera2DeviceInterface = camera2DeviceInterface;
                    } else if ("front_main".equals(cameraType) || "front_wide".equals(cameraType)) {
                        ProducerImpl.this.mSubCamera2DeviceInterface = camera2DeviceInterface;
                    }
                    if (ProducerImpl.this.mCamera2DeviceInterface == null || ProducerImpl.this.mSubCamera2DeviceInterface == null) {
                        return;
                    }
                }
                if (this.mHandler != null) {
                    this.mHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DefaultCameraStateCallbackAdapter.this.mCameraStateCallbackAdapter.onCameraOpened(ProducerImpl.this);
                        }
                    });
                } else {
                    this.mCameraStateCallbackAdapter.onCameraOpened(ProducerImpl.this);
                }
                CustomParameterConverter.init();
                PreviewParameter.init();
                Util.initScreenHeightWidth();
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
        public void onCameraDisconnected() {
            super.onCameraDisconnected();
            CameraUnitLog.v(ProducerImpl.TAG, "onCameraDisconnected");
            if (this.mHandler != null) {
                this.mHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultCameraStateCallbackAdapter.this.mCameraStateCallbackAdapter.onCameraDisconnected();
                    }
                });
            } else {
                this.mCameraStateCallbackAdapter.onCameraDisconnected();
            }
            ProducerImpl.this.mConsumerInterface.onCameraDisconnected();
            ProducerImpl.this.mDefaultCameraStateCallbackAdapter = null;
            ProducerImpl.this.mbTakingPicture = false;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
        public void onCameraError(final ErrorResult errorResult) {
            super.onCameraError(errorResult);
            StringBuilder sb = new StringBuilder();
            sb.append("onCameraError, error result: ");
            sb.append(errorResult != null ? errorResult.toString() : "");
            CameraUnitLog.e(ProducerImpl.TAG, sb.toString());
            synchronized (ProducerImpl.this.mDeviceLock) {
                ProducerImpl.this.mCamera2DeviceInterface = null;
                ProducerImpl.this.mSubCamera2DeviceInterface = null;
                ProducerImpl.this.mDefaultCameraStateCallbackAdapter = null;
            }
            if (this.mHandler != null) {
                this.mHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultCameraStateCallbackAdapter.this.mCameraStateCallbackAdapter.onCameraError(errorResult);
                    }
                });
            } else {
                this.mCameraStateCallbackAdapter.onCameraError(errorResult);
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
        public void onCameraClosed() {
            super.onCameraClosed();
            synchronized (ProducerImpl.this.mDeviceLock) {
                if (!ProducerImpl.this.mbManageMultiDevice || ProducerImpl.this.mCamera2DeviceInterface == null || ProducerImpl.this.mSubCamera2DeviceInterface == null || (ProducerImpl.this.mCamera2DeviceInterface.isClosed() && ProducerImpl.this.mSubCamera2DeviceInterface.isClosed())) {
                    ProducerImpl.this.mConsumerInterface.onCameraClosed();
                    ProducerImpl.this.mCamera2DeviceInterface = null;
                    ProducerImpl.this.mSubCamera2DeviceInterface = null;
                    if (this.mHandler != null) {
                        this.mHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.4
                            @Override // java.lang.Runnable
                            public void run() {
                                DefaultCameraStateCallbackAdapter.this.mCameraStateCallbackAdapter.onCameraClosed();
                            }
                        });
                    } else {
                        this.mCameraStateCallbackAdapter.onCameraClosed();
                    }
                }
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
        public void onSessionConfigured(ConfigInfoPkg configInfoPkg) {
            super.onSessionConfigured(configInfoPkg);
            ProducerImpl.this.mConfigureSig.open();
            if (configInfoPkg == null) {
                return;
            }
            ProducerImpl.this.mbSessionConfigured = true;
            ProducerImpl.this.updateSensorRegistrationStatus(ProducerImpl.this.mCurrentMode.getSensorType());
            configInfoPkg.mApsRequestTag.mSensorManagerClient = ProducerImpl.this.getSensorManagerClient();
            ProducerImpl.this.mConsumerInterface.onSessionConfigured(configInfoPkg);
            CameraUnitLog.d(ProducerImpl.TAG, "onSessionConfigured");
            synchronized (ProducerImpl.this.mDeviceLock) {
                if (ProducerImpl.this.mbManageMultiDevice) {
                    ProducerImpl.access$1508(ProducerImpl.this);
                    if ((ProducerImpl.this.mCamera2DeviceInterface != null && !ProducerImpl.this.mCamera2DeviceInterface.isConfigured()) || ((ProducerImpl.this.mSubCamera2DeviceInterface != null && !ProducerImpl.this.mSubCamera2DeviceInterface.isConfigured()) || ProducerImpl.this.mConfigureCallbackCount < 2)) {
                        CameraUnitLog.d(ProducerImpl.TAG, "onSessionConfigured, has configured count: " + ProducerImpl.this.mConfigureCallbackCount + ", need wait: " + (2 - ProducerImpl.this.mConfigureCallbackCount) + " count");
                        return;
                    }
                }
                if (this.mHandler != null) {
                    this.mHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.5
                        @Override // java.lang.Runnable
                        public void run() {
                            DefaultCameraStateCallbackAdapter.this.mCameraStateCallbackAdapter.onSessionConfigured();
                        }
                    });
                } else {
                    this.mCameraStateCallbackAdapter.onSessionConfigured();
                }
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
        public void onSessionConfigureFail(final ErrorResult errorResult) {
            super.onSessionConfigureFail(errorResult);
            ProducerImpl.this.mConfigureSig.open();
            StringBuilder sb = new StringBuilder();
            sb.append("onSessionConfigureFail, error result: ");
            sb.append(errorResult != null ? errorResult.toString() : "");
            CameraUnitLog.e(ProducerImpl.TAG, sb.toString());
            if (this.mHandler != null) {
                this.mHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.6
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultCameraStateCallbackAdapter.this.mCameraStateCallbackAdapter.onSessionConfigureFail(errorResult);
                    }
                });
            } else {
                this.mCameraStateCallbackAdapter.onSessionConfigureFail(errorResult);
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter
        public void onSessionClosed() {
            super.onSessionClosed();
            ProducerImpl.this.updateSensorRegistrationStatus(0);
            ProducerImpl.this.mConsumerInterface.onSessionClosed();
            ProducerImpl.this.setCameraState(0);
            ProducerImpl.this.mbSessionConfigured = false;
            ProducerImpl.access$1608(ProducerImpl.this);
            if (ProducerImpl.this.mCloseSessionCallBackCount >= (ProducerImpl.this.mbManageMultiDevice ? 2 : 1)) {
                if (this.mHandler != null) {
                    this.mHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.7
                        @Override // java.lang.Runnable
                        public void run() {
                            DefaultCameraStateCallbackAdapter.this.mCameraStateCallbackAdapter.onSessionClosed();
                        }
                    });
                } else {
                    this.mCameraStateCallbackAdapter.onSessionClosed();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class DefaultFlashCallbackAdapter extends CameraFlashCallbackAdapter {
        CameraFlashCallbackAdapter mCameraFlashCallbackAdapter;
        Handler mCameraFlashCallbackHandler;

        public DefaultFlashCallbackAdapter(@NonNull CameraFlashCallbackAdapter cameraFlashCallbackAdapter, @Nullable Handler handler) {
            this.mCameraFlashCallbackAdapter = null;
            this.mCameraFlashCallbackHandler = null;
            if (cameraFlashCallbackAdapter == null) {
                throw new IllegalArgumentException("callbackAdapter is not allowed to null!");
            }
            this.mCameraFlashCallbackAdapter = cameraFlashCallbackAdapter;
            this.mCameraFlashCallbackHandler = handler;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraFlashCallbackAdapter
        public void onFlashModeSupportListChanged(final List<String> list) {
            if (this.mCameraFlashCallbackHandler != null) {
                this.mCameraFlashCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.DefaultFlashCallbackAdapter.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultFlashCallbackAdapter.this.mCameraFlashCallbackAdapter.onFlashModeSupportListChanged(list);
                    }
                });
            } else {
                this.mCameraFlashCallbackAdapter.onFlashModeSupportListChanged(list);
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraFlashCallbackAdapter
        public void onFlashModeChanged(final String str) {
            if (this.mCameraFlashCallbackHandler != null) {
                this.mCameraFlashCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.ProducerImpl.DefaultFlashCallbackAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultFlashCallbackAdapter.this.mCameraFlashCallbackAdapter.onFlashModeChanged(str);
                    }
                });
            } else {
                this.mCameraFlashCallbackAdapter.onFlashModeChanged(str);
            }
        }
    }
}
