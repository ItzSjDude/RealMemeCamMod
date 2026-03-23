package com.oplus.ocs.camera.producer.device;

import androidx.annotation.NonNull;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.producer.info.CameraIdType;
import java.util.HashMap;
/* loaded from: classes.dex */
public class CameraDeviceManager {
    private static final String TAG = "CameraDeviceManager";
    private HashMap<String, Camera2StateMachineInterface> mCameraStateMachines = new HashMap<>();

    public CameraDeviceManager() {
        if (Util.isSystemCamera()) {
            this.mCameraStateMachines.put("rear_sat", new Camera2StateMachineImpl("rear_sat"));
        }
    }

    public void openCamera(@NonNull CameraIdType cameraIdType, @NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter, CameraPictureCallbackAdapter cameraPictureCallbackAdapter, CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter) {
        Camera2StateMachineInterface camera2StateMachineInterface = this.mCameraStateMachines.get(cameraIdType.getCameraType());
        if (camera2StateMachineInterface == null) {
            camera2StateMachineInterface = new Camera2StateMachineImpl(cameraIdType.getCameraType());
            this.mCameraStateMachines.put(cameraIdType.getCameraType(), camera2StateMachineInterface);
        }
        MsgPackage msgPackage = new MsgPackage();
        msgPackage.mCameraId = cameraIdType.getCameraId();
        msgPackage.mCameraStateCallbackAdapter = cameraStateCallbackAdapter;
        msgPackage.mPictureCallback = cameraPictureCallbackAdapter;
        msgPackage.mPreviewCallback = cameraPreviewCallbackAdapter;
        msgPackage.mRecordingCallback = cameraRecordingCallbackAdapter;
        camera2StateMachineInterface.openCameraAuto(msgPackage);
    }

    public void release() {
        for (Camera2StateMachineInterface camera2StateMachineInterface : this.mCameraStateMachines.values()) {
            camera2StateMachineInterface.release();
        }
        this.mCameraStateMachines.clear();
    }
}
