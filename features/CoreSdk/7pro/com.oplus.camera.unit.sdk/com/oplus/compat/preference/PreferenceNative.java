package com.oplus.compat.preference;

import android.preference.Preference;
import android.preference.PreferenceScreen;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
/* loaded from: classes.dex */
public class PreferenceNative {
    private static final String TAG = "PreferenceNative";

    private PreferenceNative() {
    }

    @Grey
    @RequiresApi(api = 26)
    public static void performClick(Preference preference, PreferenceScreen preferenceScreen) throws UnSupportedApiVersionException {
        if (VersionUtils.isO()) {
            preference.performClick(preferenceScreen);
            return;
        }
        throw new UnSupportedApiVersionException();
    }
}
