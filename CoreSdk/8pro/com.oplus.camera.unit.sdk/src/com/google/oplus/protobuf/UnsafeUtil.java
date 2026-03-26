package com.google.oplus.protobuf;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.VarHandle;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import com.oplus.camera.unit.sdk.compat.UnsafeCompat;

/* JADX INFO: loaded from: classes.dex */
final class UnsafeUtil {
    private static final long BOOLEAN_ARRAY_BASE_OFFSET;
    private static final long BOOLEAN_ARRAY_INDEX_SCALE;
    private static final long BUFFER_ADDRESS_OFFSET;
    private static final int BYTE_ARRAY_ALIGNMENT;
    static final long BYTE_ARRAY_BASE_OFFSET;
    private static final long DOUBLE_ARRAY_BASE_OFFSET;
    private static final long DOUBLE_ARRAY_INDEX_SCALE;
    private static final long FLOAT_ARRAY_BASE_OFFSET;
    private static final long FLOAT_ARRAY_INDEX_SCALE;
    private static final long INT_ARRAY_BASE_OFFSET;
    private static final long INT_ARRAY_INDEX_SCALE;
    static final boolean IS_BIG_ENDIAN;
    private static final long LONG_ARRAY_BASE_OFFSET;
    private static final long LONG_ARRAY_INDEX_SCALE;
    private static final long OBJECT_ARRAY_BASE_OFFSET;
    private static final long OBJECT_ARRAY_INDEX_SCALE;
    private static final Object UNSAFE = UnsafeCompat.getUnsafe();
    private static final Class<?> MEMORY_CLASS = Android.getMemoryClass();
    private static final boolean IS_ANDROID_64 = determineAndroidSupportByAddressSize(Long.TYPE);
    private static final boolean IS_ANDROID_32 = determineAndroidSupportByAddressSize(Integer.TYPE);
    private static final MemoryAccessor MEMORY_ACCESSOR = getMemoryAccessor();
    private static final boolean HAS_UNSAFE_BYTEBUFFER_OPERATIONS = supportsUnsafeByteBufferOperations();
    private static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = supportsUnsafeArrayOperations();

    static {
        long jArrayBaseOffset = arrayBaseOffset(byte[].class);
        BYTE_ARRAY_BASE_OFFSET = jArrayBaseOffset;
        BOOLEAN_ARRAY_BASE_OFFSET = arrayBaseOffset(boolean[].class);
        BOOLEAN_ARRAY_INDEX_SCALE = arrayIndexScale(boolean[].class);
        INT_ARRAY_BASE_OFFSET = arrayBaseOffset(int[].class);
        INT_ARRAY_INDEX_SCALE = arrayIndexScale(int[].class);
        LONG_ARRAY_BASE_OFFSET = arrayBaseOffset(long[].class);
        LONG_ARRAY_INDEX_SCALE = arrayIndexScale(long[].class);
        FLOAT_ARRAY_BASE_OFFSET = arrayBaseOffset(float[].class);
        FLOAT_ARRAY_INDEX_SCALE = arrayIndexScale(float[].class);
        DOUBLE_ARRAY_BASE_OFFSET = arrayBaseOffset(double[].class);
        DOUBLE_ARRAY_INDEX_SCALE = arrayIndexScale(double[].class);
        OBJECT_ARRAY_BASE_OFFSET = arrayBaseOffset(Object[].class);
        OBJECT_ARRAY_INDEX_SCALE = arrayIndexScale(Object[].class);
        BUFFER_ADDRESS_OFFSET = fieldOffset(bufferAddressField());
        BYTE_ARRAY_ALIGNMENT = (int) (7 & jArrayBaseOffset);
        IS_BIG_ENDIAN = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private UnsafeUtil() {
    }

    static boolean hasUnsafeArrayOperations() {
        return HAS_UNSAFE_ARRAY_OPERATIONS;
    }

    static boolean hasUnsafeByteBufferOperations() {
        return HAS_UNSAFE_BYTEBUFFER_OPERATIONS;
    }

    static boolean isAndroid64() {
        return IS_ANDROID_64;
    }

    static <T> T allocateInstance(Class<T> cls) {
        try {
            java.lang.reflect.Method allocateInstance = UNSAFE.getClass().getMethod("allocateInstance", Class.class);
            return (T) allocateInstance.invoke(UNSAFE, cls);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    static long objectFieldOffset(java.lang.reflect.Field field) {
        return MEMORY_ACCESSOR.objectFieldOffset(field);
    }

    private static int arrayBaseOffset(Class<?> cls) {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            return MEMORY_ACCESSOR.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int arrayIndexScale(Class<?> cls) {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            return MEMORY_ACCESSOR.arrayIndexScale(cls);
        }
        return -1;
    }

    static byte getByte(Object obj, long j) {
        return MEMORY_ACCESSOR.getByte(obj, j);
    }

    static void putByte(Object obj, long j, byte b) {
        MEMORY_ACCESSOR.putByte(obj, j, b);
    }

    static int getInt(Object obj, long j) {
        return MEMORY_ACCESSOR.getInt(obj, j);
    }

    static void putInt(Object obj, long j, int i) {
        MEMORY_ACCESSOR.putInt(obj, j, i);
    }

    static long getLong(Object obj, long j) {
        return MEMORY_ACCESSOR.getLong(obj, j);
    }

    static void putLong(Object obj, long j, long j2) {
        MEMORY_ACCESSOR.putLong(obj, j, j2);
    }

    static boolean getBoolean(Object obj, long j) {
        return MEMORY_ACCESSOR.getBoolean(obj, j);
    }

    static void putBoolean(Object obj, long j, boolean z) {
        MEMORY_ACCESSOR.putBoolean(obj, j, z);
    }

    static float getFloat(Object obj, long j) {
        return MEMORY_ACCESSOR.getFloat(obj, j);
    }

    static void putFloat(Object obj, long j, float f) {
        MEMORY_ACCESSOR.putFloat(obj, j, f);
    }

    static double getDouble(Object obj, long j) {
        return MEMORY_ACCESSOR.getDouble(obj, j);
    }

    static void putDouble(Object obj, long j, double d) {
        MEMORY_ACCESSOR.putDouble(obj, j, d);
    }

    static Object getObject(Object obj, long j) {
        return MEMORY_ACCESSOR.getObject(obj, j);
    }

    static void putObject(Object obj, long j, Object obj2) {
        MEMORY_ACCESSOR.putObject(obj, j, obj2);
    }

    static byte getByte(byte[] bArr, long j) {
        return MEMORY_ACCESSOR.getByte(bArr, BYTE_ARRAY_BASE_OFFSET + j);
    }

    static void putByte(byte[] bArr, long j, byte b) {
        MEMORY_ACCESSOR.putByte(bArr, BYTE_ARRAY_BASE_OFFSET + j, b);
    }

    static int getInt(int[] iArr, long j) {
        return MEMORY_ACCESSOR.getInt(iArr, INT_ARRAY_BASE_OFFSET + (j * INT_ARRAY_INDEX_SCALE));
    }

    static void putInt(int[] iArr, long j, int i) {
        MEMORY_ACCESSOR.putInt(iArr, INT_ARRAY_BASE_OFFSET + (j * INT_ARRAY_INDEX_SCALE), i);
    }

    static long getLong(long[] jArr, long j) {
        return MEMORY_ACCESSOR.getLong(jArr, LONG_ARRAY_BASE_OFFSET + (j * LONG_ARRAY_INDEX_SCALE));
    }

    static void putLong(long[] jArr, long j, long j2) {
        MEMORY_ACCESSOR.putLong(jArr, LONG_ARRAY_BASE_OFFSET + (j * LONG_ARRAY_INDEX_SCALE), j2);
    }

    static boolean getBoolean(boolean[] zArr, long j) {
        return MEMORY_ACCESSOR.getBoolean(zArr, BOOLEAN_ARRAY_BASE_OFFSET + (j * BOOLEAN_ARRAY_INDEX_SCALE));
    }

    static void putBoolean(boolean[] zArr, long j, boolean z) {
        MEMORY_ACCESSOR.putBoolean(zArr, BOOLEAN_ARRAY_BASE_OFFSET + (j * BOOLEAN_ARRAY_INDEX_SCALE), z);
    }

    static float getFloat(float[] fArr, long j) {
        return MEMORY_ACCESSOR.getFloat(fArr, FLOAT_ARRAY_BASE_OFFSET + (j * FLOAT_ARRAY_INDEX_SCALE));
    }

    static void putFloat(float[] fArr, long j, float f) {
        MEMORY_ACCESSOR.putFloat(fArr, FLOAT_ARRAY_BASE_OFFSET + (j * FLOAT_ARRAY_INDEX_SCALE), f);
    }

    static double getDouble(double[] dArr, long j) {
        return MEMORY_ACCESSOR.getDouble(dArr, DOUBLE_ARRAY_BASE_OFFSET + (j * DOUBLE_ARRAY_INDEX_SCALE));
    }

    static void putDouble(double[] dArr, long j, double d) {
        MEMORY_ACCESSOR.putDouble(dArr, DOUBLE_ARRAY_BASE_OFFSET + (j * DOUBLE_ARRAY_INDEX_SCALE), d);
    }

    static Object getObject(Object[] objArr, long j) {
        return MEMORY_ACCESSOR.getObject(objArr, OBJECT_ARRAY_BASE_OFFSET + (j * OBJECT_ARRAY_INDEX_SCALE));
    }

    static void putObject(Object[] objArr, long j, Object obj) {
        MEMORY_ACCESSOR.putObject(objArr, OBJECT_ARRAY_BASE_OFFSET + (j * OBJECT_ARRAY_INDEX_SCALE), obj);
    }

    static void copyMemory(byte[] bArr, long j, long j2, long j3) {
        MEMORY_ACCESSOR.copyMemory(bArr, j, j2, j3);
    }

    static void copyMemory(long j, byte[] bArr, long j2, long j3) {
        MEMORY_ACCESSOR.copyMemory(j, bArr, j2, j3);
    }

    static void copyMemory(byte[] bArr, long j, byte[] bArr2, long j2, long j3) {
        System.arraycopy(bArr, (int) j, bArr2, (int) j2, (int) j3);
    }

    static byte getByte(long j) {
        return MEMORY_ACCESSOR.getByte(j);
    }

    static void putByte(long j, byte b) {
        MEMORY_ACCESSOR.putByte(j, b);
    }

    static int getInt(long j) {
        return MEMORY_ACCESSOR.getInt(j);
    }

    static void putInt(long j, int i) {
        MEMORY_ACCESSOR.putInt(j, i);
    }

    static long getLong(long j) {
        return MEMORY_ACCESSOR.getLong(j);
    }

    static void putLong(long j, long j2) {
        MEMORY_ACCESSOR.putLong(j, j2);
    }

    static long addressOffset(ByteBuffer byteBuffer) {
        return MEMORY_ACCESSOR.getLong(byteBuffer, BUFFER_ADDRESS_OFFSET);
    }

    static Object getStaticObject(java.lang.reflect.Field field) {
        return MEMORY_ACCESSOR.getStaticObject(field);
    }

    static Object getUnsafe() {
        return UnsafeCompat.getUnsafe();
    }

    private static MemoryAccessor getMemoryAccessor() {
        Object unsafe = UNSAFE;
        if (unsafe == null) {
            return new VarHandleMemoryAccessor(null);
        }
        if (Android.isOnAndroidDevice()) {
            if (IS_ANDROID_64) {
                return new Android64MemoryAccessor(unsafe);
            }
            if (IS_ANDROID_32) {
                return new Android32MemoryAccessor(unsafe);
            }
            return null;
        }
        return new JvmMemoryAccessor(unsafe);
    }

    private static boolean supportsUnsafeArrayOperations() {
        MemoryAccessor memoryAccessor = MEMORY_ACCESSOR;
        if (memoryAccessor == null) {
            return false;
        }
        return memoryAccessor.supportsUnsafeArrayOperations();
    }

    private static boolean supportsUnsafeByteBufferOperations() {
        MemoryAccessor memoryAccessor = MEMORY_ACCESSOR;
        if (memoryAccessor == null) {
            return false;
        }
        return memoryAccessor.supportsUnsafeByteBufferOperations();
    }

    static boolean determineAndroidSupportByAddressSize(Class<?> cls) {
        if (!Android.isOnAndroidDevice()) {
            return false;
        }
        try {
            Class<?> cls2 = MEMORY_CLASS;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.reflect.Field bufferAddressField() {
        java.lang.reflect.Field field;
        if (Android.isOnAndroidDevice() && (field = field(Buffer.class, "effectiveDirectAddress")) != null) {
            return field;
        }
        java.lang.reflect.Field field2 = field(Buffer.class, "address");
        if (field2 == null || field2.getType() != Long.TYPE) {
            return null;
        }
        return field2;
    }

    private static int firstDifferingByteIndexNativeEndian(long j, long j2) {
        int iNumberOfTrailingZeros;
        if (IS_BIG_ENDIAN) {
            iNumberOfTrailingZeros = Long.numberOfLeadingZeros(j ^ j2);
        } else {
            iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j ^ j2);
        }
        return iNumberOfTrailingZeros >> 3;
    }

    static int mismatch(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (i < 0 || i2 < 0 || i3 < 0 || i + i3 > bArr.length || i2 + i3 > bArr2.length) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = 0;
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            for (int i5 = (BYTE_ARRAY_ALIGNMENT + i) & 7; i4 < i3 && (i5 & 7) != 0; i5++) {
                if (bArr[i + i4] != bArr2[i2 + i4]) {
                    return i4;
                }
                i4++;
            }
            int i6 = ((i3 - i4) & (-8)) + i4;
            while (i4 < i6) {
                long j = BYTE_ARRAY_BASE_OFFSET;
                long j2 = i4;
                long j3 = getLong((Object) bArr, ((long) i) + j + j2);
                long j4 = getLong((Object) bArr2, j + ((long) i2) + j2);
                if (j3 != j4) {
                    return i4 + firstDifferingByteIndexNativeEndian(j3, j4);
                }
                i4 += 8;
            }
        }
        while (i4 < i3) {
            if (bArr[i + i4] != bArr2[i2 + i4]) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    private static long fieldOffset(java.lang.reflect.Field field) {
        MemoryAccessor memoryAccessor;
        if (field == null || (memoryAccessor = MEMORY_ACCESSOR) == null) {
            return -1L;
        }
        return memoryAccessor.objectFieldOffset(field);
    }

    private static java.lang.reflect.Field field(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static abstract class MemoryAccessor {
        Object unsafe;

        MemoryAccessor(Object unsafe) {
            this.unsafe = unsafe;
        }

        public long objectFieldOffset(java.lang.reflect.Field field) {
            return UnsafeCompat.objectFieldOffset(field);
        }

        public int arrayBaseOffset(Class<?> cls) {
            return UnsafeCompat.arrayBaseOffset(cls);
        }

        public int arrayIndexScale(Class<?> cls) {
            return UnsafeCompat.arrayIndexScale(cls);
        }

        public boolean supportsUnsafeArrayOperations() {
            Object unsafe = this.unsafe;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                cls.getMethod("getInt", Object.class, Long.TYPE);
                cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
                cls.getMethod("getObject", Object.class, Long.TYPE);
                cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
                return true;
            } catch (Throwable th) {
                UnsafeUtil.logMissingMethod(th);
                return false;
            }
        }

        public abstract Object getStaticObject(java.lang.reflect.Field field);

        public int getInt(Object obj, long j) {
            try {
                return (int) this.unsafe.getClass().getMethod("getInt", Object.class, Long.TYPE).invoke(this.unsafe,
                        obj, j);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public void putInt(Object obj, long j, int i) {
            try {
                this.unsafe.getClass().getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE).invoke(this.unsafe,
                        obj, j, i);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public long getLong(Object obj, long j) {
            try {
                return (long) this.unsafe.getClass().getMethod("getLong", Object.class, Long.TYPE).invoke(this.unsafe,
                        obj, j);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public void putLong(Object obj, long j, long j2) {
            try {
                this.unsafe.getClass().getMethod("putLong", Object.class, Long.TYPE, Long.TYPE).invoke(this.unsafe, obj,
                        j, j2);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public Object getObject(Object obj, long j) {
            try {
                return this.unsafe.getClass().getMethod("getObject", Object.class, Long.TYPE).invoke(this.unsafe, obj,
                        j);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public void putObject(Object obj, long j, Object obj2) {
            try {
                this.unsafe.getClass().getMethod("putObject", Object.class, Long.TYPE, Object.class).invoke(this.unsafe,
                        obj, j, obj2);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public abstract byte getByte(long j);

        public abstract void putByte(long j, byte b);

        public abstract int getInt(long j);

        public abstract void putInt(long j, int i);

        public abstract long getLong(long j);

        public abstract void putLong(long j, long j2);

        public byte getByte(Object obj, long j) {
            try {
                return (byte) this.unsafe.getClass().getMethod("getByte", Object.class, Long.TYPE).invoke(this.unsafe,
                        obj, j);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public void putByte(Object obj, long j, byte b) {
            try {
                this.unsafe.getClass().getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE).invoke(this.unsafe, obj,
                        j, b);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public boolean getBoolean(Object obj, long j) {
            try {
                return (boolean) this.unsafe.getClass().getMethod("getBoolean", Object.class, Long.TYPE)
                        .invoke(this.unsafe, obj, j);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public void putBoolean(Object obj, long j, boolean z) {
            try {
                this.unsafe.getClass().getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE)
                        .invoke(this.unsafe, obj, j, z);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public float getFloat(Object obj, long j) {
            try {
                return (float) this.unsafe.getClass().getMethod("getFloat", Object.class, Long.TYPE).invoke(this.unsafe,
                        obj, j);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public void putFloat(Object obj, long j, float f) {
            try {
                this.unsafe.getClass().getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE).invoke(this.unsafe,
                        obj, j, f);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public double getDouble(Object obj, long j) {
            try {
                return (double) this.unsafe.getClass().getMethod("getDouble", Object.class, Long.TYPE)
                        .invoke(this.unsafe, obj, j);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public void putDouble(Object obj, long j, double d) {
            try {
                this.unsafe.getClass().getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE).invoke(this.unsafe,
                        obj, j, d);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public abstract void copyMemory(long j, byte[] bArr, long j2, long j3);

        public abstract void copyMemory(byte[] bArr, long j, long j2, long j3);

        public boolean supportsUnsafeByteBufferOperations() {
            Object unsafe = this.unsafe;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return UnsafeUtil.bufferAddressField() != null;
            } catch (Throwable th) {
                UnsafeUtil.logMissingMethod(th);
                return false;
            }
        }
    }

    private static final class JvmMemoryAccessor extends MemoryAccessor {
        JvmMemoryAccessor(Object unsafe) {
            super(unsafe);
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public Object getStaticObject(java.lang.reflect.Field field) {
            try {
                Object base = this.unsafe.getClass().getMethod("staticFieldBase", java.lang.reflect.Field.class)
                        .invoke(this.unsafe, field);
                long offset = (long) this.unsafe.getClass()
                        .getMethod("staticFieldOffset", java.lang.reflect.Field.class)
                        .invoke(this.unsafe, field);
                return getObject(base, offset);
            } catch (Exception e) {
                return null;
            }
        }

        @Override
        public byte getByte(long address) {
            try {
                return (byte) this.unsafe.getClass().getMethod("getByte", Long.TYPE).invoke(this.unsafe, address);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        @Override
        public void putByte(long address, byte value) {
            try {
                this.unsafe.getClass().getMethod("putByte", Long.TYPE, Byte.TYPE).invoke(this.unsafe, address, value);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        @Override
        public int getInt(long address) {
            try {
                return (int) this.unsafe.getClass().getMethod("getInt", Long.TYPE).invoke(this.unsafe, address);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        @Override
        public void putInt(long address, int value) {
            try {
                this.unsafe.getClass().getMethod("putInt", Long.TYPE, Integer.TYPE).invoke(this.unsafe, address, value);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        @Override
        public long getLong(long address) {
            try {
                return (long) this.unsafe.getClass().getMethod("getLong", Long.TYPE).invoke(this.unsafe, address);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        @Override
        public void putLong(long address, long value) {
            try {
                this.unsafe.getClass().getMethod("putLong", Long.TYPE, Long.TYPE).invoke(this.unsafe, address, value);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void copyMemory(long j, byte[] bArr, long j2, long j3) {
            try {
                this.unsafe.getClass()
                        .getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE)
                        .invoke(this.unsafe, null, j, bArr, UnsafeUtil.BYTE_ARRAY_BASE_OFFSET + j2, j3);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void copyMemory(byte[] bArr, long j, long j2, long j3) {
            try {
                this.unsafe.getClass()
                        .getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE)
                        .invoke(this.unsafe, bArr, UnsafeUtil.BYTE_ARRAY_BASE_OFFSET + j, null, j2, j3);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    private static final class Android64MemoryAccessor extends MemoryAccessor {
        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public boolean supportsUnsafeByteBufferOperations() {
            return false;
        }

        Android64MemoryAccessor(Object unsafe) {
            super(unsafe);
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public Object getStaticObject(java.lang.reflect.Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public byte getByte(Object obj, long j) {
            return UnsafeUtil.IS_BIG_ENDIAN ? UnsafeUtil.getByteBigEndian(obj, j)
                    : UnsafeUtil.getByteLittleEndian(obj, j);
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void putByte(Object obj, long j, byte b) {
            if (UnsafeUtil.IS_BIG_ENDIAN) {
                UnsafeUtil.putByteBigEndian(obj, j, b);
            } else {
                UnsafeUtil.putByteLittleEndian(obj, j, b);
            }
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public boolean getBoolean(Object obj, long j) {
            return UnsafeUtil.IS_BIG_ENDIAN ? UnsafeUtil.getBooleanBigEndian(obj, j)
                    : UnsafeUtil.getBooleanLittleEndian(obj, j);
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void putBoolean(Object obj, long j, boolean z) {
            if (UnsafeUtil.IS_BIG_ENDIAN) {
                UnsafeUtil.putBooleanBigEndian(obj, j, z);
            } else {
                UnsafeUtil.putBooleanLittleEndian(obj, j, z);
            }
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public float getFloat(Object obj, long j) {
            return Float.intBitsToFloat(getInt(obj, j));
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void putFloat(Object obj, long j, float f) {
            putInt(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public double getDouble(Object obj, long j) {
            return Double.longBitsToDouble(getLong(obj, j));
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void putDouble(Object obj, long j, double d) {
            putLong(obj, j, Double.doubleToLongBits(d));
        }

        @Override
        public byte getByte(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putByte(long address, byte value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getInt(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putInt(long address, int value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long getLong(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putLong(long address, long value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void copyMemory(long srcAddress, byte[] target, long targetIndex, long length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void copyMemory(byte[] src, long srcIndex, long targetAddress, long length) {
            throw new UnsupportedOperationException();
        }
    }

    private static final class Android32MemoryAccessor extends MemoryAccessor {
        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public boolean supportsUnsafeByteBufferOperations() {
            return false;
        }

        Android32MemoryAccessor(Object unsafe) {
            super(unsafe);
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public Object getStaticObject(java.lang.reflect.Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public byte getByte(Object obj, long j) {
            return UnsafeUtil.IS_BIG_ENDIAN ? UnsafeUtil.getByteBigEndian(obj, j)
                    : UnsafeUtil.getByteLittleEndian(obj, j);
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void putByte(Object obj, long j, byte b) {
            if (UnsafeUtil.IS_BIG_ENDIAN) {
                UnsafeUtil.putByteBigEndian(obj, j, b);
            } else {
                UnsafeUtil.putByteLittleEndian(obj, j, b);
            }
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public boolean getBoolean(Object obj, long j) {
            return UnsafeUtil.IS_BIG_ENDIAN ? UnsafeUtil.getBooleanBigEndian(obj, j)
                    : UnsafeUtil.getBooleanLittleEndian(obj, j);
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void putBoolean(Object obj, long j, boolean z) {
            if (UnsafeUtil.IS_BIG_ENDIAN) {
                UnsafeUtil.putBooleanBigEndian(obj, j, z);
            } else {
                UnsafeUtil.putBooleanLittleEndian(obj, j, z);
            }
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public float getFloat(Object obj, long j) {
            return Float.intBitsToFloat(getInt(obj, j));
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void putFloat(Object obj, long j, float f) {
            putInt(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public double getDouble(Object obj, long j) {
            return Double.longBitsToDouble(getLong(obj, j));
        }

        @Override // com.google.oplus.protobuf.UnsafeUtil.MemoryAccessor
        public void putDouble(Object obj, long j, double d) {
            putLong(obj, j, Double.doubleToLongBits(d));
        }

        @Override
        public byte getByte(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putByte(long address, byte value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getInt(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putInt(long address, int value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long getLong(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putLong(long address, long value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void copyMemory(long srcAddress, byte[] target, long targetIndex, long length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void copyMemory(byte[] src, long srcIndex, long targetAddress, long length) {
            throw new UnsupportedOperationException();
        }
    }

    private static final class VarHandleMemoryAccessor extends MemoryAccessor {
        private static final Map<Long, VarHandle> fieldVarHandles = new ConcurrentHashMap<>();

        private static final VarHandle BYTE_ARRAY_VH = MethodHandles.arrayElementVarHandle(byte[].class);
        private static final VarHandle INT_ARRAY_VH = MethodHandles.arrayElementVarHandle(int[].class);
        private static final VarHandle LONG_ARRAY_VH = MethodHandles.arrayElementVarHandle(long[].class);
        private static final VarHandle FLOAT_ARRAY_VH = MethodHandles.arrayElementVarHandle(float[].class);
        private static final VarHandle DOUBLE_ARRAY_VH = MethodHandles.arrayElementVarHandle(double[].class);
        private static final VarHandle BOOLEAN_ARRAY_VH = MethodHandles.arrayElementVarHandle(boolean[].class);
        private static final VarHandle OBJECT_ARRAY_VH = MethodHandles.arrayElementVarHandle(Object[].class);

        VarHandleMemoryAccessor(Object unsafe) {
            super(unsafe);
        }

        @Override
        public boolean supportsUnsafeArrayOperations() {
            return true;
        }

        @Override
        public boolean supportsUnsafeByteBufferOperations() {
            return false;
        }

        private VarHandle getFieldVarHandle(Object obj, long offset, Class<?> type) {
            VarHandle vh = fieldVarHandles.get(offset);
            if (vh != null)
                return vh;

            try {
                for (java.lang.reflect.Field f : obj.getClass().getDeclaredFields()) {
                    if (UnsafeCompat.objectFieldOffset(f) == offset) {
                        vh = MethodHandles.lookup().unreflectVarHandle(f);
                        fieldVarHandles.put(offset, vh);
                        return vh;
                    }
                }
            } catch (Exception ignored) {
            }
            throw new RuntimeException("Could not find VarHandle for offset " + offset + " in " + obj.getClass());
        }

        @Override
        public byte getByte(Object obj, long offset) {
            if (obj instanceof byte[])
                return (byte) BYTE_ARRAY_VH.get(obj, (int) (offset - UnsafeUtil.BYTE_ARRAY_BASE_OFFSET));
            return (byte) getFieldVarHandle(obj, offset, byte.class).get(obj);
        }

        @Override
        public void putByte(Object obj, long offset, byte value) {
            if (obj instanceof byte[])
                BYTE_ARRAY_VH.set(obj, (int) (offset - UnsafeUtil.BYTE_ARRAY_BASE_OFFSET), value);
            else
                getFieldVarHandle(obj, offset, byte.class).set(obj, value);
        }

        @Override
        public int getInt(Object obj, long offset) {
            if (obj instanceof int[])
                return (int) INT_ARRAY_VH.get(obj,
                        (int) ((offset - UnsafeUtil.getIntArrayBaseOffset()) / UnsafeUtil.getIntArrayIndexScale()));
            return (int) getFieldVarHandle(obj, offset, int.class).get(obj);
        }

        @Override
        public void putInt(Object obj, long offset, int value) {
            if (obj instanceof int[])
                INT_ARRAY_VH.set(obj,
                        (int) ((offset - UnsafeUtil.getIntArrayBaseOffset()) / UnsafeUtil.getIntArrayIndexScale()),
                        value);
            else
                getFieldVarHandle(obj, offset, int.class).set(obj, value);
        }

        @Override
        public long getLong(Object obj, long offset) {
            if (obj instanceof long[])
                return (long) LONG_ARRAY_VH.get(obj,
                        (int) ((offset - UnsafeUtil.getLongArrayBaseOffset()) / UnsafeUtil.getLongArrayIndexScale()));
            return (long) getFieldVarHandle(obj, offset, long.class).get(obj);
        }

        @Override
        public void putLong(Object obj, long offset, long value) {
            if (obj instanceof long[])
                LONG_ARRAY_VH.set(obj,
                        (int) ((offset - UnsafeUtil.getLongArrayBaseOffset()) / UnsafeUtil.getLongArrayIndexScale()),
                        value);
            else
                getFieldVarHandle(obj, offset, long.class).set(obj, value);
        }

        @Override
        public boolean getBoolean(Object obj, long offset) {
            if (obj instanceof boolean[])
                return (boolean) BOOLEAN_ARRAY_VH.get(obj, (int) ((offset - UnsafeUtil.getBooleanArrayBaseOffset())
                        / UnsafeUtil.getBooleanArrayIndexScale()));
            return (boolean) getFieldVarHandle(obj, offset, boolean.class).get(obj);
        }

        @Override
        public void putBoolean(Object obj, long offset, boolean value) {
            if (obj instanceof boolean[])
                BOOLEAN_ARRAY_VH.set(obj, (int) ((offset - UnsafeUtil.getBooleanArrayBaseOffset())
                        / UnsafeUtil.getBooleanArrayIndexScale()), value);
            else
                getFieldVarHandle(obj, offset, boolean.class).set(obj, value);
        }

        @Override
        public float getFloat(Object obj, long offset) {
            if (obj instanceof float[])
                return (float) FLOAT_ARRAY_VH.get(obj,
                        (int) ((offset - UnsafeUtil.getFloatArrayBaseOffset()) / UnsafeUtil.getFloatArrayIndexScale()));
            return (float) getFieldVarHandle(obj, offset, float.class).get(obj);
        }

        @Override
        public void putFloat(Object obj, long offset, float value) {
            if (obj instanceof float[])
                FLOAT_ARRAY_VH.set(obj,
                        (int) ((offset - UnsafeUtil.getFloatArrayBaseOffset()) / UnsafeUtil.getFloatArrayIndexScale()),
                        value);
            else
                getFieldVarHandle(obj, offset, float.class).set(obj, value);
        }

        @Override
        public double getDouble(Object obj, long offset) {
            if (obj instanceof double[])
                return (double) DOUBLE_ARRAY_VH.get(obj, (int) ((offset - UnsafeUtil.getDoubleArrayBaseOffset())
                        / UnsafeUtil.getDoubleArrayIndexScale()));
            return (double) getFieldVarHandle(obj, offset, double.class).get(obj);
        }

        @Override
        public void putDouble(Object obj, long offset, double value) {
            if (obj instanceof double[])
                DOUBLE_ARRAY_VH.set(obj, (int) ((offset - UnsafeUtil.getDoubleArrayBaseOffset())
                        / UnsafeUtil.getDoubleArrayIndexScale()), value);
            else
                getFieldVarHandle(obj, offset, double.class).set(obj, value);
        }

        @Override
        public Object getObject(Object obj, long offset) {
            if (obj instanceof Object[])
                return OBJECT_ARRAY_VH.get(obj, (int) ((offset - UnsafeUtil.getObjectArrayBaseOffset())
                        / UnsafeUtil.getObjectArrayIndexScale()));
            return getFieldVarHandle(obj, offset, Object.class).get(obj);
        }

        @Override
        public void putObject(Object obj, long offset, Object value) {
            if (obj instanceof Object[])
                OBJECT_ARRAY_VH.set(obj, (int) ((offset - UnsafeUtil.getObjectArrayBaseOffset())
                        / UnsafeUtil.getObjectArrayIndexScale()), value);
            else
                getFieldVarHandle(obj, offset, Object.class).set(obj, value);
        }

        @Override
        public byte getByte(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putByte(long address, byte value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getInt(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putInt(long address, int value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long getLong(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putLong(long address, long value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void copyMemory(long srcAddress, byte[] target, long targetIndex, long length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void copyMemory(byte[] src, long srcIndex, long targetAddress, long length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object getStaticObject(java.lang.reflect.Field field) {
            try {
                return field.get(null);
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* Helper methods for offset calculation in VarHandleMemoryAccessor */
    private static long getIntArrayBaseOffset() {
        return INT_ARRAY_BASE_OFFSET;
    }

    private static long getIntArrayIndexScale() {
        return INT_ARRAY_INDEX_SCALE;
    }

    private static long getLongArrayBaseOffset() {
        return LONG_ARRAY_BASE_OFFSET;
    }

    private static long getLongArrayIndexScale() {
        return LONG_ARRAY_INDEX_SCALE;
    }

    private static long getBooleanArrayBaseOffset() {
        return BOOLEAN_ARRAY_BASE_OFFSET;
    }

    private static long getBooleanArrayIndexScale() {
        return BOOLEAN_ARRAY_INDEX_SCALE;
    }

    private static long getFloatArrayBaseOffset() {
        return FLOAT_ARRAY_BASE_OFFSET;
    }

    private static long getFloatArrayIndexScale() {
        return FLOAT_ARRAY_INDEX_SCALE;
    }

    private static long getDoubleArrayBaseOffset() {
        return DOUBLE_ARRAY_BASE_OFFSET;
    }

    private static long getDoubleArrayIndexScale() {
        return DOUBLE_ARRAY_INDEX_SCALE;
    }

    private static long getObjectArrayBaseOffset() {
        return OBJECT_ARRAY_BASE_OFFSET;
    }

    private static long getObjectArrayIndexScale() {
        return OBJECT_ARRAY_INDEX_SCALE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte getByteBigEndian(Object obj, long j) {
        return (byte) ((getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte getByteLittleEndian(Object obj, long j) {
        return (byte) ((getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putByteBigEndian(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        putInt(obj, j2, ((255 & b) << i2) | (i & (~(255 << i2))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putByteLittleEndian(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        putInt(obj, j2, ((255 & b) << i) | (getInt(obj, j2) & (~(255 << i))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean getBooleanBigEndian(Object obj, long j) {
        return getByteBigEndian(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean getBooleanLittleEndian(Object obj, long j) {
        return getByteLittleEndian(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putBooleanBigEndian(Object obj, long j, boolean z) {
        putByteBigEndian(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putBooleanLittleEndian(Object obj, long j, boolean z) {
        putByteLittleEndian(obj, j, z ? (byte) 1 : (byte) 0);
    }

    static void logMissingMethod(Throwable th) {
        Logger.getLogger(UnsafeUtil.class.getName()).log(Level.WARNING,
                "platform method missing - proto runtime falling back to safer methods: " + th);
    }
}
