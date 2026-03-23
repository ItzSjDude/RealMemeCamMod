package com.oplus.compat.net;

import android.net.INetworkStatsSession;
import android.net.NetworkStats;
import android.os.RemoteException;
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
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class INetworkStatsSessionNative {
    private static final String COMPONENT_NAME = "android.net.INetworkStatsSession";
    private static final String RESULT = "result";
    private static final String TAG = "INetworkStatsSessionNative";
    private INetworkStatsSession mINetworkStatsSession;
    private Object mINetworkStatsSessionWrapper;

    @OplusCompatibleMethod
    private static void closeQCompat(Object obj) {
    }

    @OplusCompatibleMethod
    private static Object getNetWorkStatsQCompat(Object obj, Object obj2) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getNetWorkStatsQCompat(Object obj, Object obj2, long j, long j2) {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<NetworkStats> getDeviceSummaryForNetwork;
        public static RefMethod<NetworkStats> getIncrementForNetwork;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, INetworkStatsSession.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public INetworkStatsSessionNative() {
        this.mINetworkStatsSessionWrapper = null;
        this.mINetworkStatsSession = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public INetworkStatsSessionNative(Object obj) {
        this.mINetworkStatsSessionWrapper = null;
        this.mINetworkStatsSession = null;
        this.mINetworkStatsSessionWrapper = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public INetworkStatsSessionNative(INetworkStatsSession iNetworkStatsSession) {
        this.mINetworkStatsSessionWrapper = null;
        this.mINetworkStatsSession = null;
        this.mINetworkStatsSession = iNetworkStatsSession;
    }

    @Oem
    @RequiresApi(api = 28)
    public NetworkStatsNative getIncrementForNetwork(NetworkTemplateNative networkTemplateNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            Object netWorkStatsQCompat = getNetWorkStatsQCompat(this.mINetworkStatsSessionWrapper, networkTemplateNative.mNetworkTemplateWrapper);
            if (netWorkStatsQCompat == null) {
                return null;
            }
            return new NetworkStatsNative(netWorkStatsQCompat);
        } else if (VersionUtils.isP()) {
            NetworkStats call = ReflectInfo.getIncrementForNetwork.call(this.mINetworkStatsSession, networkTemplateNative.mNetworkTemplate);
            if (call == null) {
                return null;
            }
            return new NetworkStatsNative(call);
        } else {
            throw new UnSupportedApiVersionException("not supported before P");
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void close() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return;
        }
        if (VersionUtils.isQ()) {
            closeQCompat(this.mINetworkStatsSessionWrapper);
        } else if (VersionUtils.isP()) {
            try {
                this.mINetworkStatsSession.close();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Permission(authStr = "getDeviceSummaryForNetwork", type = "epona")
    @Blocked
    @RequiresApi(api = 28)
    @System
    public NetworkStatsNative getDeviceSummaryForNetwork(NetworkTemplateNative networkTemplateNative, long j, long j2) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getDeviceSummaryForNetwork").withParcelable("networkTemplate", networkTemplateNative.mNetworkTemplate).withLong("start", j).withLong("end", j2).build()).execute();
            if (execute.isSuccessful()) {
                return new NetworkStatsNative(execute.getBundle().getParcelable(RESULT));
            }
            return null;
        } else if (VersionUtils.isQ()) {
            Object netWorkStatsQCompat = getNetWorkStatsQCompat(this.mINetworkStatsSessionWrapper, networkTemplateNative.mNetworkTemplateWrapper, j, j2);
            if (netWorkStatsQCompat == null) {
                return null;
            }
            return new NetworkStatsNative(netWorkStatsQCompat);
        } else if (VersionUtils.isP()) {
            NetworkStats call = ReflectInfo.getDeviceSummaryForNetwork.call(this.mINetworkStatsSession, networkTemplateNative.mNetworkTemplate, Long.valueOf(j), Long.valueOf(j2));
            if (call == null) {
                return null;
            }
            return new NetworkStatsNative(call);
        } else {
            throw new UnSupportedApiVersionException("not supported before P");
        }
    }
}
