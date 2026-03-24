package com.oplus.tingle.ipc.serviceproxy.pm;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.IPackageManager;
import android.text.TextUtils;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.tingle.ipc.SlaveBinder;
import com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy;
import com.oplus.tingle.ipc.utils.Logger;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import mirror.android.app.ActivityThread;
import mirror.android.app.ContextImpl;
@SynthesizedClassMap({$$Lambda$PackageManagerProxy$4J3VFV2QHTf8NvBCbGgqQ9Jmc.class})
/* loaded from: classes.dex */
public class PackageManagerProxy extends SystemServiceProxy<IPackageManager> {
    private static final String PACKAGE_MANAGER = "package";
    private static final String TAG = "PackageManagerProxy";
    private static Class<?> mClass;

    public PackageManagerProxy() {
        this.mServiceName = PACKAGE_MANAGER;
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void resetCacheInternal(Context context, Object obj) {
        if (mClass == null) {
            try {
                mClass = Class.forName("android.app.ContextImpl");
            } catch (Exception e) {
                Logger.e(TAG, e.toString(), new Object[0]);
            }
        }
        if (mClass == null || context == null) {
            return;
        }
        if (mClass.isAssignableFrom(context.getClass())) {
            ContextImpl.mPackageManager.set(context, null);
        } else {
            ContextImpl.mPackageManager.set(((ContextWrapper) context).getBaseContext(), null);
        }
        ActivityThread.sPackageManager.set(null, obj);
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected Object getOriginalSystemService(Context context) {
        return context.getPackageManager();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, android.content.pm.IPackageManager] */
    /* JADX WARN: Type inference failed for: r5v2, types: [T, android.content.pm.IPackageManager] */
    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void init(final Context context) {
        if (context.getPackageManager() != null) {
            this.mOriginalService = android.app.ActivityThread.getPackageManager();
            this.mSlaveBinder = new SlaveBinder(((IPackageManager) this.mOriginalService).asBinder());
            this.mProxy = (IPackageManager) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{IPackageManager.class}, new InvocationHandler() { // from class: com.oplus.tingle.ipc.serviceproxy.pm.-$$Lambda$PackageManagerProxy$4J-3VFV2Q-HTf8NvBCbGgqQ9Jmc
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    return PackageManagerProxy.lambda$init$0(PackageManagerProxy.this, context, obj, method, objArr);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$init$0(PackageManagerProxy packageManagerProxy, Context context, Object obj, Method method, Object[] objArr) throws Throwable {
        if (TextUtils.equals(packageManagerProxy.mLocalKey.get(), Thread.currentThread().getName())) {
            packageManagerProxy.resetServiceCache(context, packageManagerProxy.mOriginalService);
            packageManagerProxy.mLocalKey.remove();
            return method.invoke(IPackageManager.Stub.asInterface(packageManagerProxy.mSlaveBinder), objArr);
        }
        return method.invoke(packageManagerProxy.mOriginalService, objArr);
    }
}
