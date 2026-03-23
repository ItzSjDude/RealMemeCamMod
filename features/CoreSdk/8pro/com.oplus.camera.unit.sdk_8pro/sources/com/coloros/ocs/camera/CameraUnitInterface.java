package com.coloros.ocs.camera;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.NonNull;
import com.coloros.ocs.camera.callback.CameraStateCallbackAdapter;
import com.coloros.ocs.camera.info.CameraDeviceInfoInterface;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface CameraUnitInterface {
    boolean checkAuthenticationPermission(@NonNull Context context, @NonNull String str, int i);

    Map<String, List<String>> getAllSupportCameraMode();

    CameraDeviceInfoInterface getCameraDeviceInfo(@NonNull String str, @NonNull String str2);

    void initialize(@NonNull Context context);

    boolean isAuthedClient(@NonNull Context context);

    void openCamera(@NonNull String str, @NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, @NonNull Handler handler);

    void release();
}
