package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.statistics.DataTypeConstants;

public class PageVisitBean extends TrackEvent {
    private static final String PAGE_VISIT_ACTIVITIES = "activities";
    private static final String PAGE_VISIT_DURATION = "duration";
    private static final String PAGE_VISIT_TIME = "time";
    private String mActivities;
    private long mDuration;
    private String mTime;

    @Override
    public int getEventType() {
        return DataTypeConstants.PAGE_VISIT;
    }

    public PageVisitBean(@NonNull Context context) {
        super(context);
    }

    public String getTime() {
        return this.mTime;
    }

    public void setTime(String time) {
        this.mTime = time;
        addTrackInfo(PAGE_VISIT_TIME, time);
    }

    public long getDuration() {
        return this.mDuration;
    }

    public void setDuration(long duration) {
        this.mDuration = duration;
        addTrackInfo(PAGE_VISIT_DURATION, duration);
    }

    public String getActivities() {
        return this.mActivities;
    }

    public void setActivities(String activities) {
        this.mActivities = activities;
        addTrackInfo(PAGE_VISIT_ACTIVITIES, activities);
    }

    @Override
    public String toString() {
        return "time is: " + getTime() + "\nduration is: " + getDuration() + "\nactivities is: " + getActivities()
                + "\n";
    }
}
