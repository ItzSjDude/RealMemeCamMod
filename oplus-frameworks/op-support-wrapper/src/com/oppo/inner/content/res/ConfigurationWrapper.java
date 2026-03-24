package com.oppo.inner.content.res;

import android.content.res.Configuration;
import android.content.res.OplusBaseConfiguration;
import android.util.Log;
import com.oplus.util.OplusTypeCastingHelper;

/* loaded from: classes.dex */
public class ConfigurationWrapper {
    private static final String TAG = "ConfigurationWrapper";

    public static void setFlipFont(Configuration configuration, int flipfont) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration != null) {
                baseConfiguration.mOplusExtraConfiguration.mFlipFont = flipfont;
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static int getFlipFont(Configuration configuration) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration == null) {
                return -1;
            }
            int result = baseConfiguration.mOplusExtraConfiguration.mFlipFont;
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getThemeChanged(Configuration configuration) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration == null) {
                return -1;
            }
            int result = baseConfiguration.mOplusExtraConfiguration.mThemeChanged;
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static void setThemeChanged(Configuration configuration, int val) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration != null) {
                baseConfiguration.mOplusExtraConfiguration.mThemeChanged = val;
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static long getThemeChangedFlags(Configuration configuration) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration == null) {
                return -1L;
            }
            long result = baseConfiguration.mOplusExtraConfiguration.mThemeChangedFlags;
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1L;
        }
    }

    public static void setThemeChangedFlags(Configuration configuration, long val) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration != null) {
                baseConfiguration.mOplusExtraConfiguration.mThemeChangedFlags = val;
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static int getAccessibleChanged(Configuration configuration) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration == null) {
                return 0;
            }
            int result = baseConfiguration.mOplusExtraConfiguration.mAccessibleChanged;
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static void setAccessibleChanged(Configuration configuration, int val) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration != null) {
                baseConfiguration.mOplusExtraConfiguration.mAccessibleChanged = val;
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static long getUxIconConfig(Configuration configuration) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration == null) {
                return -1L;
            }
            long result = baseConfiguration.mOplusExtraConfiguration.mUxIconConfig;
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1L;
        }
    }

    public static void setUxIconConfig(Configuration configuration, long val) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration != null) {
                baseConfiguration.mOplusExtraConfiguration.mUxIconConfig = val;
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static long getMaterialColor(Configuration configuration) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration == null) {
                return -1L;
            }
            long result = baseConfiguration.mOplusExtraConfiguration.mMaterialColor;
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1L;
        }
    }

    public static void setMaterialColor(Configuration configuration, long val) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration != null) {
                baseConfiguration.mOplusExtraConfiguration.mMaterialColor = val;
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static String getIconPackName(Configuration configuration) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration == null) {
                return "";
            }
            String result = baseConfiguration.mOplusExtraConfiguration.mIconPackName;
            return result;
        } catch (Throwable ex) {
            Log.e(TAG, ex.toString());
            return "";
        }
    }

    public static void setIconPackName(Configuration configuration, String val) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration != null) {
                baseConfiguration.mOplusExtraConfiguration.mIconPackName = val;
            }
        } catch (Throwable ex) {
            Log.e(TAG, ex.toString());
        }
    }

    public static String getCustomThemePath(Configuration configuration) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration == null) {
                return "";
            }
            String result = baseConfiguration.mOplusExtraConfiguration.mThemePrefix;
            return result;
        } catch (Throwable ex) {
            Log.e(TAG, ex.toString());
            return "";
        }
    }

    public static void setCustomThemePath(Configuration configuration, String val) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration != null) {
                baseConfiguration.mOplusExtraConfiguration.mThemePrefix = val;
            }
        } catch (Throwable ex) {
            Log.e(TAG, ex.toString());
        }
    }

    public static void setDarkModeStyleArgs(Configuration configuration, float bgMaxL, float fgMaxL, float dialogBgMaxL) {
        try {
            OplusBaseConfiguration baseConfiguration = typeCasting(configuration);
            if (baseConfiguration != null) {
                baseConfiguration.mOplusExtraConfiguration.mDarkModeBackgroundMaxL = bgMaxL;
                baseConfiguration.mOplusExtraConfiguration.mDarkModeForegroundMinL = fgMaxL;
                baseConfiguration.mOplusExtraConfiguration.mDarkModeDialogBgMaxL = dialogBgMaxL;
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static boolean isDarkModeIconOpen(Configuration configuration) {
        try {
            Long systemIconConfig = Long.valueOf(getUxIconConfig(configuration));
            int darkModeIcon = Long.valueOf(systemIconConfig.longValue() >> 61).intValue() & 1;
            return darkModeIcon == 1;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static void toggleDarkModeIconConfig(Configuration configuration) {
        try {
            long systemIconConfig = getUxIconConfig(configuration);
            long darkModeIcon = 1 << 61;
            long value = systemIconConfig ^ darkModeIcon;
            setUxIconConfig(configuration, value);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    private static OplusBaseConfiguration typeCasting(Configuration configuration) {
        return (OplusBaseConfiguration) OplusTypeCastingHelper.typeCasting(OplusBaseConfiguration.class, configuration);
    }
}
