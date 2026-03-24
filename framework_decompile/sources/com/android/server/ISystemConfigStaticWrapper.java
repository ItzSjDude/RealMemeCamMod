package com.android.server;

/* loaded from: classes4.dex */
public interface ISystemConfigStaticWrapper {
    default int getAllowPermissionsFlag() {
        return 0;
    }

    default int getAllowPrivAppPermissionsFlag() {
        return 0;
    }

    default int getAllowFeaturesFlag() {
        return 0;
    }

    default int getAllowAllFlag() {
        return 0;
    }
}
