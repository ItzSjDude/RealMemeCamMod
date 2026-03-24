package com.oplus.statistics.agent;

import android.content.Context;
import com.oplus.statistics.data.PeriodDataBean;
import com.oplus.statistics.data.SettingKeyBean;
import com.oplus.statistics.data.SettingKeyDataBean;
import com.oplus.statistics.record.ProxyRecorder;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
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

    public static JSONArray list2JsonObject(List<SettingKeyBean> list) {
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            try {
                for (SettingKeyBean settingKeyBean : list) {
                    if (settingKeyBean != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(SettingKeyBean.SETTING_KEY, settingKeyBean.getSettingKey());
                        jSONObject.put(SettingKeyBean.HTTP_POST_KEY, settingKeyBean.getHttpPostKey());
                        jSONObject.put(SettingKeyBean.METHOD_NAME, settingKeyBean.getMethodName());
                        jSONObject.put(SettingKeyBean.DEFAULE_VALUE, settingKeyBean.getDefaultValue());
                        jSONArray.put(jSONObject);
                    }
                }
            } catch (Exception e) {
                LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.agent.StaticPeriodDataRecord$$ExternalSyntheticLambda0
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return e.toString();
                    }
                });
            }
        }
        return jSONArray;
    }
}
