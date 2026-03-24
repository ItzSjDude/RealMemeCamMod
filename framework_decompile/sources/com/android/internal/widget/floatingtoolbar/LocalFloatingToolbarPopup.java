package com.android.internal.widget.floatingtoolbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Size;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.internal.R;
import com.android.internal.util.Preconditions;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes4.dex */
public final class LocalFloatingToolbarPopup implements FloatingToolbarPopup {
    private static final int MAX_OVERFLOW_SIZE;
    private static final int MIN_OVERFLOW_SIZE;
    private static ILocalFloatingToolbarPopupExt sLocalFloatingToolbarPopupExt;
    private final Drawable mArrow;
    private final AnimationSet mCloseOverflowAnimation;
    private final ViewGroup mContentContainer;
    private final Context mContext;
    private final AnimatorSet mDismissAnimation;
    private final Interpolator mFastOutLinearInInterpolator;
    private final Interpolator mFastOutSlowInInterpolator;
    private boolean mHidden;
    private final AnimatorSet mHideAnimation;
    private final int mIconTextSpacing;
    private boolean mIsOverflowOpen;
    private final int mLineHeight;
    private final Interpolator mLinearOutSlowInInterpolator;
    private final Interpolator mLogAccelerateInterpolator;
    private final ViewGroup mMainPanel;
    private Size mMainPanelSize;
    private final int mMarginHorizontal;
    private final int mMarginVertical;
    private MenuItem.OnMenuItemClickListener mOnMenuItemClickListener;
    private final AnimationSet mOpenOverflowAnimation;
    private boolean mOpenOverflowUpwards;
    private final Drawable mOverflow;
    private final Animation.AnimationListener mOverflowAnimationListener;
    private final ImageButton mOverflowButton;
    private final Size mOverflowButtonSize;
    private final OverflowPanel mOverflowPanel;
    private Size mOverflowPanelSize;
    private final OverflowPanelViewHelper mOverflowPanelViewHelper;
    private final View mParent;
    private final PopupWindow mPopupWindow;
    private final AnimatorSet mShowAnimation;
    private int mSuggestedWidth;
    private final AnimatedVectorDrawable mToArrow;
    private final AnimatedVectorDrawable mToOverflow;
    private int mTransitionDurationScale;
    private final Rect mViewPortOnScreen = new Rect();
    private final Point mCoordsOnWindow = new Point();
    private final int[] mTmpCoords = new int[2];
    private final Region mTouchableRegion = new Region();
    private final ViewTreeObserver.OnComputeInternalInsetsListener mInsetsComputer = new ViewTreeObserver.OnComputeInternalInsetsListener() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup$$ExternalSyntheticLambda1
        @Override // android.view.ViewTreeObserver.OnComputeInternalInsetsListener
        public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
            this.f$0.m7367x4c6a9db2(internalInsetsInfo);
        }
    };
    private final Runnable mPreparePopupContentRTLHelper = new Runnable() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.1
        @Override // java.lang.Runnable
        public void run() {
            LocalFloatingToolbarPopup.this.setPanelsStatesAtRestingPosition();
            LocalFloatingToolbarPopup.this.setContentAreaAsTouchableSurface();
            LocalFloatingToolbarPopup.this.mContentContainer.setAlpha(1.0f);
        }
    };
    private boolean mDismissed = true;
    private final Map<MenuItemRepr, MenuItem> mMenuItems = new LinkedHashMap();
    private final View.OnClickListener mMenuItemButtonOnClickListener = new View.OnClickListener() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.2
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            MenuItem menuItem;
            if (LocalFloatingToolbarPopup.this.mOnMenuItemClickListener == null) {
                return;
            }
            Object tag = v.getTag();
            if (!(tag instanceof MenuItemRepr) || (menuItem = (MenuItem) LocalFloatingToolbarPopup.this.mMenuItems.get((MenuItemRepr) tag)) == null) {
                return;
            }
            LocalFloatingToolbarPopup.this.mOnMenuItemClickListener.onMenuItemClick(menuItem);
        }
    };
    private final Rect mPreviousContentRect = new Rect();
    private boolean mWidthChanged = true;

    static {
        ILocalFloatingToolbarPopupExt iLocalFloatingToolbarPopupExt = (ILocalFloatingToolbarPopupExt) ExtLoader.type(ILocalFloatingToolbarPopupExt.class).create();
        sLocalFloatingToolbarPopupExt = iLocalFloatingToolbarPopupExt;
        MIN_OVERFLOW_SIZE = iLocalFloatingToolbarPopupExt.hookMinOverflowSize().intValue();
        MAX_OVERFLOW_SIZE = sLocalFloatingToolbarPopupExt.hookMaxOverflowSize().intValue();
    }

    /* renamed from: lambda$new$0$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup, reason: not valid java name */
    /* synthetic */ void m7367x4c6a9db2(ViewTreeObserver.InternalInsetsInfo info) {
        info.contentInsets.setEmpty();
        info.visibleInsets.setEmpty();
        info.touchableRegion.set(this.mTouchableRegion);
        info.setTouchableInsets(3);
    }

    public LocalFloatingToolbarPopup(Context context, View parent) throws Resources.NotFoundException {
        this.mParent = (View) Objects.requireNonNull(parent);
        Context contextApplyDefaultTheme = applyDefaultTheme(context);
        this.mContext = contextApplyDefaultTheme;
        ViewGroup viewGroupCreateContentContainer = createContentContainer(contextApplyDefaultTheme);
        this.mContentContainer = viewGroupCreateContentContainer;
        sLocalFloatingToolbarPopupExt.hookSetElevation(viewGroupCreateContentContainer);
        this.mPopupWindow = createPopupWindow(viewGroupCreateContentContainer);
        this.mMarginHorizontal = parent.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_horizontal_margin);
        this.mMarginVertical = parent.getResources().getDimensionPixelSize(sLocalFloatingToolbarPopupExt.hookGetMarginVertical(R.dimen.floating_toolbar_vertical_margin));
        this.mLineHeight = sLocalFloatingToolbarPopupExt.hookFloatingToolbarPopupForLineHeight(context, R.dimen.floating_toolbar_height);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_icon_text_spacing);
        this.mIconTextSpacing = dimensionPixelSize;
        this.mLogAccelerateInterpolator = new LogAccelerateInterpolator();
        this.mFastOutSlowInInterpolator = AnimationUtils.loadInterpolator(contextApplyDefaultTheme, 17563661);
        this.mLinearOutSlowInInterpolator = AnimationUtils.loadInterpolator(contextApplyDefaultTheme, 17563662);
        this.mFastOutLinearInInterpolator = AnimationUtils.loadInterpolator(contextApplyDefaultTheme, 17563663);
        Drawable drawableHookFloatingToolbarPopupForArrow = sLocalFloatingToolbarPopupExt.hookFloatingToolbarPopupForArrow(contextApplyDefaultTheme, R.drawable.ft_avd_tooverflow);
        this.mArrow = drawableHookFloatingToolbarPopupForArrow;
        drawableHookFloatingToolbarPopupForArrow.setAutoMirrored(true);
        Drawable drawableHookFloatingToolbarPopupForOverflow = sLocalFloatingToolbarPopupExt.hookFloatingToolbarPopupForOverflow(contextApplyDefaultTheme, R.drawable.ft_avd_toarrow);
        this.mOverflow = drawableHookFloatingToolbarPopupForOverflow;
        drawableHookFloatingToolbarPopupForOverflow.setAutoMirrored(true);
        AnimatedVectorDrawable animatedVectorDrawableHookFloatingToolbarPopupForToArrow = sLocalFloatingToolbarPopupExt.hookFloatingToolbarPopupForToArrow(contextApplyDefaultTheme, R.drawable.ft_avd_toarrow_animation);
        this.mToArrow = animatedVectorDrawableHookFloatingToolbarPopupForToArrow;
        animatedVectorDrawableHookFloatingToolbarPopupForToArrow.setAutoMirrored(true);
        AnimatedVectorDrawable animatedVectorDrawableHookFloatingToolbarPopupForToOverflow = sLocalFloatingToolbarPopupExt.hookFloatingToolbarPopupForToOverflow(contextApplyDefaultTheme, R.drawable.ft_avd_tooverflow_animation);
        this.mToOverflow = animatedVectorDrawableHookFloatingToolbarPopupForToOverflow;
        animatedVectorDrawableHookFloatingToolbarPopupForToOverflow.setAutoMirrored(true);
        ImageButton imageButtonCreateOverflowButton = createOverflowButton();
        this.mOverflowButton = imageButtonCreateOverflowButton;
        this.mOverflowButtonSize = measure(imageButtonCreateOverflowButton);
        this.mMainPanel = createMainPanel();
        OverflowPanelViewHelper overflowPanelViewHelper = new OverflowPanelViewHelper(contextApplyDefaultTheme, dimensionPixelSize);
        this.mOverflowPanelViewHelper = overflowPanelViewHelper;
        sLocalFloatingToolbarPopupExt.hookFloatingToolbarPopupAfterOverflowPanelViewHelper(overflowPanelViewHelper.mOverflowPanelViewHelperExt);
        this.mOverflowPanel = createOverflowPanel();
        Animation.AnimationListener animationListenerCreateOverflowAnimationListener = createOverflowAnimationListener();
        this.mOverflowAnimationListener = animationListenerCreateOverflowAnimationListener;
        AnimationSet animationSet = new AnimationSet(true);
        this.mOpenOverflowAnimation = animationSet;
        animationSet.setAnimationListener(animationListenerCreateOverflowAnimationListener);
        AnimationSet animationSet2 = new AnimationSet(true);
        this.mCloseOverflowAnimation = animationSet2;
        animationSet2.setAnimationListener(animationListenerCreateOverflowAnimationListener);
        this.mShowAnimation = createEnterAnimation(viewGroupCreateContentContainer);
        this.mDismissAnimation = createExitAnimation(viewGroupCreateContentContainer, 150, new AnimatorListenerAdapter() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                LocalFloatingToolbarPopup.this.mPopupWindow.dismiss();
                LocalFloatingToolbarPopup.this.mContentContainer.removeAllViews();
            }
        });
        this.mHideAnimation = createExitAnimation(viewGroupCreateContentContainer, 0, new AnimatorListenerAdapter() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                LocalFloatingToolbarPopup.this.mPopupWindow.dismiss();
            }
        });
    }

    @Override // com.android.internal.widget.floatingtoolbar.FloatingToolbarPopup
    public boolean setOutsideTouchable(boolean outsideTouchable, PopupWindow.OnDismissListener onDismiss) {
        boolean ret = false;
        if (this.mPopupWindow.isOutsideTouchable() ^ outsideTouchable) {
            this.mPopupWindow.setOutsideTouchable(outsideTouchable);
            this.mPopupWindow.setFocusable(!outsideTouchable);
            this.mPopupWindow.update();
            ret = true;
        }
        this.mPopupWindow.setOnDismissListener(onDismiss);
        return ret;
    }

    private void layoutMenuItems(List<MenuItem> menuItems, MenuItem.OnMenuItemClickListener menuItemClickListener, int suggestedWidth) {
        cancelOverflowAnimations();
        clearPanels();
        updateMenuItems(menuItems, menuItemClickListener);
        List<MenuItem> menuItems2 = layoutMainPanelItems(menuItems, getAdjustedToolbarWidth(suggestedWidth));
        if (!menuItems2.isEmpty()) {
            layoutOverflowPanelItems(menuItems2);
        }
        updatePopupSize();
    }

    private void updateMenuItems(List<MenuItem> menuItems, MenuItem.OnMenuItemClickListener menuItemClickListener) {
        this.mMenuItems.clear();
        for (MenuItem menuItem : menuItems) {
            this.mMenuItems.put(MenuItemRepr.of(menuItem), menuItem);
        }
        this.mOnMenuItemClickListener = menuItemClickListener;
    }

    private boolean isLayoutRequired(List<MenuItem> menuItems) {
        return !MenuItemRepr.reprEquals(menuItems, this.mMenuItems.values());
    }

    @Override // com.android.internal.widget.floatingtoolbar.FloatingToolbarPopup
    public void setWidthChanged(boolean widthChanged) {
        this.mWidthChanged = widthChanged;
    }

    @Override // com.android.internal.widget.floatingtoolbar.FloatingToolbarPopup
    public void setSuggestedWidth(int suggestedWidth) {
        int difference = Math.abs(suggestedWidth - this.mSuggestedWidth);
        this.mWidthChanged = ((double) difference) > ((double) this.mSuggestedWidth) * 0.2d;
        this.mSuggestedWidth = suggestedWidth;
    }

    @Override // com.android.internal.widget.floatingtoolbar.FloatingToolbarPopup
    public void show(List<MenuItem> menuItems, MenuItem.OnMenuItemClickListener menuItemClickListener, Rect contentRect) {
        if (isLayoutRequired(menuItems) || this.mWidthChanged) {
            dismiss();
            layoutMenuItems(menuItems, menuItemClickListener, this.mSuggestedWidth);
        } else {
            updateMenuItems(menuItems, menuItemClickListener);
        }
        if (!isShowing()) {
            show(contentRect);
        } else if (!this.mPreviousContentRect.equals(contentRect)) {
            updateCoordinates(contentRect);
        }
        this.mWidthChanged = false;
        this.mPreviousContentRect.set(contentRect);
    }

    private void show(Rect contentRectOnScreen) {
        Objects.requireNonNull(contentRectOnScreen);
        if (isShowing()) {
            return;
        }
        this.mHidden = false;
        this.mDismissed = false;
        cancelDismissAndHideAnimations();
        cancelOverflowAnimations();
        refreshCoordinatesAndOverflowDirection(contentRectOnScreen);
        preparePopupContent(true);
        this.mPopupWindow.showAtLocation(this.mParent, 0, this.mCoordsOnWindow.x, this.mCoordsOnWindow.y);
        setTouchableSurfaceInsetsComputer();
        runShowAnimation();
    }

    @Override // com.android.internal.widget.floatingtoolbar.FloatingToolbarPopup
    public void dismiss() {
        if (this.mDismissed) {
            return;
        }
        this.mHidden = false;
        this.mDismissed = true;
        this.mHideAnimation.cancel();
        runDismissAnimation();
        setZeroTouchableSurface();
    }

    @Override // com.android.internal.widget.floatingtoolbar.FloatingToolbarPopup
    public void hide() {
        if (!isShowing()) {
            return;
        }
        this.mHidden = true;
        runHideAnimation();
        setZeroTouchableSurface();
    }

    @Override // com.android.internal.widget.floatingtoolbar.FloatingToolbarPopup
    public boolean isShowing() {
        return (this.mDismissed || this.mHidden) ? false : true;
    }

    @Override // com.android.internal.widget.floatingtoolbar.FloatingToolbarPopup
    public boolean isHidden() {
        return this.mHidden;
    }

    private void updateCoordinates(Rect contentRectOnScreen) {
        Objects.requireNonNull(contentRectOnScreen);
        if (!isShowing() || !this.mPopupWindow.isShowing()) {
            return;
        }
        cancelOverflowAnimations();
        refreshCoordinatesAndOverflowDirection(contentRectOnScreen);
        preparePopupContent(false);
        this.mPopupWindow.update(this.mCoordsOnWindow.x, this.mCoordsOnWindow.y, this.mPopupWindow.getWidth(), this.mPopupWindow.getHeight());
    }

    private void refreshCoordinatesAndOverflowDirection(Rect contentRectOnScreen) {
        int minimumOverflowHeightWithMargin;
        refreshViewPort();
        int x = Math.min(contentRectOnScreen.centerX() - (this.mPopupWindow.getWidth() / 2), this.mViewPortOnScreen.right - this.mPopupWindow.getWidth());
        int availableHeightAboveContent = contentRectOnScreen.top - this.mViewPortOnScreen.top;
        int availableHeightBelowContent = this.mViewPortOnScreen.bottom - contentRectOnScreen.bottom;
        int margin = this.mMarginVertical * 2;
        int toolbarHeightWithVerticalMargin = this.mLineHeight + margin;
        if (!hasOverflow()) {
            if (availableHeightAboveContent >= toolbarHeightWithVerticalMargin) {
                minimumOverflowHeightWithMargin = contentRectOnScreen.top - toolbarHeightWithVerticalMargin;
            } else if (availableHeightBelowContent >= toolbarHeightWithVerticalMargin) {
                minimumOverflowHeightWithMargin = contentRectOnScreen.bottom;
            } else {
                int y = this.mLineHeight;
                if (availableHeightBelowContent >= y) {
                    minimumOverflowHeightWithMargin = contentRectOnScreen.bottom - this.mMarginVertical;
                } else {
                    minimumOverflowHeightWithMargin = Math.max(this.mViewPortOnScreen.top, contentRectOnScreen.top - toolbarHeightWithVerticalMargin);
                }
            }
        } else {
            int y2 = MIN_OVERFLOW_SIZE;
            int minimumOverflowHeightWithMargin2 = calculateOverflowHeight(y2) + margin;
            int availableHeightThroughContentDown = (this.mViewPortOnScreen.bottom - contentRectOnScreen.top) + toolbarHeightWithVerticalMargin;
            int availableHeightThroughContentUp = (contentRectOnScreen.bottom - this.mViewPortOnScreen.top) + toolbarHeightWithVerticalMargin;
            if (availableHeightAboveContent >= minimumOverflowHeightWithMargin2) {
                updateOverflowHeight(availableHeightAboveContent - margin);
                int y3 = contentRectOnScreen.top - this.mPopupWindow.getHeight();
                this.mOpenOverflowUpwards = true;
                minimumOverflowHeightWithMargin = y3;
            } else if (availableHeightAboveContent >= toolbarHeightWithVerticalMargin && availableHeightThroughContentDown >= minimumOverflowHeightWithMargin2) {
                updateOverflowHeight(availableHeightThroughContentDown - margin);
                int y4 = contentRectOnScreen.top - toolbarHeightWithVerticalMargin;
                this.mOpenOverflowUpwards = false;
                minimumOverflowHeightWithMargin = y4;
            } else if (availableHeightBelowContent >= minimumOverflowHeightWithMargin2) {
                updateOverflowHeight(availableHeightBelowContent - margin);
                int y5 = contentRectOnScreen.bottom;
                this.mOpenOverflowUpwards = false;
                minimumOverflowHeightWithMargin = y5;
            } else if (availableHeightBelowContent < toolbarHeightWithVerticalMargin || this.mViewPortOnScreen.height() < minimumOverflowHeightWithMargin2) {
                updateOverflowHeight(this.mViewPortOnScreen.height() - margin);
                int y6 = this.mViewPortOnScreen.top;
                this.mOpenOverflowUpwards = false;
                minimumOverflowHeightWithMargin = y6;
            } else {
                updateOverflowHeight(availableHeightThroughContentUp - margin);
                int y7 = (contentRectOnScreen.bottom + toolbarHeightWithVerticalMargin) - this.mPopupWindow.getHeight();
                this.mOpenOverflowUpwards = true;
                minimumOverflowHeightWithMargin = y7;
            }
        }
        this.mParent.getRootView().getLocationOnScreen(this.mTmpCoords);
        int[] iArr = this.mTmpCoords;
        int rootViewLeftOnScreen = iArr[0];
        int rootViewTopOnScreen = iArr[1];
        this.mParent.getRootView().getLocationInWindow(this.mTmpCoords);
        int[] iArr2 = this.mTmpCoords;
        int rootViewLeftOnWindow = iArr2[0];
        int rootViewTopOnWindow = iArr2[1];
        int windowLeftOnScreen = rootViewLeftOnScreen - rootViewLeftOnWindow;
        int windowTopOnScreen = rootViewTopOnScreen - rootViewTopOnWindow;
        this.mCoordsOnWindow.set(Math.max(0, x - windowLeftOnScreen), Math.max(0, minimumOverflowHeightWithMargin - windowTopOnScreen));
        int floatingToolbarHeight = calculateOverflowHeight(MIN_OVERFLOW_SIZE) + margin + toolbarHeightWithVerticalMargin;
        int floatingToolBarBottom = this.mCoordsOnWindow.y + windowTopOnScreen + floatingToolbarHeight;
        int screenHeight = this.mContentContainer.getContext().getResources().getDisplayMetrics().heightPixels;
        if (floatingToolBarBottom > screenHeight && floatingToolbarHeight < windowTopOnScreen) {
            this.mCoordsOnWindow.set(Math.max(0, x - windowLeftOnScreen), minimumOverflowHeightWithMargin - windowTopOnScreen);
        }
    }

    private void runShowAnimation() {
        this.mShowAnimation.start();
    }

    private void runDismissAnimation() {
        this.mDismissAnimation.start();
    }

    private void runHideAnimation() {
        this.mHideAnimation.start();
    }

    private void cancelDismissAndHideAnimations() {
        this.mDismissAnimation.cancel();
        this.mHideAnimation.cancel();
    }

    private void cancelOverflowAnimations() {
        this.mContentContainer.clearAnimation();
        this.mMainPanel.animate().cancel();
        this.mOverflowPanel.animate().cancel();
        this.mToArrow.stop();
        this.mToOverflow.stop();
    }

    private void openOverflow() {
        final float overflowButtonTargetX;
        final int targetWidth = this.mOverflowPanelSize.getWidth();
        final int targetHeight = this.mOverflowPanelSize.getHeight();
        final int startWidth = this.mContentContainer.getWidth();
        final int startHeight = this.mContentContainer.getHeight();
        final float startY = this.mContentContainer.getY();
        final float left = this.mContentContainer.getX();
        final float right = left + this.mContentContainer.getWidth();
        Animation widthAnimation = new Animation() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.5
            @Override // android.view.animation.Animation
            protected void applyTransformation(float interpolatedTime, Transformation t) {
                int deltaWidth = (int) ((targetWidth - startWidth) * interpolatedTime);
                LocalFloatingToolbarPopup.setWidth(LocalFloatingToolbarPopup.this.mContentContainer, startWidth + deltaWidth);
                if (LocalFloatingToolbarPopup.this.isInRTLMode()) {
                    LocalFloatingToolbarPopup.this.mContentContainer.setX(left);
                    LocalFloatingToolbarPopup.this.mMainPanel.setX(0.0f);
                    LocalFloatingToolbarPopup.this.mOverflowPanel.setX(0.0f);
                } else {
                    LocalFloatingToolbarPopup.this.mContentContainer.setX(right - LocalFloatingToolbarPopup.this.mContentContainer.getWidth());
                    LocalFloatingToolbarPopup.this.mMainPanel.setX(LocalFloatingToolbarPopup.this.mContentContainer.getWidth() - startWidth);
                    LocalFloatingToolbarPopup.this.mOverflowPanel.setX(LocalFloatingToolbarPopup.this.mContentContainer.getWidth() - targetWidth);
                }
            }
        };
        Animation heightAnimation = new Animation() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.6
            @Override // android.view.animation.Animation
            protected void applyTransformation(float interpolatedTime, Transformation t) {
                int deltaHeight = (int) ((targetHeight - startHeight) * interpolatedTime);
                LocalFloatingToolbarPopup.setHeight(LocalFloatingToolbarPopup.this.mContentContainer, startHeight + deltaHeight);
                if (LocalFloatingToolbarPopup.this.mOpenOverflowUpwards) {
                    LocalFloatingToolbarPopup.this.mContentContainer.setY(startY - (LocalFloatingToolbarPopup.this.mContentContainer.getHeight() - startHeight));
                    LocalFloatingToolbarPopup.this.positionContentYCoordinatesIfOpeningOverflowUpwards();
                }
            }
        };
        final float overflowButtonStartX = this.mOverflowButton.getX();
        if (isInRTLMode()) {
            overflowButtonTargetX = ((targetWidth + overflowButtonStartX) - this.mOverflowButton.getWidth()) - sLocalFloatingToolbarPopupExt.hookGetOverflowBtnExtraStartX(this.mOverflowButton);
        } else {
            overflowButtonTargetX = (overflowButtonStartX - targetWidth) + this.mOverflowButton.getWidth() + sLocalFloatingToolbarPopupExt.hookGetOverflowBtnExtraStartX(this.mOverflowButton);
        }
        Animation overflowButtonAnimation = new Animation() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.7
            @Override // android.view.animation.Animation
            protected void applyTransformation(float interpolatedTime, Transformation t) {
                float f = overflowButtonStartX;
                float overflowButtonX = f + ((overflowButtonTargetX - f) * interpolatedTime);
                float deltaContainerWidth = LocalFloatingToolbarPopup.this.isInRTLMode() ? 0.0f : LocalFloatingToolbarPopup.this.mContentContainer.getWidth() - startWidth;
                float actualOverflowButtonX = overflowButtonX + deltaContainerWidth;
                LocalFloatingToolbarPopup.this.mOverflowButton.setX(actualOverflowButtonX);
            }
        };
        widthAnimation.setInterpolator(this.mLogAccelerateInterpolator);
        widthAnimation.setDuration(getAdjustedDuration(250));
        heightAnimation.setInterpolator(this.mFastOutSlowInInterpolator);
        heightAnimation.setDuration(getAdjustedDuration(250));
        overflowButtonAnimation.setInterpolator(this.mFastOutSlowInInterpolator);
        overflowButtonAnimation.setDuration(getAdjustedDuration(250));
        this.mOpenOverflowAnimation.getAnimations().clear();
        this.mOpenOverflowAnimation.getAnimations().clear();
        this.mOpenOverflowAnimation.addAnimation(widthAnimation);
        this.mOpenOverflowAnimation.addAnimation(heightAnimation);
        this.mOpenOverflowAnimation.addAnimation(overflowButtonAnimation);
        this.mContentContainer.startAnimation(this.mOpenOverflowAnimation);
        this.mIsOverflowOpen = true;
        this.mMainPanel.animate().alpha(0.0f).withLayer().setInterpolator(this.mLinearOutSlowInInterpolator).setDuration(250L).start();
        this.mOverflowPanel.setAlpha(1.0f);
    }

    private void closeOverflow() {
        final float overflowButtonTargetX;
        final int targetWidth = this.mMainPanelSize.getWidth();
        final int startWidth = this.mContentContainer.getWidth();
        final float left = this.mContentContainer.getX();
        final float right = left + this.mContentContainer.getWidth();
        Animation widthAnimation = new Animation() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.8
            @Override // android.view.animation.Animation
            protected void applyTransformation(float interpolatedTime, Transformation t) {
                int deltaWidth = (int) ((targetWidth - startWidth) * interpolatedTime);
                LocalFloatingToolbarPopup.setWidth(LocalFloatingToolbarPopup.this.mContentContainer, startWidth + deltaWidth);
                if (LocalFloatingToolbarPopup.this.isInRTLMode()) {
                    LocalFloatingToolbarPopup.this.mContentContainer.setX(left);
                    LocalFloatingToolbarPopup.this.mMainPanel.setX(0.0f);
                    LocalFloatingToolbarPopup.this.mOverflowPanel.setX(0.0f);
                } else {
                    LocalFloatingToolbarPopup.this.mContentContainer.setX(right - LocalFloatingToolbarPopup.this.mContentContainer.getWidth());
                    LocalFloatingToolbarPopup.this.mMainPanel.setX(LocalFloatingToolbarPopup.this.mContentContainer.getWidth() - targetWidth);
                    LocalFloatingToolbarPopup.this.mOverflowPanel.setX(LocalFloatingToolbarPopup.this.mContentContainer.getWidth() - startWidth);
                }
            }
        };
        final int targetHeight = this.mMainPanelSize.getHeight();
        final int startHeight = this.mContentContainer.getHeight();
        final float bottom = this.mContentContainer.getY() + this.mContentContainer.getHeight();
        Animation heightAnimation = new Animation() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.9
            @Override // android.view.animation.Animation
            protected void applyTransformation(float interpolatedTime, Transformation t) {
                int deltaHeight = (int) ((targetHeight - startHeight) * interpolatedTime);
                LocalFloatingToolbarPopup.setHeight(LocalFloatingToolbarPopup.this.mContentContainer, startHeight + deltaHeight);
                if (LocalFloatingToolbarPopup.this.mOpenOverflowUpwards) {
                    LocalFloatingToolbarPopup.this.mContentContainer.setY(bottom - LocalFloatingToolbarPopup.this.mContentContainer.getHeight());
                    LocalFloatingToolbarPopup.this.positionContentYCoordinatesIfOpeningOverflowUpwards();
                }
            }
        };
        final float overflowButtonStartX = this.mOverflowButton.getX();
        if (isInRTLMode()) {
            overflowButtonTargetX = (overflowButtonStartX - startWidth) + this.mOverflowButton.getWidth() + sLocalFloatingToolbarPopupExt.hookGetOverflowBtnExtraStartX(this.mOverflowButton);
        } else {
            overflowButtonTargetX = ((startWidth + overflowButtonStartX) - this.mOverflowButton.getWidth()) - sLocalFloatingToolbarPopupExt.hookGetOverflowBtnExtraStartX(this.mOverflowButton);
        }
        Animation overflowButtonAnimation = new Animation() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.10
            @Override // android.view.animation.Animation
            protected void applyTransformation(float interpolatedTime, Transformation t) {
                float f = overflowButtonStartX;
                float overflowButtonX = f + ((overflowButtonTargetX - f) * interpolatedTime);
                float deltaContainerWidth = LocalFloatingToolbarPopup.this.isInRTLMode() ? 0.0f : LocalFloatingToolbarPopup.this.mContentContainer.getWidth() - startWidth;
                float actualOverflowButtonX = overflowButtonX + deltaContainerWidth;
                LocalFloatingToolbarPopup.this.mOverflowButton.setX(actualOverflowButtonX);
            }
        };
        widthAnimation.setInterpolator(this.mFastOutSlowInInterpolator);
        widthAnimation.setDuration(getAdjustedDuration(250));
        heightAnimation.setInterpolator(this.mLogAccelerateInterpolator);
        heightAnimation.setDuration(getAdjustedDuration(250));
        overflowButtonAnimation.setInterpolator(this.mFastOutSlowInInterpolator);
        overflowButtonAnimation.setDuration(getAdjustedDuration(250));
        this.mCloseOverflowAnimation.getAnimations().clear();
        this.mCloseOverflowAnimation.addAnimation(widthAnimation);
        this.mCloseOverflowAnimation.addAnimation(heightAnimation);
        this.mCloseOverflowAnimation.addAnimation(overflowButtonAnimation);
        this.mContentContainer.startAnimation(this.mCloseOverflowAnimation);
        this.mIsOverflowOpen = false;
        this.mMainPanel.animate().alpha(1.0f).withLayer().setInterpolator(this.mFastOutLinearInInterpolator).setDuration(100L).start();
        this.mOverflowPanel.animate().alpha(0.0f).withLayer().setInterpolator(this.mLinearOutSlowInInterpolator).setDuration(150L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPanelsStatesAtRestingPosition() {
        this.mOverflowButton.setEnabled(true);
        this.mOverflowPanel.awakenScrollBars();
        if (this.mIsOverflowOpen) {
            setSize(this.mContentContainer, this.mOverflowPanelSize);
            this.mMainPanel.setAlpha(0.0f);
            this.mMainPanel.setVisibility(4);
            this.mOverflowPanel.setAlpha(1.0f);
            this.mOverflowPanel.setVisibility(0);
            this.mOverflowButton.setImageDrawable(this.mArrow);
            this.mOverflowButton.setContentDescription(this.mContext.getString(R.string.floating_toolbar_close_overflow_description));
            if (isInRTLMode()) {
                this.mContentContainer.setX(this.mMarginHorizontal);
                this.mMainPanel.setX(0.0f);
                this.mOverflowButton.setX((r0.getWidth() - this.mOverflowButtonSize.getWidth()) - sLocalFloatingToolbarPopupExt.hookGetOverflowBtnExtraStartX(this.mOverflowButton));
                this.mOverflowPanel.setX(0.0f);
            } else {
                this.mContentContainer.setX((this.mPopupWindow.getWidth() - r0.getWidth()) - this.mMarginHorizontal);
                this.mMainPanel.setX(-this.mContentContainer.getX());
                this.mOverflowButton.setX(sLocalFloatingToolbarPopupExt.hookGetOverflowBtnExtraStartX(r1) + 0);
                this.mOverflowPanel.setX(0.0f);
            }
            if (this.mOpenOverflowUpwards) {
                this.mContentContainer.setY(this.mMarginVertical);
                this.mMainPanel.setY(r0.getHeight() - this.mContentContainer.getHeight());
                this.mOverflowButton.setY(r0.getHeight() - this.mOverflowButtonSize.getHeight());
                this.mOverflowPanel.setY(0.0f);
                return;
            }
            this.mContentContainer.setY(this.mMarginVertical);
            this.mMainPanel.setY(0.0f);
            this.mOverflowButton.setY(0.0f);
            this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
            return;
        }
        Size containerSize = this.mMainPanelSize;
        setSize(this.mContentContainer, containerSize);
        this.mMainPanel.setAlpha(1.0f);
        this.mMainPanel.setVisibility(0);
        this.mOverflowPanel.setAlpha(0.0f);
        this.mOverflowPanel.setVisibility(4);
        this.mOverflowButton.setImageDrawable(this.mOverflow);
        this.mOverflowButton.setContentDescription(this.mContext.getString(R.string.floating_toolbar_open_overflow_description));
        if (hasOverflow()) {
            if (isInRTLMode()) {
                this.mContentContainer.setX(this.mMarginHorizontal);
                this.mMainPanel.setX(0.0f);
                this.mOverflowButton.setX(0.0f);
                this.mOverflowPanel.setX(0.0f);
            } else {
                this.mContentContainer.setX((this.mPopupWindow.getWidth() - containerSize.getWidth()) - this.mMarginHorizontal);
                this.mMainPanel.setX(0.0f);
                this.mOverflowButton.setX(containerSize.getWidth() - this.mOverflowButtonSize.getWidth());
                this.mOverflowPanel.setX(containerSize.getWidth() - this.mOverflowPanelSize.getWidth());
            }
            if (this.mOpenOverflowUpwards) {
                this.mContentContainer.setY((this.mMarginVertical + this.mOverflowPanelSize.getHeight()) - containerSize.getHeight());
                this.mMainPanel.setY(0.0f);
                this.mOverflowButton.setY(0.0f);
                this.mOverflowPanel.setY(containerSize.getHeight() - this.mOverflowPanelSize.getHeight());
                return;
            }
            this.mContentContainer.setY(this.mMarginVertical);
            this.mMainPanel.setY(0.0f);
            this.mOverflowButton.setY(0.0f);
            this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
            return;
        }
        this.mContentContainer.setX(this.mMarginHorizontal);
        this.mContentContainer.setY(this.mMarginVertical);
        this.mMainPanel.setX(0.0f);
        this.mMainPanel.setY(0.0f);
    }

    private void updateOverflowHeight(int suggestedHeight) {
        if (hasOverflow()) {
            int maxItemSize = (suggestedHeight - this.mOverflowButtonSize.getHeight()) / this.mLineHeight;
            int newHeight = calculateOverflowHeight(maxItemSize);
            if (this.mOverflowPanelSize.getHeight() != newHeight) {
                this.mOverflowPanelSize = new Size(this.mOverflowPanelSize.getWidth(), newHeight);
            }
            setSize(this.mOverflowPanel, this.mOverflowPanelSize);
            if (this.mIsOverflowOpen) {
                setSize(this.mContentContainer, this.mOverflowPanelSize);
                if (this.mOpenOverflowUpwards) {
                    int deltaHeight = this.mOverflowPanelSize.getHeight() - newHeight;
                    ViewGroup viewGroup = this.mContentContainer;
                    viewGroup.setY(viewGroup.getY() + deltaHeight);
                    ImageButton imageButton = this.mOverflowButton;
                    imageButton.setY(imageButton.getY() - deltaHeight);
                }
            } else {
                setSize(this.mContentContainer, this.mMainPanelSize);
            }
            updatePopupSize();
        }
    }

    private void updatePopupSize() {
        int width = 0;
        int height = 0;
        Size size = this.mMainPanelSize;
        if (size != null) {
            width = Math.max(0, size.getWidth());
            height = Math.max(0, this.mMainPanelSize.getHeight());
        }
        Size size2 = this.mOverflowPanelSize;
        if (size2 != null) {
            width = Math.max(width, size2.getWidth());
            height = Math.max(height, this.mOverflowPanelSize.getHeight());
        }
        this.mPopupWindow.setWidth((this.mMarginHorizontal * 2) + width);
        this.mPopupWindow.setHeight((this.mMarginVertical * 2) + height);
        maybeComputeTransitionDurationScale();
    }

    private void refreshViewPort() {
        this.mParent.getWindowVisibleDisplayFrame(this.mViewPortOnScreen);
    }

    private int getAdjustedToolbarWidth(int suggestedWidth) throws Resources.NotFoundException {
        int width = suggestedWidth;
        refreshViewPort();
        int maximumWidth = this.mViewPortOnScreen.width() - (this.mParent.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_horizontal_margin) * 2);
        if (width <= 0) {
            width = this.mParent.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_preferred_width);
        }
        return Math.min(width, maximumWidth);
    }

    private void setZeroTouchableSurface() {
        this.mTouchableRegion.setEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContentAreaAsTouchableSurface() {
        int width;
        int height;
        Objects.requireNonNull(this.mMainPanelSize);
        if (this.mIsOverflowOpen) {
            Objects.requireNonNull(this.mOverflowPanelSize);
            width = this.mOverflowPanelSize.getWidth();
            height = this.mOverflowPanelSize.getHeight();
        } else {
            width = this.mMainPanelSize.getWidth();
            height = this.mMainPanelSize.getHeight();
        }
        this.mTouchableRegion.set((int) this.mContentContainer.getX(), (int) this.mContentContainer.getY(), ((int) this.mContentContainer.getX()) + width, ((int) this.mContentContainer.getY()) + height);
    }

    private void setTouchableSurfaceInsetsComputer() {
        ViewTreeObserver viewTreeObserver = this.mPopupWindow.getContentView().getRootView().getViewTreeObserver();
        viewTreeObserver.removeOnComputeInternalInsetsListener(this.mInsetsComputer);
        viewTreeObserver.addOnComputeInternalInsetsListener(this.mInsetsComputer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInRTLMode() {
        return this.mContext.getApplicationInfo().hasRtlSupport() && this.mContext.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    private boolean hasOverflow() {
        return this.mOverflowPanelSize != null;
    }

    public List<MenuItem> layoutMainPanelItems(List<MenuItem> menuItems, int toolbarWidth) {
        int menuItemButtonWidth;
        Objects.requireNonNull(menuItems);
        int availableWidth = toolbarWidth;
        LinkedList<MenuItem> remainingMenuItems = new LinkedList<>();
        LinkedList<MenuItem> overflowMenuItems = new LinkedList<>();
        Iterator<MenuItem> it = menuItems.iterator();
        while (true) {
            menuItemButtonWidth = 16908353;
            if (!it.hasNext()) {
                break;
            }
            MenuItem menuItem = it.next();
            if (menuItem.getItemId() != 16908353 && menuItem.requiresOverflow()) {
                overflowMenuItems.add(menuItem);
            } else {
                remainingMenuItems.add(menuItem);
            }
        }
        remainingMenuItems.addAll(overflowMenuItems);
        this.mMainPanel.removeAllViews();
        this.mMainPanel.setPaddingRelative(0, 0, 0, 0);
        boolean isFirstItem = true;
        while (!remainingMenuItems.isEmpty()) {
            MenuItem menuItem2 = remainingMenuItems.peek();
            if (!isFirstItem && menuItem2.requiresOverflow()) {
                break;
            }
            boolean showIcon = isFirstItem && menuItem2.getItemId() == menuItemButtonWidth;
            View menuItemButton = createMenuItemButton(this.mContext, menuItem2, this.mIconTextSpacing, showIcon);
            if (!showIcon && (menuItemButton instanceof LinearLayout)) {
                ((LinearLayout) menuItemButton).setGravity(17);
            }
            if (isFirstItem) {
                menuItemButton.setPaddingRelative(sLocalFloatingToolbarPopupExt.hookGetFirstItemPaddingStart(menuItemButton.getContext(), menuItemButton.getPaddingStart()), menuItemButton.getPaddingTop(), menuItemButton.getPaddingEnd(), menuItemButton.getPaddingBottom());
            }
            boolean isLastItem = remainingMenuItems.size() == 1;
            if (isLastItem) {
                menuItemButton.setPaddingRelative(menuItemButton.getPaddingStart(), menuItemButton.getPaddingTop(), sLocalFloatingToolbarPopupExt.hookGetLastItemPaddingEnd(menuItemButton.getContext(), menuItemButton.getPaddingEnd()), menuItemButton.getPaddingBottom());
            }
            menuItemButton.measure(0, 0);
            int menuItemButtonWidth2 = Math.min(menuItemButton.getMeasuredWidth(), toolbarWidth);
            boolean canFitWithOverflow = menuItemButtonWidth2 <= availableWidth - this.mOverflowButtonSize.getWidth();
            boolean canFitNoOverflow = isLastItem && menuItemButtonWidth2 <= availableWidth;
            if (!canFitWithOverflow && !canFitNoOverflow) {
                break;
            }
            setButtonTagAndClickListener(menuItemButton, menuItem2);
            menuItemButton.setTooltipText(menuItem2.getTooltipText());
            this.mMainPanel.addView(menuItemButton);
            ViewGroup.LayoutParams params = menuItemButton.getLayoutParams();
            params.width = menuItemButtonWidth2;
            menuItemButton.setLayoutParams(params);
            availableWidth -= menuItemButtonWidth2;
            remainingMenuItems.pop();
            menuItem2.getGroupId();
            isFirstItem = false;
            menuItemButtonWidth = 16908353;
        }
        if (!remainingMenuItems.isEmpty()) {
            this.mMainPanel.setPaddingRelative(0, 0, this.mOverflowButtonSize.getWidth(), 0);
        }
        this.mMainPanelSize = measure(this.mMainPanel);
        return remainingMenuItems;
    }

    private void layoutOverflowPanelItems(List<MenuItem> menuItems) {
        ArrayAdapter<MenuItem> overflowPanelAdapter = (ArrayAdapter) this.mOverflowPanel.getAdapter();
        overflowPanelAdapter.clear();
        int size = menuItems.size();
        for (int i = 0; i < size; i++) {
            overflowPanelAdapter.add(menuItems.get(i));
        }
        this.mOverflowPanel.setAdapter((ListAdapter) overflowPanelAdapter);
        sLocalFloatingToolbarPopupExt.hookLayoutOverflowPanelItems(overflowPanelAdapter.getCount());
        if (this.mOpenOverflowUpwards) {
            this.mOverflowPanel.setY(0.0f);
        } else {
            this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
        }
        int width = Math.max(getOverflowWidth(), this.mOverflowButtonSize.getWidth());
        int height = calculateOverflowHeight(MAX_OVERFLOW_SIZE);
        Size size2 = new Size(width, height);
        this.mOverflowPanelSize = size2;
        setSize(this.mOverflowPanel, size2);
    }

    private void preparePopupContent(boolean isFirstRendered) {
        this.mContentContainer.removeAllViews();
        if (hasOverflow()) {
            this.mContentContainer.addView(this.mOverflowPanel);
        }
        this.mContentContainer.addView(this.mMainPanel);
        if (hasOverflow()) {
            this.mContentContainer.addView(this.mOverflowButton);
        }
        setPanelsStatesAtRestingPosition();
        setContentAreaAsTouchableSurface();
        if (isFirstRendered) {
            this.mContentContainer.setAlpha(0.0f);
        }
        this.mContentContainer.post(this.mPreparePopupContentRTLHelper);
    }

    private void clearPanels() {
        this.mOverflowPanelSize = null;
        this.mMainPanelSize = null;
        this.mIsOverflowOpen = false;
        this.mMainPanel.removeAllViews();
        ArrayAdapter<MenuItem> overflowPanelAdapter = (ArrayAdapter) this.mOverflowPanel.getAdapter();
        overflowPanelAdapter.clear();
        this.mOverflowPanel.setAdapter((ListAdapter) overflowPanelAdapter);
        sLocalFloatingToolbarPopupExt.hookClearPanels(overflowPanelAdapter.getCount());
        this.mContentContainer.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void positionContentYCoordinatesIfOpeningOverflowUpwards() {
        if (this.mOpenOverflowUpwards) {
            this.mMainPanel.setY(this.mContentContainer.getHeight() - this.mMainPanelSize.getHeight());
            this.mOverflowButton.setY(this.mContentContainer.getHeight() - this.mOverflowButton.getHeight());
            this.mOverflowPanel.setY(this.mContentContainer.getHeight() - this.mOverflowPanelSize.getHeight());
        }
    }

    private int getOverflowWidth() {
        int overflowWidth = 0;
        int count = this.mOverflowPanel.getAdapter().getCount();
        for (int i = 0; i < count; i++) {
            MenuItem menuItem = (MenuItem) this.mOverflowPanel.getAdapter().getItem(i);
            overflowWidth = Math.max(this.mOverflowPanelViewHelper.calculateWidth(menuItem), overflowWidth);
        }
        return overflowWidth;
    }

    private int calculateOverflowHeight(int maxItemSize) {
        int actualSize = Math.min(MAX_OVERFLOW_SIZE, Math.min(Math.max(MIN_OVERFLOW_SIZE, maxItemSize), this.mOverflowPanel.getCount()));
        int extension = 0;
        if (actualSize < this.mOverflowPanel.getCount()) {
            extension = sLocalFloatingToolbarPopupExt.hookCalculateOverflowExtension(this.mContentContainer, this.mLineHeight);
        }
        return sLocalFloatingToolbarPopupExt.hookCalOverflowTotalItemHeight(this.mContext, actualSize, this.mLineHeight) + this.mOverflowButtonSize.getHeight() + extension;
    }

    private void setButtonTagAndClickListener(View menuItemButton, MenuItem menuItem) {
        menuItemButton.setTag(MenuItemRepr.of(menuItem));
        menuItemButton.setOnClickListener(this.mMenuItemButtonOnClickListener);
    }

    private int getAdjustedDuration(int originalDuration) {
        int i = this.mTransitionDurationScale;
        if (i < 150) {
            return Math.max(originalDuration - 50, 0);
        }
        if (i > 300) {
            return originalDuration + 50;
        }
        return (int) (originalDuration * ValueAnimator.getDurationScale());
    }

    private void maybeComputeTransitionDurationScale() {
        Size size = this.mMainPanelSize;
        if (size != null && this.mOverflowPanelSize != null) {
            int w = size.getWidth() - this.mOverflowPanelSize.getWidth();
            int h = this.mOverflowPanelSize.getHeight() - this.mMainPanelSize.getHeight();
            this.mTransitionDurationScale = (int) (Math.sqrt((w * w) + (h * h)) / this.mContentContainer.getContext().getResources().getDisplayMetrics().density);
        }
    }

    private ViewGroup createMainPanel() {
        ViewGroup mainPanel = new LinearLayout(this.mContext) { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.11
            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
                if (LocalFloatingToolbarPopup.this.isOverflowAnimating()) {
                    widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(LocalFloatingToolbarPopup.this.mMainPanelSize.getWidth(), 1073741824);
                }
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent ev) {
                return LocalFloatingToolbarPopup.this.isOverflowAnimating();
            }
        };
        return mainPanel;
    }

    private ImageButton createOverflowButton() {
        final ImageButton overflowButton = sLocalFloatingToolbarPopupExt.hookCreateOverflowButton(this.mContext, R.layout.floating_popup_overflow_button);
        overflowButton.setImageDrawable(this.mOverflow);
        overflowButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m7365xdabd3e5d(overflowButton, view);
            }
        });
        return overflowButton;
    }

    /* renamed from: lambda$createOverflowButton$1$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup, reason: not valid java name */
    /* synthetic */ void m7365xdabd3e5d(ImageButton overflowButton, View v) {
        if (this.mIsOverflowOpen) {
            overflowButton.setImageDrawable(this.mToOverflow);
            this.mToOverflow.start();
            closeOverflow();
        } else {
            overflowButton.setImageDrawable(this.mToArrow);
            this.mToArrow.start();
            openOverflow();
        }
    }

    private OverflowPanel createOverflowPanel() {
        final OverflowPanel overflowPanel = new OverflowPanel(this);
        overflowPanel.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        overflowPanel.setDivider(null);
        overflowPanel.setDividerHeight(0);
        sLocalFloatingToolbarPopupExt.hookCreateOverflowPanelAfterOverflowPanel(overflowPanel);
        ArrayAdapter adapter = new ArrayAdapter<MenuItem>(this.mContext, 0) { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup.12
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int position, View convertView, ViewGroup parent) {
                LocalFloatingToolbarPopup.sLocalFloatingToolbarPopupExt.hookCreateOverflowPanelAtAdapterGetView(position, LocalFloatingToolbarPopup.this.mOpenOverflowUpwards);
                return LocalFloatingToolbarPopup.this.mOverflowPanelViewHelper.getView(getItem(position), LocalFloatingToolbarPopup.this.mOverflowPanelSize.getWidth(), convertView);
            }
        };
        overflowPanel.setAdapter((ListAdapter) adapter);
        overflowPanel.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup$$ExternalSyntheticLambda2
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m7366x8c66de1a(overflowPanel, adapterView, view, i, j);
            }
        });
        return overflowPanel;
    }

    /* renamed from: lambda$createOverflowPanel$2$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup, reason: not valid java name */
    /* synthetic */ void m7366x8c66de1a(OverflowPanel overflowPanel, AdapterView parent, View view, int position, long id) {
        MenuItem menuItem = (MenuItem) overflowPanel.getAdapter().getItem(position);
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.mOnMenuItemClickListener;
        if (onMenuItemClickListener != null) {
            onMenuItemClickListener.onMenuItemClick(menuItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOverflowAnimating() {
        boolean overflowOpening = this.mOpenOverflowAnimation.hasStarted() && !this.mOpenOverflowAnimation.hasEnded();
        boolean overflowClosing = this.mCloseOverflowAnimation.hasStarted() && !this.mCloseOverflowAnimation.hasEnded();
        return overflowOpening || overflowClosing;
    }

    /* renamed from: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup$13, reason: invalid class name */
    class AnonymousClass13 implements Animation.AnimationListener {
        AnonymousClass13() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            LocalFloatingToolbarPopup.this.mOverflowButton.setEnabled(false);
            LocalFloatingToolbarPopup.this.mMainPanel.setVisibility(0);
            LocalFloatingToolbarPopup.this.mOverflowPanel.setVisibility(0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            LocalFloatingToolbarPopup.this.mContentContainer.post(new Runnable() { // from class: com.android.internal.widget.floatingtoolbar.LocalFloatingToolbarPopup$13$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7368x49aabae4();
                }
            });
        }

        /* renamed from: lambda$onAnimationEnd$0$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup$13, reason: not valid java name */
        /* synthetic */ void m7368x49aabae4() {
            LocalFloatingToolbarPopup.this.setPanelsStatesAtRestingPosition();
            LocalFloatingToolbarPopup.this.setContentAreaAsTouchableSurface();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }
    }

    private Animation.AnimationListener createOverflowAnimationListener() {
        Animation.AnimationListener listener = new AnonymousClass13();
        return listener;
    }

    private static Size measure(View view) {
        Preconditions.checkState(view.getParent() == null);
        view.measure(0, 0);
        return new Size(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    private static void setSize(View view, int width, int height) {
        view.setMinimumWidth(width);
        view.setMinimumHeight(height);
        ViewGroup.LayoutParams params = view.getLayoutParams();
        ViewGroup.LayoutParams params2 = params == null ? new ViewGroup.LayoutParams(0, 0) : params;
        params2.width = width;
        params2.height = height;
        view.setLayoutParams(params2);
    }

    private static void setSize(View view, Size size) {
        setSize(view, size.getWidth(), size.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setWidth(View view, int width) {
        ViewGroup.LayoutParams params = view.getLayoutParams();
        setSize(view, width, params.height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setHeight(View view, int height) {
        ViewGroup.LayoutParams params = view.getLayoutParams();
        setSize(view, params.width, height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class OverflowPanel extends ListView {
        private IOverflowPanelExt mOverflowPanelExt;
        private final LocalFloatingToolbarPopup mPopup;

        OverflowPanel(LocalFloatingToolbarPopup popup) {
            super(((LocalFloatingToolbarPopup) Objects.requireNonNull(popup)).mContext);
            this.mOverflowPanelExt = (IOverflowPanelExt) ExtLoader.type(IOverflowPanelExt.class).base(this).create();
            this.mPopup = popup;
            setScrollBarDefaultDelayBeforeFade(ViewConfiguration.getScrollDefaultDelay() * 3);
            if (!this.mOverflowPanelExt.hookOverflowPanel()) {
                setScrollIndicators(3);
                this.mOverflowPanelExt.hookSetScrollerbar(this);
            }
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            int height = this.mPopup.mOverflowPanelSize.getHeight() - this.mPopup.mOverflowButtonSize.getHeight();
            int heightMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
            super.onMeasure(widthMeasureSpec, heightMeasureSpec2);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent ev) {
            if (this.mPopup.isOverflowAnimating()) {
                return true;
            }
            return super.dispatchTouchEvent(ev);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.View
        public boolean awakenScrollBars() {
            return super.awakenScrollBars();
        }
    }

    private static final class LogAccelerateInterpolator implements Interpolator {
        private static final int BASE = 100;
        private static final float LOGS_SCALE = 1.0f / computeLog(1.0f, 100);

        private LogAccelerateInterpolator() {
        }

        private static float computeLog(float t, int base) {
            return (float) (1.0d - Math.pow(base, -t));
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float t) {
            return 1.0f - (computeLog(1.0f - t, 100) * LOGS_SCALE);
        }
    }

    private static final class OverflowPanelViewHelper {
        private final Context mContext;
        private final int mIconTextSpacing;
        private final int mSidePadding;
        private IOverflowPanelViewHelperExt mOverflowPanelViewHelperExt = (IOverflowPanelViewHelperExt) ExtLoader.type(IOverflowPanelViewHelperExt.class).base(this).create();
        private final View mCalculator = createMenuButton(null);

        OverflowPanelViewHelper(Context context, int iconTextSpacing) {
            this.mContext = (Context) Objects.requireNonNull(context);
            this.mIconTextSpacing = iconTextSpacing;
            this.mSidePadding = context.getResources().getDimensionPixelSize(this.mOverflowPanelViewHelperExt.hookGetSidePaddingRes(R.dimen.floating_toolbar_overflow_side_padding));
        }

        public View getView(MenuItem menuItem, int minimumWidth, View convertView) {
            Objects.requireNonNull(menuItem);
            if (convertView != null) {
                LocalFloatingToolbarPopup.updateMenuItemButton(convertView, menuItem, this.mIconTextSpacing, shouldShowIcon(menuItem));
            } else {
                convertView = createMenuButton(menuItem);
            }
            convertView.setMinimumWidth(minimumWidth);
            this.mOverflowPanelViewHelperExt.hookGetView(convertView, this.mSidePadding, minimumWidth);
            return convertView;
        }

        public int calculateWidth(MenuItem menuItem) {
            LocalFloatingToolbarPopup.updateMenuItemButton(this.mCalculator, menuItem, this.mIconTextSpacing, shouldShowIcon(menuItem));
            this.mCalculator.measure(0, 0);
            return this.mCalculator.getMeasuredWidth();
        }

        private View createMenuButton(MenuItem menuItem) {
            View button = LocalFloatingToolbarPopup.createMenuItemButton(this.mContext, menuItem, this.mIconTextSpacing, shouldShowIcon(menuItem));
            int i = this.mSidePadding;
            button.setPadding(i, 0, i, 0);
            return button;
        }

        private boolean shouldShowIcon(MenuItem menuItem) {
            return menuItem != null && menuItem.getGroupId() == 16908353;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static View createMenuItemButton(Context context, MenuItem menuItem, int iconTextSpacing, boolean showIcon) {
        View menuItemButton = sLocalFloatingToolbarPopupExt.hookCreateMenuItemButton(context);
        if (menuItemButton == null) {
            menuItemButton = LayoutInflater.from(context).inflate(R.layout.floating_popup_menu_button, (ViewGroup) null);
        }
        if (menuItem != null) {
            updateMenuItemButton(menuItemButton, menuItem, iconTextSpacing, showIcon);
        }
        return menuItemButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateMenuItemButton(View menuItemButton, MenuItem menuItem, int iconTextSpacing, boolean showIcon) {
        TextView buttonText = sLocalFloatingToolbarPopupExt.hookUpdateMenuItemButtonForText(menuItemButton);
        if (buttonText == null) {
            buttonText = (TextView) menuItemButton.findViewById(R.id.floating_toolbar_menu_item_text);
        }
        buttonText.setEllipsize(null);
        if (TextUtils.isEmpty(menuItem.getTitle())) {
            buttonText.setVisibility(8);
        } else {
            buttonText.setVisibility(0);
            buttonText.setText(menuItem.getTitle());
        }
        ImageView buttonIcon = sLocalFloatingToolbarPopupExt.hookUpdateMenuItemButtonForIcon(menuItemButton);
        if (buttonIcon == null) {
            buttonIcon = (ImageView) menuItemButton.findViewById(R.id.floating_toolbar_menu_item_image);
        }
        if (menuItem.getIcon() == null || !showIcon) {
            buttonIcon.setVisibility(8);
            if (buttonText != null) {
                buttonText.setPaddingRelative(0, 0, 0, 0);
            }
        } else {
            buttonIcon.setVisibility(0);
            buttonIcon.setImageDrawable(menuItem.getIcon());
            if (buttonText != null) {
                buttonText.setPaddingRelative(iconTextSpacing, 0, 0, 0);
            }
        }
        CharSequence contentDescription = menuItem.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            menuItemButton.setContentDescription(menuItem.getTitle());
        } else {
            menuItemButton.setContentDescription(contentDescription);
        }
    }

    private static ViewGroup createContentContainer(Context context) {
        ViewGroup contentContainer = sLocalFloatingToolbarPopupExt.hookCreateContentContainer(context);
        if (contentContainer == null) {
            contentContainer = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.floating_popup_container, (ViewGroup) null);
        }
        contentContainer.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        contentContainer.setTag(FloatingToolbar.FLOATING_TOOLBAR_TAG);
        contentContainer.setContentDescription(FloatingToolbar.FLOATING_TOOLBAR_TAG);
        contentContainer.setClipToOutline(true);
        return contentContainer;
    }

    private static PopupWindow createPopupWindow(ViewGroup content) {
        ViewGroup popupContentHolder = new LinearLayout(content.getContext());
        PopupWindow popupWindow = new PopupWindow(popupContentHolder);
        popupWindow.setClippingEnabled(false);
        popupWindow.setWindowLayoutType(1005);
        popupWindow.setAnimationStyle(0);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        content.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        popupContentHolder.addView(content);
        return popupWindow;
    }

    private static AnimatorSet createEnterAnimation(View view) {
        AnimatorSet animation = new AnimatorSet();
        animation.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, 0.0f, 1.0f).setDuration(150L));
        return animation;
    }

    private static AnimatorSet createExitAnimation(View view, int startDelay, Animator.AnimatorListener listener) {
        AnimatorSet animation = new AnimatorSet();
        animation.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, 1.0f, 0.0f).setDuration(100L));
        animation.setStartDelay(startDelay);
        animation.addListener(listener);
        return animation;
    }

    private static Context applyDefaultTheme(Context originalContext) {
        TypedArray a = originalContext.obtainStyledAttributes(new int[]{16844176});
        boolean isLightTheme = a.getBoolean(0, true);
        int themeId = isLightTheme ? 16974123 : 16974120;
        a.recycle();
        return new ContextThemeWrapper(originalContext, themeId);
    }

    public static final class MenuItemRepr {
        public final int groupId;
        public final int itemId;
        private final Drawable mIcon;
        private final Intent mIntent;
        public final String title;

        private MenuItemRepr(int itemId, int groupId, CharSequence title, Drawable icon, Intent intent) {
            this.itemId = itemId;
            this.groupId = groupId;
            this.title = title == null ? null : title.toString();
            this.mIcon = icon;
            this.mIntent = intent;
        }

        public static MenuItemRepr of(MenuItem menuItem) {
            return new MenuItemRepr(menuItem.getItemId(), menuItem.getGroupId(), menuItem.getTitle(), menuItem.getIcon(), menuItem.getIntent());
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.itemId), Integer.valueOf(this.groupId), this.title, this.mIcon, this.mIntent);
        }

        public boolean equals(Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof MenuItemRepr)) {
                return false;
            }
            MenuItemRepr other = (MenuItemRepr) o;
            return this.itemId == other.itemId && this.groupId == other.groupId && TextUtils.equals(this.title, other.title) && Objects.equals(this.mIcon, other.mIcon) && Objects.equals(this.mIntent, other.mIntent);
        }

        public static boolean reprEquals(Collection<MenuItem> menuItems1, Collection<MenuItem> menuItems2) {
            if (menuItems1.size() != menuItems2.size()) {
                return false;
            }
            Iterator<MenuItem> menuItems2Iter = menuItems2.iterator();
            for (MenuItem menuItem1 : menuItems1) {
                MenuItem menuItem2 = menuItems2Iter.next();
                if (!of(menuItem1).equals(of(menuItem2))) {
                    return false;
                }
            }
            return true;
        }
    }
}
