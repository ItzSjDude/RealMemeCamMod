package com.oplus.statistics.agent;

import android.content.Context;
import com.oplus.statistics.data.AppStartBean;
import com.oplus.statistics.record.ProxyRecorder;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.TimeInfoUtil;

public class AppStartAgent {
    private static final String TAG = "AppStartAgent";

    public static void recordAppStart(Context context) {
        LogUtil.i(TAG, () -> "recordAppStart");
        ProxyRecorder.getInstance().addTrackEvent(context, new AppStartBean(context, TimeInfoUtil.getFormatTime()));
    }
}
