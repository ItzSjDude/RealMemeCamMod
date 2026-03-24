package com.oplus.ocs.camera.producer.info;

import android.content.Context;
import android.os.ConditionVariable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.configure.IConfigParser;
import com.oplus.ocs.camera.configure.JsonParser;
import com.oplus.ocs.camera.configure.ProtobufConfigureHelper;
import com.oplus.ocs.camera.configure.ProtobufParser;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.producer.feature.FeatureFactory;
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

    /* loaded from: classes.dex */
    public interface ConfigStatusCallback {
        void onConfigParseDone();
    }

    static /* synthetic */ List access$2100() {
        return getCameraModeList();
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
            Thread thread = new Thread(new Runnable() { // from class: com.oplus.ocs.camera.producer.info.CameraConfigHelper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CameraConfigHelper.lambda$initialize$0();
                }
            });
            thread.setName("protobufParserThread");
            thread.start();
        }
        Thread thread2 = new Thread(new Runnable() { // from class: com.oplus.ocs.camera.producer.info.CameraConfigHelper.1
            /* JADX WARN: Code restructure failed: missing block: B:26:0x0191, code lost:
                if (com.oplus.ocs.camera.producer.info.CameraConfigHelper.sbUseProtobufFeature == false) goto L28;
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x01b5, code lost:
                if (com.oplus.ocs.camera.producer.info.CameraConfigHelper.sbUseProtobufFeature != false) goto L26;
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x01b7, code lost:
                com.oplus.ocs.camera.producer.info.CameraConfigHelper.FEATURE_CONDITION.open();
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x01be, code lost:
                com.oplus.ocs.camera.producer.info.CameraConfigHelper.CAMERA_ID_TYPE_CONDITION.open();
                com.oplus.ocs.camera.producer.info.CameraConfigHelper.APS_CONFIG_CONDITION.open();
                com.oplus.ocs.camera.producer.info.CameraConfigHelper.FEATURE_PARAMETER_MAP_CONDITION.open();
                com.oplus.ocs.camera.common.util.CameraUnitLog.initLog(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x01d8, code lost:
                return;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 534
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.info.CameraConfigHelper.AnonymousClass1.run():void");
            }
        });
        thread2.setName("jsonParserThread");
        thread2.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initialize$0() {
        FeatureFactory.initAllModeFeatures(new ProtobufParser().parseModeCameraTypeFeature(null));
        FEATURE_CONDITION.open();
    }

    public static void setConfigStatusCallback(ConfigStatusCallback configStatusCallback) {
        mConfigStatusCallback = configStatusCallback;
    }

    public static boolean isConfigFileExist(boolean z) {
        return Util.isFileExist(JsonParser.getConfigPath(z));
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
    public static void parserDngDescription(IConfigParser iConfigParser) {
        sDngDescriptionMain = iConfigParser.parseDngDescription("rear_main");
        sDngDescriptionWide = iConfigParser.parseDngDescription("rear_wide");
        sDngDescriptionTele = iConfigParser.parseDngDescription("rear_tele");
    }

    public static Map<String, List<String>> getSupportCameraMode() {
        MODE_CONDITION.block();
        return sSupportCameraModeMap;
    }

    private static List<String> getCameraModeList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : getSupportCameraMode().entrySet()) {
            for (String str : entry.getValue()) {
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
                return sDngDescriptionMain;
            case 1:
                return sDngDescriptionTele;
            case 2:
                return sDngDescriptionWide;
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
            Set<Map.Entry<String, String>> entrySet = map.entrySet();
            if (entrySet.iterator().hasNext()) {
                String key = entrySet.iterator().next().getKey();
                String featureMappingNameByParameterName = getFeatureMappingNameByParameterName(key);
                str3 = map.get(key);
                str4 = featureMappingNameByParameterName;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v3, types: [T, int[]] */
    public static <T> T getConfigValue(CameraConfigBase.Key<T> key, T t) {
        T r2 = (T) getConfigValue(key.getName());
        if (r2 == null) {
            return t;
        }
        try {
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "getConfigValue, key: " + key + ", value: " + ((String) r2));
            e.printStackTrace();
        }
        if (Integer.class.equals(key.getType())) {
            return (T) Integer.valueOf((String) r2);
        }
        if (Float.class.equals(key.getType())) {
            return (T) Float.valueOf((String) r2);
        }
        if (Double.class.equals(key.getType())) {
            return (T) Double.valueOf((String) r2);
        }
        if (Long.class.equals(key.getType())) {
            return (T) Long.valueOf((String) r2);
        }
        boolean z = true;
        if (Boolean.class.equals(key.getType())) {
            if (Byte.parseByte(r2) <= 0) {
                z = false;
            }
            return (T) Boolean.valueOf(z);
        } else if (String.class.equals(key.getType())) {
            return r2;
        } else {
            if (Size[].class.equals(key.getType())) {
                return (T) Util.parserSizeLists(r2);
            }
            if (Size.class.equals(key.getType())) {
                String[] split = r2.toUpperCase().split("X");
                return split.length == 2 ? (T) new Size(Integer.parseInt(split[0]), Integer.parseInt(split[1])) : t;
            } else if (!int[].class.equals(key.getType())) {
                CameraUnitLog.e(TAG, "getConfigValue, key: " + key + ", Type isn't support");
                return t;
            } else {
                String[] split2 = r2.toUpperCase().split(CameraConstant.JSON_CONNECTOR_COMMA);
                int length = split2.length;
                int[] r6 = new int[length];
                for (int i = 0; i < length; i++) {
                    r6[i] = Integer.parseInt(split2[i]);
                }
                return (T) r6;
            }
        }
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
        if (map != null) {
            map.put(str, str2);
            return true;
        }
        return true;
    }

    private static void checkVendorTagReady() {
        if (2 == ProtobufConfigureHelper.getConfigParseVersion()) {
            VENDOR_TAG_CONDITION.block();
        }
    }
}
