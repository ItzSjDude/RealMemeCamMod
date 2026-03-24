package com.oppo.inner.mediatek.telephony;

import android.telephony.SmsMessage;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class MtkSmsMessageWrapper {
    private static final int INVALID_INT_RESULT = -1;
    private static final long INVALID_LONG_RESULT = -1;
    private static final String TAG = "MtkSmsMessageWrapper";
    private Object mMtkSmsMessage;

    private MtkSmsMessageWrapper() {
    }

    public MtkSmsMessageWrapper(Object obj) {
        this.mMtkSmsMessage = obj;
    }

    public static int[] calculateLength(CharSequence msgBody, boolean use7bitOnly) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> classSmsManager = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classSmsManager.getMethod("calculateLength", CharSequence.class, Boolean.TYPE);
            Object result = method.invoke(null, msgBody, Boolean.valueOf(use7bitOnly));
            if (result == null || !(result instanceof int[])) {
                return null;
            }
            return (int[]) result;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public int getStatusOnIcc() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> classMtkSmsMessage = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classMtkSmsMessage.getMethod("getStatusOnIcc", new Class[0]);
            return ((Integer) method.invoke(this.mMtkSmsMessage, new Object[0])).intValue();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public boolean isStatusReportMessage() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> classMtkSmsMessage = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classMtkSmsMessage.getMethod("isStatusReportMessage", new Class[0]);
            return ((Boolean) method.invoke(this.mMtkSmsMessage, new Object[0])).booleanValue();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public int getIndexOnIcc() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> classMtkSmsMessage = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classMtkSmsMessage.getMethod("getIndexOnIcc", new Class[0]);
            return ((Integer) method.invoke(this.mMtkSmsMessage, new Object[0])).intValue();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public String getServiceCenterAddress() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> classMtkSmsMessage = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classMtkSmsMessage.getMethod("getServiceCenterAddress", new Class[0]);
            return (String) method.invoke(this.mMtkSmsMessage, new Object[0]);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public String getDisplayOriginatingAddress() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> classMtkSmsMessage = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classMtkSmsMessage.getMethod("getDisplayOriginatingAddress", new Class[0]);
            return (String) method.invoke(this.mMtkSmsMessage, new Object[0]);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public String getDestinationAddress() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> classMtkSmsMessage = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classMtkSmsMessage.getMethod("getDestinationAddress", new Class[0]);
            return (String) method.invoke(this.mMtkSmsMessage, new Object[0]);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public SmsMessage.MessageClass getMessageClass() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> classMtkSmsMessage = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classMtkSmsMessage.getMethod("getMessageClass", new Class[0]);
            return (SmsMessage.MessageClass) method.invoke(this.mMtkSmsMessage, new Object[0]);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public String getDisplayMessageBody() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> classMtkSmsMessage = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classMtkSmsMessage.getMethod("getDisplayMessageBody", new Class[0]);
            return (String) method.invoke(this.mMtkSmsMessage, new Object[0]);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public long getTimestampMillis() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> classMtkSmsMessage = Class.forName("mediatek.telephony.MtkSmsMessage");
            Method method = classMtkSmsMessage.getMethod("getTimestampMillis", new Class[0]);
            return ((Long) method.invoke(this.mMtkSmsMessage, new Object[0])).longValue();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return INVALID_LONG_RESULT;
        }
    }
}
