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

/* JADX INFO: loaded from: classes.dex */
public class StatisticsExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final String TAG = "StatisticsExceptionHand";
    private Context mContext;
    private Thread.UncaughtExceptionHandler mHandler = Thread.getDefaultUncaughtExceptionHandler();

    static /* synthetic */ String showErrorToast() {
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
    public void uncaughtException(Thread thread, Throwable throwable) {
        LogUtil.d(TAG, () -> StatisticsExceptionHandler.showErrorToast());
        String stackTrace = getStackTrace(throwable);
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
            uncaughtExceptionHandler.uncaughtException(thread, throwable);
        }
    }

    private String getStackTrace(Throwable throwable) {
        String stackTrace;
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            try {
                throwable.printStackTrace(printWriter);
                stackTrace = stringWriter.toString();
            } catch (Exception e) {
                LogUtil.e(TAG, () -> e.toString());
                printWriter.close();
                stackTrace = null;
            }
            return stackTrace;
        } finally {
            printWriter.close();
        }
    }
}
