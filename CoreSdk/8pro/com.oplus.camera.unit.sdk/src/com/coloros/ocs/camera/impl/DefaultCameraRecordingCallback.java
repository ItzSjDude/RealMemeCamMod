package com.coloros.ocs.camera.impl;

import com.coloros.ocs.camera.callback.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;

/* JADX INFO: loaded from: classes.dex */
public class DefaultCameraRecordingCallback extends CameraRecordingCallbackAdapter {
    private com.coloros.ocs.camera.callback.CameraRecordingCallbackAdapter mCameraRecordingCallback;

    DefaultCameraRecordingCallback(com.coloros.ocs.camera.callback.CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter) {
        this.mCameraRecordingCallback = cameraRecordingCallbackAdapter;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter
    public void onRecordingResult(CameraRecordingCallbackAdapter.RecordingResult recordingResult) {
        this.mCameraRecordingCallback.onRecordingResult(new CameraRecordingCallbackAdapter.RecordingResult(recordingResult.getRecordingState(), recordingResult.getCameraRequestTag()));
    }
}
