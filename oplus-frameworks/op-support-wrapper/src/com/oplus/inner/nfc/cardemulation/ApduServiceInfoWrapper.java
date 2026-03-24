package com.oplus.inner.nfc.cardemulation;

import android.nfc.cardemulation.OplusBaseApduServiceInfo;
import android.util.Log;
import com.oplus.util.OplusTypeCastingHelper;

/* loaded from: classes.dex */
public class ApduServiceInfoWrapper {
    private static final String TAG = "ApduServiceInfoWrapper";

    private ApduServiceInfoWrapper() {
    }

    public static boolean isServiceEnabled(Object apduServiceInfoObject, String category) {
        try {
            OplusBaseApduServiceInfo baseApduServiceInfo = typeCasting(apduServiceInfoObject);
            if (baseApduServiceInfo == null) {
                return false;
            }
            return baseApduServiceInfo.isServiceEnabled(category);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    private static OplusBaseApduServiceInfo typeCasting(Object apduServiceInfoObject) {
        return (OplusBaseApduServiceInfo) OplusTypeCastingHelper.typeCasting(OplusBaseApduServiceInfo.class, apduServiceInfoObject);
    }
}
