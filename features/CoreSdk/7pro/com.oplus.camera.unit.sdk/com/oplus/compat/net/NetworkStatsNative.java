package com.oplus.compat.net;

import android.net.NetworkStats;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
/* loaded from: classes.dex */
public class NetworkStatsNative {
    private NetworkStats mNetworkStats;
    private Object mNetworkStatsWrapper;

    @OplusCompatibleMethod
    private static Object getEntryQCompat(Object obj, int i, Object obj2) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getRxBytesQCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getTotalBytesQCompat(Object obj) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getTxBytesQCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object sizeQCompat(Object obj) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NetworkStatsNative(Object obj) {
        this.mNetworkStatsWrapper = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NetworkStatsNative(NetworkStats networkStats) {
        this.mNetworkStats = networkStats;
    }

    @Grey
    @RequiresApi(api = 28)
    public long getTotalBytes() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return this.mNetworkStats.getTotalBytes();
        }
        if (VersionUtils.isQ()) {
            return ((Long) getTotalBytesQCompat(this.mNetworkStatsWrapper)).longValue();
        }
        if (VersionUtils.isP()) {
            return this.mNetworkStats.getTotalBytes();
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 28)
    public int size() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return this.mNetworkStats.size();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) sizeQCompat(this.mNetworkStatsWrapper)).intValue();
        }
        if (VersionUtils.isP()) {
            return this.mNetworkStats.size();
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 28)
    public EntryNative getValues(int i, EntryNative entryNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return new EntryNative(this.mNetworkStats.getValues(i, entryNative == null ? null : entryNative.mEntry));
        } else if (VersionUtils.isQ()) {
            return new EntryNative(getEntryQCompat(this.mNetworkStatsWrapper, i, entryNative == null ? null : entryNative.mEntryWrapper));
        } else if (VersionUtils.isP()) {
            return new EntryNative(this.mNetworkStats.getValues(i, entryNative == null ? null : entryNative.mEntry));
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    /* loaded from: classes.dex */
    public static class EntryNative {
        private NetworkStats.Entry mEntry;
        private Object mEntryWrapper;

        private EntryNative(Object obj) {
            this.mEntryWrapper = obj;
        }

        private EntryNative(NetworkStats.Entry entry) {
            this.mEntry = entry;
        }

        @Grey
        @RequiresApi(api = 28)
        public long getRxBytes() throws UnSupportedApiVersionException {
            if (VersionUtils.isR()) {
                return this.mEntry.rxBytes;
            }
            if (VersionUtils.isQ()) {
                return ((Long) NetworkStatsNative.getRxBytesQCompat(this.mEntryWrapper)).longValue();
            }
            if (VersionUtils.isP()) {
                return this.mEntry.rxBytes;
            }
            throw new UnSupportedApiVersionException();
        }

        @Grey
        @RequiresApi(api = 28)
        public long getTxBytes() throws UnSupportedApiVersionException {
            if (VersionUtils.isR()) {
                return this.mEntry.txBytes;
            }
            if (VersionUtils.isQ()) {
                return ((Long) NetworkStatsNative.getTxBytesQCompat(this.mEntryWrapper)).longValue();
            }
            if (VersionUtils.isP()) {
                return this.mEntry.txBytes;
            }
            throw new UnSupportedApiVersionException();
        }
    }
}
