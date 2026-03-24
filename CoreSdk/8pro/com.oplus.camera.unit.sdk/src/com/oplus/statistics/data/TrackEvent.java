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
import com.oplus.statistics.util.Supplier;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
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

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: 0x0000: CONST_STR  "appId is empty" */
    static /* synthetic */ String lambda$initBaseTrackInfo$0() {
        return "appId is empty";
    }

    public abstract int getEventType();

    public TrackEvent(@NonNull Context context) {
        Objects.requireNonNull(context, "TrackEvent: context is null");
        this.mContext = context;
        this.mTrackInfo = new ArrayMap<>();
        initBaseTrackInfo(context);
    }

    @NonNull
    public Map<String, Object> getTrackInfo() {
        return new ArrayMap(this.mTrackInfo);
    }

    void addTrackInfo(String str, int i) {
        this.mTrackInfo.put(str, Integer.valueOf(i));
    }

    protected void addTrackInfo(String str, long j) {
        this.mTrackInfo.put(str, Long.valueOf(j));
    }

    protected void addTrackInfo(String str, boolean z) {
        this.mTrackInfo.put(str, Boolean.valueOf(z));
    }

    protected void addTrackInfo(String str, String str2) {
        this.mTrackInfo.put(str, str2);
    }

    public String getAppId() {
        return this.mAppId;
    }

    public void setAppId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mAppId = str;
        addTrackInfo(APP_ID_STR, str);
        if (TextUtils.isDigitsOnly(this.mAppId)) {
            addTrackInfo(APP_ID, Integer.parseInt(this.mAppId));
        }
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public void setPackageName(String str) {
        this.mPackageName = str;
        addTrackInfo(APP_PACKAGE, str);
    }

    public String getVersionName() {
        return this.mVersionName;
    }

    public void setVersionName(String str) {
        this.mVersionName = str;
        addTrackInfo(APP_VERSION, str);
    }

    public String getAppName() {
        return this.mAppName;
    }

    public void setAppName(String str) {
        this.mAppName = str;
        addTrackInfo(APP_NAME, str);
    }

    public void setHeaderFlag(int i) {
        this.mHeaderFlag = i;
        addTrackInfo(HEADER_FLAG, i);
    }

    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    private void initBaseTrackInfo(Context context) {
        this.mTrackInfo.put(DATA_TYPE, Integer.valueOf(getEventType()));
        this.mTrackInfo.put("ssoid", AccountUtil.getSsoId(context));
        this.mTrackInfo.put(APP_SESSION_ID, StatIdManager.getInstance().getAppSessionId(context));
        String appCode = ApkInfoUtil.getAppCode(context);
        if (TextUtils.isEmpty(appCode)) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.data.TrackEvent$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return TrackEvent.lambda$initBaseTrackInfo$0();
                }
            });
        } else {
            setAppId(appCode);
        }
        OTrackContext oTrackContext = OTrackContext.get(appCode);
        if (oTrackContext != null) {
            this.mTrackInfo.put(HEADER_FLAG, Integer.valueOf(oTrackContext.getConfig().getHeaderFlag()));
            this.mTrackInfo.put(APP_VERSION, oTrackContext.getConfig().getVersionName());
            this.mTrackInfo.put(APP_PACKAGE, oTrackContext.getConfig().getPackageName());
            this.mTrackInfo.put(APP_NAME, oTrackContext.getConfig().getAppName());
            return;
        }
        this.mTrackInfo.put(APP_VERSION, ApkInfoUtil.getVersionName(context));
        this.mTrackInfo.put(APP_PACKAGE, ApkInfoUtil.getPackageName(context));
        this.mTrackInfo.put(APP_NAME, ApkInfoUtil.getAppName(context));
    }
}
