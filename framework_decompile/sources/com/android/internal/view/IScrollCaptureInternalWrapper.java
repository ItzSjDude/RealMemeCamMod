package com.android.internal.view;

import android.view.View;

/* loaded from: classes4.dex */
public interface IScrollCaptureInternalWrapper {
    default IScrollCaptureInternalExt getExtImpl() {
        return IScrollCaptureInternalExt.DEFAULT;
    }

    default int detectScrollingType(View view) {
        return 0;
    }
}
