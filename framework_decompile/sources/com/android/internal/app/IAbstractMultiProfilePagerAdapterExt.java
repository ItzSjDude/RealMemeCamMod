package com.android.internal.app;

import android.content.Context;
import android.view.View;

/* loaded from: classes4.dex */
public interface IAbstractMultiProfilePagerAdapterExt {
    default boolean isOriginUi() {
        return true;
    }

    default void showActiveEmptyViewState() {
    }

    default void showWorkProfileOffEmptyState(AbstractMultiProfilePagerAdapter profilePagerAdapter, ResolverListAdapter activeListAdapter, View.OnClickListener listener) {
        profilePagerAdapter.showWorkProfileOffEmptyState(activeListAdapter, listener);
    }

    default void showNoPersonalToWorkIntentsEmptyState(AbstractMultiProfilePagerAdapter profilePagerAdapter, ResolverListAdapter activeListAdapter) {
        profilePagerAdapter.showNoPersonalToWorkIntentsEmptyState(activeListAdapter);
    }

    default void showNoWorkToPersonalIntentsEmptyState(AbstractMultiProfilePagerAdapter profilePagerAdapter, ResolverListAdapter activeListAdapter) {
        profilePagerAdapter.showNoWorkToPersonalIntentsEmptyState(activeListAdapter);
    }

    default void hookResetViewVisibilitiesForConsumerUserEmptyState(View emptyStateView) {
    }

    default void init(Context context) {
    }
}
