package com.oplus.statistics.agent;

import android.content.Context;
import com.oplus.statistics.data.UserActionBean;
import com.oplus.statistics.record.ProxyRecorder;

public class UserActionAgent {
    public static void recordUserAction(Context context, UserActionBean userActionBean) {
        ProxyRecorder.getInstance().addTrackEvent(context, userActionBean);
    }
}
