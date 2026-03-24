package android.view;

import android.view.Choreographer;

/* loaded from: classes3.dex */
public interface IChoreographerExt {
    default void recordSkippedFrames(long skippedFrames, boolean animation, boolean traversal, long startNanos, long jitterNanos) {
    }

    default void traceBeginForSkippedFrames() {
    }

    default void traceEndForSkippedFrames() {
    }

    default void dumpAnimationDropInfo(long startNanos) {
    }

    default void setIsSFChoregrapher(boolean isSFChoregrapher) {
    }

    default void doFrameStartHook(long frameStartNanos) {
    }

    default void doFrameHook() {
    }

    default long adjustFrameTimeNanos(long frameTimeNanos, long lastFrameTimeNanos) {
        return frameTimeNanos;
    }

    default void setIsPreDraw(boolean isPreDraw) {
    }

    default boolean checkScrollOptCase() {
        return false;
    }

    default boolean checkScrollOptEnable(long startNanos, long jitterNanos, long intendedFrameTimeNanos, long frameTimeNanos, long id, long frameDeadline, long frameInterval) {
        return false;
    }

    default void traceBeginForOptimizeSlidingEffect(long startNanos, long frameTimeNanos) {
    }

    default boolean checkScrollOptSceneEnable(long frameTimeNanos, long frameIntervalNanos, Choreographer.FrameData frameData) {
        return false;
    }

    default void traceEndForOptimizeSlidingEffect() {
    }

    default void checkPreAnimOpt(long frameTimeNanos, long frameIntervalNanos, long lastFrameTimeNanos) {
    }

    default void resetOptState(boolean isActivityEnable) {
    }

    default void setSlideAnimOptHelper(Choreographer choreographer) {
    }

    default void doInitiativeFrame(long obj, int arg1) {
    }

    default void doAnimCallback(Choreographer.FrameData frameData) {
    }

    default long getVsyncEventDataId() {
        return 0L;
    }

    default void updateFrameIntervalNanos(long frameIntervalNanos) {
    }

    default boolean checkJankTrackerEnable() {
        return false;
    }

    default void handleInputEvent(InputEvent event, int maximumVelocity, int minimumVelocity) {
    }

    default void populateAndResetFrameInfo(long[] frameInfoList, boolean appVisible) {
    }

    default void populateMeasureCost(long cost) {
    }

    default void populateLayoutCost(long cost) {
    }

    default void markDrawingCacheFlag() {
    }

    default void markRelayout() {
    }

    default void resetFrameCount() {
    }

    default void markDrawStart() {
    }

    default void syncViewCount(int viewCount) {
    }

    default void setLifecycleState(int state, boolean haveOnCreate, long activityLaunchTime, long activityResumeTime, long activityPauseTime) {
    }

    default void makePauseActivityEnd() {
    }

    default void markPerformClickFlag() {
    }
}
