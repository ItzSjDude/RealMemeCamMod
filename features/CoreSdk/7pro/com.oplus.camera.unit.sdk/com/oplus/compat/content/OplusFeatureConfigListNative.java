package com.oplus.compat.content;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.content.OplusFeatureConfigManager;
/* loaded from: classes.dex */
public class OplusFeatureConfigListNative {
    @Oem
    @RequiresApi(api = 30)
    public static final String VAR_NAME_FEATURE_NFC_ANTENNA_GUIDE = "FEATURE_NFC_ANTENNA_GUIDE";

    @Oem
    @RequiresApi(api = 30)
    public static String get(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            try {
                OplusFeatureConfigManager oplusFeatureConfigManager = OplusFeatureConfigManager.getInstance();
                return (String) oplusFeatureConfigManager.getClass().getField(str).get(oplusFeatureConfigManager);
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException unused) {
                return null;
            }
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
