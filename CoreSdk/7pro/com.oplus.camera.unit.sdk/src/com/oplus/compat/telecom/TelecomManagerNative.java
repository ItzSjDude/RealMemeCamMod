package com.oplus.compat.telecom;

import android.content.Intent;
import android.os.Bundle;
import android.telecom.TelecomManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.telecom.TelecomManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class TelecomManagerNative {
    private static final String COMPONENT_NAME = "android.telecom.TelecomManager";
    private static final String TAG = "TelecomManagerActivity";

    @OplusCompatibleMethod
    private static void addNewOutgoingCallCompat(TelecomManager telecomManager, Intent intent) {
    }

    @OplusCompatibleMethod
    private static void oplusCancelMissedCallsNotificationCompat(TelecomManager telecomManager, Bundle bundle) {
    }

    @OplusCompatibleMethod
    private static void oplusCancelMissedCallsNotificationForQ(TelecomManager telecomManager, Bundle bundle) {
    }

    @OplusCompatibleMethod
    private static Object oplusInteractWithTelecomServiceCompat(TelecomManager telecomManager, int i, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object oplusInteractWithTelecomServiceForQ(TelecomManager telecomManager, int i, String str) {
        return null;
    }

    private TelecomManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Void> addNewOutgoingCall;
        private static RefMethod<Void> oplusCancelMissedCallsNotification;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, TelecomManager.class);
        }
    }

    @Permission(authStr = "addNewOutgoingCall", type = "epona")
    @RequiresApi(api = 25)
    @System
    public static void addNewOutgoingCall(Intent intent) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("addNewOutgoingCall").withParcelable("intent", intent).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, "response code error:" + execute.getMessage());
        } else if (VersionUtils.isQ()) {
            addNewOutgoingCallCompat((TelecomManager) Epona.getContext().getSystemService("telecom"), intent);
        } else if (VersionUtils.isN_MR1()) {
            ReflectInfo.addNewOutgoingCall.call((TelecomManager) Epona.getContext().getSystemService("telecom"), intent);
        } else {
            throw new UnSupportedApiVersionException("not supported before N");
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void oplusCancelMissedCallsNotification(TelecomManager telecomManager, Bundle bundle) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            ReflectInfo.oplusCancelMissedCallsNotification.call(telecomManager, bundle);
        } else if (VersionUtils.isOsVersion11_3()) {
            TelecomManagerWrapper.oplusCancelMissedCallsNotification(telecomManager, bundle);
        } else if (VersionUtils.isR()) {
            oplusCancelMissedCallsNotificationCompat(telecomManager, bundle);
        } else if (VersionUtils.isQ()) {
            oplusCancelMissedCallsNotificationForQ(telecomManager, bundle);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String oplusInteractWithTelecomService(TelecomManager telecomManager, int i, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isOsVersion11_3()) {
            return TelecomManagerWrapper.oplusInteractWithTelecomService(telecomManager, i, str);
        }
        if (VersionUtils.isR()) {
            return (String) oplusInteractWithTelecomServiceCompat(telecomManager, i, str);
        }
        if (VersionUtils.isQ()) {
            return (String) oplusInteractWithTelecomServiceForQ(telecomManager, i, str);
        }
        throw new UnSupportedApiVersionException();
    }
}
