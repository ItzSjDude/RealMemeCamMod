package com.oplus.util;

import java.io.File;

public class OplusFontUtils extends OplusBaseFontUtils {
    public static boolean isCurrentLanguageSupportVariationFont() {
        return new File("/system/fonts/SysSans-En-Regular.ttf").exists() ||
                new File("/system/fonts/OplusSans-Regular.ttf").exists();
    }
}
