package com.oplus.compat.internal.os;

import androidx.annotation.RequiresApi;
import com.android.internal.os.BatterySipper;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.internal.os.BatterySipperWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class BatterySipperNative {
    private static final double DEFAULT_VALUE = 0.0d;
    private static final String TAG = "BatterySipperNative";
    private BatterySipper mBatterySipper;
    private Object mBatterySipperWrapper;

    @OplusCompatibleMethod
    private static Object getPkgNameCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUidCompat(Object obj) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BatterySipperNative(Object obj) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            this.mBatterySipperWrapper = obj;
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BatterySipperNative(BatterySipper batterySipper) throws UnSupportedApiVersionException {
        if (VersionUtils.isO() || VersionUtils.isS()) {
            this.mBatterySipper = batterySipper;
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public String getPkgName() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return (String) getPkgNameCompat(this.mBatterySipperWrapper);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 26)
    public int getUid() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mBatterySipper.getUid();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((BatterySipperWrapper) this.mBatterySipperWrapper).getUid();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getUidCompat(this.mBatterySipperWrapper)).intValue();
        }
        if (VersionUtils.isO()) {
            return this.mBatterySipper.getUid();
        }
        throw new UnSupportedApiVersionException();
    }
}
