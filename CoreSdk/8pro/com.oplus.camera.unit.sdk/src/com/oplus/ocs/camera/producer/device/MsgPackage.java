package com.oplus.ocs.camera.producer.device;

import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.CameraRequestTag;

/* JADX INFO: loaded from: classes.dex */
class MsgPackage {
    public int mCameraId = -1;
    public CameraStateCallbackAdapter mCameraStateCallbackAdapter = null;
    public CameraPreviewCallbackAdapter mPreviewCallback = null;
    public CameraPictureCallbackAdapter mPictureCallback = null;
    public CameraRecordingCallbackAdapter mRecordingCallback = null;
    public CameraSessionEntity mSessionEntity = null;
    public CameraRequestTag mTag = null;
    public Parameter mParameter = null;

    MsgPackage() {
    }
}
