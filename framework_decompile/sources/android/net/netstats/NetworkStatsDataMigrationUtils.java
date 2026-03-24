package android.net.netstats;

import android.annotation.SystemApi;
import android.content.Context;
import android.media.MediaMetrics;
import android.net.NetworkIdentity;
import android.net.NetworkStatsCollection;
import android.net.NetworkStatsHistory;
import android.os.Environment;
import android.util.AtomicFile;
import com.android.internal.util.FastDataInput;
import java.io.BufferedInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import libcore.io.IoUtils;

@SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
/* loaded from: classes2.dex */
public class NetworkStatsDataMigrationUtils {
    private static final int BUFFER_SIZE = 8192;
    private static final int FILE_MAGIC = 1095648596;
    public static final String PREFIX_UID = "uid";
    public static final String PREFIX_UID_TAG = "uid_tag";
    public static final String PREFIX_XT = "xt";
    private static final HashMap<String, String> sPrefixLegacyFileNameMap = new HashMap<String, String>() { // from class: android.net.netstats.NetworkStatsDataMigrationUtils.1
        {
            put(NetworkStatsDataMigrationUtils.PREFIX_XT, "netstats_xt.bin");
            put("uid", "netstats_uid.bin");
            put(NetworkStatsDataMigrationUtils.PREFIX_UID_TAG, "netstats_uid.bin");
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    public @interface Prefix {
    }

    private static class CollectionVersion {
        static final int VERSION_NETWORK_INIT = 1;
        static final int VERSION_UID_INIT = 1;
        static final int VERSION_UID_WITH_IDENT = 2;
        static final int VERSION_UID_WITH_SET = 4;
        static final int VERSION_UID_WITH_TAG = 3;
        static final int VERSION_UNIFIED_INIT = 16;

        private CollectionVersion() {
        }
    }

    private static class HistoryVersion {
        static final int VERSION_ADD_ACTIVE = 3;
        static final int VERSION_ADD_PACKETS = 2;
        static final int VERSION_INIT = 1;

        private HistoryVersion() {
        }
    }

    private static class IdentitySetVersion {
        static final int VERSION_ADD_DEFAULT_NETWORK = 5;
        static final int VERSION_ADD_METERED = 4;
        static final int VERSION_ADD_NETWORK_ID = 3;
        static final int VERSION_ADD_OEM_MANAGED_NETWORK = 6;
        static final int VERSION_ADD_ROAMING = 2;
        static final int VERSION_ADD_SUB_ID = 7;
        static final int VERSION_INIT = 1;

        private IdentitySetVersion() {
        }
    }

    private NetworkStatsDataMigrationUtils() {
    }

    private static File getPlatformSystemDir() {
        return new File(Environment.getDataDirectory(), "system");
    }

    private static File getPlatformBaseDir() {
        File baseDir = new File(getPlatformSystemDir(), Context.NETWORK_STATS_SERVICE);
        baseDir.mkdirs();
        return baseDir;
    }

    private static File getLegacyBinFileForPrefix(String prefix) {
        return new File(getPlatformSystemDir(), sPrefixLegacyFileNameMap.get(prefix));
    }

    private static ArrayList<File> getPlatformFileListForPrefix(String prefix) {
        String[] files;
        ArrayList<File> list = new ArrayList<>();
        File platformFiles = getPlatformBaseDir();
        if (!platformFiles.exists() || (files = platformFiles.list()) == null) {
            return list;
        }
        Arrays.sort(files);
        for (String name : files) {
            if (name.startsWith(prefix + MediaMetrics.SEPARATOR)) {
                list.add(new File(platformFiles, name));
            }
        }
        return list;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.net.NetworkStatsCollection readPlatformCollection(java.lang.String r5, long r6) throws java.io.IOException {
        /*
            android.net.NetworkStatsCollection$Builder r0 = new android.net.NetworkStatsCollection$Builder
            r0.<init>(r6)
            int r1 = r5.hashCode()
            java.lang.String r2 = "uid_tag"
            switch(r1) {
                case -434894037: goto L19;
                case 115792: goto Lf;
                default: goto Le;
            }
        Le:
            goto L21
        Lf:
            java.lang.String r1 = "uid"
            boolean r1 = r5.equals(r1)
            if (r1 == 0) goto Le
            r1 = 0
            goto L22
        L19:
            boolean r1 = r5.equals(r2)
            if (r1 == 0) goto Le
            r1 = 1
            goto L22
        L21:
            r1 = -1
        L22:
            switch(r1) {
                case 0: goto L26;
                case 1: goto L26;
                default: goto L25;
            }
        L25:
            goto L37
        L26:
            java.io.File r1 = getLegacyBinFileForPrefix(r5)
            boolean r3 = r1.exists()
            if (r3 == 0) goto L37
            boolean r2 = r2.equals(r5)
            readLegacyUid(r0, r1, r2)
        L37:
            java.util.ArrayList r1 = getPlatformFileListForPrefix(r5)
            java.util.Iterator r2 = r1.iterator()
        L3f:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L55
            java.lang.Object r3 = r2.next()
            java.io.File r3 = (java.io.File) r3
            boolean r4 = r3.exists()
            if (r4 == 0) goto L54
            readPlatformCollection(r0, r3)
        L54:
            goto L3f
        L55:
            android.net.NetworkStatsCollection r2 = r0.build()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: android.net.netstats.NetworkStatsDataMigrationUtils.readPlatformCollection(java.lang.String, long):android.net.NetworkStatsCollection");
    }

    private static void readPlatformCollection(NetworkStatsCollection.Builder builder, File file) throws IOException {
        FileInputStream is = new FileInputStream(file);
        FastDataInput dataIn = new FastDataInput(is, 8192);
        try {
            readPlatformCollection(builder, dataIn);
        } finally {
            IoUtils.closeQuietly(dataIn);
        }
    }

    public static void readPlatformCollection(NetworkStatsCollection.Builder builder, DataInput in) throws IOException {
        int magic = in.readInt();
        if (magic != FILE_MAGIC) {
            throw new ProtocolException("unexpected magic: " + magic);
        }
        int version = in.readInt();
        switch (version) {
            case 16:
                int identSize = in.readInt();
                for (int i = 0; i < identSize; i++) {
                    Set<NetworkIdentity> ident = readPlatformNetworkIdentitySet(in);
                    int size = in.readInt();
                    for (int j = 0; j < size; j++) {
                        int uid = in.readInt();
                        int set = in.readInt();
                        int tag = in.readInt();
                        NetworkStatsCollection.Key key = new NetworkStatsCollection.Key(ident, uid, set, tag);
                        NetworkStatsHistory history = readPlatformHistory(in);
                        builder.addEntry(key, history);
                    }
                }
                return;
            default:
                throw new ProtocolException("unexpected version: " + version);
        }
    }

    private static long[] readFullLongArray(DataInput in) throws IOException {
        int size = in.readInt();
        if (size < 0) {
            throw new ProtocolException("negative array size");
        }
        long[] values = new long[size];
        for (int i = 0; i < values.length; i++) {
            values[i] = in.readLong();
        }
        return values;
    }

    private static long[] readVarLongArray(DataInput in) throws IOException {
        int size = in.readInt();
        if (size == -1) {
            return null;
        }
        if (size < 0) {
            throw new ProtocolException("negative array size");
        }
        long[] values = new long[size];
        for (int i = 0; i < values.length; i++) {
            values[i] = readVarLong(in);
        }
        return values;
    }

    private static long readVarLong(DataInput in) throws IOException {
        long result = 0;
        for (int shift = 0; shift < 64; shift += 7) {
            byte b = in.readByte();
            result |= (b & 127) << shift;
            if ((b & 128) == 0) {
                return result;
            }
        }
        throw new ProtocolException("malformed var long");
    }

    private static String readOptionalString(DataInput in) throws IOException {
        if (in.readByte() != 0) {
            return in.readUTF();
        }
        return null;
    }

    private static NetworkStatsHistory readPlatformHistory(DataInput in) throws IOException {
        long bucketDuration;
        long[] bucketStart;
        long[] rxBytes;
        long[] rxPackets;
        long[] txBytes;
        long[] txPackets;
        long[] operations;
        int bucketCount;
        long[] varLongArray;
        long[] activeTime = new long[0];
        int version = in.readInt();
        switch (version) {
            case 1:
                bucketDuration = in.readLong();
                bucketStart = readFullLongArray(in);
                rxBytes = readFullLongArray(in);
                rxPackets = new long[bucketStart.length];
                txBytes = readFullLongArray(in);
                txPackets = new long[bucketStart.length];
                operations = new long[bucketStart.length];
                bucketCount = bucketStart.length;
                break;
            case 2:
            case 3:
                bucketDuration = in.readLong();
                bucketStart = readVarLongArray(in);
                if (version >= 3) {
                    varLongArray = readVarLongArray(in);
                } else {
                    varLongArray = new long[bucketStart.length];
                }
                activeTime = varLongArray;
                rxBytes = readVarLongArray(in);
                rxPackets = readVarLongArray(in);
                txBytes = readVarLongArray(in);
                txPackets = readVarLongArray(in);
                operations = readVarLongArray(in);
                bucketCount = bucketStart.length;
                break;
            default:
                throw new ProtocolException("unexpected version: " + version);
        }
        NetworkStatsHistory.Builder historyBuilder = new NetworkStatsHistory.Builder(bucketDuration, bucketCount);
        for (int i = 0; i < bucketCount; i++) {
            NetworkStatsHistory.Entry entry = new NetworkStatsHistory.Entry(bucketStart[i], activeTime[i], rxBytes[i], rxPackets[i], txBytes[i], txPackets[i], operations[i]);
            historyBuilder.addEntry(entry);
        }
        return historyBuilder.build();
    }

    private static Set<NetworkIdentity> readPlatformNetworkIdentitySet(DataInput in) throws IOException {
        String networkId;
        boolean roaming;
        boolean defaultNetwork;
        int oemNetCapabilities;
        int subId;
        int version = in.readInt();
        int size = in.readInt();
        Set<NetworkIdentity> set = new HashSet<>();
        for (int i = 0; i < size; i++) {
            boolean metered = true;
            if (version <= 1) {
                in.readInt();
            }
            int type = in.readInt();
            int ratType = in.readInt();
            String subscriberId = readOptionalString(in);
            if (version >= 3) {
                networkId = readOptionalString(in);
            } else {
                networkId = null;
            }
            if (version >= 2) {
                roaming = in.readBoolean();
            } else {
                roaming = false;
            }
            if (version >= 4) {
                metered = in.readBoolean();
            } else if (type != 0) {
                metered = false;
            }
            if (version >= 5) {
                defaultNetwork = in.readBoolean();
            } else {
                defaultNetwork = true;
            }
            if (version >= 6) {
                oemNetCapabilities = in.readInt();
            } else {
                oemNetCapabilities = 0;
            }
            if (version >= 7) {
                subId = in.readInt();
            } else {
                subId = -1;
            }
            int collapsedLegacyType = getCollapsedLegacyType(type);
            NetworkIdentity.Builder builder = new NetworkIdentity.Builder().setType(collapsedLegacyType).setSubscriberId(subscriberId).setWifiNetworkKey(networkId).setRoaming(roaming).setMetered(metered).setDefaultNetwork(defaultNetwork).setOemManaged(oemNetCapabilities).setSubId(subId);
            if (type == 0 && ratType != -1) {
                builder.setRatType(ratType);
            }
            set.add(builder.build());
        }
        return set;
    }

    private static int getCollapsedLegacyType(int networkType) {
        switch (networkType) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
                return 0;
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
            case 13:
            default:
                return networkType;
        }
    }

    private static void readLegacyUid(NetworkStatsCollection.Builder builder, File uidFile, boolean onlyTaggedData) throws IOException {
        AtomicFile inputFile = new AtomicFile(uidFile);
        DataInputStream in = new DataInputStream(new BufferedInputStream(inputFile.openRead()));
        try {
            readLegacyUid(builder, in, onlyTaggedData);
        } finally {
            IoUtils.closeQuietly(in);
        }
    }

    public static void readLegacyUid(NetworkStatsCollection.Builder builder, DataInput in, boolean taggedData) throws IOException {
        int set;
        try {
            int magic = in.readInt();
            if (magic != FILE_MAGIC) {
                throw new ProtocolException("unexpected magic: " + magic);
            }
            int version = in.readInt();
            switch (version) {
                case 1:
                    break;
                case 2:
                    break;
                case 3:
                case 4:
                    int identSize = in.readInt();
                    for (int i = 0; i < identSize; i++) {
                        Set<NetworkIdentity> ident = readPlatformNetworkIdentitySet(in);
                        int size = in.readInt();
                        for (int j = 0; j < size; j++) {
                            int uid = in.readInt();
                            if (version >= 4) {
                                set = in.readInt();
                            } else {
                                set = 0;
                            }
                            int tag = in.readInt();
                            NetworkStatsCollection.Key key = new NetworkStatsCollection.Key(ident, uid, set, tag);
                            NetworkStatsHistory history = readPlatformHistory(in);
                            if ((tag == 0) != taggedData) {
                                builder.addEntry(key, history);
                            }
                        }
                    }
                    break;
                default:
                    throw new ProtocolException("unknown version: " + version);
            }
        } catch (FileNotFoundException | ProtocolException e) {
        }
    }
}
