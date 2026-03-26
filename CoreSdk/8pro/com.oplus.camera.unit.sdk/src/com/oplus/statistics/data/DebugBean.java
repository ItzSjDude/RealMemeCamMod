package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.statistics.DataTypeConstants;

public class DebugBean extends TrackEvent {
    private static final String DEBUG = "debug";
    private boolean mDebugFlag;

    @Override
    public int getEventType() {
        return DataTypeConstants.DEBUG_TYPE;
    }

    public DebugBean(@NonNull Context context, boolean debugFlag) {
        super(context);
        this.mDebugFlag = debugFlag;
        addTrackInfo(DEBUG, debugFlag);
    }

    public boolean getDebugFlag() {
        return this.mDebugFlag;
    }

    public void setDebugFlag(boolean debugFlag) {
        this.mDebugFlag = debugFlag;
        addTrackInfo(DEBUG, debugFlag);
    }

    @Override
    public String toString() {
        return "type is: " + getEventType() + "\ndebugFlag is: " + getDebugFlag() + "\n";
    }
}
