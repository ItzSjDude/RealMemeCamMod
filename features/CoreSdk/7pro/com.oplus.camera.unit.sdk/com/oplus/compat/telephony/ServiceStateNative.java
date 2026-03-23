package com.oplus.compat.telephony;

import android.os.Bundle;
import android.telephony.ServiceState;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class ServiceStateNative {
    private static final String ACTION_GET_NR_STATE = "getNrState";
    private static final String NAME = "android.telephony.ServiceState";
    private static final String RESULT = "result";
    private static final String SERVICE_STATE = "ServiceState";
    private static final String TAG = "ServiceStateNative";

    @OplusCompatibleMethod
    private static Object newFromBundleCompat(Bundle bundle) {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Integer> getNrState;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, ServiceState.class);
        }
    }

    private ServiceStateNative() {
    }

    @Permission(authStr = ACTION_GET_NR_STATE, type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static int getNrState(@NonNull ServiceState serviceState) throws UnSupportedApiVersionException {
        if (!VersionUtils.appPlatformExists()) {
            return ReflectInfo.getNrState.call(serviceState, new Object[0]).intValue();
        }
        if (VersionUtils.isS()) {
            return ReflectInfo.getNrState.call(serviceState, new Object[0]).intValue();
        }
        if (VersionUtils.isR()) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(SERVICE_STATE, serviceState);
            Request build = new Request.Builder().setComponentName(NAME).setActionName(ACTION_GET_NR_STATE).build();
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            return 0;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static ServiceState newFromBundle(@NonNull Bundle bundle) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return ServiceState.newFromBundle(bundle);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @RequiresApi(api = 28)
    public static int getDataRegState(@NonNull ServiceState serviceState) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            return serviceState.getDataRegState();
        }
        throw new UnSupportedApiVersionException("not supported before P");
    }
}
