package com.oplus.ocs.camera.common.parameter.apsadapter;

import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
/* loaded from: classes.dex */
public class ApsOtherParameter extends ApsBaseParameter {
    public static final ApsBaseParameter.Key<Object> KEY_REQUEST_TAG = new ApsBaseParameter.Key<>("com.oplus.request.tag", Object.class, null);
    public static final ApsBaseParameter.Key<Integer> KEY_CAPTURE_FAIL_CODE = new ApsBaseParameter.Key<>("com.oplus.capture.fail.code", Integer.class, 0);
    public static final ApsBaseParameter.Key<String> KEY_CAMERA_RESULT_CAMERA_TYPE = new ApsBaseParameter.Key<>("com.oplus.result.camera.type", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_CAMERA_RESULT_CAMERA_MODE = new ApsBaseParameter.Key<>("com.oplus.result.camera.mode", String.class, null);
    public static final ApsBaseParameter.Key<Long> KEY_CAPTURE_NIGHT_TOTAL_EXPTIME = new ApsBaseParameter.Key<>("com.oplus.capture.night_total_exptime", Long.class, 0L);
    public static final ApsBaseParameter.Key<Long> KEY_CAPTURE_FIRST_EXPOSURE_TIME = new ApsBaseParameter.Key<>("com.oplus.capture.first_exposure_time", Long.class, 0L);
}
