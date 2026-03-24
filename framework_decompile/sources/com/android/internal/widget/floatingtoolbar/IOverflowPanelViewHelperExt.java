package com.android.internal.widget.floatingtoolbar;

import android.view.View;

/* loaded from: classes4.dex */
public interface IOverflowPanelViewHelperExt {
    public static final IOverflowPanelViewHelperExt DEFAULT = new IOverflowPanelViewHelperExt() { // from class: com.android.internal.widget.floatingtoolbar.IOverflowPanelViewHelperExt.1
    };

    default void setOverflowMenuCount(int count) {
    }

    default void setConvertViewPosition(int position) {
    }

    default void setOverflowDirection(boolean upward) {
    }

    default void hookGetView(View convertView, int sidePadding, int minimumWidth) {
    }

    default int hookGetSidePaddingRes(int defaultValue) {
        return defaultValue;
    }
}
