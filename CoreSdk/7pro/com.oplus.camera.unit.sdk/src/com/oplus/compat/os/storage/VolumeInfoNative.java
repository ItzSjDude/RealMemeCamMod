package com.oplus.compat.os.storage;

import android.os.storage.DiskInfo;
import android.os.storage.VolumeInfo;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.os.storage.VolumeInfoWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import java.io.File;
/* loaded from: classes.dex */
public class VolumeInfoNative {
    private static final String TAG = "VolumeInfoNative";
    private VolumeInfo mVolumeInfo;
    private Object mVolumeInfoObj;

    @OplusCompatibleMethod
    private static Object getFsUuidCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getIdCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getPathCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getStringPathCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isSdCompat(Object obj) {
        return null;
    }

    private VolumeInfoNative() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VolumeInfoNative(Object obj) {
        if (VersionUtils.isS()) {
            this.mVolumeInfo = (VolumeInfo) obj;
        } else {
            this.mVolumeInfoObj = obj;
        }
    }

    @Oem
    @RequiresApi(api = 21)
    public Object getVolumeInfo() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mVolumeInfo;
        }
        if (VersionUtils.isL()) {
            return this.mVolumeInfoObj;
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getId() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mVolumeInfo.getId();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((VolumeInfoWrapper) this.mVolumeInfoObj).getId();
        }
        if (VersionUtils.isQ()) {
            return (String) getIdCompat(this.mVolumeInfoObj);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public File getPath() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mVolumeInfo.getPath();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((VolumeInfoWrapper) this.mVolumeInfoObj).getPath();
        }
        if (VersionUtils.isQ()) {
            return (File) getPathCompat(this.mVolumeInfoObj);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getStringPath() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mVolumeInfo.path;
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((VolumeInfoWrapper) this.mVolumeInfoObj).getStringPath();
        }
        if (VersionUtils.isQ()) {
            return (String) getStringPathCompat(this.mVolumeInfoObj);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public String getFsUuid() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mVolumeInfo.getFsUuid();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((VolumeInfoWrapper) this.mVolumeInfoObj).getFsUuid();
        }
        if (VersionUtils.isQ()) {
            return (String) getFsUuidCompat(this.mVolumeInfoObj);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public boolean isSd() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            DiskInfo disk = this.mVolumeInfo.getDisk();
            return disk != null && disk.isSd();
        } else if (VersionUtils.isOsVersion11_3()) {
            return ((VolumeInfoWrapper) this.mVolumeInfoObj).isSd();
        } else {
            if (VersionUtils.isQ()) {
                return ((Boolean) isSdCompat(this.mVolumeInfoObj)).booleanValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }
}
