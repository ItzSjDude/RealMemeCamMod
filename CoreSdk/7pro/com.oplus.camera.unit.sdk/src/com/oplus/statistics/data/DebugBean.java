package com.oplus.statistics.data;

import android.content.Context;
/* loaded from: classes.dex */
public class DebugBean extends TrackEvent {
    private static final String DEBUG = "debug";
    private boolean mFlag;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return 1009;
    }

    public DebugBean(Context context, boolean z) {
        super(context);
        this.mFlag = false;
        this.mFlag = z;
        addTrackInfo(DEBUG, this.mFlag);
    }

    public boolean getFlag() {
        return this.mFlag;
    }

    public void setFlag(boolean z) {
        this.mFlag = z;
        addTrackInfo(DEBUG, this.mFlag);
    }

    public String toString() {
        return "type is :" + getEventType() + "\nflag is :" + getFlag() + "\n";
    }
}
