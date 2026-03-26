package com.oplus.statistics.agent;

import android.content.Context;
import android.text.TextUtils;
import com.oplus.statistics.data.PageVisitBean;
import com.oplus.statistics.record.ProxyRecorder;
import com.oplus.statistics.storage.PreferenceHandler;
import com.oplus.statistics.strategy.WorkThread;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import com.oplus.statistics.util.TimeInfoUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PageVisitAgent {
    private static final int PAGE_VISIT_MAX_COUNT = 10;
    private static final int PAUSE = 1;
    private static final int RESUME = 0;
    private static final String TAG = "PageVisitAgent";

    static /* synthetic */ String lambda$onPause$1() {
        return "onPause() called without context.";
    }

    static /* synthetic */ String lambda$onResume$3() {
        return "onResume() called without context.";
    }

    public void onPause(Context context) {
        if (context != null) {
            long currentTimeMillis = System.currentTimeMillis();
            final String className = getClassName(context);
            LogUtil.i(TAG, new Supplier<String>() {
                @Override
                public String get() {
                    return PageVisitAgent.lambda$onPause$0(className);
                }
            });
            WorkThread.execute(new HandlePageVisitRunnable(context, className, currentTimeMillis, PAUSE));
            return;
        }
        LogUtil.e(TAG, new Supplier<String>() {
            @Override
            public String get() {
                return PageVisitAgent.lambda$onPause$1();
            }
        });
    }

    static /* synthetic */ String lambda$onPause$0(String className) {
        return "onPause: " + className;
    }

    public void onResume(Context context) {
        if (context != null) {
            long currentTimeMillis = System.currentTimeMillis();
            final String className = getClassName(context);
            LogUtil.i(TAG, new Supplier<String>() {
                @Override
                public String get() {
                    return PageVisitAgent.lambda$onResume$2(className);
                }
            });
            WorkThread.execute(new HandlePageVisitRunnable(context, className, currentTimeMillis, RESUME));
            return;
        }
        LogUtil.e(TAG, new Supplier<String>() {
            @Override
            public String get() {
                return PageVisitAgent.lambda$onResume$3();
            }
        });
    }

    static /* synthetic */ String lambda$onResume$2(String className) {
        return "onResume: " + className;
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

    public static void recordPause(Context context, String className, long endTime) {
        JSONArray routesJson;
        long activityStartTime = PreferenceHandler.getActivityStartTime(context);
        int durationInSeconds = (int) ((endTime - activityStartTime) / 1000);
        if (className.equals(PreferenceHandler.getCurrentActivity(context)) && durationInSeconds >= 0
                && -1 != activityStartTime) {
            try {
                String pageVisitRoutes = PreferenceHandler.getPageVisitRoutes(context);
                int totalDuration = PreferenceHandler.getPageVisitDuration(context);
                if (!TextUtils.isEmpty(pageVisitRoutes)) {
                    routesJson = new JSONArray(pageVisitRoutes);
                    if (routesJson.length() >= PAGE_VISIT_MAX_COUNT) {
                        recordPageVisit(context);
                        routesJson = new JSONArray();
                    }
                } else {
                    routesJson = new JSONArray();
                }
                JSONArray entryJson = new JSONArray();
                entryJson.put(className);
                entryJson.put(durationInSeconds);
                routesJson.put(entryJson);
                PreferenceHandler.setPageVisitDuration(context, totalDuration + durationInSeconds);
                PreferenceHandler.setPageVisitRoutes(context, routesJson.toString());
            } catch (JSONException jsonException) {
                LogUtil.e(TAG, () -> jsonException.toString());
            } catch (Exception exception) {
                LogUtil.e(TAG, () -> exception.toString());
                PreferenceHandler.setPageVisitRoutes(context, "");
                PreferenceHandler.setPageVisitDuration(context, 0);
            }
        }
        PreferenceHandler.setActivityEndTime(context, endTime);
    }

    public static void recordResume(Context context, String className, long startTime) {
        long activityEndTime = PreferenceHandler.getActivityEndTime(context);
        long activityStartTime = PreferenceHandler.getActivityStartTime(context);
        long sessionTimeout = ((long) PreferenceHandler.getSessionTimeout(context)) * 1000;
        if (startTime - activityStartTime >= sessionTimeout && (-1 == activityEndTime || activityEndTime >= startTime
                || startTime - activityEndTime >= sessionTimeout)) {
            AppStartAgent.recordAppStart(context);
            recordPageVisit(context);
        }
        PreferenceHandler.setActivityStartTime(context, startTime);
        PreferenceHandler.setCurrentActivity(context, className);
    }

    private static final class HandlePageVisitRunnable implements Runnable {
        private final String mClassName;
        private final Context mContext;
        private final long mCurrentTimeMillis;
        private final int mType;

        public HandlePageVisitRunnable(Context context, String className, long currentTimeMillis, int type) {
            this.mContext = context;
            this.mClassName = className;
            this.mCurrentTimeMillis = currentTimeMillis;
            this.mType = type;
        }

        @Override
        public void run() {
            if (this.mType == RESUME) {
                PageVisitAgent.recordResume(this.mContext, this.mClassName, this.mCurrentTimeMillis);
            } else if (this.mType == PAUSE) {
                PageVisitAgent.recordPause(this.mContext, this.mClassName, this.mCurrentTimeMillis);
            }
        }
    }
}
