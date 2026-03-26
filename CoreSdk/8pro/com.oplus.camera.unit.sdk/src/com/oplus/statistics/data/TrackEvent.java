package com.oplus.statistics.data;

import android.content.Context;
import android.text.TextUtils;
import android.util.ArrayMap;
import androidx.annotation.NonNull;
import com.oplus.statistics.OTrackContext;
import com.oplus.statistics.record.StatIdManager;
import com.oplus.statistics.util.AccountUtil;
import com.oplus.statistics.util.ApkInfoUtil;
import com.oplus.statistics.util.LogUtil;
import java.util.Map;
import java.util.Objects;

public abstract class TrackEvent {
    protected static final String APP_ID = "appId";
    protected static final String APP_ID_STR = "appIdStr";
    protected static final String APP_NAME = "appName";
    protected static final String APP_PACKAGE = "appPackage";
    protected static final String APP_SESSION_ID = "statSId";
    protected static final String APP_VERSION = "appVersion";
    protected static final String DATA_TYPE = "dataType";
    protected static final String HEADER_FLAG = "headerFlag";
    protected static final String SSOID = "ssoid";
    private static final String TAG = "TrackEvent";
    private final Context mContext;
    private int mHeaderFlag;
    private final ArrayMap<String, Object> mTrackInfo;
    private String mAppId = "";
    private String mPackageName = "";
    private String mVersionName = "";
    private String mAppName = "";

    public abstract int getEventType();

    public TrackEvent(@NonNull Context context) {
        this.mContext = Objects.requireNonNull(context, "TrackEvent: context is null");
        this.mTrackInfo = new ArrayMap<>();
        initBaseTrackInfo(context);
    }

    @NonNull
    public Map<String, Object> getTrackInfo() {
        return new ArrayMap<>(this.mTrackInfo);
    }

    protected void addTrackInfo(String key, int value) {
        this.mTrackInfo.put(key, value);
    }

    protected void addTrackInfo(String key, long value) {
        this.mTrackInfo.put(key, value);
    }

    protected void addTrackInfo(String key, boolean value) {
        this.mTrackInfo.put(key, value);
    }

    protected void addTrackInfo(String key, String value) {
        this.mTrackInfo.put(key, value);
    }

    public String getAppId() {
        return this.mAppId;
    }

    public void setAppId(String appId) {
        if (TextUtils.isEmpty(appId)) {
            return;
        }
        this.mAppId = appId;
        addTrackInfo(APP_ID_STR, appId);
        if (TextUtils.isDigitsOnly(appId)) {
            try {
                addTrackInfo(APP_ID, Integer.parseInt(appId));
            } catch (NumberFormatException e) {
                LogUtil.e(TAG, () -> "setAppId: NumberFormatException for " + appId);
            }
        }
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public void setPackageName(String packageName) {
        this.mPackageName = packageName;
        addTrackInfo(APP_PACKAGE, packageName);
    }

    public String getVersionName() {
        return this.mVersionName;
    }

    public void setVersionName(String versionName) {
        this.mVersionName = versionName;
        addTrackInfo(APP_VERSION, versionName);
    }

    public String getAppName() {
        return this.mAppName;
    }

    public void setAppName(String appName) {
        this.mAppName = appName;
        addTrackInfo(APP_NAME, appName);
    }

    public void setHeaderFlag(int headerFlag) {
        this.mHeaderFlag = headerFlag;
        addTrackInfo(HEADER_FLAG, headerFlag);
    }

    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    private void initBaseTrackInfo(Context context) {
        this.mTrackInfo.put(DATA_TYPE, getEventType());
        this.mTrackInfo.put(SSOID, AccountUtil.getSsoId(context));
        this.mTrackInfo.put(APP_SESSION_ID, StatIdManager.getInstance().getAppSessionId(context));

        String appCode = ApkInfoUtil.getAppCode(context);
        if (TextUtils.isEmpty(appCode)) {
            LogUtil.w(TAG, () -> "appId is empty");
        } else {
            setAppId(appCode);
        }

        OTrackContext oTrackContext = OTrackContext.get(appCode);
        if (oTrackContext != null && oTrackContext.getConfig() != null) {
            this.mTrackInfo.put(HEADER_FLAG, oTrackContext.getConfig().getHeaderFlag());
            this.mTrackInfo.put(APP_VERSION, oTrackContext.getConfig().getVersionName());
            this.mTrackInfo.put(APP_PACKAGE, oTrackContext.getConfig().getPackageName());
            this.mTrackInfo.put(APP_NAME, oTrackContext.getConfig().getAppName());
        } else {
            this.mTrackInfo.put(APP_VERSION, ApkInfoUtil.getVersionName(context));
            this.mTrackInfo.put(APP_PACKAGE, ApkInfoUtil.getPackageName(context));
            this.mTrackInfo.put(APP_NAME, ApkInfoUtil.getAppName(context));
        }
    }
}
