package com.oplus.compat.touchnode;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.touchnode.OplusTouchNodeManager;
/* loaded from: classes.dex */
public class OplusTouchNodeManagerNative {
    private OplusTouchNodeManagerNative() {
    }

    @Oem
    @RequiresApi(api = 30)
    public static int getTouchOptimizedTimeNode() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            try {
                return OplusTouchNodeManager.class.getField("TOUCH_OPTIMIZED_TIME_NODE").getInt(null);
            } catch (Throwable th) {
                throw new UnSupportedApiVersionException(th);
            }
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
