package com.oplus.compat.hardware.camera2.impl;

import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.hardware.camera2.impl.CameraMetadataNativeWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class CameraMetadataNativeNative {
    private static final String TAG = "CameraMetadataNativeNative";

    @OplusCompatibleMethod
    private static Object copyBufCompat(Object obj, long j) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getBufSizeCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getMetadataPtrCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getVendorTagIdCompat(CaptureResult captureResult) {
        return null;
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int copyBuf(Object obj, long j) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isOsVersion11_3()) {
            return CameraMetadataNativeWrapper.copyBuf(obj, j);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) copyBufCompat(obj, j)).intValue();
        }
        throw new UnSupportedApiVersionException("Not supported before Q");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getBufSize(Object obj) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isOsVersion11_3()) {
            return CameraMetadataNativeWrapper.getBufSize(obj);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getBufSizeCompat(obj)).intValue();
        }
        throw new UnSupportedApiVersionException("Not supported before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long getMetadataPtr(CameraMetadata cameraMetadata) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return cameraMetadata.getNativeMetadataPtr();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return CameraMetadataNativeWrapper.getMetadataPtr(cameraMetadata);
        }
        if (VersionUtils.isQ()) {
            return ((Long) getMetadataPtrCompat(cameraMetadata)).longValue();
        }
        throw new UnSupportedApiVersionException("Not supported before Q");
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static ConcurrentHashMap<CaptureResult.Key<?>, Integer> getVendorTagId(@NonNull CaptureResult captureResult) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                ConcurrentHashMap<CaptureResult.Key<?>, Integer> concurrentHashMap = new ConcurrentHashMap<>();
                for (CaptureResult.Key<?> key : captureResult.getKeys()) {
                    if (!key.getName().contains("android")) {
                        concurrentHashMap.put(key, 0);
                    }
                }
                if (captureResult.getNativeMetadata() != null) {
                    HashMap hashMap = new HashMap();
                    for (CaptureResult.Key<?> key2 : concurrentHashMap.keySet()) {
                        hashMap.put(key2, Integer.valueOf(CameraMetadataNative.getTag(key2.getName(), key2.getVendorId())));
                    }
                    for (CaptureResult.Key<?> key3 : hashMap.keySet()) {
                        concurrentHashMap.put(key3, (Integer) hashMap.get(key3));
                    }
                }
                return concurrentHashMap;
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return CameraMetadataNativeWrapper.getVendorTagId(captureResult);
        } else {
            if (VersionUtils.isQ()) {
                return (ConcurrentHashMap) getVendorTagIdCompat(captureResult);
            }
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }
}
