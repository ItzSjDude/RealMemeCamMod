package com.oplus.ocs.camera.configure;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.configure.ProtobufFeatureConfig;
import com.oplus.ocs.camera.producer.feature.FeatureImpl;
import com.oplus.ocs.camera.producer.feature.FeatureInterface;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class ProtobufParser implements IConfigParser {
    private static final String CONFIG_PATH = "/odm/etc/camera/config/camera_third_party_feature_config.protobuf";
    private static final String TAG = "ProtobufParser";
    private final ProtobufFeatureKeyContainer mFeatureKeyContainer = new ProtobufFeatureKeyContainer();

    public static String getConfigPath() {
        return CONFIG_PATH;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public boolean loadConfigFile(Context context) {
        return false;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public List<String> parseCameraIdList() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public void parseConfigureParameters(HashMap<String, String[]> map, Map<String, String> map2) {
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, String> parseDeviceInfo() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public String parseDngDescription(String str) {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, LinkedHashMap<String, Map<String, String>>> parseFeatureOperationMode() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, LinkedList<String>>>> parseMaxSupportPreviewSize() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, LinkedList<String>>>> parseMaxSupportVideoSize() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, String> parseModeOperationMode() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, List<String>> parseSupportedMode() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, LinkedList<Pair<String, String>>> parseUsecaseInfo() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, String> parseVendorTagInfo() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, String>>> parserCaptureStreamNumberConfig() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public List<String> parserDefaultSupportPreviewSizes() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public List<String> parserDefaultSupportVideoSizes() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, LinkedList<Pair<String, String>>> parserSensorNumberConfig() {
        return null;
    }

    @Override // com.oplus.ocs.camera.configure.IConfigParser
    public Map<String, Map<String, Map<String, FeatureInterface>>> parseModeCameraTypeFeature(List<String> list) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        FileInputStream fileInputStream = null;
        Map<String, Map<String, Map<String, FeatureInterface>>> mapInitCameraFeatureTable = null;

        try {
            CameraUnitLog.traceBeginSection("ProtobufParser.parse");
            fileInputStream = new FileInputStream(CONFIG_PATH);
            ProtobufFeatureConfig.FeatureTable from = ProtobufFeatureConfig.FeatureTable.parseFrom(fileInputStream);
            CameraUnitLog.e(TAG, "protobuf version: " + from.getVersion());
            CameraUnitLog.e(TAG, "protobuf parser cost time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            CameraUnitLog.traceEndSection("ProtobufParser.parse");

            CameraUnitLog.traceBeginSection("ProtobufParser.initFeatureTable");
            mapInitCameraFeatureTable = initCameraFeatureTable(from);
            CameraUnitLog.traceEndSection("ProtobufParser.initFeatureTable");
        } catch (IOException e) {
            CameraUnitLog.e(TAG, "parseModeCameraTypeFeature, parse error!", e);
            e.printStackTrace();
        } catch (Throwable th) {
            CameraUnitLog.e(TAG, "parseModeCameraTypeFeature, unexpected error!", th);
            if (th instanceof RuntimeException) {
                throw (RuntimeException) th;
            }
            throw new RuntimeException(th);
        } finally {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        CameraUnitLog.e(TAG, "initialize cost time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return mapInitCameraFeatureTable;
    }

    private Map<String, Map<String, Map<String, FeatureInterface>>> initCameraFeatureTable(
            ProtobufFeatureConfig.FeatureTable featureTable) {
        ProtobufFeatureConfig.CameraFeatureTable cameraFeatureTable = featureTable.getCameraFeatureTable();
        Map<String, Map<String, Map<String, FeatureInterface>>> map = new HashMap<>();
        if (cameraFeatureTable != null) {
            Map<String, ProtobufFeatureConfig.ModeFeatureTable> modeFeatureTablesMap = cameraFeatureTable
                    .getModeFeatureTablesMap();
            for (Map.Entry<String, ProtobufFeatureConfig.ModeFeatureTable> entry : modeFeatureTablesMap.entrySet()) {
                String key = entry.getKey();
                Map map2 = (Map) map.computeIfAbsent(key, new Function() { // from class:
                                                                           // com.oplus.ocs.camera.configure.ProtobufParser$$ExternalSyntheticLambda1
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ProtobufParser.lambda$initCameraFeatureTable$0((String) obj);
                    }
                });
                CameraUnitLog.d(TAG, "initCameraFeatureTable, modeName: " + key + ", modeTableSize: " + map2.size());
                for (Map.Entry<Integer, ProtobufFeatureConfig.CameraTypeFeatureTable> entry2 : entry.getValue()
                        .getCameraTypeFeatureTablesMap().entrySet()) {
                    String strPool = featureTable.getStrPool(entry2.getKey().intValue());
                    map2.put(strPool,
                            initCameraTypeFeatureTable(entry2.getValue(), featureTable.getStrPoolList(), key, strPool));
                }
            }
        }
        return map;
    }

    /*
     * JADX DEBUG: Can't inline method, not implemented redirect type for insn:
     * 0x0002: CONSTRUCTOR A[MD:():void (c)] (LINE:88) call:
     * java.util.HashMap.<init>():void type: CONSTRUCTOR
     */
    static /* synthetic */ Map lambda$initCameraFeatureTable$0(String str) {
        return new HashMap();
    }

    private Map<String, FeatureInterface> initCameraTypeFeatureTable(
            ProtobufFeatureConfig.CameraTypeFeatureTable cameraTypeFeatureTable, List<String> list, String str,
            String str2) {
        Map<String, FeatureInterface> map = new HashMap<>();
        Map<CameraFeatureKey<?>, ProtobufFeatureConfig.Feature> map2 = new HashMap<>();
        CameraConfigHelper.blockFeatureParameterMapIfNeeded();
        for (ProtobufFeatureConfig.Feature feature : cameraTypeFeatureTable.getFeatureListList()) {
            ConfigFeatureImpl<?> configFeatureImplInitFeatureInfo = initFeatureInfo(feature, list, str);
            if (configFeatureImplInitFeatureInfo != null) {
                map.put(configFeatureImplInitFeatureInfo.getFeatureKey().getName(), configFeatureImplInitFeatureInfo);
                if (!feature.getConflictMapMap().isEmpty()) {
                    map2.put(configFeatureImplInitFeatureInfo.getFeatureKey(), feature);
                }
            }
        }
        for (Map.Entry<CameraFeatureKey<?>, ProtobufFeatureConfig.Feature> entry : map2.entrySet()) {
            String name = entry.getKey().getName();
            ProtobufFeatureInfoImpl protobufFeatureInfoImpl = map.get(name) instanceof ConfigFeatureImpl
                    ? (ConfigFeatureImpl) map.get(name)
                    : null;
            if (protobufFeatureInfoImpl != null) {
                protobufFeatureInfoImpl.setConflictMap(
                        initConflictMap(entry.getValue().getConflictMapMap(), list,
                                protobufFeatureInfoImpl.getFeatureKey(), str, str2));
            }
        }
        return map;
    }

    private Map<ConflictTargetValue<?>, List<ConflictFeature<?>>> initConflictMap(
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
                CameraFeatureKey<?> cameraFeatureKey2 = this.mFeatureKeyContainer.get(str3);
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

    @Nullable
    private ConfigFeatureImpl<?> initFeatureInfo(ProtobufFeatureConfig.Feature feature, List<String> list, String str) {
        final String str2 = list.get(feature.getFeatureNameIndex());
        String str3 = list.get(feature.getFeatureKeyNameIndex());
        String str4 = list.get(feature.getFeatureValueRangeIndex());
        String str5 = list.get(feature.getFeatureDefaultValueIndex());
        String str6 = list.get(feature.getEntryTypeIndex());
        String str7 = list.get(feature.getFeatureValueTypeIndex());
        boolean groupConflict = feature.getGroupConflict();
        String lowerCase = TextUtils.isEmpty(str7) ? "String".toLowerCase() : str7;
        CameraFeatureKey<?> cameraFeatureKeyInitFeatureKey = this.mFeatureKeyContainer.initFeatureKey(str3, lowerCase);
        if (cameraFeatureKeyInitFeatureKey == null) {
            return null;
        }
        final ConfigFeatureImpl<?> configFeatureImpl = new ConfigFeatureImpl<>(str2, str4, str5, lowerCase, str6,
                groupConflict, cameraFeatureKeyInitFeatureKey);
        Optional.ofNullable(CameraConfigHelper.getFeatureOperationMode().get(str)).ifPresent(new Consumer() { // from
                                                                                                              // class:
                                                                                                              // com.oplus.ocs.camera.configure.ProtobufParser$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                configFeatureImpl.setOperationMode((Map) ((Map) obj).get(str2));
            }
        });
        return configFeatureImpl;
    }
}
