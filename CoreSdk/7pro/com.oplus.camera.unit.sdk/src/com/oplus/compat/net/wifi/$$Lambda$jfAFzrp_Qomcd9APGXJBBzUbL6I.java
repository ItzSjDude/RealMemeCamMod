package com.oplus.compat.net.wifi;

import com.oplus.compat.net.wifi.WifiManagerNative;
import java.util.function.Consumer;
/* compiled from: lambda */
/* renamed from: com.oplus.compat.net.wifi.-$$Lambda$jfAFzrp_Qomcd9APGXJBBzUbL6I  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$jfAFzrp_Qomcd9APGXJBBzUbL6I implements Consumer {
    private final /* synthetic */ WifiManagerNative.ActionListenerNative f$0;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f$0.onFailure(((Integer) obj).intValue());
    }
}
