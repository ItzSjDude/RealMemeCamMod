package com.oplus.compat.hardware.camera2;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.os.Handler;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.hardware.camera2.CameraDeviceWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import java.util.List;
/* loaded from: classes.dex */
public class CameraDevicesNative {
    @OplusCompatibleMethod
    private static void createCustomCaptureSessionCompat(CameraDevice cameraDevice, InputConfiguration inputConfiguration, List<OutputConfiguration> list, int i, CameraCaptureSession.StateCallback stateCallback, Handler handler) {
    }

    private CameraDevicesNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void createCustomCaptureSession(CameraDevice cameraDevice, InputConfiguration inputConfiguration, List<OutputConfiguration> list, int i, CameraCaptureSession.StateCallback stateCallback, Handler handler) throws UnSupportedApiVersionException, CameraAccessException {
        if (VersionUtils.isS()) {
            cameraDevice.createCustomCaptureSession(inputConfiguration, list, i, stateCallback, handler);
        } else if (VersionUtils.isOsVersion11_3()) {
            CameraDeviceWrapper.createCustomCaptureSession(cameraDevice, inputConfiguration, list, i, stateCallback, handler);
        } else if (VersionUtils.isQ()) {
            createCustomCaptureSessionCompat(cameraDevice, inputConfiguration, list, i, stateCallback, handler);
        } else {
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }
}
