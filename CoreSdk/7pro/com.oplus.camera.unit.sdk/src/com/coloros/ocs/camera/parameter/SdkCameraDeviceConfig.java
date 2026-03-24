package com.coloros.ocs.camera.parameter;

import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.coloros.ocs.camera.surface.SurfaceWrapper;
import com.coloros.ocs.camera.util.Util;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class SdkCameraDeviceConfig {
    private static final String TAG = "SdkCameraDeviceConfig";
    private Parameter mConfigureParameter;
    private String mModeName;
    private final List<SurfaceWrapper> mPictureSurfaceList;
    private final List<SurfaceWrapper> mPreviewSurfaceList;
    private SurfaceWrapper mVideoSurface;

    private SdkCameraDeviceConfig(String str, List<SurfaceWrapper> list, List<SurfaceWrapper> list2, SurfaceWrapper surfaceWrapper, Parameter parameter) {
        this.mModeName = null;
        this.mPreviewSurfaceList = new ArrayList();
        this.mPictureSurfaceList = new ArrayList();
        this.mVideoSurface = null;
        this.mConfigureParameter = null;
        this.mModeName = str;
        if (list != null && !list.isEmpty()) {
            this.mPreviewSurfaceList.addAll(list);
        }
        if (list2 != null && !list2.isEmpty()) {
            this.mPictureSurfaceList.addAll(list2);
        }
        this.mVideoSurface = surfaceWrapper;
        this.mConfigureParameter = parameter;
    }

    public Map<String, SdkCameraDeviceConfig> split() {
        HashMap hashMap = new HashMap();
        for (SurfaceWrapper surfaceWrapper : this.mPreviewSurfaceList) {
            hashMap.put(surfaceWrapper.getCameraType(), new SdkCameraDeviceConfig(this.mModeName, Collections.singletonList(surfaceWrapper), null, null, this.mConfigureParameter));
        }
        return hashMap;
    }

    public String getModeName() {
        return this.mModeName;
    }

    @NonNull
    public List<SurfaceWrapper> getPreviewSurfaces() {
        return this.mPreviewSurfaceList;
    }

    public SurfaceWrapper getDefaultPreviewSurface() {
        return this.mPreviewSurfaceList.get(0);
    }

    public SurfaceWrapper getPreviewSurface(String str) {
        for (SurfaceWrapper surfaceWrapper : getPreviewSurfaces()) {
            if (surfaceWrapper.getCameraType().equals(str)) {
                return surfaceWrapper;
            }
        }
        return null;
    }

    public boolean isSetPreviewFrameSurface() {
        for (SurfaceWrapper surfaceWrapper : this.mPreviewSurfaceList) {
            if (6 == surfaceWrapper.getSurfaceType()) {
                return true;
            }
        }
        return false;
    }

    public ArrayList<Integer> getPreviewSurfaceTypes() {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (SurfaceWrapper surfaceWrapper : this.mPreviewSurfaceList) {
            arrayList.add(Integer.valueOf(surfaceWrapper.getSurfaceType()));
        }
        return arrayList;
    }

    public void updateHalPreviewSize(Hashtable<Size, Size> hashtable) {
        if (hashtable == null || hashtable.isEmpty()) {
            return;
        }
        for (SurfaceWrapper surfaceWrapper : getPreviewSurfaces()) {
            if (hashtable.containsKey(surfaceWrapper.getAppSurfaceSize())) {
                surfaceWrapper.setHalSurfaceSize(hashtable.get(surfaceWrapper.getAppSurfaceSize()));
            }
        }
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SdkCameraDeviceConfig) {
            SdkCameraDeviceConfig sdkCameraDeviceConfig = (SdkCameraDeviceConfig) obj;
            if (this.mModeName.equals(sdkCameraDeviceConfig.mModeName)) {
                if ((this.mVideoSurface == null || this.mVideoSurface.equals(sdkCameraDeviceConfig.mVideoSurface)) && ((this.mVideoSurface != null || sdkCameraDeviceConfig.mVideoSurface == null) && this.mPreviewSurfaceList.size() == sdkCameraDeviceConfig.mPreviewSurfaceList.size())) {
                    for (int i = 0; i < this.mPreviewSurfaceList.size(); i++) {
                        if (!this.mPreviewSurfaceList.get(i).equals(sdkCameraDeviceConfig.mPreviewSurfaceList.get(i))) {
                            return false;
                        }
                    }
                    if (this.mPictureSurfaceList.size() != sdkCameraDeviceConfig.mPictureSurfaceList.size()) {
                        return false;
                    }
                    for (int i2 = 0; i2 < this.mPictureSurfaceList.size(); i2++) {
                        if (!this.mPictureSurfaceList.get(i2).equals(sdkCameraDeviceConfig.mPictureSurfaceList.get(i2))) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @NonNull
    public List<SurfaceWrapper> getPictureSurfaces() {
        return this.mPictureSurfaceList;
    }

    public SurfaceWrapper getVideoSurface() {
        return this.mVideoSurface;
    }

    public SurfaceWrapper getPictureSurface(String str, int i, int i2) {
        CameraUnitLog.d(TAG, "getPictureSurface, cameraType: " + str + ", surfaceType: " + i + ", format: " + i2 + ", mPictureSurfaceList: " + this.mPictureSurfaceList);
        if (this.mPictureSurfaceList.isEmpty()) {
            return null;
        }
        for (SurfaceWrapper surfaceWrapper : this.mPictureSurfaceList) {
            if (surfaceWrapper.getCameraType().equals(str) && i == surfaceWrapper.getSurfaceType() && i2 == surfaceWrapper.getFormat()) {
                return surfaceWrapper;
            }
        }
        return null;
    }

    public void updateHalVideoSize(Pair<Size, Size> pair) {
        if (pair == null || this.mVideoSurface == null || !this.mVideoSurface.getAppSurfaceSize().equals(pair.first)) {
            return;
        }
        this.mVideoSurface.setHalSurfaceSize((Size) pair.second);
    }

    public Parameter getConfigureParameter() {
        return this.mConfigureParameter;
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private ConfigureParameter.Builder mConfigureParameterBuilder;
        private String mModeName = null;
        private List<SurfaceWrapper> mPreviewSurfaces = null;
        private List<SurfaceWrapper> mPictureSurfaces = null;
        private SurfaceWrapper mVideoSurfaceWrapper = null;
        private Size mAppVideoSize = null;

        public Builder() {
            this.mConfigureParameterBuilder = null;
            this.mConfigureParameterBuilder = new ConfigureParameter.Builder();
        }

        public void setModeName(@NonNull String str) {
            this.mModeName = str;
        }

        public void setPreviewSurfaces(@NonNull List<SurfaceWrapper> list) {
            this.mPreviewSurfaces = list;
        }

        public void setPictureSurfaces(@NonNull List<SurfaceWrapper> list) {
            this.mPictureSurfaces = list;
        }

        public void setVideoSize(@NonNull Size size) {
            this.mAppVideoSize = size;
        }

        public void setVideoSurface(@NonNull SurfaceWrapper surfaceWrapper) {
            this.mVideoSurfaceWrapper = surfaceWrapper;
        }

        public void setParameter(@NonNull String str, Object obj) {
            this.mConfigureParameterBuilder.set(Util.convertOldParameterKeyName(str), obj);
        }

        public SdkCameraDeviceConfig build() {
            if (this.mPreviewSurfaces == null || this.mPreviewSurfaces.isEmpty()) {
                throw new RuntimeException("preview surface not configured, you need set at least on preview surface!");
            }
            if (this.mVideoSurfaceWrapper == null) {
                if (this.mAppVideoSize == null) {
                    CameraUnitLog.w(SdkCameraDeviceConfig.TAG, "SdkCameraDeviceConfig, build, mVideoSurface and mAppVideoSize not set, use preview configure.");
                }
                SurfaceWrapper surfaceWrapper = this.mPreviewSurfaces.get(0);
                this.mVideoSurfaceWrapper = new SurfaceWrapper(surfaceWrapper.getCameraType(), CameraSessionEntity.SurfaceUsage.RECORDING, this.mAppVideoSize == null ? surfaceWrapper.getAppSurfaceSize() : this.mAppVideoSize, this.mAppVideoSize == null ? surfaceWrapper.getHalSurfaceSize() : this.mAppVideoSize, 0, 4);
            }
            return new SdkCameraDeviceConfig(this.mModeName, this.mPreviewSurfaces, this.mPictureSurfaces, this.mVideoSurfaceWrapper, this.mConfigureParameterBuilder.build());
        }
    }
}
