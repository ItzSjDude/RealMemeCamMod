package com.android.internal.app;

import android.content.Intent;
import android.view.ViewGroup;
import android.widget.Button;
import com.android.internal.app.chooser.TargetInfo;

/* loaded from: classes4.dex */
public interface IChooserActivityWrapper {
    default ViewGroup getCreateContentPreviewView(ViewGroup parent) {
        return null;
    }

    default void hideStickyContentPreview() {
    }

    default TargetInfo getNearbySharingTarget(Intent originalIntent) {
        return null;
    }

    default void addActionButton(ViewGroup parent, Button b) {
    }

    default Button createCopyButton() {
        return null;
    }

    default Button createNearbyButton(Intent originalIntent) {
        return null;
    }
}
