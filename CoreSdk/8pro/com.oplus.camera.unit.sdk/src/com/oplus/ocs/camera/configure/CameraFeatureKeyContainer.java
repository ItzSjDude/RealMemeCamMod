package com.oplus.ocs.camera.configure;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class CameraFeatureKeyContainer {
    private static final String TAG = "CameraFeatureKeyContainer";
    public static final Map<String, CameraFeatureKey<?>> sKeyMap;
    private static final Map<String, Class<?>> sValueTypeMap;

    static {
        HashMap map = new HashMap();
        sValueTypeMap = map;
        map.put("String".toLowerCase(), String.class);
        map.put("Byte".toLowerCase(), Byte.class);
        map.put("Integer".toLowerCase(), Integer.class);
        map.put("int", Integer.class);
        map.put("Long".toLowerCase(), Long.class);
        map.put("Short".toLowerCase(), Short.class);
        map.put("Boolean".toLowerCase(), Boolean.class);
        map.put("Float".toLowerCase(), Float.class);
        map.put("Size".toLowerCase(), Size.class);
        sKeyMap = new HashMap();
    }

    @Nullable
    protected static CameraFeatureKey<?> initFeatureKey(@NonNull String str, String str2) {
        Map<String, CameraFeatureKey<?>> map = sKeyMap;
        if (map.containsKey(str)) {
            return (CameraFeatureKey) Objects.requireNonNull(map.get(str));
        }
        Class<?> cls = sValueTypeMap.get(str2.toLowerCase());
        if (cls == null) {
            CameraUnitLog.e(TAG, str + " has config not predefined value type: " + str2);
            return null;
        }
        CameraFeatureKey<?> cameraFeatureKey = new CameraFeatureKey<>(str, cls);
        map.put(str, cameraFeatureKey);
        return cameraFeatureKey;
    }

    @Nullable
    public static CameraFeatureKey<?> get(String str) {
        return sKeyMap.get(str);
    }
}
