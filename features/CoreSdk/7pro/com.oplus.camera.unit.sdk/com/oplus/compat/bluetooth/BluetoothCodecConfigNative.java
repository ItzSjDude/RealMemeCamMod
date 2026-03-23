package com.oplus.compat.bluetooth;

import android.bluetooth.BluetoothCodecConfig;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
/* loaded from: classes.dex */
public class BluetoothCodecConfigNative {
    @Grey
    @RequiresApi(api = 30)
    public static int SOURCE_CODEC_TYPE_APTX_ADAPTIVE = 0;
    @Grey
    @RequiresApi(api = 30)
    public static int SOURCE_CODEC_TYPE_APTX_TWSP = 0;
    private static final String TAG = "BluetoothCodecConfigNative";

    private BluetoothCodecConfigNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefInt SOURCE_CODEC_TYPE_APTX_ADAPTIVE;
        private static RefInt SOURCE_CODEC_TYPE_APTX_TWSP;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, BluetoothCodecConfig.class);
        }
    }

    static {
        try {
            if (VersionUtils.isR()) {
                SOURCE_CODEC_TYPE_APTX_ADAPTIVE = ReflectInfo.SOURCE_CODEC_TYPE_APTX_ADAPTIVE.getWithException(null);
                SOURCE_CODEC_TYPE_APTX_TWSP = ReflectInfo.SOURCE_CODEC_TYPE_APTX_TWSP.getWithException(null);
                return;
            }
            throw new UnSupportedApiVersionException("not support before R");
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
