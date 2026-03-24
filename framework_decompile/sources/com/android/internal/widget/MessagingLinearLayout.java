package com.android.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import com.android.internal.R;

@RemoteViews.RemoteView
/* loaded from: classes4.dex */
public class MessagingLinearLayout extends ViewGroup {
    private int mMaxDisplayedLines;
    private int mSpacing;

    public MessagingLinearLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mMaxDisplayedLines = Integer.MAX_VALUE;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.MessagingLinearLayout, 0, 0);
        int N = a.getIndexCount();
        for (int i = 0; i < N; i++) {
            int attr = a.getIndex(i);
            switch (attr) {
                case 0:
                    this.mSpacing = a.getDimensionPixelSize(i, 0);
                    break;
            }
        }
        a.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int targetHeight;
        LayoutParams lp;
        View child;
        int i;
        int measureType;
        int spacing;
        int targetHeight2 = View.MeasureSpec.getSize(heightMeasureSpec);
        switch (View.MeasureSpec.getMode(heightMeasureSpec)) {
            case 0:
                targetHeight = Integer.MAX_VALUE;
                break;
            default:
                targetHeight = targetHeight2;
                break;
        }
        int targetHeight3 = this.mPaddingLeft;
        int measuredWidth = targetHeight3 + this.mPaddingRight;
        int count = getChildCount();
        for (int i2 = 0; i2 < count; i2++) {
            View childAt = getChildAt(i2);
            ((LayoutParams) childAt.getLayoutParams()).hide = true;
            if (childAt instanceof MessagingChild) {
                MessagingChild messagingChild = (MessagingChild) childAt;
                messagingChild.setIsFirstInLayout(true);
            }
        }
        int i3 = this.mPaddingTop;
        int totalHeight = i3 + this.mPaddingBottom;
        int linesRemaining = this.mMaxDisplayedLines;
        MessagingChild previousChild = null;
        View previousView = null;
        int previousChildHeight = 0;
        int previousTotalHeight = 0;
        int previousLinesConsumed = 0;
        int previousChildHeight2 = measuredWidth;
        int previousTotalHeight2 = totalHeight;
        int previousLinesConsumed2 = 1;
        int linesRemaining2 = linesRemaining;
        for (int newHeight = count - 1; newHeight >= 0 && previousTotalHeight2 < targetHeight; newHeight = i - 1) {
            if (getChildAt(newHeight).getVisibility() == 8) {
                i = newHeight;
            } else {
                View child2 = getChildAt(newHeight);
                LayoutParams lp2 = (LayoutParams) getChildAt(newHeight).getLayoutParams();
                MessagingChild messagingChild2 = null;
                int spacing2 = this.mSpacing;
                int previousChildIncrease = 0;
                if (child2 instanceof MessagingChild) {
                    if (previousChild == null || !previousChild.hasDifferentHeightWhenFirst()) {
                        spacing = spacing2;
                        lp = lp2;
                        child = child2;
                        i = newHeight;
                    } else {
                        previousChild.setIsFirstInLayout(false);
                        spacing = spacing2;
                        lp = lp2;
                        child = child2;
                        i = newHeight;
                        measureChildWithMargins(previousView, widthMeasureSpec, 0, heightMeasureSpec, previousTotalHeight - previousChildHeight);
                        int previousChildIncrease2 = previousView.getMeasuredHeight() - previousChildHeight;
                        linesRemaining2 -= previousChild.getConsumedLines() - previousLinesConsumed;
                        previousChildIncrease = previousChildIncrease2;
                    }
                    MessagingChild messagingChild3 = (MessagingChild) child;
                    messagingChild3.setMaxDisplayedLines(linesRemaining2);
                    spacing2 = spacing + messagingChild3.getExtraSpacing();
                    messagingChild2 = messagingChild3;
                } else {
                    lp = lp2;
                    child = child2;
                    i = newHeight;
                }
                int spacing3 = previousLinesConsumed2 != 0 ? 0 : spacing2;
                measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, ((previousTotalHeight2 - this.mPaddingTop) - this.mPaddingBottom) + spacing3);
                int childHeight = child.getMeasuredHeight();
                int newHeight2 = Math.max(previousTotalHeight2, previousTotalHeight2 + childHeight + lp.topMargin + lp.bottomMargin + spacing3 + previousChildIncrease);
                if (messagingChild2 == null) {
                    measureType = 0;
                } else {
                    int measureType2 = messagingChild2.getMeasuredType();
                    measureType = measureType2;
                }
                boolean isTooSmall = measureType == 2 && previousLinesConsumed2 == 0;
                boolean isShortened = measureType == 1 || (measureType == 2 && previousLinesConsumed2 != 0);
                boolean showView = newHeight2 <= targetHeight && !isTooSmall;
                if (showView) {
                    if (messagingChild2 != null) {
                        previousLinesConsumed = messagingChild2.getConsumedLines();
                        linesRemaining2 -= previousLinesConsumed;
                        previousChild = messagingChild2;
                        previousView = child;
                        previousChildHeight = childHeight;
                        previousTotalHeight = previousTotalHeight2;
                    }
                    previousTotalHeight2 = newHeight2;
                    previousChildHeight2 = Math.max(previousChildHeight2, child.getMeasuredWidth() + lp.leftMargin + lp.rightMargin + this.mPaddingLeft + this.mPaddingRight);
                    lp.hide = false;
                    if (!isShortened && linesRemaining2 > 0) {
                        previousLinesConsumed2 = 0;
                    }
                } else if (previousChild != null && previousChild.hasDifferentHeightWhenFirst()) {
                    previousChild.setIsFirstInLayout(true);
                    measureChildWithMargins(previousView, widthMeasureSpec, 0, heightMeasureSpec, previousTotalHeight - previousChildHeight);
                }
                setMeasuredDimension(resolveSize(Math.max(getSuggestedMinimumWidth(), previousChildHeight2), widthMeasureSpec), Math.max(getSuggestedMinimumHeight(), previousTotalHeight2));
            }
        }
        setMeasuredDimension(resolveSize(Math.max(getSuggestedMinimumWidth(), previousChildHeight2), widthMeasureSpec), Math.max(getSuggestedMinimumHeight(), previousTotalHeight2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int childLeft;
        int paddingLeft;
        int width;
        int paddingLeft2 = this.mPaddingLeft;
        int width2 = right - left;
        int childRight = width2 - this.mPaddingRight;
        int layoutDirection = getLayoutDirection();
        int count = getChildCount();
        int childTop = this.mPaddingTop;
        boolean first = true;
        boolean shown = isShown();
        int i = 0;
        while (i < count) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                paddingLeft = paddingLeft2;
                width = width2;
            } else {
                LayoutParams lp = (LayoutParams) childAt.getLayoutParams();
                MessagingChild messagingChild = (MessagingChild) childAt;
                int childWidth = childAt.getMeasuredWidth();
                int childHeight = childAt.getMeasuredHeight();
                if (layoutDirection == 1) {
                    childLeft = (childRight - childWidth) - lp.rightMargin;
                } else {
                    childLeft = paddingLeft2 + lp.leftMargin;
                }
                paddingLeft = paddingLeft2;
                if (lp.hide) {
                    if (!shown || !lp.visibleBefore) {
                        width = width2;
                    } else {
                        width = width2;
                        childAt.layout(childLeft, childTop, childLeft + childWidth, lp.lastVisibleHeight + childTop);
                        messagingChild.hideAnimated();
                    }
                    lp.visibleBefore = false;
                } else {
                    width = width2;
                    lp.visibleBefore = true;
                    lp.lastVisibleHeight = childHeight;
                    if (!first) {
                        childTop += this.mSpacing;
                    }
                    int childTop2 = childTop + lp.topMargin;
                    childAt.layout(childLeft, childTop2, childLeft + childWidth, childTop2 + childHeight);
                    childTop = childTop2 + lp.bottomMargin + childHeight;
                    first = false;
                }
            }
            i++;
            paddingLeft2 = paddingLeft;
            width2 = width;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long drawingTime) {
        LayoutParams lp = (LayoutParams) view.getLayoutParams();
        if (lp.hide) {
            MessagingChild messagingChild = (MessagingChild) view;
            if (!messagingChild.isHidingAnimated()) {
                return true;
            }
        }
        return super.drawChild(canvas, view, drawingTime);
    }

    public void setSpacing(int spacing) {
        if (this.mSpacing != spacing) {
            this.mSpacing = spacing;
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(this.mContext, attrs);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        LayoutParams copy = new LayoutParams(lp.width, lp.height);
        if (lp instanceof ViewGroup.MarginLayoutParams) {
            copy.copyMarginsFrom((ViewGroup.MarginLayoutParams) lp);
        }
        return copy;
    }

    public static boolean isGone(View view) {
        if (view.getVisibility() == 8) {
            return true;
        }
        ViewGroup.LayoutParams lp = view.getLayoutParams();
        return (lp instanceof LayoutParams) && ((LayoutParams) lp).hide;
    }

    @RemotableViewMethod
    public void setMaxDisplayedLines(int numberLines) {
        this.mMaxDisplayedLines = numberLines;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IMessagingLayout getMessagingLayout() {
        View view = this;
        do {
            Object parent = view.getParent();
            if (parent instanceof View) {
                view = (View) parent;
            } else {
                return null;
            }
        } while (!(view instanceof IMessagingLayout));
        return (IMessagingLayout) view;
    }

    @Override // android.view.View
    public int getBaseline() {
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            View child = getChildAt(i);
            if (!isGone(child)) {
                int childBaseline = child.getBaseline();
                if (childBaseline == -1) {
                    return -1;
                }
                ViewGroup.MarginLayoutParams lp = (ViewGroup.MarginLayoutParams) child.getLayoutParams();
                return lp.topMargin + childBaseline;
            }
        }
        int i2 = super.getBaseline();
        return i2;
    }

    public interface MessagingChild {
        public static final int MEASURED_NORMAL = 0;
        public static final int MEASURED_SHORTENED = 1;
        public static final int MEASURED_TOO_SMALL = 2;

        int getConsumedLines();

        int getMeasuredType();

        void hideAnimated();

        boolean isHidingAnimated();

        void recycle();

        void setMaxDisplayedLines(int i);

        default void setIsFirstInLayout(boolean first) {
        }

        default boolean hasDifferentHeightWhenFirst() {
            return false;
        }

        default int getExtraSpacing() {
            return 0;
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public boolean hide;
        public int lastVisibleHeight;
        public boolean visibleBefore;

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
            this.hide = false;
            this.visibleBefore = false;
        }

        public LayoutParams(int width, int height) {
            super(width, height);
            this.hide = false;
            this.visibleBefore = false;
        }
    }
}
