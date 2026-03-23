package com.oplus.ocs.camera.producer.info;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
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
/* loaded from: classes.dex */
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
        this.mModeName = null;
        this.mCameraType = null;
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
                size = (Size) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_FRONT_PORTRAIT_PREVIEW_SIZE, null);
            } else {
                size = (Size) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_PREVIEW_SIZE, null);
            }
            if (size != null) {
                return Arrays.asList(size);
            }
        }
        Size[] outputSizes = ((StreamConfigurationMap) this.mCameraCharacteristicsWrapper.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(SurfaceWrapper.getSurfaceClass(i));
        if (outputSizes != null) {
            this.mSupportPreviewSizeList = Arrays.asList(outputSizes);
        }
        this.mSupportMaxPreviewSize = this.mDefaultPreviewConfigSizes != null ? this.mDefaultPreviewConfigSizes.get(0) : null;
        if (this.mSupportMaxPreviewSize == null || this.mSupportMaxPreviewSize.getHeight() == 0 || this.mSupportMaxPreviewSize.getWidth() == 0) {
            return this.mSupportPreviewSizeList;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.mSupportPreviewSizeList.size(); i2++) {
            Size size2 = this.mSupportPreviewSizeList.get(i2);
            if (size2.getWidth() <= this.mSupportMaxPreviewSize.getWidth() || size2.getHeight() <= this.mSupportMaxPreviewSize.getHeight()) {
                arrayList.add(size2);
            }
        }
        if (this.mSupportMaxPreviewSize != null && !arrayList.contains(this.mSupportMaxPreviewSize)) {
            arrayList.add(this.mSupportMaxPreviewSize);
        }
        this.mSupportPreviewSizeList = arrayList;
        return this.mSupportPreviewSizeList;
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
        return this.mConfigureParameterRangeMap != null && this.mConfigureParameterRangeMap.containsKey(str);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public boolean isSupportPreviewParameter(@NonNull String str) {
        return this.mPreviewParameterRangeMap != null && this.mPreviewParameterRangeMap.containsKey(str);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Map<String, Object> getConfigureParameterRangeMap() {
        return this.mConfigureParameterRangeMap;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Object getConfigureParameterRange(@NonNull String str) {
        if (this.mConfigureParameterRangeMap == null || this.mConfigureParameterRangeMap.size() <= 0 || !this.mConfigureParameterRangeMap.keySet().contains(str)) {
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
        if (this.mPreviewParameterRangeMap == null || this.mPreviewParameterRangeMap.size() <= 0 || !this.mPreviewParameterRangeMap.keySet().contains(str)) {
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
        Map<String, FeatureInterface> features = FeatureFactory.getFeatures(this.mModeName, this.mCameraType);
        if (features == null || (featureInterface = features.get(CameraConfigHelper.getFeatureMappingNameByParameterName(str))) == null || (conflictFeatureValues = featureInterface.getConflictFeatureValues()) == null || conflictFeatureValues.isEmpty()) {
            return null;
        }
        Map<String, List<String>> map = conflictFeatureValues.get(str2);
        HashMap hashMap = new HashMap();
        if (map == null) {
            return null;
        }
        for (String str3 : map.keySet()) {
            String parameterNameByFeatureName = CameraConfigHelper.getParameterNameByFeatureName(str3);
            if (parameterNameByFeatureName != null) {
                hashMap.put(parameterNameByFeatureName, map.get(str3));
            }
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<String> getConfigureListByParameter(@NonNull Parameter.Key key) {
        return getConfigureListByMappingName(CameraConfigHelper.getFeatureMappingNameByParameterName(key.getName()));
    }

    private List<String> getConfigureListByMappingName(String str) {
        FeatureInterface featureInterface;
        Map<String, FeatureInterface> features = FeatureFactory.getFeatures(this.mModeName, this.mCameraType);
        if (features == null || str == null || (featureInterface = features.get(CameraConfigHelper.getFeatureMappingNameByParameterName(str))) == null) {
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
        String[] split = maxVideoSizeByFeature.get(0).split("X");
        String[] split2 = maxVideoSizeByFeature.get(1).split("X");
        return new Pair<>(new Size(Integer.parseInt(split2[0]), Integer.parseInt(split2[1])), new Size(Integer.parseInt(split[0]), Integer.parseInt(split[1])));
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
                    this.mLegalVideoValues = Arrays.asList(Util.parserSizeLists(CameraConfigHelper.getVendorTagMap().get(str2)));
                    return this.mLegalVideoValues;
                }
            }
        }
        this.mLegalVideoValues = new ArrayList();
        LinkedList<String> maxVideoSizeByFeature = CameraConfigHelper.getMaxVideoSizeByFeature(this.mModeName, str, map);
        if (maxVideoSizeByFeature == null) {
            return null;
        }
        for (int i = 0; i < maxVideoSizeByFeature.size(); i++) {
            int indexOf = maxVideoSizeByFeature.get(i).indexOf("X");
            int parseInt = Integer.parseInt(maxVideoSizeByFeature.get(i).substring(0, indexOf));
            int parseInt2 = Integer.parseInt(maxVideoSizeByFeature.get(i).substring(indexOf + 1));
            if (i != 0) {
                if ("slowvideo_mode".equals(this.mModeName)) {
                    this.mLegalVideoValues.add(new Size(parseInt, parseInt2));
                } else {
                    List<Size> supportDefaultVideoSizes = CameraConfigHelper.getSupportDefaultVideoSizes();
                    for (int i2 = 0; i2 < supportDefaultVideoSizes.size(); i2++) {
                        Size size = supportDefaultVideoSizes.get(i2);
                        if (size.getWidth() <= parseInt && size.getHeight() <= parseInt2) {
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
