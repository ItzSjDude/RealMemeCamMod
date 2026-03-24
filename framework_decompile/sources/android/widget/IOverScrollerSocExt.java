package android.widget;

import android.content.Context;

/* loaded from: classes4.dex */
public interface IOverScrollerSocExt {
    public static final int FLING_MODE_SOC_EXT = 1;
    public static final int SCROLL_MODE_SOC_EXT = 0;

    default void setFlingFlag(boolean isFinished, int mode) {
    }

    default long getAdjustedAnimationClock(long time, long startTime) {
        return time;
    }

    default void setPerfHintContext(Context context) {
    }

    default void hookScrollPerfHint(Object object, boolean begin) {
    }
}
