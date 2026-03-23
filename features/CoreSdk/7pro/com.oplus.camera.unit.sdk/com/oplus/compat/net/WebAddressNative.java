package com.oplus.compat.net;

import android.net.WebAddress;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.net.WebAddressWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class WebAddressNative {
    private static final String TAG = "WebAddressNative";
    private WebAddress mWebAddress;
    private Object mWebAddressWrapper;

    @OplusCompatibleMethod
    private static Object WebAddressNativeCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object WebAddressNativeCompat(String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getHostCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getPathCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setPathCompat(Object obj, String str) {
    }

    @OplusCompatibleMethod
    private static Object toStringCompat(Object obj) {
        return null;
    }

    private WebAddressNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public WebAddressNative(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            this.mWebAddress = new WebAddress(str);
        } else if (VersionUtils.isOsVersion11_3()) {
            this.mWebAddressWrapper = new WebAddressWrapper(str);
        } else if (VersionUtils.isQ()) {
            this.mWebAddressWrapper = WebAddressNativeCompat(str);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getScheme() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mWebAddress.getScheme();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((WebAddressWrapper) this.mWebAddressWrapper).getScheme();
        }
        if (VersionUtils.isQ()) {
            return (String) WebAddressNativeCompat(this.mWebAddressWrapper);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getHost() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mWebAddress.getHost();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((WebAddressWrapper) this.mWebAddressWrapper).getHost();
        }
        if (VersionUtils.isQ()) {
            return (String) getHostCompat(this.mWebAddressWrapper);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void setPath(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            this.mWebAddress.setPath(str);
        } else if (VersionUtils.isOsVersion11_3()) {
            ((WebAddressWrapper) this.mWebAddressWrapper).setPath(str);
        } else if (VersionUtils.isQ()) {
            setPathCompat(this.mWebAddressWrapper, str);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getPath() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mWebAddress.getPath();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((WebAddressWrapper) this.mWebAddressWrapper).getPath();
        }
        if (VersionUtils.isQ()) {
            return (String) getPathCompat(this.mWebAddressWrapper);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String toString() {
        if (VersionUtils.isS()) {
            return this.mWebAddress.toString();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((WebAddressWrapper) this.mWebAddressWrapper).toString();
        }
        return VersionUtils.isQ() ? (String) toStringCompat(this.mWebAddressWrapper) : "";
    }
}
