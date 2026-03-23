package com.oplus.compat.graphics;

import android.graphics.BitmapFactory;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.graphics.BitmapFactoryWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefBoolean;
import com.oplus.utils.reflect.RefClass;
/* loaded from: classes.dex */
public class BitmapFactoryNative {
    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getInPostProcCompat(BitmapFactory.Options options) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static void setInPostProcCompat(BitmapFactory.Options options, boolean z) {
    }

    private BitmapFactoryNative() {
    }

    /* loaded from: classes.dex */
    public static class OptionsNative {
        private OptionsNative() {
        }

        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static boolean getInPostProc(BitmapFactory.Options options) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                return OplusMirrorRefInfo.inPostProc.get(options);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BitmapFactoryWrapper.OptionsWrapper.getInPostProc(options);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) BitmapFactoryNative.getInPostProcCompat(options)).booleanValue();
            }
            throw new UnSupportedApiVersionException();
        }

        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static void setInPostProc(BitmapFactory.Options options, boolean z) throws UnSupportedApiVersionException {
            if (VersionUtils.isS()) {
                OplusMirrorRefInfo.inPostProc.set(options, z);
            } else if (VersionUtils.isOsVersion11_3()) {
                BitmapFactoryWrapper.OptionsWrapper.setInPostProc(options, z);
            } else if (VersionUtils.isQ()) {
                BitmapFactoryNative.setInPostProcCompat(options, z);
            } else {
                throw new UnSupportedApiVersionException();
            }
        }

        /* loaded from: classes.dex */
        private static class OplusMirrorRefInfo {
            public static RefBoolean inPostProc;
            Class<?> TYPE = RefClass.load(OplusMirrorRefInfo.class, BitmapFactory.Options.class);

            private OplusMirrorRefInfo() {
            }
        }
    }
}
