package com.oplus.shield.utils;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.SystemProperties;
import android.provider.Settings;
/* loaded from: classes.dex */
public class DebugUtils {
    private static final String DEBUG_SETTINGS_KEY = "oplus_appplatform_debug";
    private static final String RELEASE_PROPERTY = "ro.build.release_type";
    private static boolean isDebugMode = false;
    private static boolean mIsReleaseVersion = true;
    private static volatile DebugUtils sInstance;
    private boolean initialized = false;
    private Context mContext;

    private DebugUtils() {
    }

    public void init(Context context) {
        if (this.initialized) {
            return;
        }
        this.initialized = true;
        mIsReleaseVersion = SystemProperties.getBoolean(RELEASE_PROPERTY, true);
        if (mIsReleaseVersion) {
            return;
        }
        this.mContext = context;
        isDebugMode = getDebugMode();
        context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor(DEBUG_SETTINGS_KEY), false, new DebugObserver());
        PLog.e("Current MODE is debug mode : " + isDebugMode);
    }

    /* loaded from: classes.dex */
    private class DebugObserver extends ContentObserver {
        private DebugObserver() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            boolean unused = DebugUtils.isDebugMode = DebugUtils.this.getDebugMode();
            PLog.d("Change MODE to debug mode : " + DebugUtils.isDebugMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getDebugMode() {
        return Settings.Secure.getInt(this.mContext.getContentResolver(), DEBUG_SETTINGS_KEY, 0) == 1;
    }

    public boolean isDebugMode() {
        return !mIsReleaseVersion && isDebugMode;
    }

    public static DebugUtils getInstance() {
        if (sInstance == null) {
            synchronized (DebugUtils.class) {
                if (sInstance == null) {
                    sInstance = new DebugUtils();
                }
            }
        }
        return sInstance;
    }
}
