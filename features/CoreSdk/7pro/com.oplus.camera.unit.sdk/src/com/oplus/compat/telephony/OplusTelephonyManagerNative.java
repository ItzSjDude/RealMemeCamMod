package com.oplus.compat.telephony;

import android.os.Bundle;
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
/* loaded from: classes.dex */
public class OplusTelephonyManagerNative {
    private static final String COMPONENT_NAME = "android.telephony.OplusTelephonyManager";
    private static final String KEY_EVENT_BUNDLE = "eventBundle";
    private static final String KEY_EVENT_ID = "eventId";
    private static final String KEY_SLOT_INDEX = "slotIndex";
    private static final String TAG = "OplusTelephonyManagerNative";

    private OplusTelephonyManagerNative() {
    }

    @Permission(authStr = "requestForTelephonyEvent", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static Bundle requestForTelephonyEvent(int i, int i2, Bundle bundle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("requestForTelephonyEvent").withInt(KEY_SLOT_INDEX, i).withInt(KEY_EVENT_ID, i2).withBundle(KEY_EVENT_BUNDLE, bundle).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle();
            }
            Log.e(TAG, "requestForTelephonyEvent: " + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
