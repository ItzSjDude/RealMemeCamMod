package com.oplus.compat.telephony;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Call;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.telephony.TelephonyManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
import com.oplus.utils.reflect.RefMethod;
import java.util.List;
/* loaded from: classes.dex */
public class TelephonyManagerNative {
    private static final String COMPONENT_NAME = "android.telephony.TelephonyManager";
    private static final String KEY_PHONE_ID = "phoneId";
    private static final String KEY_RESULT = "result";
    private static final String KEY_SLOT_INDEX = "slotIndex";
    private static final String KEY_SUB_ID = "subId";
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static final int LISTEN_PRECISE_CALL_STATE = 2048;
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static int NETWORK_CLASS_2_G = 0;
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static int NETWORK_CLASS_3_G = 0;
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static int NETWORK_CLASS_4_G = 0;
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static int NETWORK_CLASS_5_G = 0;
    private static final String RESULT = "result";
    private static final String TAG = "TelephonyManagerNative";
    private static final int TYPE_GET_DATA_ENABLED = 1;
    private static final int TYPE_GET_DATA_ENABLED_INT = 2;
    private static final int TYPE_GET_IMEI = 1;
    private static final int TYPE_GET_IMEI_INT = 2;

    @OplusCompatibleMethod
    private static Object initNetworkClass2G() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initNetworkClass3G() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initNetworkClass4G() {
        return null;
    }

    static {
        try {
            if (VersionUtils.isS()) {
                NETWORK_CLASS_2_G = ReflectOemTelephonyUtils.NETWORK_CLASS_2_G.get(null);
                NETWORK_CLASS_3_G = ReflectOemTelephonyUtils.NETWORK_CLASS_3_G.get(null);
                NETWORK_CLASS_4_G = ReflectOemTelephonyUtils.NETWORK_CLASS_4_G.get(null);
                NETWORK_CLASS_5_G = ReflectOemTelephonyUtils.NETWORK_CLASS_5_G.get(null);
            } else if (VersionUtils.isOsVersion11_3()) {
                NETWORK_CLASS_2_G = TelephonyManagerWrapper.NETWORK_CLASS_2_G;
                NETWORK_CLASS_3_G = TelephonyManagerWrapper.NETWORK_CLASS_3_G;
                NETWORK_CLASS_4_G = TelephonyManagerWrapper.NETWORK_CLASS_4_G;
            } else if (VersionUtils.isQ()) {
                NETWORK_CLASS_2_G = ((Integer) initNetworkClass2G()).intValue();
                NETWORK_CLASS_3_G = ((Integer) initNetworkClass3G()).intValue();
                NETWORK_CLASS_4_G = ((Integer) initNetworkClass4G()).intValue();
            } else {
                Log.e(TAG, "not supported before Q");
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private TelephonyManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Integer> getCurrentPhoneTypeForSlot;
        public static RefMethod<Integer> getIntAtIndex;
        @MethodName(name = "getLine1Number", params = {int.class})
        public static RefMethod<String> getLine1Number;
        public static RefMethod<String> getNetworkOperatorForPhone;
        public static RefMethod<Integer> getSimCount;
        @MethodName(name = "getSimCountryIso", params = {int.class})
        public static RefMethod<String> getSimCountryIso;
        public static RefMethod<String> getSimOperatorNameForPhone;
        public static RefMethod<String> getSimOperatorNumericForPhone;
        @MethodName(name = "getTelephonyProperty", params = {int.class, String.class, String.class})
        public static RefMethod<String> getTelephonyProperty;
        @MethodName(name = "hasIccCard", params = {int.class})
        public static RefMethod<Boolean> hasIccCard;
        public static RefMethod<Boolean> isMultiSimEnabled;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, TelephonyManagerNative.COMPONENT_NAME);
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectOemTelephonyUtils {
        public static RefInt NETWORK_CLASS_2_G;
        public static RefInt NETWORK_CLASS_3_G;
        public static RefInt NETWORK_CLASS_4_G;
        public static RefInt NETWORK_CLASS_5_G;
        private static Class<?> Type = RefClass.load(ReflectOemTelephonyUtils.class, "com.oplus.internal.telephony.utils.OemTelephonyUtils");

        private ReflectOemTelephonyUtils() {
        }
    }

    @Permission(authStr = "setUserDataEnabled", type = "epona")
    @RequiresApi(api = 26)
    @System
    public static void setDataEnabled(boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setUserDataEnabled").withBoolean("enable", z).build()).execute();
        } else if (VersionUtils.isO()) {
            ((TelephonyManager) Epona.getContext().getSystemService("phone")).setDataEnabled(z);
        } else {
            throw new UnSupportedApiVersionException("not supported before O");
        }
    }

    @Permission(authStr = "isUserDataEnabled", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean getDataEnabled(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isUserDataEnabled").withInt(CameraConstant.TiltShiftParamKeys.TYPE, 1).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("result");
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return ((TelephonyManager) context.getSystemService("phone")).getDataEnabled();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "isUserDataEnabled", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean getDataEnabled(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isUserDataEnabled").withInt(KEY_SUB_ID, i).withInt(CameraConstant.TiltShiftParamKeys.TYPE, 2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("result");
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return ((TelephonyManager) context.getSystemService("phone")).getDataEnabled(i);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "getImeiForSlot", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static String getImei() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getImeiForSlot").withInt(CameraConstant.TiltShiftParamKeys.TYPE, 1).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getImeiForSlot", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static String getImei(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getImeiForSlot").withInt(CameraConstant.TiltShiftParamKeys.TYPE, 2).withInt(KEY_SLOT_INDEX, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getMeidForSlot", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static String getMeid(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getMeidForSlot").withInt(KEY_SLOT_INDEX, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 28)
    public static boolean isMultiSimEnabled(TelephonyManager telephonyManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            return ReflectInfo.isMultiSimEnabled.call(telephonyManager, new Object[0]).booleanValue();
        }
        throw new UnSupportedApiVersionException("not supported before P");
    }

    @Blocked
    @RequiresApi(api = 30)
    public static int getIntAtIndex(ContentResolver contentResolver, String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ReflectInfo.getIntAtIndex.call(null, contentResolver, str, Integer.valueOf(i)).intValue();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 26)
    public static Boolean hasIccCard(TelephonyManager telephonyManager, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isO()) {
            return ReflectInfo.hasIccCard.call(telephonyManager, Integer.valueOf(i));
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static int getSimCount(TelephonyManager telephonyManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ReflectInfo.getSimCount.call(telephonyManager, new Object[0]).intValue();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static String getSimOperatorNameForPhone(TelephonyManager telephonyManager, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return telephonyManager.getSimOperatorNameForPhone(i);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String getTelephonyProperty(int i, String str, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return ReflectInfo.getTelephonyProperty.call(null, Integer.valueOf(i), str, str2);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static String getNetworkOperatorForPhone(TelephonyManager telephonyManager, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ReflectInfo.getNetworkOperatorForPhone.call(telephonyManager, Integer.valueOf(i));
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static String getLine1Number(TelephonyManager telephonyManager, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ReflectInfo.getLine1Number.call(telephonyManager, Integer.valueOf(i));
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getSimOperatorNumericForPhone", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static String getSimOperatorNumericForPhone(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getSimOperatorNumericForPhone.call((TelephonyManager) Epona.getContext().getSystemService("phone"), Integer.valueOf(i));
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSimOperatorNumericForPhone").withInt(KEY_PHONE_ID, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            Log.e(TAG, execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getDataNetworkType", type = "epona")
    @RequiresApi(api = 30)
    public static int getDataNetworkType() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported upper S");
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getDataNetworkType").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt("result");
            }
            Log.e(TAG, execute.getMessage());
            return 0;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "TelephonyManager", type = "epona")
    @RequiresApi(api = 30)
    public static String getSubscriberId() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSubscriberId").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            Log.e(TAG, execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "TelephonyManager", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static String getSubscriberId(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSubscriberIdHasPara").withInt(KEY_SUB_ID, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            Log.e(TAG, execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getSimSerialNumber", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static String getSimSerialNumber(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSimSerialNumber").withInt(KEY_SUB_ID, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            Log.e(TAG, execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getSimCountryIso", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static String getSimCountryIso(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getSimCountryIso.call(null, Integer.valueOf(i));
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSimCountryIso").withInt(KEY_SUB_ID, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return "";
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getCurrentPhoneTypeForSlot", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static int getCurrentPhoneTypeForSlot(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getCurrentPhoneTypeForSlot.call((TelephonyManager) Epona.getContext().getSystemService("phone"), Integer.valueOf(i)).intValue();
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getCurrentPhoneTypeForSlot").withInt(KEY_SLOT_INDEX, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt("result");
            }
            return 0;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "setDataRoamingEnabled", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void setDataRoamingEnabled(boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setDataRoamingEnabled").withBoolean("enabled", z).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "setPreferredNetworkType", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean setPreferredNetworkType(int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setPreferredNetworkType").withInt(KEY_SUB_ID, i).withInt("networkType", i2).build();
            Epona.newCall(build).execute();
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("result");
            }
            Log.e(TAG, execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return ((TelephonyManager) Epona.getContext().getSystemService("phone")).setPreferredNetworkType(i, i2);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String getIccAuthentication(TelephonyManager telephonyManager, int i, int i2, int i3, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return telephonyManager.getIccAuthentication(i, i2, i3, str);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @Permission(authStr = "getIccAuthenticationByEpona", type = "epona")
    @RequiresApi(api = 30)
    public static String getIccAuthenticationByEpona(int i, int i2, int i3, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getIccAuthenticationByEpona").withInt(KEY_SUB_ID, i).withInt("appType", i2).withInt("authType", i3).withString("data", str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            Log.e(TAG, execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Blocked
    @RequiresApi(api = 28)
    public static boolean setRoamingOverride(TelephonyManager telephonyManager, List<String> list, List<String> list2, List<String> list3, List<String> list4) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            try {
                return telephonyManager.setRoamingOverride(list, list2, list3, list4);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        throw new UnSupportedApiVersionException("not supported before P");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getPreferredNetworkType(TelephonyManager telephonyManager, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return telephonyManager.getPreferredNetworkType(i);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void listen(final PhoneStateListenerNative phoneStateListenerNative, final int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("listen").withInt("events", i).withLong("token", phoneStateListenerNative.getToken()).build();
            Epona.newCall(build).asyncExecute(new Call.Callback() { // from class: com.oplus.compat.telephony.TelephonyManagerNative.1
                @Override // com.oplus.epona.Call.Callback
                public void onReceive(Response response) {
                    if (!response.isSuccessful()) {
                        Log.e(TelephonyManagerNative.TAG, "onReceive: " + response.getMessage());
                        return;
                    }
                    Bundle bundle = response.getBundle();
                    if (2048 == i) {
                        phoneStateListenerNative.onPreciseCallStateChanged(new PreciseCallStateNative(bundle.getInt("ringingCall"), bundle.getInt("foregroundCall"), bundle.getInt("backgroundCall")));
                    }
                }
            });
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}
