package com.oppo.inner.telecom;

import android.telecom.PhoneAccountHandle;
import android.util.Log;
import java.lang.reflect.Field;
import com.oplus.inner.telecom.PhoneAccountHandleWrapper;

public class PhoneAccountHandleWrapper {
    public static int getSubId(PhoneAccountHandle phoneAccountHandle) {
        return PhoneAccountHandleWrapper.getSubId(phoneAccountHandle);
    }

    public static int getSlotId(PhoneAccountHandle phoneAccountHandle) {
        return PhoneAccountHandleWrapper.getSlotId(phoneAccountHandle);
    }

}