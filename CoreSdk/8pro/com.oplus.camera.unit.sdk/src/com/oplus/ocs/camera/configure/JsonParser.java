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

/* JADX INFO: loaded from: classes.dex */
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
        if (!file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
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
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | JSONException e) {
            handleException(e);
            return null;
        }
    }

    private boolean compareVersion(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return false;
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int iMin = Math.min(strArrSplit.length, strArrSplit2.length);
        for (int i = 0; i < iMin; i++) {
            if (Integer.parseInt(strArrSplit[i]) > Integer.parseInt(strArrSplit2[i])) {
                return true;
            }
        }
        return strArrSplit.length > strArrSplit2.length;
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
        if (!this.mConfigJson.has(JSON_KEY_CAMERA_ID_LIST)) {
            return null;
        }
        try {
            return parseJsonArrayToList(this.mConfigJson.getJSONArray(JSON_KEY_CAMERA_ID_LIST));
        } catch (JSONException e) {
            this.handleException(e);
            return null;
        }
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
        HashMap map = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_MODE_OPERATION)) {
            return map;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_MODE_OPERATION);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            return map;
        } catch (JSONException e) {
            handleException(e);
            return map;
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, String> parseDeviceInfo() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap map = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_DEVICE_INFO)) {
            return map;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_DEVICE_INFO);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String string = jSONObject.getString(next);
                map.put(next, string);
                if ("platform".equals(next)) {
                    ApsUtils.setIsQcomPlatform("qcom".equals(string));
                }
            }
            return map;
        } catch (JSONException e) {
            handleException(e);
            return map;
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, LinkedHashMap<String, Map<String, String>>> parseFeatureOperationMode() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap map = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_FEATURE_OPERATION)) {
            return map;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_FEATURE_OPERATION);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                Iterator<String> itKeys2 = jSONObject2.keys();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    String parameterNameByFeatureName = CameraConfigHelper.getParameterNameByFeatureName(next2);
                    if (parameterNameByFeatureName == null) {
                        parameterNameByFeatureName = next2;
                    }
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(next2);
                    Iterator<String> itKeys3 = jSONObject3.keys();
                    HashMap map2 = new HashMap();
                    while (itKeys3.hasNext()) {
                        String next3 = itKeys3.next();
                        map2.put(next3, jSONObject3.getString(next3));
                    }
                    linkedHashMap.put(parameterNameByFeatureName, map2);
                }
                map.put(next, linkedHashMap);
            }
            return map;
        } catch (JSONException e) {
            handleException(e);
            return map;
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, LinkedList<Pair<String, String>>> parseUsecaseInfo() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap map = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_USECASE)) {
            CameraUnitLog.e(TAG, "parserUsecaseInfo, the configure file don't have configured, please check");
            return map;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_USECASE);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArray = jSONObject.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String next2 = jSONObject2.keys().next();
                    linkedList.add(new Pair(next2, jSONObject2.getString(next2)));
                }
                map.put(next, linkedList);
            }
            return map;
        } catch (JSONException e) {
            handleException(e);
            return map;
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public void parseConfigureParameters(HashMap<String, String[]> map, Map<String, String> map2) {
        Objects.requireNonNull(this.mConfigJson);
        if (this.mConfigJson.has(JSON_KEY_CONFIG_PARAMETER_MAPPING)) {
            try {
                JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_CONFIG_PARAMETER_MAPPING);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONArray jSONArray = jSONObject.getJSONArray(next);
                    int length = jSONArray.length();
                    String[] strArr = new String[length];
                    for (int i = 0; i < length; i++) {
                        strArr[i] = jSONArray.getString(i);
                    }
                    map.put(next, strArr);
                    map2.put(strArr[0], next);
                }
            } catch (JSONException e) {
                handleException(e);
            }
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, FeatureInterface>>> parseModeCameraTypeFeature(List<String> list) {
        CameraUnitLog.i(TAG, "initAllModeFeatures");
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, Map<String, LinkedHashMap<String, List<String>>>> modeCameraTypeFeaturesTables = parseModeCameraTypeFeaturesTables(list);
        HashMap map = new HashMap();
        Map<String, Map<String, Map<String, String>>> featureOperationMode = CameraConfigHelper.getFeatureOperationMode();
        for (Map.Entry<String, Map<String, LinkedHashMap<String, List<String>>>> entry : modeCameraTypeFeaturesTables.entrySet()) {
            String key = entry.getKey();
            Map<String, LinkedHashMap<String, List<String>>> value = entry.getValue();
            Map<String, Map<String, String>> map2 = featureOperationMode.get(key);
            HashMap map3 = new HashMap();
            for (Map.Entry<String, LinkedHashMap<String, List<String>>> entry2 : value.entrySet()) {
                String key2 = entry2.getKey();
                LinkedHashMap<String, List<String>> value2 = entry2.getValue();
                Map<String, FeatureInterface> featureMap = getFeatureMap(key, key2, map);
                configFeatureImpl(featureMap, value2, map2);
                map3.put(key2, featureMap);
            }
            for (Map.Entry<String, List<String>> entry3 : CameraConfigHelper.getSupportCameraMode().entrySet()) {
                String key3 = entry3.getKey();
                if (!map3.containsKey(key3) && entry3.getValue().contains(key)) {
                    map3.put(key3, null);
                }
            }
            map.put(key, map3);
        }
        CameraUnitLog.i(TAG, "initAllModeFeatures X, spend time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return map;
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
        HashMap map = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_SENSOR_NUMBER)) {
            CameraUnitLog.e(TAG, "parserSensorNumber, don't have config in the camera_unit_config file, parseKey: mode_cameraType_sensor_number");
            return map;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_SENSOR_NUMBER);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArray = jSONObject.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String next2 = jSONObject2.keys().next();
                    linkedList.add(new Pair(next2, jSONObject2.getString(next2)));
                }
                map.put(next, linkedList);
            }
        } catch (JSONException e) {
            handleException(e);
        }
        return map;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public String parseDngDescription(String str) {
        parseDngDescription();
        str.hashCode();
        switch (str) {
            case "rear_main":
                return this.mDngDescriptionMain;
            case "rear_tele":
                return this.mDngDescriptionTele;
            case "rear_wide":
                return this.mDngDescriptionWide;
            default:
                return "this is from oplus camera";
        }
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, String> parseVendorTagInfo() {
        Objects.requireNonNull(this.mConfigJson);
        HashMap map = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_VENDOR_TAG_TYPE_VALUES)) {
            return map;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_VENDOR_TAG_TYPE_VALUES);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
        } catch (JSONException e) {
            handleException(e);
        }
        return map;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, String>>> parserCaptureStreamNumberConfig() {
        HashMap map = new HashMap();
        if (!this.mConfigJson.has(JSON_KEY_CAPTURE_STREAM_NUMBER)) {
            CameraUnitLog.e(TAG, "parserCaptureStreamNumberConfig, don't have config in the camera_unit_config file, parseKey: capture_stream_number");
            return map;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_CAPTURE_STREAM_NUMBER);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                Iterator<String> itKeys2 = jSONObject2.keys();
                HashMap map2 = new HashMap();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(next2);
                    Iterator<String> itKeys3 = jSONObject3.keys();
                    HashMap map3 = new HashMap();
                    while (itKeys3.hasNext()) {
                        String next3 = itKeys3.next();
                        map3.put(next3, jSONObject3.getString(next3));
                    }
                    map2.put(next2, map3);
                }
                map.put(next, map2);
            }
        } catch (JSONException e) {
            handleException(e);
        }
        return map;
    }

    private void handleException(Throwable th) {
        CameraUnitLog.e(TAG, "initialize, failed!", th);
    }

    private void parseDngDescription() {
        Objects.requireNonNull(this.mConfigJson);
        if (this.mbInitDngDescript) {
            return;
        }
        if (!this.mConfigJson.has(JSON_KEY_DNG_DESCRIPTION)) {
            CameraUnitLog.e(TAG, "parserDngDescription, Dng description is not available");
            this.mbInitDngDescript = true;
            return;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(JSON_KEY_DNG_DESCRIPTION);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String string = jSONObject.getString(next);
                CameraUnitLog.i(TAG, "parserDngDescription, camera: " + next + ", desc: " + string);
                byte b = -1;
                int iHashCode = next.hashCode();
                if (iHashCode != -712848524) {
                    if (iHashCode != -712636059) {
                        if (iHashCode == -712543090 && next.equals("rear_wide")) {
                            b = 1;
                        }
                    } else if (next.equals("rear_tele")) {
                        b = 2;
                    }
                } else if (next.equals("rear_main")) {
                    b = 0;
                }
                if (b == 0) {
                    this.mDngDescriptionMain = string;
                } else if (b == 1) {
                    this.mDngDescriptionWide = string;
                } else if (b == 2) {
                    this.mDngDescriptionTele = string;
                }
            }
            this.mbInitDngDescript = true;
        } catch (JSONException unused) {
            CameraUnitLog.e(TAG, "parserDngDescription, Failed to parse dng description");
        }
    }

    private Map<String, Map<String, Map<String, LinkedList<String>>>> parserModeFeatureSupportSizes(String str) {
        Objects.requireNonNull(this.mConfigJson);
        HashMap map = new HashMap();
        if (!this.mConfigJson.has(str)) {
            return map;
        }
        try {
            JSONObject jSONObject = this.mConfigJson.getJSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                HashMap map2 = new HashMap();
                Iterator<String> itKeys2 = jSONObject2.keys();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(next2);
                    HashMap map3 = new HashMap();
                    Iterator<String> itKeys3 = jSONObject3.keys();
                    while (itKeys3.hasNext()) {
                        String next3 = itKeys3.next();
                        map3.put(next3, parseJsonArrayToLinkedList(jSONObject3.getJSONArray(next3)));
                    }
                    map2.put(next2, map3);
                }
                map.put(next, map2);
            }
        } catch (JSONException e) {
            handleException(e);
        }
        return map;
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
        if (!jSONObject.has(str)) {
            return null;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        Iterator<String> itKeys = jSONObject2.keys();
        HashMap map = new HashMap();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, parseJsonArrayToList(jSONObject2.getJSONArray(next)));
        }
        return map;
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
        HashMap map = new HashMap();
        try {
            for (String str : list) {
                if (this.mConfigJson.has(str + JSON_FEATURETABLE)) {
                    HashMap map2 = new HashMap();
                    JSONObject jSONObject = this.mConfigJson.getJSONObject(str + JSON_FEATURETABLE);
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        String next = itKeys.next();
                        JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                        Iterator<String> itKeys2 = jSONObject2.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            linkedHashMap.put(next2, parseJsonArrayToList(jSONObject2.getJSONArray(next2)));
                        }
                        map2.put(next, linkedHashMap);
                    }
                    map.put(str, map2);
                }
            }
        } catch (JSONException e) {
            handleException(e);
        }
        return map;
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
        Set<String> setKeySet = linkedHashMap.keySet();
        for (Map.Entry<String, List<String>> entry : linkedHashMap.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            String[] strArrSplit = key.split(FeatureImpl.DELIMITER, 2);
            String str = strArrSplit[0];
            String str2 = strArrSplit[1];
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
            featureImpl.configFeature(str2, setKeySet, value);
            map.put(str, featureImpl);
        }
    }
}
