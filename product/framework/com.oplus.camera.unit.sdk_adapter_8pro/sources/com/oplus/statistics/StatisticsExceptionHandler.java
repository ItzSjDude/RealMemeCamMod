package com.oplus.statistics;

import android.content.Context;
import android.text.TextUtils;
import com.oplus.statistics.agent.ExceptionAgent;
import com.oplus.statistics.data.ExceptionBean;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
/* loaded from: classes.dex */
public class StatisticsExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final String TAG = "StatisticsExceptionHand";
    private Context mContext;
    private Thread.UncaughtExceptionHandler mHandler = Thread.getDefaultUncaughtExceptionHandler();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$uncaughtException$0() {
        return "StatisticsExceptionHandler: get the uncaughtException.";
    }

    public StatisticsExceptionHandler(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public void setStatisticsExceptionHandler() {
        if (this == this.mHandler) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.StatisticsExceptionHandler$$ExternalSyntheticLambda0
            @Override // com.oplus.statistics.util.Supplier
            public final Object get() {
                return StatisticsExceptionHandler.lambda$uncaughtException$0();
            }
        });
        String stackTrace = getStackTrace(th);
        long currentTimeMillis = System.currentTimeMillis();
        if (!TextUtils.isEmpty(stackTrace)) {
            ExceptionBean exceptionBean = new ExceptionBean(this.mContext);
            exceptionBean.setCount(1);
            exceptionBean.setEventTime(currentTimeMillis);
            exceptionBean.setException(stackTrace);
            ExceptionAgent.recordException(this.mContext, exceptionBean);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    private String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            try {
                th.printStackTrace(printWriter);
                return stringWriter.toString();
            } catch (Exception e) {
                LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.StatisticsExceptionHandler$$ExternalSyntheticLambda1
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return e.toString();
                    }
                });
                printWriter.close();
                return null;
            }
        } finally {
            printWriter.close();
        }
    }
}
