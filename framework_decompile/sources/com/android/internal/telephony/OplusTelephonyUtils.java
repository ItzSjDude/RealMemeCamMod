package com.android.internal.telephony;

import android.location.OplusLbsCommonConstant;
import android.os.OplusPropertyList;
import android.os.SystemProperties;

/* loaded from: classes4.dex */
public class OplusTelephonyUtils {
    public static final boolean isQcomPlatform = SystemProperties.get("ro.boot.hardware", "unknow").toLowerCase().startsWith(OplusLbsCommonConstant.QCOM_PLATFORM);
    public static final boolean isMTKPlatform = SystemProperties.get("ro.boot.hardware", "unknow").toLowerCase().startsWith("mt");
    private static final boolean isUSSUnifyDevice = SystemProperties.get(OplusPropertyList.PROPETY_OPLUS_OPCARRIER_ID).equals("sprint");
    private static final boolean isUSTUnifyDevice = SystemProperties.get(OplusPropertyList.PROPETY_OPLUS_OPCARRIER_ID).equals("tmo");

    public static boolean isMTKPlatform() {
        return isMTKPlatform;
    }

    public static boolean isQcomPlatform() {
        return isQcomPlatform;
    }
}
