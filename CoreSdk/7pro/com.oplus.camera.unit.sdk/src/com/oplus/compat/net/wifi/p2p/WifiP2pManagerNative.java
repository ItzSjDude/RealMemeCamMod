package com.oplus.compat.net.wifi.p2p;

import android.content.Context;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pGroupList;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.net.wifi.p2p.WifiP2pManagerNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefConstructor;
import com.oplus.utils.reflect.RefMethod;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
@SynthesizedClassMap({$$Lambda$ZNKnpChxh9lah7cAdFKvZuV5w14.class})
/* loaded from: classes.dex */
public class WifiP2pManagerNative {
    private static final String COMPONENT_NAME = "android.net.wifi.p2p.WifiP2pManager";
    private static final String TAG = "WifiP2pManagerNative";

    /* loaded from: classes.dex */
    public interface AddPersistentGroupListenerNative {
        void onAddPersistentGroupAdded(WifiP2pGroup wifiP2pGroup);
    }

    @OplusCompatibleMethod
    private static void requestPersistentGroupInfoCompat(Context context, WifiP2pManager.Channel channel, Consumer<Object> consumer) {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Void> addPersistentGroup;
        private static RefMethod<Void> connect;
        private static RefMethod<Void> deletePersistentGroup;
        @MethodName(name = "discoverPeers", params = {WifiP2pManager.Channel.class, int.class, WifiP2pManager.ActionListener.class})
        private static RefMethod<Void> discoverPeers;
        private static RefMethod<Void> requestPersistentGroupInfo;
        private static RefMethod<Void> setWifiP2pBandType;
        private static RefMethod<Void> setWifiP2pChannels;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, WifiP2pManager.class);
        }
    }

    /* loaded from: classes.dex */
    private static class WifiP2pGroupListNativeReflectInfo {
        @MethodName(params = {WifiP2pGroupList.class})
        private static RefConstructor<WifiP2pGroupListNative> WifiP2pGroupListNative;

        private WifiP2pGroupListNativeReflectInfo() {
        }

        static {
            RefClass.load(WifiP2pGroupListNativeReflectInfo.class, WifiP2pGroupListNative.class);
        }
    }

    private WifiP2pManagerNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void deletePersistentGroup(Context context, WifiP2pManager.Channel channel, int i, WifiP2pManager.ActionListener actionListener) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            ReflectInfo.deletePersistentGroup.call((WifiP2pManager) context.getSystemService("wifip2p"), channel, Integer.valueOf(i), actionListener);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void requestPersistentGroupInfo(Context context, WifiP2pManager.Channel channel, final PersistentGroupInfoListenerNative persistentGroupInfoListenerNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfo.requestPersistentGroupInfo.call((WifiP2pManager) context.getSystemService("wifip2p"), channel, new WifiP2pManager.PersistentGroupInfoListener() { // from class: com.oplus.compat.net.wifi.p2p.WifiP2pManagerNative.1
                public void onPersistentGroupInfoAvailable(WifiP2pGroupList wifiP2pGroupList) {
                    PersistentGroupInfoListenerNative.this.onPersistentGroupInfoAvailable((WifiP2pGroupListNative) WifiP2pGroupListNativeReflectInfo.WifiP2pGroupListNative.newInstance(wifiP2pGroupList));
                }
            });
        } else if (VersionUtils.isQ()) {
            Objects.requireNonNull(persistentGroupInfoListenerNative);
            requestPersistentGroupInfoCompat(context, channel, new Consumer() { // from class: com.oplus.compat.net.wifi.p2p.-$$Lambda$ZNKnpChxh9lah7cAdFKvZuV5w14
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WifiP2pManagerNative.PersistentGroupInfoListenerNative.this.onPersistentGroupInfoAvailableCompat(obj);
                }
            });
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Oem
    @RequiresApi(api = 30)
    @System
    public static void setWifiP2pBandType(Context context, WifiP2pManager.Channel channel, int i, WifiP2pManager.ActionListener actionListener) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfo.setWifiP2pBandType.call((WifiP2pManager) context.getSystemService("wifip2p"), channel, Integer.valueOf(i), actionListener);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void addPersistentGroup(WifiP2pManager.Channel channel, Map<String, String> map, AddPersistentGroupListenerNative addPersistentGroupListenerNative) throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isQ()) {
                ReflectInfo.addPersistentGroup.callWithException((WifiP2pManager) Epona.getContext().getSystemService("wifip2p"), channel, map, createAddPersistentGroupListenerProxy(addPersistentGroupListenerNative));
                return;
            }
            throw new UnSupportedApiVersionException("not supported before Q");
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th.toString());
        }
    }

    private static Object createAddPersistentGroupListenerProxy(AddPersistentGroupListenerNative addPersistentGroupListenerNative) throws UnSupportedApiVersionException {
        if (addPersistentGroupListenerNative == null) {
            return null;
        }
        try {
            AddPersistentGroupListenerProxy addPersistentGroupListenerProxy = new AddPersistentGroupListenerProxy(addPersistentGroupListenerNative);
            Class<?> cls = Class.forName("android.net.wifi.p2p.WifiP2pManager$AddPersistentGroupListener");
            return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, addPersistentGroupListenerProxy);
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AddPersistentGroupListenerProxy implements InvocationHandler {
        private final AddPersistentGroupListenerNative mListener;

        public AddPersistentGroupListenerProxy(AddPersistentGroupListenerNative addPersistentGroupListenerNative) {
            this.mListener = addPersistentGroupListenerNative;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (method.getName().equals("onAddPersistentGroupAdded")) {
                this.mListener.onAddPersistentGroupAdded((WifiP2pGroup) objArr[0]);
                return null;
            }
            return method.invoke(this.mListener, objArr);
        }
    }

    /* loaded from: classes.dex */
    public interface PersistentGroupInfoListenerNative {
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        void onPersistentGroupInfoAvailable(WifiP2pGroupListNative wifiP2pGroupListNative);

        default void onPersistentGroupInfoAvailableCompat(Object obj) {
            onPersistentGroupInfoAvailable(new WifiP2pGroupListNative(obj));
        }
    }

    @Permission(authStr = "setMiracastMode", type = "epona")
    @Oem
    @RequiresApi(api = 30)
    @System
    public static void setMiracastMode(int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setMiracastMode").withInt("mode", i).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void setWifiP2pChannels(@NonNull WifiP2pManager.Channel channel, int i, int i2, @Nullable WifiP2pManager.ActionListener actionListener) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            ReflectInfo.setWifiP2pChannels.call((WifiP2pManager) Epona.getContext().getSystemService("wifip2p"), channel, Integer.valueOf(i), Integer.valueOf(i2), actionListener);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void discoverPeers(@NonNull WifiP2pManager.Channel channel, int i, @NonNull WifiP2pManager.ActionListener actionListener) throws UnSupportedApiVersionException {
        WifiP2pManager wifiP2pManager = (WifiP2pManager) Epona.getContext().getSystemService("wifip2p");
        if (VersionUtils.isS()) {
            wifiP2pManager.discoverPeers(channel, actionListener);
        } else if (VersionUtils.isQ()) {
            ReflectInfo.discoverPeers.call(wifiP2pManager, channel, Integer.valueOf(i), actionListener);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void connect(WifiP2pManager.Channel channel, WifiP2pConfig wifiP2pConfig, int i, WifiP2pManager.ActionListener actionListener) throws UnSupportedApiVersionException {
        WifiP2pManager wifiP2pManager = (WifiP2pManager) Epona.getContext().getSystemService("wifip2p");
        if (VersionUtils.isS()) {
            ReflectInfo.connect.call(wifiP2pManager, channel, wifiP2pConfig, actionListener);
        } else if (VersionUtils.isQ()) {
            ReflectInfo.connect.call(wifiP2pManager, channel, wifiP2pConfig, Integer.valueOf(i), actionListener);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }
}
