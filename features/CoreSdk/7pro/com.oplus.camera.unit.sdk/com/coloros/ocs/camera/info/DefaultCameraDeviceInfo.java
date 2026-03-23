package com.coloros.ocs.camera.info;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.coloros.ocs.camera.util.Util;
import com.oplus.ocs.camera.common.parameter.Parameter;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class DefaultCameraDeviceInfo implements CameraDeviceInfoInterface {
    private com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface mCameraDeviceInfoInterface;

    public DefaultCameraDeviceInfo(com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface cameraDeviceInfoInterface) {
        this.mCameraDeviceInfoInterface = null;
        this.mCameraDeviceInfoInterface = cameraDeviceInfoInterface;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<String> getPhysicalCameraTypeList() {
        return this.mCameraDeviceInfoInterface.getPhysicalCameraTypeList();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportPreviewSize(int i) {
        return this.mCameraDeviceInfoInterface.getSupportPreviewSize(i);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportPictureSize() {
        return this.mCameraDeviceInfoInterface.getSupportPictureSize();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Integer> getSupportPictureFormat() {
        return this.mCameraDeviceInfoInterface.getSupportPictureFormat();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportVideoSize() {
        return this.mCameraDeviceInfoInterface.getSupportVideoSize();
    }

    private Map<String, String> convertConfigFeatures(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        if (map == null || map.isEmpty()) {
            return map;
        }
        for (String str : map.keySet()) {
            hashMap.put(Util.convertOldParameterKeyName(str), map.get(str));
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportPreviewSize(int i, Map<String, String> map) {
        return this.mCameraDeviceInfoInterface.getSupportPreviewSize(i, convertConfigFeatures(map));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportPictureSize(Map<String, String> map) {
        return this.mCameraDeviceInfoInterface.getSupportPictureSize(convertConfigFeatures(map));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Integer> getSupportPictureFormat(Map<String, String> map) {
        return this.mCameraDeviceInfoInterface.getSupportPictureFormat(convertConfigFeatures(map));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public List<Size> getSupportVideoSize(Map<String, String> map) {
        return this.mCameraDeviceInfoInterface.getSupportVideoSize(convertConfigFeatures(map));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public boolean isSupportConfigureParameter(@NonNull String str) {
        return this.mCameraDeviceInfoInterface.isSupportConfigureParameter(Util.convertOldParameterKeyName(str));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public boolean isSupportPreviewParameter(@NonNull String str) {
        return this.mCameraDeviceInfoInterface.isSupportPreviewParameter(Util.convertOldParameterKeyName(str));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Map<String, Object> getConfigureParameterRangeMap() {
        return this.mCameraDeviceInfoInterface.getConfigureParameterRangeMap();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Map<String, Object> getPreviewParameterRangeMap() {
        return this.mCameraDeviceInfoInterface.getPreviewParameterRangeMap();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Object getConfigureParameterRange(@NonNull String str) {
        return this.mCameraDeviceInfoInterface.getConfigureParameterRange(Util.convertOldParameterKeyName(str));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Object getPreviewParameterRange(@NonNull String str) {
        return this.mCameraDeviceInfoInterface.getPreviewParameterRange(Util.convertOldParameterKeyName(str));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public <T> T get(CameraCharacteristics.Key<T> key) {
        return (T) this.mCameraDeviceInfoInterface.get(key);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Map<String, List<String>> getConflictParameter() {
        return this.mCameraDeviceInfoInterface.getConflictParameter();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    @Nullable
    public Map<String, List<String>> getConflictParameter(String str, String str2) {
        Map<String, List<String>> conflictParameter = this.mCameraDeviceInfoInterface.getConflictParameter(Util.convertOldParameterKeyName(str), str2);
        if (conflictParameter == null || conflictParameter.isEmpty()) {
            return conflictParameter;
        }
        HashMap hashMap = new HashMap();
        for (String str3 : conflictParameter.keySet()) {
            hashMap.put(Util.convertNewParameterKeyName(str3), conflictParameter.get(str3));
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    @Nullable
    public List<String> getConfigureListByParameter(@NonNull Parameter.Key key) {
        return this.mCameraDeviceInfoInterface.getConfigureListByParameter(key);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Pair<Size, Size> getVideoMappingSizesFromConfig(String str, Map<String, String> map) {
        return this.mCameraDeviceInfoInterface.getVideoMappingSizesFromConfig(str, map);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public Hashtable<Size, Size> getPreviewMappingSizesFromConfig(String str, Map<String, String> map) {
        return this.mCameraDeviceInfoInterface.getPreviewMappingSizesFromConfig(str, map);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface
    public boolean isPreviewAlgoDisable(int i) {
        return this.mCameraDeviceInfoInterface.isPreviewAlgoDisable(i);
    }
}
