package com.oplus.compat.content;

import android.os.RemoteException;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.content.OplusFeatureConfigManager;
import com.oplus.epona.Epona;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class OplusFeatureConfigManagerNative {
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean hasFeature(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return OplusFeatureConfigManager.getInstance().hasFeature(str);
        }
        if (VersionUtils.isQ()) {
            return Epona.getContext().getPackageManager().hasSystemFeature(str);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean hasFeatureIPC(String str) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            return OplusFeatureConfigManager.getInstance().hasFeatureIPC(str);
        }
        if (VersionUtils.isQ()) {
            return Epona.getContext().getPackageManager().hasSystemFeature(str);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}
