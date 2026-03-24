package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.internal.R;

/* loaded from: classes2.dex */
public class AlphaAnimation extends Animation {
    private IAlphaAnimationWrapper mAlphaAnimationWrapper;
    private float mFromAlpha;
    private float mToAlpha;

    public AlphaAnimation(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mAlphaAnimationWrapper = new AlphaAnimationWrapper();
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.AlphaAnimation);
        this.mFromAlpha = a.getFloat(0, 1.0f);
        this.mToAlpha = a.getFloat(1, 1.0f);
        a.recycle();
    }

    public AlphaAnimation(float fromAlpha, float toAlpha) {
        this.mAlphaAnimationWrapper = new AlphaAnimationWrapper();
        this.mFromAlpha = fromAlpha;
        this.mToAlpha = toAlpha;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float interpolatedTime, Transformation t) {
        float alpha = this.mFromAlpha;
        t.setAlpha(((this.mToAlpha - alpha) * interpolatedTime) + alpha);
    }

    @Override // android.view.animation.Animation
    public boolean willChangeTransformationMatrix() {
        return false;
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }

    @Override // android.view.animation.Animation
    public boolean hasAlpha() {
        return true;
    }

    public IAlphaAnimationWrapper getWrapper() {
        return this.mAlphaAnimationWrapper;
    }

    private class AlphaAnimationWrapper implements IAlphaAnimationWrapper {
        private AlphaAnimationWrapper() {
        }

        @Override // android.view.animation.IAlphaAnimationWrapper
        public float getFromAlpha() {
            return AlphaAnimation.this.mFromAlpha;
        }

        @Override // android.view.animation.IAlphaAnimationWrapper
        public void setFromAlpha(float fromAlpha) {
            AlphaAnimation.this.mFromAlpha = fromAlpha;
        }

        @Override // android.view.animation.IAlphaAnimationWrapper
        public float getToAlpha() {
            return AlphaAnimation.this.mToAlpha;
        }
    }
}
