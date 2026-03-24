package com.oplus.ocs.camera.producer.info;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.debug.PropProvider;
import com.oplus.ocs.camera.producer.feature.FeatureFactory;
import com.oplus.ocs.camera.producer.feature.FeatureInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CameraDeviceInfoImpl implements CameraDeviceInfoInterface {
    private static final String TAG = "CameraDeviceInfoImpl";
    private String mCameraType;
    private String mModeName;
    private List<String> mPhysicalCameraTypeList = null;
    private List<Size> mSupportPreviewSizeList = null;
    private Size mSupportMaxPreviewSize = null;
    private List<Size> mDefaultPreviewConfigSizes = null;
    private List<Size> mSupportPictureSizeList = null;
    private List<Integer> mSupportPictureFormatList = null;
    private List<Size> mSupportVideoSizeList = null;
    private Map<String, Object> mConfigureParameterRangeMap = new HashMap();
    private Map<String, Object> mPreviewParameterRangeMap = new HashMap();
    private CameraCharacteristicsWrapper mCameraCharacteristicsWrapper = null;
    private List<Size> mLegalVideoValues = null;

    public CameraDeviceInfoImpl(String str, String str2) {
        this.mModeName = str;
        this.mCameraType = str2;
    }

    public void setPhysicalCameraTypeList(List<String> list) {
        this.mPhysicalCameraTypeList = list;
    }

    public void setDefaultPreviewConfigSizes(List<Size> list) {
        this.mDefaultPreviewConfigSizes = list;
    }

    public void setSupportPictureSizeList(List<Size> list) {
        this.mSupportPictureSizeList = list;
    }

    public void setSupportPictureFormatList(List<Integer> list) {
        this.mSupportPictureFormatList = list;
    }

    public void setSupportVideoSizeList(List<Size> list) {
        this.mSupportVideoSizeList = list;
    }

    public void setConfigureParameterRangeMap(Map<String, Object> map) {
        this.mConfigureParameterRangeMap = map;
    }

    public void setPreviewParameterRangeMap(Map<String, Object> map) {
        this.mPreviewParameterRangeMap = map;
    }

    public void setCameraCharacteristicsWrapper(CameraCharacteristicsWrapper cameraCharacteristicsWrapper) {
        this.mCameraCharacteristicsWrapper = cameraCharacteristicsWrapper;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<String> getPhysicalCameraTypeList() {
        return this.mPhysicalCameraTypeList;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportPreviewSize(int i) {
        Size size;
        if (!Util.isSystemCamera() && "portrait_mode".equals(this.mModeName)) {
            if ("front_main".equals(this.mCameraType)) {
                size = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_PORTRAIT_PREVIEW_SIZE, null);
            } else {
                size = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_PREVIEW_SIZE, null);
            }
            if (size != null) {
                return Arrays.asList(size);
            }
        }
        Size[] outputSizes = ((StreamConfigurationMap) this.mCameraCharacteristicsWrapper.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(SurfaceWrapper.getSurfaceClass(i));
        if (outputSizes != null) {
            this.mSupportPreviewSizeList = Arrays.asList(outputSizes);
        }
        List<Size> list = this.mDefaultPreviewConfigSizes;
        Size size2 = list != null ? list.get(0) : null;
        this.mSupportMaxPreviewSize = size2;
        if (size2 == null || size2.getHeight() == 0 || this.mSupportMaxPreviewSize.getWidth() == 0) {
            return this.mSupportPreviewSizeList;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.mSupportPreviewSizeList.size(); i2++) {
            Size size3 = this.mSupportPreviewSizeList.get(i2);
            if (size3.getWidth() <= this.mSupportMaxPreviewSize.getWidth() || size3.getHeight() <= this.mSupportMaxPreviewSize.getHeight()) {
                arrayList.add(size3);
            }
        }
        Size size4 = this.mSupportMaxPreviewSize;
        if (size4 != null && !arrayList.contains(size4)) {
            arrayList.add(this.mSupportMaxPreviewSize);
        }
        this.mSupportPreviewSizeList = arrayList;
        return arrayList;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportPictureSize() {
        return this.mSupportPictureSizeList;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Integer> getSupportPictureFormat() {
        return this.mSupportPictureFormatList;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportVideoSize() {
        return this.mSupportVideoSizeList;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportPreviewSize(int i, Map<String, String> map) {
        if (this.mPhysicalCameraTypeList.size() > 1) {
            return null;
        }
        return getSupportPreviewSize(i);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportPictureSize(Map<String, String> map) {
        return getSupportPictureSize();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Integer> getSupportPictureFormat(Map<String, String> map) {
        return getSupportPictureFormat();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportVideoSize(Map<String, String> map) {
        CameraUnitLog.d(TAG, "getSupportVideoSize, configFeatures: " + map);
        if (this.mPhysicalCameraTypeList.size() > 1) {
            return null;
        }
        if (getSupportedVideoSizesFromConfig(this.mPhysicalCameraTypeList.get(0), map) != null) {
            setSupportVideoSizeList(this.mLegalVideoValues);
        }
        return getSupportVideoSize();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public boolean isSupportConfigureParameter(@NonNull String str) {
        Map<String, Object> map = this.mConfigureParameterRangeMap;
        return map != null && map.containsKey(str);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public boolean isSupportPreviewParameter(@NonNull String str) {
        Map<String, Object> map = this.mPreviewParameterRangeMap;
        return map != null && map.containsKey(str);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Map<String, Object> getConfigureParameterRangeMap() {
        return this.mConfigureParameterRangeMap;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Object getConfigureParameterRange(@NonNull String str) {
        Map<String, Object> map = this.mConfigureParameterRangeMap;
        if (map == null || map.size() <= 0 || !this.mConfigureParameterRangeMap.keySet().contains(str)) {
            return null;
        }
        return this.mConfigureParameterRangeMap.get(str);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Map<String, Object> getPreviewParameterRangeMap() {
        return this.mPreviewParameterRangeMap;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Object getPreviewParameterRange(@NonNull String str) {
        Map<String, Object> map = this.mPreviewParameterRangeMap;
        if (map == null || map.size() <= 0 || !this.mPreviewParameterRangeMap.keySet().contains(str)) {
            return null;
        }
        return this.mPreviewParameterRangeMap.get(str);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public <T> T get(CameraCharacteristics.Key<T> key) {
        return (T) this.mCameraCharacteristicsWrapper.get(key);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    @Deprecated
    public Map<String, List<String>> getConflictParameter() {
        throw new RuntimeException("Interface has been deprecated! Use CameraDeviceInfo.getConflictParameter(String featureName, String featureValue) to replace.");
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    @Nullable
    public Map<String, List<String>> getConflictParameter(String str, String str2) {
        FeatureInterface featureInterface;
        Map<String, Map<String, List<String>>> conflictFeatureValues;
        Map<String, List<String>> map;
        Map<String, FeatureInterface> features = FeatureFactory.getFeatures(this.mModeName, this.mCameraType);
        if (features == null || (featureInterface = features.get(str)) == null || (conflictFeatureValues = featureInterface.getConflictFeatureValues()) == null || conflictFeatureValues.isEmpty() || (map = conflictFeatureValues.get(str2)) == null) {
            return null;
        }
        return new HashMap(map);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<String> getConfigureListByParameter(@NonNull Parameter.Key key) {
        return getConfigureListByMappingName(key.getName());
    }

    private List<String> getConfigureListByMappingName(String str) {
        FeatureInterface featureInterface;
        Map<String, FeatureInterface> features = FeatureFactory.getFeatures(this.mModeName, this.mCameraType);
        if (features == null || str == null || (featureInterface = features.get(str)) == null) {
            return null;
        }
        return featureInterface.getSupportValues();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Pair<Size, Size> getVideoMappingSizesFromConfig(String str, Map<String, String> map) {
        LinkedList<String> maxVideoSizeByFeature = CameraConfigHelper.getMaxVideoSizeByFeature(this.mModeName, str, map);
        if (maxVideoSizeByFeature == null || 2 != maxVideoSizeByFeature.size()) {
            CameraUnitLog.e(TAG, "getVideoMappingSizesFromConfig, configureAllMaxSize error: " + maxVideoSizeByFeature);
            return null;
        }
        String[] strArrSplit = maxVideoSizeByFeature.get(0).split("X");
        String[] strArrSplit2 = maxVideoSizeByFeature.get(1).split("X");
        return new Pair<>(new Size(Integer.parseInt(strArrSplit2[0]), Integer.parseInt(strArrSplit2[1])), new Size(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1])));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Hashtable<Size, Size> getPreviewMappingSizesFromConfig(String str, Map<String, String> map) {
        Hashtable<Size, Size> hashtable = new Hashtable<>();
        LinkedList<Size> supportPreviewSizeByFeature = CameraConfigHelper.getSupportPreviewSizeByFeature(this.mModeName, str, map);
        if (supportPreviewSizeByFeature != null && !supportPreviewSizeByFeature.isEmpty()) {
            hashtable.put(supportPreviewSizeByFeature.get(1), supportPreviewSizeByFeature.get(0));
        }
        return hashtable;
    }

    private List<Size> getSupportedVideoSizesFromConfig(String str, Map<String, String> map) {
        CameraUnitLog.d(TAG, "getSupportedVideoSizesFromConfig, feature: " + map + ", mode :" + this.mModeName);
        if (map != null) {
            for (String str2 : map.keySet()) {
                if (CameraConfigHelper.getVendorTagMap().containsKey(str2)) {
                    List<Size> listAsList = Arrays.asList(Util.parserSizeLists(CameraConfigHelper.getVendorTagMap().get(str2)));
                    this.mLegalVideoValues = listAsList;
                    return listAsList;
                }
            }
        }
        this.mLegalVideoValues = new ArrayList();
        LinkedList<String> maxVideoSizeByFeature = CameraConfigHelper.getMaxVideoSizeByFeature(this.mModeName, str, map);
        if (maxVideoSizeByFeature == null) {
            return null;
        }
        for (int i = 0; i < maxVideoSizeByFeature.size(); i++) {
            int iIndexOf = maxVideoSizeByFeature.get(i).indexOf("X");
            int i2 = Integer.parseInt(maxVideoSizeByFeature.get(i).substring(0, iIndexOf));
            int i3 = Integer.parseInt(maxVideoSizeByFeature.get(i).substring(iIndexOf + 1));
            if (i != 0) {
                if ("slowvideo_mode".equals(this.mModeName)) {
                    this.mLegalVideoValues.add(new Size(i2, i3));
                } else {
                    List<Size> supportDefaultVideoSizes = CameraConfigHelper.getSupportDefaultVideoSizes();
                    for (int i4 = 0; i4 < supportDefaultVideoSizes.size(); i4++) {
                        Size size = supportDefaultVideoSizes.get(i4);
                        if (size.getWidth() <= i2 && size.getHeight() <= i3) {
                            this.mLegalVideoValues.add(size);
                        }
                    }
                    CameraUnitLog.i(TAG, "getSupportedVideoSizesFromConfig, cameraType: " + str + ", sizes: " + this.mLegalVideoValues);
                }
            }
        }
        return this.mLegalVideoValues;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public boolean isPreviewAlgoDisable(int i) {
        return PropProvider.getInstance().isPreviewAlgoDisable(i);
    }
}
