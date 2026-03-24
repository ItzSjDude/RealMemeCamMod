package com.oplus.inner.os.storage;

import android.os.storage.IStorageVolumeExt;
import android.os.storage.OplusMirrorStorageVolume;
import android.os.storage.StorageVolume;
import android.util.Log;

/* loaded from: classes.dex */
public class StorageVolumeWrapper {
    private static final String TAG = "StorageVolumeWrapper";

    private StorageVolumeWrapper() {
    }

    public static String getPath(StorageVolume storageVolume) {
        try {
            String result = storageVolume.getPath();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static int getReadOnlyType(StorageVolume storageVolume) {
        try {
            IStorageVolumeExt baseStorageVolume = (IStorageVolumeExt) OplusMirrorStorageVolume.mStorageVolumeExt.get(storageVolume);
            if (baseStorageVolume == null) {
                return -1;
            }
            int result = baseStorageVolume.getReadOnlyType();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getFatVolumeId(StorageVolume storageVolume) {
        return storageVolume.getFatVolumeId();
    }
}
