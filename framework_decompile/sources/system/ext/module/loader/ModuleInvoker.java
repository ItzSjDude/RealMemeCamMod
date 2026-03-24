package system.ext.module.loader;

import java.lang.invoke.MethodHandle;

/* loaded from: classes5.dex */
class ModuleInvoker {
    ModuleInvoker() {
    }

    static Object invoke(MethodHandle methodHandle, Class<?> returnType, Object[] args) throws Throwable {
        if (returnType == Void.TYPE) {
            return invokeWithReturnVoid(methodHandle, args);
        }
        if (returnType == Boolean.TYPE) {
            return Boolean.valueOf(invokeWithReturnBoolean(methodHandle, args));
        }
        if (returnType == Integer.TYPE) {
            return Integer.valueOf(invokeWithReturnInt(methodHandle, args));
        }
        if (returnType == Short.TYPE) {
            return Short.valueOf(invokeWithReturnShort(methodHandle, args));
        }
        if (returnType == Long.TYPE) {
            return Long.valueOf(invokeWithReturnLong(methodHandle, args));
        }
        if (returnType == Byte.TYPE) {
            return Byte.valueOf(invokeWithReturnByte(methodHandle, args));
        }
        if (returnType == Character.TYPE) {
            return Character.valueOf(invokeWithReturnChar(methodHandle, args));
        }
        if (returnType == Float.TYPE) {
            return Float.valueOf(invokeWithReturnFloat(methodHandle, args));
        }
        if (returnType == Double.TYPE) {
            return Double.valueOf(invokeWithReturnDouble(methodHandle, args));
        }
        return invokeWithReturnType(methodHandle, args);
    }

    private static Void invokeWithReturnVoid(MethodHandle methodHandle, Object[] args) throws Throwable {
        if (args != null) {
            methodHandle.invokeWithArguments(args);
            return null;
        }
        (void) methodHandle.invokeExact();
        return null;
    }

    private static boolean invokeWithReturnBoolean(MethodHandle methodHandle, Object[] args) throws Throwable {
        if (args != null) {
            return ((Boolean) methodHandle.invokeWithArguments(args)).booleanValue();
        }
        return (boolean) methodHandle.invokeExact();
    }

    private static int invokeWithReturnInt(MethodHandle methodHandle, Object[] args) throws Throwable {
        if (args != null) {
            return ((Integer) methodHandle.invokeWithArguments(args)).intValue();
        }
        return (int) methodHandle.invokeExact();
    }

    private static short invokeWithReturnShort(MethodHandle methodHandle, Object[] args) throws Throwable {
        if (args != null) {
            return ((Short) methodHandle.invokeWithArguments(args)).shortValue();
        }
        return (short) methodHandle.invokeExact();
    }

    private static long invokeWithReturnLong(MethodHandle methodHandle, Object[] args) throws Throwable {
        if (args != null) {
            return ((Long) methodHandle.invokeWithArguments(args)).longValue();
        }
        return (long) methodHandle.invokeExact();
    }

    private static byte invokeWithReturnByte(MethodHandle methodHandle, Object[] args) throws Throwable {
        if (args != null) {
            return ((Byte) methodHandle.invokeWithArguments(args)).byteValue();
        }
        return (byte) methodHandle.invokeExact();
    }

    private static char invokeWithReturnChar(MethodHandle methodHandle, Object[] args) throws Throwable {
        if (args != null) {
            return ((Character) methodHandle.invokeWithArguments(args)).charValue();
        }
        return (char) methodHandle.invokeExact();
    }

    private static float invokeWithReturnFloat(MethodHandle methodHandle, Object[] args) throws Throwable {
        if (args != null) {
            return ((Float) methodHandle.invokeWithArguments(args)).floatValue();
        }
        return (float) methodHandle.invokeExact();
    }

    private static double invokeWithReturnDouble(MethodHandle methodHandle, Object[] args) throws Throwable {
        if (args != null) {
            return ((Double) methodHandle.invokeWithArguments(args)).doubleValue();
        }
        return (double) methodHandle.invokeExact();
    }

    private static <T> T invokeWithReturnType(MethodHandle methodHandle, Object[] objArr) throws Throwable {
        if (objArr != null) {
            return (T) methodHandle.invokeWithArguments(objArr);
        }
        return (T) (Object) methodHandle.invokeExact();
    }
}
