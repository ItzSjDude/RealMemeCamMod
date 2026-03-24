package com.oplus.compat.os.storage;

import android.content.Context;
import android.os.storage.DiskInfo;
import android.os.storage.StorageEventListener;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;
import androidx.annotation.RequiresApi;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.os.storage.StorageEventListenerWrapper;
import com.oplus.inner.os.storage.StorageManagerWrapper;
import com.oplus.inner.os.storage.VolumeInfoWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
@SynthesizedClassMap({$$Lambda$D6YHOXTP3MHWQuokNHCjcjamUU.class, $$Lambda$DglFd_ZrNnv1j1YRcnJPNRSsukY.class})
/* loaded from: classes.dex */
public class StorageManagerNative {
    private static final String COMPONENT_NAME = "android.os.storage.StorageManager";
    private static final String TAG = "StorageManagerNative";
    private static HashMap<StorageEventListenerNative, StorageEventListenerWrapper> mListenerMap = new HashMap<>();
    private static HashMap<StorageEventListenerNative, Object> mListenerMapCompat = new HashMap<>();

    @OplusCompatibleMethod
    private static Object getSDCardVolumeInfoCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getVolumeStateCompat(Context context, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object registerListenerCompat(Context context, Consumer<List<String>> consumer, BiConsumer<Object, List<Integer>> biConsumer) {
        return null;
    }

    @OplusCompatibleMethod
    private static void unregisterListenerCompat(Context context, Object obj) {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(name = "getVolumeList", params = {int.class, int.class})
        private static RefMethod<StorageVolume[]> getVolumeList;
        private static RefMethod<String[]> getVolumePaths;
        private static RefMethod<String> getVolumeState;
        private static RefMethod<List<Object>> getVolumes;
        private static RefMethod<Boolean> isFileEncryptedNativeOnly;
        private static RefMethod<Void> registerListener;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, StorageManager.class);
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectVolumeInfo {
        private static RefMethod<Object> getDisk;

        private ReflectVolumeInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, VolumeInfo.class);
        }
    }

    /* loaded from: classes.dex */
    private static class RefDiskInfo {
        private static RefMethod<Boolean> isSd;

        private RefDiskInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, DiskInfo.class);
        }
    }

    private StorageManagerNative() {
    }

    @Oem
    @RequiresApi(api = 23)
    public static VolumeInfoNative getSDCardVolumeInfo(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            for (VolumeInfo volumeInfo : ((StorageManager) context.getSystemService("storage")).getVolumes()) {
                VolumeInfoNative volumeInfoNative = new VolumeInfoNative(volumeInfo);
                if (volumeInfoNative.isSd()) {
                    return volumeInfoNative;
                }
            }
            return null;
        }
        if (VersionUtils.isOsVersion11_3()) {
            VolumeInfoWrapper sDCardVolumeInfo = StorageManagerWrapper.getSDCardVolumeInfo();
            if (sDCardVolumeInfo != null) {
                return new VolumeInfoNative(sDCardVolumeInfo);
            }
        } else if (VersionUtils.isQ()) {
            Object sDCardVolumeInfoCompat = getSDCardVolumeInfoCompat();
            if (sDCardVolumeInfoCompat != null) {
                return new VolumeInfoNative(sDCardVolumeInfoCompat);
            }
        } else if (VersionUtils.isM()) {
            List list = (List) ReflectInfo.getVolumes.call((StorageManager) context.getSystemService("storage"), new Object[0]);
            for (int i = 0; i < list.size(); i++) {
                Object call = ReflectVolumeInfo.getDisk.call(list.get(i), new Object[0]);
                if (call != null && ((Boolean) RefDiskInfo.isSd.call(call, new Object[0])).booleanValue()) {
                    return new VolumeInfoNative(list.get(i));
                }
            }
        } else {
            throw new UnSupportedApiVersionException();
        }
        return null;
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void registerListener(Context context, final StorageEventListenerNative storageEventListenerNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            storageEventListenerNative.setDelegate(new StorageEventListener() { // from class: com.oplus.compat.os.storage.StorageManagerNative.1
                public void onStorageStateChanged(String str, String str2, String str3) {
                    StorageEventListenerNative.this.onStorageStateChanged(str, str2, str3);
                }

                public void onVolumeStateChanged(VolumeInfo volumeInfo, int i, int i2) {
                    StorageEventListenerNative.this.onVolumeStateChanged(new VolumeInfoNative(volumeInfo), i, i2);
                }
            });
            ((StorageManager) context.getSystemService("storage")).registerListener(storageEventListenerNative.delegate());
        } else if (VersionUtils.isOsVersion11_3()) {
            StorageEventListenerWrapper storageEventListenerWrapper = new StorageEventListenerWrapper() { // from class: com.oplus.compat.os.storage.StorageManagerNative.2
                public void onStorageStateChanged(String str, String str2, String str3) {
                    StorageEventListenerNative.this.onStorageStateChanged(str, str2, str3);
                }

                public void onVolumeStateChanged(VolumeInfoWrapper volumeInfoWrapper, int i, int i2) {
                    StorageEventListenerNative.this.onVolumeStateChanged(new VolumeInfoNative(volumeInfoWrapper), i, i2);
                }
            };
            if (mListenerMap.get(storageEventListenerNative) != null) {
                mListenerMap.remove(storageEventListenerNative);
            }
            StorageManagerWrapper.registerListener(context, storageEventListenerWrapper);
            mListenerMap.put(storageEventListenerNative, storageEventListenerWrapper);
        } else if (VersionUtils.isQ()) {
            Objects.requireNonNull(storageEventListenerNative);
            Consumer consumer = new Consumer() { // from class: com.oplus.compat.os.storage.-$$Lambda$DglFd_ZrNnv1j1YRcnJPNRSsukY
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    StorageEventListenerNative.this.onStorageStateChangedCompat((List) obj);
                }
            };
            Objects.requireNonNull(storageEventListenerNative);
            Object registerListenerCompat = registerListenerCompat(context, consumer, new BiConsumer() { // from class: com.oplus.compat.os.storage.-$$Lambda$D6YHO-XTP3MHWQuokNHCjcjamUU
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    StorageEventListenerNative.this.onVolumeStateChangedCompat(obj, (List) obj2);
                }
            });
            if (mListenerMap.get(storageEventListenerNative) != null) {
                mListenerMap.remove(storageEventListenerNative);
            }
            mListenerMapCompat.put(storageEventListenerNative, registerListenerCompat);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void unregisterListener(Context context, StorageEventListenerNative storageEventListenerNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            ((StorageManager) context.getSystemService("storage")).unregisterListener(storageEventListenerNative.delegate());
        } else if (VersionUtils.isOsVersion11_3()) {
            if (mListenerMap.get(storageEventListenerNative) != null) {
                StorageManagerWrapper.unregisterListener(context, mListenerMap.get(storageEventListenerNative));
                mListenerMap.remove(storageEventListenerNative);
            }
        } else if (VersionUtils.isQ()) {
            if (mListenerMapCompat.get(storageEventListenerNative) != null) {
                unregisterListenerCompat(context, mListenerMapCompat.get(storageEventListenerNative));
                mListenerMapCompat.remove(storageEventListenerNative);
            }
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = 23)
    public static StorageVolume[] getVolumeList(int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isM()) {
            return (StorageVolume[]) ReflectInfo.getVolumeList.call(null, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new UnSupportedApiVersionException("not supported before M");
    }

    @Grey
    @RequiresApi(api = 26)
    public static String getVolumeState(Context context, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (String) ReflectInfo.getVolumeState.call((StorageManager) context.getSystemService("storage"), str);
        }
        if (VersionUtils.isQ()) {
            return (String) getVolumeStateCompat(context, str);
        }
        if (VersionUtils.isO()) {
            return ((StorageManager) context.getSystemService("storage")).getVolumeState(str);
        }
        throw new UnSupportedApiVersionException("not supported before O");
    }

    @Blocked
    @RequiresApi(api = 30)
    public static Boolean isFileEncryptedNativeOnly() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (Boolean) ReflectInfo.isFileEncryptedNativeOnly.call(null, new Object[0]);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static List<Object> getVolumes(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (List) ReflectInfo.getVolumes.call((StorageManager) context.getSystemService("storage"), new Object[0]);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static String[] getVolumePaths(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (String[]) ReflectInfo.getVolumePaths.call((StorageManager) context.getSystemService("storage"), new Object[0]);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
