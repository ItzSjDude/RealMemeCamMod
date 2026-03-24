package com.android.internal.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.ScrollCaptureCallback;
import android.view.View;

/* loaded from: classes4.dex */
public interface IScrollCaptureInternalExt {
    public static final IScrollCaptureInternalExt DEFAULT = new IScrollCaptureInternalExt() { // from class: com.android.internal.view.IScrollCaptureInternalExt.1
    };
    public static final String EXTRA_SCROLL_CAPTURE_COMPATIBLE = "scroll_capture_compatible";
    public static final String EXTRA_SCROLL_CAPTURE_DELAY = "scroll_capture_delay";
    public static final String EXTRA_SCROLL_RESET = "scroll_reset";
    public static final int TYPE_FIRST_COMPAT = 1000;
    public static final int TYPE_FIRST_COMPAT_ASYNC = 2000;
    public static final int TYPE_OPAQUE = 3;
    public static final int TYPE_VIEW_COMPAT = 1001;
    public static final int TYPE_VIEW_COMPAT_ASYNC = 2001;
    public static final int TYPE_WEBVIEW_COMPAT = 1000;
    public static final int TYPE_WEBVIEW_COMPAT_ASYNC = 2000;

    default ScrollCaptureCallback requestCallback(View view, Rect localVisibleRect, Point positionInWindow) {
        return null;
    }

    default void setExtras(Bundle extras) {
    }
}
