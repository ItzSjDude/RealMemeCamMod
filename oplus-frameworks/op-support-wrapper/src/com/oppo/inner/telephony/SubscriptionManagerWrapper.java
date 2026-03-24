package com.oppo.inner.telephony;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.util.Log;
import java.lang.reflect.Method;
import com.oplus.inner.telephony.SubscriptionManagerWrapper;

public class SubscriptionManagerWrapper {
    public static int getDefaultVoicePhoneId() {
        return SubscriptionManagerWrapper.getDefaultVoicePhoneId();
    }

    public static SubscriptionInfo getDefaultVoiceSubscriptionInfo(SubscriptionManager subscriptionManager) {
        return SubscriptionManagerWrapper.getDefaultVoiceSubscriptionInfo(subscriptionManager);
    }

    public static int setDisplayName(SubscriptionManager subscriptionManager, String displayName, int subId, int nameSource) {
        return SubscriptionManagerWrapper.setDisplayName(subscriptionManager, displayName, subId, nameSource);
    }

    public static int getActiveDataSubscriptionId() {
        return SubscriptionManagerWrapper.getActiveDataSubscriptionId();
    }

    public static int[] getSubId(int slotIndex) {
        return SubscriptionManagerWrapper.getSubId(slotIndex);
    }

}