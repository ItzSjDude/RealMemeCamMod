package com.oplus.statistics.agent;

import android.content.Context;
import com.oplus.statistics.data.DebugBean;
import com.oplus.statistics.record.ProxyRecorder;

public class DebugAgent {
    public static void setDebug(Context context, boolean isDebug) {
        ProxyRecorder.getInstance().addTrackEvent(context, new DebugBean(context, isDebug));
    }
}
