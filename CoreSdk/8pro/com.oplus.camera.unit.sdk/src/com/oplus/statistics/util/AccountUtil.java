package com.oplus.statistics.util;

import android.content.Context;
import com.oplus.statistics.storage.PreferenceHandler;

/* JADX INFO: loaded from: classes.dex */
public class AccountUtil {
    public static final String SSOID_DEFAULT = "0";
    private static final String TAG = "AccountUtil";

    public static String getSsoId(Context context) {
        return PreferenceHandler.getSsoID(context);
    }
}
