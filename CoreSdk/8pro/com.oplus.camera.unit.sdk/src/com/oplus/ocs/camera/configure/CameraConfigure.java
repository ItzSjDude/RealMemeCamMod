package com.oplus.ocs.camera.configure;

import android.content.Context;
import android.os.ConditionVariable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.oplus.protobuf.InvalidProtocolBufferException;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.configure.ProtobufFeatureConfig;
import com.oplus.ocs.camera.producer.feature.FeatureImpl;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CameraConfigure {
    private static final String COLON = ":";
    private static final String COMMON = "common";
    private static final String TAG = "CameraConfigure";
    private static final String VENDOR_TAG = "VendorTag";
    private static final String VENDOR_TAG_SEPARATOR = "\\|";
    private static final ConditionVariable FEATURE_CONFIG_CONDITION = new ConditionVariable();
    private static final ConditionVariable PROJECT_FEATURES_READY_CONDITION = new ConditionVariable();
    private static final Map<String, Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>> sFeatureTable = new HashMap();
    private static final Map<String, Map<String, List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>>> sGroupFeatureTable = new HashMap();
    private static final Map<String, Map<String, ProtobufFeatureConfigureImpl>> sFeatureConfigureMap = new HashMap();
    private static final HashMap<String, String> sVendorTagMap = new HashMap<>();
    private static boolean sbInit = false;

    public static synchronized void initialize() {
        if (sbInit) {
            return;
        }
        ConditionVariable conditionVariable = PROJECT_FEATURES_READY_CONDITION;
        conditionVariable.close();
        ConditionVariable conditionVariable2 = FEATURE_CONFIG_CONDITION;
        conditionVariable2.close();
        if (!ProtobufConfigureHelper.isFeatureConfigureFileExist()) {
            sbInit = true;
            conditionVariable.open();
            conditionVariable2.open();
            return;
        }
        try {
            parseFromProtobuf(ContextHolder.getContext());
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "initialize error!", e);
        }
    }

    public static synchronized void initialize(Context context) {
        if (sbInit) {
            return;
        }
        ConditionVariable conditionVariable = PROJECT_FEATURES_READY_CONDITION;
        conditionVariable.close();
        ConditionVariable conditionVariable2 = FEATURE_CONFIG_CONDITION;
        conditionVariable2.close();
        if (!ProtobufConfigureHelper.isFeatureConfigureFileExist()) {
            sbInit = true;
            conditionVariable.open();
            conditionVariable2.open();
            return;
        }
        try {
            parseFromProtobuf(context);
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "initialize error!", e);
        }
    }

    private static void generateVendorTagMap(byte[] bArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        sVendorTagMap.clear();
        String[] strArrSplit = new String(bArr, StandardCharsets.UTF_8).split(VENDOR_TAG_SEPARATOR);
        for (String str : strArrSplit) {
            String[] strArrSplit2 = str.split(COLON);
            if (strArrSplit2.length > 1) {
                sVendorTagMap.put(strArrSplit2[0], strArrSplit2[1]);
            } else {
                sVendorTagMap.put(strArrSplit2[0], "");
            }
        }
        CameraUnitLog.d(TAG, "getVendorTagMap, size: " + strArrSplit.length + ", cost time: "
                + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    private static void parseFromProtobuf(Context context) throws Exception {
        CameraUnitLog.traceBeginSection("parseFromProtobuf");
        long jCurrentTimeMillis = System.currentTimeMillis();
        int configParseVersion = ProtobufConfigureHelper.getConfigParseVersion();
        if (configParseVersion == 1) {
            PROJECT_FEATURES_READY_CONDITION.open();
            decodeConfigFileVersion1();
        } else if (configParseVersion == 2) {
            decodeConfigFileVersion2(context);
        }
        sbInit = true;
        CameraUnitLog.e(TAG, "initialize, configParseVersion: " + ProtobufConfigureHelper.getConfigParseVersion()
                + ", cost time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
        CameraUnitLog.traceEndSection("parseFromProtobuf");
    }

    /*
     * JADX WARN: Removed duplicated region for block: B:35:0x003f
     * A[EXC_TOP_SPLITTER, SYNTHETIC]
     */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    private static void decodeConfigFileVersion1() throws Exception {
        FileInputStream fileInputStream;
        Throwable th;
        IOException e;
        try {
            fileInputStream = new FileInputStream("/odm/etc/camera/config/camera_unit_feature_config.protobuf");
            try {
                try {
                    byte[] bArr = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr);
                    parseProtobufFeature(bArr);
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                    }
                } catch (IOException e3) {
                    e = e3;
                    CameraUnitLog.e(TAG, "decodeConfigFileVersion1, parse error!", e);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e4) {
                            e = e4;
                            e.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                FEATURE_CONFIG_CONDITION.open();
                throw th;
            }
        } catch (IOException e6) {
            fileInputStream = null;
            e = e6;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            if (fileInputStream != null) {
            }
            FEATURE_CONFIG_CONDITION.open();
            if (th instanceof Exception) {
                throw (Exception) th;
            }
            throw new Exception(th);
        }
        FEATURE_CONFIG_CONDITION.open();
    }

    /*
     * JADX WARN: Removed duplicated region for block: B:24:0x007c A[Catch: all ->
     * 0x00c4, IOException -> 0x00c6, TryCatch #1 {all -> 0x00c4, blocks:
     * (B:3:0x0005, B:5:0x000c, B:7:0x0029, B:9:0x0030, B:22:0x0075, B:24:0x007c,
     * B:26:0x008c, B:32:0x00a7, B:33:0x00ab, B:12:0x004b, B:47:0x00c7), top:
     * B:64:0x0005 }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:62:0x00e3
     * A[EXC_TOP_SPLITTER, SYNTHETIC]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:66:0x00ce
     * A[EXC_TOP_SPLITTER, SYNTHETIC]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:68:0x00b8
     * A[EXC_TOP_SPLITTER, SYNTHETIC]
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    private static void decodeConfigFileVersion2(Context context) throws Exception {
        FileInputStream odmStream = null;
        FileInputStream rusStream = null;
        FileInputStream activeStream = null;
        try {
            odmStream = new FileInputStream("/odm/etc/camera/config/oplus_camera_feature_config");
            if (context != null) {
                String rusPath = context.getFilesDir().getAbsolutePath()
                        + "/odm/etc/camera/config/oplus_camera_feature_config";
                if (Util.isFileExist(rusPath)) {
                    rusStream = new FileInputStream(rusPath);
                }
            }

            int odmVersion = readIntFormStream(odmStream);
            CameraUnitLog.e(TAG, "decodeConfigFileVersion2, odmFileVersion:" + odmVersion);

            if (rusStream != null) {
                int rusVersion = readIntFormStream(rusStream);
                CameraUnitLog.e(TAG, "decodeConfigFileVersion2, rusFileVersion:" + rusVersion);
                if (rusVersion >= odmVersion) {
                    odmStream.close();
                    odmStream = null;
                    activeStream = rusStream;
                } else {
                    rusStream.close();
                    rusStream = null;
                    activeStream = odmStream;
                }
            } else {
                activeStream = odmStream;
            }

            if (activeStream != null) {
                int featureCount = readIntFormStream(activeStream);
                for (int i = 0; i < featureCount; i++) {
                    int tag = readIntFormStream(activeStream);
                    int length = readIntFormStream(activeStream);
                    byte[] content = new byte[length];
                    if (activeStream.read(content) != length) {
                        CameraUnitLog.e(TAG, "decodeConfigFileVersion2, content length is not correct, tag: " + tag);
                    }
                    if (tag == 1) {
                        generateVendorTagMap(content);
                        PROJECT_FEATURES_READY_CONDITION.open();
                    } else if (tag == 2) {
                        parseProtobufFeature(content);
                    }
                }
            }
        } catch (IOException e) {
            CameraUnitLog.e(TAG, "decodeConfigFileVersion2, parse error!", e);
            throw e;
        } catch (Throwable th) {
            CameraUnitLog.e(TAG, "decodeConfigFileVersion2, unexpected error!", th);
            if (th instanceof Exception) {
                throw (Exception) th;
            }
            throw new Exception(th);
        } finally {
            if (odmStream != null) {
                try {
                    odmStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (rusStream != null) {
                try {
                    rusStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            // activeStream is either odmStream or rusStream, so it's handled above.
            PROJECT_FEATURES_READY_CONDITION.open();
            FEATURE_CONFIG_CONDITION.open();
        }
        sbInit = true;
    }

    private static void parseProtobufFeature(byte[] bArr) throws InvalidProtocolBufferException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        CameraUnitLog.traceBeginSection("FeatureApi.parse");
        ProtobufFeatureConfig.FeatureTable from = ProtobufFeatureConfig.FeatureTable.parseFrom(bArr);
        CameraUnitLog.e(TAG, "protobuf version: " + from.getVersion());
        CameraUnitLog.e(TAG, "protobuf parser cost time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
        CameraUnitLog.traceEndSection("FeatureApi.parse");
        CameraUnitLog.traceBeginSection("FeatureApi.initFeatureTable");
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        initFeatureTable(from);
        CameraUnitLog.d(TAG, "initFeatureTable cost: " + (System.currentTimeMillis() - jCurrentTimeMillis2));
        CameraUnitLog.traceEndSection("FeatureApi.initFeatureTable");
    }

    private static int readIntFormStream(FileInputStream fileInputStream) throws IOException {
        byte[] bArr = new byte[4];
        if (-1 != fileInputStream.read(bArr)) {
            return Util.byteArrayToInt(bArr);
        }
        return -1;
    }

    @Nullable
    public static String getProjectSupportFeatureValue(String str) {
        if (!ProtobufConfigureHelper.isFeatureConfigureFileExist()
                || 1 == ProtobufConfigureHelper.getConfigParseVersion()) {
            return null;
        }
        PROJECT_FEATURES_READY_CONDITION.block();
        return sVendorTagMap.get(str);
    }

    @Nullable
    public static boolean setProjectSupportFeatureValueRus(String str, String str2) {
        if (!ProtobufConfigureHelper.isFeatureConfigureFileExist()
                || 1 == ProtobufConfigureHelper.getConfigParseVersion()) {
            return false;
        }
        PROJECT_FEATURES_READY_CONDITION.block();
        sVendorTagMap.put(str, str2);
        return true;
    }

    @Nullable
    public static ProtobufFeatureConfigureInterface getFeatureConfigure(String str, String str2) {
        if (!ProtobufConfigureHelper.isFeatureConfigureFileExist()) {
            return null;
        }
        FEATURE_CONFIG_CONDITION.block();
        Map<String, Map<String, ProtobufFeatureConfigureImpl>> map = sFeatureConfigureMap;
        if (map.containsKey(str) && map.get(str).containsKey(str2)) {
            return map.get(str).get(str2);
        }
        return initFeatureConfigure(str, str2);
    }

    private static void initFeatureTable(ProtobufFeatureConfig.FeatureTable featureTable) {
        initCameraFeatureTable(featureTable);
        initCameraGroupFeatureTable(featureTable);
    }

    private static void initCameraFeatureTable(ProtobufFeatureConfig.FeatureTable featureTable) {
        ProtobufFeatureConfig.CameraFeatureTable cameraFeatureTable = featureTable.getCameraFeatureTable();
        if (cameraFeatureTable != null) {
            Map<String, ProtobufFeatureConfig.ModeFeatureTable> modeFeatureTablesMap = cameraFeatureTable
                    .getModeFeatureTablesMap();
            for (Map.Entry<String, ProtobufFeatureConfig.ModeFeatureTable> entry : modeFeatureTablesMap.entrySet()) {
                String key = entry.getKey();
                Map<String, Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>> map = sFeatureTable;
                Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> map2 = map.get(key);
                if (map2 == null) {
                    map2 = new HashMap<>();
                    map.put(key, map2);
                }
                CameraUnitLog.d(TAG, "initCameraFeatureTable, modeName: " + key + ", modeTableSize: " + map2.size());
                for (Map.Entry<Integer, ProtobufFeatureConfig.CameraTypeFeatureTable> entry2 : entry.getValue()
                        .getCameraTypeFeatureTablesMap().entrySet()) {
                    String strPool = featureTable.getStrPool(entry2.getKey().intValue());
                    map2.put(strPool,
                            initCameraTypeFeatureTable(entry2.getValue(), featureTable.getStrPoolList(), key, strPool));
                }
            }
        }
    }

    private static void initCameraGroupFeatureTable(ProtobufFeatureConfig.FeatureTable featureTable) {
        ProtobufFeatureConfig.CameraGroupFeatureTable cameraGroupFeatureTable = featureTable
                .getCameraGroupFeatureTable();
        if (cameraGroupFeatureTable == null) {
            return;
        }
        for (Map.Entry<String, ProtobufFeatureConfig.ModeGroupFeatureTable> entry : cameraGroupFeatureTable
                .getModeGroupFeatureTablesMap().entrySet()) {
            String key = entry.getKey();
            ProtobufFeatureConfig.ModeGroupFeatureTable value = entry.getValue();
            Map<String, Map<String, List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>>> map = sGroupFeatureTable;
            Map<String, List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>> map2 = map.get(key);
            if (map2 == null) {
                map2 = new HashMap<>();
                map.put(key, map2);
            }
            for (Map.Entry<Integer, ProtobufFeatureConfig.CameraTypeFeatureTableList> entry2 : value
                    .getCameraTypeFeatureTablesMap().entrySet()) {
                String strPool = featureTable.getStrPool(entry2.getKey().intValue());
                List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> arrayList = map2.get(strPool);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    map2.put(strPool, arrayList);
                }
                Iterator<ProtobufFeatureConfig.CameraTypeFeatureTable> it = entry2.getValue()
                        .getCameraTypeFeatureTableListList().iterator();
                while (it.hasNext()) {
                    arrayList.add(initCameraTypeFeatureTable(it.next(), featureTable.getStrPoolList(), key, strPool));
                }
            }
        }
    }

    private static Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> initCameraTypeFeatureTable(
            ProtobufFeatureConfig.CameraTypeFeatureTable cameraTypeFeatureTable, List<String> list, String str,
            String str2) {
        Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> map = new HashMap<>();
        Map<CameraFeatureKey<?>, ProtobufFeatureConfig.Feature> map2 = new HashMap<>();
        for (ProtobufFeatureConfig.Feature feature : cameraTypeFeatureTable.getFeatureListList()) {
            ProtobufFeatureInfoImpl<?> protobufFeatureInfoImplInitFeatureInfo = initFeatureInfo(feature, list, str);
            if (protobufFeatureInfoImplInitFeatureInfo != null) {
                map.put(protobufFeatureInfoImplInitFeatureInfo.getFeatureKey(), protobufFeatureInfoImplInitFeatureInfo);
                if (!feature.getConflictMapMap().isEmpty()) {
                    map2.put(protobufFeatureInfoImplInitFeatureInfo.getFeatureKey(), feature);
                }
            }
        }
        for (Map.Entry<CameraFeatureKey<?>, ProtobufFeatureConfig.Feature> entry : map2.entrySet()) {
            ProtobufFeatureInfoInterface protobufFeatureInfoInterface = (ProtobufFeatureInfoInterface) map
                    .get(entry.getKey());
            Map<ConflictTargetValue<?>, List<ConflictFeature<?>>> mapInitConflictMap = initConflictMap(
                    entry.getValue().getConflictMapMap(), list,
                    protobufFeatureInfoInterface.getFeatureKey(), str, str2);
            if (protobufFeatureInfoInterface instanceof ProtobufFeatureInfoImpl) {
                ((ProtobufFeatureInfoImpl) protobufFeatureInfoInterface).setConflictMap(mapInitConflictMap);
            }
        }
        return map;
    }

    @NonNull
    private static ProtobufFeatureConfigureImpl initFeatureConfigure(String str, String str2) {
        Map<String, Map<String, ProtobufFeatureConfigureImpl>> map = sFeatureConfigureMap;
        Map<String, ProtobufFeatureConfigureImpl> map2 = map.get(str);
        if (map2 == null) {
            map2 = new HashMap<>();
            map.put(str, map2);
        }
        ProtobufFeatureConfigureImpl protobufFeatureConfigureImpl = map2.get(str2);
        if (protobufFeatureConfigureImpl != null) {
            return protobufFeatureConfigureImpl;
        }
        ProtobufFeatureConfigureImpl protobufFeatureConfigureImplCreate = ProtobufFeatureConfigureImpl.create(str,
                str2);
        addFeature(str, str2, protobufFeatureConfigureImplCreate);
        map2.put(str2, protobufFeatureConfigureImplCreate);
        return protobufFeatureConfigureImplCreate;
    }

    private static void addFeature(String str, String str2, ProtobufFeatureConfigureImpl protobufFeatureConfigureImpl) {
        Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> map;
        CameraUnitLog.d(TAG, "addFeature, modeName: " + str + ", cameraType: " + str2);
        Map<String, List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>> map2 = sGroupFeatureTable.get(str);
        if (map2 != null) {
            protobufFeatureConfigureImpl.setGroupFeatureTableList(map2.get(str2));
        }
        HashMap map3 = new HashMap();
        Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> map4 = sFeatureTable.get(str);
        if (map4 != null && (map = map4.get(str2)) != null && !map.isEmpty()) {
            map3.putAll(map);
        }
        if (!VENDOR_TAG.equalsIgnoreCase(str)) {
            if (map4 != null && map4.containsKey("common")) {
                for (Map.Entry<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> entry : map4.get("common")
                        .entrySet()) {
                    if (!map3.containsKey(entry.getKey())) {
                        map3.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            Map<String, Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>> map5 = sFeatureTable;
            if (map5.containsKey("common")) {
                Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> map6 = map5.get("common");
                if (map6.containsKey(str2)) {
                    for (Map.Entry<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> entry2 : map6.get(str2)
                            .entrySet()) {
                        if (!map3.containsKey(entry2.getKey())) {
                            map3.put(entry2.getKey(), entry2.getValue());
                        }
                    }
                }
                if (map6.containsKey("common")) {
                    for (Map.Entry<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> entry3 : map6.get("common")
                            .entrySet()) {
                        if (!map3.containsKey(entry3.getKey())) {
                            map3.put(entry3.getKey(), entry3.getValue());
                        }
                    }
                }
            }
        }
        protobufFeatureConfigureImpl.setFeatureTable(map3);
    }

    @Nullable
    private static ProtobufFeatureInfoImpl<?> initFeatureInfo(ProtobufFeatureConfig.Feature feature, List<String> list,
            String str) {
        String str2 = list.get(feature.getFeatureNameIndex());
        String str3 = list.get(feature.getFeatureKeyNameIndex());
        String str4 = list.get(feature.getFeatureValueRangeIndex());
        String str5 = list.get(feature.getFeatureDefaultValueIndex());
        String str6 = list.get(feature.getEntryTypeIndex());
        String str7 = list.get(feature.getFeatureValueTypeIndex());
        boolean groupConflict = feature.getGroupConflict();
        String lowerCase = TextUtils.isEmpty(str7) ? "String".toLowerCase() : str7;
        CameraFeatureKey<?> cameraFeatureKeyInitFeatureKey = CameraFeatureKeyContainer.initFeatureKey(str3, lowerCase);
        if (cameraFeatureKeyInitFeatureKey == null) {
            return null;
        }
        return new ProtobufFeatureInfoImpl<>(str2, str4, str5, lowerCase, str6, groupConflict,
                cameraFeatureKeyInitFeatureKey);
    }

    @NonNull
    private static Map<ConflictTargetValue<?>, List<ConflictFeature<?>>> initConflictMap(
            Map<Integer, ProtobufFeatureConfig.ConflictFeatureList> map, List<String> list,
            CameraFeatureKey<?> cameraFeatureKey, String str, String str2) {
        if (map.isEmpty()) {
            return Collections.EMPTY_MAP;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map.size());
        for (Map.Entry<Integer, ProtobufFeatureConfig.ConflictFeatureList> entry : map.entrySet()) {
            ConflictTargetValue conflictTargetValue = ValueFactory
                    .getConflictTargetValue(list.get(entry.getKey().intValue()), cameraFeatureKey.getType());
            ProtobufFeatureConfig.ConflictFeatureList value = entry.getValue();
            ArrayList arrayList = new ArrayList(value.getConflictFeaturesCount());
            for (ProtobufFeatureConfig.ConflictFeature conflictFeature : value.getConflictFeaturesList()) {
                String str3 = list.get(conflictFeature.getFeatureNameIndex());
                String str4 = list.get(conflictFeature.getFeatureValueIndex());
                String str5 = list.get(conflictFeature.getFeatureConflictValueIndex());
                CameraFeatureKey<?> cameraFeatureKey2 = CameraFeatureKeyContainer.get(str3);
                if (cameraFeatureKey2 != null) {
                    arrayList.add(new ConflictFeature(cameraFeatureKey2, str4, str5, cameraFeatureKey2.getType()));
                } else {
                    CameraUnitLog.e(TAG, "Conflict feature not config: " + str + FeatureImpl.DELIMITER + str2
                            + FeatureImpl.DELIMITER + str3);
                }
            }
            linkedHashMap.put(conflictTargetValue, arrayList);
        }
        return linkedHashMap;
    }
}
