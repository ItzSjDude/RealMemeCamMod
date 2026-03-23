package com.oplus.tingle.ipc.serviceproxy.view;

import android.content.Context;
import android.view.IWindowSession;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.tingle.ipc.SlaveBinder;
import com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy;
import com.oplus.tingle.ipc.utils.Logger;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import mirror.android.view.WindowManagerGlobal;
@SynthesizedClassMap({$$Lambda$WindowManagerProxy$YWN0WHOTguTGB_sf_1OQLEw1wGA.class})
/* loaded from: classes.dex */
public class WindowManagerProxy extends SystemServiceProxy<IWindowSession> {
    public WindowManagerProxy() {
        this.mServiceName = "window";
        this.mShouldUseLock = false;
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void resetCacheInternal(Context context, Object obj) {
        WindowManagerGlobal.sWindowSession.set(null, (IWindowSession) obj);
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [T, android.view.IWindowSession] */
    /* JADX WARN: Type inference failed for: r4v6, types: [T, android.view.IWindowSession] */
    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void init(Context context) {
        this.mOriginalService = android.view.WindowManagerGlobal.getWindowSession();
        this.mSlaveBinder = new SlaveBinder(((IWindowSession) this.mOriginalService).asBinder());
        this.mProxy = (IWindowSession) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{IWindowSession.class}, new InvocationHandler() { // from class: com.oplus.tingle.ipc.serviceproxy.view.-$$Lambda$WindowManagerProxy$YWN0WHOTguTGB_sf_1OQLEw1wGA
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                Object invoke;
                invoke = method.invoke(IWindowSession.Stub.asInterface(WindowManagerProxy.this.mSlaveBinder), objArr);
                return invoke;
            }
        });
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy, com.oplus.tingle.ipc.serviceproxy.ISystemServiceProxy
    public void resetBinderOrigin(Context context) {
        Logger.d(TAG, "Reset Binder To Origin.", new Object[0]);
        resetCacheInternal(context, this.mOriginalService);
    }
}
