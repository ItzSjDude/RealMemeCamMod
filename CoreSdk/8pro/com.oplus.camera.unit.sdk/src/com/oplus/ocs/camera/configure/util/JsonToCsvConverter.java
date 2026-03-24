package com.oplus.ocs.camera.configure.util;

import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.producer.feature.FeatureFactory;
import com.oplus.ocs.camera.producer.feature.FeatureImpl;
import com.oplus.ocs.camera.producer.feature.FeatureInterface;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JsonToCsvConverter {
    private static final char CSV_COL_DELIMITER = ',';
    private static final String FEATURE_RANGE_FORMAT = "[%s~%s]";
    private static final String OUTPUT_FILE = "camera_third_party_feature_config.csv";
    private static final char QUOTE = '\"';
    private static final String TAG = "JsonToCsvConverter";
    private static final String VALUE_TYPE_BOOLEAN = "boolean";
    private static final String VALUE_TYPE_FLOAT = "float";
    private static final String VALUE_TYPE_INT = "int";
    private static final String VALUE_TYPE_STRING = "string";
    private static final String OUTPUT_DIR = ContextHolder.getContext().getExternalCacheDir().getAbsolutePath();
    private static final String FEATURE_TABLE_TITLE = "ModeName,CameraType,FeatureName,SubFeatureName,ValueRange,CategoryIndex,EntryType,ValueType,ConflictMap" + System.lineSeparator();

    public static void convert() {
        Map<String, Map<String, Map<String, FeatureInterface>>> allModeFeatures = FeatureFactory.getAllModeFeatures();
        try {
            File file = new File(OUTPUT_DIR + File.pathSeparator + OUTPUT_FILE);
            if (!file.exists() && !file.createNewFile()) {
                throw new RuntimeException("Csv output file create failed");
            }
            StringBuilder sb = new StringBuilder();
            sb.append(FEATURE_TABLE_TITLE);
            for (Map.Entry<String, Map<String, Map<String, FeatureInterface>>> entry : allModeFeatures.entrySet()) {
                String key = entry.getKey();
                Map<String, Map<String, FeatureInterface>> value = entry.getValue();
                if (value != null) {
                    for (Map.Entry<String, Map<String, FeatureInterface>> entry2 : value.entrySet()) {
                        String key2 = entry2.getKey();
                        Map<String, FeatureInterface> value2 = entry2.getValue();
                        if (value2 != null) {
                            for (Map.Entry<String, FeatureInterface> entry3 : value2.entrySet()) {
                                String key3 = entry3.getKey();
                                if (!(entry3.getValue() instanceof FeatureImpl)) {
                                    throw new RuntimeException("FeatureInterface is not instanceof FeatureImpl");
                                }
                                FeatureImpl featureImpl = (FeatureImpl) entry3.getValue();
                                if (featureImpl != null) {
                                    if (CameraConfigHelper.getFeatureMappingNameByParameterName(key3) == null && !featureImpl.isMultiFeature()) {
                                        CameraUnitLog.e(TAG, "convert failed, featureName is null, configKey: " + key3);
                                    } else if (featureImpl.isMultiFeature()) {
                                        for (Map.Entry<String, FeatureImpl> entry4 : featureImpl.getSubFeature().entrySet()) {
                                            if (entry4.getValue() != null) {
                                                generateCsvContent(sb, key, key2, entry4.getValue());
                                            }
                                        }
                                    } else {
                                        generateCsvContent(sb, key, key2, featureImpl);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), StandardCharsets.UTF_8));
            try {
                bufferedWriter.write(sb.toString());
                bufferedWriter.close();
                CameraUnitLog.i(TAG, "New csv file create finished, output directory: " + OUTPUT_DIR);
            } finally {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void generateCsvContent(final StringBuilder sb, String str, String str2, FeatureImpl featureImpl) {
        String featureName = featureImpl.getFeatureName();
        sb.append(str);
        sb.append(CSV_COL_DELIMITER);
        sb.append(str2);
        sb.append(CSV_COL_DELIMITER);
        sb.append(featureName);
        sb.append(CSV_COL_DELIMITER);
        sb.append(CSV_COL_DELIMITER);
        sb.append(QUOTE);
        sb.append(getFeatureValueRange(featureImpl.getSupportValues(), featureImpl.isSupportRange()));
        sb.append(QUOTE);
        sb.append(CSV_COL_DELIMITER);
        sb.append(getCategoryIndex(featureName));
        sb.append(CSV_COL_DELIMITER);
        sb.append(CSV_COL_DELIMITER);
        Optional.ofNullable(CameraConfigHelper.getConfigureParameterMapping().get(featureName)).ifPresent(new Consumer() { // from class: com.oplus.ocs.camera.configure.util.JsonToCsvConverter$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                sb.append(JsonToCsvConverter.convertValueType(((String[]) obj)[1]));
            }
        });
        sb.append(CSV_COL_DELIMITER);
        setConflictJson(sb, featureImpl);
        sb.append(System.lineSeparator());
    }

    private static String getCategoryIndex(String str) {
        String[] strArr = CameraConfigHelper.getConfigureParameterMapping().get(str);
        return strArr == null ? "" : strArr[2];
    }

    private static String getFeatureValueRange(List<String> list, boolean z) {
        return !z ? list.toString().replace(" ", "") : String.format(FEATURE_RANGE_FORMAT, list.get(0), list.get(1));
    }

    private static String convertValueType(String str) {
        return "String".equals(str) ? VALUE_TYPE_STRING : "Float".equals(str) ? VALUE_TYPE_FLOAT : "Integer".equals(str) ? VALUE_TYPE_INT : "Boolean".equals(str) ? VALUE_TYPE_BOOLEAN : str;
    }

    private static void setConflictJson(StringBuilder sb, FeatureImpl featureImpl) {
        Map<String, Map<String, List<String>>> conflictFeatureValues = featureImpl.getConflictFeatureValues();
        if (conflictFeatureValues.isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, Map<String, List<String>>> entry : conflictFeatureValues.entrySet()) {
                String key = entry.getKey();
                Map<String, List<String>> value = entry.getValue();
                if (value != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, List<String>> entry2 : value.entrySet()) {
                        jSONObject2.put(String.format("%s/%s", entry2.getKey(), entry2.getValue().toString().replace(" ", "")), "");
                    }
                    jSONObject.put(key, jSONObject2);
                }
            }
            String strReplace = jSONObject.toString(2).replace("\\/", FeatureImpl.DELIMITER).replace("\"", "\"\"");
            sb.append(QUOTE);
            sb.append(strReplace);
            sb.append(QUOTE);
            sb.append(CSV_COL_DELIMITER);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
