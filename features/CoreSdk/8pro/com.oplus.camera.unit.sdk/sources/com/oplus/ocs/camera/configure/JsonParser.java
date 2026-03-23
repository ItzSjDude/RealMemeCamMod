package com.oplus.ocs.camera.configure;

import android.content.Context;
import android.util.Pair;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.producer.feature.FeatureImpl;
import com.oplus.ocs.camera.producer.feature.FeatureInterface;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class JsonParser implements IConfigParser {
    private static final String CONFIG_PATH = "/odm/etc/camera/config/camera_unit_config";
    private static final String JSON_FEATURETABLE = "_featureTable";
    private static final String JSON_FILE_HEAD = "\ufeff";
    private static final String JSON_KEY_CAMERA_ID_LIST = "camera_id_list";
    private static final String JSON_KEY_CAPTURE_STREAM_NUMBER = "capture_stream_number";
    private static final String JSON_KEY_CONFIG_PARAMETER_MAPPING = "parameter_feature_mapping";
    private static final String JSON_KEY_DEFAULT_PREVIEW_SIZE = "support_default_preview_sizes";
    private static final String JSON_KEY_DEFAULT_VIDEO_SIZE = "support_default_video_sizes";
    private static final String JSON_KEY_DEVICE_INFO = "device_info";
    private static final String JSON_KEY_DNG_DESCRIPTION = "dng_description";
    private static final String JSON_KEY_FEATURE_OPERATION = "feature_operation_mode";
    private static final String JSON_KEY_FEATURE_SUPPORT_PREVIEW_SIZE = "mode_type_feature_support_preview_size";
    private static final String JSON_KEY_MAIN_INFO = "main_info";
    private static final String JSON_KEY_MAX_VIDEO_SIZE = "mode_type_feature_max_video_size";
    private static final String JSON_KEY_MODE_FEATURE_SUBVALUE_SUPPORT_VALUES = "mode_type_feature_subValue_support_value";
    private static final String JSON_KEY_MODE_OPERATION = "mode_operation_mode";
    private static final String JSON_KEY_MODE_TYPE = "mode_type_list";
    private static final String JSON_KEY_SENSOR_NUMBER = "mode_cameraType_sensor_number";
    private static final String JSON_KEY_USECASE = "usecase_info";
    private static final String JSON_KEY_VENDOR_TAG_TYPE_VALUES = "vendor_tag_type_values";
    private static final String JSON_KEY_VERSION_CODE = "version_code";
    private static final String TAG = "JsonParser";
    private static final String THIRD_CONFIG_PATH = "/odm/etc/camera/config/third_camera_unit_config";
    private JSONObject mConfigJson = null;
    private boolean mbInitDngDescript = false;
    private String mDngDescriptionMain = "this is from oplus camera";
    private String mDngDescriptionWide = "this is from oplus camera";
    private String mDngDescriptionTele = "this is from oplus camera";

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public boolean loadConfigFile(Context context) {
        String configPath = getConfigPath(Util.isSystemCamera());
        JSONObject jsonObject = getJsonObject(configPath);
        String str = context.getFilesDir().getAbsolutePath() + configPath;
        JSONObject jsonObject2 = Util.isSystemCamera() ? getJsonObject(str) : null;
        if (jsonObject2 != null && jsonObject != null) {
            String version = getVersion(jsonObject2);
            String version2 = getVersion(jsonObject);
            CameraUnitLog.i(TAG, "loadConfigFile, odmVersion: " + version2 + ", rusVersion: " + version);
            if (compareVersion(version, version2)) {
                this.mConfigJson = jsonObject2;
                configPath = str;
            } else {
                this.mConfigJson = jsonObject;
            }
        } else {
            this.mConfigJson = jsonObject;
        }
        CameraUnitLog.i(TAG, "loadConfigFile, path: " + configPath);
        return this.mConfigJson != null;
    }

    private JSONObject getJsonObject(String str) {
        File file = new File(str);
        if (file.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[fileInputStream.available()];
                if (fileInputStream.read(bArr) <= 0) {
                    fileInputStream.close();
                    return null;
                }
                String str2 = new String(bArr, StandardCharsets.UTF_8);
                if (str2.startsWith(JSON_FILE_HEAD)) {
                    str2 = str2.substring(1);
                }
                JSONObject jSONObject = new JSONObject(str2);
                fileInputStream.close();
                return jSONObject;
            } catch (IOException | JSONException e) {
                handleException(e);
                return null;
            }
        }
        return null;
    }

    private boolean compareVersion(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return false;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        int min = Math.min(split.length, split2.length);
        for (int i = 0; i < min; i++) {
            if (Integer.parseInt(split[i]) > Integer.parseInt(split2[i])) {
                return true;
            }
        }
        return split.length > split2.length;
    }

    private String getVersion(JSONObject jSONObject) {
        try {
            return jSONObject.getJSONObject(JSON_KEY_MAIN_INFO).getString(JSON_KEY_VERSION_CODE);
        } catch (JSONException e) {
            this.handleException(e);
            return null;
        }
    }

    public static String getConfigPath(boolean z) {
        return (!z && Util.isFileExist(THIRD_CONFIG_PATH)) ? THIRD_CONFIG_PATH : CONFIG_PATH;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public List<String> parseCameraIdList() {
        Objects.requireNonNull(this.mConfigJson);
        if (this.mConfigJson.has(JSON_KEY_CAMERA_ID_LIST)) {
            try {
                return parseJsonArrayToList(this.mConfigJson.getJSONArray(JSON_KEY_CAMERA_ID_LIST));
            } catch (JSONException e) {
                this.handleException(e);
                return null;
            }
        }
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, List<String>> parseSupportedMode() {
        try {
            return parseKeyStringValueArrayJson(this.mConfigJson, JSON_KEY_MODE_TYPE);
        } catch (JSONException e) {
            this.handleException(e);
            return null;
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, String> parseModeOperationMode() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap hashMap = new HashMap();
        if (this.mConfigJson.has(JSON_KEY_MODE_OPERATION)) {
            try {
                JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_MODE_OPERATION);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
                return hashMap;
            } catch (JSONException e) {
                handleException(e);
                return hashMap;
            }
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, String> parseDeviceInfo() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap hashMap = new HashMap();
        if (this.mConfigJson.has(JSON_KEY_DEVICE_INFO)) {
            try {
                JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_DEVICE_INFO);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String string = jSONObject.getString(next);
                    hashMap.put(next, string);
                    if ("platform".equals(next)) {
                        ApsUtils.setIsQcomPlatform("qcom".equals(string));
                    }
                }
                return hashMap;
            } catch (JSONException e) {
                handleException(e);
                return hashMap;
            }
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, LinkedHashMap<String, Map<String, String>>> parseFeatureOperationMode() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap hashMap = new HashMap();
        if (this.mConfigJson.has(JSON_KEY_FEATURE_OPERATION)) {
            try {
                JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_FEATURE_OPERATION);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    Iterator<String> keys2 = jSONObject2.keys();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        String parameterNameByFeatureName = CameraConfigHelper.getParameterNameByFeatureName(next2);
                        if (parameterNameByFeatureName == null) {
                            parameterNameByFeatureName = next2;
                        }
                        JSONObject jSONObject3 = jSONObject2.getJSONObject(next2);
                        Iterator<String> keys3 = jSONObject3.keys();
                        HashMap hashMap2 = new HashMap();
                        while (keys3.hasNext()) {
                            String next3 = keys3.next();
                            hashMap2.put(next3, jSONObject3.getString(next3));
                        }
                        linkedHashMap.put(parameterNameByFeatureName, hashMap2);
                    }
                    hashMap.put(next, linkedHashMap);
                }
                return hashMap;
            } catch (JSONException e) {
                handleException(e);
                return hashMap;
            }
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, LinkedList<Pair<String, String>>> parseUsecaseInfo() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap hashMap = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_USECASE)) {
            CameraUnitLog.e(TAG, "parserUsecaseInfo, the configure file don't have configured, please check");
            return hashMap;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_USECASE);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray jSONArray = jSONObject.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String next2 = jSONObject2.keys().next();
                    linkedList.add(new Pair(next2, jSONObject2.getString(next2)));
                }
                hashMap.put(next, linkedList);
            }
            return hashMap;
        } catch (JSONException e) {
            handleException(e);
            return hashMap;
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public void parseConfigureParameters(HashMap<String, String[]> hashMap, Map<String, String> map) {
        Objects.requireNonNull(this.mConfigJson);
        if (this.mConfigJson.has(JSON_KEY_CONFIG_PARAMETER_MAPPING)) {
            try {
                JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_CONFIG_PARAMETER_MAPPING);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray jSONArray = jSONObject.getJSONArray(next);
                    int length = jSONArray.length();
                    String[] strArr = new String[length];
                    for (int i = 0; i < length; i++) {
                        strArr[i] = jSONArray.getString(i);
                    }
                    hashMap.put(next, strArr);
                    map.put(strArr[0], next);
                }
            } catch (JSONException e) {
                handleException(e);
            }
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, FeatureInterface>>> parseModeCameraTypeFeature(List<String> list) {
        CameraUnitLog.i(TAG, "initAllModeFeatures");
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, Map<String, LinkedHashMap<String, List<String>>>> parseModeCameraTypeFeaturesTables = parseModeCameraTypeFeaturesTables(list);
        HashMap hashMap = new HashMap();
        Map<String, Map<String, Map<String, String>>> featureOperationMode = CameraConfigHelper.getFeatureOperationMode();
        for (Map.Entry<String, Map<String, LinkedHashMap<String, List<String>>>> entry : parseModeCameraTypeFeaturesTables.entrySet()) {
            String key = entry.getKey();
            Map<String, Map<String, String>> map = featureOperationMode.get(key);
            HashMap hashMap2 = new HashMap();
            for (Map.Entry<String, LinkedHashMap<String, List<String>>> entry2 : entry.getValue().entrySet()) {
                String key2 = entry2.getKey();
                Map<String, FeatureInterface> featureMap = getFeatureMap(key, key2, hashMap);
                configFeatureImpl(featureMap, entry2.getValue(), map);
                hashMap2.put(key2, featureMap);
            }
            for (Map.Entry<String, List<String>> entry3 : CameraConfigHelper.getSupportCameraMode().entrySet()) {
                String key3 = entry3.getKey();
                if (!hashMap2.containsKey(key3) && entry3.getValue().contains(key)) {
                    hashMap2.put(key3, null);
                }
            }
            hashMap.put(key, hashMap2);
        }
        CameraUnitLog.i(TAG, "initAllModeFeatures X, spend time: " + (System.currentTimeMillis() - currentTimeMillis));
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public List<String> parserDefaultSupportPreviewSizes() {
        Objects.requireNonNull(this.mConfigJson);
        ArrayList arrayList = new ArrayList();
        if (!this.mConfigJson.has(JSON_KEY_DEFAULT_PREVIEW_SIZE)) {
            CameraUnitLog.e(TAG, "parserDefaultSupportPreviewSizes, don't have configure in the file");
            return arrayList;
        }
        try {
            JSONArray jSONArray = this.mConfigJson.getJSONArray(JSON_KEY_DEFAULT_PREVIEW_SIZE);
            CameraUnitLog.i(TAG, "parserDefaultSupportPreviewSizes, values: " + jSONArray);
            return parseJsonArrayToList(jSONArray);
        } catch (JSONException e) {
            handleException(e);
            return arrayList;
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public List<String> parserDefaultSupportVideoSizes() {
        Objects.requireNonNull(this.mConfigJson);
        ArrayList arrayList = new ArrayList();
        if (!this.mConfigJson.has(JSON_KEY_DEFAULT_VIDEO_SIZE)) {
            CameraUnitLog.e(TAG, "parserDefaultSupportVideoSizes, don't have configure in the file");
            return arrayList;
        }
        try {
            JSONArray jSONArray = this.mConfigJson.getJSONArray(JSON_KEY_DEFAULT_VIDEO_SIZE);
            CameraUnitLog.i(TAG, "parserDefaultSupportVideoSizes, values: " + jSONArray);
            return parseJsonArrayToList(jSONArray);
        } catch (JSONException e) {
            handleException(e);
            return arrayList;
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, LinkedList<String>>>> parseMaxSupportVideoSize() {
        return parserModeFeatureSupportSizes(JSON_KEY_MAX_VIDEO_SIZE);
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, LinkedList<String>>>> parseMaxSupportPreviewSize() {
        return parserModeFeatureSupportSizes(JSON_KEY_FEATURE_SUPPORT_PREVIEW_SIZE);
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, LinkedList<Pair<String, String>>> parserSensorNumberConfig() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap hashMap = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_SENSOR_NUMBER)) {
            CameraUnitLog.e(TAG, "parserSensorNumber, don't have config in the camera_unit_config file, parseKey: mode_cameraType_sensor_number");
            return hashMap;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_SENSOR_NUMBER);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray jSONArray = jSONObject.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String next2 = jSONObject2.keys().next();
                    linkedList.add(new Pair(next2, jSONObject2.getString(next2)));
                }
                hashMap.put(next, linkedList);
            }
        } catch (JSONException e) {
            handleException(e);
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public String parseDngDescription(String str) {
        parseDngDescription();
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -712848524:
                if (str.equals("rear_main")) {
                    c = 0;
                    break;
                }
                break;
            case -712636059:
                if (str.equals("rear_tele")) {
                    c = 1;
                    break;
                }
                break;
            case -712543090:
                if (str.equals("rear_wide")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return this.mDngDescriptionMain;
            case 1:
                return this.mDngDescriptionTele;
            case 2:
                return this.mDngDescriptionWide;
            default:
                return "this is from oplus camera";
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, String> parseVendorTagInfo() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap hashMap = new HashMap();
        if (this.mConfigJson.has(JSON_KEY_VENDOR_TAG_TYPE_VALUES)) {
            try {
                JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_VENDOR_TAG_TYPE_VALUES);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
            } catch (JSONException e) {
                handleException(e);
            }
            return hashMap;
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, String>>> parserCaptureStreamNumberConfig() {
        HashMap hashMap = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_CAPTURE_STREAM_NUMBER)) {
            CameraUnitLog.e(TAG, "parserCaptureStreamNumberConfig, don't have config in the camera_unit_config file, parseKey: capture_stream_number");
            return hashMap;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_CAPTURE_STREAM_NUMBER);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                Iterator<String> keys2 = jSONObject2.keys();
                HashMap hashMap2 = new HashMap();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(next2);
                    Iterator<String> keys3 = jSONObject3.keys();
                    HashMap hashMap3 = new HashMap();
                    while (keys3.hasNext()) {
                        String next3 = keys3.next();
                        hashMap3.put(next3, jSONObject3.getString(next3));
                    }
                    hashMap2.put(next2, hashMap3);
                }
                hashMap.put(next, hashMap2);
            }
        } catch (JSONException e) {
            handleException(e);
        }
        return hashMap;
    }

    private void handleException(Throwable th) {
        CameraUnitLog.e(TAG, "initialize, failed!", th);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
        if (r6 == 1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008c, code lost:
        if (r6 == 2) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008f, code lost:
        r10.mDngDescriptionTele = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0092, code lost:
        r10.mDngDescriptionWide = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseDngDescription() {
        /*
            r10 = this;
            org.json.JSONObject r0 = r10.mConfigJson
            java.util.Objects.requireNonNull(r0)
            boolean r0 = r10.mbInitDngDescript
            if (r0 == 0) goto La
            return
        La:
            org.json.JSONObject r0 = r10.mConfigJson
            java.lang.String r1 = "dng_description"
            boolean r0 = r0.has(r1)
            java.lang.String r2 = "JsonParser"
            r3 = 1
            if (r0 != 0) goto L1f
            java.lang.String r0 = "parserDngDescription, Dng description is not available"
            com.oplus.ocs.camera.common.util.CameraUnitLog.e(r2, r0)
            r10.mbInitDngDescript = r3
            return
        L1f:
            org.json.JSONObject r0 = r10.mConfigJson     // Catch: org.json.JSONException -> L9b
            org.json.JSONObject r0 = r0.getJSONObject(r1)     // Catch: org.json.JSONException -> L9b
            java.util.Iterator r1 = r0.keys()     // Catch: org.json.JSONException -> L9b
        L29:
            boolean r4 = r1.hasNext()     // Catch: org.json.JSONException -> L9b
            if (r4 == 0) goto L98
            java.lang.Object r4 = r1.next()     // Catch: org.json.JSONException -> L9b
            java.lang.String r4 = (java.lang.String) r4     // Catch: org.json.JSONException -> L9b
            java.lang.String r5 = r0.getString(r4)     // Catch: org.json.JSONException -> L9b
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: org.json.JSONException -> L9b
            r6.<init>()     // Catch: org.json.JSONException -> L9b
            java.lang.String r7 = "parserDngDescription, camera: "
            r6.append(r7)     // Catch: org.json.JSONException -> L9b
            r6.append(r4)     // Catch: org.json.JSONException -> L9b
            java.lang.String r7 = ", desc: "
            r6.append(r7)     // Catch: org.json.JSONException -> L9b
            r6.append(r5)     // Catch: org.json.JSONException -> L9b
            java.lang.String r6 = r6.toString()     // Catch: org.json.JSONException -> L9b
            com.oplus.ocs.camera.common.util.CameraUnitLog.i(r2, r6)     // Catch: org.json.JSONException -> L9b
            r6 = -1
            int r7 = r4.hashCode()     // Catch: org.json.JSONException -> L9b
            r8 = -712848524(0xffffffffd582cb74, float:-1.7976292E13)
            r9 = 2
            if (r7 == r8) goto L7f
            r8 = -712636059(0xffffffffd5860965, float:-1.8421863E13)
            if (r7 == r8) goto L75
            r8 = -712543090(0xffffffffd587748e, float:-1.8616834E13)
            if (r7 == r8) goto L6b
            goto L88
        L6b:
            java.lang.String r7 = "rear_wide"
            boolean r4 = r4.equals(r7)     // Catch: org.json.JSONException -> L9b
            if (r4 == 0) goto L88
            r6 = r3
            goto L88
        L75:
            java.lang.String r7 = "rear_tele"
            boolean r4 = r4.equals(r7)     // Catch: org.json.JSONException -> L9b
            if (r4 == 0) goto L88
            r6 = r9
            goto L88
        L7f:
            java.lang.String r7 = "rear_main"
            boolean r4 = r4.equals(r7)     // Catch: org.json.JSONException -> L9b
            if (r4 == 0) goto L88
            r6 = 0
        L88:
            if (r6 == 0) goto L95
            if (r6 == r3) goto L92
            if (r6 == r9) goto L8f
            goto L29
        L8f:
            r10.mDngDescriptionTele = r5     // Catch: org.json.JSONException -> L9b
            goto L29
        L92:
            r10.mDngDescriptionWide = r5     // Catch: org.json.JSONException -> L9b
            goto L29
        L95:
            r10.mDngDescriptionMain = r5     // Catch: org.json.JSONException -> L9b
            goto L29
        L98:
            r10.mbInitDngDescript = r3     // Catch: org.json.JSONException -> L9b
            goto La0
        L9b:
            java.lang.String r10 = "parserDngDescription, Failed to parse dng description"
            com.oplus.ocs.camera.common.util.CameraUnitLog.e(r2, r10)
        La0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.JsonParser.parseDngDescription():void");
    }

    private Map<String, Map<String, Map<String, LinkedList<String>>>> parserModeFeatureSupportSizes(String str) {
        Objects.requireNonNull(this.mConfigJson);
        HashMap hashMap = new HashMap();
        if (this.mConfigJson.has(str)) {
            try {
                JSONObject jSONObject = this.mConfigJson.getJSONObject(str);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    HashMap hashMap2 = new HashMap();
                    Iterator<String> keys2 = jSONObject2.keys();
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        JSONObject jSONObject3 = jSONObject2.getJSONObject(next2);
                        HashMap hashMap3 = new HashMap();
                        Iterator<String> keys3 = jSONObject3.keys();
                        while (keys3.hasNext()) {
                            String next3 = keys3.next();
                            hashMap3.put(next3, parseJsonArrayToLinkedList(jSONObject3.getJSONArray(next3)));
                        }
                        hashMap2.put(next2, hashMap3);
                    }
                    hashMap.put(next, hashMap2);
                }
            } catch (JSONException e) {
                handleException(e);
            }
            return hashMap;
        }
        return hashMap;
    }

    private List<String> parseJsonArrayToList(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    private Map<String, List<String>> parseKeyStringValueArrayJson(JSONObject jSONObject, String str) throws JSONException {
        Objects.requireNonNull(jSONObject);
        if (jSONObject.has(str)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            Iterator<String> keys = jSONObject2.keys();
            HashMap hashMap = new HashMap();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, parseJsonArrayToList(jSONObject2.getJSONArray(next)));
            }
            return hashMap;
        }
        return null;
    }

    private static LinkedList<String> parseJsonArrayToLinkedList(JSONArray jSONArray) throws JSONException {
        LinkedList<String> linkedList = new LinkedList<>();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            linkedList.add(jSONArray.getString(i));
        }
        return linkedList;
    }

    private Map<String, Map<String, LinkedHashMap<String, List<String>>>> parseModeCameraTypeFeaturesTables(List<String> list) {
        Objects.requireNonNull(this.mConfigJson);
        HashMap hashMap = new HashMap();
        try {
            for (String str : list) {
                JSONObject jSONObject = this.mConfigJson;
                if (jSONObject.has(str + JSON_FEATURETABLE)) {
                    HashMap hashMap2 = new HashMap();
                    JSONObject jSONObject2 = this.mConfigJson;
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(str + JSON_FEATURETABLE);
                    Iterator<String> keys = jSONObject3.keys();
                    while (keys.hasNext()) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        String next = keys.next();
                        JSONObject jSONObject4 = jSONObject3.getJSONObject(next);
                        Iterator<String> keys2 = jSONObject4.keys();
                        while (keys2.hasNext()) {
                            String next2 = keys2.next();
                            linkedHashMap.put(next2, parseJsonArrayToList(jSONObject4.getJSONArray(next2)));
                        }
                        hashMap2.put(next, linkedHashMap);
                    }
                    hashMap.put(str, hashMap2);
                }
            }
        } catch (JSONException e) {
            handleException(e);
        }
        return hashMap;
    }

    private static Map<String, FeatureInterface> getFeatureMap(String str, String str2, Map<String, Map<String, Map<String, FeatureInterface>>> map) {
        if (map.get(str) != null && map.get(str).get(str2) != null) {
            return map.get(str).get(str2);
        }
        return new HashMap();
    }

    private static void printAllModeFeature(Map<String, Map<String, Map<String, FeatureInterface>>> map) {
        for (Map.Entry<String, Map<String, Map<String, FeatureInterface>>> entry : map.entrySet()) {
            String key = entry.getKey();
            for (Map.Entry<String, Map<String, FeatureInterface>> entry2 : entry.getValue().entrySet()) {
                String key2 = entry2.getKey();
                for (Map.Entry<String, FeatureInterface> entry3 : entry2.getValue().entrySet()) {
                    String key3 = entry3.getKey();
                    if (!(entry3.getValue() instanceof FeatureImpl)) {
                        return;
                    }
                    FeatureImpl featureImpl = (FeatureImpl) entry3.getValue();
                    if (featureImpl != null) {
                        CameraUnitLog.d(TAG, "printAllModeFeatures, modeName: " + key + ", cameraType: " + key2 + ", featureName: " + key3 + "\n--FeatureImp info: " + featureImpl.print());
                    } else {
                        CameraUnitLog.d(TAG, "printAllModeFeatures, modeName: " + key + ", cameraType: " + key2 + ", featureName: " + key3 + "\n--FeatureImp info: " + ((Object) null));
                    }
                }
            }
        }
    }

    private static void configFeatureImpl(Map<String, FeatureInterface> map, LinkedHashMap<String, List<String>> linkedHashMap, Map<String, Map<String, String>> map2) {
        Set<String> keySet = linkedHashMap.keySet();
        for (Map.Entry<String, List<String>> entry : linkedHashMap.entrySet()) {
            List<String> value = entry.getValue();
            String[] split = entry.getKey().split(FeatureImpl.DELIMITER, 2);
            String str = split[0];
            String str2 = split[1];
            String parameterNameByFeatureName = CameraConfigHelper.getParameterNameByFeatureName(str);
            if (parameterNameByFeatureName != null) {
                str = parameterNameByFeatureName;
            }
            FeatureImpl featureImpl = (FeatureImpl) map.get(str);
            if (featureImpl == null) {
                featureImpl = new FeatureImpl();
                featureImpl.initFeatureName(str);
                if (map2 != null) {
                    featureImpl.initOperationMode(map2.get(str));
                }
            }
            featureImpl.configFeature(str2, keySet, value);
            map.put(str, featureImpl);
        }
    }
}
