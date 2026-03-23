package com.oplus.shield.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
/* loaded from: classes.dex */
public class SystemUtils {
    private static final String PREFIX_STR_ANDROID = "android";

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void arraycopy(Object obj, int i, Object obj2, int i2, int i3) {
        System.arraycopy(obj, i, obj2, i2, i3);
    }

    public static byte[] int2byte(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    public static int byte2int(byte[] bArr) {
        return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
    }

    public static List<String> getSplitString(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return arrayList;
    }

    public static String[] getCallerName() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        boolean z = false;
        for (int i = 0; i < stackTrace.length; i++) {
            String className = stackTrace[i].getClassName();
            if (className.startsWith(PREFIX_STR_ANDROID)) {
                z = true;
            }
            if (!className.startsWith(PREFIX_STR_ANDROID) && z) {
                int i2 = i - 1;
                return new String[]{stackTrace[i2].getClassName(), stackTrace[i2].getMethodName()};
            }
        }
        return new String[0];
    }
}
