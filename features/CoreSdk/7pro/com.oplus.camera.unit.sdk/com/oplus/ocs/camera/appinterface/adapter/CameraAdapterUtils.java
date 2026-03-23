package com.oplus.ocs.camera.appinterface.adapter;

import android.content.Context;
import android.util.Size;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.update.UpdateHelper;
/* loaded from: classes.dex */
public class CameraAdapterUtils {
    private static final String TAG = "CameraAdapterUtils";

    public static void initConfigData() {
        Context context = ContextHolder.getContext();
        ApsUtils.initConfigData(UpdateHelper.tryRusUpdatePath(context, ApsUtils.CONFIG_JSON_PATH + ApsUtils.VENDOR_TAG_CONFIG_NAME), 0);
    }

    public static void initConfigData(Context context) {
        ApsUtils.initConfigData(UpdateHelper.tryRusUpdatePath(context, ApsUtils.CONFIG_JSON_PATH + ApsUtils.VENDOR_TAG_CONFIG_NAME), 0);
    }

    public static String getVendorTagConfig(String str) {
        return ApsUtils.getVendorTagConfig(str);
    }

    public static boolean setVendorTagConfigRus(String str, String str2) {
        return ApsUtils.setVendorTagConfigRus(str, str2);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v23, types: [T, int[]] */
    public static <T> T getConfigValue(CameraConfigBase.Key<T> key, T t) {
        ?? r0;
        try {
            r0 = (T) getVendorTagConfig(key.getName());
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "getConfigValue, key: " + key + ", value: " + getVendorTagConfig(key.getName()));
            e.printStackTrace();
        }
        if (r0 == 0) {
            CameraUnitLog.e(TAG, "getConfigValue, key: " + key + ", value is null!   return defaultValue: " + t);
            return t;
        } else if (Integer.class.equals(key.getType())) {
            return (T) Integer.valueOf((String) r0);
        } else {
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
                if (Size[].class.equals(key.getType())) {
                    return (T) Util.parserSizeLists(r0);
                }
                if (Size.class.equals(key.getType())) {
                    String[] split = r0.toUpperCase().split("X");
                    return split.length == 2 ? (T) new Size(Integer.parseInt(split[0]), Integer.parseInt(split[1])) : t;
                } else if (!int[].class.equals(key.getType())) {
                    CameraUnitLog.e(TAG, "getConfigValue, key: " + key + ", Type isn't support");
                    return t;
                } else {
                    String[] split2 = r0.toUpperCase().split(",");
                    ?? r1 = (T) new int[split2.length];
                    for (int i = 0; i < r1.length; i++) {
                        r1[i] = Integer.parseInt(split2[i]);
                    }
                    return r1;
                }
            }
        }
    }
}
