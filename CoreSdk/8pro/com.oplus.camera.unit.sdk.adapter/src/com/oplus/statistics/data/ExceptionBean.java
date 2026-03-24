package com.oplus.statistics.data;

import android.content.Context;
import com.oplus.statistics.DataTypeConstants;
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
        return DataTypeConstants.EXCEPTION;
    }

    public ExceptionBean(Context context) {
        super(context);
    }

    public long getEventTime() {
        return this.mEventTime;
    }

    public void setEventTime(long j) {
        this.mEventTime = j;
        addTrackInfo(EXCEPTION_TIME, j);
    }

    public String getException() {
        return this.mException;
    }

    public void setException(String str) {
        this.mException = str;
        addTrackInfo(EXCEPTION, str);
    }

    public int getCount() {
        return this.mCount;
    }

    public void setCount(int i) {
        this.mCount = i;
        addTrackInfo(EXCEPTION_TIME, i);
    }

    public String toString() {
        return "exception is :" + getException() + "\ncount is :" + getCount() + "\ntime is :" + getEventTime() + "\n";
    }
}
