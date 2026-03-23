package com.oplus.ocs.camera.producer.info;

import android.content.Context;
import android.os.ConditionVariable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class CameraConfigHelper {
    private static final String CONFIG_PATH = "/odm/etc/camera/config/camera_unit_config";
    private static final String JSON_FEATURETABLE = "_featureTable";
    private static final String JSON_FILE_HEAD = "\ufeff";
    private static final String JSON_KEY_CAMERA_ID_LIST = "camera_id_list";
    private static final String JSON_KEY_CONFIG_PARAMETER_MAPPING = "parameter_feature_mapping";
    private static final String JSON_KEY_DEFAULT_PREVIEW_SIZE = "support_default_preview_sizes";
    private static final String JSON_KEY_DEFAULT_VIDEO_SIZE = "support_default_video_sizes";
    private static final String JSON_KEY_DEVICE_INFO = "device_info";
    private static final String JSON_KEY_DNG_DESCRIPTION = "dng_description";
    private static final String JSON_KEY_FEATURE_OPERATION = "feature_operation_mode";
    private static final String JSON_KEY_FEATURE_SUPPORT_PREVIEW_SIZE = "mode_type_feature_support_preview_size";
    private static final String JSON_KEY_MAX_VIDEO_SIZE = "mode_type_feature_max_video_size";
    private static final String JSON_KEY_MODE_FEATURE_SUBVALUE_SUPPORT_VALUES = "mode_type_feature_subValue_support_value";
    private static final String JSON_KEY_MODE_OPERATION = "mode_operation_mode";
    private static final String JSON_KEY_MODE_TYPE = "mode_type_list";
    private static final String JSON_KEY_SENSOR_NUMBER = "mode_cameraType_sensor_number";
    private static final String JSON_KEY_USECASE = "usecase_info";
    private static final String JSON_KEY_VENDOR_TAG_TYPE_VALUES = "vendor_tag_type_values";
    public static final int PARAMETER_MAPPING_CATEGORY_INDEX = 2;
    public static final int PARAMETER_MAPPING_NAME_INDEX = 0;
    public static final int PARAMETER_MAPPING_TYPE_INDEX = 1;
    private static final String TAG = "CameraConfigHelper";
    private static final String THIRD_CONFIG_PATH = "/odm/etc/camera/config/third_camera_unit_config";
    private static volatile ConfigStatusCallback mConfigStatusCallback = null;
    private static List<String> sCameraIdList = null;
    private static String sDngDescriptionDefault = "this is from oplus camera";
    private static String sDngDescriptionMain = "this is from oplus camera";
    private static String sDngDescriptionTele = "this is from oplus camera";
    private static String sDngDescriptionWide = "this is from oplus camera";
    private static final ConditionVariable CAMERA_ID_CONDITION = new ConditionVariable();
    private static final ConditionVariable MODE_CONDITION = new ConditionVariable();
    private static final ConditionVariable FEATURE_CONDITION = new ConditionVariable();
    private static final ConditionVariable CAMERA_ID_TYPE_CONDITION = new ConditionVariable();
    private static final ConditionVariable APS_CONFIG_CONDITION = new ConditionVariable();
    private static Map<String, List<String>> sSupportCameraModeMap = new HashMap();
    private static Map<String, LinkedHashMap<String, Map<String, String>>> sFeatureOperationModeMap = new HashMap();
    private static Map<String, String> sModeOperationModeMap = new HashMap();
    private static Map<String, String> sDeviceInfoMap = new HashMap();
    private static HashMap<String, String[]> sConfigureParameterMapping = new HashMap<>();
    private static Map<String, String> sFeatureAndParameterMapping = new HashMap();
    private static Map<String, LinkedList<Pair<String, String>>> sUsecaseMap = new HashMap();
    private static List<String> sSupportDefaultPreviewSizes = new ArrayList();
    private static Map<String, LinkedList<Pair<String, String>>> sSensorNumberMap = new HashMap();
    private static List<String> sSupportDefaultVideoSizes = new ArrayList();
    private static Map<String, Map<String, Map<String, LinkedList<String>>>> sMaxSupportVideoSize = new HashMap();
    private static Map<String, Map<String, Map<String, LinkedList<String>>>> sSupportPreviewSizes = new HashMap();
    private static Map<String, String> sVendorTagMap = new HashMap();
    private static Map<String, Map<String, LinkedHashMap<String, List<String>>>> sModeTypeFeatureTable = new HashMap();

    /* loaded from: classes.dex */
    public interface ConfigStatusCallback {
        void onConfigParseDone();
    }

    static /* synthetic */ JSONObject access$000() throws JSONException {
        return loadConfigFile();
    }

    private CameraConfigHelper() {
    }

    public static void blockFeatureParseIfNeeded() {
        FEATURE_CONDITION.block();
    }

    public static void blockApsConfigIfNeeded() {
        APS_CONFIG_CONDITION.block();
    }

    public static void blockCameraIdTypeIfNeeded() {
        CAMERA_ID_TYPE_CONDITION.block();
    }

    public static void initialize(@NonNull final Context context) {
        CAMERA_ID_CONDITION.close();
        MODE_CONDITION.close();
        FEATURE_CONDITION.close();
        APS_CONFIG_CONDITION.close();
        new Thread(new Runnable() { // from class: com.oplus.ocs.camera.producer.info.CameraConfigHelper.1
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis;
                JSONObject access$000;
                try {
                    try {
                        CameraUnitLog.i(CameraConfigHelper.TAG, "initialize config");
                        try {
                            Class<?> cls = Class.forName("android.hardware.camera2.OplusCameraManager");
                            Method method = cls.getMethod("getInstance", new Class[0]);
                            Method declaredMethod = cls.getDeclaredMethod("setCallInfo", new Class[0]);
                            method.setAccessible(true);
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(method.invoke(cls, new Object[0]), new Object[0]);
                        } catch (Exception e) {
                            CameraUnitLog.e(CameraConfigHelper.TAG, "initialize, ", e);
                        }
                        currentTimeMillis = System.currentTimeMillis();
                        access$000 = CameraConfigHelper.access$000();
                    } catch (JSONException e2) {
                        CameraUnitLog.e(CameraConfigHelper.TAG, "initialize, failed!", e2);
                    }
                    if (access$000 == null) {
                        return;
                    }
                    CameraConfigHelper.parseCameraIdList(access$000);
                    CameraConfigHelper.CAMERA_ID_CONDITION.open();
                    CameraConfigHelper.parserSupportedMode(access$000);
                    CameraConfigHelper.MODE_CONDITION.open();
                    CameraConfigHelper.parseModeOperationMode(access$000);
                    CameraConfigHelper.parseDeviceInfo(access$000);
                    CameraConfigHelper.parserFeatureOperationMode(access$000);
                    CameraConfigHelper.parserUsecaseInfo(access$000);
                    CameraConfigHelper.parserConfigureParameters(access$000);
                    CameraConfigHelper.parseModeCameraTypeFeaturesTables(access$000);
                    CameraConfigHelper.parserDefaultSupportPreviewSizes(access$000);
                    CameraConfigHelper.parserDefaultSupportVideoSizes(access$000);
                    CameraConfigHelper.parserModeFeatureSupportSizes(access$000, CameraConfigHelper.JSON_KEY_MAX_VIDEO_SIZE, CameraConfigHelper.sMaxSupportVideoSize);
                    CameraConfigHelper.parserModeFeatureSupportSizes(access$000, CameraConfigHelper.JSON_KEY_FEATURE_SUPPORT_PREVIEW_SIZE, CameraConfigHelper.sSupportPreviewSizes);
                    CameraConfigHelper.parserSensorNumberConfig(access$000, CameraConfigHelper.JSON_KEY_SENSOR_NUMBER, CameraConfigHelper.sSensorNumberMap);
                    CameraConfigHelper.parserDngDescription(access$000);
                    CameraConfigHelper.parseVendorTagInfo(access$000);
                    CameraConfigHelper.FEATURE_CONDITION.open();
                    CameraCharacteristicsHelper.initialize(context, CameraConfigHelper.getCameraIdList());
                    CameraConfigHelper.CAMERA_ID_TYPE_CONDITION.open();
                    if (!Util.isSystemCamera()) {
                        CameraAdapterUtils.initConfigData(context);
                    }
                    AlgoSwitchConfig.initialize(context);
                    if (CameraConfigHelper.mConfigStatusCallback != null) {
                        CameraConfigHelper.mConfigStatusCallback.onConfigParseDone();
                    }
                    CameraConfigHelper.APS_CONFIG_CONDITION.open();
                    StatisticsManager.getInstance().init(context);
                    CameraUnitLog.i(CameraConfigHelper.TAG, "initialize config X, spend time: " + (System.currentTimeMillis() - currentTimeMillis));
                } finally {
                    CameraConfigHelper.CAMERA_ID_CONDITION.open();
                    CameraConfigHelper.MODE_CONDITION.open();
                    CameraConfigHelper.FEATURE_CONDITION.open();
                    CameraConfigHelper.CAMERA_ID_TYPE_CONDITION.open();
                    CameraConfigHelper.APS_CONFIG_CONDITION.open();
                    CameraUnitLog.initLog(context);
                }
            }
        }).start();
    }

    public static void setConfigStatusCallback(ConfigStatusCallback configStatusCallback) {
        mConfigStatusCallback = configStatusCallback;
    }

    public static boolean isConfigFileExist() {
        return Util.isFileExit(CONFIG_PATH);
    }

    private static String getConfigPath() {
        return (!Util.isSystemCamera() && Util.isFileExit(THIRD_CONFIG_PATH)) ? THIRD_CONFIG_PATH : CONFIG_PATH;
    }

    private static JSONObject loadConfigFile() throws JSONException {
        String configPath = getConfigPath();
        CameraUnitLog.i(TAG, "loadConfigFile, path: " + configPath);
        try {
            FileInputStream fileInputStream = new FileInputStream(configPath);
            byte[] bArr = new byte[fileInputStream.available()];
            if (fileInputStream.read(bArr) <= 0) {
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return null;
            }
            String str = new String(bArr, StandardCharsets.UTF_8);
            if (str.startsWith(JSON_FILE_HEAD)) {
                str = str.substring(1);
            }
            JSONObject jSONObject = new JSONObject(str);
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return jSONObject;
        } catch (IOException e) {
            CameraUnitLog.e(TAG, "loadConfigFile, failed!", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parseCameraIdList(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(JSON_KEY_CAMERA_ID_LIST)) {
            sCameraIdList = parseJsonArrayToList(jSONObject.getJSONArray(JSON_KEY_CAMERA_ID_LIST));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserSupportedMode(JSONObject jSONObject) throws JSONException {
        parseKeyStringValueArrayJson(jSONObject, JSON_KEY_MODE_TYPE, sSupportCameraModeMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserFeatureOperationMode(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(JSON_KEY_FEATURE_OPERATION)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(JSON_KEY_FEATURE_OPERATION);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject jSONObject3 = jSONObject2.getJSONObject(next);
                Iterator<String> keys2 = jSONObject3.keys();
                LinkedHashMap<String, Map<String, String>> linkedHashMap = new LinkedHashMap<>();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    JSONObject jSONObject4 = jSONObject3.getJSONObject(next2);
                    Iterator<String> keys3 = jSONObject4.keys();
                    HashMap hashMap = new HashMap();
                    while (keys3.hasNext()) {
                        String next3 = keys3.next();
                        hashMap.put(next3, jSONObject4.getString(next3));
                    }
                    linkedHashMap.put(next2, hashMap);
                }
                sFeatureOperationModeMap.put(next, linkedHashMap);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parseModeOperationMode(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(JSON_KEY_MODE_OPERATION)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(JSON_KEY_MODE_OPERATION);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                sModeOperationModeMap.put(next, jSONObject2.getString(next));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parseDeviceInfo(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(JSON_KEY_DEVICE_INFO)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(JSON_KEY_DEVICE_INFO);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                sDeviceInfoMap.put(next, jSONObject2.getString(next));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserUsecaseInfo(JSONObject jSONObject) throws JSONException {
        if (!jSONObject.has(JSON_KEY_USECASE)) {
            CameraUnitLog.e(TAG, "parserUsecaseInfo, the configure file don't have configured, please check");
            return;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject(JSON_KEY_USECASE);
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject2.getJSONArray(next);
            LinkedList<Pair<String, String>> linkedList = new LinkedList<>();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                String next2 = jSONObject3.keys().next();
                linkedList.add(new Pair<>(next2, jSONObject3.getString(next2)));
            }
            sUsecaseMap.put(next, linkedList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserConfigureParameters(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(JSON_KEY_CONFIG_PARAMETER_MAPPING)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(JSON_KEY_CONFIG_PARAMETER_MAPPING);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray jSONArray = jSONObject2.getJSONArray(next);
                int length = jSONArray.length();
                String[] strArr = new String[length];
                for (int i = 0; i < length; i++) {
                    strArr[i] = jSONArray.getString(i);
                }
                sConfigureParameterMapping.put(next, strArr);
                sFeatureAndParameterMapping.put(strArr[0], next);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parseModeCameraTypeFeaturesTables(JSONObject jSONObject) throws JSONException {
        ArrayList<String> arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : getSupportCameraMode().entrySet()) {
            for (String str : entry.getValue()) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        for (String str2 : arrayList) {
            if (jSONObject.has(str2 + JSON_FEATURETABLE)) {
                HashMap hashMap = new HashMap();
                JSONObject jSONObject2 = jSONObject.getJSONObject(str2 + JSON_FEATURETABLE);
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    String next = keys.next();
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(next);
                    Iterator<String> keys2 = jSONObject3.keys();
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        linkedHashMap.put(next2, parseJsonArrayToList(jSONObject3.getJSONArray(next2)));
                    }
                    hashMap.put(next, linkedHashMap);
                }
                sModeTypeFeatureTable.put(str2, hashMap);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserModeFeatureSupportSizes(JSONObject jSONObject, String str, Map<String, Map<String, Map<String, LinkedList<String>>>> map) throws JSONException {
        if (jSONObject.has(str)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject jSONObject3 = jSONObject2.getJSONObject(next);
                HashMap hashMap = new HashMap();
                Iterator<String> keys2 = jSONObject3.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    JSONObject jSONObject4 = jSONObject3.getJSONObject(next2);
                    HashMap hashMap2 = new HashMap();
                    Iterator<String> keys3 = jSONObject4.keys();
                    while (keys3.hasNext()) {
                        String next3 = keys3.next();
                        hashMap2.put(next3, parseJsonArrayToLinkedList(jSONObject4.getJSONArray(next3)));
                    }
                    hashMap.put(next2, hashMap2);
                }
                map.put(next, hashMap);
            }
        }
    }

    private static void parserMaxConfigSize(JSONObject jSONObject, String str, Map<String, LinkedList<Pair<String, String>>> map) throws JSONException {
        if (!jSONObject.has(str)) {
            CameraUnitLog.e(TAG, "parserMaxConfigSize, don't have config in the camera_unit_config file, parseKey: " + str);
            return;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject2.getJSONArray(next);
            LinkedList<Pair<String, String>> linkedList = new LinkedList<>();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                String next2 = jSONObject3.keys().next();
                String string = jSONObject3.getString(next2);
                CameraUnitLog.i(TAG, "parserMaxConfigSize, parseKey: " + str + ", cameraMode: " + next + ", cameraType: " + next2 + ", value: " + string);
                linkedList.add(new Pair<>(next2, string));
            }
            map.put(next, linkedList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserDngDescription(JSONObject jSONObject) {
        if (!jSONObject.has(JSON_KEY_DNG_DESCRIPTION)) {
            CameraUnitLog.e(TAG, "parserDngDescription, Dng description is not available");
            return;
        }
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(JSON_KEY_DNG_DESCRIPTION);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String string = jSONObject2.getString(next);
                CameraUnitLog.i(TAG, "parserDngDescription, camera: " + next + ", desc: " + string);
                char c = 65535;
                int hashCode = next.hashCode();
                if (hashCode != -712848524) {
                    if (hashCode != -712636059) {
                        if (hashCode == -712543090 && next.equals("rear_wide")) {
                            c = 1;
                        }
                    } else if (next.equals("rear_tele")) {
                        c = 2;
                    }
                } else if (next.equals("rear_main")) {
                    c = 0;
                }
                switch (c) {
                    case 0:
                        sDngDescriptionMain = string;
                        break;
                    case 1:
                        sDngDescriptionWide = string;
                        break;
                    case 2:
                        sDngDescriptionTele = string;
                        break;
                }
            }
        } catch (JSONException unused) {
            CameraUnitLog.e(TAG, "parserDngDescription, Failed to parse dng description");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserDefaultSupportPreviewSizes(JSONObject jSONObject) throws JSONException {
        if (!jSONObject.has(JSON_KEY_DEFAULT_PREVIEW_SIZE)) {
            CameraUnitLog.e(TAG, "parserDefaultSupportPreviewSizes, don't have configure in the file");
            return;
        }
        JSONArray jSONArray = jSONObject.getJSONArray(JSON_KEY_DEFAULT_PREVIEW_SIZE);
        CameraUnitLog.i(TAG, "parserDefaultSupportPreviewSizes, values: " + jSONArray);
        sSupportDefaultPreviewSizes = parseJsonArrayToList(jSONArray);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserDefaultSupportVideoSizes(JSONObject jSONObject) throws JSONException {
        if (!jSONObject.has(JSON_KEY_DEFAULT_VIDEO_SIZE)) {
            CameraUnitLog.e(TAG, "parserDefaultSupportVideoSizes, don't have configure in the file");
            return;
        }
        JSONArray jSONArray = jSONObject.getJSONArray(JSON_KEY_DEFAULT_VIDEO_SIZE);
        CameraUnitLog.i(TAG, "parserDefaultSupportVideoSizes, values: " + jSONArray);
        sSupportDefaultVideoSizes = parseJsonArrayToList(jSONArray);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserSensorNumberConfig(JSONObject jSONObject, String str, Map<String, LinkedList<Pair<String, String>>> map) throws JSONException {
        if (!jSONObject.has(str)) {
            CameraUnitLog.e(TAG, "parserSensorNumber, don't have config in the camera_unit_config file, parseKey: " + str);
            return;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject2.getJSONArray(next);
            LinkedList<Pair<String, String>> linkedList = new LinkedList<>();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                String next2 = jSONObject3.keys().next();
                linkedList.add(new Pair<>(next2, jSONObject3.getString(next2)));
            }
            map.put(next, linkedList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parseVendorTagInfo(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(JSON_KEY_VENDOR_TAG_TYPE_VALUES)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(JSON_KEY_VENDOR_TAG_TYPE_VALUES);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                sVendorTagMap.put(next, jSONObject2.getString(next));
            }
        }
    }

    private static void parseKeyStringValueArrayJson(JSONObject jSONObject, String str, Map<String, List<String>> map) throws JSONException {
        if (jSONObject.has(str)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                map.put(next, parseJsonArrayToList(jSONObject2.getJSONArray(next)));
            }
        }
    }

    private static List<String> parseJsonArrayToList(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    private static LinkedList<String> parseJsonArrayToLinkedList(JSONArray jSONArray) throws JSONException {
        LinkedList<String> linkedList = new LinkedList<>();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            linkedList.add(jSONArray.getString(i));
        }
        return linkedList;
    }

    public static Map<String, Map<String, LinkedHashMap<String, List<String>>>> getModeCameraTypeFeatureTableMap() {
        FEATURE_CONDITION.block();
        return sModeTypeFeatureTable;
    }

    public static Map<String, List<String>> getSupportCameraMode() {
        MODE_CONDITION.block();
        return sSupportCameraModeMap;
    }

    public static List<String> getCameraIdList() {
        CAMERA_ID_CONDITION.block();
        return sCameraIdList;
    }

    public static Map<String, String[]> getConfigureParameterMapping() {
        return new HashMap(sConfigureParameterMapping);
    }

    public static String getFeatureMappingNameByParameterName(String str) {
        String[] strArr = sConfigureParameterMapping.get(str);
        if (strArr != null) {
            return strArr[0];
        }
        return null;
    }

    public static String getParameterNameByFeatureName(String str) {
        return sFeatureAndParameterMapping.get(str);
    }

    public static Map<String, Map<String, Map<String, String>>> getFeatureOperationMode() {
        return new HashMap(sFeatureOperationModeMap);
    }

    @NonNull
    public static String getDngDescription(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return sDngDescriptionDefault;
        }
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != -712848524) {
            if (hashCode != -712636059) {
                if (hashCode == -712543090 && str.equals("rear_wide")) {
                    c = 1;
                }
            } else if (str.equals("rear_tele")) {
                c = 2;
            }
        } else if (str.equals("rear_main")) {
            c = 0;
        }
        switch (c) {
            case 0:
                return sDngDescriptionMain;
            case 1:
                return sDngDescriptionWide;
            case 2:
                return sDngDescriptionTele;
            default:
                return sDngDescriptionDefault;
        }
    }

    public static Map<String, String> getDeviceInfoMap() {
        return sDeviceInfoMap;
    }

    public static Map<String, String> getModeOperationModeMap() {
        return sModeOperationModeMap;
    }

    public static LinkedList<Pair<String, String>> getUseCaseValues(String str) {
        return sUsecaseMap.get(str);
    }

    public static Map<String, LinkedList<Pair<String, String>>> getSensorNumberMap() {
        return sSensorNumberMap;
    }

    public static LinkedList<String> getMaxVideoSizeByFeature(String str, String str2, Map<String, String> map) {
        LinkedList<String> linkedList;
        String str3;
        CameraUnitLog.d(TAG, "getMaxVideoSizeByFeature, mode: " + str + ", type: " + str2 + ", feature: " + map);
        Map<String, Map<String, LinkedList<String>>> map2 = sMaxSupportVideoSize.get(str);
        String str4 = null;
        if (map2 == null) {
            CameraUnitLog.w(TAG, "getMaxVideoSizeByFeature, typeFeatureValues is null!");
            return null;
        }
        Map<String, LinkedList<String>> map3 = map2.get(str2);
        if (map3 == null) {
            CameraUnitLog.w(TAG, "getMaxVideoSizeByFeature, featureAndValues is null!");
            return null;
        }
        if (map == null || map.isEmpty()) {
            linkedList = map3.get("default");
            CameraUnitLog.i(TAG, "getMaxVideoSizeByFeature, will get the default values: " + linkedList);
        } else {
            Set<Map.Entry<String, String>> entrySet = map.entrySet();
            if (entrySet.iterator().hasNext()) {
                String key = entrySet.iterator().next().getKey();
                str4 = getFeatureMappingNameByParameterName(key);
                str3 = map.get(key);
            } else {
                str3 = null;
            }
            CameraUnitLog.d(TAG, "getMaxVideoSizeByFeature, featureName: " + str4 + ", featureAndValues: " + map3 + ", featureValue: " + str3);
            linkedList = map3.get(str4);
            if (linkedList == null) {
                linkedList = map3.get(str3);
            }
            if (linkedList == null) {
                linkedList = map3.get("default");
                CameraUnitLog.i(TAG, "getMaxVideoSizeByFeature, configure file isn't configured, will get the default values: " + linkedList);
            }
        }
        CameraUnitLog.i(TAG, "getMaxVideoSizeByFeature, feature: " + map + ", values: " + linkedList);
        return linkedList;
    }

    public static LinkedList<Size> getSupportPreviewSizeByFeature(String str, String str2, Map<String, String> map) {
        Map<String, LinkedList<String>> map2;
        String str3;
        Map<String, Map<String, LinkedList<String>>> map3 = sSupportPreviewSizes.get(str);
        String str4 = null;
        if (map3 == null || (map2 = map3.get(str2)) == null || map == null || map.isEmpty()) {
            return null;
        }
        Set<Map.Entry<String, String>> entrySet = map.entrySet();
        if (entrySet.iterator().hasNext()) {
            String key = entrySet.iterator().next().getKey();
            String featureMappingNameByParameterName = getFeatureMappingNameByParameterName(key);
            str3 = map.get(key);
            str4 = featureMappingNameByParameterName;
        } else {
            str3 = null;
        }
        LinkedList<String> linkedList = map2.get(str4);
        CameraUnitLog.d(TAG, "getSupportPreviewSizeByFeature, configTypeFeatureValues: " + map3 + ", featureName: " + str4 + ", parameterValue: " + str3 + ", jsonConfigValues: " + linkedList);
        if (linkedList == null) {
            linkedList = map2.get(str3);
        }
        CameraUnitLog.i(TAG, "getSupportPreviewSizeByFeature, feature: " + map + ", jsonConfigValues: " + linkedList);
        return parserSizeFromConfig(linkedList);
    }

    public static List<Size> getSupportDefaultPreviewSizes() {
        return parserSizeFromConfig(sSupportDefaultPreviewSizes);
    }

    public static List<Size> getSupportDefaultVideoSizes() {
        return parserSizeFromConfig(sSupportDefaultVideoSizes);
    }

    private static LinkedList<Size> parserSizeFromConfig(List<String> list) {
        LinkedList<Size> linkedList = new LinkedList<>();
        if (list != null && !list.isEmpty()) {
            for (String str : list) {
                String[] split = str.split("X");
                linkedList.add(new Size(Integer.parseInt(split[0]), Integer.parseInt(split[1])));
            }
        }
        return linkedList;
    }

    public static Map<String, String> getVendorTagMap() {
        return sVendorTagMap;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.String] */
    public static <T> T getConfigValue(CameraConfigBase.Key<T> key, T t) {
        if (sVendorTagMap != null && sVendorTagMap.containsKey(key.getName()) && sVendorTagMap.get(key.getName()) != null) {
            try {
                ?? r0 = (T) sVendorTagMap.get(key.getName());
                if (Integer.class.equals(key.getType())) {
                    return (T) Integer.valueOf((String) r0);
                }
                if (Float.class.equals(key.getType())) {
                    return (T) Float.valueOf((String) r0);
                }
                if (Double.class.equals(key.getType())) {
                    return (T) Double.valueOf((String) r0);
                }
                if (Long.class.equals(key.getType())) {
                    return (T) Long.valueOf((String) r0);
                }
                if (Boolean.class.equals(key.getType())) {
                    return (T) Boolean.valueOf(Byte.parseByte(r0) > 0);
                } else if (String.class.equals(key.getType())) {
                    return r0;
                } else {
                    if (Range.class.equals(key.getType())) {
                        return (T) new Range(Integer.valueOf((String) r0), Integer.valueOf((String) r0));
                    }
                    if (Size[].class.equals(key.getType())) {
                        return (T) Util.parserSizeLists(r0);
                    }
                    if (Size.class.equals(key.getType())) {
                        String[] split = r0.toUpperCase().split("X");
                        return split.length == 2 ? (T) new Size(Integer.parseInt(split[0]), Integer.parseInt(split[1])) : t;
                    }
                    CameraUnitLog.e(TAG, "getConfigBooleanValue, key: " + key + ", Type isn't support");
                }
            } catch (Exception e) {
                CameraUnitLog.e(TAG, "getConfigBooleanValue, key: " + key + ", value: " + sVendorTagMap.get(key.getName()));
                e.printStackTrace();
            }
        }
        return t;
    }
}
