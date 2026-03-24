package com.android.internal.app.chooser;

import com.android.internal.app.IResolverActivityExt;

/* loaded from: classes4.dex */
public interface ISelectableTargetInfoExt {
    default boolean shouldPrepareIntentForCrossProfileLaunch(IResolverActivityExt resolverActivityExt) {
        return true;
    }
}
