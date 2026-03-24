package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CameraCharacteristics;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
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
        this.mCameraType = str;
    }

    public List<Float> getZoomRatioList(boolean z, boolean z2, boolean z3) {
        float f = 1.0f;
        if (z2 || z) {
            if (this.mCustomZoomList == null) {
                float minZoomValue = getMinZoomValue();
                float maxZoomValue = getMaxZoomValue();
                if (z) {
                    maxZoomValue = ZOOM_NON_SAT_ULTRA_WIDE_DEFAULT_VALUE;
                } else {
                    f = minZoomValue;
                }
                this.mCustomZoomList = new ArrayList();
                while (Float.compare(f, maxZoomValue) <= 0) {
                    float fRound = Math.round(f * 10.0f) / 10.0f;
                    this.mCustomZoomList.add(Float.valueOf(fRound));
                    f = fRound + ZOOM_RATIO_STEP;
                }
            }
            return this.mCustomZoomList;
        }
        if (z3) {
            if (this.mExpertZoomList == null) {
                float expertMinZoomValue = getExpertMinZoomValue();
                float expertMaxZoomValue = getExpertMaxZoomValue();
                this.mExpertZoomList = new ArrayList();
                while (Float.compare(expertMinZoomValue, expertMaxZoomValue) <= 0) {
                    float fRound2 = Math.round(expertMinZoomValue * 10.0f) / 10.0f;
                    this.mExpertZoomList.add(Float.valueOf(fRound2));
                    expertMinZoomValue = fRound2 + ZOOM_RATIO_STEP;
                }
            }
            return this.mExpertZoomList;
        }
        if (this.mZoomList == null) {
            float availableMaxDigitalZoom = getAvailableMaxDigitalZoom();
            this.mZoomList = new ArrayList();
            while (Float.compare(f, availableMaxDigitalZoom) <= 0) {
                float fRound3 = Math.round(f * 10.0f) / 10.0f;
                this.mZoomList.add(Float.valueOf(fRound3));
                f = fRound3 + ZOOM_RATIO_STEP;
            }
        }
        return this.mZoomList;
    }

    public List<Float> getZoomRatioList(boolean z, boolean z2, boolean z3, boolean z4, CameraDeviceInfoInterface cameraDeviceInfoInterface) {
        List<Float> zoomRatioList = getZoomRatioList(z, z2, z3);
        this.mZoomList = zoomRatioList;
        if (!zoomRatioList.isEmpty() && z4) {
            List<Float> configFeatureZoomRange = getConfigFeatureZoomRange(cameraDeviceInfoInterface);
            if (configFeatureZoomRange == null) {
                return this.mZoomList;
            }
            List<Float> listSubList = null;
            try {
                List<Float> list = this.mZoomList;
                listSubList = list.subList(list.indexOf(configFeatureZoomRange.get(0)), this.mZoomList.indexOf(configFeatureZoomRange.get(1)));
                listSubList.add(configFeatureZoomRange.get(1));
                return listSubList;
            } catch (IndexOutOfBoundsException e) {
                CameraUnitLog.e(TAG, "There is a problem with zoom_range in the configuration file , please check it!", e);
                return listSubList;
            }
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
        if (supportedZoomRange != null) {
            return supportedZoomRange[0];
        }
        return 1.0f;
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
        if (expertZoomRange != null) {
            return expertZoomRange[0];
        }
        return 1.0f;
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
