package com.oppo.inner.telephony;

import android.app.PendingIntent;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.util.Log;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SmsManagerWrapper {
    private static final String TAG = "SmsManagerWrapper";

    private SmsManagerWrapper() {
    }

    public static ArrayList<SmsMessage> getAllMessagesFromIcc(SmsManager smsManager) {
        try {
            ArrayList<SmsMessage> result = smsManager.getAllMessagesFromIcc();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static boolean copyMessageToIcc(SmsManager smsManager, byte[] smsc, byte[] pdu, int status) {
        try {
            boolean result = smsManager.copyMessageToIcc(smsc, pdu, status);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static boolean deleteMessageFromIcc(SmsManager smsManager, int messageIndex) {
        try {
            boolean result = smsManager.deleteMessageFromIcc(messageIndex);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static void sendMultipartTextMessageOem(SmsManager smsManager, String destinationAddress, String scAddress, ArrayList<String> parts, ArrayList<PendingIntent> sentIntents, ArrayList<PendingIntent> deliveryIntents, int priority, boolean expectMore, int validityPeriod, int encodingType) {
    }

    public static ArrayList<String> divideMessageOem(SmsManager smsManager, String text, int encodingType) {
        return null;
    }
}
