package com.oplus.compat.os.storage;

import android.os.storage.StorageVolume;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.os.storage.StorageVolumeWrapper;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class StorageVolumeNative {
    private static final String TAG = "StorageVolumeNative";

    @OplusCompatibleMethod
    private static Object getFatVolumeIdCompat(StorageVolume storageVolume) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusReadOnlyTypeCompat(StorageVolume storageVolume) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getPathCompat(StorageVolume storageVolume) {
        return null;
    }

    private StorageVolumeNative() {
    }

    /* loaded from: classes.dex */
    private static class RefStorageVolume {
        private static RefMethod<Integer> getReadOnlyType;
        public static RefObject<Object> mStorageVolumeExt;

        private RefStorageVolume() {
        }

        static {
            RefClass.load(RefStorageVolume.class, StorageVolume.class);
        }
    }

    /* loaded from: classes.dex */
    private static class RefStorageVolumeExt {
        private static final Class TYPE = RefClass.load(RefStorageVolumeExt.class, "android.os.storage.IStorageVolumeExt");
        private static RefMethod<Integer> getReadOnlyType;

        private RefStorageVolumeExt() {
        }
    }

    @Blocked
    @RequiresApi(api = 23)
    public static String getPath(StorageVolume storageVolume) throws UnSupportedApiVersionException {
        if (VersionUtils.isM()) {
            try {
                return storageVolume.getPath();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = 28)
    public static int getOplusReadOnlyType(StorageVolume storageVolume) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ((Integer) RefStorageVolumeExt.getReadOnlyType.call(RefStorageVolume.mStorageVolumeExt.get(storageVolume), new Object[0])).intValue();
        } else if (VersionUtils.isOsVersion11_3()) {
            return StorageVolumeWrapper.getReadOnlyType(storageVolume);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getOplusReadOnlyTypeCompat(storageVolume)).intValue();
            }
            if (VersionUtils.isP()) {
                return ((Integer) RefStorageVolume.getReadOnlyType.call(storageVolume, new Object[0])).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Blocked
    @RequiresApi(api = 28)
    public static int getFatVolumeId(StorageVolume storageVolume) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return storageVolume.getFatVolumeId();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return StorageVolumeWrapper.getFatVolumeId(storageVolume);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getFatVolumeIdCompat(storageVolume)).intValue();
            }
            if (VersionUtils.isP()) {
                return storageVolume.getFatVolumeId();
            }
            throw new UnSupportedApiVersionException();
        }
    }
}
