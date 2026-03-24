package com.android.internal.widget;

import android.view.View;
import android.widget.AbsListView;
import com.android.internal.widget.ResolverDrawerLayout;

/* loaded from: classes4.dex */
public interface IResolverDrawerLayoutExt {
    public static final IResolverDrawerLayoutExt DEFAULT = new IResolverDrawerLayoutExt() { // from class: com.android.internal.widget.IResolverDrawerLayoutExt.1
    };

    default boolean isOpShareUi() {
        return false;
    }

    default boolean isNestedScrollChildScrolled(boolean upToDown, float mCollapseOffset) {
        return false;
    }

    default boolean shouldHookOnTouchEventMove() {
        return false;
    }

    default void customOnTouchEventMove(float dy, AbsListView mNestedListChild, RecyclerView mNestedRecyclerChild, float mCollapseOffset) {
    }

    default boolean shouldHookOnTouchEventUpScrollBack() {
        return false;
    }

    default void customOnTouchEventUpScrollBack(float mCollapseOffset, int mCollapsibleHeight, int mUncollapsibleHeight) {
    }

    default boolean shouldHookOnTouchEventUpFling() {
        return false;
    }

    default void customOnTouchEventUpFling(float yvel, float mCollapseOffset, int mCollapsibleHeight, int mUncollapsibleHeight) {
    }

    default boolean shouldHookonNestedScroll() {
        return false;
    }

    default void customOnNestedScroll(float velocityY, int mCollapsibleHeight, int mUncollapsibleHeight) {
    }

    default void hookresetTouch() {
    }

    default void hooksmoothScrollTo(boolean mDismissOnScrollerFinished, ResolverDrawerLayout.OnDismissedListener mOnDismissedListener) {
    }

    default void hookonStartNestedScroll(View targetView) {
    }

    default boolean shouldHookonStopNestedScroll() {
        return false;
    }

    default void customOnStopNestedScroll(float mCollapseOffset, int mCollapsibleHeight, int mUncollapsibleHeight) {
    }
}
