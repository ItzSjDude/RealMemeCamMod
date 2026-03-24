package com.android.internal.app;

import com.android.internal.app.ResolverListAdapter;

/* loaded from: classes4.dex */
public interface IResolverListAdapterWrapper {
    default IResolverListAdapterExt getResolverListAdapterExt() {
        return null;
    }

    default ResolverListAdapter.ResolverListCommunicator getResolverListCommunicator() {
        return null;
    }
}
