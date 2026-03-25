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

/* JADX INFO: loaded from: classes.dex */
public class OperationModeDecision {
    private static final String MODE_OPERATION_BEGINNING = "8";
    private static final String TAG = "OperationModeDecision";
    private static final int VEX_VALUE = 16;

    public static void updateOperationMode(SdkCameraDeviceConfig sdkCameraDeviceConfig,
            CameraSessionEntity cameraSessionEntity, @NonNull Map<String, FeatureInterface> map) {
        String modeName = sdkCameraDeviceConfig.getModeName();
        String str = CameraConfigHelper.getModeOperationModeMap().get(modeName);
        String strCalculateOperationMode = parserFeatureOperationMode(sdkCameraDeviceConfig, map);
        CameraUnitLog.d(TAG, "updateOperationMode, modeName: " + modeName + ", modeOperationMode: " + str
                + ", featureOperationMode: " + strCalculateOperationMode);
        if (strCalculateOperationMode == null || (!strCalculateOperationMode.startsWith(MODE_OPERATION_BEGINNING)
                && 1 != Integer.parseInt(strCalculateOperationMode, 16))) {
            strCalculateOperationMode = calculateOperationMode(str, strCalculateOperationMode);
        }
        CameraUnitLog.i(TAG, "updateOperationMode, the last Value, modeOperationMode: " + strCalculateOperationMode);
        if (strCalculateOperationMode != null) {
            cameraSessionEntity.setOperationMode(strCalculateOperationMode);
        }
    }

    public static boolean isFeatureConfigLegal(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig,
            Map<String, FeatureInterface> map) {
        FeatureInterface featureInterface;
        Parameter configureParameter = sdkCameraDeviceConfig.getConfigureParameter();
        if (configureParameter.getCustomKeys() == null) {
            CameraUnitLog.w(TAG, "isFeatureConfigLegal, config.getConfigureParameter().getCustomKeys() is null");
            return true;
        }
        CameraUnitLog.d(TAG, "isFeatureConfigLegal, featureMap: " + map);
        for (Parameter.Key<?> key : configureParameter.getCustomKeys()) {
            String name = key.getName();
            if (name != null && map != null && (featureInterface = getFeatureInterface(map, name)) != null) {
                String str = (String) configureParameter.get(key);
                if (ConfigureParameter.VIDEO_FPS.getName().equals(key.getName())
                        && configureParameter.get(ConfigureParameter.VIDEO_DYNAMIC_FPS) != null) {
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
                boolean zIsFeatureValueLegal = featureInterface.isFeatureValueLegal(name, str);
                boolean zIsFeatureConflictLegal = featureInterface.isFeatureConflictLegal(sdkCameraDeviceConfig, name,
                        str);
                if (!zIsFeatureValueLegal || !zIsFeatureConflictLegal) {
                    CameraUnitLog.e(TAG,
                            "isFeatureConfigLegal, featureName: " + name + " isValueLegal: " + zIsFeatureValueLegal
                                    + ", isFeatureConflictLegal: " + zIsFeatureConflictLegal
                                    + ", so don't set operation mode value");
                    return false;
                }
            }
        }
        return true;
    }

    private static String parserFeatureOperationMode(SdkCameraDeviceConfig sdkCameraDeviceConfig,
            Map<String, FeatureInterface> map) {
        Set<String> setKeySet = null;
        if (sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys() == null || map == null) {
            return null;
        }
        if (CameraConfigHelper.getFeatureOperationMode().get(sdkCameraDeviceConfig.getModeName()) != null) {
            setKeySet = CameraConfigHelper.getFeatureOperationMode().get(sdkCameraDeviceConfig.getModeName()).keySet();
            CameraUnitLog.d(TAG, "parserFeatureOperationMode, featureOperationPriority: " + setKeySet);
        }
        String featureOperationPriority = parseFeatureOperationPriority(setKeySet, sdkCameraDeviceConfig, map);
        if (featureOperationPriority == null) {
            Iterator<Parameter.Key<?>> it = sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys().iterator();
            while (it.hasNext() && (featureOperationPriority = getFeatureOperationMode(sdkCameraDeviceConfig, it.next(),
                    map)) == null) {
            }
        }
        CameraUnitLog.d(TAG, "parserFeatureOperationMode, featureOperationMode: " + featureOperationPriority);
        return featureOperationPriority;
    }

    private static String parseFeatureOperationPriority(Set<String> set, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            Map<String, FeatureInterface> map) {
        String featureOperationMode;
        if (set == null) {
            return null;
        }
        for (String str : set) {
            for (Parameter.Key<?> key : sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys()) {
                if (str.equals(key.getName())
                        && (featureOperationMode = getFeatureOperationMode(sdkCameraDeviceConfig, key, map)) != null) {
                    return featureOperationMode;
                }
            }
        }
        return null;
    }

    private static String getFeatureOperationMode(SdkCameraDeviceConfig sdkCameraDeviceConfig, Parameter.Key<?> key,
            Map<String, FeatureInterface> map) {
        FeatureInterface featureInterface;
        String name = key.getName();
        if (name == null || (featureInterface = getFeatureInterface(map, name)) == null) {
            return null;
        }
        String operationMode = featureInterface
                .getOperationMode(sdkCameraDeviceConfig.getConfigureParameter().get(key));
        CameraUnitLog.v(TAG, "getFeatureOperationMode, mappingName: " + name + ", configKeyMode: " + operationMode);
        return operationMode;
    }

    private static String calculateOperationMode(String str, String str2) {
        return (str == null || str.isEmpty()) ? str2
                : (str2 == null || str2.isEmpty()) ? str
                        : Integer.toHexString(
                                Integer.valueOf(str, 16).intValue() | Integer.valueOf(str2, 16).intValue());
    }

    private static FeatureInterface getFeatureInterface(@NonNull Map<String, FeatureInterface> map, String str) {
        return map.get(FeatureFactory.getFeatureNameByKeyName(str));
    }
}
