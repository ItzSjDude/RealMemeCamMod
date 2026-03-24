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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
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
        synchronized (CameraConfigure.class) {
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
            parseFromProtobuf(ContextHolder.getContext());
        }
    }

    public static synchronized void initialize(Context context) {
        synchronized (CameraConfigure.class) {
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
            parseFromProtobuf(context);
        }
    }

    private static void generateVendorTagMap(byte[] bArr) {
        String[] split;
        long currentTimeMillis = System.currentTimeMillis();
        sVendorTagMap.clear();
        for (String str : new String(bArr, StandardCharsets.UTF_8).split(VENDOR_TAG_SEPARATOR)) {
            String[] split2 = str.split(COLON);
            if (split2.length > 1) {
                sVendorTagMap.put(split2[0], split2[1]);
            } else {
                sVendorTagMap.put(split2[0], "");
            }
        }
        CameraUnitLog.d(TAG, "getVendorTagMap, size: " + split.length + ", cost time: " + (System.currentTimeMillis() - currentTimeMillis));
    }

    private static void parseFromProtobuf(Context context) {
        CameraUnitLog.traceBeginSection("parseFromProtobuf");
        long currentTimeMillis = System.currentTimeMillis();
        int configParseVersion = ProtobufConfigureHelper.getConfigParseVersion();
        if (configParseVersion == 1) {
            PROJECT_FEATURES_READY_CONDITION.open();
            decodeConfigFileVersion1();
        } else if (configParseVersion == 2) {
            decodeConfigFileVersion2(context);
        }
        sbInit = true;
        CameraUnitLog.e(TAG, "initialize, configParseVersion: " + ProtobufConfigureHelper.getConfigParseVersion() + ", cost time: " + (System.currentTimeMillis() - currentTimeMillis));
        CameraUnitLog.traceEndSection("parseFromProtobuf");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x003f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void decodeConfigFileVersion1() {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L21
            java.lang.String r2 = "/odm/etc/camera/config/camera_unit_feature_config.protobuf"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L21
            int r0 = r1.available()     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L3c
            byte[] r0 = new byte[r0]     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L3c
            r1.read(r0)     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L3c
            parseProtobufFeature(r0)     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L3c
            r1.close()     // Catch: java.io.IOException -> L18
            goto L36
        L18:
            r0 = move-exception
            goto L33
        L1a:
            r0 = move-exception
            goto L25
        L1c:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L3d
        L21:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L25:
            java.lang.String r2 = "CameraConfigure"
            java.lang.String r3 = "decodeConfigFileVersion1, parse error!"
            com.oplus.ocs.camera.common.util.CameraUnitLog.e(r2, r3, r0)     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L36
            r1.close()     // Catch: java.io.IOException -> L32
            goto L36
        L32:
            r0 = move-exception
        L33:
            r0.printStackTrace()
        L36:
            android.os.ConditionVariable r0 = com.oplus.ocs.camera.configure.CameraConfigure.FEATURE_CONFIG_CONDITION
            r0.open()
            return
        L3c:
            r0 = move-exception
        L3d:
            if (r1 == 0) goto L47
            r1.close()     // Catch: java.io.IOException -> L43
            goto L47
        L43:
            r1 = move-exception
            r1.printStackTrace()
        L47:
            android.os.ConditionVariable r1 = com.oplus.ocs.camera.configure.CameraConfigure.FEATURE_CONFIG_CONDITION
            r1.open()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.CameraConfigure.decodeConfigFileVersion1():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004b A[Catch: all -> 0x00c4, IOException -> 0x00c6, TRY_LEAVE, TryCatch #1 {all -> 0x00c4, blocks: (B:3:0x0005, B:5:0x000c, B:7:0x0029, B:9:0x0030, B:22:0x0075, B:24:0x007c, B:26:0x008c, B:32:0x00a7, B:33:0x00ab, B:12:0x004b, B:47:0x00c7), top: B:64:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c A[Catch: all -> 0x00c4, IOException -> 0x00c6, TryCatch #1 {all -> 0x00c4, blocks: (B:3:0x0005, B:5:0x000c, B:7:0x0029, B:9:0x0030, B:22:0x0075, B:24:0x007c, B:26:0x008c, B:32:0x00a7, B:33:0x00ab, B:12:0x004b, B:47:0x00c7), top: B:64:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void decodeConfigFileVersion2(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.CameraConfigure.decodeConfigFileVersion2(android.content.Context):void");
    }

    private static void parseProtobufFeature(byte[] bArr) throws InvalidProtocolBufferException {
        long currentTimeMillis = System.currentTimeMillis();
        CameraUnitLog.traceBeginSection("FeatureApi.parse");
        ProtobufFeatureConfig.FeatureTable parseFrom = ProtobufFeatureConfig.FeatureTable.parseFrom(bArr);
        CameraUnitLog.e(TAG, "protobuf version: " + parseFrom.getVersion());
        CameraUnitLog.e(TAG, "protobuf parser cost time: " + (System.currentTimeMillis() - currentTimeMillis));
        CameraUnitLog.traceEndSection("FeatureApi.parse");
        CameraUnitLog.traceBeginSection("FeatureApi.initFeatureTable");
        long currentTimeMillis2 = System.currentTimeMillis();
        initFeatureTable(parseFrom);
        CameraUnitLog.d(TAG, "initFeatureTable cost: " + (System.currentTimeMillis() - currentTimeMillis2));
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
        if (!ProtobufConfigureHelper.isFeatureConfigureFileExist() || 1 == ProtobufConfigureHelper.getConfigParseVersion()) {
            return null;
        }
        PROJECT_FEATURES_READY_CONDITION.block();
        return sVendorTagMap.get(str);
    }

    @Nullable
    public static boolean setProjectSupportFeatureValueRus(String str, String str2) {
        if (!ProtobufConfigureHelper.isFeatureConfigureFileExist() || 1 == ProtobufConfigureHelper.getConfigParseVersion()) {
            return false;
        }
        PROJECT_FEATURES_READY_CONDITION.block();
        sVendorTagMap.put(str, str2);
        return true;
    }

    @Nullable
    public static ProtobufFeatureConfigureInterface getFeatureConfigure(String str, String str2) {
        if (ProtobufConfigureHelper.isFeatureConfigureFileExist()) {
            FEATURE_CONFIG_CONDITION.block();
            Map<String, Map<String, ProtobufFeatureConfigureImpl>> map = sFeatureConfigureMap;
            if (map.containsKey(str) && map.get(str).containsKey(str2)) {
                return map.get(str).get(str2);
            }
            return initFeatureConfigure(str, str2);
        }
        return null;
    }

    private static void initFeatureTable(ProtobufFeatureConfig.FeatureTable featureTable) {
        initCameraFeatureTable(featureTable);
        initCameraGroupFeatureTable(featureTable);
    }

    private static void initCameraFeatureTable(ProtobufFeatureConfig.FeatureTable featureTable) {
        ProtobufFeatureConfig.CameraFeatureTable cameraFeatureTable = featureTable.getCameraFeatureTable();
        if (cameraFeatureTable != null) {
            for (Map.Entry<String, ProtobufFeatureConfig.ModeFeatureTable> entry : cameraFeatureTable.getModeFeatureTablesMap().entrySet()) {
                String key = entry.getKey();
                Map<String, Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>> map = sFeatureTable;
                Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> map2 = map.get(key);
                if (map2 == null) {
                    map2 = new HashMap<>();
                    map.put(key, map2);
                }
                CameraUnitLog.d(TAG, "initCameraFeatureTable, modeName: " + key + ", modeTableSize: " + map2.size());
                for (Map.Entry<Integer, ProtobufFeatureConfig.CameraTypeFeatureTable> entry2 : entry.getValue().getCameraTypeFeatureTablesMap().entrySet()) {
                    String strPool = featureTable.getStrPool(entry2.getKey().intValue());
                    map2.put(strPool, initCameraTypeFeatureTable(entry2.getValue(), featureTable.getStrPoolList(), key, strPool));
                }
            }
        }
    }

    private static void initCameraGroupFeatureTable(ProtobufFeatureConfig.FeatureTable featureTable) {
        ProtobufFeatureConfig.CameraGroupFeatureTable cameraGroupFeatureTable = featureTable.getCameraGroupFeatureTable();
        if (cameraGroupFeatureTable == null) {
            return;
        }
        for (Map.Entry<String, ProtobufFeatureConfig.ModeGroupFeatureTable> entry : cameraGroupFeatureTable.getModeGroupFeatureTablesMap().entrySet()) {
            String key = entry.getKey();
            ProtobufFeatureConfig.ModeGroupFeatureTable value = entry.getValue();
            Map<String, Map<String, List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>>> map = sGroupFeatureTable;
            Map<String, List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>> map2 = map.get(key);
            if (map2 == null) {
                map2 = new HashMap<>();
                map.put(key, map2);
            }
            for (Map.Entry<Integer, ProtobufFeatureConfig.CameraTypeFeatureTableList> entry2 : value.getCameraTypeFeatureTablesMap().entrySet()) {
                String strPool = featureTable.getStrPool(entry2.getKey().intValue());
                List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> list = map2.get(strPool);
                if (list == null) {
                    list = new ArrayList<>();
                    map2.put(strPool, list);
                }
                for (ProtobufFeatureConfig.CameraTypeFeatureTable cameraTypeFeatureTable : entry2.getValue().getCameraTypeFeatureTableListList()) {
                    list.add(initCameraTypeFeatureTable(cameraTypeFeatureTable, featureTable.getStrPoolList(), key, strPool));
                }
            }
        }
    }

    private static Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> initCameraTypeFeatureTable(ProtobufFeatureConfig.CameraTypeFeatureTable cameraTypeFeatureTable, List<String> list, String str, String str2) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (ProtobufFeatureConfig.Feature feature : cameraTypeFeatureTable.getFeatureListList()) {
            ProtobufFeatureInfoImpl<?> initFeatureInfo = initFeatureInfo(feature, list, str);
            if (initFeatureInfo != null) {
                hashMap.put(initFeatureInfo.getFeatureKey(), initFeatureInfo);
                if (!feature.getConflictMapMap().isEmpty()) {
                    hashMap2.put(initFeatureInfo.getFeatureKey(), feature);
                }
            }
        }
        for (Map.Entry entry : hashMap2.entrySet()) {
            ProtobufFeatureInfoInterface protobufFeatureInfoInterface = (ProtobufFeatureInfoInterface) hashMap.get(entry.getKey());
            Map<ConflictTargetValue<?>, List<ConflictFeature<?>>> initConflictMap = initConflictMap(((ProtobufFeatureConfig.Feature) entry.getValue()).getConflictMapMap(), list, protobufFeatureInfoInterface.getFeatureKey(), str, str2);
            if (protobufFeatureInfoInterface instanceof ProtobufFeatureInfoImpl) {
                ((ProtobufFeatureInfoImpl) protobufFeatureInfoInterface).setConflictMap(initConflictMap);
            }
        }
        return hashMap;
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
        if (protobufFeatureConfigureImpl == null) {
            ProtobufFeatureConfigureImpl create = ProtobufFeatureConfigureImpl.create(str, str2);
            addFeature(str, str2, create);
            map2.put(str2, create);
            return create;
        }
        return protobufFeatureConfigureImpl;
    }

    private static void addFeature(String str, String str2, ProtobufFeatureConfigureImpl protobufFeatureConfigureImpl) {
        Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> map;
        CameraUnitLog.d(TAG, "addFeature, modeName: " + str + ", cameraType: " + str2);
        Map<String, List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>> map2 = sGroupFeatureTable.get(str);
        if (map2 != null) {
            protobufFeatureConfigureImpl.setGroupFeatureTableList(map2.get(str2));
        }
        HashMap hashMap = new HashMap();
        Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> map3 = sFeatureTable.get(str);
        if (map3 != null && (map = map3.get(str2)) != null && !map.isEmpty()) {
            hashMap.putAll(map);
        }
        if (!VENDOR_TAG.equalsIgnoreCase(str)) {
            if (map3 != null && map3.containsKey("common")) {
                for (Map.Entry<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> entry : map3.get("common").entrySet()) {
                    if (!hashMap.containsKey(entry.getKey())) {
                        hashMap.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            Map<String, Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>>> map4 = sFeatureTable;
            if (map4.containsKey("common")) {
                Map<String, Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> map5 = map4.get("common");
                if (map5.containsKey(str2)) {
                    for (Map.Entry<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> entry2 : map5.get(str2).entrySet()) {
                        if (!hashMap.containsKey(entry2.getKey())) {
                            hashMap.put(entry2.getKey(), entry2.getValue());
                        }
                    }
                }
                if (map5.containsKey("common")) {
                    for (Map.Entry<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> entry3 : map5.get("common").entrySet()) {
                        if (!hashMap.containsKey(entry3.getKey())) {
                            hashMap.put(entry3.getKey(), entry3.getValue());
                        }
                    }
                }
            }
        }
        protobufFeatureConfigureImpl.setFeatureTable(hashMap);
    }

    @Nullable
    private static ProtobufFeatureInfoImpl<?> initFeatureInfo(ProtobufFeatureConfig.Feature feature, List<String> list, String str) {
        String str2 = list.get(feature.getFeatureNameIndex());
        String str3 = list.get(feature.getFeatureKeyNameIndex());
        String str4 = list.get(feature.getFeatureValueRangeIndex());
        String str5 = list.get(feature.getFeatureDefaultValueIndex());
        String str6 = list.get(feature.getEntryTypeIndex());
        String str7 = list.get(feature.getFeatureValueTypeIndex());
        boolean groupConflict = feature.getGroupConflict();
        String lowerCase = TextUtils.isEmpty(str7) ? "String".toLowerCase() : str7;
        CameraFeatureKey<?> initFeatureKey = CameraFeatureKeyContainer.initFeatureKey(str3, lowerCase);
        if (initFeatureKey == null) {
            return null;
        }
        return new ProtobufFeatureInfoImpl<>(str2, str4, str5, lowerCase, str6, groupConflict, initFeatureKey);
    }

    @NonNull
    private static Map<ConflictTargetValue<?>, List<ConflictFeature<?>>> initConflictMap(Map<Integer, ProtobufFeatureConfig.ConflictFeatureList> map, List<String> list, CameraFeatureKey<?> cameraFeatureKey, String str, String str2) {
        if (map.isEmpty()) {
            return Collections.EMPTY_MAP;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map.size());
        for (Map.Entry<Integer, ProtobufFeatureConfig.ConflictFeatureList> entry : map.entrySet()) {
            ConflictTargetValue conflictTargetValue = ValueFactory.getConflictTargetValue(list.get(entry.getKey().intValue()), cameraFeatureKey.getType());
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
                    CameraUnitLog.e(TAG, "Conflict feature not config: " + str + FeatureImpl.DELIMITER + str2 + FeatureImpl.DELIMITER + str3);
                }
            }
            linkedHashMap.put(conflictTargetValue, arrayList);
        }
        return linkedHashMap;
    }
}
