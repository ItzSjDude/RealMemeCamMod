package com.android.internal.content.om;

import android.content.pm.PackagePartitions;
import android.os.FileUtils;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.content.om.OverlayScanner;
import com.android.internal.util.Preconditions;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes4.dex */
final class OverlayConfigParser {
    private static final String CONFIG_DEFAULT_FILENAME = "config/config.xml";
    private static final String CONFIG_DIRECTORY = "config";
    static final boolean DEFAULT_ENABLED_STATE = false;
    static final boolean DEFAULT_MUTABILITY = true;
    private static final int MAXIMUM_MERGE_DEPTH = 5;

    OverlayConfigParser() {
    }

    public static class ParsedConfiguration {
        public final boolean enabled;
        public final boolean mutable;
        public final String packageName;
        public final OverlayScanner.ParsedOverlayInfo parsedInfo;
        public final String policy;

        ParsedConfiguration(String packageName, boolean enabled, boolean mutable, String policy, OverlayScanner.ParsedOverlayInfo parsedInfo) {
            this.packageName = packageName;
            this.enabled = enabled;
            this.mutable = mutable;
            this.policy = policy;
            this.parsedInfo = parsedInfo;
        }

        public String toString() {
            return getClass().getSimpleName() + String.format("{packageName=%s, enabled=%s, mutable=%s, policy=%s, parsedInfo=%s}", this.packageName, Boolean.valueOf(this.enabled), Boolean.valueOf(this.mutable), this.policy, this.parsedInfo);
        }
    }

    static class OverlayPartition extends PackagePartitions.SystemPartition {
        static final String POLICY_ODM = "odm";
        static final String POLICY_OEM = "oem";
        static final String POLICY_PRODUCT = "product";
        static final String POLICY_PUBLIC = "public";
        static final String POLICY_SYSTEM = "system";
        static final String POLICY_VENDOR = "vendor";
        public final String policy;

        OverlayPartition(PackagePartitions.SystemPartition partition) {
            super(partition);
            this.policy = policyForPartition(partition);
        }

        OverlayPartition(File folder, PackagePartitions.SystemPartition original) {
            super(folder, original);
            this.policy = policyForPartition(original);
        }

        private static String policyForPartition(PackagePartitions.SystemPartition partition) {
            switch (partition.type) {
                case 0:
                case 5:
                    return "system";
                case 1:
                    return "vendor";
                case 2:
                    return "odm";
                case 3:
                    return "oem";
                case 4:
                    return "product";
                default:
                    throw new IllegalStateException("Unable to determine policy for " + partition.getFolder());
            }
        }
    }

    private static class ParsingContext {
        private final ArraySet<String> mConfiguredOverlays;
        private boolean mFoundMutableOverlay;
        private int mMergeDepth;
        private final ArrayList<ParsedConfiguration> mOrderedConfigurations;
        private final OverlayPartition mPartition;

        private ParsingContext(OverlayPartition partition) {
            this.mOrderedConfigurations = new ArrayList<>();
            this.mConfiguredOverlays = new ArraySet<>();
            this.mPartition = partition;
        }
    }

    static ArrayList<ParsedConfiguration> getConfigurations(OverlayPartition partition, OverlayScanner scanner, Map<String, OverlayScanner.ParsedOverlayInfo> packageManagerOverlayInfos, List<String> activeApexes) {
        if (scanner != null) {
            if (partition.getOverlayFolder() != null) {
                scanner.scanDir(partition.getOverlayFolder());
            }
            for (String apex : activeApexes) {
                scanner.scanDir(new File("/apex/" + apex + "/overlay/"));
            }
        }
        if (partition.getOverlayFolder() == null) {
            return null;
        }
        File configFile = new File(partition.getOverlayFolder(), CONFIG_DEFAULT_FILENAME);
        if (!configFile.exists()) {
            return null;
        }
        ParsingContext parsingContext = new ParsingContext(partition);
        readConfigFile(configFile, scanner, packageManagerOverlayInfos, parsingContext);
        return parsingContext.mOrderedConfigurations;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void readConfigFile(java.io.File r9, com.android.internal.content.om.OverlayScanner r10, java.util.Map<java.lang.String, com.android.internal.content.om.OverlayScanner.ParsedOverlayInfo> r11, com.android.internal.content.om.OverlayConfigParser.ParsingContext r12) {
        /*
            java.lang.String r0 = "OverlayConfig"
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.io.FileNotFoundException -> L79
            r1.<init>(r9)     // Catch: java.io.FileNotFoundException -> L79
            org.xmlpull.v1.XmlPullParser r2 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            r2.setInput(r1)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            java.lang.String r3 = "config"
            com.android.internal.util.XmlUtils.beginDocument(r2, r3)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            int r3 = r2.getDepth()     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
        L18:
            boolean r4 = com.android.internal.util.XmlUtils.nextElementWithin(r2, r3)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            if (r4 == 0) goto L66
            java.lang.String r4 = r2.getName()     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            r5 = -1
            int r6 = r4.hashCode()     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            r7 = 0
            r8 = 1
            switch(r6) {
                case -1091287984: goto L38;
                case 103785528: goto L2d;
                default: goto L2c;
            }     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
        L2c:
            goto L42
        L2d:
            java.lang.String r6 = "merge"
            boolean r6 = r4.equals(r6)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            if (r6 == 0) goto L2c
            r5 = r7
            goto L42
        L38:
            java.lang.String r6 = "overlay"
            boolean r6 = r4.equals(r6)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            if (r6 == 0) goto L2c
            r5 = r8
        L42:
            switch(r5) {
                case 0: goto L4a;
                case 1: goto L46;
                default: goto L45;
            }     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
        L45:
            goto L4e
        L46:
            parseOverlay(r9, r2, r10, r11, r12)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            goto L65
        L4a:
            parseMerge(r9, r2, r10, r11, r12)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            goto L65
        L4e:
            java.lang.String r5 = "Tag %s is unknown in %s at %s"
            r6 = 3
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            r6[r7] = r4     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            r6[r8] = r9     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            r7 = 2
            java.lang.String r8 = r2.getPositionDescription()     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            r6[r7] = r8     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            java.lang.String r5 = java.lang.String.format(r5, r6)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
            android.util.Log.w(r0, r5)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L69
        L65:
            goto L18
        L66:
            goto L70
        L67:
            r0 = move-exception
            goto L75
        L69:
            r2 = move-exception
            java.lang.String r3 = "Got exception parsing overlay configuration."
            android.util.Log.w(r0, r3, r2)     // Catch: java.lang.Throwable -> L67
        L70:
            libcore.io.IoUtils.closeQuietly(r1)
            return
        L75:
            libcore.io.IoUtils.closeQuietly(r1)
            throw r0
        L79:
            r1 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Couldn't find or open overlay configuration file "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r9)
            java.lang.String r2 = r2.toString()
            android.util.Log.w(r0, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.content.om.OverlayConfigParser.readConfigFile(java.io.File, com.android.internal.content.om.OverlayScanner, java.util.Map, com.android.internal.content.om.OverlayConfigParser$ParsingContext):void");
    }

    private static void parseMerge(File configFile, XmlPullParser parser, OverlayScanner scanner, Map<String, OverlayScanner.ParsedOverlayInfo> packageManagerOverlayInfos, ParsingContext parsingContext) throws IOException {
        String path = parser.getAttributeValue(null, "path");
        if (path == null) {
            throw new IllegalStateException(String.format("<merge> without path in %s at %s" + configFile, parser.getPositionDescription()));
        }
        if (path.startsWith("/")) {
            throw new IllegalStateException(String.format("Path %s must be relative to the directory containing overlay configurations  files in %s at %s ", path, configFile, parser.getPositionDescription()));
        }
        int i = parsingContext.mMergeDepth;
        parsingContext.mMergeDepth = i + 1;
        if (i == 5) {
            throw new IllegalStateException(String.format("Maximum <merge> depth exceeded in %s at %s", configFile, parser.getPositionDescription()));
        }
        try {
            File configDirectory = new File(parsingContext.mPartition.getOverlayFolder(), CONFIG_DIRECTORY).getCanonicalFile();
            File includedConfigFile = new File(configDirectory, path).getCanonicalFile();
            if (!includedConfigFile.exists()) {
                throw new IllegalStateException(String.format("Merged configuration file %s does not exist in %s at %s", path, configFile, parser.getPositionDescription()));
            }
            if (!FileUtils.contains(configDirectory, includedConfigFile)) {
                throw new IllegalStateException(String.format("Merged file %s outside of configuration directory in %s at %s", includedConfigFile.getAbsolutePath(), includedConfigFile, parser.getPositionDescription()));
            }
            readConfigFile(includedConfigFile, scanner, packageManagerOverlayInfos, parsingContext);
            parsingContext.mMergeDepth--;
        } catch (IOException e) {
            throw new IllegalStateException(String.format("Couldn't find or open merged configuration file %s in %s at %s", path, configFile, parser.getPositionDescription()), e);
        }
    }

    private static void parseOverlay(File configFile, XmlPullParser parser, OverlayScanner scanner, Map<String, OverlayScanner.ParsedOverlayInfo> packageManagerOverlayInfos, ParsingContext parsingContext) {
        OverlayScanner.ParsedOverlayInfo info;
        boolean isEnabled;
        boolean isMutable;
        Preconditions.checkArgument((scanner == null) != (packageManagerOverlayInfos == null), "scanner and packageManagerOverlayInfos cannot be both null or both non-null");
        String packageName = parser.getAttributeValue(null, "package");
        if (packageName == null) {
            throw new IllegalStateException(String.format("\"<overlay> without package in %s at %s", configFile, parser.getPositionDescription()));
        }
        if (scanner != null) {
            OverlayScanner.ParsedOverlayInfo info2 = scanner.getParsedInfo(packageName);
            if (info2 == null && scanner.isExcludedOverlayPackage(packageName, parsingContext.mPartition)) {
                Log.d("OverlayConfig", "overlay " + packageName + " in partition " + parsingContext.mPartition.getOverlayFolder() + " is ignored.");
                return;
            } else {
                if (info2 == null || !parsingContext.mPartition.containsOverlay(info2.path)) {
                    throw new IllegalStateException(String.format("overlay %s not present in partition %s in %s at %s", packageName, parsingContext.mPartition.getOverlayFolder(), configFile, parser.getPositionDescription()));
                }
                info = info2;
            }
        } else if (packageManagerOverlayInfos.get(packageName) != null) {
            info = null;
        } else {
            Log.d("OverlayConfig", "overlay " + packageName + " in partition " + parsingContext.mPartition.getOverlayFolder() + " is ignored.");
            return;
        }
        if (!parsingContext.mConfiguredOverlays.contains(packageName)) {
            String enabled = parser.getAttributeValue(null, "enabled");
            if (enabled == null) {
                isEnabled = false;
            } else {
                boolean isEnabled2 = !"false".equals(enabled);
                isEnabled = isEnabled2;
            }
            String mutable = parser.getAttributeValue(null, "mutable");
            if (mutable == null) {
                isMutable = true;
            } else {
                boolean isMutable2 = !"false".equals(mutable);
                if (!isMutable2 && parsingContext.mFoundMutableOverlay) {
                    throw new IllegalStateException(String.format("immutable overlays must precede mutable overlays: found in %s at %s", configFile, parser.getPositionDescription()));
                }
                isMutable = isMutable2;
            }
            if (isMutable) {
                parsingContext.mFoundMutableOverlay = true;
            } else if (!isEnabled) {
                Log.w("OverlayConfig", "found default-disabled immutable overlay " + packageName);
            }
            ParsedConfiguration Config = new ParsedConfiguration(packageName, isEnabled, isMutable, parsingContext.mPartition.policy, info);
            parsingContext.mConfiguredOverlays.add(packageName);
            parsingContext.mOrderedConfigurations.add(Config);
            return;
        }
        throw new IllegalStateException(String.format("overlay %s configured multiple times in a single partition in %s at %s", packageName, configFile, parser.getPositionDescription()));
    }
}
