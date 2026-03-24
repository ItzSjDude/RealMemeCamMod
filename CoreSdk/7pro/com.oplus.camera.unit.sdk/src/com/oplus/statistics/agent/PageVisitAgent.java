package com.oplus.statistics.agent;

import android.content.Context;
import android.text.TextUtils;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.statistics.data.PageVisitBean;
import com.oplus.statistics.record.ProxyRecorder;
import com.oplus.statistics.storage.PreferenceHandler;
import com.oplus.statistics.strategy.WorkThread;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import com.oplus.statistics.util.TimeInfoUtil;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes.dex */
public class PageVisitAgent {
    private static final int PAGE_VISIT_MAX_COUNT = 10;
    private static final int PAUSE = 1;
    private static final int RESUME = 0;
    private static final String TAG = "PageVisitAgent";

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onPause$1() {
        return "onPause() called without context.";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onResume$3() {
        return "onPause() called without context.";
    }

    public void onPause(Context context) {
        if (context != null) {
            long currentTimeMillis = System.currentTimeMillis();
            final String className = getClassName(context);
            LogUtil.i(TAG, new Supplier() { // from class: com.oplus.statistics.agent.-$$Lambda$PageVisitAgent$b0CCV7UQJdlyYwkqx0g6-rBj2p0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return PageVisitAgent.lambda$onPause$0(className);
                }
            });
            WorkThread.execute(new HandlePageVisitRunnable(context, className, currentTimeMillis, 1));
            return;
        }
        LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.agent.-$$Lambda$PageVisitAgent$3MQwPahKOX66wlHbXarpzFLbqjs
            @Override // com.oplus.statistics.util.Supplier
            public final Object get() {
                return PageVisitAgent.lambda$onPause$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onPause$0(String str) {
        return "onPause: " + str;
    }

    public void onResume(Context context) {
        if (context != null) {
            long currentTimeMillis = System.currentTimeMillis();
            final String className = getClassName(context);
            LogUtil.i(TAG, new Supplier() { // from class: com.oplus.statistics.agent.-$$Lambda$PageVisitAgent$HcNO8VfgnfUBNYbG3ZCDm07ZMxQ
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return PageVisitAgent.lambda$onResume$2(className);
                }
            });
            WorkThread.execute(new HandlePageVisitRunnable(context, className, currentTimeMillis, 0));
            return;
        }
        LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.agent.-$$Lambda$PageVisitAgent$ocsEXUiFdumMn-Tb_AdwyY-l5cY
            @Override // com.oplus.statistics.util.Supplier
            public final Object get() {
                return PageVisitAgent.lambda$onResume$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onResume$2(String str) {
        return "onResume: " + str;
    }

    private static String getClassName(Context context) {
        return context != null ? context.getClass().getSimpleName() : "";
    }

    private static void recordPageVisit(Context context) {
        String pageVisitRoutes = PreferenceHandler.getPageVisitRoutes(context);
        int pageVisitDuration = PreferenceHandler.getPageVisitDuration(context);
        if (!TextUtils.isEmpty(pageVisitRoutes)) {
            PageVisitBean pageVisitBean = new PageVisitBean(context);
            pageVisitBean.setActivities(pageVisitRoutes);
            pageVisitBean.setDuration(pageVisitDuration);
            pageVisitBean.setTime(TimeInfoUtil.getFormatTime());
            ProxyRecorder.getInstance().addTrackEvent(context, pageVisitBean);
        }
        PreferenceHandler.setPageVisitDuration(context, 0);
        PreferenceHandler.setPageVisitRoutes(context, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void recordPause(Context context, String str, long j) {
        JSONArray jSONArray;
        long activityStartTime = PreferenceHandler.getActivityStartTime(context);
        int i = (int) ((j - activityStartTime) / 1000);
        if (str.equals(PreferenceHandler.getCurrentActivity(context)) && i >= 0 && -1 != activityStartTime) {
            try {
                String pageVisitRoutes = PreferenceHandler.getPageVisitRoutes(context);
                int pageVisitDuration = PreferenceHandler.getPageVisitDuration(context);
                if (!TextUtils.isEmpty(pageVisitRoutes)) {
                    jSONArray = new JSONArray(pageVisitRoutes);
                    if (jSONArray.length() >= 10) {
                        recordPageVisit(context);
                        jSONArray = new JSONArray();
                    }
                } else {
                    jSONArray = new JSONArray();
                }
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(str);
                jSONArray2.put(i);
                jSONArray.put(jSONArray2);
                PreferenceHandler.setPageVisitDuration(context, pageVisitDuration + i);
                PreferenceHandler.setPageVisitRoutes(context, jSONArray.toString());
            } catch (JSONException e) {
                e.getClass();
                LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.agent.-$$Lambda$k7x3uecw5Jm_i_TPQLD11HWygQE
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return e.toString();
                    }
                });
            } catch (Exception e2) {
                e2.getClass();
                LogUtil.e(TAG, new $$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE(e2));
                PreferenceHandler.setPageVisitRoutes(context, "");
                PreferenceHandler.setPageVisitDuration(context, 0);
            }
        }
        PreferenceHandler.setActivityEndTime(context, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void recordResume(Context context, String str, long j) {
        long activityEndTime = PreferenceHandler.getActivityEndTime(context);
        long activityStartTime = PreferenceHandler.getActivityStartTime(context);
        long sessionTimeout = PreferenceHandler.getSessionTimeout(context) * 1000;
        if (j - activityStartTime >= sessionTimeout && (-1 == activityEndTime || activityEndTime >= j || j - activityEndTime >= sessionTimeout)) {
            AppStartAgent.recordAppStart(context);
            recordPageVisit(context);
        }
        PreferenceHandler.setActivityStartTime(context, j);
        PreferenceHandler.setCurrentActivity(context, str);
    }

    /* loaded from: classes.dex */
    private static final class HandlePageVisitRunnable implements Runnable {
        private String mClassName;
        private Context mContext;
        private long mCurrentTimeMills;
        private int mType;

        public HandlePageVisitRunnable(Context context, String str, long j, int i) {
            this.mContext = context;
            this.mClassName = str;
            this.mCurrentTimeMills = j;
            this.mType = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (this.mType) {
                case 0:
                    PageVisitAgent.recordResume(this.mContext, this.mClassName, this.mCurrentTimeMills);
                    return;
                case 1:
                    PageVisitAgent.recordPause(this.mContext, this.mClassName, this.mCurrentTimeMills);
                    return;
                default:
                    return;
            }
        }
    }
}
