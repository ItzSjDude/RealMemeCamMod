package com.oplus.ocs.camera.producer;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.os.ConditionVariable;
import android.os.Handler;
import android.text.TextUtils;
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
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
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
import com.oplus.ocs.camera.common.util.PlatformUtil;
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
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ProducerImpl implements CameraDeviceInterface, ProducerConsumerInterfaceContract.ProducerInterface {
    private static final int DELAY_TO_AVOID_FRAMEWORK_CONFLICT = 50;
    private static final String TAG = "ProducerImpl";
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

    static /* synthetic */ int access$1308(ProducerImpl producerImpl) {
        int i = producerImpl.mConfigureCallbackCount;
        producerImpl.mConfigureCallbackCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$1408(ProducerImpl producerImpl) {
        int i = producerImpl.mCloseSessionCallBackCount;
        producerImpl.mCloseSessionCallBackCount = i + 1;
        return i;
    }

    public ProducerImpl(boolean z) {
        this.mbManageMultiDevice = false;
        this.mbManageMultiDevice = z;
        CameraUnitLog.e(TAG, "ProducerImpl, classloader: " + getClass().getClassLoader());
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
        PreviewParameter.Builder builder = this.mAllStageParameterBuilder;
        if (builder != null) {
            builder.clear();
        } else {
            this.mAllStageParameterBuilder = new PreviewParameter.Builder();
        }
        PreviewParameter.Builder builder2 = this.mSubAllStageParameterBuilder;
        if (builder2 != null) {
            builder2.clear();
        } else {
            this.mSubAllStageParameterBuilder = new PreviewParameter.Builder();
        }
        ModeInterface mode = ModeFactory.getMode(sdkCameraDeviceConfig.getModeName());
        ModeInterface modeInterface = this.mCurrentMode;
        if (modeInterface != null && !modeInterface.equals(mode)) {
            CameraUnitLog.d(TAG, "configure, mode change, uninit last mode");
            this.mCurrentMode.unInit();
        }
        this.mCurrentMode = mode;
        this.mCurrentMode.setRearFrontCameraId(CameraCharacteristicsHelper.isFrontCamera(
                CameraCharacteristicsHelper.getCameraIdType(this.mCamera2DeviceInterface.getCameraType()).getCameraId())
                        ? 1
                        : 0);
        this.mCaptureSig.open();
        CameraUnitLog.d(TAG,
                "configure, modeName: " + sdkCameraDeviceConfig.getModeName() + ", mCurrentMode: " + this.mCurrentMode);
        CameraConfigHelper.blockApsConfigIfNeeded();
        if (this.mbManageMultiDevice) {
            this.mConfigureCallbackCount = 0;
            int i = 0;
            for (Map.Entry<String, SdkCameraDeviceConfig> entry : sdkCameraDeviceConfig.split().entrySet()) {
                String key = entry.getKey();
                SdkCameraDeviceConfig value = entry.getValue();
                updateReportedCameraId(key, value);
                this.mConfigureSig.close();
                CameraUnitLog.d(TAG,
                        "configure, count: " + i + ", mConfigureCallbackCount: " + this.mConfigureCallbackCount);
                if (i > 0 && this.mConfigureCallbackCount < i) {
                    this.mConfigureSig.block();
                }
                i++;
                if ("rear_main".equals(key)) {
                    configureSession(value, this.mAllStageParameterBuilder, this.mCamera2DeviceInterface, 0);
                } else {
                    configureSession(value, this.mSubAllStageParameterBuilder, this.mSubCamera2DeviceInterface, 50);
                }
            }
        } else {
            configureSession(sdkCameraDeviceConfig, this.mAllStageParameterBuilder, this.mCamera2DeviceInterface, 0);
        }
        CameraUnitLog.traceEndSection("CameraUnitProducerImplConfigure");
    }

    private void configureSession(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig,
            @NonNull PreviewParameter.Builder builder, @NonNull Camera2DeviceInterface camera2DeviceInterface, int i) {
        CameraSessionEntity configure = this.mCurrentMode.configure(sdkCameraDeviceConfig,
                camera2DeviceInterface.getCameraType());
        if (configure == null) {
            if (this.mDefaultCameraStateCallbackAdapter != null) {
                this.mDefaultCameraStateCallbackAdapter.onSessionConfigureFail(ErrorResult.PARAMETER_ERROR);
            }
            CameraUnitLog.e(TAG, "configureSession, fail");
            return;
        }
        int operationMode = configure.getOperationMode();
        Size appSurfaceSize = sdkCameraDeviceConfig.getDefaultPreviewSurface().getAppSurfaceSize();
        builder.set(ConfigureParameter.KEY_CONFIGURE_OPERATION_MODE, String.valueOf(operationMode));
        builder.set(ConfigureParameter.KEY_CONFIGURE_STREAM_SIZE, appSurfaceSize);
        if (sdkCameraDeviceConfig.getConfigureParameter() != null && !TextUtils.isEmpty(
                (CharSequence) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.VIDEO_FPS))) {
            builder.set(ConfigureParameter.VIDEO_FPS,
                    ((String) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.VIDEO_FPS)));
        }
        CameraUnitLog.e(TAG,
                "configureSession, operationMode: " + operationMode + ", hex value: 0x"
                        + Integer.toHexString(operationMode) + ", defaultPreviewSize: " + appSurfaceSize.getWidth()
                        + "x" + appSurfaceSize.getHeight());
        Parameter buildStageParameter = buildStageParameter(Parameter.ParameterStage.CONFIGURE,
                camera2DeviceInterface.getCameraType(), builder, null);
        configure.setDelay(i);
        camera2DeviceInterface.configure(configure, buildStageParameter);
    }

    public void setCameraState(int i) {
        CameraUnitLog.v(TAG, "setCameraState, state: " + this.mCameraState + "->" + i);
        this.mCameraState = i;
    }

    public void setApsFinishAddFrame(boolean z) {
        CameraUnitLog.e(TAG, "setApsFinishAddFrame, mbApsFinishAddFrame: " + this.mbApsFinishAddFrame + "->" + z);
        this.mbApsFinishAddFrame = z;
    }

    private void updateReportedCameraId(@NonNull String str, @NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        Size appSurfaceSize = sdkCameraDeviceConfig.getDefaultPreviewSurface().getAppSurfaceSize();
        Size size = this.mSurfaceSizeTemp;
        if (size == null) {
            this.mSurfaceSizeTemp = appSurfaceSize;
            return;
        }
        if (Util.compareSize(appSurfaceSize, size) > 0 && "rear_main".equals(str)) {
            StatisticsManager.getInstance().setCameraId(1, "rear_main_front_main");
        } else {
            StatisticsManager.getInstance().setCameraId(0, "rear_main_front_main");
        }
        this.mSurfaceSizeTemp = null;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void setParameter(@NonNull String str, Object obj) {
        PreviewParameter.Builder builder = this.mAllStageParameterBuilder;
        if (builder == null) {
            CameraUnitLog.e(TAG, "setParameter, mPreviewParameterBuilder is null!");
        } else {
            builder.set(str, obj);
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
                this.mAllStageParameterBuilder.set(key, t);
                return;
            } else {
                this.mSubAllStageParameterBuilder.set(key, t);
                return;
            }
        }
        setParameter(key, t);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public <T> void setParameter(@NonNull CaptureRequest.Key<T> key, T t) {
        PreviewParameter.Builder builder = this.mAllStageParameterBuilder;
        if (builder == null) {
            CameraUnitLog.e(TAG, "setParameter, mPreviewParameterBuilder is null!");
        } else {
            builder.set(key, t);
        }
    }

    private Parameter buildStageParameter(String str, String str2, @NonNull PreviewParameter.Builder builder,
            @Nullable CameraRequestTag cameraRequestTag) {
        this.mCurrentMode.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        Parameter build = builder.build();
        this.mCurrentMode.updateStageParameter(build, str, str2, cameraRequestTag);
        return build;
    }

    /*
     * JADX WARN: Code restructure failed: missing block: B:64:0x018d, code lost:
     * if (r1[0] == 1) goto L72;
     */
    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void startPreview(Map<String, Surface> map, CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter,
            Handler handler) {
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
        if (camera2DeviceInterface == null || (this.mbManageMultiDevice && camera2DeviceInterface2 == null)
                || this.mCurrentMode == null) {
            CameraUnitLog.e(TAG, "startPreview, invalid state, mCamera2DeviceInterface: " + camera2DeviceInterface
                    + ", mCurrentMode: " + this.mCurrentMode);
            return;
        }
        if (this.mbManageMultiDevice) {
            if (map == null || map.isEmpty()) {
                throw new IllegalArgumentException("preview surface are not allowed null in multi device!");
            }
            for (Map.Entry<String, Surface> entry : map.entrySet()) {
                Camera2DeviceInterface camera2DeviceInterface3 = "rear_main".equals(entry.getKey())
                        ? camera2DeviceInterface
                        : camera2DeviceInterface2;
                PreviewParameter.Builder builder = "rear_main".equals(entry.getKey()) ? this.mAllStageParameterBuilder
                        : this.mSubAllStageParameterBuilder;
                CameraRequestTag createRequestTag = this.mCurrentMode.createRequestTag(entry.getKey(),
                        cameraPreviewCallbackAdapter, handler, "start_preview", builder);
                createRequestTag.mConsumerInterface = this.mConsumerInterface;
                if (entry.getValue() != null) {
                    createRequestTag.mAddTargetSurfaces.put(
                            new SurfaceKey(camera2DeviceInterface3.getCameraType(), "surface_key_preview", 0),
                            entry.getValue());
                }
                if (("front_main".equals(entry.getKey()) || "front_wide".equals(entry.getKey()))
                        && "multi_camera_mode".equals(createRequestTag.mCaptureMode) && 1 == this.mCameraState
                        && Util.isSystemCamera()) {
                    return;
                }
                camera2DeviceInterface3.startPreview(createRequestTag,
                        buildStageParameter("start_preview", entry.getKey(), builder, createRequestTag));
            }
        } else {
            String cameraType = camera2DeviceInterface.getCameraType();
            CameraRequestTag createRequestTag2 = this.mCurrentMode.createRequestTag(cameraType,
                    cameraPreviewCallbackAdapter, handler, "start_preview", this.mAllStageParameterBuilder);
            createRequestTag2.mConsumerInterface = this.mConsumerInterface;
            Parameter buildStageParameter = buildStageParameter("start_preview", cameraType,
                    this.mAllStageParameterBuilder, createRequestTag2);
            CameraUnitLog.d(TAG, "startPreview, tag hashCode: " + createRequestTag2.hashCode());
            if (map != null) {
                for (Surface surface : map.values()) {
                    createRequestTag2.mAddTargetSurfaces.put(new SurfaceKey(cameraType, "surface_key_preview", 35),
                            surface);
                }
            }
            int[] iArr = (int[]) buildStageParameter.get(PreviewParameter.KEY_TRIPOD_MODE);
            createRequestTag2.mbTripodEnable = iArr != null && iArr[0] == 1;
            checkFlashModeConflict(buildStageParameter, camera2DeviceInterface);
            camera2DeviceInterface.startPreview(createRequestTag2, buildStageParameter);
            CameraRequestTag cameraRequestTag = this.mCurrentCaptureRequestTag;
            if (cameraRequestTag != null) {
                cameraRequestTag.mbRepeatingRequestCapture = false;
            }
            CameraRequestTag cameraRequestTag2 = this.mCurrentPreviewRequestTag;
            if (cameraRequestTag2 != null) {
                cameraRequestTag2.mbLongExposureCaptureEnable = false;
            }
            this.mCurrentPreviewRequestTag = createRequestTag2;
        }
        CameraUnitLog.traceEndSection("CameraUnitProducerImplStartPreview");
    }

    private void checkFlashModeConflict(Parameter parameter, Camera2DeviceInterface camera2DeviceInterface) {
        if (parameter == null || camera2DeviceInterface == null
                || !parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
            return;
        }
        Float f = (Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO);
        boolean equals = "rear_sat".equals(camera2DeviceInterface.getCameraType());
        boolean z = false;
        Boolean bool = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FLASH_WIDE_TEL_SUPPORT, false);
        if (!equals || bool.booleanValue()) {
            return;
        }
        CameraDeviceInfoInterface cameraDeviceInfo = this.mCurrentMode
                .getCameraDeviceInfo(camera2DeviceInterface.getCameraType());
        List list = (List) cameraDeviceInfo
                .getPreviewParameterRange(PreviewParameter.KEY_SAT_CAMERA_NONE_ZOOM_RATIO.getName());
        if (list != null && list.size() >= 2 && (f.floatValue() < ((Float) list.get(1)).floatValue()
                || (list.size() == 3 && f.floatValue() >= ((Float) list.get(2)).floatValue()))) {
            z = true;
        }
        if (z) {
            parameter.set(PreviewParameter.KEY_FLASH_MODE, "off");
            ArrayList arrayList = new ArrayList();
            arrayList.add("off");
            DefaultFlashCallbackAdapter defaultFlashCallbackAdapter = this.mDefaultFlashCallbackAdapter;
            if (defaultFlashCallbackAdapter != null) {
                defaultFlashCallbackAdapter.onFlashModeChanged("off");
                this.mDefaultFlashCallbackAdapter.onFlashModeSupportListChanged(arrayList);
                return;
            }
            return;
        }
        List<String> list2 = (List) cameraDeviceInfo
                .getPreviewParameterRange(PreviewParameter.KEY_FLASH_MODE.getName());
        DefaultFlashCallbackAdapter defaultFlashCallbackAdapter2 = this.mDefaultFlashCallbackAdapter;
        if (defaultFlashCallbackAdapter2 != null) {
            defaultFlashCallbackAdapter2.onFlashModeChanged((String) parameter.get(PreviewParameter.KEY_FLASH_MODE));
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
        PreviewParameter.Builder builder = this.mAllStageParameterBuilder;
        if (builder == null) {
            CameraUnitLog.d(TAG, "isAiEnhancementVideoOpen, mAllStageParameterBuilder is null");
            return false;
        }
        Object obj = builder.get(ConfigureParameter.AI_NIGHT_VIDEO_MODE);
        return obj != null && 1 == ((Integer) obj).intValue();
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public boolean isPreviewInPreviewOn() {
        ModeInterface modeInterface = this.mCurrentMode;
        if (modeInterface != null) {
            return modeInterface.isPreviewInPreviewOn();
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public void onReprocess(Image image, TotalCaptureResult totalCaptureResult, Rect rect,
            CameraRequestTag cameraRequestTag) {
        if (image == null || totalCaptureResult == null || cameraRequestTag == null) {
            if (cameraRequestTag != null) {
                CameraUnitLog.e(TAG, "onReprocess, failed");
                handleCaptureFailed(cameraRequestTag.mUserCallbackHandler,
                        (CameraPictureCallbackAdapter) cameraRequestTag.mCallback);
            }
        } else if (this.mCamera2DeviceInterface != null) {
            CameraUnitLog.d(TAG, "onReprocess, image: " + image + ", rect: " + rect);
            if (cameraRequestTag.mbLongExposureCaptureEnable) {
                cameraRequestTag = (CameraRequestTag) cameraRequestTag.clone();
            }
            CameraRequestTag cameraRequestTag2 = cameraRequestTag;
            cameraRequestTag2.setRequestMode(CameraRequestTag.RequestMode.CAPTURE_REPROCESS);
            Parameter buildStageParameter = buildStageParameter(Parameter.ParameterStage.BEFORE_TAKE_PICTURE,
                    this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder, cameraRequestTag2);
            cameraRequestTag2.mRequestNum = 1;
            cameraRequestTag2.mCaptureEvList = null;
            cameraRequestTag2.mbInNightProcess = false;
            cameraRequestTag2.mAddTargetSurfaces.clear();
            if ("rear_sat".equals(cameraRequestTag2.mCameraType)) {
                if (this.mCamera2DeviceInterface.getSupportWrapper("surface_key_reprocess_yuv", "rear_sat",
                        cameraRequestTag2.mRequestFormat)) {
                    cameraRequestTag2.mAddTargetSurfaces.put(
                            new SurfaceKey("rear_sat", "surface_key_reprocess_yuv", cameraRequestTag2.mRequestFormat),
                            null);
                } else {
                    cameraRequestTag2.mAddTargetSurfaces.put(
                            new SurfaceKey("rear_main", "surface_key_picture", cameraRequestTag2.mRequestFormat), null);
                    cameraRequestTag2.mAddTargetSurfaces.put(
                            new SurfaceKey("rear_wide", "surface_key_picture", cameraRequestTag2.mRequestFormat), null);
                    cameraRequestTag2.mAddTargetSurfaces.put(
                            new SurfaceKey("rear_tele", "surface_key_picture", cameraRequestTag2.mRequestFormat), null);
                }
            } else {
                cameraRequestTag2.mAddTargetSurfaces.put(new SurfaceKey(this.mCamera2DeviceInterface.getCameraType(),
                        cameraRequestTag2.mbUseMFNRSize ? "surface_key_picture_mfnr" : "surface_key_picture",
                        cameraRequestTag2.mRequestFormat), null);
            }
            this.mCamera2DeviceInterface.reprocessImage(image, totalCaptureResult, rect, cameraRequestTag2,
                    buildStageParameter);
        }
    }

    private void discardUselessBuffer(CameraRequestTag cameraRequestTag) {
        for (SurfaceKey surfaceKey : cameraRequestTag.mUselessTargetSurfaces.keySet()) {
            if ("surface_key_picture".equals(surfaceKey.getUsage())) {
                CameraUnitLog.v(TAG, "discardUselessBuffer, surfaceKey: " + surfaceKey);
                ImageReader imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
                if (imageReader != null && imageReader.getSurface() != null && imageReader.getSurface().isValid()) {
                    imageReader.discardFreeBuffers();
                }
            }
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void takePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler) {
        if (this.mCamera2DeviceInterface != null) {
            synchronized (this.mPreviewResultLock) {
                CameraRequestTag createRequestTag = this.mCurrentMode.createRequestTag(
                        this.mCamera2DeviceInterface.getCameraType(), cameraPictureCallbackAdapter, handler,
                        Parameter.ParameterStage.BEFORE_TAKE_PICTURE, this.mAllStageParameterBuilder);
                discardUselessBuffer(createRequestTag);
                createRequestTag.mbStopPreviewAfterCapture = this.mbStopPreviewAfterCapture;
                this.mCurrentCaptureRequestTag = createRequestTag;
                if (createRequestTag.mbLongExposureCaptureEnable) {
                    this.mCurrentPreviewRequestTag.mbLongExposureCaptureEnable = true;
                }
                createRequestTag.mConsumerInterface = this.mConsumerInterface;
                boolean z = createRequestTag.mbBurstShot
                        && CameraCharacteristicsHelper.isSupportCShot(createRequestTag.mCameraType);
                int isAllowedToTakePicture = this.mCurrentMode.isAllowedToTakePicture(cameraPictureCallbackAdapter,
                        handler, createRequestTag);
                if (isAllowedToTakePicture == 0 && !this.mConsumerInterface.isApsCaptureAlgoInitializing()
                        && (this.mbApsFinishAddFrame || z)) {
                    if (this.mCurrentMode.isNeedAPSProcess()) {
                        setApsFinishAddFrame(false);
                        setApsFinishProcessFrame(false);
                        this.mbTakingPicture = true;
                    }
                    setCameraState(2);
                    this.mCaptureSig.close();
                    Parameter buildStageParameter = buildStageParameter(Parameter.ParameterStage.BEFORE_TAKE_PICTURE,
                            this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder,
                            createRequestTag);
                    this.mConsumerInterface.startCapture(createRequestTag);
                    ImageCategory.MetaItemInfo metaItemInfo = new ImageCategory.MetaItemInfo();
                    if (createRequestTag.mbFaceRectifyOpen && !createRequestTag.mbBurstShot
                            && !AlgoSwitchConfig.isUseApsDecision()) {
                        CameraUnitLog.i(TAG,
                                "takePicture, joinAppAndHalAlgoFlag ALGO_NAME_FACE_RECTIFY : " + Arrays.toString(Util
                                        .joinAppAndHalAlgoFlag(new String[] { ParameterKeys.ALGO_NAME_FACE_RECTIFY },
                                                createRequestTag.mApsAlgoFlags)));
                        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_ALGO_LIST, Util.joinAppAndHalAlgoFlag(
                                new String[] { ParameterKeys.ALGO_NAME_FACE_RECTIFY }, createRequestTag.mApsAlgoFlags));
                    } else {
                        CameraUnitLog.i(TAG, "takePicture, KEY_CAPTURE_ALGO_LIST : "
                                + Arrays.toString(createRequestTag.mApsAlgoFlags));
                        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_ALGO_LIST, createRequestTag.mApsAlgoFlags);
                    }
                    metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_SCENE,
                            Integer.valueOf(createRequestTag.mApsDecisionSceneMode));
                    metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_FEATURE_TYPE,
                            Integer.valueOf(createRequestTag.mApsDecisionFeatureType));
                    this.mConsumerInterface.beforeCapture(metaItemInfo);
                    if (this.mCurrentMode.isSupportVideoSnapShot(this.mCamera2DeviceInterface.getCameraType())) {
                        createRequestTag.mAppOpaqueObj = buildStageParameter.get(PreviewParameter.KEY_REQUEST_TAG);
                        CameraUnitLog.d(TAG, "takePicture, is video snap shot.");
                        if (this.mCurrentMode.isVideoSnapShotByAps(this.mCamera2DeviceInterface.getCameraType())) {
                            ApsCameraRequestTag apsCameraRequestTag = new ApsCameraRequestTag();
                            apsCameraRequestTag.mbFrontCamera = CameraCharacteristicsHelper
                                    .isFrontCamera(createRequestTag.mRearFrontCameraId);
                            apsCameraRequestTag.mbQcom = PlatformUtil.isQualcommPlatform();
                            apsCameraRequestTag.mbPIAI = false;
                            apsCameraRequestTag.mTag = createRequestTag;
                            if (!createRequestTag.mApsRequestTag.mPreviewSize
                                    .equals(createRequestTag.mApsRequestTag.mInputVideoSize)) {
                                createRequestTag.mUpScaleOutputSize = new int[] {
                                        createRequestTag.mApsRequestTag.mInputVideoSize.getWidth(),
                                        createRequestTag.mApsRequestTag.mInputVideoSize.getHeight() };
                            }
                            createRequestTag.mConsumerInterface.videoSnapshot(apsCameraRequestTag);
                            if (createRequestTag.mApsRequestTag != null
                                    && !createRequestTag.mApsRequestTag.mbPreviewProcessByAps) {
                                createRequestTag.mApsRequestTag.mVideoSnapShotTimeStamp = System.currentTimeMillis();
                                createRequestTag.mApsRequestTag.mbNeedSendVideoSnapShotImage = true;
                                createRequestTag.mApsRequestTag.mbNeedSendVideoSnapShotMeta = true;
                            }
                        } else {
                            this.mCamera2DeviceInterface.videoSnapshot(createRequestTag, buildStageParameter);
                        }
                    } else {
                        CameraUnitLog.v(TAG, "takePicture, mbSuperTextOpen: " + createRequestTag.mbSuperTextOpen
                                + ", mSuperTextVertices:" + createRequestTag.mSuperTextVertices);
                        if (createRequestTag.mbSuperTextOpen) {
                            this.mAllStageParameterBuilder.remove(PreviewParameter.KEY_SUPER_TEXT_VERTICES);
                        }
                        this.mCamera2DeviceInterface.takePicture(createRequestTag, buildStageParameter);
                    }
                    return;
                }
                CameraUnitLog.e(TAG,
                        "takePicture, not allow take picture, mbApsFinishAddFrame: " + this.mbApsFinishAddFrame
                                + ", isApsCaptureAlgoInitializing: "
                                + this.mConsumerInterface.isApsCaptureAlgoInitializing() + ", checkResult: "
                                + isAllowedToTakePicture + ", isCShot: " + z);
                if (!this.mbApsFinishAddFrame) {
                    StatisticsManager.getInstance()
                            .reportFunctionalError(StatisticConstant.FunctionalErrorKeys.KEY_CAPTURE_FAILED, 3);
                }
                if (2 != isAllowedToTakePicture) {
                    handleCaptureFailed(handler, cameraPictureCallbackAdapter);
                }
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
            this.mConsumerInterface.abortCaptures();
            setApsFinishAddFrame(true);
            setApsFinishProcessFrame(true);
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
            CameraRequestTag createRequestTag = this.mCurrentMode.createRequestTag(
                    this.mCamera2DeviceInterface.getCameraType(), cameraRecordingCallbackAdapter, handler,
                    Parameter.ParameterStage.START_RECORDING, this.mAllStageParameterBuilder);
            createRequestTag.mConsumerInterface = this.mConsumerInterface;
            this.mCamera2DeviceInterface.startRecording(createRequestTag,
                    buildStageParameter(Parameter.ParameterStage.START_RECORDING,
                            this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder,
                            createRequestTag));
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
            this.mCamera2DeviceInterface.stopRecording(buildStageParameter(Parameter.ParameterStage.STOP_RECORDING,
                    this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder, null));
        }
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void close(boolean z) {
        CameraUnitLog.d(TAG, "close, sync: " + z + ", mbTakingPicture: " + this.mbTakingPicture);
        close(z, true);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void close(boolean z, boolean z2) {
        boolean z3 = z2 && !(isApsFinishAddFrame() && this.mbApsFinishProcessFrame)
                && this.mCurrentMode.delayCloseForCapturTime() > 0;
        CameraUnitLog.d(TAG, "close, sync: " + z + ", mbTakingPicture: " + this.mbTakingPicture + ", needDelay: " + z3);
        if (z3) {
            this.mCaptureSig.block(this.mCurrentMode.delayCloseForCapturTime());
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
        metaItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP,
                (Long) captureResult.get(CaptureResult.SENSOR_TIMESTAMP));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAMERA_ID, String.valueOf(i));
        metaItemInfo.setParameter(ParameterKeys.KEY_LOGIC_CAMERA_ID, Integer.valueOf(i2));
        metaItemInfo.setParameter(ParameterKeys.KEY_ORIENTATION, Integer.valueOf(i3));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_ALGO_LIST,
                new String[] { ParameterKeys.ALGO_NAME_FACE_RECTIFY });
        PreviewParameter.Builder builder = this.mAllStageParameterBuilder;
        if (builder != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_ZOOM_RATIO,
                    String.valueOf(builder.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)
                            ? ((Float) this.mAllStageParameterBuilder.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue()
                            : 1.0f));
        }
        return this.mConsumerInterface.processBitmap(bitmap, captureResult, metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void updateThumbnailMap(long j) {
        this.mConsumerInterface.updateThumbnailMap(j);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public boolean notifyLastCaptureFrame() {
        ImageCategory.ImageItemInfo imageItemInfo = new ImageCategory.ImageItemInfo();
        ImageCategory.MetaItemInfo metaItemInfo = new ImageCategory.MetaItemInfo();
        if (this.mCurrentCaptureRequestTag != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_IMAGE_FORMAT,
                    Integer.valueOf(this.mCurrentCaptureRequestTag.mRequestFormat));
        }
        return this.mConsumerInterface.notifyLastCaptureFrame(imageItemInfo, metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public void setStopPreviewAfterCapture(boolean z) {
        this.mbStopPreviewAfterCapture = z;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInterface
    public boolean isPreviewProcessByAps() {
        ProducerConsumerInterfaceContract.ConsumerInterface consumerInterface = this.mConsumerInterface;
        if (consumerInterface != null) {
            return consumerInterface.isPreviewProcessByAps();
        }
        return true;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public CameraStateCallbackAdapter createCameraStateCallback(
            @NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, Handler handler) {
        if (this.mDefaultCameraStateCallbackAdapter == null) {
            CameraUnitLog.i(TAG, "createCameraStateCallback, no valid callback, create new");
            this.mDefaultCameraStateCallbackAdapter = new DefaultCameraStateCallbackAdapter(cameraStateCallbackAdapter,
                    handler);
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
        setApsFinishAddFrame(true);
        setCameraState(1);
        this.mbTakingPicture = false;
        this.mCaptureSig.open();
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public void onAfterProcessImage() {
        setApsFinishProcessFrame(true);
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
            } else {
                ModeInterface modeInterface = this.mCurrentMode;
                if (modeInterface == null) {
                    CameraUnitLog.e(TAG, "onPreviewResultReceived, mCurrentMode is null, return!");
                    return;
                }
                boolean needStartPreview = modeInterface.needStartPreview(previewResult);
                try {
                    if (this.mCamera2DeviceInterface != null && !this.mbManageMultiDevice) {
                        buildStageParameter(Parameter.ParameterStage.START_PREVIEW,
                                this.mCamera2DeviceInterface.getCameraType(), this.mAllStageParameterBuilder,
                                this.mCurrentPreviewRequestTag);
                    }
                    if (needStartPreview) {
                        startPreview(this.mPreviewSurfaces, this.mPreviewCallback, handler);
                    }
                } catch (Exception e) {
                    CameraUnitLog.e(TAG, "onPreviewResultReceived, start preview error.", e);
                }
            }
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ProducerInterface
    public boolean needMatchPreviewTimestamp(String str, CameraRequestTag cameraRequestTag,
            ApsAdapterDecision.DecisionResult decisionResult) {
        ModeInterface modeInterface = this.mCurrentMode;
        if (modeInterface != null) {
            return modeInterface.needMatchPreviewTimestamp(this.mCameraState, str, cameraRequestTag, decisionResult);
        }
        return false;
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
    public void setApsFinishProcessFrame(boolean z) {
        this.mbApsFinishProcessFrame = z;
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
                cameraPictureCallbackAdapter.onCaptureFailed((CaptureRequest) null,
                        (CameraPictureCallbackAdapter.PictureResult) null);
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

        DefaultCameraStateCallbackAdapter(@NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter,
                Handler handler) {
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
            ProducerImpl.this.setApsFinishAddFrame(true);
            ProducerImpl.this.setApsFinishProcessFrame(true);
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
                    if (ProducerImpl.this.mCamera2DeviceInterface == null
                            || ProducerImpl.this.mSubCamera2DeviceInterface == null) {
                        return;
                    }
                }
                Handler handler = this.mHandler;
                if (handler != null) {
                    handler.post(new Runnable() { // from class:
                                                  // com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DefaultCameraStateCallbackAdapter.this.mCameraStateCallbackAdapter
                                    .onCameraOpened(ProducerImpl.this);
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
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class:
                                              // com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.2
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
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class:
                                              // com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.3
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
                if (!ProducerImpl.this.mbManageMultiDevice || ProducerImpl.this.mCamera2DeviceInterface == null
                        || ProducerImpl.this.mSubCamera2DeviceInterface == null
                        || (ProducerImpl.this.mCamera2DeviceInterface.isClosed()
                                && ProducerImpl.this.mSubCamera2DeviceInterface.isClosed())) {
                    ProducerImpl.this.mConsumerInterface.onCameraClosed();
                    ProducerImpl.this.mCamera2DeviceInterface = null;
                    ProducerImpl.this.mSubCamera2DeviceInterface = null;
                    Handler handler = this.mHandler;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class:
                                                      // com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.4
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
            ProducerImpl producerImpl = ProducerImpl.this;
            producerImpl.updateSensorRegistrationStatus(producerImpl.mCurrentMode.getSensorType());
            configInfoPkg.mApsRequestTag.mSensorManagerClient = ProducerImpl.this.getSensorManagerClient();
            ProducerImpl.this.mConsumerInterface.onSessionConfigured(configInfoPkg);
            CameraUnitLog.d(ProducerImpl.TAG, "onSessionConfigured");
            synchronized (ProducerImpl.this.mDeviceLock) {
                if (ProducerImpl.this.mbManageMultiDevice) {
                    ProducerImpl.access$1308(ProducerImpl.this);
                    if ((ProducerImpl.this.mCamera2DeviceInterface != null
                            && !ProducerImpl.this.mCamera2DeviceInterface.isConfigured())
                            || ((ProducerImpl.this.mSubCamera2DeviceInterface != null
                                    && !ProducerImpl.this.mSubCamera2DeviceInterface.isConfigured())
                                    || ProducerImpl.this.mConfigureCallbackCount < 2)) {
                        CameraUnitLog.d(ProducerImpl.TAG,
                                "onSessionConfigured, has configured count: "
                                        + ProducerImpl.this.mConfigureCallbackCount + ", need wait: "
                                        + (2 - ProducerImpl.this.mConfigureCallbackCount) + " count");
                        return;
                    }
                }
                Handler handler = this.mHandler;
                if (handler != null) {
                    handler.post(new Runnable() { // from class:
                                                  // com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.5
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
            StatisticsManager.getInstance().reportAbnormalDisplay("abnormal_preview", 2);
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class:
                                              // com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.6
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultCameraStateCallbackAdapter.this.mCameraStateCallbackAdapter
                                .onSessionConfigureFail(errorResult);
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
            ProducerImpl.access$1408(ProducerImpl.this);
            if (ProducerImpl.this.mCloseSessionCallBackCount >= (ProducerImpl.this.mbManageMultiDevice ? 2 : 1)) {
                Handler handler = this.mHandler;
                if (handler != null) {
                    handler.post(new Runnable() { // from class:
                                                  // com.oplus.ocs.camera.producer.ProducerImpl.DefaultCameraStateCallbackAdapter.7
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

        public DefaultFlashCallbackAdapter(@NonNull CameraFlashCallbackAdapter cameraFlashCallbackAdapter,
                @Nullable Handler handler) {
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
            Handler handler = this.mCameraFlashCallbackHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class:
                                              // com.oplus.ocs.camera.producer.ProducerImpl.DefaultFlashCallbackAdapter.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultFlashCallbackAdapter.this.mCameraFlashCallbackAdapter
                                .onFlashModeSupportListChanged(list);
                    }
                });
            } else {
                this.mCameraFlashCallbackAdapter.onFlashModeSupportListChanged(list);
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraFlashCallbackAdapter
        public void onFlashModeChanged(final String str) {
            Handler handler = this.mCameraFlashCallbackHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class:
                                              // com.oplus.ocs.camera.producer.ProducerImpl.DefaultFlashCallbackAdapter.2
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
