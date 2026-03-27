package com.oplus.view;

/**
 * Common target interface for Oplus animations.
 */
public interface ITarget {
    default void animateToFinalPosition(float finalPosition) {
        throw new RuntimeException("Only SpringAnimation can skipToEnd, but " + getClass().getName());
    }

    void cancel();

    boolean doFrame(long frameTimeNanos);

    void end();

    default long getDuration() {
        throw new RuntimeException("duration should be provided by target");
    }

    default long getStartDelay() {
        throw new RuntimeException("startDelay should be provided by target");
    }

    default long getTotalDuration() {
        throw new RuntimeException("totalDuration should be provided by target");
    }

    boolean isRunning();

    default void reverse() {
        throw new RuntimeException("Only animator can reverse, but " + getClass().getName());
    }

    default void setAnimationHandler() {
        throw new RuntimeException("animationHandler should be provided by target");
    }

    default void setDuration(long duration) {
        throw new RuntimeException("duration should be provided by target");
    }

    default void setStartDelay(long startDelay) {
        throw new RuntimeException("startDelay should be provided by target");
    }

    default void skipToEnd() {
        throw new RuntimeException("Only SpringAnimation can skipToEnd, but " + getClass().getName());
    }

    void start();
}
