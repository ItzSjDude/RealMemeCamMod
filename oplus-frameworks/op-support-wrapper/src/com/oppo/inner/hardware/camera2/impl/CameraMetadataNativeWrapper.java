package com.oppo.inner.hardware.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import com.oplus.inner.hardware.camera2.impl.CameraMetadataNativeWrapper;

public class CameraMetadataNativeWrapper {
    public static int copyBuf(Object obj, long address) {
        return CameraMetadataNativeWrapper.copyBuf(obj, address);
    }

    public static int getBufSize(Object obj) {
        return CameraMetadataNativeWrapper.getBufSize(obj);
    }

    public static long getMetadataPtr(Object obj) {
        return CameraMetadataNativeWrapper.getMetadataPtr(obj);
    }

}