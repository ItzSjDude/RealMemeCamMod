package com.android.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.metrics.LogMaker;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.OverScroller;
import android.widget.ScrollView;
import com.android.internal.R;
import com.android.internal.app.IResolverDrawerLayoutWrapper;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.widget.RecyclerView;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes4.dex */
public class ResolverDrawerLayout extends ViewGroup {
    private static final String TAG = "ResolverDrawerLayout";
    private int mActivePointerId;
    private int mAlwaysShowHeight;
    private float mCollapseOffset;
    private int mCollapsibleHeight;
    private int mCollapsibleHeightReserved;
    private boolean mDismissLocked;
    private boolean mDismissOnScrollerFinished;
    private float mDragRemainder;
    private IResolverDrawerLayoutExt mIResolverDrawerLayoutExt;
    private float mInitialTouchX;
    private float mInitialTouchY;
    private boolean mIsDragging;
    private final boolean mIsMaxCollapsedHeightSmallExplicit;
    private float mLastTouchY;
    private int mMaxCollapsedHeight;
    private int mMaxCollapsedHeightSmall;
    private int mMaxWidth;
    private MetricsLogger mMetricsLogger;
    private final float mMinFlingVelocity;
    private AbsListView mNestedListChild;
    private RecyclerView mNestedRecyclerChild;
    private OnCollapsedChangedListener mOnCollapsedChangedListener;
    private OnDismissedListener mOnDismissedListener;
    private boolean mOpenOnClick;
    private boolean mOpenOnLayout;
    private IResolverDrawerLayoutWrapper mResolverDrawerLayoutWrapper;
    private RunOnDismissedListener mRunOnDismissedListener;
    private Drawable mScrollIndicatorDrawable;
    private final OverScroller mScroller;
    private boolean mShowAtTop;
    private boolean mSmallCollapsed;
    private final Rect mTempRect;
    private int mTopOffset;
    private final ViewTreeObserver.OnTouchModeChangeListener mTouchModeChangeListener;
    private final int mTouchSlop;
    private int mUncollapsibleHeight;
    private final VelocityTracker mVelocityTracker;

    public interface OnCollapsedChangedListener {
        void onCollapsedChanged(boolean z);
    }

    public interface OnDismissedListener {
        void onDismissed();
    }

    public ResolverDrawerLayout(Context context) {
        this(context, null);
    }

    public ResolverDrawerLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ResolverDrawerLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mDragRemainder = 0.0f;
        this.mActivePointerId = -1;
        this.mTempRect = new Rect();
        this.mTouchModeChangeListener = new ViewTreeObserver.OnTouchModeChangeListener() { // from class: com.android.internal.widget.ResolverDrawerLayout.1
            @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
            public void onTouchModeChanged(boolean isInTouchMode) {
                if (isInTouchMode || !ResolverDrawerLayout.this.hasFocus()) {
                    return;
                }
                ResolverDrawerLayout resolverDrawerLayout = ResolverDrawerLayout.this;
                if (resolverDrawerLayout.isDescendantClipped(resolverDrawerLayout.getFocusedChild())) {
                    ResolverDrawerLayout.this.smoothScrollTo(0, 0.0f);
                }
            }
        };
        this.mResolverDrawerLayoutWrapper = new ResolverDrawerLayoutWrapper();
        this.mIResolverDrawerLayoutExt = (IResolverDrawerLayoutExt) ExtLoader.type(IResolverDrawerLayoutExt.class).base(this).create();
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ResolverDrawerLayout, defStyleAttr, 0);
        this.mMaxWidth = a.getDimensionPixelSize(0, -1);
        int dimensionPixelSize = a.getDimensionPixelSize(1, 0);
        this.mMaxCollapsedHeight = dimensionPixelSize;
        this.mMaxCollapsedHeightSmall = a.getDimensionPixelSize(2, dimensionPixelSize);
        this.mIsMaxCollapsedHeightSmallExplicit = a.hasValue(2);
        this.mShowAtTop = a.getBoolean(3, false);
        a.recycle();
        this.mScrollIndicatorDrawable = this.mContext.getDrawable(R.drawable.scroll_indicator_material);
        this.mScroller = new OverScroller(context, AnimationUtils.loadInterpolator(context, 17563653));
        this.mVelocityTracker = VelocityTracker.obtain();
        ViewConfiguration vc = ViewConfiguration.get(context);
        this.mTouchSlop = vc.getScaledTouchSlop();
        this.mMinFlingVelocity = vc.getScaledMinimumFlingVelocity();
        setImportantForAccessibility(1);
    }

    public void setMaxCollapsedHeight(int heightInPixels) {
        if (heightInPixels == this.mMaxCollapsedHeight) {
            return;
        }
        this.mMaxCollapsedHeight = heightInPixels;
        if (!this.mIsMaxCollapsedHeightSmallExplicit) {
            this.mMaxCollapsedHeightSmall = heightInPixels;
        }
        requestLayout();
    }

    public void setSmallCollapsed(boolean smallCollapsed) {
        this.mSmallCollapsed = smallCollapsed;
        requestLayout();
    }

    public boolean isSmallCollapsed() {
        return this.mSmallCollapsed;
    }

    public boolean isCollapsed() {
        return this.mCollapseOffset > 0.0f;
    }

    public void setShowAtTop(boolean showOnTop) {
        this.mShowAtTop = showOnTop;
        invalidate();
        requestLayout();
    }

    public boolean getShowAtTop() {
        return this.mShowAtTop;
    }

    public void setCollapsed(boolean collapsed) {
        if (!isLaidOut()) {
            this.mOpenOnLayout = !collapsed;
        } else {
            smoothScrollTo(collapsed ? this.mCollapsibleHeight : 0, 0.0f);
        }
    }

    public void setCollapsibleHeightReserved(int heightPixels) {
        int oldReserved = this.mCollapsibleHeightReserved;
        this.mCollapsibleHeightReserved = heightPixels;
        int dReserved = heightPixels - oldReserved;
        if (dReserved != 0 && this.mIsDragging) {
            this.mLastTouchY -= dReserved;
        }
        int oldCollapsibleHeight = this.mCollapsibleHeight;
        this.mCollapsibleHeight = Math.min(this.mCollapsibleHeight, getMaxCollapsedHeight());
        if (updateCollapseOffset(oldCollapsibleHeight, !isDragging())) {
            return;
        }
        invalidate();
    }

    public void setDismissLocked(boolean locked) {
        this.mDismissLocked = locked;
    }

    private boolean isMoving() {
        return this.mIsDragging || !this.mScroller.isFinished();
    }

    private boolean isDragging() {
        return this.mIsDragging || getNestedScrollAxes() == 2;
    }

    private boolean updateCollapseOffset(int oldCollapsibleHeight, boolean remainClosed) {
        int i;
        if (oldCollapsibleHeight == this.mCollapsibleHeight) {
            return false;
        }
        if (getShowAtTop()) {
            this.mCollapseOffset = 0.0f;
            return false;
        }
        if (isLaidOut()) {
            float f = this.mCollapseOffset;
            boolean isCollapsedOld = f != 0.0f;
            if (remainClosed && oldCollapsibleHeight < (i = this.mCollapsibleHeight) && f == oldCollapsibleHeight) {
                this.mCollapseOffset = i;
            } else {
                this.mCollapseOffset = Math.min(f, this.mCollapsibleHeight);
            }
            boolean isCollapsedNew = this.mCollapseOffset != 0.0f;
            if (isCollapsedOld != isCollapsedNew) {
                onCollapsedChanged(isCollapsedNew);
            }
        } else {
            this.mCollapseOffset = this.mOpenOnLayout ? 0.0f : this.mCollapsibleHeight;
        }
        return true;
    }

    private int getMaxCollapsedHeight() {
        return (isSmallCollapsed() ? this.mMaxCollapsedHeightSmall : this.mMaxCollapsedHeight) + this.mCollapsibleHeightReserved;
    }

    public void setOnDismissedListener(OnDismissedListener listener) {
        this.mOnDismissedListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDismissable() {
        return (this.mOnDismissedListener == null || this.mDismissLocked) ? false : true;
    }

    public void setOnCollapsedChangedListener(OnCollapsedChangedListener listener) {
        this.mOnCollapsedChangedListener = listener;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getActionMasked();
        if (action == 0) {
            this.mVelocityTracker.clear();
        }
        this.mVelocityTracker.addMovement(ev);
        switch (action) {
            case 0:
                float x = ev.getX();
                float y = ev.getY();
                this.mInitialTouchX = x;
                this.mLastTouchY = y;
                this.mInitialTouchY = y;
                this.mOpenOnClick = isListChildUnderClipped(x, y) && this.mCollapseOffset > 0.0f;
                break;
            case 1:
            case 3:
                resetTouch();
                break;
            case 2:
                float x2 = ev.getX();
                float y2 = ev.getY();
                float dy = y2 - this.mInitialTouchY;
                if (Math.abs(dy) > this.mTouchSlop && findChildUnder(x2, y2) != null && (getNestedScrollAxes() & 2) == 0) {
                    this.mActivePointerId = ev.getPointerId(0);
                    this.mIsDragging = true;
                    float f = this.mLastTouchY;
                    int i = this.mTouchSlop;
                    this.mLastTouchY = Math.max(f - i, Math.min(f + dy, f + i));
                    break;
                }
                break;
            case 6:
                onSecondaryPointerUp(ev);
                break;
        }
        if (this.mIsDragging) {
            abortAnimation();
        }
        return this.mIsDragging || this.mOpenOnClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNestedListChildScrolled() {
        AbsListView absListView = this.mNestedListChild;
        if (absListView == null || absListView.getChildCount() <= 0) {
            return false;
        }
        return this.mNestedListChild.getFirstVisiblePosition() > 0 || this.mNestedListChild.getChildAt(0).getTop() < 0;
    }

    private boolean isNestedRecyclerChildScrolled() {
        RecyclerView recyclerView = this.mNestedRecyclerChild;
        if (recyclerView == null || recyclerView.getChildCount() <= 0) {
            return false;
        }
        RecyclerView.ViewHolder vh = this.mNestedRecyclerChild.findViewHolderForAdapterPosition(0);
        return vh == null || vh.itemView.getTop() < 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01cb  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.widget.ResolverDrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void scrollNestedScrollableChildBackToTop() {
        if (isNestedListChildScrolled()) {
            this.mNestedListChild.smoothScrollToPosition(0);
        } else if (isNestedRecyclerChildScrolled()) {
            this.mNestedRecyclerChild.smoothScrollToPosition(0);
        }
    }

    private void onSecondaryPointerUp(MotionEvent ev) {
        int pointerIndex = ev.getActionIndex();
        int pointerId = ev.getPointerId(pointerIndex);
        if (pointerId == this.mActivePointerId) {
            int newPointerIndex = pointerIndex == 0 ? 1 : 0;
            this.mInitialTouchX = ev.getX(newPointerIndex);
            float y = ev.getY(newPointerIndex);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
            this.mActivePointerId = ev.getPointerId(newPointerIndex);
        }
    }

    private void resetTouch() {
        this.mActivePointerId = -1;
        this.mIsDragging = false;
        this.mOpenOnClick = false;
        this.mLastTouchY = 0.0f;
        this.mInitialTouchY = 0.0f;
        this.mInitialTouchX = 0.0f;
        this.mVelocityTracker.clear();
        this.mResolverDrawerLayoutWrapper.getResolverDrawerLayoutExt().hookresetTouch();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismiss() {
        RunOnDismissedListener runOnDismissedListener = new RunOnDismissedListener();
        this.mRunOnDismissedListener = runOnDismissedListener;
        post(runOnDismissedListener);
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.mScroller.computeScrollOffset()) {
            boolean keepGoing = !this.mScroller.isFinished();
            performDrag(this.mScroller.getCurrY() - this.mCollapseOffset);
            if (keepGoing) {
                postInvalidateOnAnimation();
            } else if (this.mDismissOnScrollerFinished && this.mOnDismissedListener != null) {
                dismiss();
            }
        }
    }

    private void abortAnimation() {
        this.mScroller.abortAnimation();
        this.mRunOnDismissedListener = null;
        this.mDismissOnScrollerFinished = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float performDrag(float dy) {
        if (getShowAtTop()) {
            return 0.0f;
        }
        float newPos = Math.max(0.0f, Math.min(this.mCollapseOffset + dy, this.mCollapsibleHeight + this.mUncollapsibleHeight));
        float f = this.mCollapseOffset;
        if (newPos == f) {
            return 0.0f;
        }
        float dy2 = newPos - f;
        float f2 = this.mDragRemainder + (dy2 - ((int) dy2));
        this.mDragRemainder = f2;
        if (f2 >= 1.0f) {
            this.mDragRemainder = f2 - 1.0f;
            dy2 += 1.0f;
        } else if (f2 <= -1.0f) {
            this.mDragRemainder = f2 + 1.0f;
            dy2 -= 1.0f;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = getChildAt(i);
            LayoutParams lp = (LayoutParams) child.getLayoutParams();
            if (!lp.ignoreOffset) {
                child.offsetTopAndBottom((int) dy2);
            }
        }
        boolean isCollapsedOld = this.mCollapseOffset != 0.0f;
        this.mCollapseOffset = newPos;
        this.mTopOffset = (int) (this.mTopOffset + dy2);
        boolean isCollapsedNew = newPos != 0.0f;
        if (isCollapsedOld != isCollapsedNew) {
            onCollapsedChanged(isCollapsedNew);
            getMetricsLogger().write(new LogMaker(MetricsProto.MetricsEvent.ACTION_SHARESHEET_COLLAPSED_CHANGED).setSubtype(isCollapsedNew ? 1 : 0));
        }
        onScrollChanged(0, (int) newPos, 0, (int) (newPos - dy2));
        postInvalidateOnAnimation();
        return dy2;
    }

    private void onCollapsedChanged(boolean isCollapsed) {
        notifyViewAccessibilityStateChangedIfNeeded(0);
        if (this.mScrollIndicatorDrawable != null) {
            setWillNotDraw(!isCollapsed);
        }
        OnCollapsedChangedListener onCollapsedChangedListener = this.mOnCollapsedChangedListener;
        if (onCollapsedChangedListener != null) {
            onCollapsedChangedListener.onCollapsedChanged(isCollapsed);
        }
    }

    void dispatchOnDismissed() {
        OnDismissedListener onDismissedListener = this.mOnDismissedListener;
        if (onDismissedListener != null) {
            onDismissedListener.onDismissed();
        }
        RunOnDismissedListener runOnDismissedListener = this.mRunOnDismissedListener;
        if (runOnDismissedListener != null) {
            removeCallbacks(runOnDismissedListener);
            this.mRunOnDismissedListener = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void smoothScrollTo(int yOffset, float velocity) {
        int duration;
        abortAnimation();
        int sy = (int) this.mCollapseOffset;
        int dy = yOffset - sy;
        if (dy == 0) {
            this.mResolverDrawerLayoutWrapper.getResolverDrawerLayoutExt().hooksmoothScrollTo(this.mDismissOnScrollerFinished, this.mOnDismissedListener);
            return;
        }
        int height = getHeight();
        int halfHeight = height / 2;
        float distanceRatio = Math.min(1.0f, (Math.abs(dy) * 1.0f) / height);
        float distance = halfHeight + (halfHeight * distanceInfluenceForSnapDuration(distanceRatio));
        float velocity2 = Math.abs(velocity);
        if (velocity2 > 0.0f) {
            duration = Math.round(Math.abs(distance / velocity2) * 1000.0f) * 4;
        } else {
            float pageDelta = Math.abs(dy) / height;
            duration = (int) ((1.0f + pageDelta) * 100.0f);
        }
        this.mScroller.startScroll(0, sy, 0, dy, Math.min(duration, 300));
        postInvalidateOnAnimation();
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    private View findChildUnder(float x, float y) {
        return findChildUnder(this, x, y);
    }

    private static View findChildUnder(ViewGroup parent, float x, float y) {
        int childCount = parent.getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            View child = parent.getChildAt(i);
            if (isChildUnder(child, x, y)) {
                return child;
            }
        }
        return null;
    }

    private View findListChildUnder(float x, float y) {
        View v = findChildUnder(x, y);
        while (v != null) {
            x -= v.getX();
            y -= v.getY();
            if (v instanceof AbsListView) {
                return findChildUnder((ViewGroup) v, x, y);
            }
            v = v instanceof ViewGroup ? findChildUnder((ViewGroup) v, x, y) : null;
        }
        return v;
    }

    private boolean isListChildUnderClipped(float x, float y) {
        View listChild = findListChildUnder(x, y);
        return listChild != null && isDescendantClipped(listChild);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDescendantClipped(View child) {
        View v;
        this.mTempRect.set(0, 0, child.getWidth(), child.getHeight());
        offsetDescendantRectToMyCoords(child, this.mTempRect);
        if (child.getParent() == this) {
            v = child;
        } else {
            v = child;
            ViewParent p = child.getParent();
            while (p != this) {
                View v2 = p;
                v = v2;
                p = v.getParent();
            }
        }
        int clipEdge = getHeight() - getPaddingBottom();
        int childCount = getChildCount();
        for (int i = indexOfChild(v) + 1; i < childCount; i++) {
            View nextChild = getChildAt(i);
            if (nextChild.getVisibility() != 8) {
                clipEdge = Math.min(clipEdge, nextChild.getTop());
            }
        }
        return this.mTempRect.bottom > clipEdge;
    }

    private static boolean isChildUnder(View child, float x, float y) {
        float left = child.getX();
        float top = child.getY();
        float right = child.getWidth() + left;
        float bottom = child.getHeight() + top;
        return x >= left && y >= top && x < right && y < bottom;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View child, View focused) {
        super.requestChildFocus(child, focused);
        if (!isInTouchMode() && isDescendantClipped(focused)) {
            smoothScrollTo(0, 0.0f);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnTouchModeChangeListener(this.mTouchModeChangeListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnTouchModeChangeListener(this.mTouchModeChangeListener);
        abortAnimation();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View child, View target, int nestedScrollAxes) {
        if ((nestedScrollAxes & 2) != 0) {
            if (target instanceof AbsListView) {
                this.mNestedListChild = (AbsListView) target;
            }
            if (target instanceof RecyclerView) {
                this.mNestedRecyclerChild = (RecyclerView) target;
            }
            this.mResolverDrawerLayoutWrapper.getResolverDrawerLayoutExt().hookonStartNestedScroll(target);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View child, View target, int axes) {
        super.onNestedScrollAccepted(child, target, axes);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View child) {
        super.onStopNestedScroll(child);
        if (this.mScroller.isFinished()) {
            if (this.mResolverDrawerLayoutWrapper.getResolverDrawerLayoutExt().shouldHookonStopNestedScroll()) {
                float f = this.mCollapseOffset;
                int i = this.mCollapsibleHeight;
                if (f < i / 2) {
                    i = 0;
                }
                smoothScrollTo(i, 0.0f);
                return;
            }
            this.mResolverDrawerLayoutWrapper.getResolverDrawerLayoutExt().customOnStopNestedScroll(this.mCollapseOffset, this.mCollapsibleHeight, this.mUncollapsibleHeight);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed) {
        if (dyUnconsumed < 0) {
            performDrag(-dyUnconsumed);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed) {
        if (dy > 0) {
            consumed[1] = (int) (-performDrag(-dy));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        if (getShowAtTop() || velocityY <= this.mMinFlingVelocity || this.mCollapseOffset == 0.0f) {
            return false;
        }
        smoothScrollTo(0, velocityY);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004c  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onNestedFling(android.view.View r7, float r8, float r9, boolean r10) {
        /*
            r6 = this;
            r0 = 0
            if (r10 != 0) goto L71
            float r1 = java.lang.Math.abs(r9)
            float r2 = r6.mMinFlingVelocity
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 <= 0) goto L71
            boolean r1 = r6.getShowAtTop()
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            boolean r1 = r6.isDismissable()
            if (r1 == 0) goto L26
            int r1 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r1 <= 0) goto L26
            r6.abortAnimation()
            r6.dismiss()
            goto L70
        L26:
            int r1 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r1 >= 0) goto L2c
            int r0 = r6.mCollapsibleHeight
        L2c:
            r6.smoothScrollTo(r0, r9)
            goto L70
        L30:
            boolean r1 = r6.isDismissable()
            if (r1 == 0) goto L4c
            int r1 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r1 >= 0) goto L4c
            float r1 = r6.mCollapseOffset
            int r4 = r6.mCollapsibleHeight
            float r5 = (float) r4
            int r1 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r1 <= 0) goto L4c
            int r0 = r6.mUncollapsibleHeight
            int r4 = r4 + r0
            r6.smoothScrollTo(r4, r9)
            r6.mDismissOnScrollerFinished = r2
            goto L70
        L4c:
            com.android.internal.app.IResolverDrawerLayoutWrapper r1 = r6.mResolverDrawerLayoutWrapper
            com.android.internal.widget.IResolverDrawerLayoutExt r1 = r1.getResolverDrawerLayoutExt()
            boolean r1 = r1.shouldHookonNestedScroll()
            if (r1 == 0) goto L63
            int r1 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r1 <= 0) goto L5d
            goto L5f
        L5d:
            int r0 = r6.mCollapsibleHeight
        L5f:
            r6.smoothScrollTo(r0, r9)
            goto L70
        L63:
            com.android.internal.app.IResolverDrawerLayoutWrapper r0 = r6.mResolverDrawerLayoutWrapper
            com.android.internal.widget.IResolverDrawerLayoutExt r0 = r0.getResolverDrawerLayoutExt()
            int r1 = r6.mCollapsibleHeight
            int r3 = r6.mUncollapsibleHeight
            r0.customOnNestedScroll(r9, r1, r3)
        L70:
            return r2
        L71:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.widget.ResolverDrawerLayout.onNestedFling(android.view.View, float, float, boolean):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private boolean performAccessibilityActionCommon(int action) {
        switch (action) {
            case 4096:
            case 262144:
            case 16908346:
                if (this.mCollapseOffset != 0.0f) {
                    smoothScrollTo(0, 0.0f);
                    return true;
                }
                return false;
            case 524288:
                float f = this.mCollapseOffset;
                int i = this.mCollapsibleHeight;
                if (f < i) {
                    smoothScrollTo(i, 0.0f);
                    return true;
                }
                return false;
            case 1048576:
                if (this.mCollapseOffset < this.mCollapsibleHeight + this.mUncollapsibleHeight && isDismissable()) {
                    smoothScrollTo(this.mCollapsibleHeight + this.mUncollapsibleHeight, 0.0f);
                    this.mDismissOnScrollerFinished = true;
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPrePerformAccessibilityAction(View target, int action, Bundle args) {
        if (super.onNestedPrePerformAccessibilityAction(target, action, args)) {
            return true;
        }
        return performAccessibilityActionCommon(action);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ScrollView.class.getName();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfoInternal(info);
        if (isEnabled()) {
            if (this.mCollapseOffset != 0.0f) {
                info.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
                info.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_EXPAND);
                info.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN);
                info.setScrollable(true);
            }
            float f = this.mCollapseOffset;
            int i = this.mCollapsibleHeight;
            if (f < this.mUncollapsibleHeight + i && (f < i || isDismissable())) {
                info.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP);
                info.setScrollable(true);
            }
            if (this.mCollapseOffset < this.mCollapsibleHeight) {
                info.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_COLLAPSE);
            }
            if (this.mCollapseOffset < this.mCollapsibleHeight + this.mUncollapsibleHeight && isDismissable()) {
                info.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_DISMISS);
            }
        }
        info.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_ACCESSIBILITY_FOCUS);
    }

    @Override // android.view.View
    public boolean performAccessibilityActionInternal(int action, Bundle arguments) {
        if (action == AccessibilityNodeInfo.AccessibilityAction.ACTION_ACCESSIBILITY_FOCUS.getId()) {
            return false;
        }
        if (super.performAccessibilityActionInternal(action, arguments)) {
            return true;
        }
        return performAccessibilityActionCommon(action);
    }

    @Override // android.view.View
    public void onDrawForeground(Canvas canvas) {
        Drawable drawable = this.mScrollIndicatorDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        super.onDrawForeground(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int widthSize;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int sourceWidth = View.MeasureSpec.getSize(widthMeasureSpec);
        int heightSize = View.MeasureSpec.getSize(heightMeasureSpec);
        int i8 = this.mMaxWidth;
        if (i8 >= 0) {
            int widthSize2 = Math.min(sourceWidth, i8 + getPaddingLeft() + getPaddingRight());
            widthSize = widthSize2;
        } else {
            widthSize = sourceWidth;
        }
        int widthSpec = View.MeasureSpec.makeMeasureSpec(widthSize, 1073741824);
        int heightSpec = View.MeasureSpec.makeMeasureSpec(heightSize, 1073741824);
        int childCount = getChildCount();
        int heightUsed = 0;
        int i9 = 0;
        while (true) {
            i = Integer.MIN_VALUE;
            i2 = -1;
            i3 = 8;
            i4 = 0;
            if (i9 >= childCount) {
                break;
            }
            View child = getChildAt(i9);
            LayoutParams lp = (LayoutParams) child.getLayoutParams();
            if (lp.alwaysShow && child.getVisibility() != 8) {
                if (lp.maxHeight != -1) {
                    int remainingHeight = heightSize - heightUsed;
                    measureChildWithMargins(child, widthSpec, 0, View.MeasureSpec.makeMeasureSpec(lp.maxHeight, Integer.MIN_VALUE), lp.maxHeight > remainingHeight ? lp.maxHeight - remainingHeight : 0);
                } else {
                    measureChildWithMargins(child, widthSpec, 0, heightSpec, heightUsed);
                }
                heightUsed += child.getMeasuredHeight();
            }
            i9++;
        }
        this.mAlwaysShowHeight = heightUsed;
        int heightUsed2 = heightUsed;
        int heightUsed3 = 0;
        while (heightUsed3 < childCount) {
            View child2 = getChildAt(heightUsed3);
            LayoutParams lp2 = (LayoutParams) child2.getLayoutParams();
            if (lp2.alwaysShow || child2.getVisibility() == i3) {
                i5 = i4;
                i6 = i3;
                i7 = i2;
            } else {
                if (lp2.maxHeight != i2) {
                    int remainingHeight2 = heightSize - heightUsed2;
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(lp2.maxHeight, i);
                    i5 = i4;
                    i6 = i3;
                    i7 = i2;
                    measureChildWithMargins(child2, widthSpec, 0, iMakeMeasureSpec, lp2.maxHeight > remainingHeight2 ? lp2.maxHeight - remainingHeight2 : i4);
                } else {
                    i5 = i4;
                    i6 = i3;
                    i7 = i2;
                    measureChildWithMargins(child2, widthSpec, 0, heightSpec, heightUsed2);
                }
                heightUsed2 += child2.getMeasuredHeight();
            }
            heightUsed3++;
            i4 = i5;
            i3 = i6;
            i2 = i7;
            i = Integer.MIN_VALUE;
        }
        int i10 = i4;
        int oldCollapsibleHeight = this.mCollapsibleHeight;
        int iMax = Math.max(i10, (heightUsed2 - this.mAlwaysShowHeight) - getMaxCollapsedHeight());
        this.mCollapsibleHeight = iMax;
        this.mUncollapsibleHeight = heightUsed2 - iMax;
        updateCollapseOffset(oldCollapsibleHeight, !isDragging());
        if (!getShowAtTop()) {
            this.mTopOffset = Math.max(i10, heightSize - heightUsed2) + ((int) this.mCollapseOffset);
        } else {
            this.mTopOffset = i10;
        }
        setMeasuredDimension(sourceWidth, heightSize);
    }

    public int getAlwaysShowHeight() {
        return this.mAlwaysShowHeight;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int width;
        int width2 = getWidth();
        View indicatorHost = null;
        int ypos = this.mTopOffset;
        int leftEdge = getPaddingLeft();
        int rightEdge = width2 - getPaddingRight();
        int widthAvailable = rightEdge - leftEdge;
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View child = getChildAt(i);
            LayoutParams lp = (LayoutParams) child.getLayoutParams();
            if (lp.hasNestedScrollIndicator) {
                indicatorHost = child;
            }
            if (child.getVisibility() == 8) {
                width = width2;
            } else {
                int top = lp.topMargin + ypos;
                if (lp.ignoreOffset) {
                    top = (int) (top - this.mCollapseOffset);
                }
                int bottom = child.getMeasuredHeight() + top;
                int childWidth = child.getMeasuredWidth();
                int left = ((widthAvailable - childWidth) / 2) + leftEdge;
                int right = left + childWidth;
                child.layout(left, top, right, bottom);
                width = width2;
                ypos = lp.bottomMargin + bottom;
            }
            i++;
            width2 = width;
        }
        if (this.mScrollIndicatorDrawable != null) {
            if (indicatorHost == null) {
                this.mScrollIndicatorDrawable = null;
                setWillNotDraw(true);
                return;
            }
            int left2 = indicatorHost.getLeft();
            int right2 = indicatorHost.getRight();
            int bottom2 = indicatorHost.getTop();
            this.mScrollIndicatorDrawable.setBounds(left2, bottom2 - this.mScrollIndicatorDrawable.getIntrinsicHeight(), right2, bottom2);
            setWillNotDraw(true ^ isCollapsed());
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        if (p instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) p);
        }
        if (p instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) p);
        }
        return new LayoutParams(p);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState ss = new SavedState(super.onSaveInstanceState());
        ss.open = this.mCollapsibleHeight > 0 && this.mCollapseOffset == 0.0f;
        ss.mCollapsibleHeightReserved = this.mCollapsibleHeightReserved;
        return ss;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        SavedState ss = (SavedState) state;
        super.onRestoreInstanceState(ss.getSuperState());
        this.mOpenOnLayout = ss.open;
        this.mCollapsibleHeightReserved = ss.mCollapsibleHeightReserved;
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public boolean alwaysShow;
        public boolean hasNestedScrollIndicator;
        public boolean ignoreOffset;
        public int maxHeight;

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
            TypedArray a = c.obtainStyledAttributes(attrs, R.styleable.ResolverDrawerLayout_LayoutParams);
            this.alwaysShow = a.getBoolean(1, false);
            this.ignoreOffset = a.getBoolean(3, false);
            this.hasNestedScrollIndicator = a.getBoolean(2, false);
            this.maxHeight = a.getDimensionPixelSize(4, -1);
            a.recycle();
        }

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.MarginLayoutParams) source);
            this.alwaysShow = source.alwaysShow;
            this.ignoreOffset = source.ignoreOffset;
            this.hasNestedScrollIndicator = source.hasNestedScrollIndicator;
            this.maxHeight = source.maxHeight;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.internal.widget.ResolverDrawerLayout.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        private int mCollapsibleHeightReserved;
        boolean open;

        SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in) {
            super(in);
            this.open = in.readInt() != 0;
            this.mCollapsibleHeightReserved = in.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.open ? 1 : 0);
            parcel.writeInt(this.mCollapsibleHeightReserved);
        }
    }

    private class RunOnDismissedListener implements Runnable {
        private RunOnDismissedListener() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ResolverDrawerLayout.this.dispatchOnDismissed();
        }
    }

    private MetricsLogger getMetricsLogger() {
        if (this.mMetricsLogger == null) {
            this.mMetricsLogger = new MetricsLogger();
        }
        return this.mMetricsLogger;
    }

    public IResolverDrawerLayoutWrapper getWrapper() {
        return this.mResolverDrawerLayoutWrapper;
    }

    public class ResolverDrawerLayoutWrapper implements IResolverDrawerLayoutWrapper {
        public ResolverDrawerLayoutWrapper() {
        }

        @Override // com.android.internal.app.IResolverDrawerLayoutWrapper
        public IResolverDrawerLayoutExt getResolverDrawerLayoutExt() {
            if (ResolverDrawerLayout.this.mIResolverDrawerLayoutExt == null) {
                return IResolverDrawerLayoutExt.DEFAULT;
            }
            return ResolverDrawerLayout.this.mIResolverDrawerLayoutExt;
        }

        @Override // com.android.internal.app.IResolverDrawerLayoutWrapper
        public void performDrag(float dy) {
            ResolverDrawerLayout.this.performDrag(dy);
        }

        @Override // com.android.internal.app.IResolverDrawerLayoutWrapper
        public boolean isNestedListChildScrolled() {
            return ResolverDrawerLayout.this.isNestedListChildScrolled();
        }

        @Override // com.android.internal.app.IResolverDrawerLayoutWrapper
        public void setDismissOnScrollerFinished(boolean isFinished) {
            ResolverDrawerLayout.this.mDismissOnScrollerFinished = isFinished;
        }

        @Override // com.android.internal.app.IResolverDrawerLayoutWrapper
        public void smoothScrollTo(int yOffset, float velocity) {
            ResolverDrawerLayout.this.smoothScrollTo(yOffset, velocity);
        }

        @Override // com.android.internal.app.IResolverDrawerLayoutWrapper
        public void dismiss() {
            ResolverDrawerLayout.this.dismiss();
        }

        @Override // com.android.internal.app.IResolverDrawerLayoutWrapper
        public boolean isDismissable() {
            return ResolverDrawerLayout.this.isDismissable();
        }
    }
}
