package com.oplus.compat.telephony;

import android.content.Context;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class OplusOSTelephonyManagerNative {
    private static final String GET_SIM_SERIAL_NUMBER_GEMINI_RESULT = "get_keyguard_stored_password_quality_result";
    private static final String GET_SUBSCRIBERID_GEMINI_RESULT = "get_subscriber_id_gemini";
    private static final String IS_SLOT_TWO_DISABLED = "is_slot_two_disabled";
    private static final String SLOT_ID_VALUE = "slotId";
    private static final String SUBSCRIPTION_VALUE = "subscription";
    private static final String TAG = "OplusOSTelephonyManagerNative";
    private static final String COMPONENT_NAME = getComponentName();
    private static final String OPLUS_IS_IMS_REGISTERED_RESULT = getOplusIsImsRegisteredResult();
    private static final String OPLUS_GET_QCCOM_LTECDMA_IMEI_RESULT = getOplusGetQccomLtecdmaImeiResult();

    @OplusCompatibleMethod
    private static Object getComponentNameForCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusGetQccomLtecdmaImeiResultForCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusGetQcomLTECDMAImeiForCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusIsImsRegisteredForCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusIsImsRegisteredResultForCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusIsVolteEnabledByPlatformForCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getSimSerialNumberGeminiForQ(Context context, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static String getSubscriberIdGeminiForQ(Context context, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object oplusIsImsRegisteredForQ(Context context, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object oplusIsVolteEnabledByPlatformForQ(Context context, int i) {
        return null;
    }

    private OplusOSTelephonyManagerNative() {
    }

    private static String getComponentName() {
        return VersionUtils.isOsVersion11_3() ? "android.telephony.OplusOSTelephonyManager" : (String) getComponentNameForCompat();
    }

    private static String getOplusIsImsRegisteredResult() {
        return VersionUtils.isOsVersion11_3() ? "oplus_is_ims_registered_result" : (String) getOplusIsImsRegisteredResultForCompat();
    }

    private static String getOplusGetQccomLtecdmaImeiResult() {
        return VersionUtils.isOsVersion11_3() ? "oplus_get_qcom_ltecdma_imei" : (String) getOplusGetQccomLtecdmaImeiResultForCompat();
    }

    @Permission(authStr = "getSimSerialNumberGemini", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static String getSimSerialNumberGemini(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSimSerialNumberGemini").withInt(SLOT_ID_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(GET_SIM_SERIAL_NUMBER_GEMINI_RESULT);
            }
            Log.e(TAG, "getSimSerialNumberGemini: " + execute.getMessage());
            return "";
        } else if (VersionUtils.isQ()) {
            return (String) getSimSerialNumberGeminiForQ(Epona.getContext(), i);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "oplusIsImsRegistered", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean oplusIsImsRegistered(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(getOplusIsImsRegistered()).withInt(SLOT_ID_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(OPLUS_IS_IMS_REGISTERED_RESULT);
            }
            Log.e(TAG, "oplusIsImsRegistered: " + execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return ((Boolean) oplusIsImsRegisteredForQ(Epona.getContext(), i)).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    private static String getOplusIsImsRegistered() {
        return VersionUtils.isOsVersion11_3() ? "oplusIsImsRegistered" : (String) getOplusIsImsRegisteredForCompat();
    }

    @Permission(authStr = "oplusGetQcomLTECDMAImei", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static String[] oplusGetQcomLTECDMAImei(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(getOplusGetQcomLTECDMAImei()).withInt(SUBSCRIPTION_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getStringArray(OPLUS_GET_QCCOM_LTECDMA_IMEI_RESULT);
            }
            Log.e(TAG, "oplusGetQcomLTECDMAImei: " + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    private static String getOplusGetQcomLTECDMAImei() {
        return VersionUtils.isOsVersion11_3() ? "oplusGetQcomLTECDMAImei" : (String) getOplusGetQcomLTECDMAImeiForCompat();
    }

    @Permission(authStr = "getSubscriberIdGemini", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static String getSubscriberIdGemini(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSubscriberIdGemini").withInt(SLOT_ID_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(GET_SUBSCRIBERID_GEMINI_RESULT);
            }
            Log.e(TAG, "getSubscriberIdGemini: " + execute.getMessage());
            return null;
        } else if (VersionUtils.isQ()) {
            return getSubscriberIdGeminiForQ(Epona.getContext(), i);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "oplusIsVolteEnabledByPlatform", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean oplusIsVolteEnabledByPlatform(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(getOplusIsVolteEnabledByPlatform()).withInt("phoneId", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("result");
            }
            Log.e(TAG, "oplusIsVolteEnabledByPlatform: " + execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return ((Boolean) oplusIsVolteEnabledByPlatformForQ(Epona.getContext(), i)).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    private static String getOplusIsVolteEnabledByPlatform() {
        return VersionUtils.isOsVersion11_3() ? "oplusIsVolteEnabledByPlatform" : (String) getOplusIsVolteEnabledByPlatformForCompat();
    }

    @Permission(authStr = "getSubState", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static int getSubState(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSubState").withInt("subId", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt("result");
            }
            Log.e(TAG, "getSubState: " + execute.getMessage());
            return 0;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "activateSubId", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void activateSubId(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("activateSubId").withInt("subId", i).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "isSlotTwoDisabled", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static String isSlotTwoDisabled() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isSlotTwoDisabled").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(IS_SLOT_TWO_DISABLED);
            }
            Log.e(TAG, "isSlotTwoDisabled: " + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
