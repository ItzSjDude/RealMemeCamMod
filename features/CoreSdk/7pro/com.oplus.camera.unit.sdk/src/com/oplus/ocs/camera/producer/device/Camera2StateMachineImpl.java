package com.oplus.ocs.camera.producer.device;

import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.os.ConditionVariable;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.util.CameraHandler;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ErrorResult;
/* loaded from: classes.dex */
public class Camera2StateMachineImpl implements Camera2StateMachineInterface {
    private static final String ACTION_START_RECORDING = "startRecording";
    private static final String ACTION_TAKE_PICTURE = "takePicture";
    private static final int MSG_CLOSE_CAMERA = 4;
    private static final int MSG_CLOSE_CAMERA_DEVICE = 5;
    private static final int MSG_CLOSE_CAPTURE_SESSION = 6;
    private static final int MSG_CREATE_CAPTURE_SESSION = 3;
    private static final int MSG_OPEN_CAMERA = 1;
    private static final int MSG_OPEN_CAMERA_DEVICE = 2;
    private static final int MSG_QUIT_REQUEST = 8;
    private static final int MSG_SET_REPEATING = 7;
    private static final int MSG_STOP_PREVIEW_AND_CLOSE_SESSION = 10;
    private static final int MSG_SWITCH_CAPTURE_SESSION = 9;
    private static final int OCCUPIED_DELAY_TIME = 100;
    private static final int STATE_DEVICE_CLOSED = 3;
    private static final int STATE_DEVICE_CLOSING = 2;
    private static final int STATE_DEVICE_OPENED = 1;
    private static final int STATE_DEVICE_OPENING = 0;
    private static final int STATE_PREVIEW_RECEIVING = 10;
    private static final int STATE_PREVIEW_REPEATING = 9;
    private static final int STATE_REQUEST_STOPPING = 11;
    private static final int STATE_SESSION_CLOSED = 8;
    private static final int STATE_SESSION_CLOSING = 7;
    private static final int STATE_SESSION_CONFIGURED = 5;
    private static final int STATE_SESSION_CONFIGURED_FAILED = 6;
    private static final int STATE_SESSION_CREATING = 4;
    private static final int SYNC_SIGNAL = 1;
    private static final String TAG = "Camera2StateMachineImpl";
    private CameraHandler mCallbackHandler;
    private Camera2Interface mCamera2Interface;
    private String mCameraName;
    private StateMachineHandler mControlHandler;
    private ConditionVariable mDecisionVariable;
    private final ConditionVariable mSyncVariable = new ConditionVariable();
    private int mCameraId = -1;
    private int mDeviceState = 3;
    private CameraStateCallbackAdapter mCameraStateCallbackAdapter = null;
    private Runnable mStopRecordingTask = null;
    private boolean mbEnabled = false;
    private CameraDevice.StateCallback mInnerCameraStateCallback = new CameraDevice.StateCallback() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.1
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(@NonNull CameraDevice cameraDevice) {
            if (Camera2StateMachineImpl.this.mCameraStateCallbackAdapter != null) {
                Camera2StateMachineImpl.this.mCameraStateCallbackAdapter.onCameraOpened(new Camera2DeviceImpl(Camera2StateMachineImpl.this));
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(@NonNull CameraDevice cameraDevice) {
            Camera2StateMachineImpl.this.mSyncVariable.open();
            Camera2StateMachineImpl.this.mControlHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.1.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Camera2StateMachineImpl.this.mDeviceState != 3 && Camera2StateMachineImpl.this.mDeviceState != 2) {
                        Camera2StateMachineImpl.this.setDeviceState(8);
                        Camera2StateMachineImpl.this.closeCameraAuto(false);
                        return;
                    }
                    CameraUnitLog.e(Camera2StateMachineImpl.TAG, "onDisconnected, device already closed or is closing, mDeviceState:" + Camera2StateMachineImpl.this.mDeviceState);
                }
            });
            if (Camera2StateMachineImpl.this.mCameraStateCallbackAdapter != null) {
                Camera2StateMachineImpl.this.mCameraStateCallbackAdapter.onCameraDisconnected();
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(@NonNull CameraDevice cameraDevice, int i) {
            CameraUnitLog.e(Camera2StateMachineImpl.TAG, "onError, ops, camera have some error, error code: " + i);
            if (Camera2StateMachineImpl.this.mCameraStateCallbackAdapter != null) {
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                String stackTraceElement = stackTrace.length < 3 ? "" : stackTrace[2].toString();
                CameraStateCallbackAdapter cameraStateCallbackAdapter = Camera2StateMachineImpl.this.mCameraStateCallbackAdapter;
                cameraStateCallbackAdapter.onCameraError(new ErrorResult(i, "camera device error, at: " + stackTraceElement));
            }
            if (i == 1) {
                Camera2StateMachineImpl.this.occupiedDelayReopen();
            } else {
                Camera2StateMachineImpl.this.closeCameraAuto(false);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(@NonNull CameraDevice cameraDevice) {
            CameraUnitLog.i(Camera2StateMachineImpl.TAG, "onClosed, camera: " + cameraDevice + ", mCameraStateCallbackAdapter: " + Camera2StateMachineImpl.this.mCameraStateCallbackAdapter);
            Camera2StateMachineImpl.this.setDeviceState(3);
            if (Camera2StateMachineImpl.this.mCameraStateCallbackAdapter != null) {
                Camera2StateMachineImpl.this.mCameraStateCallbackAdapter.onCameraClosed();
                Camera2StateMachineImpl.this.mCameraStateCallbackAdapter = null;
            }
        }
    };
    private final CameraCaptureSession.StateCallback mInnerSessionCallback = new CameraCaptureSession.StateCallback() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.2
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(@NonNull CameraCaptureSession cameraCaptureSession) {
            CameraStateCallbackAdapter cameraStateCallbackAdapter = Camera2StateMachineImpl.this.mCameraStateCallbackAdapter;
            if (cameraStateCallbackAdapter != null) {
                cameraStateCallbackAdapter.onSessionConfigured(Camera2StateMachineImpl.this.mCamera2Interface.getConfigInfo());
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(@NonNull CameraCaptureSession cameraCaptureSession) {
            CameraStateCallbackAdapter cameraStateCallbackAdapter = Camera2StateMachineImpl.this.mCameraStateCallbackAdapter;
            if (cameraStateCallbackAdapter != null) {
                cameraStateCallbackAdapter.onSessionConfigureFail(ErrorResult.STREAM_SURFACE_ERROR);
            }
            Camera2StateMachineImpl.this.setDeviceState(6);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onReady(@NonNull CameraCaptureSession cameraCaptureSession) {
            super.onReady(cameraCaptureSession);
            CameraStateCallbackAdapter cameraStateCallbackAdapter = Camera2StateMachineImpl.this.mCameraStateCallbackAdapter;
            if (cameraStateCallbackAdapter != null) {
                cameraStateCallbackAdapter.onReady();
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onActive(@NonNull CameraCaptureSession cameraCaptureSession) {
            super.onActive(cameraCaptureSession);
            CameraStateCallbackAdapter cameraStateCallbackAdapter = Camera2StateMachineImpl.this.mCameraStateCallbackAdapter;
            if (cameraStateCallbackAdapter != null) {
                cameraStateCallbackAdapter.onActive();
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onClosed(@NonNull CameraCaptureSession cameraCaptureSession) {
            super.onClosed(cameraCaptureSession);
            CameraStateCallbackAdapter cameraStateCallbackAdapter = Camera2StateMachineImpl.this.mCameraStateCallbackAdapter;
            if (cameraStateCallbackAdapter != null) {
                cameraStateCallbackAdapter.onSessionClosed();
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onCaptureQueueEmpty(@NonNull CameraCaptureSession cameraCaptureSession) {
            super.onCaptureQueueEmpty(cameraCaptureSession);
            CameraStateCallbackAdapter cameraStateCallbackAdapter = Camera2StateMachineImpl.this.mCameraStateCallbackAdapter;
            if (cameraStateCallbackAdapter != null) {
                cameraStateCallbackAdapter.onCaptureQueueEmpty();
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onSurfacePrepared(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull Surface surface) {
            super.onSurfacePrepared(cameraCaptureSession, surface);
            CameraStateCallbackAdapter cameraStateCallbackAdapter = Camera2StateMachineImpl.this.mCameraStateCallbackAdapter;
            if (cameraStateCallbackAdapter != null) {
                cameraStateCallbackAdapter.onSurfacePrepared(surface);
            }
        }
    };

    private String getDeviceStateLog(int i) {
        switch (i) {
            case 0:
                return "DEVICE_OPENING";
            case 1:
                return "DEVICE_OPENED";
            case 2:
                return "DEVICE_CLOSING";
            case 3:
                return "DEVICE_CLOSED";
            case 4:
                return "SESSION_CREATING";
            case 5:
                return "SESSION_CONFIGURED";
            case 6:
                return "SESSION_CONFIGURED_FAILED";
            case 7:
                return "SESSION_CLOSING";
            case 8:
                return "SESSION_CLOSED";
            case 9:
                return "PREVIEW_REPEATING";
            case 10:
                return "PREVIEW_RECEIVING";
            case 11:
                return "REQUEST_STOPPING";
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getHandlerMessageLog(int i) {
        switch (i) {
            case 1:
                return "OPEN_CAMERA";
            case 2:
                return "OPEN_CAMERA_DEVICE";
            case 3:
                return "CREATE_CAPTURE_SESSION";
            case 4:
                return "CLOSE_CAMERA";
            case 5:
                return "CLOSE_CAMERA_DEVICE";
            case 6:
                return "CLOSE_CAPTURE_SESSION";
            case 7:
                return "SET_REPEATING";
            case 8:
                return "QUIT_REQUEST";
            case 9:
                return "SWITCH_CAPTURE_SESSION";
            case 10:
                return "STOP_PREVIEW_AND_CLOSE_SESSION";
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCallback(MsgPackage msgPackage) {
        this.mCameraStateCallbackAdapter = msgPackage.mCameraStateCallbackAdapter;
        this.mCamera2Interface.setCallback(this.mInnerCameraStateCallback, this.mInnerSessionCallback, msgPackage.mPreviewCallback, msgPackage.mPictureCallback, msgPackage.mRecordingCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Camera2StateMachineImpl(String str) {
        this.mCameraName = null;
        this.mControlHandler = null;
        this.mCallbackHandler = null;
        this.mCamera2Interface = null;
        this.mDecisionVariable = null;
        this.mCameraName = str;
        this.mCamera2Interface = new Camera2Impl(this.mCameraName);
        this.mDecisionVariable = new ConditionVariable();
        this.mDecisionVariable.open();
        HandlerThread handlerThread = new HandlerThread("Camera Hal Control Thread");
        handlerThread.start();
        this.mControlHandler = new StateMachineHandler(handlerThread.getLooper());
        HandlerThread handlerThread2 = new HandlerThread("Camera Hal Callback Thread");
        handlerThread2.start();
        this.mCallbackHandler = new CameraHandler(handlerThread2.getLooper());
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public String getCameraName() {
        return this.mCameraName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class StateMachineHandler extends CameraHandler {
        StateMachineHandler(Looper looper) {
            super(looper);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendMessageWaitDecision(Message message, boolean z) {
            CameraUnitLog.d(Camera2StateMachineImpl.TAG, "sendMessageWaitDecision, message.what: " + Camera2StateMachineImpl.this.getHandlerMessageLog(message.what) + ", isDecisionMessage: " + z);
            if (Looper.myLooper() != this.mMyLooper) {
                Camera2StateMachineImpl.this.mDecisionVariable.block();
            }
            if (z) {
                Camera2StateMachineImpl.this.mDecisionVariable.close();
                sendMessageAtFrontOfQueue(message);
            } else {
                sendMessage(message);
            }
            CameraUnitLog.d(Camera2StateMachineImpl.TAG, "sendMessageWaitDecision, message.what: " + Camera2StateMachineImpl.this.getHandlerMessageLog(message.what) + " X");
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CameraUnitLog.v(Camera2StateMachineImpl.TAG, "handleMessage, message.what: " + Camera2StateMachineImpl.this.getHandlerMessageLog(message.what));
            switch (message.what) {
                case 1:
                    Camera2StateMachineImpl.this.mControlHandler.removeCallbacksAndMessages(null);
                    Camera2StateMachineImpl.this.openCameraDecision((MsgPackage) message.obj);
                    break;
                case 2:
                    CameraUnitLog.d(Camera2StateMachineImpl.TAG, "openCamera, MSG_OPEN_CAMERA_DEVICE, mDeviceState:" + Camera2StateMachineImpl.this.mDeviceState);
                    if (3 == Camera2StateMachineImpl.this.mDeviceState) {
                        try {
                            Camera2StateMachineImpl.this.setDeviceState(0);
                            if (message.obj != null) {
                                Camera2StateMachineImpl.this.setCallback((MsgPackage) message.obj);
                            }
                            Camera2StateMachineImpl.this.mCameraId = message.arg1;
                            Camera2StateMachineImpl.this.mCamera2Interface.openCameraDevice(Camera2StateMachineImpl.this.mCameraId, Camera2StateMachineImpl.this.mCallbackHandler);
                            CameraUnitLog.d(Camera2StateMachineImpl.TAG, "openCamera, cameraId: " + Camera2StateMachineImpl.this.mCameraId);
                            StatisticsManager.getInstance().onOpenCamera(Camera2StateMachineImpl.this.mCameraId, Camera2StateMachineImpl.this.mCameraName);
                            Camera2StateMachineImpl.this.setDeviceState(1);
                            Camera2StateMachineImpl.this.mInnerCameraStateCallback.onOpened(null);
                            break;
                        } catch (CameraAccessException | IllegalArgumentException | SecurityException e) {
                            CameraUnitLog.e(Camera2StateMachineImpl.TAG, "handleMessage, open camera failed", e);
                            Camera2StateMachineImpl.this.setDeviceState(3);
                            Camera2StateMachineImpl.this.mInnerCameraStateCallback.onError(null, 4);
                            break;
                        }
                    }
                    break;
                case 3:
                    if (8 == Camera2StateMachineImpl.this.mDeviceState || 1 == Camera2StateMachineImpl.this.mDeviceState || 6 == Camera2StateMachineImpl.this.mDeviceState) {
                        try {
                            Camera2StateMachineImpl.this.setDeviceState(4);
                            MsgPackage msgPackage = (MsgPackage) message.obj;
                            Camera2StateMachineImpl.this.mCamera2Interface.createNewSession(msgPackage.mSessionEntity, msgPackage.mParameter, Camera2StateMachineImpl.this.mCallbackHandler);
                            if (4 == Camera2StateMachineImpl.this.mDeviceState) {
                                Camera2StateMachineImpl.this.setDeviceState(5);
                                Camera2StateMachineImpl.this.mCameraStateCallbackAdapter.onSessionConfigured(Camera2StateMachineImpl.this.mCamera2Interface.getConfigInfo());
                                break;
                            }
                        } catch (Exception e2) {
                            if (Camera2StateMachineImpl.this.mCameraStateCallbackAdapter != null) {
                                Camera2StateMachineImpl.this.mCameraStateCallbackAdapter.onSessionConfigureFail(ErrorResult.STREAM_SURFACE_ERROR);
                            }
                            Camera2StateMachineImpl.this.setDeviceState(6);
                            CameraUnitLog.e(Camera2StateMachineImpl.TAG, "handleMessage, create capture session failed.", e2);
                            break;
                        }
                    }
                    break;
                case 4:
                    Camera2StateMachineImpl.this.mControlHandler.removeCallbacksAndMessages(null);
                    Camera2StateMachineImpl.this.setEnabled(false);
                    Camera2StateMachineImpl.this.closeCameraDecision();
                    if (message.arg1 == 1) {
                        post(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.StateMachineHandler.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Camera2StateMachineImpl.this.mSyncVariable.open();
                            }
                        });
                        break;
                    }
                    break;
                case 5:
                    if (1 == Camera2StateMachineImpl.this.mDeviceState || 8 == Camera2StateMachineImpl.this.mDeviceState || 6 == Camera2StateMachineImpl.this.mDeviceState) {
                        Camera2StateMachineImpl.this.setDeviceState(2);
                        Camera2StateMachineImpl.this.mCamera2Interface.closeCameraDevice();
                        Camera2StateMachineImpl.this.mInnerCameraStateCallback.onClosed(null);
                        break;
                    }
                    break;
                case 6:
                    if (5 == Camera2StateMachineImpl.this.mDeviceState) {
                        Camera2StateMachineImpl.this.setDeviceState(7);
                        Camera2StateMachineImpl.this.mCamera2Interface.beforeCloseSession();
                        Camera2StateMachineImpl.this.mCamera2Interface.closeOldSession();
                        Camera2StateMachineImpl.this.setDeviceState(8);
                        if (Camera2StateMachineImpl.this.mInnerSessionCallback != null) {
                            Camera2StateMachineImpl.this.mInnerSessionCallback.onClosed(null);
                            break;
                        }
                    }
                    break;
                case 7:
                    if (5 == Camera2StateMachineImpl.this.mDeviceState || 10 == Camera2StateMachineImpl.this.mDeviceState) {
                        Camera2StateMachineImpl.this.setDeviceState(9);
                        MsgPackage msgPackage2 = (MsgPackage) message.obj;
                        if (Camera2StateMachineImpl.this.mCamera2Interface.startPreview(msgPackage2.mTag, msgPackage2.mParameter, Camera2StateMachineImpl.this.mCallbackHandler)) {
                            Camera2StateMachineImpl.this.setDeviceState(10);
                            break;
                        } else {
                            Camera2StateMachineImpl.this.setDeviceState(5);
                            break;
                        }
                    }
                    break;
                case 8:
                    if (10 == Camera2StateMachineImpl.this.mDeviceState) {
                        Camera2StateMachineImpl.this.setDeviceState(11);
                        Object obj = message.obj;
                        Camera2StateMachineImpl.this.mCamera2Interface.stopPreview(obj instanceof Boolean ? ((Boolean) obj).booleanValue() : true);
                        Camera2StateMachineImpl.this.setDeviceState(5);
                        break;
                    }
                    break;
                case 9:
                    Camera2StateMachineImpl.this.mControlHandler.removeMessages(8);
                    Camera2StateMachineImpl.this.mControlHandler.removeMessages(7);
                    Camera2StateMachineImpl.this.mControlHandler.removeMessages(6);
                    Camera2StateMachineImpl.this.mControlHandler.removeMessages(3);
                    Camera2StateMachineImpl.this.createSessionDecision((MsgPackage) message.obj);
                    break;
                case 10:
                    if (10 == Camera2StateMachineImpl.this.mDeviceState) {
                        Camera2StateMachineImpl.this.mCamera2Interface.beforeCloseSession();
                        Camera2StateMachineImpl.this.setDeviceState(11);
                        Camera2StateMachineImpl.this.mCamera2Interface.stopPreview(true);
                        Camera2StateMachineImpl.this.setDeviceState(5);
                    }
                    if (5 == Camera2StateMachineImpl.this.mDeviceState) {
                        Camera2StateMachineImpl.this.setDeviceState(7);
                        Camera2StateMachineImpl.this.mCamera2Interface.closeOldSession();
                        Camera2StateMachineImpl.this.setDeviceState(8);
                        if (Camera2StateMachineImpl.this.mInnerSessionCallback != null) {
                            Camera2StateMachineImpl.this.mInnerSessionCallback.onClosed(null);
                            break;
                        }
                    }
                    break;
            }
            CameraUnitLog.v(Camera2StateMachineImpl.TAG, "handleMessage, message.what: " + Camera2StateMachineImpl.this.getHandlerMessageLog(message.what) + " finished");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEnabled(boolean z) {
        this.mbEnabled = z;
    }

    private int getLogicId() {
        return this.mCamera2Interface.getLogicId();
    }

    private boolean isTargetSession(CameraSessionEntity cameraSessionEntity) {
        return (5 == this.mDeviceState || 9 == this.mDeviceState || 10 == this.mDeviceState || 11 == this.mDeviceState) && cameraSessionEntity.equals(this.mCamera2Interface.getSessionEntity());
    }

    private boolean isAnotherSession(CameraSessionEntity cameraSessionEntity) {
        return 5 == this.mDeviceState || 9 == this.mDeviceState || 10 == this.mDeviceState || (11 == this.mDeviceState && !cameraSessionEntity.equals(this.mCamera2Interface.getSessionEntity()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createSessionDecision(MsgPackage msgPackage) {
        CameraUnitLog.d(TAG, "createSessionDecision");
        if (isTargetSession(msgPackage.mSessionEntity)) {
            CameraUnitLog.d(TAG, "createSessionDecision, old session match, directly reuse");
            this.mCameraStateCallbackAdapter.onSessionConfigured(this.mCamera2Interface.getConfigInfo());
        } else if (isAnotherSession(msgPackage.mSessionEntity)) {
            CameraUnitLog.d(TAG, "createSessionDecision, old session doesn't match, close then create new");
            stopPreview(true);
            closeSession();
            createSession(msgPackage);
        } else if (1 == this.mDeviceState || 8 == this.mDeviceState || 6 == this.mDeviceState) {
            CameraUnitLog.d(TAG, "createSessionDecision, no old session create new");
            createSession(msgPackage);
        }
        this.mDecisionVariable.open();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCameraDecision(MsgPackage msgPackage) {
        int i = msgPackage.mCameraId;
        int logicId = getLogicId();
        CameraUnitLog.d(TAG, "openCameraDecision, cameraId: " + i);
        if (-1 == logicId) {
            CameraUnitLog.d(TAG, "openCameraDecision, normal open");
            openCamera(msgPackage, i);
        } else {
            CameraUnitLog.d(TAG, "openCameraDecision, close then open");
            closeCameraDecision();
            openCamera(msgPackage, i);
        }
        this.mDecisionVariable.open();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeCameraDecision() {
        CameraUnitLog.d(TAG, "closeCameraDecision");
        if (1 == this.mDeviceState || 8 == this.mDeviceState || 6 == this.mDeviceState) {
            CameraUnitLog.e(TAG, "closeCameraDecision, quick close");
            closeCamera();
        } else if (5 == this.mDeviceState) {
            CameraUnitLog.e(TAG, "closeCameraDecision, normal close");
            closeSession();
            closeCamera();
        } else if (this.mDeviceState == 0) {
            setDeviceState(8);
        } else if (10 == this.mDeviceState) {
            CameraUnitLog.e(TAG, "closeCameraDecision, close need clean, mStopRecordingTask: " + this.mStopRecordingTask);
            if (this.mStopRecordingTask != null) {
                this.mControlHandler.post(this.mStopRecordingTask);
            }
            stopPreview(true);
            closeSession();
            closeCamera();
        }
        this.mDecisionVariable.open();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void occupiedDelayReopen() {
        this.mControlHandler.removeCallbacksAndMessages(null);
        this.mControlHandler.postDelayed(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.3
            @Override // java.lang.Runnable
            public void run() {
                Camera2StateMachineImpl.this.openCamera(null, Camera2StateMachineImpl.this.mCameraId);
            }
        }, 100L);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void openCameraAuto(MsgPackage msgPackage) {
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 1;
        obtainMessage.obj = msgPackage;
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, true);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void closeCameraAuto(boolean z) {
        if (this.mControlHandler.hasMessages(4)) {
            CameraUnitLog.e(TAG, "MSG_CLOSE_CAMERA message already exist.");
            return;
        }
        if (z) {
            this.mSyncVariable.close();
        }
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 4;
        if (z) {
            obtainMessage.arg1 = 1;
        }
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, true);
        if (z) {
            this.mSyncVariable.block();
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void createSessionAuto(CameraSessionEntity cameraSessionEntity, Parameter parameter) {
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 9;
        MsgPackage msgPackage = new MsgPackage();
        msgPackage.mSessionEntity = cameraSessionEntity;
        msgPackage.mParameter = parameter;
        obtainMessage.obj = msgPackage;
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCamera(MsgPackage msgPackage, int i) {
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 2;
        obtainMessage.arg1 = i;
        obtainMessage.obj = msgPackage;
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, false);
    }

    private void closeCamera() {
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 5;
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, false);
    }

    private void createSession(MsgPackage msgPackage) {
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 3;
        obtainMessage.obj = msgPackage;
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, false);
    }

    private void closeSession() {
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 6;
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, false);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void closeOldSession() {
        this.mControlHandler.removeCallbacksAndMessages(null);
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 10;
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, false);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void startPreview(CameraRequestTag cameraRequestTag, Parameter parameter) {
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 7;
        MsgPackage msgPackage = new MsgPackage();
        msgPackage.mTag = cameraRequestTag;
        msgPackage.mParameter = parameter;
        obtainMessage.obj = msgPackage;
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, false);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void stopPreview(boolean z) {
        Message obtainMessage = this.mControlHandler.obtainMessage();
        obtainMessage.what = 8;
        obtainMessage.obj = Boolean.valueOf(z);
        this.mControlHandler.sendMessageWaitDecision(obtainMessage, false);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public boolean isConfigured() {
        return 5 == this.mDeviceState || 9 == this.mDeviceState || 10 == this.mDeviceState || 11 == this.mDeviceState;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public boolean isClosed() {
        return 3 == this.mDeviceState;
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void startRecording(final CameraRequestTag cameraRequestTag, final Parameter parameter) {
        this.mControlHandler.postRunnable(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.4
            @Override // java.lang.Runnable
            public void run() {
                if (!Camera2StateMachineImpl.this.mbEnabled) {
                    Camera2StateMachineImpl.this.abortAction(cameraRequestTag, Camera2StateMachineImpl.ACTION_START_RECORDING);
                } else {
                    Camera2StateMachineImpl.this.mCamera2Interface.startRecording(cameraRequestTag, parameter, Camera2StateMachineImpl.this.mCallbackHandler);
                }
            }
        });
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void resumeRecording(final Parameter parameter) {
        this.mControlHandler.postRunnable(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.5
            @Override // java.lang.Runnable
            public void run() {
                if (Camera2StateMachineImpl.this.mbEnabled) {
                    Camera2StateMachineImpl.this.mCamera2Interface.resumeRecording(parameter, Camera2StateMachineImpl.this.mCallbackHandler);
                } else {
                    CameraUnitLog.v(Camera2StateMachineImpl.TAG, "resumeRecording, failed");
                }
            }
        });
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void pauseRecording(final Parameter parameter) {
        this.mControlHandler.postRunnable(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.6
            @Override // java.lang.Runnable
            public void run() {
                if (Camera2StateMachineImpl.this.mbEnabled) {
                    Camera2StateMachineImpl.this.mCamera2Interface.pauseRecording(parameter, Camera2StateMachineImpl.this.mCallbackHandler);
                } else {
                    CameraUnitLog.v(Camera2StateMachineImpl.TAG, "pauseRecording, failed");
                }
            }
        });
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void stopRecording(final Parameter parameter) {
        this.mStopRecordingTask = new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.7
            @Override // java.lang.Runnable
            public void run() {
                if (!Camera2StateMachineImpl.this.mbEnabled) {
                    CameraUnitLog.v(Camera2StateMachineImpl.TAG, "stopRecording, failed");
                    return;
                }
                CameraUnitLog.v(Camera2StateMachineImpl.TAG, "stopRecording, start task");
                Camera2StateMachineImpl.this.mCamera2Interface.stopRecording(parameter, Camera2StateMachineImpl.this.mCallbackHandler);
                Camera2StateMachineImpl.this.mStopRecordingTask = null;
            }
        };
        this.mControlHandler.postRunnable(this.mStopRecordingTask);
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void videoSnapshot(final CameraRequestTag cameraRequestTag, final Parameter parameter) {
        this.mControlHandler.postRunnable(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.8
            @Override // java.lang.Runnable
            public void run() {
                if (!Camera2StateMachineImpl.this.mbEnabled) {
                    Camera2StateMachineImpl.this.abortAction(cameraRequestTag, Camera2StateMachineImpl.ACTION_TAKE_PICTURE);
                } else {
                    Camera2StateMachineImpl.this.mCamera2Interface.videoSnapshot(cameraRequestTag, parameter, Camera2StateMachineImpl.this.mCallbackHandler);
                }
            }
        });
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void takePicture(final CameraRequestTag cameraRequestTag, final Parameter parameter) {
        this.mControlHandler.postRunnable(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.9
            @Override // java.lang.Runnable
            public void run() {
                if (!Camera2StateMachineImpl.this.mbEnabled) {
                    Camera2StateMachineImpl.this.abortAction(cameraRequestTag, Camera2StateMachineImpl.ACTION_TAKE_PICTURE);
                } else {
                    Camera2StateMachineImpl.this.mCamera2Interface.takePicture(cameraRequestTag, parameter, Camera2StateMachineImpl.this.mCallbackHandler);
                }
            }
        });
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void abortCaptures() {
        this.mControlHandler.postRunnable(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.10
            @Override // java.lang.Runnable
            public void run() {
                if (Camera2StateMachineImpl.this.mbEnabled) {
                    Camera2StateMachineImpl.this.mCamera2Interface.abortCaptures();
                } else {
                    CameraUnitLog.e(Camera2StateMachineImpl.TAG, "abortCaptures failed");
                }
            }
        });
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void reprocessImage(final Image image, final TotalCaptureResult totalCaptureResult, final Rect rect, final CameraRequestTag cameraRequestTag, final Parameter parameter) {
        this.mControlHandler.postRunnable(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.11
            @Override // java.lang.Runnable
            public void run() {
                if (!Camera2StateMachineImpl.this.mbEnabled) {
                    Camera2StateMachineImpl.this.abortAction(cameraRequestTag, Camera2StateMachineImpl.ACTION_TAKE_PICTURE);
                } else {
                    Camera2StateMachineImpl.this.mCamera2Interface.reprocessImage(image, totalCaptureResult, rect, cameraRequestTag, parameter, Camera2StateMachineImpl.this.mCallbackHandler);
                }
            }
        });
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public boolean getSupportWrapper(String str, String str2, int i) {
        return this.mCamera2Interface.getSupportWrapper(str, str2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abortAction(final CameraRequestTag cameraRequestTag, String str) {
        CameraUnitLog.e(TAG, "abortAction, The " + str + " cannot be continued because mDeviceState is: " + getDeviceStateLog(this.mDeviceState));
        if (cameraRequestTag == null || cameraRequestTag.mUserCallbackHandler == null || cameraRequestTag.mCallback == null) {
            return;
        }
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != 639215535) {
            if (hashCode == 1018096247 && str.equals(ACTION_TAKE_PICTURE)) {
                c = 0;
            }
        } else if (str.equals(ACTION_START_RECORDING)) {
            c = 1;
        }
        switch (c) {
            case 0:
                cameraRequestTag.mUserCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.12
                    @Override // java.lang.Runnable
                    public void run() {
                        ((CameraPictureCallbackAdapter) cameraRequestTag.mCallback).onCaptureFailed((CaptureRequest) null, (CameraPictureCallbackAdapter.PictureResult) null);
                    }
                });
                return;
            case 1:
                cameraRequestTag.mUserCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.13
                    @Override // java.lang.Runnable
                    public void run() {
                        ((CameraRecordingCallbackAdapter) cameraRequestTag.mCallback).onRecordingResult(new CameraRecordingCallbackAdapter.RecordingResult(4, cameraRequestTag));
                    }
                });
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeviceState(int i) {
        CameraUnitLog.i(TAG, "setDeviceState, cameraName: " + this.mCameraName + ", mDeviceState: " + getDeviceStateLog(this.mDeviceState) + " -> " + getDeviceStateLog(i));
        this.mDeviceState = i;
        if (this.mDeviceState == 10) {
            setEnabled(true);
        } else {
            setEnabled(false);
        }
    }

    @Override // com.oplus.ocs.camera.producer.device.Camera2StateMachineInterface
    public void release() {
        this.mControlHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.producer.device.Camera2StateMachineImpl.14
            @Override // java.lang.Runnable
            public void run() {
                Camera2StateMachineImpl.this.mCallbackHandler.getLooper().quitSafely();
                Camera2StateMachineImpl.this.mControlHandler.getLooper().quitSafely();
            }
        });
    }
}
