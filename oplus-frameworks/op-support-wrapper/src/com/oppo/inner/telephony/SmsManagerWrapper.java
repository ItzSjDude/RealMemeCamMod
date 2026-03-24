package com.oppo.inner.telephony;

import android.app.PendingIntent;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.util.Log;
import java.util.ArrayList;
import com.oplus.inner.telephony.SmsManagerWrapper;

public class SmsManagerWrapper {
    public static ArrayList<SmsMessage> getAllMessagesFromIcc(SmsManager smsManager) {
        return SmsManagerWrapper.getAllMessagesFromIcc(smsManager);
    }

    public static boolean copyMessageToIcc(SmsManager smsManager, byte[] smsc, byte[] pdu, int status) {
        return SmsManagerWrapper.copyMessageToIcc(smsManager, smsc, pdu, status);
    }

    public static boolean deleteMessageFromIcc(SmsManager smsManager, int messageIndex) {
        return SmsManagerWrapper.deleteMessageFromIcc(smsManager, messageIndex);
    }

    public static void sendMultipartTextMessageOem(SmsManager smsManager, String destinationAddress, String scAddress, ArrayList<String> parts, ArrayList<PendingIntent> sentIntents, ArrayList<PendingIntent> deliveryIntents, int priority, boolean expectMore, int validityPeriod, int encodingType) {
        SmsManagerWrapper.sendMultipartTextMessageOem(smsManager, destinationAddress, scAddress, parts, sentIntents, deliveryIntents, priority, expectMore, validityPeriod, encodingType);
    }

    public static ArrayList<String> divideMessageOem(SmsManager smsManager, String text, int encodingType) {
        return SmsManagerWrapper.divideMessageOem(smsManager, text, encodingType);
    }

}