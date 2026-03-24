package com.oplus.compat.os;

import android.os.IHwBinder;
import androidx.annotation.RequiresApi;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.os.IHwBinderNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.os.IHwBinderWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class IHwBinderNative {
    private static final String TAG = "IHwBinderNative";
    private IHwBinder mBinder;
    private Object mIHwBinderWrapper;

    @OplusCompatibleMethod
    private static Object getIHwBinderWrapperQCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static void linkToDeathCompat(Object obj, Object obj2, long j) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object registServiceDiedCompat(Consumer<Long> consumer) {
        return null;
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public IHwBinderNative(Object obj) throws UnSupportedApiVersionException {
        this.mIHwBinderWrapper = null;
        if (VersionUtils.isS()) {
            this.mBinder = (IHwBinder) obj;
        } else if (VersionUtils.isOsVersion11_3()) {
            this.mIHwBinderWrapper = new IHwBinderWrapper(obj);
        } else if (VersionUtils.isQ()) {
            this.mIHwBinderWrapper = getIHwBinderWrapperQCompat(obj);
        } else {
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void linkToDeath(final DeathRecipientNative deathRecipientNative, long j) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            this.mBinder.linkToDeath(new IHwBinder.DeathRecipient() { // from class: com.oplus.compat.os.IHwBinderNative.1
                public void serviceDied(long j2) {
                    deathRecipientNative.serviceDied(j2);
                }
            }, j);
        } else if (VersionUtils.isOsVersion11_3()) {
            ((IHwBinderWrapper) this.mIHwBinderWrapper).linkToDeath((IHwBinderWrapper.DeathRecipientWrapper) deathRecipientNative.mDeathRecipientWrapper, j);
        } else if (!VersionUtils.isQ()) {
            throw new UnSupportedApiVersionException("Not supported before Q");
        } else {
            linkToDeathCompat(this.mIHwBinderWrapper, deathRecipientNative.mDeathRecipientWrapper, j);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class DeathRecipientNative {
        private final Object mDeathRecipientWrapper;

        @Grey
        public abstract void serviceDied(long j);

        @Grey
        public DeathRecipientNative() {
            if (!VersionUtils.isOsVersion11_3()) {
                this.mDeathRecipientWrapper = IHwBinderNative.registServiceDiedCompat(new Consumer() { // from class: com.oplus.compat.os.-$$Lambda$CVpLiM3vyCioFOVdeo5UPa62ueU
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        IHwBinderNative.DeathRecipientNative.this.serviceDied(((Long) obj).longValue());
                    }
                });
            } else {
                this.mDeathRecipientWrapper = new IHwBinderWrapper.DeathRecipientWrapper() { // from class: com.oplus.compat.os.IHwBinderNative.DeathRecipientNative.1
                    public void serviceDied(long j) {
                        DeathRecipientNative.this.serviceDied(j);
                    }
                };
            }
        }
    }
}
