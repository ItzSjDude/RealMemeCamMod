package com.oplus.ocs.camera.producer.mode;

import com.oplus.ocs.camera.common.util.CameraConstant;

public class TiltShiftFastVideoMode extends FastVideoMode {
    private static final String TAG = "TiltShiftFastVideoMode";

    @Override // com.oplus.ocs.camera.producer.mode.FastVideoMode,
              // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.TILT_SHIFT_FAST_VIDEO_MODE;
    }
}
