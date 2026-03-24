package android.graphics.drawable;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;

/* loaded from: classes.dex */
public interface IRippleAnimationSessionExt {
    public static final int ENTER_ANIM_DURATION = 450;
    public static final int EXIT_ANIM_DURATION = 375;
    public static final float INTERPOLATOR_ENTER_X1 = 0.4f;
    public static final float INTERPOLATOR_ENTER_X2 = 0.2f;
    public static final float INTERPOLATOR_ENTER_Y1 = 0.0f;
    public static final float INTERPOLATOR_ENTER_Y2 = 1.0f;

    default int getEnterAnimationDuration() {
        return 450;
    }

    default int getExitAnimationDuration() {
        return 375;
    }

    default Interpolator getEnterAnimationInterpolator() {
        return new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    }

    default Interpolator getExitAnimationInterpolator() {
        return new LinearInterpolator();
    }
}
