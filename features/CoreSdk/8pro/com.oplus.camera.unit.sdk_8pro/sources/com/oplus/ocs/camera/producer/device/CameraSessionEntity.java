package com.oplus.ocs.camera.producer.device;

import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfaceControlInterface;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class CameraSessionEntity {
    private static final int HEX_VALUE = 16;
    public static final int OPERATING_MODE_EXPLORER = 1073741824;
    private static final String TAG = "CameraSessionEntity";
    private String mCameraType;
    private String mOperationMode = null;
    private int mPreviewTemplate = -1;
    private SurfaceControlInterface mSurfaceControl = null;
    private SdkCameraDeviceConfig mConfig = null;
    private ApsRequestTag mApsTag = null;
    private int delay = 0;
    private boolean mbUseMetadataSurface = false;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface SurfaceUsage {
        public static final String AI_DEPTH = "surface_key_ai_depth";
        public static final String METADATA = "surface_key_metadata";
        public static final String PICTURE = "surface_key_picture";
        public static final String PICTURE_DOL = "surface_key_picture_dol";
        public static final String PICTURE_MFNE = "surface_key_picture_mfnr";
        public static final String PREVIEW = "surface_key_preview";
        public static final String PREVIEW_FRAME = "surface_key_preview_frame";
        public static final String PREVIEW_IN_PREVIEW = "surface_key_preview_in_preview";
        public static final String RECORDING = "surface_key_recording";
        public static final String REPROCESS = "surface_key_reprocess";
        public static final String REPROCESS_YUV = "surface_key_reprocess_yuv";
        public static final String TUNING_RAW = "surface_key_tuning_raw";
        public static final String TUNING_YUV = "surface_key_tuning_yuv";
    }

    public void setDelay(int i) {
        this.delay = i;
    }

    public int getDelay() {
        return this.delay;
    }

    public CameraSessionEntity(String str) {
        this.mCameraType = str;
    }

    public void setApsTag(ApsRequestTag apsRequestTag) {
        CameraUnitLog.v(TAG, "setApsTag, tag: " + apsRequestTag);
        this.mApsTag = apsRequestTag;
    }

    public ApsRequestTag getApsTag() {
        return this.mApsTag;
    }

    public int getOperationMode() {
        String str = this.mOperationMode;
        if (str == null) {
            return -1;
        }
        return Integer.valueOf(str, 16).intValue();
    }

    public void setOperationMode(String str) {
        this.mOperationMode = str;
    }

    public void updateExplorerOperationMode() {
        String str = this.mOperationMode;
        if (str != null) {
            this.mOperationMode = Integer.toHexString(Integer.valueOf(str, 16).intValue() | OPERATING_MODE_EXPLORER);
        }
    }

    public int getTemplate() {
        return this.mPreviewTemplate;
    }

    public void setTemplate(int i) {
        this.mPreviewTemplate = i;
    }

    public void setUseMetadataSurface(boolean z) {
        this.mbUseMetadataSurface = z;
    }

    public boolean getUseMetadataSurface() {
        return this.mbUseMetadataSurface;
    }

    public void setSurfaceControl(SurfaceControlInterface surfaceControlInterface) {
        this.mSurfaceControl = surfaceControlInterface;
    }

    public String getCameraType() {
        return this.mCameraType;
    }

    public void setConfig(SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        this.mConfig = sdkCameraDeviceConfig;
    }

    public SdkCameraDeviceConfig getConfig() {
        return this.mConfig;
    }

    public LinkedList<SurfaceWrapper> getAllSurfaceWrapper() {
        return this.mSurfaceControl.buildStreamSurface(this.mConfig, this.mCameraType);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        CameraSessionEntity cameraSessionEntity = (CameraSessionEntity) obj;
        return this.mOperationMode.equals(cameraSessionEntity.mOperationMode) && this.mPreviewTemplate == cameraSessionEntity.mPreviewTemplate && this.mConfig.equals(cameraSessionEntity.mConfig);
    }
}
