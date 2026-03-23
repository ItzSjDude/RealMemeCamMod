package com.oplus.statistics.strategy;

import android.util.ArrayMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class BaseTracker {
    public static final int FLAG_SEND_TO_ATOM = 2;
    public static final int FLAG_SEND_TO_DCS = 1;
    protected String mAppId;
    protected final String mEventId;
    protected final String mLogTag;
    protected Map<String, String> mLogMap = new ArrayMap();
    protected int mSendFlag = 1;

    public abstract void commit();

    public BaseTracker(String str, String str2) {
        this.mLogTag = str;
        this.mEventId = str2;
    }

    public BaseTracker add(Map<String, String> map) {
        this.mLogMap.putAll(map);
        return this;
    }

    public BaseTracker add(String str, int i) {
        this.mLogMap.put(str, String.valueOf(i));
        return this;
    }

    public BaseTracker add(String str, boolean z) {
        this.mLogMap.put(str, String.valueOf(z));
        return this;
    }

    public BaseTracker add(String str, String str2) {
        this.mLogMap.put(str, String.valueOf(str2));
        return this;
    }

    public BaseTracker add(String str, long j) {
        this.mLogMap.put(str, String.valueOf(j));
        return this;
    }

    public BaseTracker setAppId(String str) {
        this.mAppId = str;
        return this;
    }

    public BaseTracker setSendFlag(int i) {
        this.mSendFlag = i;
        return this;
    }
}
