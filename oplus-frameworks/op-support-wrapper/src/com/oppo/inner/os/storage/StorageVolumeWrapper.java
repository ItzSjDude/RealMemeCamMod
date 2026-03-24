package com.oppo.inner.os.storage;

import android.os.storage.IStorageVolumeExt;
import android.os.storage.OplusMirrorStorageVolume;
import android.os.storage.StorageVolume;
import android.util.Log;
import com.oplus.inner.os.storage.StorageVolumeWrapper;

public class StorageVolumeWrapper {
    public static String getPath(StorageVolume storageVolume) {
        return StorageVolumeWrapper.getPath(storageVolume);
    }

    public static int getReadOnlyType(StorageVolume storageVolume) {
        return StorageVolumeWrapper.getReadOnlyType(storageVolume);
    }

    public static int getFatVolumeId(StorageVolume storageVolume) {
        return StorageVolumeWrapper.getFatVolumeId(storageVolume);
    }

}