package com.oplus.shield.utils;

import android.annotation.SuppressLint;
import java.util.Base64;
/* loaded from: classes.dex */
public class Base64Utils {
    @SuppressLint({"NewApi"})
    public static String byte2Base64(byte[] bArr) {
        return Base64.getEncoder().encodeToString(bArr);
    }

    @SuppressLint({"NewApi"})
    public static byte[] base642Byte(String str) {
        return Base64.getDecoder().decode(str);
    }
}
