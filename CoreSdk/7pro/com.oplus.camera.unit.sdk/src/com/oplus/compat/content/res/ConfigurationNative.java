package com.oplus.compat.content.res;

import android.content.res.Configuration;
import android.content.res.OplusBaseConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.util.OplusTypeCastingHelperNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.content.res.ConfigurationWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class ConfigurationNative {
    private static final String TAG = "ConfigurationNative";

    @OplusCompatibleMethod
    private static Object getAccessibleChangedCompat(Configuration configuration) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getFlipFontNCompat(Configuration configuration) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getFlipFontQCompat(Configuration configuration) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getThemeChangedCompat(Configuration configuration) {
        return null;
    }

    @OplusCompatibleMethod
    private static void getThemeChangedCompat(Configuration configuration, int i) {
    }

    @OplusCompatibleMethod
    private static Object getThemeChangedFlagsCompat(Configuration configuration) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUxIconConfigCompat(Configuration configuration) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setAccessibleChangedCompat(Configuration configuration, int i) {
    }

    @OplusCompatibleMethod
    private static void setThemeChangedFlagsCompat(Configuration configuration, long j) {
    }

    @OplusCompatibleMethod
    private static void setUxIconConfigCompat(Configuration configuration, long j) {
    }

    private ConfigurationNative() {
    }

    @Oem
    @RequiresApi(api = 25)
    public static int getFlipFont(@NonNull Configuration configuration) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseConfiguration oplusBaseConfiguration = (OplusBaseConfiguration) OplusTypeCastingHelperNative.typeCasting(OplusBaseConfiguration.class, configuration);
            if (oplusBaseConfiguration != null) {
                return oplusBaseConfiguration.getOplusExtraConfiguration().mFlipFont;
            }
            return -1;
        } else if (VersionUtils.isOsVersion11_3()) {
            return ConfigurationWrapper.getFlipFont(configuration);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getFlipFontQCompat(configuration)).intValue();
            }
            if (VersionUtils.isN_MR1()) {
                return ((Integer) getFlipFontNCompat(configuration)).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getThemeChanged(@NonNull Configuration configuration) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseConfiguration oplusBaseConfiguration = (OplusBaseConfiguration) OplusTypeCastingHelperNative.typeCasting(OplusBaseConfiguration.class, configuration);
            if (oplusBaseConfiguration != null) {
                return oplusBaseConfiguration.getOplusExtraConfiguration().mThemeChanged;
            }
            return -1;
        } else if (VersionUtils.isOsVersion11_3()) {
            return ConfigurationWrapper.getThemeChanged(configuration);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getThemeChangedCompat(configuration)).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setThemeChanged(@NonNull Configuration configuration, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseConfiguration oplusBaseConfiguration = (OplusBaseConfiguration) OplusTypeCastingHelperNative.typeCasting(OplusBaseConfiguration.class, configuration);
            if (oplusBaseConfiguration != null) {
                oplusBaseConfiguration.getOplusExtraConfiguration().mThemeChanged = i;
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            ConfigurationWrapper.setThemeChanged(configuration, i);
        } else if (VersionUtils.isQ()) {
            getThemeChangedCompat(configuration, i);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long getThemeChangedFlags(@NonNull Configuration configuration) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseConfiguration oplusBaseConfiguration = (OplusBaseConfiguration) OplusTypeCastingHelperNative.typeCasting(OplusBaseConfiguration.class, configuration);
            if (oplusBaseConfiguration != null) {
                return oplusBaseConfiguration.getOplusExtraConfiguration().mThemeChangedFlags;
            }
            return -1L;
        } else if (VersionUtils.isOsVersion11_3()) {
            return ConfigurationWrapper.getThemeChangedFlags(configuration);
        } else {
            if (VersionUtils.isQ()) {
                return ((Long) getThemeChangedFlagsCompat(configuration)).longValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setThemeChangedFlags(@NonNull Configuration configuration, long j) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseConfiguration oplusBaseConfiguration = (OplusBaseConfiguration) OplusTypeCastingHelperNative.typeCasting(OplusBaseConfiguration.class, configuration);
            if (oplusBaseConfiguration != null) {
                oplusBaseConfiguration.getOplusExtraConfiguration().mThemeChangedFlags = j;
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            ConfigurationWrapper.setThemeChangedFlags(configuration, j);
        } else if (VersionUtils.isQ()) {
            setThemeChangedFlagsCompat(configuration, j);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getAccessibleChanged(@NonNull Configuration configuration) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseConfiguration oplusBaseConfiguration = (OplusBaseConfiguration) OplusTypeCastingHelperNative.typeCasting(OplusBaseConfiguration.class, configuration);
            if (oplusBaseConfiguration != null) {
                return oplusBaseConfiguration.getOplusExtraConfiguration().mAccessibleChanged;
            }
            return 0;
        } else if (VersionUtils.isOsVersion11_3()) {
            return ConfigurationWrapper.getAccessibleChanged(configuration);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getAccessibleChangedCompat(configuration)).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setAccessibleChanged(@NonNull Configuration configuration, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseConfiguration oplusBaseConfiguration = (OplusBaseConfiguration) OplusTypeCastingHelperNative.typeCasting(OplusBaseConfiguration.class, configuration);
            if (oplusBaseConfiguration != null) {
                oplusBaseConfiguration.getOplusExtraConfiguration().mAccessibleChanged = i;
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            ConfigurationWrapper.setAccessibleChanged(configuration, i);
        } else if (VersionUtils.isQ()) {
            setAccessibleChangedCompat(configuration, i);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long getUxIconConfig(@NonNull Configuration configuration) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseConfiguration oplusBaseConfiguration = (OplusBaseConfiguration) OplusTypeCastingHelperNative.typeCasting(OplusBaseConfiguration.class, configuration);
            if (oplusBaseConfiguration != null) {
                return oplusBaseConfiguration.getOplusExtraConfiguration().mUxIconConfig;
            }
            return -1L;
        } else if (VersionUtils.isOsVersion11_3()) {
            return ConfigurationWrapper.getUxIconConfig(configuration);
        } else {
            if (VersionUtils.isQ()) {
                return ((Long) getUxIconConfigCompat(configuration)).longValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setUxIconConfig(@NonNull Configuration configuration, long j) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            OplusBaseConfiguration oplusBaseConfiguration = (OplusBaseConfiguration) OplusTypeCastingHelperNative.typeCasting(OplusBaseConfiguration.class, configuration);
            if (oplusBaseConfiguration != null) {
                oplusBaseConfiguration.getOplusExtraConfiguration().mUxIconConfig = j;
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            ConfigurationWrapper.setUxIconConfig(configuration, j);
        } else if (VersionUtils.isQ()) {
            setUxIconConfigCompat(configuration, j);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }
}
