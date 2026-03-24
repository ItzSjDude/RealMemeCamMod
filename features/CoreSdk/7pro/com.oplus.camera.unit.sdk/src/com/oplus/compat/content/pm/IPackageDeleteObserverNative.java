package com.oplus.compat.content.pm;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
/* loaded from: classes.dex */
public interface IPackageDeleteObserverNative {
    @Grey
    @RequiresApi(api = 21)
    void packageDeleted(String str, int i);
}
