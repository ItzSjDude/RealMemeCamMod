package com.oplus.shield.authcode;

import com.oplus.shield.utils.SystemUtils;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class PermissionTable {
    private List<String> mPermission = new CopyOnWriteArrayList();

    public PermissionTable(String str) {
        this.mPermission.clear();
        this.mPermission.addAll(SystemUtils.getSplitString(str, ","));
    }

    public boolean hasPermission(String str) {
        if (this.mPermission.size() != 0) {
            return this.mPermission.contains(str);
        }
        return false;
    }
}
