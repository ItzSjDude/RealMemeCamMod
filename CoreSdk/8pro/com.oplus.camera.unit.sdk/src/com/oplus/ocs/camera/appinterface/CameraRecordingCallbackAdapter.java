package com.oplus.ocs.camera.appinterface;

import com.oplus.ocs.camera.common.util.CameraRequestTag;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraRecordingCallbackAdapter {
    public void onRecordingResult(RecordingResult recordingResult) {
    }

    public static final class RecordingResult {
        private CameraRequestTag mCameraRequestTag;
        private int mRecordingState;

        public RecordingResult(int i, CameraRequestTag cameraRequestTag) {
            this.mRecordingState = i;
            this.mCameraRequestTag = cameraRequestTag;
        }

        public CameraRequestTag getCameraRequestTag() {
            return this.mCameraRequestTag;
        }

        public int getRecordingState() {
            return this.mRecordingState;
        }
    }
}
