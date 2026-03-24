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

/* loaded from: classes.dex */
public class StorageManagerWrapper {
    private static final String TAG = "StorageManagerWrapper";
    private static HashMap<StorageEventListenerWrapper, StorageEventListener> mListenerMap = new HashMap<>();

    private StorageManagerWrapper() {
    }

    public static StorageVolume[] getVolumeList(int userId, int flags) {
        try {
            StorageVolume[] result = StorageManager.getVolumeList(userId, flags);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static StorageVolume getStorageVolume(File file, int userId) {
        try {
            return StorageManager.getStorageVolume(file, userId);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static VolumeInfoWrapper getSDCardVolumeInfo() {
        try {
            IStorageManager mStorageManager = IStorageManager.Stub.asInterface(ServiceManager.getServiceOrThrow("mount"));
            if (mStorageManager == null) {
                return null;
            }
            VolumeInfo[] vols = mStorageManager.getVolumes(0);
            for (VolumeInfo vol : vols) {
                DiskInfo diskInfo = vol.getDisk();
                if (diskInfo != null && diskInfo.isSd()) {
                    VolumeInfoWrapper volumeExternalSd = new VolumeInfoWrapper(vol);
                    return volumeExternalSd;
                }
            }
            return null;
        } catch (ServiceManager.ServiceNotFoundException e) {
            Log.e(TAG, "mount service not found");
            return null;
        } catch (RemoteException e2) {
            return null;
        }
    }

    public static void registerListener(Context context, final StorageEventListenerWrapper listener) {
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        StorageEventListener mStorageListener = new StorageEventListener() { // from class: com.oppo.inner.os.storage.StorageManagerWrapper.1
            public void onStorageStateChanged(String path, String oldState, String newState) {
                listener.onStorageStateChanged(path, oldState, newState);
            }

            public void onVolumeStateChanged(VolumeInfo vol, int oldState, int newState) {
                listener.onVolumeStateChanged(new VolumeInfoWrapper(vol), oldState, newState);
            }
        };
        if (mListenerMap.get(listener) != null) {
            storageManager.unregisterListener(mListenerMap.get(listener));
            mListenerMap.remove(listener);
        }
        storageManager.registerListener(mStorageListener);
        mListenerMap.put(listener, mStorageListener);
    }

    public static void unregisterListener(Context context, StorageEventListenerWrapper listener) {
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        if (mListenerMap.get(listener) != null) {
            storageManager.unregisterListener(mListenerMap.get(listener));
            mListenerMap.remove(listener);
        }
    }

    public static String getVolumeState(Context context, String mountPoint) {
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            return storageManager.getVolumeState(mountPoint);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}
