package com.oplus.ocs.camera.appinterface.adapter;

import android.util.Size;
import com.oplus.ocs.camera.appinterface.adapter.CameraAlgoSwitchConfigUtil;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;

/* JADX INFO: loaded from: classes.dex */
public class CameraAlgoSwitchConfig {
    public static boolean getSupportCaptureAlgo(String str, int i, String str2) {
        return AlgoSwitchConfig.getSupportCaptureAlgo(str, i, str2);
    }

    public static boolean getSupportCameraFeature(String str, int i) {
        return AlgoSwitchConfig.getSupportCameraFeature(str, i);
    }

    public static boolean getSupportPreviewAlgo(String str, int i, String str2, String str3) {
        return AlgoSwitchConfig.getSupportPreviewAlgo(str, i, str2, str3);
    }

    public static int getApsVersion() {
        return AlgoSwitchConfig.getApsVersion();
    }

    public static boolean getSupportApsCapture() {
        return AlgoSwitchConfig.getSupportApsCapture();
    }

    public static boolean getSupportApsPreview() {
        return AlgoSwitchConfig.getSupportApsPreview();
    }

    public static CameraAlgoSwitchConfigUtil.CaptureConfig getCaptureConfig(String str, int i) {
        return new CameraAlgoSwitchConfigUtil.CaptureConfig(AlgoSwitchConfig.getCaptureConfig(str, i));
    }

    public static CameraAlgoSwitchConfigUtil.PreviewConfig getPreviewConfig(String str, int i) {
        return new CameraAlgoSwitchConfigUtil.PreviewConfig(AlgoSwitchConfig.getPreviewConfig(str, i));
    }

    public static CameraAlgoSwitchConfigUtil.PreviewConfig getPreviewConfig(String str, int i, Size size, Size size2, boolean z, boolean z2, boolean z3) {
        return new CameraAlgoSwitchConfigUtil.PreviewConfig(AlgoSwitchConfig.getPreviewConfig(str, i, size, size2, size2, z, z2, z3));
    }
}
