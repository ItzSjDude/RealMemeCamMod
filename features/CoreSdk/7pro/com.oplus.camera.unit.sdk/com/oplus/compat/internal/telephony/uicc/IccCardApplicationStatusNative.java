package com.oplus.compat.internal.telephony.uicc;

import androidx.annotation.RequiresApi;
import com.android.internal.telephony.uicc.IccCardApplicationStatus;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefConstructor;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class IccCardApplicationStatusNative {

    /* loaded from: classes.dex */
    public static class PersoSubState {

        /* loaded from: classes.dex */
        private static class ReflectInfo {
            private static RefMethod<Integer> getState;
            private static RefConstructor<IccCardApplicationStatus.PersoSubState> mPersoSubStateConstructor;

            private ReflectInfo() {
            }

            static {
                RefClass.load(ReflectInfo.class, "com.android.internal.telephony.uicc.IccCardApplicationStatus.PersoSubState");
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static int getState() throws UnSupportedApiVersionException {
            if (VersionUtils.isR()) {
                throw new UnSupportedApiVersionException();
            }
            if (VersionUtils.isQ()) {
                return ((Integer) ReflectInfo.getState.call((IccCardApplicationStatus.PersoSubState) ReflectInfo.mPersoSubStateConstructor.newInstance(), new Object[0])).intValue();
            }
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }
}
