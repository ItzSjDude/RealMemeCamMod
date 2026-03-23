package com.oplus.compat.telephony;

import android.app.PendingIntent;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.telephony.SmsManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SmsManagerNative {
    private static final String TAG = "SmsManagerNative";

    @OplusCompatibleMethod
    private static Object copyMessageToIccCompat(SmsManager smsManager, byte[] bArr, byte[] bArr2, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object deleteMessageFromIccCompat(SmsManager smsManager, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object divideMessageOemCompat(SmsManager smsManager, String str, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getAllMessagesFromIccCompat(SmsManager smsManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static void sendMultipartTextMessageOemCompat(SmsManager smsManager, String str, String str2, ArrayList<String> arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3, int i, boolean z, int i2, int i3) {
    }

    private SmsManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Boolean> copyMessageToIcc;
        public static RefMethod<ArrayList<String>> divideMessageOem;
        @MethodName(name = "sendMultipartTextMessage", params = {String.class, String.class, ArrayList.class, ArrayList.class, ArrayList.class, int.class, boolean.class, int.class})
        public static RefMethod<Void> sendMultipartTextMessage;
        public static RefMethod<Void> sendMultipartTextMessageOem;
        @MethodName(name = "sendTextMessage", params = {String.class, String.class, String.class, PendingIntent.class, PendingIntent.class, int.class, boolean.class, int.class})
        public static RefMethod<Void> sendTextMessage;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.telephony.SmsManager");
        }
    }

    @Blocked
    @RequiresApi(api = 30)
    public static void sendTextMessage(@NonNull SmsManager smsManager, String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2, int i, boolean z, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfo.sendTextMessage.call(smsManager, str, str2, str3, pendingIntent, pendingIntent2, Integer.valueOf(i), Boolean.valueOf(z), Integer.valueOf(i2));
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static void sendMultipartTextMessage(@NonNull SmsManager smsManager, String str, String str2, ArrayList arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3, int i, boolean z, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfo.sendMultipartTextMessage.call(smsManager, str, str2, arrayList, arrayList2, arrayList3, Integer.valueOf(i), Boolean.valueOf(z), Integer.valueOf(i2));
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static ArrayList<SmsMessage> getAllMessagesFromIcc(@NonNull SmsManager smsManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isN()) {
            return smsManager.getAllMessagesFromIcc();
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static boolean copyMessageToIcc(SmsManager smsManager, byte[] bArr, byte[] bArr2, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.copyMessageToIcc.call(smsManager, bArr, bArr2, Integer.valueOf(i)).booleanValue();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return SmsManagerWrapper.copyMessageToIcc(smsManager, bArr, bArr2, i);
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) copyMessageToIccCompat(smsManager, bArr, bArr2, i)).booleanValue();
        }
        if (VersionUtils.isN()) {
            return ReflectInfo.copyMessageToIcc.call(smsManager, bArr, bArr2, Integer.valueOf(i)).booleanValue();
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static boolean deleteMessageFromIcc(@NonNull SmsManager smsManager, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return smsManager.deleteMessageFromIcc(i);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return SmsManagerWrapper.deleteMessageFromIcc(smsManager, i);
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) deleteMessageFromIccCompat(smsManager, i)).booleanValue();
        }
        if (VersionUtils.isN()) {
            return smsManager.deleteMessageFromIcc(i);
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static void sendMultipartTextMessageOem(@NonNull SmsManager smsManager, String str, String str2, ArrayList<String> arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3, int i, boolean z, int i2, int i3) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            sendMultipartTextMessageOemCompat(smsManager, str, str2, arrayList, arrayList2, arrayList3, i, z, i2, i3);
        } else if (VersionUtils.isN()) {
            ReflectInfo.sendMultipartTextMessageOem.call(smsManager, str, str2, arrayList, arrayList2, arrayList3, Integer.valueOf(i), Boolean.valueOf(z), Integer.valueOf(i2), Integer.valueOf(i3));
        } else {
            throw new UnSupportedApiVersionException("not supported before N");
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static ArrayList<String> divideMessageOem(@NonNull SmsManager smsManager, String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return (ArrayList) divideMessageOemCompat(smsManager, str, i);
        }
        if (VersionUtils.isN()) {
            return ReflectInfo.divideMessageOem.call(smsManager, str, Integer.valueOf(i));
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }
}
