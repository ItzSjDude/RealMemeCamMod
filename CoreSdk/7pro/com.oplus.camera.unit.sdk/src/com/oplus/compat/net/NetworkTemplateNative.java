package com.oplus.compat.net;

import android.net.NetworkTemplate;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class NetworkTemplateNative {
    NetworkTemplate mNetworkTemplate;
    Object mNetworkTemplateWrapper;

    @OplusCompatibleMethod
    private static Object getNetworkTemplateQCompat(String str) {
        return null;
    }

    private NetworkTemplateNative(NetworkTemplate networkTemplate) {
        this.mNetworkTemplate = networkTemplate;
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public NetworkTemplateNative(Object obj) {
        this.mNetworkTemplateWrapper = obj;
    }

    @Grey
    @RequiresApi(api = 28)
    public static NetworkTemplateNative buildTemplateMobileAll(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return new NetworkTemplateNative(NetworkTemplate.buildTemplateMobileAll(str));
        }
        if (VersionUtils.isQ()) {
            return new NetworkTemplateNative(getNetworkTemplateQCompat(str));
        }
        if (VersionUtils.isP()) {
            return new NetworkTemplateNative(NetworkTemplate.buildTemplateMobileAll(str));
        }
        throw new UnSupportedApiVersionException();
    }
}
