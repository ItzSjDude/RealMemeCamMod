package com.oplus.compat.telephony;

import android.telephony.CellIdentityNr;
import android.telephony.CellInfoNr;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefConstructor;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class CellInfoNrNative {
    private static final String TAG = "CellInfoNrNative";

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(name = "cellInfoNrRefConstructor", params = {})
        private static RefConstructor<CellInfoNr> mCellInfoNrConstructor;
        private static RefMethod<Void> setCellIdentity;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.telephony.CellInfoNr");
        }
    }

    private CellInfoNrNative() {
    }

    @Oem
    @Blocked
    @RequiresApi(api = 30)
    public static CellInfoNr getInstance() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (CellInfoNr) ReflectInfo.mCellInfoNrConstructor.newInstance();
        }
        throw new UnSupportedApiVersionException("not support before R");
    }

    @Oem
    @Blocked
    @RequiresApi(api = 30)
    public static void setCellIdentity(CellIdentityNr cellIdentityNr) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfo.setCellIdentity.call(null, cellIdentityNr);
            return;
        }
        throw new UnSupportedApiVersionException("not support before R");
    }
}
