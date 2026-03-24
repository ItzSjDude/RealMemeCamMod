package com.oplus.statistics.data;

import android.content.Context;
import com.oplus.statistics.DataTypeConstants;
/* loaded from: classes.dex */
public class PageVisitBean extends TrackEvent {
    private static final String PAGE_VISIT_ACTIVIES = "activities";
    private static final String PAGE_VISIT_DURATION = "duration";
    private static final String PAGE_VISIT_TIME = "time";
    private String mActivities;
    private long mDuration;
    private String mTime;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return DataTypeConstants.PAGE_VISIT;
    }

    public PageVisitBean(Context context) {
        super(context);
    }

    public String getTime() {
        return this.mTime;
    }

    public void setTime(String str) {
        this.mTime = str;
        addTrackInfo(PAGE_VISIT_TIME, str);
    }

    public long getDuration() {
        return this.mDuration;
    }

    public void setDuration(long j) {
        this.mDuration = j;
        addTrackInfo(PAGE_VISIT_DURATION, j);
    }

    public String getActivities() {
        return this.mActivities;
    }

    public void setActivities(String str) {
        this.mActivities = str;
        addTrackInfo(PAGE_VISIT_ACTIVIES, str);
    }

    public String toString() {
        return "time is :" + getTime() + "\nduration is :" + getDuration() + "\nactivities is :" + getActivities() + "\n";
    }
}
