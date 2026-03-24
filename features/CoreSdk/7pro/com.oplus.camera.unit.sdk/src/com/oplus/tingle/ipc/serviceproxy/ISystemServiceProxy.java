package com.oplus.tingle.ipc.serviceproxy;

import android.content.Context;
/* loaded from: classes.dex */
public interface ISystemServiceProxy {
    boolean canHandle(String str);

    void cleanSystemService(Context context);

    Object getSystemService(Context context);

    void resetBinderOrigin(Context context);
}
