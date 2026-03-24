package com.oplus.statistics.record;

import android.content.Context;
import com.oplus.statistics.storage.PreferenceHandler;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class StatIdManager {
    public static final long EXPIRE_TIME_MS = 30000;
    private static final String SP_KEY_APP_EXIT_TIME = "AppExitTime";
    private static final String SP_KEY_APP_SESSION_ID = "AppSessionId";
    private String mAppSessionId;
    private long mExitAppTime;

    private StatIdManager() {
        this.mAppSessionId = null;
        this.mExitAppTime = 0L;
    }

    private static class Holder {
        private static final StatIdManager INSTANCE = new StatIdManager();

        private Holder() {
        }
    }

    public static StatIdManager getInstance() {
        return Holder.INSTANCE;
    }

    public String getAppSessionId(Context context) {
        if (this.mAppSessionId == null) {
            refreshAppSessionIdIfNeed(context);
        }
        return this.mAppSessionId;
    }

    public void onAppExit(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.mExitAppTime = jCurrentTimeMillis;
        setAppExitTime2Sp(context, jCurrentTimeMillis);
    }

    public void refreshAppSessionIdIfNeed(Context context) {
        if (!isAppSessionIdFresh(context)) {
            refreshAppSessionId(context);
        } else {
            this.mAppSessionId = getAppSessionIdFromSp(context);
        }
    }

    public void refreshAppSessionId(Context context) {
        String strBuildSessionId = buildSessionId();
        this.mAppSessionId = strBuildSessionId;
        setAppSessionId2Sp(context, strBuildSessionId);
    }

    private String buildSessionId() {
        return UUID.randomUUID().toString();
    }

    private boolean isAppSessionIdFresh(Context context) {
        if (this.mExitAppTime == 0) {
            this.mExitAppTime = getAppLastExitTimeFromSp(context);
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.mExitAppTime;
        return jCurrentTimeMillis > 0 && jCurrentTimeMillis < EXPIRE_TIME_MS;
    }

    private void setAppExitTime2Sp(Context context, long j) {
        PreferenceHandler.setLong(context, SP_KEY_APP_EXIT_TIME, j);
    }

    private long getAppLastExitTimeFromSp(Context context) {
        return PreferenceHandler.getLong(context, SP_KEY_APP_EXIT_TIME, 0L);
    }

    private void setAppSessionId2Sp(Context context, String str) {
        PreferenceHandler.setString(context, SP_KEY_APP_SESSION_ID, str);
    }

    private String getAppSessionIdFromSp(Context context) {
        return PreferenceHandler.getString(context, SP_KEY_APP_SESSION_ID, "");
    }
}
