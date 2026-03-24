package android.provider;

import android.content.ContentResolver;
import java.util.Set;

/* loaded from: classes3.dex */
public interface ISettingsExt {
    public static final String PACKAGE_TALKBACK_NAME = "com.google.android.marvin.talkback";
    public static final String SCREEN_AUTO_BRIGHTNESS_ADJ_TALKBACK = "screen_auto_brightness_adj_talkback";
    public static final String SCREEN_BRIGHTNESS_TALKBACK_MAX = "sys.internal.screen_brightness_talkback_max";
    public static final String SCREEN_BRIGHTNESS_TALKBACK_MIN = "sys.internal.screen_brightness_talkback_min";
    public static final int T_SCREEN_BRIGHTNESS_TALKBACK_MAX = 255;
    public static final int T_SCREEN_BRIGHTNESS_TALKBACK_MIN = 1;

    default void addKeyToPublicSettings(Set<String> pulbicSettings) {
    }

    default int getAutoBrightnessValueForUserWithDef(String name, String value, int def) {
        if (name == null || value == null) {
            return Integer.MIN_VALUE;
        }
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return Integer.MIN_VALUE;
        }
    }

    default int getAutoBrightnessValueForUser(ContentResolver cr, String name, String value) {
        if (name == null || value == null) {
            return Integer.MIN_VALUE;
        }
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return Integer.MIN_VALUE;
        }
    }

    default int putAutoBrightnessValueForUser(ContentResolver cr, String packageName, String name, int value) {
        return value;
    }

    default int redirectUserIfNeeded(int userHandle, String name) {
        return userHandle;
    }
}
