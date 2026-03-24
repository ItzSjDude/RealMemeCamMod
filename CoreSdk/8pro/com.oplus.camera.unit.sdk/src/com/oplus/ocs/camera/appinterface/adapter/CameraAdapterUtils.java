package com.oplus.ocs.camera.appinterface.adapter;

import android.content.Context;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.configure.ProtobufConfigureHelper;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.update.UpdateHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class CameraAdapterUtils {
    private static final String TAG = "CameraAdapterUtils";

    public static void initConfigData() {
        ApsUtils.initConfigData(getConfigData(ContextHolder.getContext()), 0);
    }

    public static void initConfigData(Context context) {
        ApsUtils.initConfigData(getConfigData(context), 0);
    }

    @Nullable
    private static String getConfigData(Context context) {
        String str = ApsUtils.CONFIG_JSON_PATH + ApsUtils.VENDOR_TAG_CONFIG_NAME;
        if (1 == ProtobufConfigureHelper.getConfigParseVersion()) {
            return UpdateHelper.getValidConfigData(context, str);
        }
        return null;
    }

    public static String getVendorTagConfig(String str) {
        return CameraConfigHelper.getConfigValue(str);
    }

    public static boolean setVendorTagConfigRus(String str, String str2) {
        return CameraConfigHelper.setVendorTagConfigRus(str, str2);
    }

    public static void setAlgoSwitch(HashMap<String, String> map) {
        ApsUtils.setAlgoSwitch(map);
    }

    public static void setSimulationMode(int i) {
        ApsUtils.setSimulationMode(i);
    }

    public static void setSimulationTimes(int i) {
        ApsUtils.setSimulationTimes(i);
    }

    public static void setSimulationCaseId(String str) {
        ApsUtils.setSimulationCaseId(str);
    }
}
