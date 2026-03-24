package com.android.server;

import android.content.ComponentName;
import android.content.pm.FeatureInfo;
import android.internal.modules.utils.build.UnboundedSdkLevel;
import android.media.MediaMetrics;
import android.nfc.cardemulation.CardEmulation;
import android.os.Build;
import android.os.CarrierAssociatedAppEntry;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Process;
import android.os.SystemProperties;
import android.os.VintfRuntimeInfo;
import android.permission.PermissionManager;
import android.provider.DeviceConfig;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimingsTraceLog;
import android.util.Xml;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.XmlUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes4.dex */
public class SystemConfig {
    private static final int ALLOW_ALL = -1;
    private static final int ALLOW_APP_CONFIGS = 8;
    private static final int ALLOW_ASSOCIATIONS = 128;
    private static final int ALLOW_FEATURES = 1;
    private static final int ALLOW_HIDDENAPI_WHITELISTING = 64;
    private static final int ALLOW_IMPLICIT_BROADCASTS = 512;
    private static final int ALLOW_LIBS = 2;
    private static final int ALLOW_OEM_PERMISSIONS = 32;
    private static final int ALLOW_OVERRIDE_APP_RESTRICTIONS = 256;
    private static final int ALLOW_PERMISSIONS = 4;
    private static final int ALLOW_PRIVAPP_PERMISSIONS = 16;
    private static final int ALLOW_VENDOR_APEX = 1024;
    private static final String NO_RIL_PROPERTY = "ro.radio.noril";
    private static final String SKU_PROPERTY = "ro.boot.product.hardware.sku";
    static final String TAG = "SystemConfig";
    private static final String VENDOR_SKU_PROPERTY = "ro.boot.product.vendor.sku";
    static SystemConfig sInstance;
    private String mModulesInstallerPackageName;
    private String mOverlayConfigSignaturePackage;
    private static final ArrayMap<String, ArraySet<String>> EMPTY_PERMISSIONS = new ArrayMap<>();
    private static final ISystemConfigStaticWrapper STATIC_WRAPPER = new SystemConfigStaticWrapper();
    int[] mGlobalGids = EmptyArray.INT;
    final SparseArray<ArraySet<String>> mSystemPermissions = new SparseArray<>();
    final ArrayList<PermissionManager.SplitPermissionInfo> mSplitPermissions = new ArrayList<>();
    final ArrayMap<String, SharedLibraryEntry> mSharedLibraries = new ArrayMap<>();
    final ArrayMap<String, FeatureInfo> mAvailableFeatures = new ArrayMap<>();
    final ArraySet<String> mUnavailableFeatures = new ArraySet<>();
    final ArrayMap<String, PermissionEntry> mPermissions = new ArrayMap<>();
    final ArraySet<String> mAllowInPowerSaveExceptIdle = new ArraySet<>();
    final ArraySet<String> mAllowInPowerSave = new ArraySet<>();
    final ArraySet<String> mAllowInDataUsageSave = new ArraySet<>();
    final ArraySet<String> mAllowUnthrottledLocation = new ArraySet<>();
    final ArrayMap<String, ArraySet<String>> mAllowAdasSettings = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mAllowIgnoreLocationSettings = new ArrayMap<>();
    final ArraySet<String> mAllowImplicitBroadcasts = new ArraySet<>();
    final ArraySet<String> mBgRestrictionExemption = new ArraySet<>();
    final ArraySet<String> mLinkedApps = new ArraySet<>();
    final ArraySet<ComponentName> mDefaultVrComponents = new ArraySet<>();
    final ArraySet<ComponentName> mBackupTransportWhitelist = new ArraySet<>();
    final ArrayMap<String, ArrayMap<String, Boolean>> mPackageComponentEnabledState = new ArrayMap<>();
    final ArraySet<String> mHiddenApiPackageWhitelist = new ArraySet<>();
    final ArraySet<String> mDisabledUntilUsedPreinstalledCarrierApps = new ArraySet<>();
    final ArrayMap<String, List<CarrierAssociatedAppEntry>> mDisabledUntilUsedPreinstalledCarrierAssociatedApps = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mPrivAppPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mPrivAppDenyPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mVendorPrivAppPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mVendorPrivAppDenyPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mProductPrivAppPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mProductPrivAppDenyPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mSystemExtPrivAppPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mSystemExtPrivAppDenyPermissions = new ArrayMap<>();
    final ArrayMap<String, ArrayMap<String, ArraySet<String>>> mApexPrivAppPermissions = new ArrayMap<>();
    final ArrayMap<String, ArrayMap<String, ArraySet<String>>> mApexPrivAppDenyPermissions = new ArrayMap<>();
    final ArrayMap<String, ArrayMap<String, Boolean>> mOemPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mAllowedAssociations = new ArrayMap<>();
    private final ArraySet<String> mBugreportWhitelistedPackages = new ArraySet<>();
    private final ArraySet<String> mAppDataIsolationWhitelistedApps = new ArraySet<>();
    private ArrayMap<String, Set<String>> mPackageToUserTypeWhitelist = new ArrayMap<>();
    private ArrayMap<String, Set<String>> mPackageToUserTypeBlacklist = new ArrayMap<>();
    private final ArraySet<String> mRollbackWhitelistedPackages = new ArraySet<>();
    private final ArraySet<String> mWhitelistedStagedInstallers = new ArraySet<>();
    private final ArrayMap<String, String> mAllowedVendorApexes = new ArrayMap<>();
    private Map<String, Map<String, String>> mNamedActors = null;
    ISystemConfigExt mSystemConfigExt = (ISystemConfigExt) ExtLoader.type(ISystemConfigExt.class).base(this).create();
    ISystemConfigSocExt mSystemConfigSocExt = (ISystemConfigSocExt) ExtLoader.type(ISystemConfigSocExt.class).base(this).create();

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isAtLeastSdkLevel(String version) {
        try {
            return UnboundedSdkLevel.isAtLeast(version);
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    private static boolean isAtMostSdkLevel(String version) {
        try {
            return UnboundedSdkLevel.isAtMost(version);
        } catch (IllegalArgumentException e) {
            return true;
        }
    }

    public static final class SharedLibraryEntry {
        public final boolean canBeSafelyIgnored;
        public final String[] dependencies;
        public final String filename;
        public final boolean isNative;
        public final String name;
        public final String onBootclasspathBefore;
        public final String onBootclasspathSince;

        public SharedLibraryEntry(String name, String filename, String[] dependencies, boolean isNative) {
            this(name, filename, dependencies, null, null, isNative);
        }

        public SharedLibraryEntry(String name, String filename, String[] dependencies, String onBootclasspathSince, String onBootclasspathBefore) {
            this(name, filename, dependencies, onBootclasspathSince, onBootclasspathBefore, false);
        }

        SharedLibraryEntry(String name, String filename, String[] dependencies, String onBootclasspathSince, String onBootclasspathBefore, boolean isNative) {
            this.name = name;
            this.filename = filename;
            this.dependencies = dependencies;
            this.onBootclasspathSince = onBootclasspathSince;
            this.onBootclasspathBefore = onBootclasspathBefore;
            this.isNative = isNative;
            this.canBeSafelyIgnored = (onBootclasspathSince != null && SystemConfig.isAtLeastSdkLevel(onBootclasspathSince)) || !(onBootclasspathBefore == null || SystemConfig.isAtLeastSdkLevel(onBootclasspathBefore));
        }
    }

    public static final class PermissionEntry {
        public int[] gids;
        public final String name;
        public boolean perUser;

        PermissionEntry(String name, boolean perUser) {
            this.name = name;
            this.perUser = perUser;
        }
    }

    public static SystemConfig getInstance() {
        SystemConfig systemConfig;
        if (!isSystemProcess()) {
            Slog.wtf(TAG, "SystemConfig is being accessed by a process other than system_server.");
        }
        synchronized (SystemConfig.class) {
            if (sInstance == null) {
                sInstance = new SystemConfig();
            }
            systemConfig = sInstance;
        }
        return systemConfig;
    }

    public int[] getGlobalGids() {
        return this.mGlobalGids;
    }

    public SparseArray<ArraySet<String>> getSystemPermissions() {
        return this.mSystemPermissions;
    }

    public ArrayList<PermissionManager.SplitPermissionInfo> getSplitPermissions() {
        return this.mSplitPermissions;
    }

    public ArrayMap<String, SharedLibraryEntry> getSharedLibraries() {
        return this.mSharedLibraries;
    }

    public ArrayMap<String, FeatureInfo> getAvailableFeatures() {
        return this.mAvailableFeatures;
    }

    public ArrayMap<String, PermissionEntry> getPermissions() {
        return this.mPermissions;
    }

    public ArraySet<String> getAllowImplicitBroadcasts() {
        return this.mAllowImplicitBroadcasts;
    }

    public ArraySet<String> getAllowInPowerSaveExceptIdle() {
        return this.mAllowInPowerSaveExceptIdle;
    }

    public ArraySet<String> getAllowInPowerSave() {
        return this.mAllowInPowerSave;
    }

    public ArraySet<String> getAllowInDataUsageSave() {
        return this.mAllowInDataUsageSave;
    }

    public ArraySet<String> getAllowUnthrottledLocation() {
        return this.mAllowUnthrottledLocation;
    }

    public ArrayMap<String, ArraySet<String>> getAllowAdasLocationSettings() {
        return this.mAllowAdasSettings;
    }

    public ArrayMap<String, ArraySet<String>> getAllowIgnoreLocationSettings() {
        return this.mAllowIgnoreLocationSettings;
    }

    public ArraySet<String> getBgRestrictionExemption() {
        return this.mBgRestrictionExemption;
    }

    public ArraySet<String> getLinkedApps() {
        return this.mLinkedApps;
    }

    public ArraySet<String> getHiddenApiWhitelistedApps() {
        return this.mHiddenApiPackageWhitelist;
    }

    public ArraySet<ComponentName> getDefaultVrComponents() {
        return this.mDefaultVrComponents;
    }

    public ArraySet<ComponentName> getBackupTransportWhitelist() {
        return this.mBackupTransportWhitelist;
    }

    public ArrayMap<String, Boolean> getComponentsEnabledStates(String packageName) {
        return this.mPackageComponentEnabledState.get(packageName);
    }

    public ArraySet<String> getDisabledUntilUsedPreinstalledCarrierApps() {
        return this.mDisabledUntilUsedPreinstalledCarrierApps;
    }

    public ArrayMap<String, List<CarrierAssociatedAppEntry>> getDisabledUntilUsedPreinstalledCarrierAssociatedApps() {
        return this.mDisabledUntilUsedPreinstalledCarrierAssociatedApps;
    }

    public ArraySet<String> getPrivAppPermissions(String packageName) {
        return this.mPrivAppPermissions.get(packageName);
    }

    public ArraySet<String> getPrivAppDenyPermissions(String packageName) {
        return this.mPrivAppDenyPermissions.get(packageName);
    }

    public ArraySet<String> getApexPrivAppPermissions(String apexName, String apkPackageName) {
        return this.mApexPrivAppPermissions.getOrDefault(apexName, EMPTY_PERMISSIONS).get(apkPackageName);
    }

    public ArraySet<String> getApexPrivAppDenyPermissions(String apexName, String apkPackageName) {
        return this.mApexPrivAppDenyPermissions.getOrDefault(apexName, EMPTY_PERMISSIONS).get(apkPackageName);
    }

    public ArraySet<String> getVendorPrivAppPermissions(String packageName) {
        return this.mVendorPrivAppPermissions.get(packageName);
    }

    public ArraySet<String> getVendorPrivAppDenyPermissions(String packageName) {
        return this.mVendorPrivAppDenyPermissions.get(packageName);
    }

    public ArraySet<String> getProductPrivAppPermissions(String packageName) {
        return this.mProductPrivAppPermissions.get(packageName);
    }

    public ArraySet<String> getProductPrivAppDenyPermissions(String packageName) {
        return this.mProductPrivAppDenyPermissions.get(packageName);
    }

    public ArraySet<String> getSystemExtPrivAppPermissions(String packageName) {
        return this.mSystemExtPrivAppPermissions.get(packageName);
    }

    public ArraySet<String> getSystemExtPrivAppDenyPermissions(String packageName) {
        return this.mSystemExtPrivAppDenyPermissions.get(packageName);
    }

    public Map<String, Boolean> getOemPermissions(String packageName) {
        Map<String, Boolean> oemPermissions = this.mOemPermissions.get(packageName);
        if (oemPermissions != null) {
            return oemPermissions;
        }
        return Collections.emptyMap();
    }

    public ArrayMap<String, ArraySet<String>> getAllowedAssociations() {
        return this.mAllowedAssociations;
    }

    public ArraySet<String> getBugreportWhitelistedPackages() {
        return this.mBugreportWhitelistedPackages;
    }

    public Set<String> getRollbackWhitelistedPackages() {
        return this.mRollbackWhitelistedPackages;
    }

    public Set<String> getWhitelistedStagedInstallers() {
        return this.mWhitelistedStagedInstallers;
    }

    public Map<String, String> getAllowedVendorApexes() {
        return this.mAllowedVendorApexes;
    }

    public String getModulesInstallerPackageName() {
        return this.mModulesInstallerPackageName;
    }

    public ArraySet<String> getAppDataIsolationWhitelistedApps() {
        return this.mAppDataIsolationWhitelistedApps;
    }

    public ArrayMap<String, Set<String>> getAndClearPackageToUserTypeWhitelist() {
        ArrayMap<String, Set<String>> r = this.mPackageToUserTypeWhitelist;
        this.mPackageToUserTypeWhitelist = new ArrayMap<>(0);
        return r;
    }

    public ArrayMap<String, Set<String>> getAndClearPackageToUserTypeBlacklist() {
        ArrayMap<String, Set<String>> r = this.mPackageToUserTypeBlacklist;
        this.mPackageToUserTypeBlacklist = new ArrayMap<>(0);
        return r;
    }

    public Map<String, Map<String, String>> getNamedActors() {
        Map<String, Map<String, String>> map = this.mNamedActors;
        return map != null ? map : Collections.emptyMap();
    }

    public String getOverlayConfigSignaturePackage() {
        if (TextUtils.isEmpty(this.mOverlayConfigSignaturePackage)) {
            return null;
        }
        return this.mOverlayConfigSignaturePackage;
    }

    public SystemConfig(boolean readPermissions) throws Throwable {
        if (readPermissions) {
            Slog.w(TAG, "Constructing a test SystemConfig");
            readAllPermissions();
            this.mSystemConfigExt.readConfigInConstructor();
            return;
        }
        Slog.w(TAG, "Constructing an empty test SystemConfig");
    }

    SystemConfig() {
        TimingsTraceLog log = new TimingsTraceLog(TAG, 524288L);
        log.traceBegin("readAllPermissions");
        try {
            readAllPermissions();
            readPublicNativeLibrariesList();
            this.mSystemConfigExt.readConfigInConstructor();
        } finally {
            log.traceEnd();
        }
    }

    private void readAllPermissions() throws Throwable {
        int vendorPermissionFlag;
        boolean noRilSupport;
        XmlPullParser parser = Xml.newPullParser();
        readPermissions(parser, Environment.buildPath(Environment.getRootDirectory(), "etc", "sysconfig"), -1);
        readPermissions(parser, Environment.buildPath(Environment.getRootDirectory(), "etc", DeviceConfig.NAMESPACE_PERMISSIONS), -1);
        int vendorPermissionFlag2 = 1171;
        if (Build.VERSION.DEVICE_INITIAL_SDK_INT <= 27) {
            vendorPermissionFlag2 = 1171 | 12;
        }
        readPermissions(parser, Environment.buildPath(Environment.getVendorDirectory(), "etc", "sysconfig"), vendorPermissionFlag2);
        readPermissions(parser, Environment.buildPath(Environment.getVendorDirectory(), "etc", DeviceConfig.NAMESPACE_PERMISSIONS), vendorPermissionFlag2);
        String vendorSkuProperty = SystemProperties.get(VENDOR_SKU_PROPERTY, "");
        int i = 0;
        if (!vendorSkuProperty.isEmpty()) {
            String vendorSkuDir = "sku_" + vendorSkuProperty;
            readPermissions(parser, Environment.buildPath(Environment.getVendorDirectory(), "etc", "sysconfig", vendorSkuDir), vendorPermissionFlag2);
            readPermissions(parser, Environment.buildPath(Environment.getVendorDirectory(), "etc", DeviceConfig.NAMESPACE_PERMISSIONS, vendorSkuDir), vendorPermissionFlag2);
        }
        boolean noRilSupport2 = SystemProperties.getBoolean(NO_RIL_PROPERTY, false);
        if (noRilSupport2) {
            readPermissions(parser, Environment.buildPath(Environment.getVendorDirectory(), "etc", "sysconfig", "noRil"), vendorPermissionFlag2);
            readPermissions(parser, Environment.buildPath(Environment.getVendorDirectory(), "etc", DeviceConfig.NAMESPACE_PERMISSIONS, "noRil"), vendorPermissionFlag2);
        }
        int odmPermissionFlag = vendorPermissionFlag2;
        readPermissions(parser, Environment.buildPath(Environment.getOdmDirectory(), "etc", "sysconfig"), odmPermissionFlag);
        readPermissions(parser, Environment.buildPath(Environment.getOdmDirectory(), "etc", DeviceConfig.NAMESPACE_PERMISSIONS), odmPermissionFlag);
        String skuProperty = SystemProperties.get(SKU_PROPERTY, "");
        if (!skuProperty.isEmpty()) {
            String skuDir = "sku_" + skuProperty;
            readPermissions(parser, Environment.buildPath(Environment.getOdmDirectory(), "etc", "sysconfig", skuDir), odmPermissionFlag);
            readPermissions(parser, Environment.buildPath(Environment.getOdmDirectory(), "etc", DeviceConfig.NAMESPACE_PERMISSIONS, skuDir), odmPermissionFlag);
        }
        readPermissions(parser, Environment.buildPath(Environment.getOemDirectory(), "etc", "sysconfig"), 1185);
        readPermissions(parser, Environment.buildPath(Environment.getOemDirectory(), "etc", DeviceConfig.NAMESPACE_PERMISSIONS), 1185);
        int productPermissionFlag = 2015;
        if (Build.VERSION.DEVICE_INITIAL_SDK_INT <= 30) {
            productPermissionFlag = -1;
        }
        readPermissions(parser, Environment.buildPath(Environment.getProductDirectory(), "etc", "sysconfig"), productPermissionFlag);
        readPermissions(parser, Environment.buildPath(Environment.getProductDirectory(), "etc", DeviceConfig.NAMESPACE_PERMISSIONS), productPermissionFlag);
        readPermissions(parser, Environment.buildPath(Environment.getSystemExtDirectory(), "etc", "sysconfig"), -1);
        readPermissions(parser, Environment.buildPath(Environment.getSystemExtDirectory(), "etc", DeviceConfig.NAMESPACE_PERMISSIONS), -1);
        if (!isSystemProcess()) {
            return;
        }
        File[] fileArrListFilesOrEmpty = FileUtils.listFilesOrEmpty(Environment.getApexDirectory());
        int length = fileArrListFilesOrEmpty.length;
        while (i < length) {
            File f = fileArrListFilesOrEmpty[i];
            if (f.isFile()) {
                vendorPermissionFlag = vendorPermissionFlag2;
                noRilSupport = noRilSupport2;
            } else {
                vendorPermissionFlag = vendorPermissionFlag2;
                noRilSupport = noRilSupport2;
                if (!f.getPath().contains("@")) {
                    readPermissions(parser, Environment.buildPath(f, "etc", DeviceConfig.NAMESPACE_PERMISSIONS), 19);
                }
            }
            i++;
            vendorPermissionFlag2 = vendorPermissionFlag;
            noRilSupport2 = noRilSupport;
        }
    }

    public void readPermissions(XmlPullParser parser, File libraryDir, int permissionFlag) throws Throwable {
        if (!libraryDir.exists() || !libraryDir.isDirectory()) {
            if (permissionFlag == -1) {
                Slog.w(TAG, "No directory " + libraryDir + ", skipping");
                return;
            }
            return;
        }
        if (!libraryDir.canRead()) {
            Slog.w(TAG, "Directory " + libraryDir + " cannot be read");
            return;
        }
        File platformFile = null;
        for (File f : libraryDir.listFiles()) {
            if (f.isFile()) {
                if (f.getPath().endsWith("etc/permissions/platform.xml")) {
                    platformFile = f;
                } else if (!f.getPath().endsWith(".xml")) {
                    Slog.i(TAG, "Non-xml file " + f + " in " + libraryDir + " directory, ignoring");
                } else if (!f.canRead()) {
                    Slog.w(TAG, "Permissions library file " + f + " cannot be read");
                } else if (!this.mSystemConfigExt.filterFileInReadPermissions(f)) {
                    readPermissionsFromXml(parser, f, permissionFlag);
                }
            }
        }
        if (platformFile != null) {
            readPermissionsFromXml(parser, platformFile, permissionFlag);
        }
    }

    private void logNotAllowedInPartition(String name, File permFile, XmlPullParser parser) {
        Slog.w(TAG, "<" + name + "> not allowed in partition of " + permFile + " at " + parser.getPositionDescription());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
    
        if (r15 != 2) goto L573;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
    
        if (r41.getName().equals(android.provider.DeviceConfig.NAMESPACE_PERMISSIONS) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
    
        if (r41.getName().equals("config") != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0065, code lost:
    
        if (r40.mSystemConfigExt.skipTagExceptionAndReturn(r41.getName(), r42) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0067, code lost:
    
        libcore.io.IoUtils.closeQuietly(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0097, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("Unexpected start tag in " + r42 + ": found " + r41.getName() + ", expected 'permissions' or 'config'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0098, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0099, code lost:
    
        r4 = r0;
        r25 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a0, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a1, code lost:
    
        r4 = r0;
        r26 = "Got exception parsing permissions.";
        r25 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00aa, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ab, code lost:
    
        r4 = r0;
        r25 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b3, code lost:
    
        if (r43 != (-1)) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b5, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b7, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ba, code lost:
    
        if ((r43 & 2) == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bc, code lost:
    
        r17 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bf, code lost:
    
        r17 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c3, code lost:
    
        if ((r43 & 1) == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c5, code lost:
    
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c8, code lost:
    
        r18 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00cc, code lost:
    
        if ((r43 & 4) == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ce, code lost:
    
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d1, code lost:
    
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d5, code lost:
    
        if ((r43 & 8) == 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d7, code lost:
    
        r20 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00da, code lost:
    
        r20 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00de, code lost:
    
        if ((r43 & 16) == 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e0, code lost:
    
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e3, code lost:
    
        r21 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e7, code lost:
    
        if ((r43 & 32) == 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e9, code lost:
    
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ec, code lost:
    
        r22 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x1120, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("No start tag found");
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x1121, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x1124, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f0, code lost:
    
        if ((r43 & 64) == 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f2, code lost:
    
        r23 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f5, code lost:
    
        r23 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00f9, code lost:
    
        if ((r43 & 128) == 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00fb, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00fd, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0100, code lost:
    
        if ((r43 & 256) == 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0102, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0104, code lost:
    
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0107, code lost:
    
        if ((r43 & 512) == 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0109, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x010b, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x010e, code lost:
    
        if ((r43 & 1024) == 0) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0110, code lost:
    
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0112, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:591:0x1154  */
    /* JADX WARN: Removed duplicated region for block: B:592:0x1160  */
    /* JADX WARN: Removed duplicated region for block: B:595:0x1167  */
    /* JADX WARN: Removed duplicated region for block: B:598:0x1172  */
    /* JADX WARN: Removed duplicated region for block: B:599:0x1178  */
    /* JADX WARN: Removed duplicated region for block: B:602:0x1183  */
    /* JADX WARN: Removed duplicated region for block: B:605:0x1194  */
    /* JADX WARN: Removed duplicated region for block: B:608:0x119f  */
    /* JADX WARN: Removed duplicated region for block: B:617:0x11ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readPermissionsFromXml(org.xmlpull.v1.XmlPullParser r41, java.io.File r42, int r43) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 4816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.SystemConfig.readPermissionsFromXml(org.xmlpull.v1.XmlPullParser, java.io.File, int):void");
    }

    private void addFeature(String name, int version) {
        FeatureInfo fi = this.mAvailableFeatures.get(name);
        if (fi == null) {
            FeatureInfo fi2 = new FeatureInfo();
            fi2.name = name;
            fi2.version = version;
            this.mAvailableFeatures.put(name, fi2);
            return;
        }
        fi.version = Math.max(fi.version, version);
    }

    private void removeFeature(String name) {
        if (this.mAvailableFeatures.remove(name) != null) {
            Slog.d(TAG, "Removed unavailable feature " + name);
        }
    }

    void readPermission(XmlPullParser parser, String name) throws XmlPullParserException, IOException {
        if (this.mPermissions.containsKey(name)) {
            throw new IllegalStateException("Duplicate permission definition for " + name);
        }
        boolean perUser = XmlUtils.readBooleanAttribute(parser, "perUser", false);
        PermissionEntry perm = new PermissionEntry(name, perUser);
        this.mPermissions.put(name, perm);
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if ("group".equals(tagName)) {
                            String gidStr = parser.getAttributeValue(null, "gid");
                            if (gidStr != null) {
                                int gid = Process.getGidForName(gidStr);
                                if (this.mSystemConfigSocExt.shouldAppendPermGid(gid)) {
                                    perm.gids = ArrayUtils.appendInt(perm.gids, gid);
                                }
                            } else {
                                Slog.w(TAG, "<group> without gid at " + parser.getPositionDescription());
                            }
                        }
                        XmlUtils.skipCurrentTag(parser);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void readPrivAppPermissions(XmlPullParser parser, ArrayMap<String, ArraySet<String>> grantMap, ArrayMap<String, ArraySet<String>> denyMap) throws XmlPullParserException, IOException {
        String packageName = parser.getAttributeValue(null, "package");
        if (TextUtils.isEmpty(packageName)) {
            Slog.w(TAG, "package is required for <privapp-permissions> in " + parser.getPositionDescription());
            return;
        }
        ArraySet<String> permissions = grantMap.get(packageName);
        if (permissions == null) {
            permissions = new ArraySet<>();
        }
        ArraySet<String> denyPermissions = denyMap.get(packageName);
        int depth = parser.getDepth();
        while (XmlUtils.nextElementWithin(parser, depth)) {
            String name = parser.getName();
            if ("permission".equals(name)) {
                String permName = parser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(permName)) {
                    Slog.w(TAG, "name is required for <permission> in " + parser.getPositionDescription());
                } else {
                    permissions.add(permName);
                }
            } else if ("deny-permission".equals(name)) {
                String permName2 = parser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(permName2)) {
                    Slog.w(TAG, "name is required for <deny-permission> in " + parser.getPositionDescription());
                } else {
                    if (denyPermissions == null) {
                        denyPermissions = new ArraySet<>();
                    }
                    denyPermissions.add(permName2);
                }
            }
        }
        grantMap.put(packageName, permissions);
        if (denyPermissions != null) {
            denyMap.put(packageName, denyPermissions);
        }
    }

    private void readInstallInUserType(XmlPullParser parser, Map<String, Set<String>> doInstallMap, Map<String, Set<String>> nonInstallMap) throws XmlPullParserException, IOException {
        String packageName = parser.getAttributeValue(null, "package");
        if (TextUtils.isEmpty(packageName)) {
            Slog.w(TAG, "package is required for <install-in-user-type> in " + parser.getPositionDescription());
            return;
        }
        Set<String> userTypesYes = doInstallMap.get(packageName);
        Set<String> userTypesNo = nonInstallMap.get(packageName);
        int depth = parser.getDepth();
        while (XmlUtils.nextElementWithin(parser, depth)) {
            String name = parser.getName();
            if ("install-in".equals(name)) {
                String userType = parser.getAttributeValue(null, "user-type");
                if (TextUtils.isEmpty(userType)) {
                    Slog.w(TAG, "user-type is required for <install-in-user-type> in " + parser.getPositionDescription());
                } else {
                    if (userTypesYes == null) {
                        userTypesYes = new ArraySet();
                        doInstallMap.put(packageName, userTypesYes);
                    }
                    userTypesYes.add(userType);
                }
            } else if ("do-not-install-in".equals(name)) {
                String userType2 = parser.getAttributeValue(null, "user-type");
                if (TextUtils.isEmpty(userType2)) {
                    Slog.w(TAG, "user-type is required for <install-in-user-type> in " + parser.getPositionDescription());
                } else {
                    if (userTypesNo == null) {
                        userTypesNo = new ArraySet();
                        nonInstallMap.put(packageName, userTypesNo);
                    }
                    userTypesNo.add(userType2);
                }
            } else {
                Slog.w(TAG, "unrecognized tag in <install-in-user-type> in " + parser.getPositionDescription());
            }
        }
    }

    void readOemPermissions(XmlPullParser parser) throws XmlPullParserException, IOException {
        String packageName = parser.getAttributeValue(null, "package");
        if (TextUtils.isEmpty(packageName)) {
            Slog.w(TAG, "package is required for <oem-permissions> in " + parser.getPositionDescription());
            return;
        }
        ArrayMap<String, Boolean> permissions = this.mOemPermissions.get(packageName);
        if (permissions == null) {
            permissions = new ArrayMap<>();
        }
        int depth = parser.getDepth();
        while (XmlUtils.nextElementWithin(parser, depth)) {
            String name = parser.getName();
            if ("permission".equals(name)) {
                String permName = parser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(permName)) {
                    Slog.w(TAG, "name is required for <permission> in " + parser.getPositionDescription());
                } else {
                    permissions.put(permName, Boolean.TRUE);
                }
            } else if ("deny-permission".equals(name)) {
                String permName2 = parser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(permName2)) {
                    Slog.w(TAG, "name is required for <deny-permission> in " + parser.getPositionDescription());
                } else {
                    permissions.put(permName2, Boolean.FALSE);
                }
            }
        }
        this.mOemPermissions.put(packageName, permissions);
    }

    private void readSplitPermission(XmlPullParser parser, File permFile) throws XmlPullParserException, IOException, NumberFormatException {
        String splitPerm = parser.getAttributeValue(null, "name");
        if (splitPerm != null) {
            String targetSdkStr = parser.getAttributeValue(null, "targetSdk");
            int targetSdk = 10001;
            if (!TextUtils.isEmpty(targetSdkStr)) {
                try {
                    targetSdk = Integer.parseInt(targetSdkStr);
                } catch (NumberFormatException e) {
                    Slog.w(TAG, "<split-permission> targetSdk not an integer in " + permFile + " at " + parser.getPositionDescription());
                    XmlUtils.skipCurrentTag(parser);
                    return;
                }
            }
            int depth = parser.getDepth();
            List<String> newPermissions = new ArrayList<>();
            while (XmlUtils.nextElementWithin(parser, depth)) {
                String name = parser.getName();
                if ("new-permission".equals(name)) {
                    String newName = parser.getAttributeValue(null, "name");
                    if (TextUtils.isEmpty(newName)) {
                        Slog.w(TAG, "name is required for <new-permission> in " + parser.getPositionDescription());
                    } else {
                        newPermissions.add(newName);
                    }
                } else {
                    XmlUtils.skipCurrentTag(parser);
                }
            }
            if (!newPermissions.isEmpty()) {
                this.mSplitPermissions.add(new PermissionManager.SplitPermissionInfo(splitPerm, newPermissions, targetSdk));
                return;
            }
            return;
        }
        Slog.w(TAG, "<split-permission> without name in " + permFile + " at " + parser.getPositionDescription());
        XmlUtils.skipCurrentTag(parser);
    }

    private void readComponentOverrides(XmlPullParser parser, File permFile) throws XmlPullParserException, IOException {
        String pkgname = parser.getAttributeValue(null, "package");
        if (pkgname == null) {
            Slog.w(TAG, "<component-override> without package in " + permFile + " at " + parser.getPositionDescription());
            return;
        }
        String pkgname2 = pkgname.intern();
        int depth = parser.getDepth();
        while (XmlUtils.nextElementWithin(parser, depth)) {
            if (CardEmulation.EXTRA_SERVICE_COMPONENT.equals(parser.getName())) {
                String clsname = parser.getAttributeValue(null, "class");
                String enabled = parser.getAttributeValue(null, "enabled");
                if (clsname == null) {
                    Slog.w(TAG, "<component> without class in " + permFile + " at " + parser.getPositionDescription());
                    return;
                }
                if (enabled == null) {
                    Slog.w(TAG, "<component> without enabled in " + permFile + " at " + parser.getPositionDescription());
                    return;
                }
                if (clsname.startsWith(MediaMetrics.SEPARATOR)) {
                    clsname = pkgname2 + clsname;
                }
                String clsname2 = clsname.intern();
                ArrayMap<String, Boolean> componentEnabledStates = this.mPackageComponentEnabledState.get(pkgname2);
                if (componentEnabledStates == null) {
                    componentEnabledStates = new ArrayMap<>();
                    this.mPackageComponentEnabledState.put(pkgname2, componentEnabledStates);
                }
                componentEnabledStates.put(clsname2, Boolean.valueOf(!"false".equals(enabled)));
            }
        }
    }

    private void readPublicNativeLibrariesList() throws IOException {
        readPublicLibrariesListFile(new File("/vendor/etc/public.libraries.txt"));
        String[] dirs = {"/system/etc", "/system_ext/etc", "/product/etc"};
        for (String dir : dirs) {
            File[] files = new File(dir).listFiles();
            if (files == null) {
                Slog.w(TAG, "Public libraries file folder missing: " + dir);
            } else {
                for (File f : files) {
                    String name = f.getName();
                    if (name.startsWith("public.libraries-") && name.endsWith(".txt")) {
                        readPublicLibrariesListFile(f);
                    }
                }
            }
        }
    }

    private void readPublicLibrariesListFile(File listFile) throws IOException {
        try {
            BufferedReader br = new BufferedReader(new FileReader(listFile));
            while (true) {
                try {
                    String line = br.readLine();
                    if (line != null) {
                        if (!line.isEmpty() && !line.startsWith("#")) {
                            String soname = line.trim().split(" ")[0];
                            SharedLibraryEntry entry = new SharedLibraryEntry(soname, soname, new String[0], true);
                            this.mSharedLibraries.put(entry.name, entry);
                        }
                    } else {
                        br.close();
                        return;
                    }
                } finally {
                }
            }
        } catch (IOException e) {
            Slog.w(TAG, "Failed to read public libraries file " + listFile, e);
        }
    }

    private String getApexModuleNameFromFilePath(Path path, Path apexDirectoryPath) {
        if (!path.startsWith(apexDirectoryPath)) {
            throw new IllegalArgumentException("File " + path + " is not part of an APEX.");
        }
        if (path.getNameCount() <= apexDirectoryPath.getNameCount() + 1) {
            throw new IllegalArgumentException("File " + path + " is in the APEX partition, but not inside a module.");
        }
        return path.getName(apexDirectoryPath.getNameCount()).toString();
    }

    public void readApexPrivAppPermissions(XmlPullParser parser, File permFile, Path apexDirectoryPath) throws XmlPullParserException, IOException {
        ArrayMap<String, ArraySet<String>> privAppPermissions;
        ArrayMap<String, ArraySet<String>> privAppDenyPermissions;
        String moduleName = getApexModuleNameFromFilePath(permFile.toPath(), apexDirectoryPath);
        if (this.mApexPrivAppPermissions.containsKey(moduleName)) {
            privAppPermissions = this.mApexPrivAppPermissions.get(moduleName);
        } else {
            privAppPermissions = new ArrayMap<>();
            this.mApexPrivAppPermissions.put(moduleName, privAppPermissions);
        }
        if (this.mApexPrivAppDenyPermissions.containsKey(moduleName)) {
            privAppDenyPermissions = this.mApexPrivAppDenyPermissions.get(moduleName);
        } else {
            privAppDenyPermissions = new ArrayMap<>();
            this.mApexPrivAppDenyPermissions.put(moduleName, privAppDenyPermissions);
        }
        readPrivAppPermissions(parser, privAppPermissions, privAppDenyPermissions);
    }

    private static boolean isSystemProcess() {
        return Process.myUid() == 1000;
    }

    private static boolean isErofsSupported() {
        try {
            Path path = Paths.get("/sys/fs/erofs", new String[0]);
            return Files.exists(path, new LinkOption[0]);
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean isKernelVersionAtLeast(int major, int minor) throws NumberFormatException {
        String kernelVersion = VintfRuntimeInfo.getKernelVersion();
        String[] parts = kernelVersion.split("\\.");
        if (parts.length < 2) {
            return false;
        }
        try {
            int majorVersion = Integer.parseInt(parts[0]);
            int minorVersion = Integer.parseInt(parts[1]);
            return majorVersion > major || (majorVersion == major && minorVersion >= minor);
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public static ISystemConfigStaticWrapper getStaticWrapper() {
        return STATIC_WRAPPER;
    }

    private static class SystemConfigStaticWrapper implements ISystemConfigStaticWrapper {
        private SystemConfigStaticWrapper() {
        }

        @Override // com.android.server.ISystemConfigStaticWrapper
        public int getAllowPermissionsFlag() {
            return 4;
        }

        @Override // com.android.server.ISystemConfigStaticWrapper
        public int getAllowPrivAppPermissionsFlag() {
            return 16;
        }

        @Override // com.android.server.ISystemConfigStaticWrapper
        public int getAllowFeaturesFlag() {
            return 1;
        }

        @Override // com.android.server.ISystemConfigStaticWrapper
        public int getAllowAllFlag() {
            return -1;
        }
    }
}
