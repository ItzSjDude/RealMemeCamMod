package com.oppo.inner.mediatek.telephony;

import android.app.PendingIntent;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import com.oplus.inner.mediatek.telephony.MtkSmsManagerWrapper;

public class MtkSmsManagerWrapper {
    public static MtkSmsManagerWrapper getDefault() {
        return MtkSmsManagerWrapper.getDefault();
    }

    public static MtkSmsManagerWrapper getSmsManagerForSubscriptionId(int subId) {
        return MtkSmsManagerWrapper.getSmsManagerForSubscriptionId(subId);
    }

}