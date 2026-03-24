package android.widget;

import android.content.Context;
import android.util.BoostFramework;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes4.dex */
public class OverScrollerSocExtImpl implements IOverScrollerSocExt {
    private OverScroller mOverScroller;

    public OverScrollerSocExtImpl(Object obj) {
        this.mOverScroller = null;
        this.mOverScroller = (OverScroller) obj;
    }

    @Override // android.widget.IOverScrollerSocExt
    public long getAdjustedAnimationClock(long time, long startTime) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        long adjustedTime = BoostFramework.ScrollOptimizer.getAdjustedAnimationClock(time);
        return adjustedTime;
    }

    @Override // android.widget.IOverScrollerSocExt
    public void setFlingFlag(boolean finished, int mode) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (finished && mode == 1) {
            BoostFramework.ScrollOptimizer.setFlingFlag(0);
        } else if (!finished && mode == 0) {
            BoostFramework.ScrollOptimizer.setFlingFlag(1);
        }
    }

    @Override // android.widget.IOverScrollerSocExt
    public void setPerfHintContext(Context context) {
    }

    @Override // android.widget.IOverScrollerSocExt
    public void hookScrollPerfHint(Object object, boolean begin) {
    }
}
