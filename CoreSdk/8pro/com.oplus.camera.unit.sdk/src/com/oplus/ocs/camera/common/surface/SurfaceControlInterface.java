package com.oplus.ocs.camera.common.surface;

import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public interface SurfaceControlInterface {
    LinkedList<SurfaceWrapper> buildStreamSurface(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str);
}
