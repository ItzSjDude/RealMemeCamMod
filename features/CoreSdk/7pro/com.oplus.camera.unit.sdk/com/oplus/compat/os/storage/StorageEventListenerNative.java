package com.oplus.compat.os.storage;

import android.os.storage.StorageEventListener;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
import java.util.List;
/* loaded from: classes.dex */
public class StorageEventListenerNative {
    private static final String TAG = "StorageEventListenerNative";
    private StorageEventListener mDelegate;

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void onStorageStateChanged(String str, String str2, String str3) {
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void onVolumeStateChanged(VolumeInfoNative volumeInfoNative, int i, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDelegate(StorageEventListener storageEventListener) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            this.mDelegate = storageEventListener;
            return;
        }
        throw new UnSupportedApiVersionException("Not supported before S");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StorageEventListener delegate() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mDelegate;
        }
        throw new UnSupportedApiVersionException("Not supported before S");
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public void onStorageStateChangedCompat(List<String> list) {
        onStorageStateChanged(list.get(0), list.get(1), list.get(2));
    }

    public void onVolumeStateChangedCompat(Object obj, List<Integer> list) {
        onVolumeStateChanged(new VolumeInfoNative(obj), list.get(0).intValue(), list.get(1).intValue());
    }
}
