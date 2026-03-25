package com.oplus.ocs.camera.producer.info;

import android.content.Context;
import android.os.ConditionVariable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.configure.IConfigParser;
import com.oplus.ocs.camera.configure.JsonParser;
import com.oplus.ocs.camera.configure.ProtobufConfigureHelper;
import com.oplus.ocs.camera.configure.ProtobufParser;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.feature.FeatureFactory;
import java.lang.reflect.Method;
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

/* JADX INFO: loaded from: classes.dex */
public final class CameraConfigHelper {
    public static final int PARAMETER_MAPPING_CATEGORY_INDEX = 2;
    public static final int PARAMETER_MAPPING_NAME_INDEX = 0;
    public static final int PARAMETER_MAPPING_TYPE_INDEX = 1;
    private static final String TAG = "CameraConfigHelper";
    private static final ConditionVariable CAMERA_ID_CONDITION = new ConditionVariable();
    private static final ConditionVariable MODE_CONDITION = new ConditionVariable();
    private static final ConditionVariable VENDOR_TAG_CONDITION = new ConditionVariable();
    private static final ConditionVariable FEATURE_CONDITION = new ConditionVariable();
    private static final ConditionVariable CAMERA_ID_TYPE_CONDITION = new ConditionVariable();
    private static final ConditionVariable APS_CONFIG_CONDITION = new ConditionVariable();
    private static final ConditionVariable FEATURE_PARAMETER_MAP_CONDITION = new ConditionVariable();
    private static final boolean sbUseProtobufFeature = Util.isFileExist(ProtobufParser.getConfigPath());
    private static List<String> sCameraIdList = null;
    private static String sDngDescriptionDefault = "this is from oplus camera";
    private static String sDngDescriptionMain = "this is from oplus camera";
    private static String sDngDescriptionWide = "this is from oplus camera";
    private static String sDngDescriptionTele = "this is from oplus camera";
    private static Map<String, List<String>> sSupportCameraModeMap = null;
    private static Map<String, LinkedHashMap<String, Map<String, String>>> sFeatureOperationModeMap = null;
    private static Map<String, String> sModeOperationModeMap = null;
    private static Map<String, String> sDeviceInfoMap = null;
    private static final HashMap<String, String[]> sConfigureParameterMapping = new HashMap<>();
    private static final Map<String, String> sFeatureAndParameterMapping = new HashMap();
    private static Map<String, LinkedList<Pair<String, String>>> sUsecaseMap = null;
    private static List<String> sSupportDefaultPreviewSizes = null;
    private static Map<String, LinkedList<Pair<String, String>>> sSensorNumberMap = null;
    private static List<String> sSupportDefaultVideoSizes = null;
    private static Map<String, Map<String, Map<String, LinkedList<String>>>> sMaxSupportVideoSize = null;
    private static Map<String, Map<String, Map<String, LinkedList<String>>>> sSupportPreviewSizes = null;
    private static volatile ConfigStatusCallback mConfigStatusCallback = null;
    private static Map<String, String> sVendorTagMap = null;
    private static Map<String, Map<String, Map<String, String>>> sCaptureStreamNumberMap = null;

    public interface ConfigStatusCallback {
        void onConfigParseDone();
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

    public static void blockFeatureParameterMapIfNeeded() {
        FEATURE_PARAMETER_MAP_CONDITION.block();
    }

    public static void initialize(@NonNull final Context context) {
        CAMERA_ID_CONDITION.close();
        MODE_CONDITION.close();
        VENDOR_TAG_CONDITION.close();
        FEATURE_CONDITION.close();
        APS_CONFIG_CONDITION.close();
        FEATURE_PARAMETER_MAP_CONDITION.close();
        if (sbUseProtobufFeature) {
            Thread thread = new Thread(new Runnable() { // from class:
                                                        // com.oplus.ocs.camera.producer.info.CameraConfigHelper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CameraConfigHelper.lambda$initialize$0();
                }
            });
            thread.setName("protobufParserThread");
            thread.start();
        }
        Thread thread2 = new Thread(new Runnable() { // from class:
                                                     // com.oplus.ocs.camera.producer.info.CameraConfigHelper.1
            /*
             * JADX DEBUG: Another duplicated slice has different insns count: {[INVOKE,
             * INVOKE, INVOKE, INVOKE, INVOKE, INVOKE, INVOKE]}, finally: {[INVOKE, INVOKE,
             * INVOKE, INVOKE, INVOKE, INVOKE, INVOKE, INVOKE, INVOKE, INVOKE, INVOKE,
             * INVOKE, INVOKE, IGET, INVOKE, INVOKE, INVOKE, INVOKE, INVOKE, INVOKE, INVOKE,
             * INVOKE, INVOKE, IGET, INVOKE, IF] complete}
             */
            /*
             * JADX DEBUG: Don't trust debug lines info. Repeating lines: [261=4, 262=4,
             * 263=4, 265=4]
             */
            /* JADX WARN: Removed duplicated region for block: B:34:0x01b7 */
            @Override // java.lang.Runnable
            /*
             * Code decompiled incorrectly, please refer to instructions dump.
             */
            public void run() {
                long jCurrentTimeMillis;
                JsonParser jsonParser;
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
                        jCurrentTimeMillis = System.currentTimeMillis();
                        jsonParser = new JsonParser();
                    } catch (Exception e2) {
                        CameraUnitLog.e(CameraConfigHelper.TAG, "initialize, failed!", e2);
                        CameraConfigHelper.CAMERA_ID_CONDITION.open();
                        CameraConfigHelper.MODE_CONDITION.open();
                        CameraConfigHelper.VENDOR_TAG_CONDITION.open();
                        if (!CameraConfigHelper.sbUseProtobufFeature) {
                        }
                    }
                    if (!jsonParser.loadConfigFile(context)) {
                        CameraConfigHelper.CAMERA_ID_CONDITION.open();
                        CameraConfigHelper.MODE_CONDITION.open();
                        CameraConfigHelper.VENDOR_TAG_CONDITION.open();
                        if (!CameraConfigHelper.sbUseProtobufFeature) {
                            CameraConfigHelper.FEATURE_CONDITION.open();
                        }
                        CameraConfigHelper.CAMERA_ID_TYPE_CONDITION.open();
                        CameraConfigHelper.APS_CONFIG_CONDITION.open();
                        CameraConfigHelper.FEATURE_PARAMETER_MAP_CONDITION.open();
                        CameraUnitLog.initLog(context);
                        return;
                    }
                    Map unused = CameraConfigHelper.sVendorTagMap = jsonParser.parseVendorTagInfo();
                    CameraConfigHelper.VENDOR_TAG_CONDITION.open();
                    List unused2 = CameraConfigHelper.sCameraIdList = jsonParser.parseCameraIdList();
                    CameraConfigHelper.CAMERA_ID_CONDITION.open();
                    Map unused3 = CameraConfigHelper.sSupportCameraModeMap = jsonParser.parseSupportedMode();
                    CameraConfigHelper.MODE_CONDITION.open();
                    jsonParser.parseConfigureParameters(CameraConfigHelper.sConfigureParameterMapping,
                            CameraConfigHelper.sFeatureAndParameterMapping);
                    Map unused4 = CameraConfigHelper.sModeOperationModeMap = jsonParser.parseModeOperationMode();
                    Map unused5 = CameraConfigHelper.sDeviceInfoMap = jsonParser.parseDeviceInfo();
                    Map unused6 = CameraConfigHelper.sFeatureOperationModeMap = jsonParser.parseFeatureOperationMode();
                    Map unused7 = CameraConfigHelper.sUsecaseMap = jsonParser.parseUsecaseInfo();
                    CameraConfigHelper.FEATURE_PARAMETER_MAP_CONDITION.open();
                    List unused8 = CameraConfigHelper.sSupportDefaultPreviewSizes = jsonParser
                            .parserDefaultSupportPreviewSizes();
                    List unused9 = CameraConfigHelper.sSupportDefaultVideoSizes = jsonParser
                            .parserDefaultSupportVideoSizes();
                    Map unused10 = CameraConfigHelper.sMaxSupportVideoSize = jsonParser.parseMaxSupportVideoSize();
                    Map unused11 = CameraConfigHelper.sSupportPreviewSizes = jsonParser.parseMaxSupportPreviewSize();
                    Map unused12 = CameraConfigHelper.sSensorNumberMap = jsonParser.parserSensorNumberConfig();
                    Map unused13 = CameraConfigHelper.sCaptureStreamNumberMap = jsonParser
                            .parserCaptureStreamNumberConfig();
                    CameraConfigHelper.parserDngDescription(jsonParser);
                    if (!CameraConfigHelper.sbUseProtobufFeature) {
                        FeatureFactory.initAllModeFeatures(
                                jsonParser.parseModeCameraTypeFeature(CameraConfigHelper.getCameraModeList()));
                        CameraConfigHelper.FEATURE_CONDITION.open();
                    }
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
                    CameraUnitLog.i(CameraConfigHelper.TAG,
                            "initialize config X, spend time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
                    CameraConfigHelper.CAMERA_ID_CONDITION.open();
                    CameraConfigHelper.MODE_CONDITION.open();
                    CameraConfigHelper.VENDOR_TAG_CONDITION.open();
                    if (!CameraConfigHelper.sbUseProtobufFeature) {
                        CameraConfigHelper.FEATURE_CONDITION.open();
                    }
                    CameraConfigHelper.CAMERA_ID_TYPE_CONDITION.open();
                    CameraConfigHelper.APS_CONFIG_CONDITION.open();
                    CameraConfigHelper.FEATURE_PARAMETER_MAP_CONDITION.open();
                    CameraUnitLog.initLog(context);
                } catch (Throwable th) {
                    CameraConfigHelper.CAMERA_ID_CONDITION.open();
                    CameraConfigHelper.MODE_CONDITION.open();
                    CameraConfigHelper.VENDOR_TAG_CONDITION.open();
                    if (!CameraConfigHelper.sbUseProtobufFeature) {
                        CameraConfigHelper.FEATURE_CONDITION.open();
                    }
                    CameraConfigHelper.CAMERA_ID_TYPE_CONDITION.open();
                    CameraConfigHelper.APS_CONFIG_CONDITION.open();
                    CameraConfigHelper.FEATURE_PARAMETER_MAP_CONDITION.open();
                    CameraUnitLog.initLog(context);
                    throw th;
                }
            }
        });
        thread2.setName("jsonParserThread");
        thread2.start();
    }

    static /* synthetic */ void lambda$initialize$0() {
        FeatureFactory.initAllModeFeatures(new ProtobufParser().parseModeCameraTypeFeature(null));
        FEATURE_CONDITION.open();
    }

    public static void setConfigStatusCallback(ConfigStatusCallback configStatusCallback) {
        mConfigStatusCallback = configStatusCallback;
    }

    public static boolean isConfigFileExist(boolean z) {
        return Util.isFileExist(JsonParser.getConfigPath(z));
    }

    private static void parserMaxConfigSize(JSONObject jSONObject, String str,
            Map<String, LinkedList<Pair<String, String>>> map) throws JSONException {
        if (!jSONObject.has(str)) {
            CameraUnitLog.e(TAG,
                    "parserMaxConfigSize, don't have config in the camera_unit_config file, parseKey: " + str);
            return;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONArray jSONArray = jSONObject2.getJSONArray(next);
            LinkedList<Pair<String, String>> linkedList = new LinkedList<>();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                String next2 = jSONObject3.keys().next();
                String string = jSONObject3.getString(next2);
                CameraUnitLog.i(TAG, "parserMaxConfigSize, parseKey: " + str + ", cameraMode: " + next
                        + ", cameraType: " + next2 + ", value: " + string);
                linkedList.add(new Pair<>(next2, string));
            }
            map.put(next, linkedList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void parserDngDescription(IConfigParser iConfigParser) {
        sDngDescriptionMain = iConfigParser.parseDngDescription("rear_main");
        sDngDescriptionWide = iConfigParser.parseDngDescription("rear_wide");
        sDngDescriptionTele = iConfigParser.parseDngDescription("rear_tele");
    }

    public static Map<String, List<String>> getSupportCameraMode() {
        MODE_CONDITION.block();
        return sSupportCameraModeMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<String> getCameraModeList() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, List<String>>> it = getSupportCameraMode().entrySet().iterator();
        while (it.hasNext()) {
            for (String str : it.next().getValue()) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
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
        str.hashCode();
        switch (str) {
        }
        return sDngDescriptionDefault;
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

    public static Map<String, Map<String, Map<String, String>>> getCaptureStreamNumberMap() {
        return sCaptureStreamNumberMap;
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
            Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
            if (setEntrySet.iterator().hasNext()) {
                String key = setEntrySet.iterator().next().getKey();
                String featureMappingNameByParameterName = getFeatureMappingNameByParameterName(key);
                str3 = map.get(key);
                str4 = featureMappingNameByParameterName;
            } else {
                str3 = null;
            }
            CameraUnitLog.d(TAG, "getMaxVideoSizeByFeature, featureName: " + str4 + ", featureAndValues: " + map3
                    + ", featureValue: " + str3);
            linkedList = map3.get(str4);
            if (linkedList == null) {
                linkedList = map3.get(str3);
            }
            if (linkedList == null) {
                linkedList = map3.get("default");
                CameraUnitLog.i(TAG,
                        "getMaxVideoSizeByFeature, configure file isn't configured, will get the default values: "
                                + linkedList);
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
        Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
        if (setEntrySet.iterator().hasNext()) {
            String key = setEntrySet.iterator().next().getKey();
            String featureMappingNameByParameterName = getFeatureMappingNameByParameterName(key);
            str3 = map.get(key);
            str4 = featureMappingNameByParameterName;
        } else {
            str3 = null;
        }
        LinkedList<String> linkedList = map2.get(str4);
        CameraUnitLog.d(TAG, "getSupportPreviewSizeByFeature, configTypeFeatureValues: " + map3 + ", featureName: "
                + str4 + ", parameterValue: " + str3 + ", jsonConfigValues: " + linkedList);
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
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                String[] strArrSplit = it.next().split("X");
                linkedList.add(new Size(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1])));
            }
        }
        return linkedList;
    }

    public static Map<String, String> getVendorTagMap() {
        return sVendorTagMap;
    }

    /*
     * JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type:
     * java.lang.StringBuilder
     */
    /*
     * JADX DEBUG: Multi-variable search result rejected for r6v7, resolved type:
     * int[]
     */
    /*
     * JADX DEBUG: Multi-variable search result rejected for r8v9, resolved type:
     * android.util.Size[]
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v3, types: [T, int[]] */
    public static <T> T getConfigValue(CameraConfigBase.Key<T> key, T t) {
        String value = getConfigValue(key.getName());
        if (value == null) {
            return t;
        }
        try {
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "getConfigValue, key: " + key + ", value: " + value);
            e.printStackTrace();
        }
        if (Integer.class.equals(key.getType())) {
            return (T) Integer.valueOf(value);
        }
        if (Float.class.equals(key.getType())) {
            return (T) Float.valueOf(value);
        }
        if (Double.class.equals(key.getType())) {
            return (T) Double.valueOf(value);
        }
        if (Long.class.equals(key.getType())) {
            return (T) Long.valueOf(value);
        }
        boolean z = true;
        if (Boolean.class.equals(key.getType())) {
            if (Byte.parseByte(value) <= 0) {
                z = false;
            }
            return (T) Boolean.valueOf(z);
        }
        if (String.class.equals(key.getType())) {
            return (T) value;
        }
        if (Size[].class.equals(key.getType())) {
            return (T) Util.parserSizeLists(value);
        }
        if (Size.class.equals(key.getType())) {
            String[] strArrSplit = value.toUpperCase().split("X");
            return strArrSplit.length == 2
                    ? (T) new Size(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]))
                    : t;
        }
        if (int[].class.equals(key.getType())) {
            String[] strArrSplit2 = value.toUpperCase().split(CameraConstant.JSON_CONNECTOR_COMMA);
            int length = strArrSplit2.length;
            int[] result = new int[length];
            for (int i = 0; i < length; i++) {
                result[i] = Integer.parseInt(strArrSplit2[i]);
            }
            return (T) result;
        }
        CameraUnitLog.e(TAG, "getConfigValue, key: " + key + ", Type isn't support");
        return t;
    }

    public static String getConfigValue(String str) {
        checkVendorTagReady();
        Map<String, String> map = sVendorTagMap;
        String str2 = map != null ? map.get(str) : null;
        return str2 != null ? str2 : ApsUtils.getVendorTagConfig(str);
    }

    public static boolean setVendorTagConfigRus(String str, String str2) {
        if (ApsUtils.setVendorTagConfigRus(str, str2)) {
            return true;
        }
        checkVendorTagReady();
        Map<String, String> map = sVendorTagMap;
        if (map == null) {
            return true;
        }
        map.put(str, str2);
        return true;
    }

    private static void checkVendorTagReady() {
        if (2 == ProtobufConfigureHelper.getConfigParseVersion()) {
            VENDOR_TAG_CONDITION.block();
        }
    }
}
