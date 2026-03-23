package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CameraCharacteristics;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class ZoomHelper {
    private static final int DECIMAL = 10;
    private static final String TAG = "ZoomHelper";
    private static final float ZOOM_DEFAULT_VALUE = 1.0f;
    private static final float ZOOM_NON_SAT_ULTRA_WIDE_DEFAULT_VALUE = 5.0f;
    private static final int ZOOM_RANGE_MAX_INDEX = 1;
    private static final int ZOOM_RANGE_MIN_INDEX = 0;
    private static final int ZOOM_RANGE_SIZE = 4;
    private static final float ZOOM_RATIO_STEP = 0.1f;
    private String mCameraType;
    private List<Float> mZoomList = null;
    private List<Float> mCustomZoomList = null;
    private List<Float> mExpertZoomList = null;

    public ZoomHelper(String str) {
        this.mCameraType = null;
        this.mCameraType = str;
    }

    public List<Float> getZoomRatioList(boolean z, boolean z2, boolean z3) {
        float f = ZOOM_DEFAULT_VALUE;
        if (z2 || z) {
            if (this.mCustomZoomList == null) {
                float minZoomValue = getMinZoomValue();
                float maxZoomValue = getMaxZoomValue();
                if (z) {
                    maxZoomValue = ZOOM_NON_SAT_ULTRA_WIDE_DEFAULT_VALUE;
                    minZoomValue = 1.0f;
                }
                this.mCustomZoomList = new ArrayList();
                while (Float.compare(minZoomValue, maxZoomValue) <= 0) {
                    float round = Math.round(minZoomValue * 10.0f) / 10.0f;
                    this.mCustomZoomList.add(Float.valueOf(round));
                    minZoomValue = round + ZOOM_RATIO_STEP;
                }
            }
            return this.mCustomZoomList;
        } else if (z3) {
            if (this.mExpertZoomList == null) {
                float expertMinZoomValue = getExpertMinZoomValue();
                float expertMaxZoomValue = getExpertMaxZoomValue();
                this.mExpertZoomList = new ArrayList();
                while (Float.compare(expertMinZoomValue, expertMaxZoomValue) <= 0) {
                    float round2 = Math.round(expertMinZoomValue * 10.0f) / 10.0f;
                    this.mExpertZoomList.add(Float.valueOf(round2));
                    expertMinZoomValue = round2 + ZOOM_RATIO_STEP;
                }
            }
            return this.mExpertZoomList;
        } else {
            if (this.mZoomList == null) {
                float availableMaxDigitalZoom = getAvailableMaxDigitalZoom();
                this.mZoomList = new ArrayList();
                while (Float.compare(f, availableMaxDigitalZoom) <= 0) {
                    float round3 = Math.round(f * 10.0f) / 10.0f;
                    this.mZoomList.add(Float.valueOf(round3));
                    f = round3 + ZOOM_RATIO_STEP;
                }
            }
            return this.mZoomList;
        }
    }

    public List<Float> getZoomRatioList(boolean z, boolean z2, boolean z3, boolean z4, CameraDeviceInfoInterface cameraDeviceInfoInterface) {
        List<Float> list;
        this.mZoomList = getZoomRatioList(z, z2, z3);
        if (!this.mZoomList.isEmpty() && z4) {
            List<Float> configFeatureZoomRange = getConfigFeatureZoomRange(cameraDeviceInfoInterface);
            if (configFeatureZoomRange == null) {
                return this.mZoomList;
            }
            try {
                list = this.mZoomList.subList(this.mZoomList.indexOf(configFeatureZoomRange.get(0)), this.mZoomList.indexOf(configFeatureZoomRange.get(1)));
            } catch (IndexOutOfBoundsException e) {
                e = e;
                list = null;
            }
            try {
                list.add(configFeatureZoomRange.get(1));
            } catch (IndexOutOfBoundsException e2) {
                e = e2;
                CameraUnitLog.e(TAG, "There is a problem with zoom_range in the configuration file , please check it!", e);
                return list;
            }
            return list;
        }
        return this.mZoomList;
    }

    private float getMaxZoomValue() {
        float[] supportedZoomRange = getSupportedZoomRange();
        if (supportedZoomRange != null && supportedZoomRange.length >= 4) {
            return supportedZoomRange[1];
        }
        return getAvailableMaxDigitalZoom();
    }

    private float getMinZoomValue() {
        float[] supportedZoomRange = getSupportedZoomRange();
        return supportedZoomRange != null ? supportedZoomRange[0] : ZOOM_DEFAULT_VALUE;
    }

    private float getExpertMaxZoomValue() {
        float[] expertZoomRange = getExpertZoomRange();
        if (expertZoomRange != null && expertZoomRange.length >= 4) {
            return expertZoomRange[1];
        }
        return getAvailableMaxDigitalZoom();
    }

    private float getExpertMinZoomValue() {
        float[] expertZoomRange = getExpertZoomRange();
        return expertZoomRange != null ? expertZoomRange[0] : ZOOM_DEFAULT_VALUE;
    }

    private List<Float> getConfigFeatureZoomRange(CameraDeviceInfoInterface cameraDeviceInfoInterface) {
        return (List) cameraDeviceInfoInterface.getPreviewParameterRange(PreviewParameter.KEY_FEATURE_RATIO_RANGE.getName());
    }

    private float getAvailableMaxDigitalZoom() {
        return ((Float) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(this.mCameraType).get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue();
    }

    private float[] getSupportedZoomRange() {
        return (float[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(this.mCameraType).get(CameraCharacteristicsWrapper.KEY_ZOOM_RANGE);
    }

    private float[] getExpertZoomRange() {
        return (float[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(this.mCameraType).get(CameraCharacteristicsWrapper.KEY_EXPERT_ZOOM_RANGE);
    }
}
