package com.oplus.ocs.camera.producer.device;

import androidx.annotation.NonNull;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.producer.info.CameraIdType;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class CameraDeviceManager {
    private static final String TAG = "CameraDeviceManager";
    private HashMap<String, Camera2StateMachineInterface> mCameraStateMachines = new HashMap<>();

    public CameraDeviceManager() {
        if (Util.isSystemCamera()) {
            this.mCameraStateMachines.put("rear_sat", new Camera2StateMachineImpl("rear_sat"));
        }
    }

    public void openCamera(@NonNull CameraIdType cameraIdType, @NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter, CameraPictureCallbackAdapter cameraPictureCallbackAdapter, CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter) {
        Camera2StateMachineInterface camera2StateMachineImpl = this.mCameraStateMachines.get(cameraIdType.getCameraType());
        if (camera2StateMachineImpl == null) {
            camera2StateMachineImpl = new Camera2StateMachineImpl(cameraIdType.getCameraType());
            this.mCameraStateMachines.put(cameraIdType.getCameraType(), camera2StateMachineImpl);
        }
        MsgPackage msgPackage = new MsgPackage();
        msgPackage.mCameraId = cameraIdType.getCameraId();
        msgPackage.mCameraStateCallbackAdapter = cameraStateCallbackAdapter;
        msgPackage.mPictureCallback = cameraPictureCallbackAdapter;
        msgPackage.mPreviewCallback = cameraPreviewCallbackAdapter;
        msgPackage.mRecordingCallback = cameraRecordingCallbackAdapter;
        camera2StateMachineImpl.openCameraAuto(msgPackage);
    }

    public void release() {
        Iterator<Camera2StateMachineInterface> it = this.mCameraStateMachines.values().iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.mCameraStateMachines.clear();
    }
}
