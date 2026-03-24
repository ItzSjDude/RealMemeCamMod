package com.oppo.inner.nfc.cardemulation;

import android.nfc.cardemulation.OplusBaseApduServiceInfo;
import android.util.Log;
import com.oplus.util.OplusTypeCastingHelper;
import com.oplus.inner.nfc.cardemulation.ApduServiceInfoWrapper;

public class ApduServiceInfoWrapper {
    public static boolean isServiceEnabled(Object apduServiceInfoObject, String category) {
        return ApduServiceInfoWrapper.isServiceEnabled(apduServiceInfoObject, category);
    }

}