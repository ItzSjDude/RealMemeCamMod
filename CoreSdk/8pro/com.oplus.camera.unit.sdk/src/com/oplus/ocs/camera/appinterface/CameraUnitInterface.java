package com.oplus.ocs.camera.appinterface;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.NonNull;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface CameraUnitInterface {
    boolean checkAuthenticationPermission(@NonNull Context context, @NonNull String str, int i);

    Map<String, List<String>> getAllSupportCameraMode();

    List<String> getAllSupportCameraType();

    CameraDeviceInfoInterface getCameraDeviceInfo(@NonNull String str, @NonNull String str2);

    void initialize(@NonNull Context context);

    boolean isAuthedClient(@NonNull Context context);

    void openCamera(@NonNull String str, @NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, @NonNull Handler handler);

    void preOpenCamera(@NonNull Context context);

    void release();
}
