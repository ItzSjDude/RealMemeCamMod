package com.oplus.statistics.agent;

import android.content.Context;
import com.oplus.statistics.data.AppStartBean;
import com.oplus.statistics.record.ProxyRecorder;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import com.oplus.statistics.util.TimeInfoUtil;

/* JADX INFO: loaded from: classes.dex */
public class AppStartAgent {
    private static final String TAG = "AppStartAgent";

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: 0x0000: CONST_STR  "调用AppStart" */
    static /* synthetic */ String lambda$recordAppStart$0() {
        return "调用AppStart";
    }

    public static void recordAppStart(Context context) {
        LogUtil.i(TAG, new Supplier() { // from class: com.oplus.statistics.agent.AppStartAgent$$ExternalSyntheticLambda0
            @Override // com.oplus.statistics.util.Supplier
            public final Object get() {
                return AppStartAgent.lambda$recordAppStart$0();
            }
        });
        ProxyRecorder.getInstance().addTrackEvent(context, new AppStartBean(context, TimeInfoUtil.getFormatTime()));
    }
}
