package com.oplus.compat.mediatek.telephony;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.mediatek.telephony.MtkIccSmsStorageStatusWrapper;
import com.oplus.inner.mediatek.telephony.MtkSmsManagerWrapper;
import com.oplus.inner.mediatek.telephony.MtkSmsMessageWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class MtkSmsManagerNative {
    private static final int INVALID_RESULT = -1;
    private static final String TAG = "MtkSmsManagerNative";
    private Object mMtkSmsManagerObj;
    private MtkSmsManagerWrapper mMtkSmsManagerWrapper;

    @OplusCompatibleMethod
    private static Object copyTextMessageToIccCardCompat(Object obj, String str, String str2, List<String> list, int i, long j) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object divideMessageCompat(Object obj, String str, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getAllMessagesFromIccCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getDefaultCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getSmsManagerForSubscriptionIdCompat(int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getSmsSimMemoryStatusCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static void sendDataMessageCompat(Object obj, String str, String str2, short s, short s2, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
    }

    @OplusCompatibleMethod
    private static void sendMultipartTextMessageWithEncodingTypeCompat(Object obj, String str, String str2, ArrayList<String> arrayList, int i, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3) {
    }

    @OplusCompatibleMethod
    private static void sendMultipartTextMessageWithExtraParams(Object obj, String str, String str2, ArrayList<String> arrayList, Bundle bundle, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3) {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Integer> copyTextMessageToIccCard;
        public static RefMethod<ArrayList<String>> divideMessage;
        public static RefMethod<ArrayList<Object>> getAllMessagesFromIcc;
        public static RefMethod<Object> getDefault;
        public static RefMethod<Object> getSmsManagerForSubscriptionId;
        public static RefMethod<Object> getSmsSimMemoryStatus;
        public static RefMethod<Void> sendDataMessage;
        public static RefMethod<Void> sendMultipartTextMessageWithEncodingType;
        public static RefMethod<Void> sendMultipartTextMessageWithExtraParams;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "mediatek.telephony.MtkSmsManager");
        }
    }

    private MtkSmsManagerNative(MtkSmsManagerWrapper mtkSmsManagerWrapper) {
        this.mMtkSmsManagerWrapper = mtkSmsManagerWrapper;
    }

    private MtkSmsManagerNative(Object obj) {
        this.mMtkSmsManagerObj = obj;
    }

    @Oem
    @RequiresApi(api = 27)
    public static MtkSmsManagerNative getDefault(Context context) throws UnSupportedApiVersionException {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isS()) {
                return new MtkSmsManagerNative(ReflectInfo.getDefault.call(null, new Object[0]));
            }
            if (VersionUtils.isOsVersion11_3()) {
                return new MtkSmsManagerNative(MtkSmsManagerWrapper.getDefault());
            }
            if (VersionUtils.isQ()) {
                return new MtkSmsManagerNative(getDefaultCompat());
            }
            if (VersionUtils.isO_MR1()) {
                return new MtkSmsManagerNative(ReflectInfo.getDefault.call(null, new Object[0]));
            }
            throw new UnSupportedApiVersionException();
        }
        return null;
    }

    @Oem
    @RequiresApi(api = 27)
    public MtkIccSmsStorageStatusNative getSmsSimMemoryStatus(Context context) {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isS()) {
                return new MtkIccSmsStorageStatusNative(ReflectInfo.getSmsSimMemoryStatus.call(this.mMtkSmsManagerObj, new Object[0]));
            }
            if (VersionUtils.isOsVersion11_3()) {
                return new MtkIccSmsStorageStatusNative(new MtkIccSmsStorageStatusWrapper(this.mMtkSmsManagerWrapper.getSmsSimMemoryStatus()));
            }
            if (VersionUtils.isQ()) {
                return new MtkIccSmsStorageStatusNative(getSmsSimMemoryStatusCompat(this.mMtkSmsManagerObj));
            }
            if (VersionUtils.isO_MR1()) {
                return new MtkIccSmsStorageStatusNative(ReflectInfo.getSmsSimMemoryStatus.call(this.mMtkSmsManagerObj, new Object[0]));
            }
            Log.e(TAG, "Not supported before O: ");
            return null;
        }
        return null;
    }

    @Oem
    @RequiresApi(api = 27)
    public static MtkSmsManagerNative getSmsManagerForSubscriptionId(Context context, int i) throws UnSupportedApiVersionException {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isS()) {
                return new MtkSmsManagerNative(ReflectInfo.getSmsManagerForSubscriptionId.call(null, Integer.valueOf(i)));
            }
            if (VersionUtils.isOsVersion11_3()) {
                return new MtkSmsManagerNative(MtkSmsManagerWrapper.getSmsManagerForSubscriptionId(i));
            }
            if (VersionUtils.isQ()) {
                return new MtkSmsManagerNative(getSmsManagerForSubscriptionIdCompat(i));
            }
            if (VersionUtils.isO_MR1()) {
                return new MtkSmsManagerNative(ReflectInfo.getSmsManagerForSubscriptionId.call(null, Integer.valueOf(i)));
            }
            throw new UnSupportedApiVersionException();
        }
        return null;
    }

    @Oem
    @RequiresApi(api = 27)
    public int copyTextMessageToIccCard(Context context, String str, String str2, List<String> list, int i, long j) throws UnSupportedApiVersionException {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isS()) {
                return ReflectInfo.copyTextMessageToIccCard.call(this.mMtkSmsManagerObj, str, str2, list, Integer.valueOf(i), Long.valueOf(j)).intValue();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return this.mMtkSmsManagerWrapper.copyTextMessageToIccCard(str, str2, list, i, j);
            }
            if (VersionUtils.isQ()) {
                return ((Integer) copyTextMessageToIccCardCompat(this.mMtkSmsManagerObj, str, str2, list, i, j)).intValue();
            }
            if (VersionUtils.isO_MR1()) {
                return ReflectInfo.copyTextMessageToIccCard.call(this.mMtkSmsManagerObj, str, str2, list, Integer.valueOf(i), Long.valueOf(j)).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
        return -1;
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public ArrayList<MtkSmsMessageNative> getAllMessagesFromIcc(Context context) throws UnSupportedApiVersionException {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isS()) {
                ArrayList<MtkSmsMessageNative> arrayList = new ArrayList<>();
                Iterator<Object> it = ReflectInfo.getAllMessagesFromIcc.call(this.mMtkSmsManagerObj, new Object[0]).iterator();
                while (it.hasNext()) {
                    arrayList.add(new MtkSmsMessageNative(it.next()));
                }
                return arrayList;
            } else if (VersionUtils.isOsVersion11_3()) {
                ArrayList<MtkSmsMessageNative> arrayList2 = new ArrayList<>();
                ArrayList allMessagesFromIcc = this.mMtkSmsManagerWrapper.getAllMessagesFromIcc();
                if (allMessagesFromIcc != null && allMessagesFromIcc.size() > 0) {
                    Iterator it2 = allMessagesFromIcc.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(new MtkSmsMessageNative((MtkSmsMessageWrapper) it2.next()));
                    }
                }
                return arrayList2;
            } else if (VersionUtils.isQ()) {
                ArrayList<MtkSmsMessageNative> arrayList3 = new ArrayList<>();
                ArrayList arrayList4 = (ArrayList) getAllMessagesFromIccCompat(this.mMtkSmsManagerObj);
                if (arrayList4 != null && arrayList4.size() > 0) {
                    Iterator it3 = arrayList4.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(new MtkSmsMessageNative(it3.next()));
                    }
                }
                return arrayList3;
            } else {
                throw new UnSupportedApiVersionException();
            }
        }
        return null;
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void sendDataMessage(Context context, String str, String str2, short s, short s2, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2) throws UnSupportedApiVersionException {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isS()) {
                ReflectInfo.sendDataMessage.call(this.mMtkSmsManagerObj, str, str2, Short.valueOf(s), Short.valueOf(s2), bArr, pendingIntent, pendingIntent2);
            } else if (VersionUtils.isOsVersion11_3()) {
                this.mMtkSmsManagerWrapper.sendDataMessage(str, str2, s, s2, bArr, pendingIntent, pendingIntent2);
            } else if (VersionUtils.isQ()) {
                sendDataMessageCompat(this.mMtkSmsManagerObj, str, str2, s, s2, bArr, pendingIntent, pendingIntent2);
            } else {
                throw new UnSupportedApiVersionException();
            }
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public ArrayList<String> divideMessage(Context context, String str, int i) throws UnSupportedApiVersionException {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isS()) {
                return ReflectInfo.divideMessage.call(this.mMtkSmsManagerObj, str, Integer.valueOf(i));
            }
            if (VersionUtils.isOsVersion11_3()) {
                return this.mMtkSmsManagerWrapper.divideMessage(str, i);
            }
            if (VersionUtils.isQ()) {
                return (ArrayList) divideMessageCompat(this.mMtkSmsManagerObj, str, i);
            }
            throw new UnSupportedApiVersionException();
        }
        return null;
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void sendMultipartTextMessageWithExtraParams(Context context, String str, String str2, ArrayList<String> arrayList, Bundle bundle, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3) throws UnSupportedApiVersionException {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isS()) {
                ReflectInfo.sendMultipartTextMessageWithExtraParams.call(str, str2, arrayList, bundle, arrayList2, arrayList3);
            } else if (VersionUtils.isOsVersion11_3()) {
                this.mMtkSmsManagerWrapper.sendMultipartTextMessageWithExtraParams(str, str2, arrayList, bundle, arrayList2, arrayList3);
            } else if (VersionUtils.isQ()) {
                sendMultipartTextMessageWithExtraParams(this.mMtkSmsManagerObj, str, str2, arrayList, bundle, arrayList2, arrayList3);
            } else {
                throw new UnSupportedApiVersionException();
            }
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void sendMultipartTextMessageWithEncodingType(Context context, String str, String str2, ArrayList<String> arrayList, int i, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3) throws UnSupportedApiVersionException {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isS()) {
                ReflectInfo.sendMultipartTextMessageWithEncodingType.call(str, str2, arrayList, Integer.valueOf(i), arrayList2, arrayList3);
            } else if (VersionUtils.isOsVersion11_3()) {
                this.mMtkSmsManagerWrapper.sendMultipartTextMessageWithEncodingType(str, str2, arrayList, i, arrayList2, arrayList3);
            } else if (VersionUtils.isQ()) {
                sendMultipartTextMessageWithEncodingTypeCompat(this.mMtkSmsManagerObj, str, str2, arrayList, i, arrayList2, arrayList3);
            } else {
                throw new UnSupportedApiVersionException();
            }
        }
    }
}
