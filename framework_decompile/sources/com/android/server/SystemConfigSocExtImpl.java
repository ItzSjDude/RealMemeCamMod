package com.android.server;

/* loaded from: classes4.dex */
public class SystemConfigSocExtImpl implements ISystemConfigSocExt {
    public SystemConfigSocExtImpl(Object service) {
    }

    @Override // com.android.server.ISystemConfigSocExt
    public boolean shouldAppendPermGid(int gid) {
        return true;
    }
}
