package com.oplus.statistics.agent;

import android.content.Context;
import com.oplus.statistics.data.PeriodDataBean;
import com.oplus.statistics.data.SettingKeyBean;
import com.oplus.statistics.data.SettingKeyDataBean;
import com.oplus.statistics.record.ProxyRecorder;
import com.oplus.statistics.util.LogUtil;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class StaticPeriodDataRecord extends BaseAgent {
    private static final String TAG = "StaticPeriodDataRecord";

    public static void updateData(Context context, PeriodDataBean periodDataBean) {
        ProxyRecorder.getInstance().addTrackEvent(context, periodDataBean);
    }

    public static void updateSettingKey(Context context, SettingKeyDataBean settingKeyDataBean) {
        ProxyRecorder.getInstance().addTrackEvent(context, settingKeyDataBean);
    }

    public static void updateSettingKeyList(Context context, SettingKeyDataBean settingKeyDataBean) {
        ProxyRecorder.getInstance().addTrackEvent(context, settingKeyDataBean);
    }

    public static JSONArray listToJsonObject(List<SettingKeyBean> list) {
        JSONArray jsonArray = new JSONArray();
        if (list == null || list.isEmpty()) {
            return jsonArray;
        }
        try {
            for (SettingKeyBean bean : list) {
                if (bean != null) {
                    JSONObject jsonObject = new JSONObject();
                    jsonObject.put(SettingKeyBean.SETTING_KEY, bean.getSettingKey());
                    jsonObject.put(SettingKeyBean.HTTP_POST_KEY, bean.getHttpPostKey());
                    jsonObject.put(SettingKeyBean.METHOD_NAME, bean.getMethodName());
                    jsonObject.put(SettingKeyBean.DEFAULT_VALUE, bean.getDefaultValue());
                    jsonArray.put(jsonObject);
                }
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "listToJsonObject error: " + e.getMessage());
        }
        return jsonArray;
    }
}
