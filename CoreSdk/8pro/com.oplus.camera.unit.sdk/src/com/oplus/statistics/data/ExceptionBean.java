package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.statistics.DataTypeConstants;

public class ExceptionBean extends TrackEvent {
    private static final String EXCEPTION = "exception";
    private static final String EXCEPTION_COUNT = "count";
    private static final String EXCEPTION_TIME = "time";
    private int mCount;
    private long mEventTime;
    private String mException;

    @Override
    public int getEventType() {
        return DataTypeConstants.EXCEPTION;
    }

    public ExceptionBean(@NonNull Context context) {
        super(context);
    }

    public long getEventTime() {
        return this.mEventTime;
    }

    public void setEventTime(long eventTime) {
        this.mEventTime = eventTime;
        addTrackInfo(EXCEPTION_TIME, eventTime);
    }

    public String getException() {
        return this.mException;
    }

    public void setException(String exception) {
        this.mException = exception;
        addTrackInfo(EXCEPTION, exception);
    }

    public int getCount() {
        return this.mCount;
    }

    public void setCount(int count) {
        this.mCount = count;
        addTrackInfo(EXCEPTION_COUNT, count);
    }

    @Override
    public String toString() {
        return "exception is: " + getException() + "\ncount is: " + getCount() + "\ntime is: " + getEventTime() + "\n";
    }
}
