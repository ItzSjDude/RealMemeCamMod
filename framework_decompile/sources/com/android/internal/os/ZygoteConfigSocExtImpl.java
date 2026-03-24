package com.android.internal.os;

/* loaded from: classes4.dex */
public class ZygoteConfigSocExtImpl implements IZygoteConfigSocExt {
    private static volatile ZygoteConfigSocExtImpl sInstance;

    public ZygoteConfigSocExtImpl(Object base) {
    }

    public static ZygoteConfigSocExtImpl getInstance(Object base) {
        if (sInstance == null) {
            synchronized (ZygoteConfigSocExtImpl.class) {
                if (sInstance == null) {
                    sInstance = new ZygoteConfigSocExtImpl(base);
                }
            }
        }
        return sInstance;
    }
}
