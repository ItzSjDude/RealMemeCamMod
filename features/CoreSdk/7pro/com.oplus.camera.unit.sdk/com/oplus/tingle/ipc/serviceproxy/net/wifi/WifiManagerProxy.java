package com.oplus.tingle.ipc.serviceproxy.net.wifi;

import android.content.Context;
import android.net.wifi.IWifiManager;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.tingle.ipc.SlaveBinder;
import com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
@SynthesizedClassMap({$$Lambda$WifiManagerProxy$SvlzNz5iI3jr2CnibK5sQT4Eyto.class})
/* loaded from: classes.dex */
public class WifiManagerProxy extends SystemServiceProxy<IWifiManager> {
    private WifiManager mWifiManager;

    public WifiManagerProxy() {
        this.mServiceName = "wifi";
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void resetCacheInternal(Context context, Object obj) {
        mirror.android.net.wifi.WifiManager.mService.set(this.mWifiManager, (IWifiManager) obj);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [T, android.net.wifi.IWifiManager] */
    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void init(final Context context) {
        this.mWifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
        this.mOriginalService = mirror.android.net.wifi.WifiManager.mService.get(this.mWifiManager);
        this.mSlaveBinder = new SlaveBinder(((IWifiManager) this.mOriginalService).asBinder());
        this.mProxy = (IWifiManager) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{IWifiManager.class}, new InvocationHandler() { // from class: com.oplus.tingle.ipc.serviceproxy.net.wifi.-$$Lambda$WifiManagerProxy$SvlzNz5iI3jr2CnibK5sQT4Eyto
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return WifiManagerProxy.lambda$init$0(WifiManagerProxy.this, context, obj, method, objArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$init$0(WifiManagerProxy wifiManagerProxy, Context context, Object obj, Method method, Object[] objArr) throws Throwable {
        if (TextUtils.equals(wifiManagerProxy.mLocalKey.get(), Thread.currentThread().getName())) {
            wifiManagerProxy.resetServiceCache(context, wifiManagerProxy.mOriginalService);
            wifiManagerProxy.mLocalKey.remove();
            return method.invoke(IWifiManager.Stub.asInterface(wifiManagerProxy.mSlaveBinder), objArr);
        }
        return method.invoke(wifiManagerProxy.mOriginalService, objArr);
    }
}
