package com.oplus.ocs.camera.configure;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
public class CameraFeatureKeyContainer {
    private static final String TAG = "CameraFeatureKeyContainer";
    public static final Map<String, CameraFeatureKey<?>> sKeyMap;
    private static final Map<String, Class<?>> sValueTypeMap;

    static {
        HashMap hashMap = new HashMap();
        sValueTypeMap = hashMap;
        hashMap.put("String".toLowerCase(), String.class);
        hashMap.put("Byte".toLowerCase(), Byte.class);
        hashMap.put("Integer".toLowerCase(), Integer.class);
        hashMap.put("int", Integer.class);
        hashMap.put("Long".toLowerCase(), Long.class);
        hashMap.put("Short".toLowerCase(), Short.class);
        hashMap.put("Boolean".toLowerCase(), Boolean.class);
        hashMap.put("Float".toLowerCase(), Float.class);
        hashMap.put("Size".toLowerCase(), Size.class);
        sKeyMap = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public static CameraFeatureKey<?> initFeatureKey(@NonNull String str, String str2) {
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
