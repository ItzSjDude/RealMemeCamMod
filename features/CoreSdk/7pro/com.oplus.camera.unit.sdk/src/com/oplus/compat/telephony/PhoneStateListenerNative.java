package com.oplus.compat.telephony;

import android.telephony.PhoneStateListener;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class PhoneStateListenerNative {
    private long mToken = System.currentTimeMillis();

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void onCallStateChanged(PhoneStateListener phoneStateListener, int i, String str) throws UnSupportedApiVersionException {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void onPreciseCallStateChanged(PreciseCallStateNative preciseCallStateNative) {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void onSrvccStateChanged(PhoneStateListener phoneStateListener, int i) throws UnSupportedApiVersionException {
    }

    public long getToken() {
        return this.mToken;
    }
}
