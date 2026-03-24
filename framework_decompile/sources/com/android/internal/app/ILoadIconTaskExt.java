package com.android.internal.app;

import com.android.internal.app.ResolverListAdapter;
import com.android.internal.app.chooser.DisplayResolveInfo;
import java.util.List;

/* loaded from: classes4.dex */
public interface ILoadIconTaskExt {
    public static final ILoadIconTaskExt DEFAULT = new ILoadIconTaskExt() { // from class: com.android.internal.app.ILoadIconTaskExt.1
    };

    default List<ResolverListAdapter.ViewHolder> getHolderList() {
        return null;
    }

    default void hookonPostExecute(IResolverListAdapterExt resolverListAdapterExt, DisplayResolveInfo displayResolveInfo) {
    }

    default boolean hooksetViewHolder(IResolverListAdapterExt resolverListAdapterExt, DisplayResolveInfo displayResolveInfo, ResolverListAdapter.ViewHolder holder) {
        return false;
    }
}
