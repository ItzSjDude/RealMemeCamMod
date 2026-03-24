package android.widget;

import android.content.Context;

/* loaded from: classes4.dex */
public interface ISplineOverScrollerWrapper {
    default int getSplineFlingDuration(int velocity) {
        return 0;
    }

    default double getSplineFlingDistance(int velocity) {
        return 0.0d;
    }

    default Context getContext() {
        return null;
    }

    default float[] getSplinePosition() {
        return null;
    }

    default float getFlingFriction() {
        return 0.0f;
    }

    default float getPhysicalCoeff() {
        return 0.0f;
    }
}
