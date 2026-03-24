package com.oplus.compat.telephony;

import android.telephony.SmsMessage;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class SmsMessageNative {
    private static final String TAG = "SmsMessageNative";

    @OplusCompatibleMethod
    private static Object getDestinationAddressQCompat(SmsMessage smsMessage) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getEncodingTypeQCompat(SmsMessage smsMessage) {
        return null;
    }

    private SmsMessageNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<String> getDestinationAddress;
        public static RefMethod<Integer> getEncodingType;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.telephony.SmsMessage");
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static int getSubId(SmsMessage smsMessage) throws UnSupportedApiVersionException {
        if (VersionUtils.isN()) {
            return smsMessage.getSubId();
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static void setSubId(SmsMessage smsMessage, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isN()) {
            smsMessage.setSubId(i);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static boolean isWrappedSmsMessageNull(SmsMessage smsMessage) throws UnSupportedApiVersionException {
        if (VersionUtils.isN()) {
            return smsMessage.mWrappedSmsMessage == null;
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static String getDestinationAddress(SmsMessage smsMessage) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return (String) getDestinationAddressQCompat(smsMessage);
        }
        if (VersionUtils.isN()) {
            return ReflectInfo.getDestinationAddress.call(smsMessage, new Object[0]);
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static int getEncodingType(SmsMessage smsMessage) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getEncodingTypeQCompat(smsMessage)).intValue();
        }
        if (VersionUtils.isN()) {
            return ReflectInfo.getEncodingType.call(smsMessage, new Object[0]).intValue();
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }
}
