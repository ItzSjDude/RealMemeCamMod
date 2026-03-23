package com.oplus.compat.app;

import androidx.annotation.RequiresApi;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public interface IProcessObserverNative {
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    void onForegroundActivitiesChanged(int i, int i2, boolean z);

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    void onForegroundServicesChanged(int i, int i2, int i3);

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    void onProcessDied(int i, int i2);
}
