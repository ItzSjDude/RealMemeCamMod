package com.oplus.compat.content.pm;

import java.util.function.BiConsumer;
/* compiled from: lambda */
/* renamed from: com.oplus.compat.content.pm.-$$Lambda$swNKNoeLQNCK1VB-DgMt0Xnc3qM  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$swNKNoeLQNCK1VBDgMt0Xnc3qM implements BiConsumer {
    private final /* synthetic */ IPackageDataObserverNative f$0;

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        this.f$0.onRemoveCompleted((String) obj, ((Boolean) obj2).booleanValue());
    }
}
