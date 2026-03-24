package com.oplus.tingle.ipc.serviceproxy;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.IBinder;
import android.text.TextUtils;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.app.SystemServiceRegistryWrapper;
import com.oplus.tingle.ipc.SlaveBinder;
import com.oplus.tingle.ipc.utils.Logger;
import com.oplus.tingle.ipc.utils.VersionUtils;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import mirror.android.app.ContextImpl;
import mirror.android.app.SystemServiceRegistry;
import mirror.android.os.ServiceManager;
/* loaded from: classes.dex */
public class CommonServiceProxy extends SystemServiceProxy<IBinder> {
    private static final String CACHED_SERVICE_FETCHER = "CachedServiceFetcher";
    private static final String STATIC_APPLICATION_FETCHER = "StaticApplicationContextServiceFetcher";
    private static final String STATIC_SERVICE_FETCHER = "StaticServiceFetcher";
    private static final String TAG = "CommonServiceProxy";
    private static final String TRANSACT_METHOD_NAME = "transact";

    @OplusCompatibleMethod
    private static Object getCacheIndexCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getFetcherCompat(String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setStaticApplicationFetcherCompat(Object obj) {
    }

    @OplusCompatibleMethod
    private static void setStaticServiceFetcherCompat(Object obj) {
    }

    public CommonServiceProxy(String str) {
        this.mServiceName = str;
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void resetCacheInternal(Context context, Object obj) {
        ServiceManager.sCache.get(null).put(this.mServiceName, (IBinder) obj);
        cleanSystemFetcherCache(context);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2, types: [T, android.os.IBinder] */
    @Override // com.oplus.tingle.ipc.serviceproxy.SystemServiceProxy
    protected void init(final Context context) {
        this.mOriginalService = ServiceManager.getService.call(null, this.mServiceName);
        this.mSlaveBinder = new SlaveBinder((IBinder) this.mOriginalService);
        this.mProxy = (IBinder) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{IBinder.class}, new InvocationHandler() { // from class: com.oplus.tingle.ipc.serviceproxy.-$$Lambda$CommonServiceProxy$u445S-91reyr-1i7OjEhfSqFIJw
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return CommonServiceProxy.lambda$init$0(CommonServiceProxy.this, context, obj, method, objArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$init$0(CommonServiceProxy commonServiceProxy, Context context, Object obj, Method method, Object[] objArr) throws Throwable {
        if (TextUtils.equals(commonServiceProxy.mLocalKey.get(), Thread.currentThread().getName())) {
            if (TextUtils.equals(method.getName(), TRANSACT_METHOD_NAME)) {
                commonServiceProxy.resetServiceCache(context, commonServiceProxy.mOriginalService);
                commonServiceProxy.mLocalKey.remove();
            }
            return method.invoke(commonServiceProxy.mSlaveBinder, objArr);
        }
        return method.invoke(commonServiceProxy.mOriginalService, objArr);
    }

    private void cleanSystemFetcherCache(Context context) {
        Object[] objArr;
        Object fetcher = getFetcher(this.mServiceName);
        if (fetcher == null) {
            Logger.d(TAG, "getFetcher failed.", new Object[0]);
            return;
        }
        String canonicalName = fetcher.getClass().getSuperclass().getCanonicalName();
        if (canonicalName.contains(STATIC_APPLICATION_FETCHER)) {
            setStaticApplicationFetcher(fetcher);
        } else if (canonicalName.contains(STATIC_SERVICE_FETCHER)) {
            setStaticServiceFetcher(fetcher);
        } else if (canonicalName.contains(CACHED_SERVICE_FETCHER)) {
            int cacheIndex = getCacheIndex(fetcher);
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext() instanceof Application) {
                    objArr = ContextImpl.mServiceCache.get(((Application) contextWrapper.getBaseContext()).getBaseContext());
                } else {
                    objArr = ContextImpl.mServiceCache.get(contextWrapper.getBaseContext());
                }
                objArr[cacheIndex] = null;
            }
        }
    }

    private static Object getFetcher(String str) {
        if (VersionUtils.isS()) {
            return SystemServiceRegistry.getFetcher(str);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return SystemServiceRegistryWrapper.getFetcher(str);
        }
        return getFetcherCompat(str);
    }

    private static void setStaticApplicationFetcher(Object obj) {
        if (VersionUtils.isS()) {
            SystemServiceRegistry.StaticServiceFetcher.setCachedInstance(obj, null);
        } else if (VersionUtils.isOsVersion11_3()) {
            SystemServiceRegistryWrapper.StaticServiceFetcherWrapper.setCachedInstance(obj, (Object) null);
        } else {
            setStaticApplicationFetcherCompat(obj);
        }
    }

    private static void setStaticServiceFetcher(Object obj) {
        if (VersionUtils.isS()) {
            SystemServiceRegistry.StaticServiceFetcher.setCachedInstance(obj, null);
        } else if (VersionUtils.isOsVersion11_3()) {
            SystemServiceRegistryWrapper.StaticServiceFetcherWrapper.setCachedInstance(obj, (Object) null);
        } else {
            setStaticServiceFetcherCompat(obj);
        }
    }

    private static int getCacheIndex(Object obj) {
        if (VersionUtils.isS()) {
            return SystemServiceRegistry.CachedServiceFetcher.getCacheIndex(obj);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return SystemServiceRegistryWrapper.CachedServiceFetcherWrapper.getCacheIndex(obj);
        }
        return ((Integer) getCacheIndexCompat(obj)).intValue();
    }
}
