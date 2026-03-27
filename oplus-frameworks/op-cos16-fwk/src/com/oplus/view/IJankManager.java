package com.oplus.view;

import android.common.IOplusCommonFeature;
import android.common.OplusFeatureList;
import android.content.Context;
import java.util.ArrayList;

public interface IJankManager extends IOplusCommonFeature {
    public static final IJankManager DEFAULT = new IJankManager() {
    };
    public static final int MS_TO_NS = 1000000;
    public static final String NAME = "IJankManager";

    @Override
    default OplusFeatureList.OplusIndex index() {
        return OplusFeatureList.OplusIndex.IJankManager;
    }

    @Override
    default IOplusCommonFeature getDefault() {
        return DEFAULT;
    }

    default void asyncLatencySceneBegin(SceneInfo sceneInfo) {
    }

    default void asyncLatencySceneEnd(String packageName, int scene, int policy, String appendMessage) {
    }

    default void finishDrawing(String pkgName, String activityName) {
    }

    default long getAnimCostThreshold() {
        return -1;
    }

    default int getAppAction(String packageName) {
        return -1;
    }

    default int getAppScene(String packageName) {
        return -1;
    }

    default long getLatencyThresholdNs() {
        return -1;
    }

    default int getScene() {
        return -1;
    }

    default long getSceneBeginTime() {
        return -1;
    }

    default String getSceneDescription() {
        return null;
    }

    default long getScenePolicy() {
        return -1;
    }

    default int getSceneType() {
        return -1;
    }

    default int getSkippedAnimFrame() {
        return -1;
    }

    default int getSkippedFrame() {
        return -1;
    }

    default long getSkippedFrameThreshold() {
        return -1;
    }

    default int getSlideScene() {
        return -1;
    }

    default long getSlideSceneBeginTime() {
        return -1;
    }

    default long getSlideScenePolicy() {
        return -1;
    }

    default int getSlideSceneSkippedFrame() {
        return -1;
    }

    default long getSlideSceneThreshold() {
        return -1;
    }

    default int getSlideSceneType() {
        return -1;
    }

    default void gfxSceneBegin(Context context, int scene, String sceneDes, long policy) {
    }

    default void gfxSceneBegin(Context context, SceneInfo sceneInfo) {
    }

    default void gfxSceneEnd(Context context, int scene) {
    }

    default boolean isSceneEnabled(int sceneType, int scene) {
        return false;
    }

    default void latencySceneBegin(Context context, int scene, String sceneDes, long latencyThresholdMs) {
    }

    default void latencySceneBegin(Context context, SceneInfo sceneInfo) {
    }

    default void latencySceneEnd(Context context, int scene, ArrayList<String> latencyInfo) {
    }

    default void notifyActivityStarted(String packageName, String activityName, long longVersionCode) {
    }

    default void notifyAddStartingWindow(String pkgName, String activityName, String launchFromPkg, int reasonCode) {
    }

    default void onAnimationUpdate() {
    }

    default void requestEndTransition(int syncId) {
    }

    default void requestStartTransition(int type, int scene, String sceneDes, long latencyThresholdMs, int syncId,
            boolean hasRemoteTransition) {
    }

    default void slideSceneBegin(Context context, SceneInfo sceneInfo) {
    }

    default void slideSceneEnd(Context context, int scene) {
    }

    default void ssAnimSceneBegin(int scene, String sceneDes, int skippedFrameNum, long duration) {
    }

    default void ssAnimSceneEnd(int scene, boolean normal) {
    }

    default void startActivity(String pkgName, String activityName) {
    }

    default void startRemoteAnimation(String pkgName, String activityName) {
    }

    default void updateAppSceneAndAction(String packageName, int scene, int action) {
    }

    default void updateFaultThresholdMs(String packageName, int faultType, int threshold) {
    }

    public static class SceneInfo {
        private long mAnimCostThreshold;
        private long mLatencyThresholdNs;
        private String mPackageName;
        private long mPolicy;
        private int mPreCount;
        private int mScene;
        private long mSceneBeginTime;
        private String mSceneDescription;
        private int mSceneType;
        private int mSkippedAnimFrame;
        private int mSkippedFrame;
        private long mSkippedFrameThreshold;
        private int mTransitionSyncId;

        public SceneInfo() {
            this.mSceneType = -1;
            this.mScene = -1;
            this.mAnimCostThreshold = 0;
            this.mPreCount = 0;
            this.mTransitionSyncId = 0;
        }

        public void addPreCount() {
            this.mPreCount++;
        }

        public long getAnimCostThreshold() {
            return mAnimCostThreshold;
        }

        public long getLatencyThresholdNs() {
            return mLatencyThresholdNs;
        }

        public String getPackageName() {
            return mPackageName;
        }

        public int getPreCount() {
            return mPreCount;
        }

        public int getScene() {
            return mScene;
        }

        public long getSceneBeginTime() {
            return mSceneBeginTime;
        }

        public String getSceneDescription() {
            return mSceneDescription;
        }

        public long getScenePolicy() {
            return mPolicy;
        }

        public int getSceneType() {
            return mSceneType;
        }

        public int getSkippedAnimFrame() {
            return mSkippedAnimFrame;
        }

        public int getSkippedFrame() {
            return mSkippedFrame;
        }

        public long getSkippedFrameThreshold() {
            return mSkippedFrameThreshold;
        }

        public int getTransitionSyncId() {
            return mTransitionSyncId;
        }

        public void initBasicInfo(Context context, int sceneType, int scene, String sceneDes) {
            if (context != null)
                this.mPackageName = context.getPackageName();
            this.mSceneType = sceneType;
            this.mScene = scene;
            this.mSceneDescription = sceneDes;
        }

        public void reset() {
            this.mScene = -1;
            this.mSceneBeginTime = 0;
            this.mSceneDescription = null;
            this.mLatencyThresholdNs = 0;
            this.mAnimCostThreshold = 0;
            this.mSkippedAnimFrame = 0;
            this.mSkippedFrameThreshold = 0;
            this.mSkippedFrame = 0;
            this.mPreCount = 0;
            this.mTransitionSyncId = 0;
            this.mPolicy = 0;
        }

        public void resetPreCount() {
            this.mPreCount = 0;
        }

        public void resetSceneType() {
            this.mSceneType = -1;
        }

        public void setAnimCostThreshold(long threshold) {
            this.mAnimCostThreshold = threshold;
        }

        public void setLatencyThresholdMs(long ms) {
            this.mLatencyThresholdNs = ms * 1000000;
        }

        public void setPackageName(String pkg) {
            this.mPackageName = pkg;
        }

        public void setPolicy(long policy) {
            this.mPolicy = policy;
        }

        public void setTransitionSyncId(int id) {
            this.mTransitionSyncId = id;
        }

        public void updateSceneBeginTime() {
            this.mSceneBeginTime = System.nanoTime();
        }
    }

    public static class AppSceneType {
        public static final int NONE = -1;

        public static boolean isInvalidType(int type) {
            return type == -1;
        }
    }

    public static enum SceneIndex {
        LIST_VIEW_SLIDE(0);

        private int value;

        SceneIndex(int v) {
            value = v;
        }

        public int getValue() {
            return value;
        }
    }
}
