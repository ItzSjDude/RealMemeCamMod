package com.oplus.compat.app;

import android.os.Bundle;
import androidx.annotation.RequiresApi;
import com.oplus.app.OplusAppInfo;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class OplusAppInfoNative {
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public int displayId;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public Bundle extension;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public boolean isRootActivity;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String launchedFromPackage;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public int orientation;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public int userId;

    @OplusCompatibleMethod
    private static Object initDisplayIdForQ(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initExtensionForQ(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initLaunchedFromPackageForQ(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initOrientationForQ(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initRootActivityForQ(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initUserIdForQ(Object obj) {
        return null;
    }

    @Oem
    @RequiresApi(api = 30)
    public OplusAppInfoNative(OplusAppInfo oplusAppInfo) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            this.displayId = oplusAppInfo.displayId;
            this.orientation = oplusAppInfo.orientation;
            this.userId = oplusAppInfo.userId;
            this.launchedFromPackage = oplusAppInfo.launchedFromPackage;
            this.isRootActivity = oplusAppInfo.isRootActivity;
            this.extension = oplusAppInfo.extension;
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public OplusAppInfoNative(Object obj) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            this.displayId = ((Integer) initDisplayIdForQ(obj)).intValue();
            this.orientation = ((Integer) initOrientationForQ(obj)).intValue();
            this.userId = ((Integer) initUserIdForQ(obj)).intValue();
            this.launchedFromPackage = (String) initLaunchedFromPackageForQ(obj);
            this.isRootActivity = ((Boolean) initRootActivityForQ(obj)).booleanValue();
            this.extension = (Bundle) initExtensionForQ(obj);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}
