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

/* loaded from: classes.dex */
public class CameraMetadataNativeWrapper {
    private static final int DEFAULT_VENDOR_ID_VALUE = 0;
    private static final String KEY_ANDROID = "android";
    private static final String KEY_CAMERA_CHARACTERRISTICS = "mProperties";
    private static final String KEY_GET_VENDOR_TAG = "nativeGetTagFromKey";
    private static final String KEY_METADATA_PTR = "mMetadataPtr";
    private static final String KEY_METADATA_RESULT = "mResults";
    private static final String KEY_NATIVE_COPY_BUFFER = "nativeCopyBufNative";
    private static final String KEY_NATIVE_GET_BUFFER_SIZE = "nativeGetNativeBufSize";
    private static final String TAG = "CameraMetadataNativeWrapper";

    public static int copyBuf(Object obj, long address)
            throws NoSuchFieldException, NoSuchMethodException, SecurityException {
        CameraMetadataNative cameraMetadataNative = getCameraMetadataNativeObj(obj);
        if (cameraMetadataNative == null) {
            return -1;
        }
        try {
            Class metaClass = cameraMetadataNative.getClass();
            Method copyBufMethod = metaClass.getDeclaredMethod(KEY_NATIVE_COPY_BUFFER, Long.TYPE);
            copyBufMethod.setAccessible(true);
            int ret = ((Integer) copyBufMethod.invoke(cameraMetadataNative, Long.valueOf(address))).intValue();
            return ret;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getBufSize(Object obj) throws NoSuchFieldException, NoSuchMethodException, SecurityException {
        CameraMetadataNative cameraMetadataNative = getCameraMetadataNativeObj(obj);
        if (cameraMetadataNative == null) {
            return 0;
        }
        try {
            Class metaClass = cameraMetadataNative.getClass();
            Method getBufSizeMethod = metaClass.getDeclaredMethod(KEY_NATIVE_GET_BUFFER_SIZE, new Class[0]);
            getBufSizeMethod.setAccessible(true);
            int size = ((Integer) getBufSizeMethod.invoke(cameraMetadataNative, new Object[0])).intValue();
            return size;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static ConcurrentHashMap<CaptureResult.Key<?>, Integer> getVendorTagId(CaptureResult result)
            throws NoSuchMethodException, SecurityException {
        Object[] objArr;
        ConcurrentHashMap<CaptureResult.Key<?>, Integer> vendorKeyMap;
        if (result == null) {
            Log.e(TAG, "getVendorTagId, CaptureResult is null, return");
            return null;
        }
        ConcurrentHashMap<CaptureResult.Key<?>, Integer> vendorKeyMap2 = new ConcurrentHashMap<>();
        List<CaptureResult.Key<?>> allKeys = result.getKeys();
        for (CaptureResult.Key<?> key : allKeys) {
            boolean isDefaultGoogleTag = key.getName().contains(KEY_ANDROID);
            if (!isDefaultGoogleTag) {
                vendorKeyMap2.put(key, 0);
            }
        }
        try {
            CameraMetadataNative metaDataObj = getCameraMetadataNativeObj(result);
            if (metaDataObj == null) {
                return null;
            }
            Class metaClass = metaDataObj.getClass();
            int i = 2;
            Method getVendorTagFromKey = metaClass.getDeclaredMethod(KEY_GET_VENDOR_TAG, String.class, Long.TYPE);
            getVendorTagFromKey.setAccessible(true);
            HashMap<CaptureResult.Key<?>, Integer> temp = new HashMap<>();
            for (CaptureResult.Key<?> key2 : vendorKeyMap2.keySet()) {
                try {
                    objArr = new Object[2];
                    objArr[0] = new String(key2.getName());
                    objArr[1] = new Long(key2.getVendorId());
                    int vendorTagId = ((Integer) getVendorTagFromKey.invoke(null, objArr)).intValue();
                    temp.put(key2, Integer.valueOf(vendorTagId));
                } catch (Exception e) {
                    Log.e(TAG, "getVendorTagId error", e);
                    return null;
                }
            }
            ConcurrentHashMap<CaptureResult.Key<?>, Integer> vendorKeyMap3 = vendorKeyMap2;
            try {
                for (CaptureResult.Key<?> tempKey : temp.keySet()) {
                    ConcurrentHashMap<CaptureResult.Key<?>, Integer> vendorKeyMap4 = vendorKeyMap3;
                    try {
                        vendorKeyMap4.put(tempKey, temp.get(tempKey));
                        vendorKeyMap3 = vendorKeyMap4;
                    } catch (Exception e3) {
                        Log.e(TAG, "getVendorTagId error", e3);
                        return null;
                    }
                }
                return vendorKeyMap3;
            } catch (Exception e4) {
                // empty
            }
        } catch (Exception e5) {
            // empty
        }
        return vendorKeyMap2;
    }

    public static long getMetadataPtr(Object obj) throws NoSuchFieldException {
        CameraMetadataNative cameraMetadataNative = getCameraMetadataNativeObj(obj);
        if (cameraMetadataNative == null) {
            return 0L;
        }
        try {
            Class metaClass = cameraMetadataNative.getClass();
            Field metadataPtr = metaClass.getDeclaredField(KEY_METADATA_PTR);
            metadataPtr.setAccessible(true);
            return ((Long) metadataPtr.get(cameraMetadataNative)).longValue();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0L;
        }
    }

    private static CameraMetadataNative getCameraMetadataNativeObj(Object obj) throws NoSuchFieldException {
        if (obj == null) {
            return null;
        }
        CameraMetadataNative cameraMetadataNative = null;
        try {
            if (obj instanceof CameraCharacteristics) {
                Field metaData = obj.getClass().getDeclaredField(KEY_CAMERA_CHARACTERRISTICS);
                metaData.setAccessible(true);
                cameraMetadataNative = (CameraMetadataNative) metaData.get(obj);
            } else if (obj instanceof TotalCaptureResult) {
                Field metaData2 = obj.getClass().getSuperclass().getDeclaredField(KEY_METADATA_RESULT);
                metaData2.setAccessible(true);
                cameraMetadataNative = (CameraMetadataNative) metaData2.get(obj);
            } else if (obj instanceof CaptureResult) {
                Field metaData3 = obj.getClass().getDeclaredField(KEY_METADATA_RESULT);
                metaData3.setAccessible(true);
                cameraMetadataNative = (CameraMetadataNative) metaData3.get(obj);
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
        return cameraMetadataNative;
    }
}
