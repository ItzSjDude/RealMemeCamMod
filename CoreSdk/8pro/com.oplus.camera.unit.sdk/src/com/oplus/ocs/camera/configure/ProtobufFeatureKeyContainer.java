package com.oplus.ocs.camera.configure;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ProtobufFeatureKeyContainer {
    private static final String TAG = "ProtobufFeatureKeyContainer";
    private static final Map<String, Class<?>> sValueTypeMap;
    public final Map<String, CameraFeatureKey<?>> mKeyMap = new HashMap();

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
    }

    @Nullable
    protected CameraFeatureKey<?> initFeatureKey(@NonNull String str, String str2) {
        if (this.mKeyMap.containsKey(str)) {
            return (CameraFeatureKey) Objects.requireNonNull(this.mKeyMap.get(str));
        }
        Class<?> cls = sValueTypeMap.get(str2.toLowerCase());
        if (cls == null) {
            CameraUnitLog.e(TAG, str + " has config not predefined value type: " + str2);
            return null;
        }
        CameraFeatureKey<?> cameraFeatureKey = new CameraFeatureKey<>(str, cls);
        this.mKeyMap.put(str, cameraFeatureKey);
        return cameraFeatureKey;
    }

    @Nullable
    public CameraFeatureKey<?> get(String str) {
        return this.mKeyMap.get(str);
    }
}
