package com.oplus.shield.authcode.info;

import android.text.TextUtils;
import com.oplus.shield.Constants;
import com.oplus.shield.authcode.PermissionTable;
import com.oplus.shield.utils.PLog;
import com.oplus.shield.utils.SystemUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class AuthResult {
    private final String mAuthCode;
    private final String mPackageName;
    private Map<String, PermissionTable> mPermissionTables;
    private final byte[] mPermitBits;
    private final int mResultCode;
    private String mSigSHA256;
    private long mUpdateTime;

    public AuthResult(String str, int i, byte[] bArr, String str2) {
        this.mPackageName = str;
        this.mResultCode = i;
        this.mPermitBits = bArr;
        this.mAuthCode = str2;
    }

    public String getAuthCode() {
        return this.mAuthCode;
    }

    public int getResultCode() {
        return this.mResultCode;
    }

    public void setUpdateTime() {
        this.mUpdateTime = System.currentTimeMillis();
    }

    public void setSigSHA256(String str) {
        this.mSigSHA256 = str;
    }

    public String getSigSHA256() {
        return this.mSigSHA256;
    }

    public boolean isExpired() {
        return System.currentTimeMillis() - this.mUpdateTime > Constants.CACHE_UPDATE_TIME;
    }

    public void initPermissionTable() {
        this.mPermissionTables = new ConcurrentHashMap();
        for (String str : SystemUtils.getSplitString(new String(this.mPermitBits), Constants.SEMICOLON_REGEX)) {
            int indexOf = str.indexOf(",");
            if (indexOf != -1) {
                String substring = str.substring(0, indexOf);
                String substring2 = str.substring(indexOf + 1);
                if (TextUtils.equals(substring, "epona") || TextUtils.equals(substring, "tingle")) {
                    this.mPermissionTables.put(substring, new PermissionTable(substring2));
                    PLog.d("Package : " + this.mPackageName + " Permission : type [" + substring + "] -" + SystemUtils.getSplitString(substring2, ","));
                }
            }
        }
    }

    public boolean checkPermission(String str, String str2) {
        PermissionTable permissionTable = this.mPermissionTables.get(str);
        if (permissionTable != null) {
            return permissionTable.hasPermission(str2);
        }
        return false;
    }
}
