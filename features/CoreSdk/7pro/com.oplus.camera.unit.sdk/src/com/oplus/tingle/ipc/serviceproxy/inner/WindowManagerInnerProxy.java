package com.oplus.tingle.ipc.serviceproxy.inner;

import android.content.Context;
import android.os.IInterface;
import android.view.IWindowManager;
import android.view.IWindowSession;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.tingle.Constants;
import com.oplus.tingle.ipc.SlaveBinder;
import com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy;
import com.oplus.tingle.ipc.utils.Logger;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import mirror.android.view.WindowManagerGlobal;
@SynthesizedClassMap({$$Lambda$WindowManagerInnerProxy$XyqMKvXj4Ig_xH5eUc7GxD6AQI.class})
/* loaded from: classes.dex */
public class WindowManagerInnerProxy extends SystemServiceProxy<IWindowSession> {
    public WindowManagerInnerProxy() {
        this.mServiceName = Constants.WINDOW_SERVICE_INNER;
        this.mShouldUseLock = false;
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void resetCacheInternal(Context context, Object obj) {
        WindowManagerGlobal.sWindowSession.set(null, (IWindowSession) obj);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, android.view.IWindowSession] */
    /* JADX WARN: Type inference failed for: r4v6, types: [T, android.view.IWindowSession] */
    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void init(Context context) {
        IInterface windowManagerService = android.view.WindowManagerGlobal.getWindowManagerService();
        WindowManagerGlobal.sWindowManagerService.set(null, IWindowManager.Stub.asInterface(new SlaveBinder(windowManagerService.asBinder())));
        WindowManagerGlobal.sWindowSession.set(null, null);
        this.mOriginalService = android.view.WindowManagerGlobal.getWindowSession();
        WindowManagerGlobal.sWindowManagerService.set(null, windowManagerService);
        this.mSlaveBinder = new SlaveBinder(((IWindowSession) this.mOriginalService).asBinder());
        this.mProxy = (IWindowSession) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{IWindowSession.class}, new InvocationHandler() { // from class: com.oplus.tingle.ipc.serviceproxy.inner.-$$Lambda$WindowManagerInnerProxy$XyqMKvXj4Ig_xH5eU-c7GxD6AQI
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                Object invoke;
                invoke = method.invoke(IWindowSession.Stub.asInterface(WindowManagerInnerProxy.this.mSlaveBinder), objArr);
                return invoke;
            }
        });
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected Object getOriginalSystemService(Context context) {
        return context.getSystemService("window");
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy, com.oplus.tingle.ipc.serviceproxy.ISystemServiceProxy
    public void resetBinderOrigin(Context context) {
        Logger.d(TAG, "Reset Binder To Origin.", new Object[0]);
        WindowManagerGlobal.sWindowManagerService.set(null, null);
        WindowManagerGlobal.sWindowSession.set(null, null);
        android.view.WindowManagerGlobal.getWindowSession();
    }
}
