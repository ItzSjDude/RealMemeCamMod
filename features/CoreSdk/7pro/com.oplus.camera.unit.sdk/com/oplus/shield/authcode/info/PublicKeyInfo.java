package com.oplus.shield.authcode.info;
/* loaded from: classes.dex */
public class PublicKeyInfo {
    private String mPublicKey;
    private String mStatus;

    public PublicKeyInfo() {
    }

    public PublicKeyInfo(String str, String str2) {
        this.mPublicKey = str;
        this.mStatus = str2;
    }

    public String getPublicKey() {
        return this.mPublicKey;
    }

    public void setPublicKey(String str) {
        this.mPublicKey = str;
    }

    public String getStatus() {
        return this.mStatus;
    }

    public void setStatus(String str) {
        this.mStatus = str;
    }
}
