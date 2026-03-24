package com.android.internal.widget;

import android.graphics.drawable.Drawable;
import android.view.View;

/* loaded from: classes4.dex */
public class BackgroundFallback {
    private Drawable mBackgroundFallback;

    public void setDrawable(Drawable d) {
        this.mBackgroundFallback = d;
    }

    public Drawable getDrawable() {
        return this.mBackgroundFallback;
    }

    public boolean hasFallback() {
        return this.mBackgroundFallback != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.view.ViewGroup r20, android.view.ViewGroup r21, android.graphics.Canvas r22, android.view.View r23, android.view.View r24, android.view.View r25) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.widget.BackgroundFallback.draw(android.view.ViewGroup, android.view.ViewGroup, android.graphics.Canvas, android.view.View, android.view.View, android.view.View):void");
    }

    private boolean isOpaque(Drawable childBg) {
        return childBg != null && childBg.getOpacity() == -1;
    }

    private boolean viewsCoverEntireWidth(View view1, View view2, int width) {
        return view1.getLeft() <= 0 && view1.getRight() >= view2.getLeft() && view2.getRight() >= width;
    }
}
