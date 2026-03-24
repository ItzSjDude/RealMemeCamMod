package com.coloros.ocs.camera.impl;

// Imports removed to resolve ambiguity
/* loaded from: classes.dex */
public class DefaultCameraRecordingCallback extends com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter {
    private com.coloros.ocs.camera.callback.CameraRecordingCallbackAdapter mCameraRecordingCallback;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultCameraRecordingCallback(
            com.coloros.ocs.camera.callback.CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter) {
        this.mCameraRecordingCallback = cameraRecordingCallbackAdapter;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter
    public void onRecordingResult(
            com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter.RecordingResult recordingResult) {
        this.mCameraRecordingCallback
                .onRecordingResult(new com.coloros.ocs.camera.callback.CameraRecordingCallbackAdapter.RecordingResult(
                        recordingResult.getRecordingState(), recordingResult.getCameraRequestTag()));
    }
}
