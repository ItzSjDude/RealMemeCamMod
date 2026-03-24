package com.oplus.inner.os;

import android.os.IHwBinder;
import android.util.Log;

/* loaded from: classes.dex */
public class IHwBinderWrapper {
    private static final String TAG = "HwBinderWrapper";
    private IHwBinder mBinder;

    public static abstract class DeathRecipientWrapper {
        private final IHwBinder.DeathRecipient mDeathRecipient = new IHwBinder.DeathRecipient() { // from class: com.oplus.inner.os.IHwBinderWrapper.DeathRecipientWrapper.1
            public void serviceDied(long cookie) {
                DeathRecipientWrapper.this.serviceDied(cookie);
            }
        };

        public abstract void serviceDied(long j);
    }

    public IHwBinderWrapper(Object binder) {
        this.mBinder = null;
        try {
            this.mBinder = (IHwBinder) binder;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public void linkToDeath(DeathRecipientWrapper deathRecipientWrapper, long cookie) {
        IHwBinder iHwBinder = this.mBinder;
        if (iHwBinder != null) {
            iHwBinder.linkToDeath(deathRecipientWrapper.mDeathRecipient, cookie);
        }
    }
}
