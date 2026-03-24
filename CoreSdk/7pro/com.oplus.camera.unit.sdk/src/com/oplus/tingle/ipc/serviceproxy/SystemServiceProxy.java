package com.oplus.tingle.ipc.serviceproxy;

import android.content.Context;
import android.text.TextUtils;
import com.oplus.tingle.ipc.SlaveBinder;
import com.oplus.tingle.ipc.utils.Logger;
import java.lang.reflect.Proxy;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes.dex */
public abstract class SystemServiceProxy<T> implements ISystemServiceProxy {
    protected static String TAG;
    protected ThreadLocal<String> mLocalKey = new ThreadLocal<>();
    private final ReentrantLock mLock = new ReentrantLock(true);
    protected T mOriginalService;
    protected T mProxy;
    protected String mServiceName;
    protected boolean mShouldUseLock;
    protected SlaveBinder mSlaveBinder;

    protected abstract void init(Context context);

    protected abstract void resetCacheInternal(Context context, Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public SystemServiceProxy() {
        TAG = getClass().getName();
        this.mShouldUseLock = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetServiceCache(Context context, Object obj) {
        if (!this.mShouldUseLock) {
            resetCacheInternal(context, obj);
        } else if (obj instanceof Proxy) {
            this.mLock.lock();
            try {
                resetCacheInternal(context, obj);
            } catch (Exception e) {
                String str = TAG;
                Logger.e(str, "LOCK Exception : " + e, new Object[0]);
                this.mLock.unlock();
            }
        } else {
            try {
                resetCacheInternal(context, obj);
            } finally {
                if (this.mLock.isHeldByCurrentThread()) {
                    this.mLock.unlock();
                }
            }
        }
    }

    protected Object getOriginalSystemService(Context context) {
        return context.getSystemService(this.mServiceName);
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.ISystemServiceProxy
    public boolean canHandle(String str) {
        return TextUtils.equals(str, this.mServiceName);
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.ISystemServiceProxy
    public Object getSystemService(Context context) {
        setServiceToProxyInternal(context);
        return getOriginalSystemService(context);
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.ISystemServiceProxy
    public void cleanSystemService(Context context) {
        setServiceToProxyInternal(context);
    }

    private void setServiceToProxyInternal(Context context) {
        synchronized (this) {
            if (this.mSlaveBinder == null) {
                if (context.getApplicationContext() != null) {
                    init(context.getApplicationContext());
                } else {
                    init(context);
                }
            }
            this.mLocalKey.set(Thread.currentThread().getName());
            resetServiceCache(context, this.mProxy);
        }
    }

    @Override // com.oplus.tingle.ipc.serviceproxy.ISystemServiceProxy
    public void resetBinderOrigin(Context context) {
        String str = TAG;
        Logger.d(str, "Default Service [" + this.mServiceName + "] do not need reset IBinder to origin.", new Object[0]);
    }
}
