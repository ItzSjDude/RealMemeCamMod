package com.oplus.compat.app.confinemode;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.confinemode.OplusConfineModeManager;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class OplusConfineModeManagerNative {
    private static OplusConfineModeManagerNative sInstance;
    private Object mOplusConfineModeManager;

    @OplusCompatibleMethod
    private static Object getConfineModeForQ(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getInstanceForQ() {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfoForR {
        private static RefMethod<Integer> getConfineMode;
        private static RefMethod<Object> getInstance;

        private ReflectInfoForR() {
        }

        static {
            RefClass.load(ReflectInfoForR.class, OplusConfineModeManager.class);
        }
    }

    private OplusConfineModeManagerNative(Object obj) {
        this.mOplusConfineModeManager = obj;
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static OplusConfineModeManagerNative getInstance() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (sInstance == null) {
                sInstance = new OplusConfineModeManagerNative(ReflectInfoForR.getInstance.call(null, new Object[0]));
            }
            return sInstance;
        } else if (VersionUtils.isQ()) {
            if (sInstance == null) {
                sInstance = new OplusConfineModeManagerNative(getInstanceForQ());
            }
            return sInstance;
        } else {
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public int getConfineMode() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return OplusConfineModeManager.getInstance().getConfineMode();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getConfineModeForQ(this.mOplusConfineModeManager)).intValue();
        }
        throw new UnSupportedApiVersionException("not support before Q");
    }
}
