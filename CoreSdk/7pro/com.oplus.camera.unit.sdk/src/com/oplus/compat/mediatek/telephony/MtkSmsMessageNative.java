package com.oplus.compat.mediatek.telephony;

import android.content.Context;
import android.telephony.SmsMessage;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.mediatek.telephony.MtkSmsMessageWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class MtkSmsMessageNative {
    private static final int INVALID_INT_RESULT = -1;
    private static final long INVALID_LONG_RESULT = -1;
    private static final String TAG = "SmsMessageNative";
    private Object mMtkSmsMessage;
    private Object mMtkSmsMessageWrapper;

    @OplusCompatibleMethod
    private static Object getDestinationAddressCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getDisplayMessageBodyCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getDisplayOriginatingAddressCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getIndexOnIccCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getMessageClassCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getServiceCenterAddressCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getStatusOnIccCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getTimestampMillisCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isStatusReportMessageCompat(Object obj) {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(params = {CharSequence.class, boolean.class})
        public static RefMethod<int[]> calculateLength;
        public static RefMethod<String> getDestinationAddress;
        public static RefMethod<String> getDisplayMessageBody;
        public static RefMethod<String> getDisplayOriginatingAddress;
        public static RefMethod<Integer> getIndexOnIcc;
        public static RefMethod<SmsMessage.MessageClass> getMessageClass;
        public static RefMethod<String> getServiceCenterAddress;
        public static RefMethod<Integer> getStatusOnIcc;
        public static RefMethod<Long> getTimestampMillis;
        public static RefMethod<Boolean> isStatusReportMessage;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "mediatek.telephony.MtkSmsMessage");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MtkSmsMessageNative(Object obj) {
        if (VersionUtils.isS()) {
            this.mMtkSmsMessage = obj;
        } else {
            this.mMtkSmsMessageWrapper = obj;
        }
    }

    @Oem
    @RequiresApi(api = 27)
    public static int[] calculateLength(CharSequence charSequence, boolean z, Context context) throws UnSupportedApiVersionException {
        if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
            if (VersionUtils.isO_MR1()) {
                return ReflectInfo.calculateLength.call(null, charSequence, Boolean.valueOf(z));
            }
            throw new UnSupportedApiVersionException();
        }
        return null;
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public int getStatusOnIcc() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported upper R");
        }
        if (VersionUtils.isQ()) {
            return ReflectInfo.getStatusOnIcc.call(null, new Object[0]).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public boolean isStatusReportMessage() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.isStatusReportMessage.call(this.mMtkSmsMessage, new Object[0]).booleanValue();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkSmsMessageWrapper) this.mMtkSmsMessageWrapper).isStatusReportMessage();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) isStatusReportMessageCompat(this.mMtkSmsMessageWrapper)).booleanValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public int getIndexOnIcc() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getIndexOnIcc.call(this.mMtkSmsMessage, new Object[0]).intValue();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkSmsMessageWrapper) this.mMtkSmsMessageWrapper).getIndexOnIcc();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getIndexOnIccCompat(this.mMtkSmsMessageWrapper)).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getServiceCenterAddress() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getServiceCenterAddress.call(this.mMtkSmsMessage, new Object[0]);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkSmsMessageWrapper) this.mMtkSmsMessageWrapper).getServiceCenterAddress();
        }
        if (VersionUtils.isQ()) {
            return (String) getServiceCenterAddressCompat(this.mMtkSmsMessageWrapper);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getDisplayOriginatingAddress() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getDisplayOriginatingAddress.call(this.mMtkSmsMessage, new Object[0]);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkSmsMessageWrapper) this.mMtkSmsMessageWrapper).getDisplayOriginatingAddress();
        }
        if (VersionUtils.isQ()) {
            return (String) getDisplayOriginatingAddressCompat(this.mMtkSmsMessageWrapper);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getDestinationAddress() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getDestinationAddress.call(this.mMtkSmsMessage, new Object[0]);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkSmsMessageWrapper) this.mMtkSmsMessageWrapper).getDestinationAddress();
        }
        if (VersionUtils.isQ()) {
            return (String) getDestinationAddressCompat(this.mMtkSmsMessageWrapper);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public SmsMessage.MessageClass getMessageClass() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getMessageClass.call(this.mMtkSmsMessage, new Object[0]);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkSmsMessageWrapper) this.mMtkSmsMessageWrapper).getMessageClass();
        }
        if (VersionUtils.isQ()) {
            return (SmsMessage.MessageClass) getMessageClassCompat(this.mMtkSmsMessageWrapper);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getDisplayMessageBody() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getDisplayMessageBody.call(this.mMtkSmsMessage, new Object[0]);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkSmsMessageWrapper) this.mMtkSmsMessageWrapper).getDisplayMessageBody();
        }
        if (VersionUtils.isQ()) {
            return (String) getDisplayMessageBodyCompat(this.mMtkSmsMessageWrapper);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public long getTimestampMillis() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ReflectInfo.getTimestampMillis.call(this.mMtkSmsMessage, new Object[0]).longValue();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((MtkSmsMessageWrapper) this.mMtkSmsMessageWrapper).getTimestampMillis();
        }
        if (VersionUtils.isQ()) {
            return ((Long) getTimestampMillisCompat(this.mMtkSmsMessageWrapper)).longValue();
        }
        throw new UnSupportedApiVersionException();
    }
}
