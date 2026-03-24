package com.oplus.inner.telephony;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.util.Log;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class SubscriptionManagerWrapper {
    private static final String TAG = "SubscriptionManagerWrapper";

    private SubscriptionManagerWrapper() {
    }

    public static int getDefaultVoicePhoneId() {
        try {
            int result = SubscriptionManager.getDefaultVoicePhoneId();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static SubscriptionInfo getDefaultVoiceSubscriptionInfo(SubscriptionManager subscriptionManager) {
        try {
            SubscriptionInfo result = subscriptionManager.getDefaultVoiceSubscriptionInfo();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static int setDisplayName(SubscriptionManager subscriptionManager, String displayName, int subId, int nameSource) {
        try {
            int result = subscriptionManager.setDisplayName(displayName, subId, nameSource);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static int getActiveDataSubscriptionId() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> subscriptionManager = Class.forName("android.telephony.SubscriptionManager");
            Method method = subscriptionManager.getMethod("getActiveDataSubscriptionId", new Class[0]);
            return ((Integer) method.invoke(subscriptionManager, new Object[0])).intValue();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int[] getSubId(int slotIndex) {
        return SubscriptionManager.getSubId(slotIndex);
    }
}
