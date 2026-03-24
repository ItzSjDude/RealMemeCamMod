package com.oplus.inner.mediatek.telephony;

import android.app.PendingIntent;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MtkSmsManagerWrapper {
    private static final String TAG = "MtkSmsManagerWrapper";
    private Object mMtkSmsManager;

    private MtkSmsManagerWrapper(Object mtkSmsManager) {
        this.mMtkSmsManager = mtkSmsManager;
    }

    public static MtkSmsManagerWrapper getDefault() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> classSmsManager = Class.forName("mediatek.telephony.MtkSmsManager");
            Method method = classSmsManager.getDeclaredMethod("getDefault", new Class[0]);
            Object result = method.invoke(null, new Object[0]);
            return new MtkSmsManagerWrapper(result);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public MtkIccSmsStorageStatusWrapper getSmsSimMemoryStatus() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Method method = this.mMtkSmsManager.getClass().getDeclaredMethod("getSmsSimMemoryStatus", new Class[0]);
            Object object = method.invoke(this.mMtkSmsManager, new Object[0]);
            MtkIccSmsStorageStatusWrapper mtkIccSmsStorageStatusWrapper = new MtkIccSmsStorageStatusWrapper(object);
            return mtkIccSmsStorageStatusWrapper;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static MtkSmsManagerWrapper getSmsManagerForSubscriptionId(int subId) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> classSmsManager = Class.forName("mediatek.telephony.MtkSmsManager");
            Method method = classSmsManager.getDeclaredMethod("getSmsManagerForSubscriptionId", Integer.TYPE);
            Object result = method.invoke(null, Integer.valueOf(subId));
            return new MtkSmsManagerWrapper(result);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public int copyTextMessageToIccCard(String scAddress, String address, List<String> text, int status, long timestamp) throws NoSuchMethodException, SecurityException {
        try {
            Method method = this.mMtkSmsManager.getClass().getDeclaredMethod("copyTextMessageToIccCard", String.class, String.class, List.class, Integer.TYPE, Long.TYPE);
            int result = ((Integer) method.invoke(this.mMtkSmsManager, scAddress, address, text, Integer.valueOf(status), Long.valueOf(timestamp))).intValue();
            return result;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public ArrayList<MtkSmsMessageWrapper> getAllMessagesFromIcc() throws NoSuchMethodException, SecurityException {
        ArrayList<MtkSmsMessageWrapper> managerWrapperArrayList = new ArrayList<>();
        try {
            Method method = this.mMtkSmsManager.getClass().getDeclaredMethod("getAllMessagesFromIcc", new Class[0]);
            ArrayList objects = (ArrayList) method.invoke(this.mMtkSmsManager, new Object[0]);
            if (objects != null && objects.size() > 0) {
                Iterator it = objects.iterator();
                while (it.hasNext()) {
                    Object mtkSmsMessageObj = it.next();
                    MtkSmsMessageWrapper smsMessageWrapper = new MtkSmsMessageWrapper(mtkSmsMessageObj);
                    managerWrapperArrayList.add(smsMessageWrapper);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
        return managerWrapperArrayList;
    }

    public void sendDataMessage(String destinationAddress, String scAddress, short destinationPort, short originalPort, byte[] data, PendingIntent sentIntent, PendingIntent deliveryIntent) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Method method = this.mMtkSmsManager.getClass().getDeclaredMethod("sendDataMessage", String.class, String.class, Short.TYPE, Short.TYPE, byte[].class, PendingIntent.class, PendingIntent.class);
            method.invoke(this.mMtkSmsManager, destinationAddress, scAddress, Short.valueOf(destinationPort), Short.valueOf(originalPort), data, sentIntent, deliveryIntent);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    public ArrayList<String> divideMessage(String text, int encodingType) throws NoSuchMethodException, SecurityException {
        try {
            Method method = this.mMtkSmsManager.getClass().getDeclaredMethod("divideMessage", String.class, Integer.TYPE);
            ArrayList<String> ret = (ArrayList) method.invoke(this.mMtkSmsManager, text, Integer.valueOf(encodingType));
            return ret;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public void sendMultipartTextMessageWithExtraParams(String destAddr, String scAddr, ArrayList<String> parts, Bundle extraParams, ArrayList<PendingIntent> sentIntents, ArrayList<PendingIntent> deliveryIntents) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Method method = this.mMtkSmsManager.getClass().getDeclaredMethod("sendMultipartTextMessageWithExtraParams", String.class, String.class, ArrayList.class, Bundle.class, ArrayList.class, ArrayList.class);
            method.invoke(this.mMtkSmsManager, destAddr, scAddr, parts, extraParams, sentIntents, deliveryIntents);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    public void sendMultipartTextMessageWithEncodingType(String destAddr, String scAddr, ArrayList<String> parts, int encodingType, ArrayList<PendingIntent> sentIntents, ArrayList<PendingIntent> deliveryIntents) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Method method = this.mMtkSmsManager.getClass().getDeclaredMethod("sendMultipartTextMessageWithEncodingType", String.class, String.class, ArrayList.class, Integer.TYPE, ArrayList.class, ArrayList.class);
            method.invoke(this.mMtkSmsManager, destAddr, scAddr, parts, Integer.valueOf(encodingType), sentIntents, deliveryIntents);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }
}
