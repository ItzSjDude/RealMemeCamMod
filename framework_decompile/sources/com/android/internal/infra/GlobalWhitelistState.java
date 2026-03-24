package com.android.internal.infra;

import android.content.ComponentName;
import android.util.ArraySet;
import android.util.SparseArray;
import java.io.PrintWriter;
import java.util.List;

/* loaded from: classes4.dex */
public class GlobalWhitelistState {
    protected final Object mGlobalWhitelistStateLock = new Object();
    protected SparseArray<WhitelistHelper> mWhitelisterHelpers;

    public void setWhitelist(int userId, List<String> packageNames, List<ComponentName> components) {
        synchronized (this.mGlobalWhitelistStateLock) {
            if (this.mWhitelisterHelpers == null) {
                this.mWhitelisterHelpers = new SparseArray<>(1);
            }
            WhitelistHelper helper = this.mWhitelisterHelpers.get(userId);
            if (helper == null) {
                helper = new WhitelistHelper();
                this.mWhitelisterHelpers.put(userId, helper);
            }
            helper.setWhitelist(packageNames, components);
        }
    }

    public boolean isWhitelisted(int userId, String packageName) {
        synchronized (this.mGlobalWhitelistStateLock) {
            SparseArray<WhitelistHelper> sparseArray = this.mWhitelisterHelpers;
            boolean zIsWhitelisted = false;
            if (sparseArray == null) {
                return false;
            }
            WhitelistHelper helper = sparseArray.get(userId);
            if (helper != null) {
                zIsWhitelisted = helper.isWhitelisted(packageName);
            }
            return zIsWhitelisted;
        }
    }

    public boolean isWhitelisted(int userId, ComponentName componentName) {
        synchronized (this.mGlobalWhitelistStateLock) {
            SparseArray<WhitelistHelper> sparseArray = this.mWhitelisterHelpers;
            boolean zIsWhitelisted = false;
            if (sparseArray == null) {
                return false;
            }
            WhitelistHelper helper = sparseArray.get(userId);
            if (helper != null) {
                zIsWhitelisted = helper.isWhitelisted(componentName);
            }
            return zIsWhitelisted;
        }
    }

    public ArraySet<ComponentName> getWhitelistedComponents(int userId, String packageName) {
        synchronized (this.mGlobalWhitelistStateLock) {
            SparseArray<WhitelistHelper> sparseArray = this.mWhitelisterHelpers;
            ArraySet<ComponentName> whitelistedComponents = null;
            if (sparseArray == null) {
                return null;
            }
            WhitelistHelper helper = sparseArray.get(userId);
            if (helper != null) {
                whitelistedComponents = helper.getWhitelistedComponents(packageName);
            }
            return whitelistedComponents;
        }
    }

    public ArraySet<String> getWhitelistedPackages(int userId) {
        synchronized (this.mGlobalWhitelistStateLock) {
            SparseArray<WhitelistHelper> sparseArray = this.mWhitelisterHelpers;
            ArraySet<String> whitelistedPackages = null;
            if (sparseArray == null) {
                return null;
            }
            WhitelistHelper helper = sparseArray.get(userId);
            if (helper != null) {
                whitelistedPackages = helper.getWhitelistedPackages();
            }
            return whitelistedPackages;
        }
    }

    public void resetWhitelist(int userId) {
        synchronized (this.mGlobalWhitelistStateLock) {
            SparseArray<WhitelistHelper> sparseArray = this.mWhitelisterHelpers;
            if (sparseArray == null) {
                return;
            }
            sparseArray.remove(userId);
            if (this.mWhitelisterHelpers.size() == 0) {
                this.mWhitelisterHelpers = null;
            }
        }
    }

    public void dump(String prefix, PrintWriter pw) {
        pw.print(prefix);
        pw.print("State: ");
        synchronized (this.mGlobalWhitelistStateLock) {
            SparseArray<WhitelistHelper> sparseArray = this.mWhitelisterHelpers;
            if (sparseArray == null) {
                pw.println("empty");
                return;
            }
            pw.print(sparseArray.size());
            pw.println(" services");
            String prefix2 = prefix + "  ";
            for (int i = 0; i < this.mWhitelisterHelpers.size(); i++) {
                int userId = this.mWhitelisterHelpers.keyAt(i);
                WhitelistHelper helper = this.mWhitelisterHelpers.valueAt(i);
                helper.dump(prefix2, "Whitelist for userId " + userId, pw);
            }
        }
    }
}
