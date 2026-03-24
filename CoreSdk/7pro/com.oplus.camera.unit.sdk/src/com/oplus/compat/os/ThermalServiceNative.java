package com.oplus.compat.os;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import java.util.Map;
/* loaded from: classes.dex */
public class ThermalServiceNative {
    private static final String COMPONENT_NAME = "android.os.IThermalService";
    private static final String RESULT = "result";
    private static final String TAG = "ThermalServiceNative";

    @Permission(authStr = "getCurrentTemperatures", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static TemperatureNative[] getCurrentTemperatures() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getCurrentTemperatures").build()).execute();
            int i = 0;
            if (execute.isSuccessful()) {
                Map map = (Map) execute.getBundle().getSerializable(RESULT);
                TemperatureNative[] temperatureNativeArr = new TemperatureNative[map.size()];
                for (Map.Entry entry : map.entrySet()) {
                    temperatureNativeArr[i] = new TemperatureNative((String) entry.getKey(), ((Float) entry.getValue()).floatValue());
                    i++;
                }
                return temperatureNativeArr;
            }
            Log.e(TAG, "getPowerSaveState: " + execute.getMessage());
            return new TemperatureNative[0];
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }
}
