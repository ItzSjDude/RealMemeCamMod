package android.widget;

import android.widget.OverScroller;

/* loaded from: classes4.dex */
public class SplineOverScrollerSocExtImpl implements ISplineOverScrollerSocExt {
    private OverScroller.SplineOverScroller mOverScroller;

    public SplineOverScrollerSocExtImpl(Object obj) {
        this.mOverScroller = null;
        this.mOverScroller = (OverScroller.SplineOverScroller) obj;
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public void setFlingFriction(float flingFriction) {
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public void perfHintStart(float currentVelocity) {
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public void perfHintFinish() {
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public void perfHintUpdate(long currentTime) {
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public boolean isSmoothFlingEnabled() {
        return false;
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public boolean isVariableRefreshRateEnabled() {
        return false;
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public double getSplineFlingDistance() {
        return 0.0d;
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public int getSplineDuration() {
        return 0;
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public double getCurrentDistance() {
        return 0.0d;
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public float getCurrentVelocity() {
        return 0.0f;
    }

    @Override // android.widget.ISplineOverScrollerSocExt
    public void setVariableRefreshRateEnable(boolean isVariableRefreshRateEnabled) {
    }
}
