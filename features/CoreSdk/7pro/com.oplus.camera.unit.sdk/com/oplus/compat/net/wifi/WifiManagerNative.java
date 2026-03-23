package com.oplus.compat.net.wifi;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.SoftApConfiguration;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.content.OplusFeatureConfigManager;
import com.oplus.epona.Call;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.net.wifi.WifiManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
@SynthesizedClassMap({$$Lambda$jfAFzrp_Qomcd9APGXJBBzUbL6I.class, $$Lambda$JUIMjV2Bnk8D1hxuXJlpYUOlz50.class})
/* loaded from: classes.dex */
public class WifiManagerNative {
    private static final String COMPONENT_NAME = "android.net.wifi.WifiManager";
    @Oem
    @RequiresApi(api = 30)
    public static String EXTRA_WIFI_AP_FAILURE_DESCRIPTION = null;
    @Grey
    @RequiresApi(api = 21)
    public static String EXTRA_WIFI_AP_STATE = null;
    private static final String KEY_ACTION = "action";
    private static final String KEY_ENABLED = "enabled";
    private static final String KEY_ERROR_CODE = "errorCode";
    private static final String KEY_RESULT = "result";
    private static final String KEY_WIFI_CONFIGURATION = "WifiConfiguration";
    private static final String TAG = "WifiManagerNative";
    @Oem
    @RequiresApi(api = 30)
    public static String WIFI_AP_FAILURE_DESC_NO_5GHZ_SUPPORT;
    @Grey
    @RequiresApi(api = 21)
    public static int WIFI_AP_STATE_ENABLED;
    @Grey
    @RequiresApi(api = 21)
    public static int WIFI_AP_STATE_FAILED;
    @Oem
    @RequiresApi(api = 30)
    public static String WIFI_COUNTRY_CODE_CHANGED_ACTION;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int WIFI_GENERATION_4;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int WIFI_GENERATION_5;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int WIFI_GENERATION_6;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int WIFI_GENERATION_DEFAULT;

    /* loaded from: classes.dex */
    public interface ActionListenerNative {
        @Grey
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        void onFailure(int i);

        @Grey
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        void onSuccess();
    }

    @OplusCompatibleMethod
    private static Object blockClientCompat(WifiManager wifiManager, Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static void connectCompat(WifiManager wifiManager, int i, Runnable runnable, Consumer<Integer> consumer) {
    }

    @OplusCompatibleMethod
    private static void connectCompat(WifiManager wifiManager, WifiConfiguration wifiConfiguration, Runnable runnable, Consumer<Integer> consumer) {
    }

    @OplusCompatibleMethod
    private static void disableDualStaCompat(WifiManager wifiManager) {
    }

    @OplusCompatibleMethod
    private static Object enableDualStaByForceCompat(WifiManager wifiManager, boolean z) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object enableDualStaCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static void forgetCompat(WifiManager wifiManager, int i, Runnable runnable, Consumer<Integer> consumer) {
    }

    @OplusCompatibleMethod
    private static Object getAllDualStaAppsCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getAllSlaAcceleratedAppsCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getAllSlaAppsAndStatesCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getBlockedHotspotClientsCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getHotspotClientsCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusSta2ConnectionInfoCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getSlaAppStateCompat(WifiManager wifiManager, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWifiApConfigurationCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWifiApStateCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWifiSharingConfigurationCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initExtraWifiApState() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initWifiApStateEnabled() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initWifiApStateFailed() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isCertificateExistCompat(WifiManager wifiManager, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isCertificateExpiredCompat(WifiManager wifiManager, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isCertificatePreInstalledCompat(WifiManager wifiManager, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isDualBandSupportedCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isDualStaSupportedCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isMptcpSupportedCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isPasspointFeatureSupportCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isSlaSupportedCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isWIFI6SupportedCompat(WifiManager wifiManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object passpointANQPScanResultsCompat(WifiManager wifiManager, List<ScanResult> list) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setPasspointCertifiedStateCompat(WifiManager wifiManager, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setSlaAppStateCompat(WifiManager wifiManager, String str, boolean z) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setWifiApConfigurationCompat(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setWifiSharingConfigurationCompat(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
    }

    @OplusCompatibleMethod
    private static Object unblockClientCompat(WifiManager wifiManager, Object obj) {
        return null;
    }

    private WifiManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Integer> getSoftApWifiGeneration;
        private static RefMethod<Boolean> isDBSSupported;
        private static RefMethod<Boolean> isDualBandSupported;
        private static RefMethod<Boolean> isWifiApEnabled;
        @MethodName(params = {boolean.class})
        private static RefMethod<Boolean> setWifiEnabled;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, WifiManagerNative.COMPONENT_NAME);
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectInfoR {
        private static RefObject<String> EXTRA_WIFI_AP_FAILURE_DESCRIPTION;
        private static RefObject<String> WIFI_AP_FAILURE_DESC_NO_5GHZ_SUPPORT;
        private static RefObject<String> WIFI_COUNTRY_CODE_CHANGED_ACTION;
        @MethodName(params = {boolean.class})
        public static RefMethod<Void> enableWifiCoverageExtendFeature;
        private static RefMethod<Boolean> isExtendingWifi;
        private static RefMethod<Boolean> isWifiCoverageExtendFeatureEnabled;

        private ReflectInfoR() {
        }

        static {
            if (!VersionUtils.isR() || VersionUtils.isS()) {
                return;
            }
            RefClass.load(ReflectInfoR.class, WifiManagerNative.COMPONENT_NAME);
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectInfoQ {
        private static RefInt WIFI_GENERATION_4;
        private static RefInt WIFI_GENERATION_5;
        private static RefInt WIFI_GENERATION_6;
        private static RefInt WIFI_GENERATION_DEFAULT;

        private ReflectInfoQ() {
        }

        static {
            if (!VersionUtils.isQ() || VersionUtils.isR()) {
                return;
            }
            RefClass.load(ReflectInfoQ.class, WifiManagerNative.COMPONENT_NAME);
        }
    }

    static {
        try {
            if (!VersionUtils.isS()) {
                if (VersionUtils.isR()) {
                    EXTRA_WIFI_AP_FAILURE_DESCRIPTION = (String) ReflectInfoR.EXTRA_WIFI_AP_FAILURE_DESCRIPTION.get(null);
                    WIFI_COUNTRY_CODE_CHANGED_ACTION = (String) ReflectInfoR.WIFI_COUNTRY_CODE_CHANGED_ACTION.get(null);
                    WIFI_AP_FAILURE_DESC_NO_5GHZ_SUPPORT = (String) ReflectInfoR.WIFI_AP_FAILURE_DESC_NO_5GHZ_SUPPORT.get(null);
                } else if (VersionUtils.isQ()) {
                    WIFI_GENERATION_DEFAULT = ReflectInfoQ.WIFI_GENERATION_DEFAULT.get(null);
                    WIFI_GENERATION_4 = ReflectInfoQ.WIFI_GENERATION_4.get(null);
                    WIFI_GENERATION_5 = ReflectInfoQ.WIFI_GENERATION_5.get(null);
                    WIFI_GENERATION_6 = ReflectInfoQ.WIFI_GENERATION_6.get(null);
                } else {
                    throw new UnSupportedApiVersionException();
                }
            }
            if (VersionUtils.isL()) {
                EXTRA_WIFI_AP_STATE = "wifi_state";
                WIFI_AP_STATE_FAILED = 14;
                WIFI_AP_STATE_ENABLED = 13;
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    @Oem
    @RequiresApi(api = 30)
    @Deprecated
    public static boolean isWifiCoverageExtendFeatureEnabled(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isR()) {
            Boolean bool = (Boolean) ReflectInfoR.isWifiCoverageExtendFeatureEnabled.call(wifiManager, new Object[0]);
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Oem
    @RequiresApi(api = 30)
    @Deprecated
    public static boolean isExtendingWifi(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isR()) {
            return ((Boolean) ReflectInfoR.isExtendingWifi.call(wifiManager, new Object[0])).booleanValue();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Oem
    @RequiresApi(api = 30)
    @Deprecated
    public static void enableWifiCoverageExtendFeature(WifiManager wifiManager, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isR()) {
            ReflectInfoR.enableWifiCoverageExtendFeature.call(wifiManager, Boolean.valueOf(z));
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Oem
    @RequiresApi(api = 30)
    public static int getSoftApWifiGeneration(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Integer) ReflectInfo.getSoftApWifiGeneration.call(wifiManager, new Object[0])).intValue();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "setWifiApConfiguration", type = "epona")
    @RequiresApi(api = 21)
    @System
    public static boolean setWifiApConfiguration(WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setWifiApConfiguration").build();
            Bundle bundle = new Bundle();
            bundle.putParcelable(KEY_WIFI_CONFIGURATION, wifiConfiguration);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        } else if (VersionUtils.isQ()) {
            return ((Boolean) setWifiApConfigurationCompat((WifiManager) Epona.getContext().getSystemService("wifi"), wifiConfiguration)).booleanValue();
        } else {
            if (VersionUtils.isL()) {
                return ((WifiManager) Epona.getContext().getSystemService("wifi")).setWifiApConfiguration(wifiConfiguration);
            }
            throw new UnSupportedApiVersionException("Not Supported Before L");
        }
    }

    @Permission(authStr = "getWifiApConfiguration", type = "epona")
    @RequiresApi(api = 21)
    @System
    public static WifiConfiguration getWifiApConfiguration(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getWifiApConfiguration").build()).execute();
            if (execute.isSuccessful()) {
                return (WifiConfiguration) execute.getBundle().getParcelable(KEY_RESULT);
            }
            return null;
        } else if (VersionUtils.isQ()) {
            return (WifiConfiguration) getWifiApConfigurationCompat((WifiManager) context.getSystemService("wifi"));
        } else {
            if (VersionUtils.isL()) {
                return ((WifiManager) context.getSystemService("wifi")).getWifiApConfiguration();
            }
            throw new UnSupportedApiVersionException("Not Supported Before L");
        }
    }

    @Permission(authStr = "setSoftApConfiguration", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static boolean setSoftApConfiguration(SoftApConfiguration softApConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setSoftApConfiguration").withParcelable("softApConfiguration", softApConfiguration).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "getSoftApConfiguration", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static SoftApConfiguration getSoftApConfiguration() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSoftApConfiguration").build()).execute();
            if (execute.isSuccessful()) {
                return (SoftApConfiguration) execute.getBundle().getParcelable(KEY_RESULT);
            }
            return null;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "getConnectionInfo", type = "epona")
    @Deprecated
    @RequiresApi(api = 30)
    @System
    public static WifiInfo getConnectionInfo(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getConnectionInfo").build()).execute();
            if (execute.isSuccessful()) {
                return (WifiInfo) execute.getBundle().getParcelable(KEY_RESULT);
            }
            Log.e(TAG, "getConnectionInfo: " + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "getConfiguredNetworks", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static List<WifiConfiguration> getConfiguredNetworks() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported upper S");
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getConfiguredNetworks").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(KEY_RESULT);
            }
            return Collections.emptyList();
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "getPrivilegedConfiguredNetWorks", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static List<WifiConfiguration> getPrivilegedConfiguredNetWorks() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported upper S");
        }
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getPrivilegedConfiguredNetWorks").build();
            build.putBundle(new Bundle());
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(KEY_RESULT);
            }
            return Collections.emptyList();
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "setWifiEnabled", type = "epona")
    @RequiresApi(api = 26)
    @System
    public static boolean setWifiEnabled(boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setWifiEnabled").build();
            Bundle bundle = new Bundle();
            bundle.putBoolean(KEY_ENABLED, z);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        } else if (VersionUtils.isO()) {
            return ((Boolean) ReflectInfo.setWifiEnabled.call((WifiManager) Epona.getContext().getApplicationContext().getSystemService("wifi"), Boolean.valueOf(z))).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before O");
        }
    }

    @Permission(authStr = "startSoftAp", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean startSoftAp(WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("startSoftAp").build();
            Bundle bundle = new Bundle();
            bundle.putParcelable(KEY_WIFI_CONFIGURATION, wifiConfiguration);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Grey
    @RequiresApi(api = 21)
    public static int getWifiApState(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return wifiManager.getWifiApState();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return WifiManagerWrapper.getWifiApState(wifiManager);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getWifiApStateCompat(wifiManager)).intValue();
        }
        if (VersionUtils.isL()) {
            return wifiManager.getWifiApState();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "stopSoftAp", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static boolean stopSoftAp() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("stopSoftAp").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "isWifiApEnabled", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean isWifiApEnabled() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isWifiApEnabled").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        } else if (VersionUtils.isQ()) {
            return ((Boolean) ReflectInfo.isWifiApEnabled.call((WifiManager) Epona.getContext().getApplicationContext().getSystemService("wifi"), new Object[0])).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before Q");
        }
    }

    @Grey
    @Permission(authStr = "connect", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void connect(WifiManager wifiManager, WifiConfiguration wifiConfiguration, final ActionListenerNative actionListenerNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("connect").build();
            Bundle bundle = new Bundle();
            bundle.putParcelable(KEY_WIFI_CONFIGURATION, wifiConfiguration);
            build.putBundle(bundle);
            if (actionListenerNative != null) {
                Epona.newCall(build).asyncExecute(new Call.Callback() { // from class: com.oplus.compat.net.wifi.WifiManagerNative.1
                    @Override // com.oplus.epona.Call.Callback
                    public void onReceive(Response response) {
                        Bundle bundle2;
                        String string;
                        Log.e(WifiManagerNative.TAG, "code is : " + response.getCode());
                        if (!response.isSuccessful() || (bundle2 = response.getBundle()) == null || (string = bundle2.getString(WifiManagerNative.KEY_ACTION)) == null) {
                            return;
                        }
                        char c = 65535;
                        int hashCode = string.hashCode();
                        if (hashCode != -530890460) {
                            if (hashCode == 249705131 && string.equals("onFailure")) {
                                c = 1;
                            }
                        } else if (string.equals("onSuccess")) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                ActionListenerNative.this.onSuccess();
                                return;
                            case 1:
                                ActionListenerNative.this.onFailure(bundle2.getInt(WifiManagerNative.KEY_ERROR_CODE));
                                return;
                            default:
                                return;
                        }
                    }
                });
            }
        } else if (VersionUtils.isQ()) {
            Objects.requireNonNull(actionListenerNative);
            $$Lambda$JUIMjV2Bnk8D1hxuXJlpYUOlz50 __lambda_juimjv2bnk8d1hxuxjlpyuolz50 = new $$Lambda$JUIMjV2Bnk8D1hxuXJlpYUOlz50(actionListenerNative);
            Objects.requireNonNull(actionListenerNative);
            connectCompat(wifiManager, wifiConfiguration, __lambda_juimjv2bnk8d1hxuxjlpyuolz50, new $$Lambda$jfAFzrp_Qomcd9APGXJBBzUbL6I(actionListenerNative));
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void connect(WifiManager wifiManager, int i, final ActionListenerNative actionListenerNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            wifiManager.connect(i, new WifiManager.ActionListener() { // from class: com.oplus.compat.net.wifi.WifiManagerNative.2
                public void onSuccess() {
                    ActionListenerNative.this.onSuccess();
                }

                public void onFailure(int i2) {
                    ActionListenerNative.this.onFailure(i2);
                }
            });
        } else if (VersionUtils.isOsVersion11_3()) {
            WifiManagerWrapper.connect(wifiManager, i, actionListenerNative != null ? new WifiManagerWrapper.ActionListenerWrapper() { // from class: com.oplus.compat.net.wifi.WifiManagerNative.3
                public void onSuccess() {
                    ActionListenerNative.this.onSuccess();
                }

                public void onFailure(int i2) {
                    ActionListenerNative.this.onFailure(i2);
                }
            } : null);
        } else if (VersionUtils.isQ()) {
            Objects.requireNonNull(actionListenerNative);
            $$Lambda$JUIMjV2Bnk8D1hxuXJlpYUOlz50 __lambda_juimjv2bnk8d1hxuxjlpyuolz50 = new $$Lambda$JUIMjV2Bnk8D1hxuXJlpYUOlz50(actionListenerNative);
            Objects.requireNonNull(actionListenerNative);
            connectCompat(wifiManager, i, __lambda_juimjv2bnk8d1hxuxjlpyuolz50, new $$Lambda$jfAFzrp_Qomcd9APGXJBBzUbL6I(actionListenerNative));
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = 21)
    public static void forget(@NonNull WifiManager wifiManager, int i, final ActionListenerNative actionListenerNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            wifiManager.forget(i, new WifiManager.ActionListener() { // from class: com.oplus.compat.net.wifi.WifiManagerNative.4
                public void onSuccess() {
                    ActionListenerNative.this.onSuccess();
                }

                public void onFailure(int i2) {
                    ActionListenerNative.this.onFailure(i2);
                }
            });
        } else if (VersionUtils.isQ()) {
            forgetAfterQ(wifiManager, i, actionListenerNative);
        } else if (VersionUtils.isL()) {
            forgetBeforeQ(wifiManager, i, actionListenerNative);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    private static void forgetAfterQ(WifiManager wifiManager, int i, final ActionListenerNative actionListenerNative) {
        if (VersionUtils.isOsVersion11_3()) {
            WifiManagerWrapper.forget(wifiManager, i, actionListenerNative != null ? new WifiManagerWrapper.ActionListenerWrapper() { // from class: com.oplus.compat.net.wifi.WifiManagerNative.5
                public void onSuccess() {
                    ActionListenerNative.this.onSuccess();
                }

                public void onFailure(int i2) {
                    ActionListenerNative.this.onFailure(i2);
                }
            } : null);
        } else if (actionListenerNative != null) {
            Objects.requireNonNull(actionListenerNative);
            $$Lambda$JUIMjV2Bnk8D1hxuXJlpYUOlz50 __lambda_juimjv2bnk8d1hxuxjlpyuolz50 = new $$Lambda$JUIMjV2Bnk8D1hxuXJlpYUOlz50(actionListenerNative);
            Objects.requireNonNull(actionListenerNative);
            forgetCompat(wifiManager, i, __lambda_juimjv2bnk8d1hxuxjlpyuolz50, new $$Lambda$jfAFzrp_Qomcd9APGXJBBzUbL6I(actionListenerNative));
        }
    }

    private static void forgetBeforeQ(WifiManager wifiManager, int i, final ActionListenerNative actionListenerNative) {
        wifiManager.forget(i, new WifiManager.ActionListener() { // from class: com.oplus.compat.net.wifi.WifiManagerNative.6
            public void onSuccess() {
                if (ActionListenerNative.this != null) {
                    ActionListenerNative.this.onSuccess();
                }
            }

            public void onFailure(int i2) {
                if (ActionListenerNative.this != null) {
                    ActionListenerNative.this.onFailure(i2);
                }
            }
        });
    }

    @Grey
    @RequiresApi(api = 21)
    public static boolean isDualBandSupported(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isDualBandSupportedCompat(wifiManager)).booleanValue();
        }
        if (VersionUtils.isL()) {
            return ((Boolean) ReflectInfo.isDualBandSupported.call(wifiManager, new Object[0])).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isSlaSupported(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isSlaSupportedCompat(wifiManager)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static WifiConfiguration getWifiSharingConfiguration(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return (WifiConfiguration) getWifiSharingConfigurationCompat(wifiManager);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setWifiSharingConfiguration(WifiManager wifiManager, WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            setWifiSharingConfigurationCompat(wifiManager, wifiConfiguration);
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String[] getAllSlaAppsAndStates(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return (String[]) getAllSlaAppsAndStatesCompat(wifiManager);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static List<Object> getHotspotClients(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return (List) getHotspotClientsCompat(wifiManager);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static List<Object> getBlockedHotspotClients(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return (List) getBlockedHotspotClientsCompat(wifiManager);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean blockClient(WifiManager wifiManager, Object obj) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) blockClientCompat(wifiManager, obj)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean unblockClient(WifiManager wifiManager, Object obj) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) unblockClientCompat(wifiManager, obj)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String[] getAllSlaAcceleratedApps(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return (String[]) getAllSlaAcceleratedAppsCompat(wifiManager);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int enableDualSta(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) enableDualStaCompat(wifiManager)).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int enableDualStaByForce(WifiManager wifiManager, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) enableDualStaByForceCompat(wifiManager, z)).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void disableDualSta(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            disableDualStaCompat(wifiManager);
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static WifiInfo getOplusSta2ConnectionInfo(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return (WifiInfo) getOplusSta2ConnectionInfoCompat(wifiManager);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String[] getAllDualStaApps(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return (String[]) getAllDualStaAppsCompat(wifiManager);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isDualStaSupported(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isDualStaSupportedCompat(wifiManager)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean setSlaAppState(WifiManager wifiManager, String str, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) setSlaAppStateCompat(wifiManager, str, z)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean getSlaAppState(WifiManager wifiManager, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) getSlaAppStateCompat(wifiManager, str)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isMptcpSupported(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isMptcpSupportedCompat(wifiManager)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isCertificateExpired(WifiManager wifiManager, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isCertificateExpiredCompat(wifiManager, str)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isCertificatePreInstalled(WifiManager wifiManager, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isCertificatePreInstalledCompat(wifiManager, str)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isCertificateExist(WifiManager wifiManager, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isCertificateExistCompat(wifiManager, str)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isPasspointFeatureSupport(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isPasspointFeatureSupportCompat(wifiManager)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean setPasspointCertifiedState(WifiManager wifiManager, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) setPasspointCertifiedStateCompat(wifiManager, str)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static List<ScanResult> passpointANQPScanResults(WifiManager wifiManager, List<ScanResult> list) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return (List) passpointANQPScanResultsCompat(wifiManager, list);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isWIFI6Supported(WifiManager wifiManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isWIFI6SupportedCompat(wifiManager)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Permission(authStr = "getFactoryMacAddresses", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static String[] getFactoryMacAddresses() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getFactoryMacAddresses").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getStringArray(KEY_RESULT);
            }
            return null;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isDBSSupported() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return OplusFeatureConfigManager.getInstance().hasFeature("oplus.software.wlan.dbs");
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) ReflectInfo.isDBSSupported.call((WifiManager) Epona.getContext().getApplicationContext().getSystemService("wifi"), new Object[0])).booleanValue();
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}
