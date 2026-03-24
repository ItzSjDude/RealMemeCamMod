package com.oplus.ocs.camera.common.parameter.apsadapter;

import android.hardware.camera2.params.MeteringRectangle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class ApsBaseParameter {
    private static final String TAG = "ApsBaseParameter";
    private ConcurrentHashMap<String, ValueWrapper<?>> mCustomParameterMap;

    public ApsBaseParameter() {
        this.mCustomParameterMap = null;
        this.mCustomParameterMap = new ConcurrentHashMap<>();
    }

    public ApsBaseParameter(ConcurrentHashMap<String, ValueWrapper<?>> concurrentHashMap) {
        this.mCustomParameterMap = concurrentHashMap;
    }

    public <T> void set(@NonNull Key<T> key, T t) {
        if (t != null) {
            this.mCustomParameterMap.put(((Key) key).mKeyName, new ValueWrapper<>(new Supplier(t)));
        }
    }

    public void set(ConcurrentHashMap<String, ValueWrapper<?>> concurrentHashMap) {
        this.mCustomParameterMap.putAll(concurrentHashMap);
    }

    public <T> T get(@NonNull String str, Class<T> cls) {
        return (T) get(str, cls, null);
    }

    public <T> T get(@NonNull String str, Class<T> cls, T t) {
        ValueWrapper<?> valueWrapper = this.mCustomParameterMap.get(str);
        Object obj = valueWrapper != null ? valueWrapper.getValue().get() : t;
        return obj == null ? t : (T) obj;
    }

    public boolean containsKey(@NonNull String str) {
        return this.mCustomParameterMap.containsKey(str);
    }

    public void remove(@NonNull String str) {
        this.mCustomParameterMap.remove(str);
    }

    public void clear() {
        this.mCustomParameterMap.clear();
    }

    /* loaded from: classes.dex */
    public static final class Key<T> {
        private T mDefault;
        private String mKeyName;
        private Class<T> mType;

        public Key(String str, Class<T> cls) {
            this.mDefault = null;
            this.mKeyName = str;
            this.mType = cls;
        }

        public Key(String str, Class<T> cls, T t) {
            this.mKeyName = str;
            this.mType = cls;
            this.mDefault = t;
        }

        public Class<T> getType() {
            return this.mType;
        }

        public String getName() {
            return this.mKeyName;
        }

        public T getDefault() {
            return this.mDefault;
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
            return "mKeyName: " + this.mKeyName + ", mType: " + this.mType;
        }
    }

    /* loaded from: classes.dex */
    public static final class ValueWrapper<T> {
        private Supplier<T> mValue;

        public ValueWrapper(Supplier<T> supplier) {
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
            T t = this.mValue;
            if (t == null) {
                return null;
            }
            if ((t instanceof int[]) && ((int[]) t).length > 0) {
                return Arrays.toString((int[]) t);
            }
            if ((t instanceof MeteringRectangle[]) && ((MeteringRectangle[]) t).length > 0) {
                return ((MeteringRectangle[]) t)[0].toString();
            }
            if ((t instanceof byte[]) && ((byte[]) t).length > 0) {
                return Arrays.toString((byte[]) t);
            }
            if ((t instanceof float[]) && ((float[]) t).length > 0) {
                return Arrays.toString((float[]) t);
            }
            return t.toString();
        }
    }
}
