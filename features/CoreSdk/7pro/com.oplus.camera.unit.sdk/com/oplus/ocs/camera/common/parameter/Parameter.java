package com.oplus.ocs.camera.common.parameter;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.converter.CustomParameterConverter;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class Parameter {
    private static final String TAG = "Parameter";
    private ConcurrentHashMap<CaptureRequest.Key<?>, ValueWrapper<?>> mAndroidParameterMap;
    private ConcurrentHashMap<Key<?>, ValueWrapper<?>> mCustomParameterMap;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ParameterCategory {
        public static final int CONFIGURE = 3;
        public static final int PREVIEW = 1;
        public static final int PREVIEW_TAKE_PICTURE = 4;
        public static final int TAKE_PICTURE = 2;
        public static final int TAKE_PICTURE_RESULT = 5;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ParameterStage {
        public static final String BEFORE_TAKE_PICTURE = "before_take_picture";
        public static final String CONFIGURE = "configure";
        public static final String START_PREVIEW = "start_preview";
        public static final String START_RECORDING = "start_recording";
        public static final String STOP_PREVIEW = "stop_preview";
        public static final String STOP_RECORDING = "stop_recording";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Parameter(@NonNull ConcurrentHashMap<Key<?>, ValueWrapper<?>> concurrentHashMap, @NonNull ConcurrentHashMap<CaptureRequest.Key<?>, ValueWrapper<?>> concurrentHashMap2) {
        this.mCustomParameterMap = null;
        this.mAndroidParameterMap = null;
        this.mCustomParameterMap = concurrentHashMap;
        this.mAndroidParameterMap = concurrentHashMap2;
    }

    public List<Key<?>> getCustomKeys() {
        if (this.mCustomParameterMap.isEmpty()) {
            return null;
        }
        return new ArrayList(this.mCustomParameterMap.keySet());
    }

    public List<CaptureRequest.Key<?>> getAndroidKeys() {
        if (this.mAndroidParameterMap == null || this.mAndroidParameterMap.size() <= 0) {
            return null;
        }
        return new ArrayList(this.mAndroidParameterMap.keySet());
    }

    public boolean containCustomKey(@NonNull Key<?> key) {
        if (this.mCustomParameterMap.isEmpty()) {
            return false;
        }
        for (Key<?> key2 : this.mCustomParameterMap.keySet()) {
            if (TextUtils.equals(key2.getName(), key.getName())) {
                return true;
            }
        }
        return false;
    }

    public boolean containAndroidKey(@NonNull CaptureRequest.Key<?> key) {
        if (this.mAndroidParameterMap == null || this.mAndroidParameterMap.size() <= 0) {
            return false;
        }
        for (CaptureRequest.Key<?> key2 : this.mAndroidParameterMap.keySet()) {
            if (TextUtils.equals(key2.getName(), key.getName())) {
                return true;
            }
        }
        return false;
    }

    public <T> void set(@NonNull Key<T> key, T t) {
        this.mCustomParameterMap.put(key, new ValueWrapper<>(new Supplier(t)));
    }

    public <T> void set(@NonNull CaptureRequest.Key<T> key, T t) {
        this.mAndroidParameterMap.put(key, new ValueWrapper<>(new Supplier(t)));
    }

    public <T> void remove(@NonNull Key<T> key) {
        this.mCustomParameterMap.remove(key);
    }

    public <T> T get(@NonNull Key<T> key) {
        ValueWrapper<?> valueWrapper = this.mCustomParameterMap.get(key);
        if (valueWrapper != null) {
            return (T) valueWrapper.getValue().get();
        }
        return null;
    }

    public <T> T get(@NonNull CaptureRequest.Key<T> key) {
        ValueWrapper<?> valueWrapper = this.mAndroidParameterMap.get(key);
        if (valueWrapper != null) {
            return (T) valueWrapper.getValue().get();
        }
        return null;
    }

    public void update(CaptureRequest.Builder builder, int i) {
        updateCustomParameter(builder, i);
        updateAndroidParameter(builder);
    }

    private void updateCustomParameter(CaptureRequest.Builder builder, int i) {
        CustomParameterConverter.convert(this.mCustomParameterMap, builder, i);
    }

    private void updateAndroidParameter(CaptureRequest.Builder builder) {
        for (Map.Entry<CaptureRequest.Key<?>, ValueWrapper<?>> entry : this.mAndroidParameterMap.entrySet()) {
            if (!CaptureRequest.JPEG_GPS_LOCATION.equals(entry.getKey())) {
                CameraUnitLog.i(TAG, "updateAndroidParameter, set android parameter, key: " + entry.getKey().getName() + ", value: " + entry.getValue().getValue());
            }
            try {
                builder.set(entry.getKey(), entry.getValue().getValue().get());
            } catch (IllegalArgumentException e) {
                CameraUnitLog.i(TAG, "updateAndroidParameter, error: " + e.getMessage());
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class BaseBuilder {
        private ConcurrentHashMap<CaptureRequest.Key<?>, ValueWrapper<?>> mAndroidParameterMap;
        private ConcurrentHashMap<Key<?>, ValueWrapper<?>> mCustomParameterMap;

        public abstract BaseBuilder set(@NonNull String str, Object obj);

        /* JADX INFO: Access modifiers changed from: package-private */
        public BaseBuilder() {
            this.mCustomParameterMap = null;
            this.mAndroidParameterMap = null;
            this.mCustomParameterMap = new ConcurrentHashMap<>();
            this.mAndroidParameterMap = new ConcurrentHashMap<>();
        }

        public boolean containsKey(@NonNull CaptureRequest.Key<?> key) {
            return this.mAndroidParameterMap.containsKey(key);
        }

        public boolean containsKey(@NonNull Key<?> key) {
            return this.mCustomParameterMap.containsKey(key);
        }

        public <T> BaseBuilder set(@NonNull Key<T> key, T t) {
            this.mCustomParameterMap.put(key, new ValueWrapper<>(new Supplier(t)));
            return this;
        }

        public <T> BaseBuilder set(@NonNull CaptureRequest.Key<T> key, T t) {
            this.mAndroidParameterMap.put(key, new ValueWrapper<>(new Supplier(t)));
            return this;
        }

        public <T> T get(@NonNull Key<T> key) {
            ValueWrapper<?> valueWrapper = this.mCustomParameterMap.get(key);
            if (valueWrapper != null) {
                return (T) valueWrapper.getValue().get();
            }
            return null;
        }

        public <T> T get(@NonNull CaptureRequest.Key<T> key) {
            ValueWrapper<?> valueWrapper = this.mAndroidParameterMap.get(key);
            if (valueWrapper != null) {
                return (T) valueWrapper.getValue().get();
            }
            return null;
        }

        public boolean containCustomKey(@NonNull Key<?> key) {
            if (this.mCustomParameterMap.isEmpty()) {
                return false;
            }
            for (Key<?> key2 : this.mCustomParameterMap.keySet()) {
                if (TextUtils.equals(key2.getName(), key.getName())) {
                    return true;
                }
            }
            return false;
        }

        public void remove(@NonNull Key<?> key) {
            this.mCustomParameterMap.remove(key);
        }

        public <T> void remove(@NonNull CaptureRequest.Key<T> key) {
            this.mAndroidParameterMap.remove(key);
        }

        public BaseBuilder clear() {
            this.mCustomParameterMap.clear();
            this.mAndroidParameterMap.clear();
            return this;
        }

        public Parameter build() {
            return new Parameter(new ConcurrentHashMap(this.mCustomParameterMap), new ConcurrentHashMap(this.mAndroidParameterMap));
        }
    }

    /* loaded from: classes.dex */
    public static final class Key<T> {
        private int mCategory;
        private String mKeyName;
        private Class<T> mType;

        public Key(String str, Class<T> cls, int i) {
            this.mKeyName = null;
            this.mType = null;
            this.mCategory = 0;
            this.mKeyName = str;
            this.mType = cls;
            this.mCategory = i;
        }

        public Class<T> getType() {
            return this.mType;
        }

        public String getName() {
            return this.mKeyName;
        }

        public int getCategory() {
            return this.mCategory;
        }

        public int hashCode() {
            return this.mKeyName.hashCode();
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null) {
                return false;
            }
            return this.mKeyName.equals(((Key) obj).mKeyName);
        }

        public String toString() {
            return "mKeyName: " + this.mKeyName + ", mType: " + this.mType + ", mCategory: " + this.mCategory;
        }
    }

    /* loaded from: classes.dex */
    public static final class ValueWrapper<T> {
        private Supplier<T> mValue;

        ValueWrapper(Supplier<T> supplier) {
            this.mValue = null;
            this.mValue = supplier;
        }

        public Supplier<T> getValue() {
            return this.mValue;
        }
    }

    /* loaded from: classes.dex */
    public static class Supplier<T> {
        private T mValue;

        public Supplier(T t) {
            this.mValue = t;
        }

        public T get() {
            return this.mValue;
        }

        public String toString() {
            if (this.mValue == null) {
                return null;
            }
            if ((this.mValue instanceof int[]) && ((int[]) this.mValue).length > 0) {
                return Arrays.toString((int[]) this.mValue);
            }
            if ((this.mValue instanceof MeteringRectangle[]) && ((MeteringRectangle[]) this.mValue).length > 0) {
                return ((MeteringRectangle[]) this.mValue)[0].toString();
            }
            if ((this.mValue instanceof byte[]) && ((byte[]) this.mValue).length > 0) {
                return Arrays.toString((byte[]) this.mValue);
            }
            if ((this.mValue instanceof float[]) && ((float[]) this.mValue).length > 0) {
                return Arrays.toString((float[]) this.mValue);
            }
            return this.mValue.toString();
        }
    }
}
