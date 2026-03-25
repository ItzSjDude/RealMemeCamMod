package com.oplus.ocs.camera.consumer.apsAdapter.config;

import android.content.Context;
import android.os.ConditionVariable;
import android.util.ArrayMap;
import android.util.Size;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.update.UpdateHelper;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AlgoSwitchConfig {
    private static final String ALGO_SWITCH_CONFIG_NAME = "oplus_camera_algo_switch_config";
    public static final int APS_MODE_CAPTURE = 2;
    public static final int APS_MODE_FULL = 1;
    public static final int APS_MODE_NONE = 0;
    public static final int APS_MODE_PREVIEW = 3;
    public static final String APS_PIPELINE_ASD = "asd";
    public static final String APS_PIPELINE_PREVIEW = "preview";
    public static final String APS_PIPELINE_VIDEO = "video";
    public static final int APS_VERSION_2 = 2;
    public static final int APS_VERSION_3 = 3;
    public static final int APS_VERSION_5 = 5;
    private static final boolean DEBUG = false;
    private static final String TAG = "AlgoSwitchConfig";
    private static final ConditionVariable CONFIG_CONDITION = new ConditionVariable();
    private static final HashMap<String, CaptureConfig> sCaptureConfigMap = new HashMap<>();
    private static final HashMap<String, PreviewConfig> sPreviewConfigMap = new HashMap<>();
    private static int sApsVersion = 2;
    private static int sApsMode = 0;
    private static String sPackageName = "com.oplus.camera";
    private static long sTotalMemory = -1;

    public static void initialize(Context context) {
        ConditionVariable conditionVariable = CONFIG_CONDITION;
        conditionVariable.close();
        sPackageName = context.getPackageName();
        sTotalMemory = ApsUtils.getTotalMemory(context);
        parseConfigData(UpdateHelper.getValidConfigData(context, ApsUtils.CONFIG_JSON_PATH + ALGO_SWITCH_CONFIG_NAME));
        conditionVariable.open();
    }

    public static String getPackageName() {
        return sPackageName;
    }

    public static long getTotalMemory() {
        return sTotalMemory;
    }

    public static int getApsVersion() {
        return sApsVersion;
    }

    public static int getApsMode() {
        return sApsMode;
    }

    public static boolean isUseApsDecision() {
        return sApsVersion == 5;
    }

    public static boolean getSupportApsCapture() {
        int i = sApsMode;
        return i == 1 || i == 2;
    }

    public static boolean getSupportApsPreview() {
        int i;
        return sApsVersion >= 3 && ((i = sApsMode) == 1 || i == 3);
    }

    public static boolean getSupportCaptureAlgo(String str, int i, String str2) {
        CaptureConfig captureConfig = sCaptureConfigMap.get(str + "@" + i);
        return captureConfig != null && captureConfig.mbEnable && captureConfig.mAlgos.contains(str2);
    }

    public static boolean getSupportCapturMode(String str, int i) {
        CaptureConfig captureConfig = sCaptureConfigMap.get(str + "@" + i);
        return captureConfig != null && captureConfig.mbEnable;
    }

    public static boolean getSupportCameraFeature(String str, int i) {
        return sPreviewConfigMap.containsKey(str + "@" + i);
    }

    public static boolean getSupportPreviewAlgo(String str, int i, String str2, String str3) {
        PreviewConfig.Component component;
        CONFIG_CONDITION.block();
        PreviewConfig previewConfig = sPreviewConfigMap.get(str + "@" + i);
        if (previewConfig != null && previewConfig.mComponentMap.containsKey(str2)
                
                && (component = previewConfig.mComponentMap.get(str2)) != null && component.mAlgoList != null) {
            for (String str4 : component.mAlgoList) {
                if (str4.equals(str3)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static CaptureConfig getCaptureConfig(String str, int i) {
        CaptureConfig captureConfig = sCaptureConfigMap.get(str + "@" + i);
        if (captureConfig != null) {
            return new CaptureConfig(captureConfig);
        }
        return null;
    }

    public static PreviewConfig getPreviewConfig(String str, int i) {
        CONFIG_CONDITION.block();
        PreviewConfig previewConfig = sPreviewConfigMap.get(str + "@" + i);
        if (previewConfig == null) {
            ApsAdapterLog.d(TAG, "getPreviewConfig, config is null");
            PreviewConfig previewConfig2 = new PreviewConfig();
            previewConfig2.mCameraId = i;
            previewConfig2.mCameraMode = str;
            PreviewConfig.Component component = new PreviewConfig.Component();
            component.mbEnable = false;
            previewConfig2.mComponentMap.put(APS_PIPELINE_PREVIEW, component);
            PreviewConfig.Component component2 = new PreviewConfig.Component();
            component2.mbEnable = false;
            previewConfig2.mComponentMap.put(APS_PIPELINE_VIDEO, component2);
            PreviewConfig.Component component3 = new PreviewConfig.Component();
            component3.mbEnable = false;
            previewConfig2.mComponentMap.put(APS_PIPELINE_ASD, component3);
            return previewConfig2;
        }
        return new PreviewConfig(previewConfig);
    }

            
    public static PreviewConfig getPreviewConfig(String str, int i, Size size, Size size2, Size size3, boolean z,
            boolean z2, boolean z3) {
        CONFIG_CONDITION.block();
        PreviewConfig previewConfig = sPreviewConfigMap.get(str + "@" + i);
        if (previewConfig == null) {
            ApsAdapterLog.e(TAG, "getPreviewConfig, preview config is null");
            return null;
        }
        ApsAdapterLog.d(TAG, "getPreviewConfig, isNeedEnablePipLine: " + z2 + ", isVideoWatermarkOn: " + z);
        PreviewConfig previewConfig2 = new PreviewConfig(previewConfig);
        if (size != null && previewConfig2.mComponentMap.containsKey(APS_PIPELINE_PREVIEW)) {
            PreviewConfig.Component component = previewConfig2.mComponentMap.get(APS_PIPELINE_PREVIEW);
            checkNeedAlgorithmVideoFrc(false, component);
            if (z2 && z) {
                component.mbEnable = true;
                    
            }
            if ((component.mMasterInputWidth != size.getWidth() || component.mMasterInputHeight != size.getHeight())
                    && component.mbEnable) {
                component.mMasterInputWidth = size.getWidth();
                component.mMasterInputHeight = size.getHeight();
                component.mSlaveInputWidth = size.getWidth();
                component.mSlaveInputHeight = size.getHeight();
                component.mThirdInputWidth = size.getWidth();
                component.mThirdInputHeight = size.getHeight();
                component.mOutputWidth = size.getWidth();
                component.mOutputHeight = size.getHeight();
            }
        }
        if (size2 != null && previewConfig2.mComponentMap.keySet().contains(APS_PIPELINE_VIDEO)) {
            PreviewConfig.Component component2 = previewConfig2.mComponentMap.get(APS_PIPELINE_VIDEO);
            checkNeedAlgorithmVideoFrc(z3, component2);
            if (z2 && z) {
                    
                component2.mbEnable = true;
            }
            if ((component2.mMasterInputWidth != size2.getWidth() || component2.mMasterInputHeight != size2.getHeight())
                    && component2.mbEnable) {
                component2.mMasterInputWidth = size2.getWidth();
                component2.mMasterInputHeight = size2.getHeight();
                component2.mSlaveInputWidth = size2.getWidth();
                component2.mSlaveInputHeight = size2.getHeight();
                component2.mThirdInputWidth = size2.getWidth();
                component2.mThirdInputHeight = size2.getHeight();
                component2.mOutputWidth = size3.getWidth();
                component2.mOutputHeight = size3.getHeight();
            }
        }
                    
        if (size != null && previewConfig2.mComponentMap.keySet().contains(APS_PIPELINE_ASD)) {
            PreviewConfig.Component component3 = previewConfig2.mComponentMap.get(APS_PIPELINE_ASD);
            checkNeedAlgorithmVideoFrc(false, component3);
            if ((component3.mMasterInputWidth != size.getWidth() || component3.mMasterInputHeight != size.getHeight())
                    && component3.mbEnable) {
                component3.mMasterInputWidth = size.getWidth();
                component3.mMasterInputHeight = size.getHeight();
                component3.mSlaveInputWidth = size.getWidth();
                component3.mSlaveInputHeight = size.getHeight();
                component3.mThirdInputWidth = size.getWidth();
                component3.mThirdInputHeight = size.getHeight();
                component3.mOutputWidth = size.getWidth();
                component3.mOutputHeight = size.getHeight();
            }
        }
        return previewConfig2;
    }

    private static void checkNeedAlgorithmVideoFrc(boolean z, PreviewConfig.Component component) {
        if (z || component.mAlgoList == null) {
            return;
        }
        for (int i = 0; i < component.mAlgoList.length; i++) {
            if (ApsParameters.ALGO_NAME_FRC.equals(component.mAlgoList[i])) {
                component.mAlgoList[i] = "";
            }
        }
    }

    private static void parseConfigData(String str) {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                            
                sApsVersion = jSONObject.getInt("aps_version");
                sApsMode = jSONObject.getInt("aps_mode");
                ApsAdapterLog.d(TAG, "parseConfigData, sApsVersion: " + sApsVersion + ", sApsMode: " + sApsMode);
                if (UpdateHelper.isNewConfigFormat(str)) {
                    ApsAdapterLog.d(TAG, "parseConfigData, configVersion: "
                            + jSONObject.getDouble(UpdateHelper.CONFIG_FILE_VERSION));
                }
                if (getSupportApsCapture()) {
                    parseCaptureConfig(jSONObject);
                }
                if (getSupportApsPreview()) {
                    parsePreviewConfig(jSONObject);
                }
            } catch (Exception e) {
                ApsAdapterLog.e(TAG, "parseConfigData, e: " + e.getMessage());
            }
        }
    }

    private static void parseCaptureConfig(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("aps_capture_configs");
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string = jSONObject2.getString("mode");
                    JSONArray jSONArray2 = jSONObject2.getJSONArray("entity");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject3 = jSONArray2.getJSONObject(i2);
                        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
                        Iterator<String> itKeys = jSONObject3.keys();
                        while (itKeys.hasNext()) {
                            linkedHashSet.add(itKeys.next());
                        }
                        if (linkedHashSet.contains("id")) {
                            CaptureConfig captureConfig = new CaptureConfig();
                            captureConfig.mCameraMode = string;
                            captureConfig.mCameraId = jSONObject3.getInt("id");
                            boolean z = true;
                            if (linkedHashSet.contains("enable") && jSONObject3.getInt("enable") != 1) {
                                z = false;
                            }
                            captureConfig.mbEnable = z;
                            linkedHashSet.remove("id");
                            linkedHashSet.remove("enable");
                                    
                            for (String str : linkedHashSet) {
                                if (jSONObject3.getInt(str) != 0) {
                                    captureConfig.mAlgos.add(str);
                                }
                            }
                            sCaptureConfigMap.put(captureConfig.mCameraMode + "@" + captureConfig.mCameraId,
                                    captureConfig);
                        }
                    }
                } catch (Exception e) {
                    ApsAdapterLog.e(TAG, "parseCaptureConfig, e1: " + e.getMessage());
                }
            }
        } catch (Exception e2) {
            ApsAdapterLog.e(TAG, "parseCaptureConfig, e2: " + e2.getMessage());
        }
    }

    private static void parsePreviewConfig(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("aps_preview_configs");
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string = jSONObject2.getString("mode");
                    JSONArray jSONArray2 = jSONObject2.getJSONArray("entity");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject3 = jSONArray2.getJSONObject(i2);
                        if (jSONObject3.has("id")) {
                            PreviewConfig previewConfig = new PreviewConfig();
                            previewConfig.mCameraMode = string;
                            previewConfig.mCameraId = jSONObject3.getInt("id");
                                    
                            previewConfig.mCameraNum = jSONObject3.getInt("camera_num");
                            previewConfig.mIsSeparateStreamForPrevAndVideo = jSONObject3.getInt("separate_preview_video");
                            JSONObject jSONObject4 = jSONObject3.getJSONObject("pipelines");
                            Iterator<String> itKeys = jSONObject4.keys();
                            while (itKeys.hasNext()) {
                                String next = itKeys.next();
                                JSONObject jSONObject5 = jSONObject4.getJSONObject(next)
                                    ;
                                PreviewConfig.Component component = new PreviewConfig.Component();
                                try {
                                    boolean z = true;
                                    if (jSONObject5.getInt("enable") != 1) {
                                        z = false;
                                    }
                                    component.mbEnable = z;
                                    component.mMasterInputWidth = jSONObject5.getInt("master_input_width");
                                    component.mMasterInputHeight = jSONObject5.getInt("master_input_height");
                                    component.mSlaveInputWidth = jSONObject5.getInt("slave_input_width");
                                    component.mSlaveInputHeight = jSONObject5.getInt("slave_input_height");
                                    component.mThirdInputWidth = jSONObject5.getInt("third_input_width");
                                    component.mThirdInputHeight = jSONObject5.getInt("third_input_height");
                                    component.mOutputWidth = jSONObject5.getInt("output_width");
                                    component.mOutputHeight = jSONObject5.getInt("output_height");
                                    component.mFrameSkipCnt = jSONObject5.getInt("skip_frame_cnt");
                                    String string2 = jSONObject5.getString("pipeline_copy_from");
                                    if (string2.isEmpty()) {
                                        string2 = null;
                                    }
                                    component.mPipelineCopyFrom = string2;
                                    String string3 = jSONObject5.getString("algonode_copy_from");
                                    if (string3.isEmpty()) {
                                        string3 = null;
                                    }
                                    component.mAlgoNodeCopyFrom = string3;
                                    JSONArray jSONArray3 = jSONObject5.getJSONArray("algo_list");
                                    int length = jSONArray3.length();
                                    if (length > 0) {
                                        component.mAlgoList = new String[length];
                                        for (int i3 = 0; i3 < length; i3++) {
                                            component.mAlgoList[i3] = jSONArray3.getString(i3);
                                        }
                                    }
                                    previewConfig.mComponentMap.put(next, component);
                                } catch (Exception e) {
                                    ApsAdapterLog.e(TAG, "parsePreviewConfig, e1/e2 inner error: " + e.getMessage());
                                }
                                                            
                                                                    
                                                                    
                            }
                            sPreviewConfigMap.put(previewConfig.mCameraMode + "@" + previewConfig.mCameraId, previewConfig);
                        }
                    }
                } catch (Exception e4) {
                    ApsAdapterLog.e(TAG, "parsePreviewConfig, e4/json loop error: " + e4.getMessage());
                }
            }
                                                            
                                                                    
                                                                    
        } catch (Exception e5) {
            ApsAdapterLog.e(TAG, "parsePreviewConfig, e3: " + e5.getMessage());
        }
    }

    public static class CaptureConfig {
        public Set<String> mAlgos;
        public int mCameraId;
        public String mCameraMode;
        public boolean mbEnable;
                                    

        CaptureConfig() {
            this.mCameraMode = null;
            this.mCameraId = -1;
            this.mbEnable = true;
            this.mAlgos = new HashSet();
        }

        CaptureConfig(CaptureConfig captureConfig) {
            this.mCameraMode = null;
            this.mCameraId = -1;
                                    
            this.mbEnable = true;
            HashSet hashSet = new HashSet();
            this.mAlgos = hashSet;
            this.mCameraMode = captureConfig.mCameraMode;
            this.mCameraId = captureConfig.mCameraId;
            this.mbEnable = captureConfig.mbEnable;
            hashSet.addAll(captureConfig.mAlgos);
        }

        public String toString() {
            return "mCameraMode: " + this.mCameraMode + ", mCameraId: " + this.mCameraId + ", mbEnable: " + this.mbEnable + ", mAlgos: " + this.mAlgos;
        }
    }

    public static class PreviewConfig {
        public int mCameraId;
        public String mCameraMode;
        public int mCameraNum;
        public ArrayMap<String, Component> mComponentMap;
        public int mIsSeparateStreamForPrevAndVideo;

        PreviewConfig() {
            this.mCameraMode = null;
            this.mCameraId = -1;
            this.mCameraNum = -1;
            this.mIsSeparateStreamForPrevAndVideo = 0;
            this.mComponentMap = new ArrayMap<>();
        }

        PreviewConfig(PreviewConfig previewConfig) {
            this.mCameraMode = null;
            this.mCameraId = -1;
            this.mCameraNum = -1;
            this.mIsSeparateStreamForPrevAndVideo = 0;
                    
            this.mComponentMap = new ArrayMap<>();
            this.mCameraMode = previewConfig.mCameraMode;
            this.mCameraId = previewConfig.mCameraId;
            this.mCameraNum = previewConfig.mCameraNum;
            this.mIsSeparateStreamForPrevAndVideo = previewConfig.mIsSeparateStreamForPrevAndVideo;
            for (int i = 0; i < previewConfig.mComponentMap.size(); i++) {
                this.mComponentMap.put(previewConfig.mComponentMap.keyAt(i), previewConfig.mComponentMap.valueAt(i));
            }
        }

        public String toString() {
            return "mCameraMode: " + this.mCameraMode + ", mCameraId: " + this.mCameraId + ", mCameraNum: " + this.mCameraNum + ", mIsSeparateStreamForPrevAndVideo: " + this.mIsSeparateStreamForPrevAndVideo + ", mComponentMap: " + this.mComponentMap;
        }

        public static class Component {
            public boolean mbEnable = true;
            public int mMasterInputWidth = 0;
            public int mMasterInputHeight = 0;
            public int mSlaveInputWidth = 0;
            public int mSlaveInputHeight = 0;
            public int mThirdInputWidth = 0;
            public int mThirdInputHeight = 0;
            public int mOutputWidth = 0;
            public int mOutputHeight = 0;
            public int mFrameSkipCnt = 0;
            public String mPipelineCopyFrom = null;
            public String mAlgoNodeCopyFrom = null;
            public String[] mAlgoList = null;

            public String toString() {
                return "{mbEnable: " + this.mbEnable + ", mMasterInputWidth: " + this.mMasterInputWidth + ", mMasterInputHeight: " + this.mMasterInputHeight + ", mSlaveInputWidth: " + this.mSlaveInputWidth + ", mSlaveInputHeight: " + this.mSlaveInputHeight + ", mThirdInputWidth: " + this.mThirdInputWidth + ", mThirdInputHeight: " + this.mThirdInputHeight + ", mOutputWidth: " + this.mOutputWidth + ", mOutputHeight: " + this.mOutputHeight + ", mFrameSkipCnt: " + this.mFrameSkipCnt + ", mPipelineCopyFrom: " + this.mPipelineCopyFrom + ", mAlgoNodeCopyFrom: " + this.mAlgoNodeCopyFrom + ", mAlgoList: " + Arrays.toString(this.mAlgoList) + "}";
            }
        }
    }
}
                    
                    

                    
                    
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        