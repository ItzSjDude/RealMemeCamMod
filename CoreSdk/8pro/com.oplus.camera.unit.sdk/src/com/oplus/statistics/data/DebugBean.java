package com.oplus.statistics.data;

import android.content.Context;
import com.oplus.statistics.DataTypeConstants;

/* JADX INFO: loaded from: classes.dex */
public class DebugBean extends TrackEvent {
    private static final String DEBUG = "debug";
    private boolean mFlag;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return DataTypeConstants.DEBUG_TYPE;
    }

    public DebugBean(Context context, boolean z) {
        super(context);
        this.mFlag = z;
        addTrackInfo(DEBUG, z);
    }

    public boolean getFlag() {
        return this.mFlag;
    }

    public void setFlag(boolean z) {
        this.mFlag = z;
        addTrackInfo(DEBUG, z);
    }

    public String toString() {
        return "type is :" + getEventType() + "\nflag is :" + getFlag() + "\n";
    }
}
