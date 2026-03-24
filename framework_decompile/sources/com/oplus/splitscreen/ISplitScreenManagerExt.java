package com.oplus.splitscreen;

import android.content.res.Resources;

/* loaded from: classes4.dex */
public interface ISplitScreenManagerExt {
    default boolean hasLargeScreenFeature() {
        return false;
    }

    default int getDividerInsets(Resources res) {
        return 0;
    }
}
