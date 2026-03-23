package com.oplus.compat.telephony;

import android.telephony.AccessNetworkConstants;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
/* loaded from: classes.dex */
public class AccessNetworkConstantsNative {
    private static final String TAG = "AccessNetworkConstantsNative";

    private AccessNetworkConstantsNative() {
    }

    /* loaded from: classes.dex */
    public static final class AccessNetworkTypeNative {
        private AccessNetworkTypeNative() {
        }

        @Blocked
        @RequiresApi(api = 30)
        public static int convertRanToAnt(int i) throws UnSupportedApiVersionException {
            if (VersionUtils.isR()) {
                try {
                    return ((Integer) AccessNetworkConstants.AccessNetworkType.class.getMethod("convertRanToAnt", Integer.TYPE).invoke(null, Integer.valueOf(i))).intValue();
                } catch (ReflectiveOperationException e) {
                    if (e instanceof NoSuchMethodException) {
                        throw new UnSupportedApiVersionException("not support in mtk_R");
                    }
                    return 0;
                }
            }
            throw new UnSupportedApiVersionException("not support before R");
        }
    }
}
