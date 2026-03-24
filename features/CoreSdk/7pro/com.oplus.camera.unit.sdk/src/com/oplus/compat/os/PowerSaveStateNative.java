package com.oplus.compat.os;

import android.os.PowerSaveState;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.RefBoolean;
import com.oplus.utils.reflect.RefClass;
/* loaded from: classes.dex */
public class PowerSaveStateNative {
    private static final String COMPONENT_NAME = "android.os.PowerSaveState";
    private static final String RESULT = "result";
    private static final String TAG = "PowerSaveStateNative";

    /* loaded from: classes.dex */
    private static class RefPowerSaveStateInfo {
        public static RefBoolean batterySaverEnabled;

        private RefPowerSaveStateInfo() {
        }

        static {
            RefClass.load(RefPowerSaveStateInfo.class, PowerSaveStateNative.COMPONENT_NAME);
        }
    }

    private PowerSaveStateNative(PowerSaveState powerSaveState) {
    }

    @Permission(authStr = "batterySaverEnabled", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static boolean getBatterySaverEnabled(PowerSaveState powerSaveState) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return RefPowerSaveStateInfo.batterySaverEnabled.get(powerSaveState);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("batterySaverEnabled").withParcelable("powerSaveState", powerSaveState).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before R");
        }
    }
}
