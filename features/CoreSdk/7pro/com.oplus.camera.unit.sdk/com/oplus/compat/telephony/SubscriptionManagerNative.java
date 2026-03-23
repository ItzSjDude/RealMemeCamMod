package com.oplus.compat.telephony;

import android.content.Context;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.telephony.SubscriptionManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class SubscriptionManagerNative {
    private static final String COMPONENT_NAME = "android.telephony.SubscriptionManager";
    private static final String KEY_ENABLED = "enabled";
    private static final String KEY_RESULT = "result";
    private static final String KEY_SLOT_INDEX = "slotIndex";
    private static final String KEY_SUBSCRIPTION_ID = "subscriptionId";
    private static final String KEY_SUB_ID = "subId";
    private static final String TAG = "SubscriptionManagerNative";

    @OplusCompatibleMethod
    private static Object getActiveDataSubscriptionIdQCompat() {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<SubscriptionInfo> getDefaultDataSubscriptionInfo;
        public static RefMethod<SubscriptionInfo> getDefaultVoiceSubscriptionInfo;
        public static RefMethod<Integer> getPhoneId;
        public static RefMethod<int[]> getSubId;
        public static RefMethod<Boolean> isActiveSubId;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, SubscriptionManager.class);
        }
    }

    private SubscriptionManagerNative() {
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static SubscriptionInfo getDefaultVoiceSubscriptionInfo(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            try {
                return ReflectInfo.getDefaultVoiceSubscriptionInfo.call((SubscriptionManager) context.getSystemService("telephony_subscription_service"), new Object[0]);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static SubscriptionInfo getDefaultDataSubscriptionInfo(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return ReflectInfo.getDefaultDataSubscriptionInfo.call((SubscriptionManager) context.getSystemService("telephony_subscription_service"), new Object[0]);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int[] getSubId(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isO_MR1()) {
            return ReflectInfo.getSubId.call((SubscriptionManager) context.getSystemService("telephony_subscription_service"), Integer.valueOf(i));
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isActiveSubId(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            Boolean call = ReflectInfo.isActiveSubId.call((SubscriptionManager) context.getSystemService("telephony_subscription_service"), Integer.valueOf(i));
            if (call != null) {
                return call.booleanValue();
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getPhoneId", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static int getPhoneId(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getPhoneId.call(null, Integer.valueOf(i)).intValue();
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getPhoneId").withInt(KEY_SUB_ID, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(KEY_RESULT);
            }
            return 0;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getActiveSubscriptionInfoForSimSlotIndex", type = "epona")
    @RequiresApi(api = 30)
    public static SubscriptionInfo getActiveSubscriptionInfoForSimSlotIndex(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported upper S");
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getActiveSubscriptionInfoForSimSlotIndex").withInt(KEY_SLOT_INDEX, i).build()).execute();
            if (execute.isSuccessful()) {
                return (SubscriptionInfo) execute.getBundle().getParcelable(KEY_RESULT);
            }
            return null;
        } else if (VersionUtils.isP()) {
            return ((SubscriptionManager) Epona.getContext().getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoForSimSlotIndex(i);
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
    }

    @Permission(authStr = "getActiveSubscriptionInfoList", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static List<SubscriptionInfo> getActiveSubscriptionInfoList() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported upper S");
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getActiveSubscriptionInfoList").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(KEY_RESULT);
            }
            return Collections.emptyList();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getDefaultVoicePhoneId() throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            try {
                return SubscriptionManager.getDefaultVoicePhoneId();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getActiveDataSubscriptionId() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return SubscriptionManager.getActiveDataSubscriptionId();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return SubscriptionManagerWrapper.getActiveDataSubscriptionId();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getActiveDataSubscriptionIdQCompat()).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Permission(authStr = "setUiccApplicationsEnabled", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void setUiccApplicationsEnabled(int i, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setUiccApplicationsEnabled").withInt(KEY_SUBSCRIPTION_ID, i).withBoolean(KEY_ENABLED, z).build()).execute().isSuccessful()) {
                return;
            }
            Log.e("SubscriptionManager", "setUiccApplicationsEnabled (" + i + ", " + z + ") failed");
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getAvailableSubscriptionInfoList", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static List<SubscriptionInfo> getAvailableSubscriptionInfoList() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getAvailableSubscriptionInfoList").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(KEY_RESULT);
            }
            return Collections.emptyList();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
