package com.oppo.inner.os.storage;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.storage.DiskInfo;
import android.os.storage.IStorageManager;
import android.os.storage.StorageEventListener;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;
import android.util.Log;
import java.io.File;
import java.util.HashMap;
import com.oplus.inner.os.storage.StorageManagerWrapper;

public class StorageManagerWrapper {
    public static StorageVolume[] getVolumeList(int userId, int flags) {
        return StorageManagerWrapper.getVolumeList(userId, flags);
    }

    public static StorageVolume getStorageVolume(File file, int userId) {
        return StorageManagerWrapper.getStorageVolume(file, userId);
    }

    public static VolumeInfoWrapper getSDCardVolumeInfo() {
        return StorageManagerWrapper.getSDCardVolumeInfo();
    }

    public static void registerListener(Context context, final StorageEventListenerWrapper listener) {
        StorageManagerWrapper.registerListener(context, listener);
    }

    public static void unregisterListener(Context context, StorageEventListenerWrapper listener) {
        StorageManagerWrapper.unregisterListener(context, listener);
    }

    public static String getVolumeState(Context context, String mountPoint) {
        return StorageManagerWrapper.getVolumeState(context, mountPoint);
    }

}