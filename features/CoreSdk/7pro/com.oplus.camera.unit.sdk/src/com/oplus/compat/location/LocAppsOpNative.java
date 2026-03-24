package com.oplus.compat.location;

import android.location.LocAppsOp;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
import java.util.HashMap;
/* loaded from: classes.dex */
public class LocAppsOpNative {
    private LocAppsOp mLocAppsOp;
    private Object mLocAppsOpWrapperCompat;

    @OplusCompatibleMethod
    private static Object getAppsOpCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOpLevelCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static void setAppOpCompat(String str, int i) {
    }

    @OplusCompatibleMethod
    private static void setAppsOpCompat(HashMap<String, Integer> hashMap) {
    }

    @OplusCompatibleMethod
    private static void setOpLevelCompat(int i) {
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public LocAppsOpNative() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            this.mLocAppsOp = new LocAppsOp();
        } else if (VersionUtils.isQ()) {
            this.mLocAppsOpWrapperCompat = initCompat();
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public int getOpLevel() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return this.mLocAppsOp.getOpLevel();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getOpLevelCompat()).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void setOpLevel(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            this.mLocAppsOp.setOpLevel(i);
        } else if (VersionUtils.isQ()) {
            setOpLevelCompat(i);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public HashMap<String, Integer> getAppsOp() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return this.mLocAppsOp.getAppsOp();
        }
        if (VersionUtils.isQ()) {
            return (HashMap) getAppsOpCompat();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void setAppsOp(HashMap<String, Integer> hashMap) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            this.mLocAppsOp.setAppsOp(hashMap);
        } else if (VersionUtils.isQ()) {
            setAppsOpCompat(hashMap);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void setAppOp(String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            this.mLocAppsOp.setAppOp(str, i);
        } else if (VersionUtils.isQ()) {
            setAppOpCompat(str, i);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getLocAppsOpWrapper() {
        if (VersionUtils.isR()) {
            return this.mLocAppsOp;
        }
        if (VersionUtils.isQ()) {
            return this.mLocAppsOpWrapperCompat;
        }
        return null;
    }
}
