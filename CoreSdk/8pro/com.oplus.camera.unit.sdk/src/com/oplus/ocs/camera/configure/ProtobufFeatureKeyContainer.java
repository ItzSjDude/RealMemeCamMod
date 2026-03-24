package com.oplus.ocs.camera.configure;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
public class ProtobufFeatureKeyContainer {
    private static final String TAG = "ProtobufFeatureKeyContainer";
    private static final Map<String, Class<?>> sValueTypeMap;
    public final Map<String, CameraFeatureKey<?>> mKeyMap = new HashMap();

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
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public CameraFeatureKey<?> initFeatureKey(@NonNull String str, String str2) {
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
