package com.oplus.compat.os;

import androidx.annotation.RequiresApi;
import com.android.internal.os.ProcessCpuTracker;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.os.ProcessCpuTrackerWrapper;
/* loaded from: classes.dex */
public class ProcessCpuTrackerNative {
    private static final String TAG = "ProcessCpuTrackerNative";
    private ProcessCpuTracker mProcessCpuTracker;
    private Object mProcessCpuTrackerWrapper;

    @OplusCompatibleMethod
    private static Object getProcessCpuTrackerWrapper(boolean z) {
        return null;
    }

    @OplusCompatibleMethod
    private static void updateCompat(Object obj) {
    }

    @Grey
    @RequiresApi(api = 21)
    public ProcessCpuTrackerNative(boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            this.mProcessCpuTracker = new ProcessCpuTracker(z);
        } else if (VersionUtils.isOsVersion11_3()) {
            this.mProcessCpuTrackerWrapper = new ProcessCpuTrackerWrapper(z);
        } else if (VersionUtils.isQ()) {
            this.mProcessCpuTrackerWrapper = getProcessCpuTrackerWrapper(z);
        } else if (VersionUtils.isL()) {
            this.mProcessCpuTracker = new ProcessCpuTracker(z);
        } else {
            throw new UnSupportedApiVersionException("Not supported before L");
        }
    }

    @Grey
    @RequiresApi(api = 21)
    public void update() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            this.mProcessCpuTracker.update();
        } else if (VersionUtils.isOsVersion11_3()) {
            ((ProcessCpuTrackerWrapper) this.mProcessCpuTrackerWrapper).update();
        } else if (VersionUtils.isQ()) {
            updateCompat(this.mProcessCpuTrackerWrapper);
        } else if (VersionUtils.isL()) {
            this.mProcessCpuTracker.update();
        } else {
            throw new UnSupportedApiVersionException("Not supported before L");
        }
    }
}
