package com.oplus.util;

import android.os.SystemProperties;

public class OplusBaseFontUtils {
    public static boolean isFlipFontUsed = SystemProperties.getBoolean("persist.sys.oplus.flipfont", false);

    public static boolean isFlipFontUsed() {
        return SystemProperties.getBoolean("persist.sys.oplus.flipfont", false);
    }
}
