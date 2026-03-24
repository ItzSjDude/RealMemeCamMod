package com.oppo.inner.mediatek.telephony;

import android.telephony.SmsMessage;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import com.oplus.inner.mediatek.telephony.MtkSmsMessageWrapper;

public class MtkSmsMessageWrapper {
    public static int[] calculateLength(CharSequence msgBody, boolean use7bitOnly) {
        return MtkSmsMessageWrapper.calculateLength(msgBody, use7bitOnly);
    }

}