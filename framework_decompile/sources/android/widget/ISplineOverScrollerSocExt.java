package android.widget;

/* loaded from: classes4.dex */
public interface ISplineOverScrollerSocExt {
    default void setFlingFriction(float flingFriction) {
    }

    default void perfHintStart(float currentVelocity) {
    }

    default void perfHintFinish() {
    }

    default void perfHintUpdate(long currentTime) {
    }

    default boolean isSmoothFlingEnabled() {
        return false;
    }

    default double getSplineFlingDistance() {
        return 0.0d;
    }

    default int getSplineDuration() {
        return 0;
    }

    default boolean isVariableRefreshRateEnabled() {
        return false;
    }

    default double getCurrentDistance() {
        return 0.0d;
    }

    default float getCurrentVelocity() {
        return 0.0f;
    }

    default void setVariableRefreshRateEnable(boolean isVariableRefreshRateEnabled) {
    }
}
