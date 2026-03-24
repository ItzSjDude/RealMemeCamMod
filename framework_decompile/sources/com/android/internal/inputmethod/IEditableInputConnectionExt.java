package com.android.internal.inputmethod;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.TextView;

/* loaded from: classes4.dex */
public interface IEditableInputConnectionExt {
    default void init(Context context) {
    }

    default void handleSendKeyEvent(TextView textView, KeyEvent keyEvent) {
    }
}
