package com.oplus.tingle.ipc.serviceproxy.app;

import android.app.INotificationManager;
import android.content.Context;
import android.text.TextUtils;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.tingle.ipc.SlaveBinder;
import com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import mirror.android.app.NotificationManager;
@SynthesizedClassMap({$$Lambda$NotificationManagerProxy$b5UEZUMtjLjObGRbiElFpfnueoU.class})
/* loaded from: classes.dex */
public class NotificationManagerProxy extends SystemServiceProxy<INotificationManager> {
    public NotificationManagerProxy() {
        this.mServiceName = "notification";
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void resetCacheInternal(Context context, Object obj) {
        NotificationManager.sService.set(null, obj);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T, android.app.INotificationManager] */
    /* JADX WARN: Type inference failed for: r5v2, types: [T, android.app.INotificationManager] */
    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void init(final Context context) {
        this.mOriginalService = android.app.NotificationManager.getService();
        this.mSlaveBinder = new SlaveBinder(((INotificationManager) this.mOriginalService).asBinder());
        this.mProxy = (INotificationManager) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{INotificationManager.class}, new InvocationHandler() { // from class: com.oplus.tingle.ipc.serviceproxy.app.-$$Lambda$NotificationManagerProxy$b5UEZUMtjLjObGRbiElFpfnueoU
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return NotificationManagerProxy.lambda$init$0(NotificationManagerProxy.this, context, obj, method, objArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$init$0(NotificationManagerProxy notificationManagerProxy, Context context, Object obj, Method method, Object[] objArr) throws Throwable {
        if (TextUtils.equals(notificationManagerProxy.mLocalKey.get(), Thread.currentThread().getName())) {
            notificationManagerProxy.resetServiceCache(context, notificationManagerProxy.mOriginalService);
            notificationManagerProxy.mLocalKey.remove();
            return method.invoke(INotificationManager.Stub.asInterface(notificationManagerProxy.mSlaveBinder), objArr);
        }
        return method.invoke(notificationManagerProxy.mOriginalService, objArr);
    }
}
