package com.oplus.compat.content.pm;

import java.util.function.BiConsumer;
/* compiled from: lambda */
/* renamed from: com.oplus.compat.content.pm.-$$Lambda$dun2r02xgHg-uEDq4suUiVDO5LA  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$dun2r02xgHguEDq4suUiVDO5LA implements BiConsumer {
    private final /* synthetic */ IPackageDeleteObserverNative f$0;

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        this.f$0.packageDeleted((String) obj, ((Integer) obj2).intValue());
    }
}
