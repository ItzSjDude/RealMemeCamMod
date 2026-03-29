package com.oplus.oms.split.splitload;

import com.oplus.oms.split.common.SplitLog;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class SplitLibraryLoaderHelper {
    private static final String TAG = "SplitLibraryLoaderHelper";

    private SplitLibraryLoaderHelper() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0047, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean loadSplitLibrary(android.content.Context r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.oms.split.splitload.SplitLibraryLoaderHelper.loadSplitLibrary(android.content.Context, java.lang.String):boolean");
    }

    private static boolean loadSplitLibrary0(ClassLoader classLoader, String splitName, String name) {
        try {
            Class<?> splitLoaderCl = classLoader.loadClass("com.oplus.oms.split.core.splitlib." + splitName + "SplitLibraryLoader");
            Object splitLoader = splitLoaderCl.getDeclaredConstructor(null).newInstance(new Object[0]);
            Method method = HiddenApiReflection.findMethod(splitLoaderCl, "loadSplitLibrary", (Class<?>[]) new Class[]{String.class});
            method.invoke(splitLoader, name);
            return true;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException exception) {
            SplitLog.e(TAG, "loadSplitLibrary0 error", exception);
            return false;
        }
    }
}
