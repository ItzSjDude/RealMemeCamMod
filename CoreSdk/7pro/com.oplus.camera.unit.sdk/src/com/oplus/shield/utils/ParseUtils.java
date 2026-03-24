package com.oplus.shield.utils;
/* loaded from: classes.dex */
public class ParseUtils {
    public static byte[] parseVersion(byte[] bArr) {
        return new byte[]{bArr[0]};
    }

    public static byte[] parsePermissionLength(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        SystemUtils.arraycopy(bArr, bArr.length - 4, bArr2, 0, 4);
        return bArr2;
    }

    public static byte[] parsePermission(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        SystemUtils.arraycopy(bArr, (bArr.length - i) - 4, bArr2, 0, i);
        return bArr2;
    }

    public static byte[] parseExpiration(byte[] bArr, int i) {
        byte[] bArr2 = new byte[4];
        SystemUtils.arraycopy(bArr, (bArr.length - i) - 8, bArr2, 0, 4);
        return bArr2;
    }

    public static byte[] parseDigest(byte[] bArr, int i) {
        byte[] bArr2 = new byte[(bArr.length - i) - 9];
        SystemUtils.arraycopy(bArr, 1, bArr2, 0, (bArr.length - i) - 9);
        return bArr2;
    }
}
