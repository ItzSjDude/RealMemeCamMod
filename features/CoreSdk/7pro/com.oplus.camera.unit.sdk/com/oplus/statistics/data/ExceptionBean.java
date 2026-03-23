package com.oplus.statistics.data;

import android.content.Context;
/* loaded from: classes.dex */
public class ExceptionBean extends TrackEvent {
    private static final String EXCEPTION = "exception";
    private static final String EXCEPTION_COUNT = "count";
    private static final String EXCEPTION_TIME = "time";
    private int mCount;
    private long mEventTime;
    private String mException;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return 1004;
    }

    public ExceptionBean(Context context) {
        super(context);
    }

    public long getEventTime() {
        return this.mEventTime;
    }

    public void setEventTime(long j) {
        this.mEventTime = j;
        addTrackInfo(EXCEPTION_TIME, this.mEventTime);
    }

    public String getException() {
        return this.mException;
    }

    public void setException(String str) {
        this.mException = str;
        addTrackInfo(EXCEPTION, this.mException);
    }

    public int getCount() {
        return this.mCount;
    }

    public void setCount(int i) {
        this.mCount = i;
        addTrackInfo(EXCEPTION_TIME, this.mCount);
    }

    public String toString() {
        return "exception is :" + getException() + "\ncount is :" + getCount() + "\ntime is :" + getEventTime() + "\n";
    }
}
