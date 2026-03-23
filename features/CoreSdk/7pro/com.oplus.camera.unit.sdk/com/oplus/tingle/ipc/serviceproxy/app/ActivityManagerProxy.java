package com.oplus.tingle.ipc.serviceproxy.app;

import android.app.ActivityManager;
import android.app.IActivityManager;
import android.content.Context;
import android.text.TextUtils;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.tingle.ipc.SlaveBinder;
import com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import mirror.android.util.Singleton;
@SynthesizedClassMap({$$Lambda$ActivityManagerProxy$65znQJcrmIqaGTlYU5LWE3smAg.class})
/* loaded from: classes.dex */
public class ActivityManagerProxy extends SystemServiceProxy<IActivityManager> {
    private Object mIActivityManagerSingleton;

    public ActivityManagerProxy() {
        this.mServiceName = "activity";
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void resetCacheInternal(Context context, Object obj) {
        Singleton.mInstance.set(this.mIActivityManagerSingleton, obj);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T, android.app.IActivityManager] */
    /* JADX WARN: Type inference failed for: r5v2, types: [T, android.app.IActivityManager] */
    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void init(final Context context) {
        this.mOriginalService = ActivityManager.getService();
        this.mSlaveBinder = new SlaveBinder(((IActivityManager) this.mOriginalService).asBinder());
        this.mIActivityManagerSingleton = mirror.android.app.ActivityManager.IActivityManagerSingleton.get(null);
        this.mProxy = (IActivityManager) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{IActivityManager.class}, new InvocationHandler() { // from class: com.oplus.tingle.ipc.serviceproxy.app.-$$Lambda$ActivityManagerProxy$65znQJcrmIqaGTlYU5LWE3sm-Ag
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return ActivityManagerProxy.lambda$init$0(ActivityManagerProxy.this, context, obj, method, objArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$init$0(ActivityManagerProxy activityManagerProxy, Context context, Object obj, Method method, Object[] objArr) throws Throwable {
        if (TextUtils.equals(activityManagerProxy.mLocalKey.get(), Thread.currentThread().getName())) {
            activityManagerProxy.resetServiceCache(context, activityManagerProxy.mOriginalService);
            activityManagerProxy.mLocalKey.remove();
            return method.invoke(IActivityManager.Stub.asInterface(activityManagerProxy.mSlaveBinder), objArr);
        }
        return method.invoke(activityManagerProxy.mOriginalService, objArr);
    }
}
