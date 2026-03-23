package com.oplus.compat.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.net.ConnectivityManagerNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Call;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.net.ConnectivityManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConstant;
import java.util.List;
import java.util.Objects;
@SynthesizedClassMap({$$Lambda$joSRBQKxVfP0_FdokrxParJLrzA.class, $$Lambda$UZDcM_MaeHNDCGYv2_yY0exC8Uk.class})
/* loaded from: classes.dex */
public class ConnectivityManagerNative {
    private static final String ACTION = "action";
    private static final String COMPONENT_NAME = "android.net.ConnectivityManager";
    private static final String CONSTANT_TETHERING_WIFI = "TETHERING_WIFI";
    private static final String TAG = "ConnectivityManagerNative";
    @Permission(authStr = "getConstant", type = "epona")
    @RequiresApi(api = 30)
    public static int TETHERING_WIFI;

    /* loaded from: classes.dex */
    public interface OnStartTetheringCallbackNative {
        void onTetheringFailed();

        void onTetheringStarted();
    }

    @OplusCompatibleMethod
    private static Object readArpFileCompat(ConnectivityManager connectivityManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static void startTetheringCompat(ConnectivityManager connectivityManager, Runnable runnable, Runnable runnable2, Handler handler, int i, boolean z) {
    }

    @OplusCompatibleMethod
    private static void stopTetheringQCompat(ConnectivityManager connectivityManager, int i) {
    }

    private ConnectivityManagerNative() {
    }

    static {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getConstant").build()).execute();
            if (execute.isSuccessful()) {
                TETHERING_WIFI = execute.getBundle().getInt(CONSTANT_TETHERING_WIFI);
                return;
            } else {
                Log.e(TAG, "Epona Communication failed, static initializer failed.");
                return;
            }
        }
        Log.e(TAG, "Not supported before R");
    }

    @Permission(authStr = "setAirplaneMode", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void setAirplaneMode(Context context, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setAirplaneMode").withBoolean("enable", z).build()).execute().isSuccessful()) {
                return;
            }
            Log.e(TAG, "setAirplaneMode: call failed");
            return;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "stopTethering", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    @System
    public static void stopTethering(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("stopTethering").withInt(CameraConstant.TiltShiftParamKeys.TYPE, i).build()).execute().isSuccessful()) {
                return;
            }
            Log.e(TAG, "stopTethering is not connected with Epona");
        } else if (VersionUtils.isQ()) {
            stopTetheringQCompat((ConnectivityManager) Epona.getContext().getSystemService("connectivity"), i);
        } else if (VersionUtils.isN()) {
            ((ConnectivityManager) Epona.getContext().getSystemService("connectivity")).stopTethering(i);
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before N");
        }
    }

    @Permission(authStr = "startTethering", type = "epona")
    @RequiresApi(api = 26)
    @System
    public static void startTethering(int i, boolean z, final OnStartTetheringCallbackNative onStartTetheringCallbackNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("startTethering").withInt(CameraConstant.TiltShiftParamKeys.TYPE, i).withBoolean("showProvisioningUi", z).build();
            if (onStartTetheringCallbackNative != null) {
                Epona.newCall(build).asyncExecute(new Call.Callback() { // from class: com.oplus.compat.net.ConnectivityManagerNative.1
                    @Override // com.oplus.epona.Call.Callback
                    public void onReceive(Response response) {
                        Bundle bundle;
                        String string;
                        Log.e(ConnectivityManagerNative.TAG, "code is : " + response.getCode());
                        if (!response.isSuccessful() || (bundle = response.getBundle()) == null || (string = bundle.getString(ConnectivityManagerNative.ACTION)) == null) {
                            return;
                        }
                        char c = 65535;
                        int hashCode = string.hashCode();
                        if (hashCode != -1785200688) {
                            if (hashCode == 1908223758 && string.equals("onTetheringFailed")) {
                                c = 1;
                            }
                        } else if (string.equals("onTetheringStarted")) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                OnStartTetheringCallbackNative.this.onTetheringStarted();
                                return;
                            case 1:
                                OnStartTetheringCallbackNative.this.onTetheringFailed();
                                return;
                            default:
                                return;
                        }
                    }
                });
            }
        } else if (VersionUtils.isO()) {
            ((ConnectivityManager) Epona.getContext().getSystemService("connectivity")).startTethering(i, z, onStartTetheringCallbackNative != null ? new ConnectivityManager.OnStartTetheringCallback() { // from class: com.oplus.compat.net.ConnectivityManagerNative.2
                public void onTetheringStarted() {
                    OnStartTetheringCallbackNative.this.onTetheringStarted();
                }

                public void onTetheringFailed() {
                    OnStartTetheringCallbackNative.this.onTetheringFailed();
                }
            } : null);
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before O");
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static void startTethering(ConnectivityManager connectivityManager, int i, boolean z, final OnStartTetheringCallbackNative onStartTetheringCallbackNative, Handler handler) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            connectivityManager.startTethering(i, z, new ConnectivityManager.OnStartTetheringCallback() { // from class: com.oplus.compat.net.ConnectivityManagerNative.3
                public void onTetheringStarted() {
                    OnStartTetheringCallbackNative.this.onTetheringStarted();
                }

                public void onTetheringFailed() {
                    OnStartTetheringCallbackNative.this.onTetheringFailed();
                }
            }, handler);
            return;
        }
        if (VersionUtils.isOsVersion11_3()) {
            ConnectivityManagerWrapper.startTethering(connectivityManager, i, z, onStartTetheringCallbackNative != null ? new ConnectivityManagerWrapper.OnStartTetheringCallbackWrapper() { // from class: com.oplus.compat.net.ConnectivityManagerNative.4
                public void onTetheringStarted() {
                    OnStartTetheringCallbackNative.this.onTetheringStarted();
                }

                public void onTetheringFailed() {
                    OnStartTetheringCallbackNative.this.onTetheringFailed();
                }
            } : null, handler);
        } else if (!VersionUtils.isQ()) {
            if (VersionUtils.isN()) {
                connectivityManager.startTethering(i, z, onStartTetheringCallbackNative != null ? new ConnectivityManager.OnStartTetheringCallback() { // from class: com.oplus.compat.net.ConnectivityManagerNative.5
                    public void onTetheringStarted() {
                        OnStartTetheringCallbackNative.this.onTetheringStarted();
                    }

                    public void onTetheringFailed() {
                        OnStartTetheringCallbackNative.this.onTetheringFailed();
                    }
                } : null, handler);
                return;
            }
            throw new UnSupportedApiVersionException();
        } else if (onStartTetheringCallbackNative != null) {
            Objects.requireNonNull(onStartTetheringCallbackNative);
            Runnable runnable = new Runnable() { // from class: com.oplus.compat.net.-$$Lambda$UZDcM_MaeHNDCGYv2_yY0exC8Uk
                @Override // java.lang.Runnable
                public final void run() {
                    ConnectivityManagerNative.OnStartTetheringCallbackNative.this.onTetheringStarted();
                }
            };
            Objects.requireNonNull(onStartTetheringCallbackNative);
            startTetheringCompat(connectivityManager, runnable, new Runnable() { // from class: com.oplus.compat.net.-$$Lambda$joSRBQKxVfP0_FdokrxParJLrzA
                @Override // java.lang.Runnable
                public final void run() {
                    ConnectivityManagerNative.OnStartTetheringCallbackNative.this.onTetheringFailed();
                }
            }, handler, i, z);
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static List<String> readArpFile(ConnectivityManager connectivityManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ConnectivityManagerWrapper.readArpFile(connectivityManager);
        }
        if (VersionUtils.isQ()) {
            return (List) readArpFileCompat(connectivityManager);
        }
        throw new UnSupportedApiVersionException();
    }
}
