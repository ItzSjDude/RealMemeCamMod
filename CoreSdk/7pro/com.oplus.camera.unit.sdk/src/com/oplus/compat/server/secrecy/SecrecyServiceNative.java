package com.oplus.compat.server.secrecy;

import android.os.IBinder;
import android.secrecy.ISecrecyService;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.os.ServiceManagerNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class SecrecyServiceNative {
    private static final String TAG = "SecrecyServiceNative";
    private static Object mSecrecyService;

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Boolean> getSecrecyState;
        private static RefMethod<Boolean> isSecrecySupport;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, ISecrecyService.class);
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public SecrecyServiceNative() throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            IBinder checkService = ServiceManagerNative.checkService("secrecy");
            if (checkService != null) {
                mSecrecyService = ISecrecyService.Stub.asInterface(checkService);
                return;
            }
            return;
        }
        throw new UnSupportedApiVersionException("Not supported before Q");
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public boolean isSecrecySupport() throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return ((Boolean) ReflectInfo.isSecrecySupport.call(mSecrecyService, new Object[0])).booleanValue();
        }
        throw new UnSupportedApiVersionException("Not supported before Q");
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public boolean getSecrecyState(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return ((Boolean) ReflectInfo.getSecrecyState.call(mSecrecyService, Integer.valueOf(i))).booleanValue();
        }
        throw new UnSupportedApiVersionException("Not supported before Q");
    }
}
