package com.oplus.ocs.camera.producer.decision;

import android.util.Range;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.feature.FeatureFactory;
import com.oplus.ocs.camera.producer.feature.FeatureInterface;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class OperationModeDecision {
    private static final String MODE_OPERATION_BEGINNING = "8";
    private static final String TAG = "OperationModeDecision";
    private static final int VEX_VALUE = 16;

    public static void updateOperationMode(SdkCameraDeviceConfig sdkCameraDeviceConfig, CameraSessionEntity cameraSessionEntity, @NonNull Map<String, FeatureInterface> map) {
        String modeName = sdkCameraDeviceConfig.getModeName();
        String str = CameraConfigHelper.getModeOperationModeMap().get(modeName);
        String parserFeatureOperationMode = parserFeatureOperationMode(sdkCameraDeviceConfig, map);
        CameraUnitLog.d(TAG, "updateOperationMode, modeName: " + modeName + ", modeOperationMode: " + str + ", featureOperationMode: " + parserFeatureOperationMode);
        if (parserFeatureOperationMode == null || (!parserFeatureOperationMode.startsWith(MODE_OPERATION_BEGINNING) && 1 != Integer.parseInt(parserFeatureOperationMode, 16))) {
            parserFeatureOperationMode = calculateOperationMode(str, parserFeatureOperationMode);
        }
        CameraUnitLog.i(TAG, "updateOperationMode, the last Value, modeOperationMode: " + parserFeatureOperationMode);
        if (parserFeatureOperationMode != null) {
            cameraSessionEntity.setOperationMode(parserFeatureOperationMode);
        }
    }

    public static boolean isFeatureConfigLegal(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig, Map<String, FeatureInterface> map) {
        FeatureInterface featureInterface;
        Parameter configureParameter = sdkCameraDeviceConfig.getConfigureParameter();
        if (configureParameter.getCustomKeys() == null) {
            CameraUnitLog.w(TAG, "isFeatureConfigLegal, config.getConfigureParameter().getCustomKeys() is null");
            return true;
        }
        for (Parameter.Key<?> key : configureParameter.getCustomKeys()) {
            String featureMappingNameByParameterName = CameraConfigHelper.getFeatureMappingNameByParameterName(key.getName());
            CameraUnitLog.d(TAG, "isFeatureConfigLegal, key: " + key.getName() + ", featureName: " + featureMappingNameByParameterName + ", featureMap: " + map);
            if (featureMappingNameByParameterName != null && map != null && (featureInterface = getFeatureInterface(map, featureMappingNameByParameterName)) != null) {
                String str = configureParameter.get(key);
                if (ConfigureParameter.VIDEO_FPS.getName().equals(key.getName()) && configureParameter.get(ConfigureParameter.VIDEO_DYNAMIC_FPS) != null) {
                    Range range = (Range) configureParameter.get(ConfigureParameter.VIDEO_DYNAMIC_FPS);
                    if (30 >= ((Integer) range.getUpper()).intValue()) {
                        str = "video_30fps";
                    } else if (60 >= ((Integer) range.getUpper()).intValue()) {
                        str = "video_60fps";
                    } else if (120 >= ((Integer) range.getUpper()).intValue()) {
                        str = "video_120fps";
                    } else if (240 >= ((Integer) range.getUpper()).intValue()) {
                        str = "video_240fps";
                    } else {
                        str = 480 >= ((Integer) range.getUpper()).intValue() ? "video_480fps" : "video_960fps";
                    }
                }
                boolean isFeatureValueLegal = featureInterface.isFeatureValueLegal(featureMappingNameByParameterName, str);
                boolean isFeatureConflictLegal = featureInterface.isFeatureConflictLegal(sdkCameraDeviceConfig, featureMappingNameByParameterName, str);
                if (!isFeatureValueLegal || !isFeatureConflictLegal) {
                    CameraUnitLog.e(TAG, "isFeatureConfigLegal, isValueLegal: " + isFeatureValueLegal + ", isFeatureConflictLegal: " + isFeatureConflictLegal + ", so don't set operation mode value");
                    return false;
                }
            }
        }
        return true;
    }

    private static String parserFeatureOperationMode(SdkCameraDeviceConfig sdkCameraDeviceConfig, Map<String, FeatureInterface> map) {
        Set<String> set = null;
        if (sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys() == null || map == null) {
            return null;
        }
        if (CameraConfigHelper.getFeatureOperationMode().get(sdkCameraDeviceConfig.getModeName()) != null) {
            set = CameraConfigHelper.getFeatureOperationMode().get(sdkCameraDeviceConfig.getModeName()).keySet();
            CameraUnitLog.d(TAG, "parserFeatureOperationMode, featureOperationPriority: " + set);
        }
        String parseFeatureOperationPriority = parseFeatureOperationPriority(set, sdkCameraDeviceConfig, map);
        if (parseFeatureOperationPriority == null) {
            Iterator<Parameter.Key<?>> it = sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys().iterator();
            while (it.hasNext() && (parseFeatureOperationPriority = getFeatureOperationMode(sdkCameraDeviceConfig, it.next(), map)) == null) {
            }
        }
        CameraUnitLog.d(TAG, "parserFeatureOperationMode, featureOperationMode: " + parseFeatureOperationPriority);
        return parseFeatureOperationPriority;
    }

    private static String parseFeatureOperationPriority(Set<String> set, SdkCameraDeviceConfig sdkCameraDeviceConfig, Map<String, FeatureInterface> map) {
        String featureOperationMode;
        if (set == null) {
            return null;
        }
        for (String str : set) {
            for (Parameter.Key<?> key : sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys()) {
                if (str.equals(CameraConfigHelper.getFeatureMappingNameByParameterName(key.getName())) && (featureOperationMode = getFeatureOperationMode(sdkCameraDeviceConfig, key, map)) != null) {
                    return featureOperationMode;
                }
            }
        }
        return null;
    }

    private static String getFeatureOperationMode(SdkCameraDeviceConfig sdkCameraDeviceConfig, Parameter.Key<?> key, Map<String, FeatureInterface> map) {
        FeatureInterface featureInterface;
        String featureMappingNameByParameterName = CameraConfigHelper.getFeatureMappingNameByParameterName(key.getName());
        if (featureMappingNameByParameterName == null || (featureInterface = getFeatureInterface(map, featureMappingNameByParameterName)) == null) {
            return null;
        }
        String operationMode = featureInterface.getOperationMode(sdkCameraDeviceConfig.getConfigureParameter().get(key));
        CameraUnitLog.v(TAG, "getFeatureOperationMode, mappingName: " + featureMappingNameByParameterName + ", configKeyMode: " + operationMode);
        return operationMode;
    }

    private static String calculateOperationMode(String str, String str2) {
        return (str == null || str.isEmpty()) ? str2 : (str2 == null || str2.isEmpty()) ? str : Integer.toHexString(Integer.valueOf(str, 16).intValue() | Integer.valueOf(str2, 16).intValue());
    }

    private static FeatureInterface getFeatureInterface(@NonNull Map<String, FeatureInterface> map, String str) {
        return map.get(FeatureFactory.getFeatureNameByMappingName(str));
    }
}
