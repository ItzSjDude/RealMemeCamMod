package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.statistics.DataOverSizeException;
import com.oplus.statistics.DataTypeConstants;
import com.oplus.statistics.util.CastUtil;
import com.oplus.statistics.util.LogUtil;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

public class CommonBatchBean extends CommonBean {
    private static final String MAP_LIST = "mapList";
    private static final int SINGLE_DATA_MAX_LENGTH = 131072;
    private static final String TAG = "CommonBatchBean";

    @Override
    public int getEventType() {
        return DataTypeConstants.COMMON_BATCH;
    }

    public CommonBatchBean(Context context) {
        super(context);
    }

    public CommonBatchBean(@NonNull Context context, String appId, String logTag, String eventId) {
        super(context, appId, logTag, eventId);
    }

    public void setLogMap(List<Map<String, String>> logList) throws DataOverSizeException {
        JSONArray jsonArray = new JSONArray();
        for (Map<String, String> map : logList) {
            if (map != null) {
                jsonArray.put(CastUtil.map2JsonObject(map));
            }
        }
        String logMapJson = jsonArray.toString();
        if (logMapJson.length() >= SINGLE_DATA_MAX_LENGTH) {
            String errorMessage = "DataOverSizeException: " + getAppId() + ", " + getLogTag() + ", " + getEventID();
            LogUtil.w(TAG, () -> errorMessage);
            throw new DataOverSizeException(errorMessage);
        }
        this.mLogMap = logMapJson;
        addTrackInfo(MAP_LIST, logMapJson);
    }
}
