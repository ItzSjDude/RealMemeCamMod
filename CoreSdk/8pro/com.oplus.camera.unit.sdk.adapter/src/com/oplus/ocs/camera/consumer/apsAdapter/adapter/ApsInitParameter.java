package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureRequest;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ApsInitParameter extends ApsParameters.ParameterModel {
    public static final int APS_MODULE_BOTH = 1;
    public static final int APS_MODULE_CAPTURE = 2;
    public static final int APS_MODULE_NONE = 0;
    public static final int APS_MODULE_PREVIEW = 3;
    public String[] mParameters = null;
    public String[] mVendorTags = null;
    public CameraMetadata mMetadata = null;
    public int mApsModule = 0;
    public String[] mInitAlgo = null;
    public AlgoSwitchConfig.PreviewConfig mPreviewConfig = null;
    public ConcurrentHashMap<CaptureRequest.Key<?>, Integer> mVendorTagKeyMap = null;
    public Surface mVideoSurface = null;
    public boolean mbHeicProcessInApp = false;

    public <T> void remove(@NonNull ApsParameters.Key<T> key) {
        this.mParameterMap.remove(key);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters.ParameterModel
    public String toString() {
        return "{mParameters: " + Arrays.toString(this.mParameters) + ", mMetadata: " + this.mMetadata + ", mApsModule: " + this.mApsModule + ", mInitAlgo: " + Arrays.toString(this.mInitAlgo) + ", mPreviewConfig: " + this.mPreviewConfig + ", mbHeicProcessInApp: " + this.mbHeicProcessInApp + "}";
    }
}
