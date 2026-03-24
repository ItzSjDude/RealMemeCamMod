package com.oplus.compat.content.pm;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
/* loaded from: classes.dex */
public interface IPackageDataObserverNative {
    @Grey
    @RequiresApi(api = 22)
    void onRemoveCompleted(String str, boolean z);
}
