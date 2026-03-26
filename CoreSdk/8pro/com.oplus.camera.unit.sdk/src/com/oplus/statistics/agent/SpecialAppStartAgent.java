package com.oplus.statistics.agent;

import android.content.Context;
import com.oplus.statistics.data.AppStartBean;
import com.oplus.statistics.record.ProxyRecorder;
import com.oplus.statistics.util.TimeInfoUtil;

public class SpecialAppStartAgent {
    public static void onSpecialAppStart(Context context, int appId) {
        AppStartBean appStartBean = new AppStartBean(context, TimeInfoUtil.getFormatTime());
        appStartBean.setAppId(String.valueOf(appId));
        ProxyRecorder.getInstance().addTrackEvent(context, appStartBean);
    }
}
