package system.ext.loader.core;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes5.dex */
public class ExtLoader {
    private static final String TAG = "ExtLoader";
    private static final boolean DEFAULT_DEBUG_DUMMY = false;
    private static final boolean DEFAULT_DEBUG_CREATE = false;

    static {
        Log.d(TAG, "DEFAULT_DEBUG_DUMMY=false, DEFAULT_DEBUG_CREATE=false");
    }

    public static <T> T load(Class<T> cls) {
        return (T) load(cls, false);
    }

    public static <T> T load(Class<T> cls, boolean z) {
        return (T) ExtDummy.createDummyExt(cls, z);
    }

    public static <T> ExtBuilder<T> type(Class<T> extClass) {
        return new ExtBuilder().type(extClass);
    }

    public static class ExtBuilder<T> {
        private Object mBase;
        private boolean mDebugCreate;
        private boolean mDebugDummy;
        private Class<T> mExtClass;
        private boolean mHasDummyExt;

        private ExtBuilder() {
            this.mHasDummyExt = true;
            this.mDebugDummy = ExtLoader.DEFAULT_DEBUG_DUMMY;
            this.mDebugCreate = ExtLoader.DEFAULT_DEBUG_CREATE;
        }

        public ExtBuilder<T> type(Class<T> extClass) {
            this.mExtClass = extClass;
            return this;
        }

        public ExtBuilder<T> base(Object base) {
            this.mBase = base;
            return this;
        }

        public ExtBuilder<T> enableDebugCreate() {
            this.mDebugCreate = true;
            return this;
        }

        public ExtBuilder<T> disableDebugCreate() {
            this.mDebugCreate = false;
            return this;
        }

        public ExtBuilder<T> enableDebugDummy() {
            this.mDebugDummy = true;
            return this;
        }

        public ExtBuilder<T> disableDebugDummy() {
            this.mDebugDummy = false;
            return this;
        }

        public ExtBuilder<T> enableDummyExt() {
            this.mHasDummyExt = true;
            return this;
        }

        public ExtBuilder<T> disableDummyExt() {
            this.mHasDummyExt = false;
            return this;
        }

        /* JADX WARN: Type inference failed for: r1v13, types: [T, java.lang.Object] */
        public T create() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            ExtCreator ext = ExtRegistry.getExt(this.mExtClass);
            if (ext != null) {
                log(this.mDebugCreate, this.mExtClass, "createExtWith");
                return ext.createExtWith(this.mBase);
            }
            if (ExtRegistry.size() == 0) {
                try {
                    Class.forName("com.android.internal.os.RuntimeInitExtImpl").getMethod("preload", ClassLoader.class).invoke(null, getClass().getClassLoader());
                } catch (Exception e) {
                    Log.e(ExtLoader.TAG, "invoke RuntimeInitExtImpl fail", e);
                }
                if (ExtRegistry.size() > 0) {
                    return create();
                }
            }
            if (this.mHasDummyExt) {
                log(this.mDebugDummy, this.mExtClass, "createDummyExt");
                return (T) ExtDummy.createDummyExt(this.mExtClass, this.mDebugDummy);
            }
            log(true, this.mExtClass, "create null");
            return null;
        }

        private void log(boolean debug, Class<?> extClass, String msg) {
            if (debug) {
                Log.d(ExtLoader.TAG, msg + " : " + extClass);
            }
        }
    }
}
