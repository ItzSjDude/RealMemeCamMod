package com.oplus.compat.hardware.camera2;

import android.content.Context;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.OplusCameraManager;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class CameraManagerNative {
    private static final String TAG = "CameraManagerNative";

    @OplusCompatibleMethod
    private static void addAuthResultInfoQCompat(CameraManager cameraManager, int i, int i2, int i3, String str) {
    }

    @OplusCompatibleMethod
    private static void setDeathRecipientQCompat(CameraManager cameraManager, IBinder iBinder) {
    }

    private CameraManagerNative() {
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void addAuthResultInfo(Context context, int i, int i2, int i3, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            try {
                OplusCameraManager.getInstance().addAuthResultInfo(context, i, i2, i3, str);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isQ()) {
            addAuthResultInfoQCompat((CameraManager) context.getSystemService("camera"), i, i2, i3, str);
        } else {
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setDeathRecipient(CameraManager cameraManager, IBinder iBinder) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            try {
                OplusCameraManager.getInstance().setDeathRecipient(iBinder);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isQ()) {
            setDeathRecipientQCompat(cameraManager, iBinder);
        } else {
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }
}
