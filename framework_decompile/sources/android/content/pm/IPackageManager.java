package android.content.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.IDexModuleRegisterCallback;
import android.content.pm.IOnChecksumsReadyListener;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageDeleteObserver;
import android.content.pm.IPackageDeleteObserver2;
import android.content.pm.IPackageInstaller;
import android.content.pm.IPackageManager;
import android.content.pm.IPackageMoveObserver;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageManager;
import android.content.pm.dex.IArtManager;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.IntConsumer;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
public interface IPackageManager extends IInterface {
    boolean activitySupportsIntent(ComponentName componentName, Intent intent, String str) throws RemoteException;

    void addCrossProfileIntentFilter(IntentFilter intentFilter, String str, int i, int i2, int i3) throws RemoteException;

    boolean addPermission(PermissionInfo permissionInfo) throws RemoteException;

    boolean addPermissionAsync(PermissionInfo permissionInfo) throws RemoteException;

    void addPersistentPreferredActivity(IntentFilter intentFilter, ComponentName componentName, int i) throws RemoteException;

    void addPreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName, int i2, boolean z) throws RemoteException;

    boolean canForwardTo(Intent intent, String str, int i, int i2) throws RemoteException;

    boolean canPackageQuery(String str, String str2, int i) throws RemoteException;

    boolean canRequestPackageInstalls(String str, int i) throws RemoteException;

    String[] canonicalToCurrentPackageNames(String[] strArr) throws RemoteException;

    void checkPackageStartable(String str, int i) throws RemoteException;

    int checkPermission(String str, String str2, int i) throws RemoteException;

    int checkSignatures(String str, String str2) throws RemoteException;

    int checkUidPermission(String str, int i) throws RemoteException;

    int checkUidSignatures(int i, int i2) throws RemoteException;

    void clearApplicationProfileData(String str) throws RemoteException;

    void clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver, int i) throws RemoteException;

    void clearCrossProfileIntentFilters(int i, String str) throws RemoteException;

    void clearPackagePersistentPreferredActivities(String str, int i) throws RemoteException;

    void clearPackagePreferredActivities(String str) throws RemoteException;

    String[] currentToCanonicalPackageNames(String[] strArr) throws RemoteException;

    void deleteApplicationCacheFiles(String str, IPackageDataObserver iPackageDataObserver) throws RemoteException;

    void deleteApplicationCacheFilesAsUser(String str, int i, IPackageDataObserver iPackageDataObserver) throws RemoteException;

    void deleteExistingPackageAsUser(VersionedPackage versionedPackage, IPackageDeleteObserver2 iPackageDeleteObserver2, int i) throws RemoteException;

    @Deprecated
    void deletePackageAsUser(String str, int i, IPackageDeleteObserver iPackageDeleteObserver, int i2, int i3) throws RemoteException;

    void deletePackageVersioned(VersionedPackage versionedPackage, IPackageDeleteObserver2 iPackageDeleteObserver2, int i, int i2) throws RemoteException;

    void deletePreloadsFileCache() throws RemoteException;

    void dumpProfiles(String str, boolean z) throws RemoteException;

    void enterSafeMode() throws RemoteException;

    void extendVerificationTimeout(int i, int i2, long j) throws RemoteException;

    ResolveInfo findPersistentPreferredActivity(Intent intent, int i) throws RemoteException;

    void finishPackageInstall(int i, boolean z) throws RemoteException;

    void flushPackageRestrictionsAsUser(int i) throws RemoteException;

    void forceDexOpt(String str) throws RemoteException;

    void freeStorage(String str, long j, int i, IntentSender intentSender) throws RemoteException;

    void freeStorageAndNotify(String str, long j, int i, IPackageDataObserver iPackageDataObserver) throws RemoteException;

    ActivityInfo getActivityInfo(ComponentName componentName, long j, int i) throws RemoteException;

    ParceledListSlice getAllIntentFilters(String str) throws RemoteException;

    List<String> getAllPackages() throws RemoteException;

    String[] getAppOpPermissionPackages(String str) throws RemoteException;

    String getAppPredictionServicePackageName() throws RemoteException;

    int getApplicationEnabledSetting(String str, int i) throws RemoteException;

    boolean getApplicationHiddenSettingAsUser(String str, int i) throws RemoteException;

    ApplicationInfo getApplicationInfo(String str, long j, int i) throws RemoteException;

    IArtManager getArtManager() throws RemoteException;

    String getAttentionServicePackageName() throws RemoteException;

    boolean getBlockUninstallForUser(String str, int i) throws RemoteException;

    ChangedPackages getChangedPackages(int i, int i2) throws RemoteException;

    int getComponentEnabledSetting(ComponentName componentName, int i) throws RemoteException;

    String getContentCaptureServicePackageName() throws RemoteException;

    ParceledListSlice getDeclaredSharedLibraries(String str, long j, int i) throws RemoteException;

    byte[] getDefaultAppsBackup(int i) throws RemoteException;

    String getDefaultTextClassifierPackageName() throws RemoteException;

    byte[] getDomainVerificationBackup(int i) throws RemoteException;

    int getFlagsForUid(int i) throws RemoteException;

    CharSequence getHarmfulAppWarning(String str, int i) throws RemoteException;

    IBinder getHoldLockToken() throws RemoteException;

    ComponentName getHomeActivities(List<ResolveInfo> list) throws RemoteException;

    String getIncidentReportApproverPackageName() throws RemoteException;

    int getInstallLocation() throws RemoteException;

    int getInstallReason(String str, int i) throws RemoteException;

    InstallSourceInfo getInstallSourceInfo(String str) throws RemoteException;

    ParceledListSlice getInstalledApplications(long j, int i) throws RemoteException;

    List<ModuleInfo> getInstalledModules(int i) throws RemoteException;

    ParceledListSlice getInstalledPackages(long j, int i) throws RemoteException;

    String getInstallerPackageName(String str) throws RemoteException;

    String getInstantAppAndroidId(String str, int i) throws RemoteException;

    byte[] getInstantAppCookie(String str, int i) throws RemoteException;

    Bitmap getInstantAppIcon(String str, int i) throws RemoteException;

    ComponentName getInstantAppInstallerComponent() throws RemoteException;

    ComponentName getInstantAppResolverComponent() throws RemoteException;

    ComponentName getInstantAppResolverSettingsComponent() throws RemoteException;

    ParceledListSlice getInstantApps(int i) throws RemoteException;

    InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i) throws RemoteException;

    @Deprecated
    ParceledListSlice getIntentFilterVerifications(String str) throws RemoteException;

    @Deprecated
    int getIntentVerificationStatus(String str, int i) throws RemoteException;

    KeySet getKeySetByAlias(String str, String str2) throws RemoteException;

    ResolveInfo getLastChosenActivity(Intent intent, String str, int i) throws RemoteException;

    IntentSender getLaunchIntentSenderForPackage(String str, String str2, String str3, int i) throws RemoteException;

    List<String> getMimeGroup(String str, String str2) throws RemoteException;

    ModuleInfo getModuleInfo(String str, int i) throws RemoteException;

    int getMoveStatus(int i) throws RemoteException;

    String getNameForUid(int i) throws RemoteException;

    String[] getNamesForUids(int[] iArr) throws RemoteException;

    int[] getPackageGids(String str, long j, int i) throws RemoteException;

    PackageInfo getPackageInfo(String str, long j, int i) throws RemoteException;

    PackageInfo getPackageInfoVersioned(VersionedPackage versionedPackage, long j, int i) throws RemoteException;

    IPackageInstaller getPackageInstaller() throws RemoteException;

    void getPackageSizeInfo(String str, int i, IPackageStatsObserver iPackageStatsObserver) throws RemoteException;

    int getPackageUid(String str, long j, int i) throws RemoteException;

    String[] getPackagesForUid(int i) throws RemoteException;

    ParceledListSlice getPackagesHoldingPermissions(String[] strArr, long j, int i) throws RemoteException;

    String getPermissionControllerPackageName() throws RemoteException;

    PermissionGroupInfo getPermissionGroupInfo(String str, int i) throws RemoteException;

    ParceledListSlice getPersistentApplications(int i) throws RemoteException;

    int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str) throws RemoteException;

    byte[] getPreferredActivityBackup(int i) throws RemoteException;

    int getPrivateFlagsForUid(int i) throws RemoteException;

    PackageManager.Property getProperty(String str, String str2, String str3) throws RemoteException;

    ProviderInfo getProviderInfo(ComponentName componentName, long j, int i) throws RemoteException;

    ActivityInfo getReceiverInfo(ComponentName componentName, long j, int i) throws RemoteException;

    String getRotationResolverPackageName() throws RemoteException;

    int getRuntimePermissionsVersion(int i) throws RemoteException;

    String getSdkSandboxPackageName() throws RemoteException;

    ServiceInfo getServiceInfo(ComponentName componentName, long j, int i) throws RemoteException;

    String getServicesSystemSharedLibraryPackageName() throws RemoteException;

    String getSetupWizardPackageName() throws RemoteException;

    ParceledListSlice getSharedLibraries(String str, long j, int i) throws RemoteException;

    String getSharedSystemSharedLibraryPackageName() throws RemoteException;

    KeySet getSigningKeySet(String str) throws RemoteException;

    String getSplashScreenTheme(String str, int i) throws RemoteException;

    Bundle getSuspendedPackageAppExtras(String str, int i) throws RemoteException;

    ParceledListSlice getSystemAvailableFeatures() throws RemoteException;

    String getSystemCaptionsServicePackageName() throws RemoteException;

    String[] getSystemSharedLibraryNames() throws RemoteException;

    String getSystemTextClassifierPackageName() throws RemoteException;

    int getTargetSdkVersion(String str) throws RemoteException;

    int getUidForSharedUser(String str) throws RemoteException;

    String[] getUnsuspendablePackagesForUser(String[] strArr, int i) throws RemoteException;

    VerifierDeviceIdentity getVerifierDeviceIdentity() throws RemoteException;

    String getWellbeingPackageName() throws RemoteException;

    void grantRuntimePermission(String str, String str2, int i) throws RemoteException;

    boolean hasSigningCertificate(String str, byte[] bArr, int i) throws RemoteException;

    boolean hasSystemFeature(String str, int i) throws RemoteException;

    boolean hasSystemUidErrors() throws RemoteException;

    boolean hasUidSigningCertificate(int i, byte[] bArr, int i2) throws RemoteException;

    void holdLock(IBinder iBinder, int i) throws RemoteException;

    int installExistingPackageAsUser(String str, int i, int i2, int i3, List<String> list) throws RemoteException;

    boolean isAutoRevokeWhitelisted(String str) throws RemoteException;

    boolean isDeviceUpgrading() throws RemoteException;

    boolean isFirstBoot() throws RemoteException;

    boolean isInstantApp(String str, int i) throws RemoteException;

    boolean isOnlyCoreApps() throws RemoteException;

    boolean isPackageAvailable(String str, int i) throws RemoteException;

    boolean isPackageDeviceAdminOnAnyUser(String str) throws RemoteException;

    boolean isPackageSignedByKeySet(String str, KeySet keySet) throws RemoteException;

    boolean isPackageSignedByKeySetExactly(String str, KeySet keySet) throws RemoteException;

    boolean isPackageStateProtected(String str, int i) throws RemoteException;

    boolean isPackageSuspendedForUser(String str, int i) throws RemoteException;

    boolean isProtectedBroadcast(String str) throws RemoteException;

    boolean isSafeMode() throws RemoteException;

    boolean isStorageLow() throws RemoteException;

    boolean isUidPrivileged(int i) throws RemoteException;

    void logAppProcessStartIfNeeded(String str, String str2, int i, String str3, String str4, int i2) throws RemoteException;

    void makeProviderVisible(int i, String str) throws RemoteException;

    void makeUidVisible(int i, int i2) throws RemoteException;

    int movePackage(String str, String str2) throws RemoteException;

    int movePrimaryStorage(String str) throws RemoteException;

    void notifyDexLoad(String str, Map<String, String> map, String str2) throws RemoteException;

    void notifyPackageUse(String str, int i) throws RemoteException;

    void notifyPackagesReplacedReceived(String[] strArr) throws RemoteException;

    void overrideLabelAndIcon(ComponentName componentName, String str, int i, int i2) throws RemoteException;

    boolean performDexOptMode(String str, boolean z, String str2, boolean z2, boolean z3, String str3) throws RemoteException;

    boolean performDexOptSecondary(String str, String str2, boolean z) throws RemoteException;

    ParceledListSlice queryContentProviders(String str, int i, long j, String str2) throws RemoteException;

    ParceledListSlice queryInstrumentation(String str, int i) throws RemoteException;

    ParceledListSlice queryIntentActivities(Intent intent, String str, long j, int i) throws RemoteException;

    ParceledListSlice queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, String[] strArr, Intent intent, String str, long j, int i) throws RemoteException;

    ParceledListSlice queryIntentContentProviders(Intent intent, String str, long j, int i) throws RemoteException;

    ParceledListSlice queryIntentReceivers(Intent intent, String str, long j, int i) throws RemoteException;

    ParceledListSlice queryIntentServices(Intent intent, String str, long j, int i) throws RemoteException;

    ParceledListSlice queryProperty(String str, int i) throws RemoteException;

    void querySyncProviders(List<String> list, List<ProviderInfo> list2) throws RemoteException;

    void reconcileSecondaryDexFiles(String str) throws RemoteException;

    void registerDexModule(String str, String str2, boolean z, IDexModuleRegisterCallback iDexModuleRegisterCallback) throws RemoteException;

    void registerMoveCallback(IPackageMoveObserver iPackageMoveObserver) throws RemoteException;

    void removePermission(String str) throws RemoteException;

    void replacePreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName, int i2) throws RemoteException;

    void requestPackageChecksums(String str, boolean z, int i, int i2, List list, IOnChecksumsReadyListener iOnChecksumsReadyListener, int i3) throws RemoteException;

    void resetApplicationPreferences(int i) throws RemoteException;

    ProviderInfo resolveContentProvider(String str, long j, int i) throws RemoteException;

    ResolveInfo resolveIntent(Intent intent, String str, long j, int i) throws RemoteException;

    ResolveInfo resolveService(Intent intent, String str, long j, int i) throws RemoteException;

    void restoreDefaultApps(byte[] bArr, int i) throws RemoteException;

    void restoreDomainVerification(byte[] bArr, int i) throws RemoteException;

    void restoreLabelAndIcon(ComponentName componentName, int i) throws RemoteException;

    void restorePreferredActivities(byte[] bArr, int i) throws RemoteException;

    void sendDeviceCustomizationReadyBroadcast() throws RemoteException;

    void setApplicationCategoryHint(String str, int i, String str2) throws RemoteException;

    void setApplicationEnabledSetting(String str, int i, int i2, int i3, String str2) throws RemoteException;

    boolean setApplicationHiddenSettingAsUser(String str, boolean z, int i) throws RemoteException;

    boolean setBlockUninstallForUser(String str, boolean z, int i) throws RemoteException;

    void setComponentEnabledSetting(ComponentName componentName, int i, int i2, int i3) throws RemoteException;

    void setComponentEnabledSettings(List<PackageManager.ComponentEnabledSetting> list, int i) throws RemoteException;

    String[] setDistractingPackageRestrictionsAsUser(String[] strArr, int i, int i2) throws RemoteException;

    void setHarmfulAppWarning(String str, CharSequence charSequence, int i) throws RemoteException;

    void setHomeActivity(ComponentName componentName, int i) throws RemoteException;

    boolean setInstallLocation(int i) throws RemoteException;

    void setInstallerPackageName(String str, String str2) throws RemoteException;

    boolean setInstantAppCookie(String str, byte[] bArr, int i) throws RemoteException;

    void setKeepUninstalledPackages(List<String> list) throws RemoteException;

    void setLastChosenActivity(Intent intent, String str, int i, IntentFilter intentFilter, int i2, ComponentName componentName) throws RemoteException;

    void setMimeGroup(String str, String str2, List<String> list) throws RemoteException;

    void setPackageStoppedState(String str, boolean z, int i) throws RemoteException;

    String[] setPackagesSuspendedAsUser(String[] strArr, boolean z, PersistableBundle persistableBundle, PersistableBundle persistableBundle2, SuspendDialogInfo suspendDialogInfo, String str, int i) throws RemoteException;

    boolean setRequiredForSystemUser(String str, boolean z) throws RemoteException;

    void setRuntimePermissionsVersion(int i, int i2) throws RemoteException;

    void setSplashScreenTheme(String str, String str2, int i) throws RemoteException;

    void setSystemAppHiddenUntilInstalled(String str, boolean z) throws RemoteException;

    boolean setSystemAppInstallState(String str, boolean z, int i) throws RemoteException;

    void setUpdateAvailable(String str, boolean z) throws RemoteException;

    void unregisterMoveCallback(IPackageMoveObserver iPackageMoveObserver) throws RemoteException;

    @Deprecated
    boolean updateIntentVerificationStatus(String str, int i, int i2) throws RemoteException;

    @Deprecated
    void verifyIntentFilter(int i, int i2, List<String> list) throws RemoteException;

    void verifyPendingInstall(int i, int i2) throws RemoteException;

    public static class Default implements IPackageManager {
        @Override // android.content.pm.IPackageManager
        public void checkPackageStartable(String packageName, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public boolean isPackageAvailable(String packageName, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public PackageInfo getPackageInfo(String packageName, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public PackageInfo getPackageInfoVersioned(VersionedPackage versionedPackage, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public int getPackageUid(String packageName, long flags, int userId) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public int[] getPackageGids(String packageName, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String[] currentToCanonicalPackageNames(String[] names) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String[] canonicalToCurrentPackageNames(String[] names) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ApplicationInfo getApplicationInfo(String packageName, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public int getTargetSdkVersion(String packageName) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public ActivityInfo getActivityInfo(ComponentName className, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean activitySupportsIntent(ComponentName className, Intent intent, String resolvedType) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public ActivityInfo getReceiverInfo(ComponentName className, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ServiceInfo getServiceInfo(ComponentName className, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ProviderInfo getProviderInfo(ComponentName className, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isProtectedBroadcast(String actionName) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public int checkSignatures(String pkg1, String pkg2) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public int checkUidSignatures(int uid1, int uid2) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public List<String> getAllPackages() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String[] getPackagesForUid(int uid) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getNameForUid(int uid) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String[] getNamesForUids(int[] uids) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public int getUidForSharedUser(String sharedUserName) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public int getFlagsForUid(int uid) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public int getPrivateFlagsForUid(int uid) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isUidPrivileged(int uid) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public ResolveInfo resolveIntent(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ResolveInfo findPersistentPreferredActivity(Intent intent, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean canForwardTo(Intent intent, String resolvedType, int sourceUserId, int targetUserId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice queryIntentActivities(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice queryIntentActivityOptions(ComponentName caller, Intent[] specifics, String[] specificTypes, Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice queryIntentReceivers(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ResolveInfo resolveService(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice queryIntentServices(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice queryIntentContentProviders(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getInstalledPackages(long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getPackagesHoldingPermissions(String[] permissions, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getInstalledApplications(long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getPersistentApplications(int flags) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ProviderInfo resolveContentProvider(String name, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void querySyncProviders(List<String> outNames, List<ProviderInfo> outInfo) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice queryContentProviders(String processName, int uid, long flags, String metaDataKey) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public InstrumentationInfo getInstrumentationInfo(ComponentName className, int flags) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice queryInstrumentation(String targetPackage, int flags) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void finishPackageInstall(int token, boolean didLaunch) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void setInstallerPackageName(String targetPackage, String installerPackageName) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void setApplicationCategoryHint(String packageName, int categoryHint, String callerPackageName) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void deletePackageAsUser(String packageName, int versionCode, IPackageDeleteObserver observer, int userId, int flags) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void deletePackageVersioned(VersionedPackage versionedPackage, IPackageDeleteObserver2 observer, int userId, int flags) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void deleteExistingPackageAsUser(VersionedPackage versionedPackage, IPackageDeleteObserver2 observer, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public String getInstallerPackageName(String packageName) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public InstallSourceInfo getInstallSourceInfo(String packageName) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void resetApplicationPreferences(int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public ResolveInfo getLastChosenActivity(Intent intent, String resolvedType, int flags) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void setLastChosenActivity(Intent intent, String resolvedType, int flags, IntentFilter filter, int match, ComponentName activity) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void addPreferredActivity(IntentFilter filter, int match, ComponentName[] set, ComponentName activity, int userId, boolean removeExisting) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void replacePreferredActivity(IntentFilter filter, int match, ComponentName[] set, ComponentName activity, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void clearPackagePreferredActivities(String packageName) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public int getPreferredActivities(List<IntentFilter> outFilters, List<ComponentName> outActivities, String packageName) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public void addPersistentPreferredActivity(IntentFilter filter, ComponentName activity, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void clearPackagePersistentPreferredActivities(String packageName, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void addCrossProfileIntentFilter(IntentFilter intentFilter, String ownerPackage, int sourceUserId, int targetUserId, int flags) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void clearCrossProfileIntentFilters(int sourceUserId, String ownerPackage) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public String[] setDistractingPackageRestrictionsAsUser(String[] packageNames, int restrictionFlags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String[] setPackagesSuspendedAsUser(String[] packageNames, boolean suspended, PersistableBundle appExtras, PersistableBundle launcherExtras, SuspendDialogInfo dialogInfo, String callingPackage, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String[] getUnsuspendablePackagesForUser(String[] packageNames, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isPackageSuspendedForUser(String packageName, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public Bundle getSuspendedPackageAppExtras(String packageName, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public byte[] getPreferredActivityBackup(int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void restorePreferredActivities(byte[] backup, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public byte[] getDefaultAppsBackup(int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void restoreDefaultApps(byte[] backup, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public byte[] getDomainVerificationBackup(int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void restoreDomainVerification(byte[] backup, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public ComponentName getHomeActivities(List<ResolveInfo> outHomeCandidates) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void setHomeActivity(ComponentName className, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void overrideLabelAndIcon(ComponentName componentName, String nonLocalizedLabel, int icon, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void restoreLabelAndIcon(ComponentName componentName, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void setComponentEnabledSetting(ComponentName componentName, int newState, int flags, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void setComponentEnabledSettings(List<PackageManager.ComponentEnabledSetting> settings, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public int getComponentEnabledSetting(ComponentName componentName, int userId) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public void setApplicationEnabledSetting(String packageName, int newState, int flags, int userId, String callingPackage) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public int getApplicationEnabledSetting(String packageName, int userId) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public void logAppProcessStartIfNeeded(String packageName, String processName, int uid, String seinfo, String apkFile, int pid) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void flushPackageRestrictionsAsUser(int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void setPackageStoppedState(String packageName, boolean stopped, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void freeStorageAndNotify(String volumeUuid, long freeStorageSize, int storageFlags, IPackageDataObserver observer) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void freeStorage(String volumeUuid, long freeStorageSize, int storageFlags, IntentSender pi) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void deleteApplicationCacheFiles(String packageName, IPackageDataObserver observer) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void deleteApplicationCacheFilesAsUser(String packageName, int userId, IPackageDataObserver observer) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void clearApplicationUserData(String packageName, IPackageDataObserver observer, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void clearApplicationProfileData(String packageName) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void getPackageSizeInfo(String packageName, int userHandle, IPackageStatsObserver observer) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public String[] getSystemSharedLibraryNames() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getSystemAvailableFeatures() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean hasSystemFeature(String name, int version) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public void enterSafeMode() throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public boolean isSafeMode() throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean hasSystemUidErrors() throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public void notifyPackageUse(String packageName, int reason) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void notifyDexLoad(String loadingPackageName, Map<String, String> classLoaderContextMap, String loaderIsa) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void registerDexModule(String packageName, String dexModulePath, boolean isSharedModule, IDexModuleRegisterCallback callback) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public boolean performDexOptMode(String packageName, boolean checkProfiles, String targetCompilerFilter, boolean force, boolean bootComplete, String splitName) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean performDexOptSecondary(String packageName, String targetCompilerFilter, boolean force) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public void dumpProfiles(String packageName, boolean dumpClassesAndMethods) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void forceDexOpt(String packageName) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void reconcileSecondaryDexFiles(String packageName) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public int getMoveStatus(int moveId) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public void registerMoveCallback(IPackageMoveObserver callback) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void unregisterMoveCallback(IPackageMoveObserver callback) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public int movePackage(String packageName, String volumeUuid) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public int movePrimaryStorage(String volumeUuid) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public boolean setInstallLocation(int loc) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public int getInstallLocation() throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public int installExistingPackageAsUser(String packageName, int userId, int installFlags, int installReason, List<String> whiteListedPermissions) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public void verifyPendingInstall(int id, int verificationCode) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void extendVerificationTimeout(int id, int verificationCodeAtTimeout, long millisecondsToDelay) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void verifyIntentFilter(int id, int verificationCode, List<String> failedDomains) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public int getIntentVerificationStatus(String packageName, int userId) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public boolean updateIntentVerificationStatus(String packageName, int status, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getIntentFilterVerifications(String packageName) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getAllIntentFilters(String packageName) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public VerifierDeviceIdentity getVerifierDeviceIdentity() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isFirstBoot() throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isOnlyCoreApps() throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isDeviceUpgrading() throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isStorageLow() throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean setApplicationHiddenSettingAsUser(String packageName, boolean hidden, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean getApplicationHiddenSettingAsUser(String packageName, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public void setSystemAppHiddenUntilInstalled(String packageName, boolean hidden) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public boolean setSystemAppInstallState(String packageName, boolean installed, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public IPackageInstaller getPackageInstaller() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean setBlockUninstallForUser(String packageName, boolean blockUninstall, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean getBlockUninstallForUser(String packageName, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public KeySet getKeySetByAlias(String packageName, String alias) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public KeySet getSigningKeySet(String packageName) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isPackageSignedByKeySet(String packageName, KeySet ks) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isPackageSignedByKeySetExactly(String packageName, KeySet ks) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public String getPermissionControllerPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getSdkSandboxPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getInstantApps(int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public byte[] getInstantAppCookie(String packageName, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean setInstantAppCookie(String packageName, byte[] cookie, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public Bitmap getInstantAppIcon(String packageName, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isInstantApp(String packageName, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean setRequiredForSystemUser(String packageName, boolean systemUserApp) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public void setUpdateAvailable(String packageName, boolean updateAvaialble) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public String getServicesSystemSharedLibraryPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getSharedSystemSharedLibraryPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ChangedPackages getChangedPackages(int sequenceNumber, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isPackageDeviceAdminOnAnyUser(String packageName) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public int getInstallReason(String packageName, int userId) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getSharedLibraries(String packageName, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice getDeclaredSharedLibraries(String packageName, long flags, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean canRequestPackageInstalls(String packageName, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public void deletePreloadsFileCache() throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public ComponentName getInstantAppResolverComponent() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ComponentName getInstantAppResolverSettingsComponent() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ComponentName getInstantAppInstallerComponent() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getInstantAppAndroidId(String packageName, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public IArtManager getArtManager() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void setHarmfulAppWarning(String packageName, CharSequence warning, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public CharSequence getHarmfulAppWarning(String packageName, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean hasSigningCertificate(String packageName, byte[] signingCertificate, int flags) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean hasUidSigningCertificate(int uid, byte[] signingCertificate, int flags) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public String getDefaultTextClassifierPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getSystemTextClassifierPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getAttentionServicePackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getRotationResolverPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getWellbeingPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getAppPredictionServicePackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getSystemCaptionsServicePackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getSetupWizardPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getIncidentReportApproverPackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String getContentCaptureServicePackageName() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isPackageStateProtected(String packageName, int userId) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public void sendDeviceCustomizationReadyBroadcast() throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public List<ModuleInfo> getInstalledModules(int flags) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ModuleInfo getModuleInfo(String packageName, int flags) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public int getRuntimePermissionsVersion(int userId) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public void setRuntimePermissionsVersion(int version, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void notifyPackagesReplacedReceived(String[] packages) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void requestPackageChecksums(String packageName, boolean includeSplits, int optional, int required, List trustedInstallers, IOnChecksumsReadyListener onChecksumsReadyListener, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public IntentSender getLaunchIntentSenderForPackage(String packageName, String callingPackage, String featureId, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public String[] getAppOpPermissionPackages(String permissionName) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public PermissionGroupInfo getPermissionGroupInfo(String name, int flags) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean addPermission(PermissionInfo info) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public boolean addPermissionAsync(PermissionInfo info) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public void removePermission(String name) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public int checkPermission(String permName, String pkgName, int userId) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public void grantRuntimePermission(String packageName, String permissionName, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public int checkUidPermission(String permName, int uid) throws RemoteException {
            return 0;
        }

        @Override // android.content.pm.IPackageManager
        public void setMimeGroup(String packageName, String group, List<String> mimeTypes) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public String getSplashScreenTheme(String packageName, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void setSplashScreenTheme(String packageName, String themeName, int userId) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public List<String> getMimeGroup(String packageName, String group) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public boolean isAutoRevokeWhitelisted(String packageName) throws RemoteException {
            return false;
        }

        @Override // android.content.pm.IPackageManager
        public void makeProviderVisible(int recipientAppId, String visibleAuthority) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public void makeUidVisible(int recipientAppId, int visibleUid) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public IBinder getHoldLockToken() throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void holdLock(IBinder token, int durationMs) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public PackageManager.Property getProperty(String propertyName, String packageName, String className) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public ParceledListSlice queryProperty(String propertyName, int componentType) throws RemoteException {
            return null;
        }

        @Override // android.content.pm.IPackageManager
        public void setKeepUninstalledPackages(List<String> packageList) throws RemoteException {
        }

        @Override // android.content.pm.IPackageManager
        public boolean canPackageQuery(String sourcePackageName, String targetPackageName, int userId) throws RemoteException {
            return false;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IPackageManager {
        public static final String DESCRIPTOR = "android.content.pm.IPackageManager";
        static final int TRANSACTION_activitySupportsIntent = 12;
        static final int TRANSACTION_addCrossProfileIntentFilter = 62;
        static final int TRANSACTION_addPermission = 187;
        static final int TRANSACTION_addPermissionAsync = 188;
        static final int TRANSACTION_addPersistentPreferredActivity = 60;
        static final int TRANSACTION_addPreferredActivity = 56;
        static final int TRANSACTION_canForwardTo = 29;
        static final int TRANSACTION_canPackageQuery = 205;
        static final int TRANSACTION_canRequestPackageInstalls = 155;
        static final int TRANSACTION_canonicalToCurrentPackageNames = 8;
        static final int TRANSACTION_checkPackageStartable = 1;
        static final int TRANSACTION_checkPermission = 190;
        static final int TRANSACTION_checkSignatures = 17;
        static final int TRANSACTION_checkUidPermission = 192;
        static final int TRANSACTION_checkUidSignatures = 18;
        static final int TRANSACTION_clearApplicationProfileData = 92;
        static final int TRANSACTION_clearApplicationUserData = 91;
        static final int TRANSACTION_clearCrossProfileIntentFilters = 63;
        static final int TRANSACTION_clearPackagePersistentPreferredActivities = 61;
        static final int TRANSACTION_clearPackagePreferredActivities = 58;
        static final int TRANSACTION_currentToCanonicalPackageNames = 7;
        static final int TRANSACTION_deleteApplicationCacheFiles = 89;
        static final int TRANSACTION_deleteApplicationCacheFilesAsUser = 90;
        static final int TRANSACTION_deleteExistingPackageAsUser = 50;
        static final int TRANSACTION_deletePackageAsUser = 48;
        static final int TRANSACTION_deletePackageVersioned = 49;
        static final int TRANSACTION_deletePreloadsFileCache = 156;
        static final int TRANSACTION_dumpProfiles = 105;
        static final int TRANSACTION_enterSafeMode = 97;
        static final int TRANSACTION_extendVerificationTimeout = 117;
        static final int TRANSACTION_findPersistentPreferredActivity = 28;
        static final int TRANSACTION_finishPackageInstall = 45;
        static final int TRANSACTION_flushPackageRestrictionsAsUser = 85;
        static final int TRANSACTION_forceDexOpt = 106;
        static final int TRANSACTION_freeStorage = 88;
        static final int TRANSACTION_freeStorageAndNotify = 87;
        static final int TRANSACTION_getActivityInfo = 11;
        static final int TRANSACTION_getAllIntentFilters = 122;
        static final int TRANSACTION_getAllPackages = 19;
        static final int TRANSACTION_getAppOpPermissionPackages = 185;
        static final int TRANSACTION_getAppPredictionServicePackageName = 171;
        static final int TRANSACTION_getApplicationEnabledSetting = 83;
        static final int TRANSACTION_getApplicationHiddenSettingAsUser = 129;
        static final int TRANSACTION_getApplicationInfo = 9;
        static final int TRANSACTION_getArtManager = 161;
        static final int TRANSACTION_getAttentionServicePackageName = 168;
        static final int TRANSACTION_getBlockUninstallForUser = 134;
        static final int TRANSACTION_getChangedPackages = 150;
        static final int TRANSACTION_getComponentEnabledSetting = 81;
        static final int TRANSACTION_getContentCaptureServicePackageName = 175;
        static final int TRANSACTION_getDeclaredSharedLibraries = 154;
        static final int TRANSACTION_getDefaultAppsBackup = 71;
        static final int TRANSACTION_getDefaultTextClassifierPackageName = 166;
        static final int TRANSACTION_getDomainVerificationBackup = 73;
        static final int TRANSACTION_getFlagsForUid = 24;
        static final int TRANSACTION_getHarmfulAppWarning = 163;
        static final int TRANSACTION_getHoldLockToken = 200;
        static final int TRANSACTION_getHomeActivities = 75;
        static final int TRANSACTION_getIncidentReportApproverPackageName = 174;
        static final int TRANSACTION_getInstallLocation = 114;
        static final int TRANSACTION_getInstallReason = 152;
        static final int TRANSACTION_getInstallSourceInfo = 52;
        static final int TRANSACTION_getInstalledApplications = 38;
        static final int TRANSACTION_getInstalledModules = 178;
        static final int TRANSACTION_getInstalledPackages = 36;
        static final int TRANSACTION_getInstallerPackageName = 51;
        static final int TRANSACTION_getInstantAppAndroidId = 160;
        static final int TRANSACTION_getInstantAppCookie = 142;
        static final int TRANSACTION_getInstantAppIcon = 144;
        static final int TRANSACTION_getInstantAppInstallerComponent = 159;
        static final int TRANSACTION_getInstantAppResolverComponent = 157;
        static final int TRANSACTION_getInstantAppResolverSettingsComponent = 158;
        static final int TRANSACTION_getInstantApps = 141;
        static final int TRANSACTION_getInstrumentationInfo = 43;
        static final int TRANSACTION_getIntentFilterVerifications = 121;
        static final int TRANSACTION_getIntentVerificationStatus = 119;
        static final int TRANSACTION_getKeySetByAlias = 135;
        static final int TRANSACTION_getLastChosenActivity = 54;
        static final int TRANSACTION_getLaunchIntentSenderForPackage = 184;
        static final int TRANSACTION_getMimeGroup = 196;
        static final int TRANSACTION_getModuleInfo = 179;
        static final int TRANSACTION_getMoveStatus = 108;
        static final int TRANSACTION_getNameForUid = 21;
        static final int TRANSACTION_getNamesForUids = 22;
        static final int TRANSACTION_getPackageGids = 6;
        static final int TRANSACTION_getPackageInfo = 3;
        static final int TRANSACTION_getPackageInfoVersioned = 4;
        static final int TRANSACTION_getPackageInstaller = 132;
        static final int TRANSACTION_getPackageSizeInfo = 93;
        static final int TRANSACTION_getPackageUid = 5;
        static final int TRANSACTION_getPackagesForUid = 20;
        static final int TRANSACTION_getPackagesHoldingPermissions = 37;
        static final int TRANSACTION_getPermissionControllerPackageName = 139;
        static final int TRANSACTION_getPermissionGroupInfo = 186;
        static final int TRANSACTION_getPersistentApplications = 39;
        static final int TRANSACTION_getPreferredActivities = 59;
        static final int TRANSACTION_getPreferredActivityBackup = 69;
        static final int TRANSACTION_getPrivateFlagsForUid = 25;
        static final int TRANSACTION_getProperty = 202;
        static final int TRANSACTION_getProviderInfo = 15;
        static final int TRANSACTION_getReceiverInfo = 13;
        static final int TRANSACTION_getRotationResolverPackageName = 169;
        static final int TRANSACTION_getRuntimePermissionsVersion = 180;
        static final int TRANSACTION_getSdkSandboxPackageName = 140;
        static final int TRANSACTION_getServiceInfo = 14;
        static final int TRANSACTION_getServicesSystemSharedLibraryPackageName = 148;
        static final int TRANSACTION_getSetupWizardPackageName = 173;
        static final int TRANSACTION_getSharedLibraries = 153;
        static final int TRANSACTION_getSharedSystemSharedLibraryPackageName = 149;
        static final int TRANSACTION_getSigningKeySet = 136;
        static final int TRANSACTION_getSplashScreenTheme = 194;
        static final int TRANSACTION_getSuspendedPackageAppExtras = 68;
        static final int TRANSACTION_getSystemAvailableFeatures = 95;
        static final int TRANSACTION_getSystemCaptionsServicePackageName = 172;
        static final int TRANSACTION_getSystemSharedLibraryNames = 94;
        static final int TRANSACTION_getSystemTextClassifierPackageName = 167;
        static final int TRANSACTION_getTargetSdkVersion = 10;
        static final int TRANSACTION_getUidForSharedUser = 23;
        static final int TRANSACTION_getUnsuspendablePackagesForUser = 66;
        static final int TRANSACTION_getVerifierDeviceIdentity = 123;
        static final int TRANSACTION_getWellbeingPackageName = 170;
        static final int TRANSACTION_grantRuntimePermission = 191;
        static final int TRANSACTION_hasSigningCertificate = 164;
        static final int TRANSACTION_hasSystemFeature = 96;
        static final int TRANSACTION_hasSystemUidErrors = 99;
        static final int TRANSACTION_hasUidSigningCertificate = 165;
        static final int TRANSACTION_holdLock = 201;
        static final int TRANSACTION_installExistingPackageAsUser = 115;
        static final int TRANSACTION_isAutoRevokeWhitelisted = 197;
        static final int TRANSACTION_isDeviceUpgrading = 126;
        static final int TRANSACTION_isFirstBoot = 124;
        static final int TRANSACTION_isInstantApp = 145;
        static final int TRANSACTION_isOnlyCoreApps = 125;
        static final int TRANSACTION_isPackageAvailable = 2;
        static final int TRANSACTION_isPackageDeviceAdminOnAnyUser = 151;
        static final int TRANSACTION_isPackageSignedByKeySet = 137;
        static final int TRANSACTION_isPackageSignedByKeySetExactly = 138;
        static final int TRANSACTION_isPackageStateProtected = 176;
        static final int TRANSACTION_isPackageSuspendedForUser = 67;
        static final int TRANSACTION_isProtectedBroadcast = 16;
        static final int TRANSACTION_isSafeMode = 98;
        static final int TRANSACTION_isStorageLow = 127;
        static final int TRANSACTION_isUidPrivileged = 26;
        static final int TRANSACTION_logAppProcessStartIfNeeded = 84;
        static final int TRANSACTION_makeProviderVisible = 198;
        static final int TRANSACTION_makeUidVisible = 199;
        static final int TRANSACTION_movePackage = 111;
        static final int TRANSACTION_movePrimaryStorage = 112;
        static final int TRANSACTION_notifyDexLoad = 101;
        static final int TRANSACTION_notifyPackageUse = 100;
        static final int TRANSACTION_notifyPackagesReplacedReceived = 182;
        static final int TRANSACTION_overrideLabelAndIcon = 77;
        static final int TRANSACTION_performDexOptMode = 103;
        static final int TRANSACTION_performDexOptSecondary = 104;
        static final int TRANSACTION_queryContentProviders = 42;
        static final int TRANSACTION_queryInstrumentation = 44;
        static final int TRANSACTION_queryIntentActivities = 30;
        static final int TRANSACTION_queryIntentActivityOptions = 31;
        static final int TRANSACTION_queryIntentContentProviders = 35;
        static final int TRANSACTION_queryIntentReceivers = 32;
        static final int TRANSACTION_queryIntentServices = 34;
        static final int TRANSACTION_queryProperty = 203;
        static final int TRANSACTION_querySyncProviders = 41;
        static final int TRANSACTION_reconcileSecondaryDexFiles = 107;
        static final int TRANSACTION_registerDexModule = 102;
        static final int TRANSACTION_registerMoveCallback = 109;
        static final int TRANSACTION_removePermission = 189;
        static final int TRANSACTION_replacePreferredActivity = 57;
        static final int TRANSACTION_requestPackageChecksums = 183;
        static final int TRANSACTION_resetApplicationPreferences = 53;
        static final int TRANSACTION_resolveContentProvider = 40;
        static final int TRANSACTION_resolveIntent = 27;
        static final int TRANSACTION_resolveService = 33;
        static final int TRANSACTION_restoreDefaultApps = 72;
        static final int TRANSACTION_restoreDomainVerification = 74;
        static final int TRANSACTION_restoreLabelAndIcon = 78;
        static final int TRANSACTION_restorePreferredActivities = 70;
        static final int TRANSACTION_sendDeviceCustomizationReadyBroadcast = 177;
        static final int TRANSACTION_setApplicationCategoryHint = 47;
        static final int TRANSACTION_setApplicationEnabledSetting = 82;
        static final int TRANSACTION_setApplicationHiddenSettingAsUser = 128;
        static final int TRANSACTION_setBlockUninstallForUser = 133;
        static final int TRANSACTION_setComponentEnabledSetting = 79;
        static final int TRANSACTION_setComponentEnabledSettings = 80;
        static final int TRANSACTION_setDistractingPackageRestrictionsAsUser = 64;
        static final int TRANSACTION_setHarmfulAppWarning = 162;
        static final int TRANSACTION_setHomeActivity = 76;
        static final int TRANSACTION_setInstallLocation = 113;
        static final int TRANSACTION_setInstallerPackageName = 46;
        static final int TRANSACTION_setInstantAppCookie = 143;
        static final int TRANSACTION_setKeepUninstalledPackages = 204;
        static final int TRANSACTION_setLastChosenActivity = 55;
        static final int TRANSACTION_setMimeGroup = 193;
        static final int TRANSACTION_setPackageStoppedState = 86;
        static final int TRANSACTION_setPackagesSuspendedAsUser = 65;
        static final int TRANSACTION_setRequiredForSystemUser = 146;
        static final int TRANSACTION_setRuntimePermissionsVersion = 181;
        static final int TRANSACTION_setSplashScreenTheme = 195;
        static final int TRANSACTION_setSystemAppHiddenUntilInstalled = 130;
        static final int TRANSACTION_setSystemAppInstallState = 131;
        static final int TRANSACTION_setUpdateAvailable = 147;
        static final int TRANSACTION_unregisterMoveCallback = 110;
        static final int TRANSACTION_updateIntentVerificationStatus = 120;
        static final int TRANSACTION_verifyIntentFilter = 118;
        static final int TRANSACTION_verifyPendingInstall = 116;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPackageManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IPackageManager)) {
                return (IPackageManager) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public static String getDefaultTransactionName(int transactionCode) {
            switch (transactionCode) {
                case 1:
                    return "checkPackageStartable";
                case 2:
                    return "isPackageAvailable";
                case 3:
                    return "getPackageInfo";
                case 4:
                    return "getPackageInfoVersioned";
                case 5:
                    return "getPackageUid";
                case 6:
                    return "getPackageGids";
                case 7:
                    return "currentToCanonicalPackageNames";
                case 8:
                    return "canonicalToCurrentPackageNames";
                case 9:
                    return "getApplicationInfo";
                case 10:
                    return "getTargetSdkVersion";
                case 11:
                    return "getActivityInfo";
                case 12:
                    return "activitySupportsIntent";
                case 13:
                    return "getReceiverInfo";
                case 14:
                    return "getServiceInfo";
                case 15:
                    return "getProviderInfo";
                case 16:
                    return "isProtectedBroadcast";
                case 17:
                    return "checkSignatures";
                case 18:
                    return "checkUidSignatures";
                case 19:
                    return "getAllPackages";
                case 20:
                    return "getPackagesForUid";
                case 21:
                    return "getNameForUid";
                case 22:
                    return "getNamesForUids";
                case 23:
                    return "getUidForSharedUser";
                case 24:
                    return "getFlagsForUid";
                case 25:
                    return "getPrivateFlagsForUid";
                case 26:
                    return "isUidPrivileged";
                case 27:
                    return "resolveIntent";
                case 28:
                    return "findPersistentPreferredActivity";
                case 29:
                    return "canForwardTo";
                case 30:
                    return "queryIntentActivities";
                case 31:
                    return "queryIntentActivityOptions";
                case 32:
                    return "queryIntentReceivers";
                case 33:
                    return "resolveService";
                case 34:
                    return "queryIntentServices";
                case 35:
                    return "queryIntentContentProviders";
                case 36:
                    return "getInstalledPackages";
                case 37:
                    return "getPackagesHoldingPermissions";
                case 38:
                    return "getInstalledApplications";
                case 39:
                    return "getPersistentApplications";
                case 40:
                    return "resolveContentProvider";
                case 41:
                    return "querySyncProviders";
                case 42:
                    return "queryContentProviders";
                case 43:
                    return "getInstrumentationInfo";
                case 44:
                    return "queryInstrumentation";
                case 45:
                    return "finishPackageInstall";
                case 46:
                    return "setInstallerPackageName";
                case 47:
                    return "setApplicationCategoryHint";
                case 48:
                    return "deletePackageAsUser";
                case 49:
                    return "deletePackageVersioned";
                case 50:
                    return "deleteExistingPackageAsUser";
                case 51:
                    return "getInstallerPackageName";
                case 52:
                    return "getInstallSourceInfo";
                case 53:
                    return "resetApplicationPreferences";
                case 54:
                    return "getLastChosenActivity";
                case 55:
                    return "setLastChosenActivity";
                case 56:
                    return "addPreferredActivity";
                case 57:
                    return "replacePreferredActivity";
                case 58:
                    return "clearPackagePreferredActivities";
                case 59:
                    return "getPreferredActivities";
                case 60:
                    return "addPersistentPreferredActivity";
                case 61:
                    return "clearPackagePersistentPreferredActivities";
                case 62:
                    return "addCrossProfileIntentFilter";
                case 63:
                    return "clearCrossProfileIntentFilters";
                case 64:
                    return "setDistractingPackageRestrictionsAsUser";
                case 65:
                    return "setPackagesSuspendedAsUser";
                case 66:
                    return "getUnsuspendablePackagesForUser";
                case 67:
                    return "isPackageSuspendedForUser";
                case 68:
                    return "getSuspendedPackageAppExtras";
                case 69:
                    return "getPreferredActivityBackup";
                case 70:
                    return "restorePreferredActivities";
                case 71:
                    return "getDefaultAppsBackup";
                case 72:
                    return "restoreDefaultApps";
                case 73:
                    return "getDomainVerificationBackup";
                case 74:
                    return "restoreDomainVerification";
                case 75:
                    return "getHomeActivities";
                case 76:
                    return "setHomeActivity";
                case 77:
                    return "overrideLabelAndIcon";
                case 78:
                    return "restoreLabelAndIcon";
                case 79:
                    return "setComponentEnabledSetting";
                case 80:
                    return "setComponentEnabledSettings";
                case 81:
                    return "getComponentEnabledSetting";
                case 82:
                    return "setApplicationEnabledSetting";
                case 83:
                    return "getApplicationEnabledSetting";
                case 84:
                    return "logAppProcessStartIfNeeded";
                case 85:
                    return "flushPackageRestrictionsAsUser";
                case 86:
                    return "setPackageStoppedState";
                case 87:
                    return "freeStorageAndNotify";
                case 88:
                    return "freeStorage";
                case 89:
                    return "deleteApplicationCacheFiles";
                case 90:
                    return "deleteApplicationCacheFilesAsUser";
                case 91:
                    return "clearApplicationUserData";
                case 92:
                    return "clearApplicationProfileData";
                case 93:
                    return "getPackageSizeInfo";
                case 94:
                    return "getSystemSharedLibraryNames";
                case 95:
                    return "getSystemAvailableFeatures";
                case 96:
                    return "hasSystemFeature";
                case 97:
                    return "enterSafeMode";
                case 98:
                    return "isSafeMode";
                case 99:
                    return "hasSystemUidErrors";
                case 100:
                    return "notifyPackageUse";
                case 101:
                    return "notifyDexLoad";
                case 102:
                    return "registerDexModule";
                case 103:
                    return "performDexOptMode";
                case 104:
                    return "performDexOptSecondary";
                case 105:
                    return "dumpProfiles";
                case 106:
                    return "forceDexOpt";
                case 107:
                    return "reconcileSecondaryDexFiles";
                case 108:
                    return "getMoveStatus";
                case 109:
                    return "registerMoveCallback";
                case 110:
                    return "unregisterMoveCallback";
                case 111:
                    return "movePackage";
                case 112:
                    return "movePrimaryStorage";
                case 113:
                    return "setInstallLocation";
                case 114:
                    return "getInstallLocation";
                case 115:
                    return "installExistingPackageAsUser";
                case 116:
                    return "verifyPendingInstall";
                case 117:
                    return "extendVerificationTimeout";
                case 118:
                    return "verifyIntentFilter";
                case 119:
                    return "getIntentVerificationStatus";
                case 120:
                    return "updateIntentVerificationStatus";
                case 121:
                    return "getIntentFilterVerifications";
                case 122:
                    return "getAllIntentFilters";
                case 123:
                    return "getVerifierDeviceIdentity";
                case 124:
                    return "isFirstBoot";
                case 125:
                    return "isOnlyCoreApps";
                case 126:
                    return "isDeviceUpgrading";
                case 127:
                    return "isStorageLow";
                case 128:
                    return "setApplicationHiddenSettingAsUser";
                case 129:
                    return "getApplicationHiddenSettingAsUser";
                case 130:
                    return "setSystemAppHiddenUntilInstalled";
                case 131:
                    return "setSystemAppInstallState";
                case 132:
                    return "getPackageInstaller";
                case 133:
                    return "setBlockUninstallForUser";
                case 134:
                    return "getBlockUninstallForUser";
                case 135:
                    return "getKeySetByAlias";
                case 136:
                    return "getSigningKeySet";
                case 137:
                    return "isPackageSignedByKeySet";
                case 138:
                    return "isPackageSignedByKeySetExactly";
                case 139:
                    return "getPermissionControllerPackageName";
                case 140:
                    return "getSdkSandboxPackageName";
                case 141:
                    return "getInstantApps";
                case 142:
                    return "getInstantAppCookie";
                case 143:
                    return "setInstantAppCookie";
                case 144:
                    return "getInstantAppIcon";
                case 145:
                    return "isInstantApp";
                case 146:
                    return "setRequiredForSystemUser";
                case 147:
                    return "setUpdateAvailable";
                case 148:
                    return "getServicesSystemSharedLibraryPackageName";
                case 149:
                    return "getSharedSystemSharedLibraryPackageName";
                case 150:
                    return "getChangedPackages";
                case 151:
                    return "isPackageDeviceAdminOnAnyUser";
                case 152:
                    return "getInstallReason";
                case 153:
                    return "getSharedLibraries";
                case 154:
                    return "getDeclaredSharedLibraries";
                case 155:
                    return "canRequestPackageInstalls";
                case 156:
                    return "deletePreloadsFileCache";
                case 157:
                    return "getInstantAppResolverComponent";
                case 158:
                    return "getInstantAppResolverSettingsComponent";
                case 159:
                    return "getInstantAppInstallerComponent";
                case 160:
                    return "getInstantAppAndroidId";
                case 161:
                    return "getArtManager";
                case 162:
                    return "setHarmfulAppWarning";
                case 163:
                    return "getHarmfulAppWarning";
                case 164:
                    return "hasSigningCertificate";
                case 165:
                    return "hasUidSigningCertificate";
                case 166:
                    return "getDefaultTextClassifierPackageName";
                case 167:
                    return "getSystemTextClassifierPackageName";
                case 168:
                    return "getAttentionServicePackageName";
                case 169:
                    return "getRotationResolverPackageName";
                case 170:
                    return "getWellbeingPackageName";
                case 171:
                    return "getAppPredictionServicePackageName";
                case 172:
                    return "getSystemCaptionsServicePackageName";
                case 173:
                    return "getSetupWizardPackageName";
                case 174:
                    return "getIncidentReportApproverPackageName";
                case 175:
                    return "getContentCaptureServicePackageName";
                case 176:
                    return "isPackageStateProtected";
                case 177:
                    return "sendDeviceCustomizationReadyBroadcast";
                case 178:
                    return "getInstalledModules";
                case 179:
                    return "getModuleInfo";
                case 180:
                    return "getRuntimePermissionsVersion";
                case 181:
                    return "setRuntimePermissionsVersion";
                case 182:
                    return "notifyPackagesReplacedReceived";
                case 183:
                    return "requestPackageChecksums";
                case 184:
                    return "getLaunchIntentSenderForPackage";
                case 185:
                    return "getAppOpPermissionPackages";
                case 186:
                    return "getPermissionGroupInfo";
                case 187:
                    return "addPermission";
                case 188:
                    return "addPermissionAsync";
                case 189:
                    return "removePermission";
                case 190:
                    return "checkPermission";
                case 191:
                    return "grantRuntimePermission";
                case 192:
                    return "checkUidPermission";
                case 193:
                    return "setMimeGroup";
                case 194:
                    return "getSplashScreenTheme";
                case 195:
                    return "setSplashScreenTheme";
                case 196:
                    return "getMimeGroup";
                case 197:
                    return "isAutoRevokeWhitelisted";
                case 198:
                    return "makeProviderVisible";
                case 199:
                    return "makeUidVisible";
                case 200:
                    return "getHoldLockToken";
                case 201:
                    return "holdLock";
                case 202:
                    return "getProperty";
                case 203:
                    return "queryProperty";
                case 204:
                    return "setKeepUninstalledPackages";
                case 205:
                    return "canPackageQuery";
                default:
                    return null;
            }
        }

        @Override // android.os.Binder
        public String getTransactionName(int transactionCode) {
            return getDefaultTransactionName(transactionCode);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, final Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            String _arg0 = data.readString();
                            int _arg1 = data.readInt();
                            data.enforceNoDataAvail();
                            checkPackageStartable(_arg0, _arg1);
                            reply.writeNoException();
                            return true;
                        case 2:
                            String _arg02 = data.readString();
                            int _arg12 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result = isPackageAvailable(_arg02, _arg12);
                            reply.writeNoException();
                            reply.writeBoolean(_result);
                            return true;
                        case 3:
                            String _arg03 = data.readString();
                            long _arg13 = data.readLong();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            PackageInfo _result2 = getPackageInfo(_arg03, _arg13, _arg2);
                            reply.writeNoException();
                            reply.writeTypedObject(_result2, 1);
                            return true;
                        case 4:
                            VersionedPackage _arg04 = (VersionedPackage) data.readTypedObject(VersionedPackage.CREATOR);
                            long _arg14 = data.readLong();
                            int _arg22 = data.readInt();
                            data.enforceNoDataAvail();
                            PackageInfo _result3 = getPackageInfoVersioned(_arg04, _arg14, _arg22);
                            reply.writeNoException();
                            reply.writeTypedObject(_result3, 1);
                            return true;
                        case 5:
                            String _arg05 = data.readString();
                            long _arg15 = data.readLong();
                            int _arg23 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result4 = getPackageUid(_arg05, _arg15, _arg23);
                            reply.writeNoException();
                            reply.writeInt(_result4);
                            return true;
                        case 6:
                            String _arg06 = data.readString();
                            long _arg16 = data.readLong();
                            int _arg24 = data.readInt();
                            data.enforceNoDataAvail();
                            int[] _result5 = getPackageGids(_arg06, _arg16, _arg24);
                            reply.writeNoException();
                            reply.writeIntArray(_result5);
                            return true;
                        case 7:
                            String[] _arg07 = data.createStringArray();
                            data.enforceNoDataAvail();
                            String[] _result6 = currentToCanonicalPackageNames(_arg07);
                            reply.writeNoException();
                            reply.writeStringArray(_result6);
                            return true;
                        case 8:
                            String[] _arg08 = data.createStringArray();
                            data.enforceNoDataAvail();
                            String[] _result7 = canonicalToCurrentPackageNames(_arg08);
                            reply.writeNoException();
                            reply.writeStringArray(_result7);
                            return true;
                        case 9:
                            String _arg09 = data.readString();
                            long _arg17 = data.readLong();
                            int _arg25 = data.readInt();
                            data.enforceNoDataAvail();
                            ApplicationInfo _result8 = getApplicationInfo(_arg09, _arg17, _arg25);
                            reply.writeNoException();
                            reply.writeTypedObject(_result8, 1);
                            return true;
                        case 10:
                            String _arg010 = data.readString();
                            data.enforceNoDataAvail();
                            int _result9 = getTargetSdkVersion(_arg010);
                            reply.writeNoException();
                            reply.writeInt(_result9);
                            return true;
                        case 11:
                            ComponentName _arg011 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            long _arg18 = data.readLong();
                            int _arg26 = data.readInt();
                            data.enforceNoDataAvail();
                            ActivityInfo _result10 = getActivityInfo(_arg011, _arg18, _arg26);
                            reply.writeNoException();
                            reply.writeTypedObject(_result10, 1);
                            return true;
                        case 12:
                            ComponentName _arg012 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            Intent _arg19 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg27 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result11 = activitySupportsIntent(_arg012, _arg19, _arg27);
                            reply.writeNoException();
                            reply.writeBoolean(_result11);
                            return true;
                        case 13:
                            ComponentName _arg013 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            long _arg110 = data.readLong();
                            int _arg28 = data.readInt();
                            data.enforceNoDataAvail();
                            ActivityInfo _result12 = getReceiverInfo(_arg013, _arg110, _arg28);
                            reply.writeNoException();
                            reply.writeTypedObject(_result12, 1);
                            return true;
                        case 14:
                            ComponentName _arg014 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            long _arg111 = data.readLong();
                            int _arg29 = data.readInt();
                            data.enforceNoDataAvail();
                            ServiceInfo _result13 = getServiceInfo(_arg014, _arg111, _arg29);
                            reply.writeNoException();
                            reply.writeTypedObject(_result13, 1);
                            return true;
                        case 15:
                            ComponentName _arg015 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            long _arg112 = data.readLong();
                            int _arg210 = data.readInt();
                            data.enforceNoDataAvail();
                            ProviderInfo _result14 = getProviderInfo(_arg015, _arg112, _arg210);
                            reply.writeNoException();
                            reply.writeTypedObject(_result14, 1);
                            return true;
                        case 16:
                            String _arg016 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result15 = isProtectedBroadcast(_arg016);
                            reply.writeNoException();
                            reply.writeBoolean(_result15);
                            return true;
                        case 17:
                            String _arg017 = data.readString();
                            String _arg113 = data.readString();
                            data.enforceNoDataAvail();
                            int _result16 = checkSignatures(_arg017, _arg113);
                            reply.writeNoException();
                            reply.writeInt(_result16);
                            return true;
                        case 18:
                            int _arg018 = data.readInt();
                            int _arg114 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result17 = checkUidSignatures(_arg018, _arg114);
                            reply.writeNoException();
                            reply.writeInt(_result17);
                            return true;
                        case 19:
                            List<String> _result18 = getAllPackages();
                            reply.writeNoException();
                            reply.writeStringList(_result18);
                            return true;
                        case 20:
                            int _arg019 = data.readInt();
                            data.enforceNoDataAvail();
                            String[] _result19 = getPackagesForUid(_arg019);
                            reply.writeNoException();
                            reply.writeStringArray(_result19);
                            return true;
                        case 21:
                            int _arg020 = data.readInt();
                            data.enforceNoDataAvail();
                            String _result20 = getNameForUid(_arg020);
                            reply.writeNoException();
                            reply.writeString(_result20);
                            return true;
                        case 22:
                            int[] _arg021 = data.createIntArray();
                            data.enforceNoDataAvail();
                            String[] _result21 = getNamesForUids(_arg021);
                            reply.writeNoException();
                            reply.writeStringArray(_result21);
                            return true;
                        case 23:
                            String _arg022 = data.readString();
                            data.enforceNoDataAvail();
                            int _result22 = getUidForSharedUser(_arg022);
                            reply.writeNoException();
                            reply.writeInt(_result22);
                            return true;
                        case 24:
                            int _arg023 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result23 = getFlagsForUid(_arg023);
                            reply.writeNoException();
                            reply.writeInt(_result23);
                            return true;
                        case 25:
                            int _arg024 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result24 = getPrivateFlagsForUid(_arg024);
                            reply.writeNoException();
                            reply.writeInt(_result24);
                            return true;
                        case 26:
                            int _arg025 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result25 = isUidPrivileged(_arg025);
                            reply.writeNoException();
                            reply.writeBoolean(_result25);
                            return true;
                        case 27:
                            Intent _arg026 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg115 = data.readString();
                            long _arg211 = data.readLong();
                            int _arg3 = data.readInt();
                            data.enforceNoDataAvail();
                            ResolveInfo _result26 = resolveIntent(_arg026, _arg115, _arg211, _arg3);
                            reply.writeNoException();
                            reply.writeTypedObject(_result26, 1);
                            return true;
                        case 28:
                            Intent _arg027 = (Intent) data.readTypedObject(Intent.CREATOR);
                            int _arg116 = data.readInt();
                            data.enforceNoDataAvail();
                            ResolveInfo _result27 = findPersistentPreferredActivity(_arg027, _arg116);
                            reply.writeNoException();
                            reply.writeTypedObject(_result27, 1);
                            return true;
                        case 29:
                            Intent _arg028 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg117 = data.readString();
                            int _arg212 = data.readInt();
                            int _arg32 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result28 = canForwardTo(_arg028, _arg117, _arg212, _arg32);
                            reply.writeNoException();
                            reply.writeBoolean(_result28);
                            return true;
                        case 30:
                            Intent _arg029 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg118 = data.readString();
                            long _arg213 = data.readLong();
                            int _arg33 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result29 = queryIntentActivities(_arg029, _arg118, _arg213, _arg33);
                            reply.writeNoException();
                            reply.writeTypedObject(_result29, 1);
                            return true;
                        case 31:
                            ComponentName _arg030 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            Intent[] _arg119 = (Intent[]) data.createTypedArray(Intent.CREATOR);
                            String[] _arg214 = data.createStringArray();
                            Intent _arg34 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg4 = data.readString();
                            long _arg5 = data.readLong();
                            int _arg6 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result30 = queryIntentActivityOptions(_arg030, _arg119, _arg214, _arg34, _arg4, _arg5, _arg6);
                            reply.writeNoException();
                            reply.writeTypedObject(_result30, 1);
                            return true;
                        case 32:
                            Intent _arg031 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg120 = data.readString();
                            long _arg215 = data.readLong();
                            int _arg35 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result31 = queryIntentReceivers(_arg031, _arg120, _arg215, _arg35);
                            reply.writeNoException();
                            reply.writeTypedObject(_result31, 1);
                            return true;
                        case 33:
                            Intent _arg032 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg121 = data.readString();
                            long _arg216 = data.readLong();
                            int _arg36 = data.readInt();
                            data.enforceNoDataAvail();
                            ResolveInfo _result32 = resolveService(_arg032, _arg121, _arg216, _arg36);
                            reply.writeNoException();
                            reply.writeTypedObject(_result32, 1);
                            return true;
                        case 34:
                            Intent _arg033 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg122 = data.readString();
                            long _arg217 = data.readLong();
                            int _arg37 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result33 = queryIntentServices(_arg033, _arg122, _arg217, _arg37);
                            reply.writeNoException();
                            reply.writeTypedObject(_result33, 1);
                            return true;
                        case 35:
                            Intent _arg034 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg123 = data.readString();
                            long _arg218 = data.readLong();
                            int _arg38 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result34 = queryIntentContentProviders(_arg034, _arg123, _arg218, _arg38);
                            reply.writeNoException();
                            reply.writeTypedObject(_result34, 1);
                            return true;
                        case 36:
                            long _arg035 = data.readLong();
                            int _arg124 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result35 = getInstalledPackages(_arg035, _arg124);
                            reply.writeNoException();
                            reply.writeTypedObject(_result35, 1);
                            return true;
                        case 37:
                            String[] _arg036 = data.createStringArray();
                            long _arg125 = data.readLong();
                            int _arg219 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result36 = getPackagesHoldingPermissions(_arg036, _arg125, _arg219);
                            reply.writeNoException();
                            reply.writeTypedObject(_result36, 1);
                            return true;
                        case 38:
                            long _arg037 = data.readLong();
                            int _arg126 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result37 = getInstalledApplications(_arg037, _arg126);
                            reply.writeNoException();
                            reply.writeTypedObject(_result37, 1);
                            return true;
                        case 39:
                            int _arg038 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result38 = getPersistentApplications(_arg038);
                            reply.writeNoException();
                            reply.writeTypedObject(_result38, 1);
                            return true;
                        case 40:
                            String _arg039 = data.readString();
                            long _arg127 = data.readLong();
                            int _arg220 = data.readInt();
                            data.enforceNoDataAvail();
                            ProviderInfo _result39 = resolveContentProvider(_arg039, _arg127, _arg220);
                            reply.writeNoException();
                            reply.writeTypedObject(_result39, 1);
                            return true;
                        case 41:
                            List<String> _arg040 = data.createStringArrayList();
                            ArrayList arrayListCreateTypedArrayList = data.createTypedArrayList(ProviderInfo.CREATOR);
                            data.enforceNoDataAvail();
                            querySyncProviders(_arg040, arrayListCreateTypedArrayList);
                            reply.writeNoException();
                            reply.writeStringList(_arg040);
                            reply.writeTypedList(arrayListCreateTypedArrayList);
                            return true;
                        case 42:
                            String _arg041 = data.readString();
                            int _arg128 = data.readInt();
                            long _arg221 = data.readLong();
                            String _arg39 = data.readString();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result40 = queryContentProviders(_arg041, _arg128, _arg221, _arg39);
                            reply.writeNoException();
                            reply.writeTypedObject(_result40, 1);
                            return true;
                        case 43:
                            ComponentName _arg042 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            int _arg129 = data.readInt();
                            data.enforceNoDataAvail();
                            InstrumentationInfo _result41 = getInstrumentationInfo(_arg042, _arg129);
                            reply.writeNoException();
                            reply.writeTypedObject(_result41, 1);
                            return true;
                        case 44:
                            String _arg043 = data.readString();
                            int _arg130 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result42 = queryInstrumentation(_arg043, _arg130);
                            reply.writeNoException();
                            reply.writeTypedObject(_result42, 1);
                            return true;
                        case 45:
                            int _arg044 = data.readInt();
                            boolean _arg131 = data.readBoolean();
                            data.enforceNoDataAvail();
                            finishPackageInstall(_arg044, _arg131);
                            reply.writeNoException();
                            return true;
                        case 46:
                            String _arg045 = data.readString();
                            String _arg132 = data.readString();
                            data.enforceNoDataAvail();
                            setInstallerPackageName(_arg045, _arg132);
                            reply.writeNoException();
                            return true;
                        case 47:
                            String _arg046 = data.readString();
                            int _arg133 = data.readInt();
                            String _arg222 = data.readString();
                            data.enforceNoDataAvail();
                            setApplicationCategoryHint(_arg046, _arg133, _arg222);
                            reply.writeNoException();
                            return true;
                        case 48:
                            String _arg047 = data.readString();
                            int _arg134 = data.readInt();
                            IPackageDeleteObserver _arg223 = IPackageDeleteObserver.Stub.asInterface(data.readStrongBinder());
                            int _arg310 = data.readInt();
                            int _arg42 = data.readInt();
                            data.enforceNoDataAvail();
                            deletePackageAsUser(_arg047, _arg134, _arg223, _arg310, _arg42);
                            reply.writeNoException();
                            return true;
                        case 49:
                            VersionedPackage _arg048 = (VersionedPackage) data.readTypedObject(VersionedPackage.CREATOR);
                            IPackageDeleteObserver2 _arg135 = IPackageDeleteObserver2.Stub.asInterface(data.readStrongBinder());
                            int _arg224 = data.readInt();
                            int _arg311 = data.readInt();
                            data.enforceNoDataAvail();
                            deletePackageVersioned(_arg048, _arg135, _arg224, _arg311);
                            reply.writeNoException();
                            return true;
                        case 50:
                            VersionedPackage _arg049 = (VersionedPackage) data.readTypedObject(VersionedPackage.CREATOR);
                            IPackageDeleteObserver2 _arg136 = IPackageDeleteObserver2.Stub.asInterface(data.readStrongBinder());
                            int _arg225 = data.readInt();
                            data.enforceNoDataAvail();
                            deleteExistingPackageAsUser(_arg049, _arg136, _arg225);
                            reply.writeNoException();
                            return true;
                        case 51:
                            String _arg050 = data.readString();
                            data.enforceNoDataAvail();
                            String _result43 = getInstallerPackageName(_arg050);
                            reply.writeNoException();
                            reply.writeString(_result43);
                            return true;
                        case 52:
                            String _arg051 = data.readString();
                            data.enforceNoDataAvail();
                            InstallSourceInfo _result44 = getInstallSourceInfo(_arg051);
                            reply.writeNoException();
                            reply.writeTypedObject(_result44, 1);
                            return true;
                        case 53:
                            int _arg052 = data.readInt();
                            data.enforceNoDataAvail();
                            resetApplicationPreferences(_arg052);
                            reply.writeNoException();
                            return true;
                        case 54:
                            Intent _arg053 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg137 = data.readString();
                            int _arg226 = data.readInt();
                            data.enforceNoDataAvail();
                            ResolveInfo _result45 = getLastChosenActivity(_arg053, _arg137, _arg226);
                            reply.writeNoException();
                            reply.writeTypedObject(_result45, 1);
                            return true;
                        case 55:
                            Intent _arg054 = (Intent) data.readTypedObject(Intent.CREATOR);
                            String _arg138 = data.readString();
                            int _arg227 = data.readInt();
                            IntentFilter _arg312 = (IntentFilter) data.readTypedObject(IntentFilter.CREATOR);
                            int _arg43 = data.readInt();
                            ComponentName _arg52 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            data.enforceNoDataAvail();
                            setLastChosenActivity(_arg054, _arg138, _arg227, _arg312, _arg43, _arg52);
                            reply.writeNoException();
                            return true;
                        case 56:
                            IntentFilter _arg055 = (IntentFilter) data.readTypedObject(IntentFilter.CREATOR);
                            int _arg139 = data.readInt();
                            ComponentName[] _arg228 = (ComponentName[]) data.createTypedArray(ComponentName.CREATOR);
                            ComponentName _arg313 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            int _arg44 = data.readInt();
                            boolean _arg53 = data.readBoolean();
                            data.enforceNoDataAvail();
                            addPreferredActivity(_arg055, _arg139, _arg228, _arg313, _arg44, _arg53);
                            reply.writeNoException();
                            return true;
                        case 57:
                            IntentFilter _arg056 = (IntentFilter) data.readTypedObject(IntentFilter.CREATOR);
                            int _arg140 = data.readInt();
                            ComponentName[] _arg229 = (ComponentName[]) data.createTypedArray(ComponentName.CREATOR);
                            ComponentName _arg314 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            int _arg45 = data.readInt();
                            data.enforceNoDataAvail();
                            replacePreferredActivity(_arg056, _arg140, _arg229, _arg314, _arg45);
                            reply.writeNoException();
                            return true;
                        case 58:
                            String _arg057 = data.readString();
                            data.enforceNoDataAvail();
                            clearPackagePreferredActivities(_arg057);
                            reply.writeNoException();
                            return true;
                        case 59:
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            String _arg230 = data.readString();
                            data.enforceNoDataAvail();
                            int _result46 = getPreferredActivities(arrayList, arrayList2, _arg230);
                            reply.writeNoException();
                            reply.writeInt(_result46);
                            reply.writeTypedList(arrayList);
                            reply.writeTypedList(arrayList2);
                            return true;
                        case 60:
                            IntentFilter _arg058 = (IntentFilter) data.readTypedObject(IntentFilter.CREATOR);
                            ComponentName _arg141 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            int _arg231 = data.readInt();
                            data.enforceNoDataAvail();
                            addPersistentPreferredActivity(_arg058, _arg141, _arg231);
                            reply.writeNoException();
                            return true;
                        case 61:
                            String _arg059 = data.readString();
                            int _arg142 = data.readInt();
                            data.enforceNoDataAvail();
                            clearPackagePersistentPreferredActivities(_arg059, _arg142);
                            reply.writeNoException();
                            return true;
                        case 62:
                            IntentFilter _arg060 = (IntentFilter) data.readTypedObject(IntentFilter.CREATOR);
                            String _arg143 = data.readString();
                            int _arg232 = data.readInt();
                            int _arg315 = data.readInt();
                            int _arg46 = data.readInt();
                            data.enforceNoDataAvail();
                            addCrossProfileIntentFilter(_arg060, _arg143, _arg232, _arg315, _arg46);
                            reply.writeNoException();
                            return true;
                        case 63:
                            int _arg061 = data.readInt();
                            String _arg144 = data.readString();
                            data.enforceNoDataAvail();
                            clearCrossProfileIntentFilters(_arg061, _arg144);
                            reply.writeNoException();
                            return true;
                        case 64:
                            String[] _arg062 = data.createStringArray();
                            int _arg145 = data.readInt();
                            int _arg233 = data.readInt();
                            data.enforceNoDataAvail();
                            String[] _result47 = setDistractingPackageRestrictionsAsUser(_arg062, _arg145, _arg233);
                            reply.writeNoException();
                            reply.writeStringArray(_result47);
                            return true;
                        case 65:
                            String[] _arg063 = data.createStringArray();
                            boolean _arg146 = data.readBoolean();
                            PersistableBundle _arg234 = (PersistableBundle) data.readTypedObject(PersistableBundle.CREATOR);
                            PersistableBundle _arg316 = (PersistableBundle) data.readTypedObject(PersistableBundle.CREATOR);
                            SuspendDialogInfo _arg47 = (SuspendDialogInfo) data.readTypedObject(SuspendDialogInfo.CREATOR);
                            String _arg54 = data.readString();
                            int _arg62 = data.readInt();
                            data.enforceNoDataAvail();
                            String[] _result48 = setPackagesSuspendedAsUser(_arg063, _arg146, _arg234, _arg316, _arg47, _arg54, _arg62);
                            reply.writeNoException();
                            reply.writeStringArray(_result48);
                            return true;
                        case 66:
                            String[] _arg064 = data.createStringArray();
                            int _arg147 = data.readInt();
                            data.enforceNoDataAvail();
                            String[] _result49 = getUnsuspendablePackagesForUser(_arg064, _arg147);
                            reply.writeNoException();
                            reply.writeStringArray(_result49);
                            return true;
                        case 67:
                            String _arg065 = data.readString();
                            int _arg148 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result50 = isPackageSuspendedForUser(_arg065, _arg148);
                            reply.writeNoException();
                            reply.writeBoolean(_result50);
                            return true;
                        case 68:
                            String _arg066 = data.readString();
                            int _arg149 = data.readInt();
                            data.enforceNoDataAvail();
                            Bundle _result51 = getSuspendedPackageAppExtras(_arg066, _arg149);
                            reply.writeNoException();
                            reply.writeTypedObject(_result51, 1);
                            return true;
                        case 69:
                            int _arg067 = data.readInt();
                            data.enforceNoDataAvail();
                            byte[] _result52 = getPreferredActivityBackup(_arg067);
                            reply.writeNoException();
                            reply.writeByteArray(_result52);
                            return true;
                        case 70:
                            byte[] _arg068 = data.createByteArray();
                            int _arg150 = data.readInt();
                            data.enforceNoDataAvail();
                            restorePreferredActivities(_arg068, _arg150);
                            reply.writeNoException();
                            return true;
                        case 71:
                            int _arg069 = data.readInt();
                            data.enforceNoDataAvail();
                            byte[] _result53 = getDefaultAppsBackup(_arg069);
                            reply.writeNoException();
                            reply.writeByteArray(_result53);
                            return true;
                        case 72:
                            byte[] _arg070 = data.createByteArray();
                            int _arg151 = data.readInt();
                            data.enforceNoDataAvail();
                            restoreDefaultApps(_arg070, _arg151);
                            reply.writeNoException();
                            return true;
                        case 73:
                            int _arg071 = data.readInt();
                            data.enforceNoDataAvail();
                            byte[] _result54 = getDomainVerificationBackup(_arg071);
                            reply.writeNoException();
                            reply.writeByteArray(_result54);
                            return true;
                        case 74:
                            byte[] _arg072 = data.createByteArray();
                            int _arg152 = data.readInt();
                            data.enforceNoDataAvail();
                            restoreDomainVerification(_arg072, _arg152);
                            reply.writeNoException();
                            return true;
                        case 75:
                            ArrayList arrayList3 = new ArrayList();
                            data.enforceNoDataAvail();
                            ComponentName _result55 = getHomeActivities(arrayList3);
                            reply.writeNoException();
                            reply.writeTypedObject(_result55, 1);
                            reply.writeTypedList(arrayList3);
                            return true;
                        case 76:
                            ComponentName _arg073 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            int _arg153 = data.readInt();
                            data.enforceNoDataAvail();
                            setHomeActivity(_arg073, _arg153);
                            reply.writeNoException();
                            return true;
                        case 77:
                            ComponentName _arg074 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            String _arg154 = data.readString();
                            int _arg235 = data.readInt();
                            int _arg317 = data.readInt();
                            data.enforceNoDataAvail();
                            overrideLabelAndIcon(_arg074, _arg154, _arg235, _arg317);
                            reply.writeNoException();
                            return true;
                        case 78:
                            ComponentName _arg075 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            int _arg155 = data.readInt();
                            data.enforceNoDataAvail();
                            restoreLabelAndIcon(_arg075, _arg155);
                            reply.writeNoException();
                            return true;
                        case 79:
                            ComponentName _arg076 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            int _arg156 = data.readInt();
                            int _arg236 = data.readInt();
                            int _arg318 = data.readInt();
                            data.enforceNoDataAvail();
                            setComponentEnabledSetting(_arg076, _arg156, _arg236, _arg318);
                            reply.writeNoException();
                            return true;
                        case 80:
                            List<PackageManager.ComponentEnabledSetting> _arg077 = data.createTypedArrayList(PackageManager.ComponentEnabledSetting.CREATOR);
                            int _arg157 = data.readInt();
                            data.enforceNoDataAvail();
                            setComponentEnabledSettings(_arg077, _arg157);
                            reply.writeNoException();
                            return true;
                        case 81:
                            ComponentName _arg078 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            int _arg158 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result56 = getComponentEnabledSetting(_arg078, _arg158);
                            reply.writeNoException();
                            reply.writeInt(_result56);
                            return true;
                        case 82:
                            String _arg079 = data.readString();
                            int _arg159 = data.readInt();
                            int _arg237 = data.readInt();
                            int _arg319 = data.readInt();
                            String _arg48 = data.readString();
                            data.enforceNoDataAvail();
                            setApplicationEnabledSetting(_arg079, _arg159, _arg237, _arg319, _arg48);
                            reply.writeNoException();
                            return true;
                        case 83:
                            String _arg080 = data.readString();
                            int _arg160 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result57 = getApplicationEnabledSetting(_arg080, _arg160);
                            reply.writeNoException();
                            reply.writeInt(_result57);
                            return true;
                        case 84:
                            String _arg081 = data.readString();
                            String _arg161 = data.readString();
                            int _arg238 = data.readInt();
                            String _arg320 = data.readString();
                            String _arg49 = data.readString();
                            int _arg55 = data.readInt();
                            data.enforceNoDataAvail();
                            logAppProcessStartIfNeeded(_arg081, _arg161, _arg238, _arg320, _arg49, _arg55);
                            reply.writeNoException();
                            return true;
                        case 85:
                            int _arg082 = data.readInt();
                            data.enforceNoDataAvail();
                            flushPackageRestrictionsAsUser(_arg082);
                            reply.writeNoException();
                            return true;
                        case 86:
                            String _arg083 = data.readString();
                            boolean _arg162 = data.readBoolean();
                            int _arg239 = data.readInt();
                            data.enforceNoDataAvail();
                            setPackageStoppedState(_arg083, _arg162, _arg239);
                            reply.writeNoException();
                            return true;
                        case 87:
                            String _arg084 = data.readString();
                            long _arg163 = data.readLong();
                            int _arg240 = data.readInt();
                            IPackageDataObserver _arg321 = IPackageDataObserver.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            freeStorageAndNotify(_arg084, _arg163, _arg240, _arg321);
                            reply.writeNoException();
                            return true;
                        case 88:
                            String _arg085 = data.readString();
                            long _arg164 = data.readLong();
                            int _arg241 = data.readInt();
                            IntentSender _arg322 = (IntentSender) data.readTypedObject(IntentSender.CREATOR);
                            data.enforceNoDataAvail();
                            freeStorage(_arg085, _arg164, _arg241, _arg322);
                            reply.writeNoException();
                            return true;
                        case 89:
                            String _arg086 = data.readString();
                            IPackageDataObserver _arg165 = IPackageDataObserver.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            deleteApplicationCacheFiles(_arg086, _arg165);
                            reply.writeNoException();
                            return true;
                        case 90:
                            String _arg087 = data.readString();
                            int _arg166 = data.readInt();
                            IPackageDataObserver _arg242 = IPackageDataObserver.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            deleteApplicationCacheFilesAsUser(_arg087, _arg166, _arg242);
                            reply.writeNoException();
                            return true;
                        case 91:
                            String _arg088 = data.readString();
                            IPackageDataObserver _arg167 = IPackageDataObserver.Stub.asInterface(data.readStrongBinder());
                            int _arg243 = data.readInt();
                            data.enforceNoDataAvail();
                            clearApplicationUserData(_arg088, _arg167, _arg243);
                            reply.writeNoException();
                            return true;
                        case 92:
                            String _arg089 = data.readString();
                            data.enforceNoDataAvail();
                            clearApplicationProfileData(_arg089);
                            reply.writeNoException();
                            return true;
                        case 93:
                            String _arg090 = data.readString();
                            int _arg168 = data.readInt();
                            IPackageStatsObserver _arg244 = IPackageStatsObserver.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            getPackageSizeInfo(_arg090, _arg168, _arg244);
                            reply.writeNoException();
                            return true;
                        case 94:
                            String[] _result58 = getSystemSharedLibraryNames();
                            reply.writeNoException();
                            reply.writeStringArray(_result58);
                            return true;
                        case 95:
                            ParceledListSlice _result59 = getSystemAvailableFeatures();
                            reply.writeNoException();
                            reply.writeTypedObject(_result59, 1);
                            return true;
                        case 96:
                            String _arg091 = data.readString();
                            int _arg169 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result60 = hasSystemFeature(_arg091, _arg169);
                            reply.writeNoException();
                            reply.writeBoolean(_result60);
                            return true;
                        case 97:
                            enterSafeMode();
                            reply.writeNoException();
                            return true;
                        case 98:
                            boolean _result61 = isSafeMode();
                            reply.writeNoException();
                            reply.writeBoolean(_result61);
                            return true;
                        case 99:
                            boolean _result62 = hasSystemUidErrors();
                            reply.writeNoException();
                            reply.writeBoolean(_result62);
                            return true;
                        case 100:
                            String _arg092 = data.readString();
                            int _arg170 = data.readInt();
                            data.enforceNoDataAvail();
                            notifyPackageUse(_arg092, _arg170);
                            return true;
                        case 101:
                            String _arg093 = data.readString();
                            int N = data.readInt();
                            final Map<String, String> _arg171 = N < 0 ? null : new HashMap<>();
                            IntStream.range(0, N).forEach(new IntConsumer() { // from class: android.content.pm.IPackageManager$Stub$$ExternalSyntheticLambda0
                                @Override // java.util.function.IntConsumer
                                public final void accept(int i) {
                                    IPackageManager.Stub.lambda$onTransact$0(data, _arg171, i);
                                }
                            });
                            String _arg245 = data.readString();
                            data.enforceNoDataAvail();
                            notifyDexLoad(_arg093, _arg171, _arg245);
                            return true;
                        case 102:
                            String _arg094 = data.readString();
                            String _arg172 = data.readString();
                            boolean _arg246 = data.readBoolean();
                            IDexModuleRegisterCallback _arg323 = IDexModuleRegisterCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerDexModule(_arg094, _arg172, _arg246, _arg323);
                            return true;
                        case 103:
                            String _arg095 = data.readString();
                            boolean _arg173 = data.readBoolean();
                            String _arg247 = data.readString();
                            boolean _arg324 = data.readBoolean();
                            boolean _arg410 = data.readBoolean();
                            String _arg56 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result63 = performDexOptMode(_arg095, _arg173, _arg247, _arg324, _arg410, _arg56);
                            reply.writeNoException();
                            reply.writeBoolean(_result63);
                            return true;
                        case 104:
                            String _arg096 = data.readString();
                            String _arg174 = data.readString();
                            boolean _arg248 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result64 = performDexOptSecondary(_arg096, _arg174, _arg248);
                            reply.writeNoException();
                            reply.writeBoolean(_result64);
                            return true;
                        case 105:
                            String _arg097 = data.readString();
                            boolean _arg175 = data.readBoolean();
                            data.enforceNoDataAvail();
                            dumpProfiles(_arg097, _arg175);
                            reply.writeNoException();
                            return true;
                        case 106:
                            String _arg098 = data.readString();
                            data.enforceNoDataAvail();
                            forceDexOpt(_arg098);
                            reply.writeNoException();
                            return true;
                        case 107:
                            String _arg099 = data.readString();
                            data.enforceNoDataAvail();
                            reconcileSecondaryDexFiles(_arg099);
                            reply.writeNoException();
                            return true;
                        case 108:
                            int _arg0100 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result65 = getMoveStatus(_arg0100);
                            reply.writeNoException();
                            reply.writeInt(_result65);
                            return true;
                        case 109:
                            IPackageMoveObserver _arg0101 = IPackageMoveObserver.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerMoveCallback(_arg0101);
                            reply.writeNoException();
                            return true;
                        case 110:
                            IPackageMoveObserver _arg0102 = IPackageMoveObserver.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterMoveCallback(_arg0102);
                            reply.writeNoException();
                            return true;
                        case 111:
                            String _arg0103 = data.readString();
                            String _arg176 = data.readString();
                            data.enforceNoDataAvail();
                            int _result66 = movePackage(_arg0103, _arg176);
                            reply.writeNoException();
                            reply.writeInt(_result66);
                            return true;
                        case 112:
                            String _arg0104 = data.readString();
                            data.enforceNoDataAvail();
                            int _result67 = movePrimaryStorage(_arg0104);
                            reply.writeNoException();
                            reply.writeInt(_result67);
                            return true;
                        case 113:
                            int _arg0105 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result68 = setInstallLocation(_arg0105);
                            reply.writeNoException();
                            reply.writeBoolean(_result68);
                            return true;
                        case 114:
                            int _result69 = getInstallLocation();
                            reply.writeNoException();
                            reply.writeInt(_result69);
                            return true;
                        case 115:
                            String _arg0106 = data.readString();
                            int _arg177 = data.readInt();
                            int _arg249 = data.readInt();
                            int _arg325 = data.readInt();
                            List<String> _arg411 = data.createStringArrayList();
                            data.enforceNoDataAvail();
                            int _result70 = installExistingPackageAsUser(_arg0106, _arg177, _arg249, _arg325, _arg411);
                            reply.writeNoException();
                            reply.writeInt(_result70);
                            return true;
                        case 116:
                            int _arg0107 = data.readInt();
                            int _arg178 = data.readInt();
                            data.enforceNoDataAvail();
                            verifyPendingInstall(_arg0107, _arg178);
                            reply.writeNoException();
                            return true;
                        case 117:
                            int _arg0108 = data.readInt();
                            int _arg179 = data.readInt();
                            long _arg250 = data.readLong();
                            data.enforceNoDataAvail();
                            extendVerificationTimeout(_arg0108, _arg179, _arg250);
                            reply.writeNoException();
                            return true;
                        case 118:
                            int _arg0109 = data.readInt();
                            int _arg180 = data.readInt();
                            List<String> _arg251 = data.createStringArrayList();
                            data.enforceNoDataAvail();
                            verifyIntentFilter(_arg0109, _arg180, _arg251);
                            reply.writeNoException();
                            return true;
                        case 119:
                            String _arg0110 = data.readString();
                            int _arg181 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result71 = getIntentVerificationStatus(_arg0110, _arg181);
                            reply.writeNoException();
                            reply.writeInt(_result71);
                            return true;
                        case 120:
                            String _arg0111 = data.readString();
                            int _arg182 = data.readInt();
                            int _arg252 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result72 = updateIntentVerificationStatus(_arg0111, _arg182, _arg252);
                            reply.writeNoException();
                            reply.writeBoolean(_result72);
                            return true;
                        case 121:
                            String _arg0112 = data.readString();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result73 = getIntentFilterVerifications(_arg0112);
                            reply.writeNoException();
                            reply.writeTypedObject(_result73, 1);
                            return true;
                        case 122:
                            String _arg0113 = data.readString();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result74 = getAllIntentFilters(_arg0113);
                            reply.writeNoException();
                            reply.writeTypedObject(_result74, 1);
                            return true;
                        case 123:
                            VerifierDeviceIdentity _result75 = getVerifierDeviceIdentity();
                            reply.writeNoException();
                            reply.writeTypedObject(_result75, 1);
                            return true;
                        case 124:
                            boolean _result76 = isFirstBoot();
                            reply.writeNoException();
                            reply.writeBoolean(_result76);
                            return true;
                        case 125:
                            boolean _result77 = isOnlyCoreApps();
                            reply.writeNoException();
                            reply.writeBoolean(_result77);
                            return true;
                        case 126:
                            boolean _result78 = isDeviceUpgrading();
                            reply.writeNoException();
                            reply.writeBoolean(_result78);
                            return true;
                        case 127:
                            boolean _result79 = isStorageLow();
                            reply.writeNoException();
                            reply.writeBoolean(_result79);
                            return true;
                        case 128:
                            String _arg0114 = data.readString();
                            boolean _arg183 = data.readBoolean();
                            int _arg253 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result80 = setApplicationHiddenSettingAsUser(_arg0114, _arg183, _arg253);
                            reply.writeNoException();
                            reply.writeBoolean(_result80);
                            return true;
                        case 129:
                            String _arg0115 = data.readString();
                            int _arg184 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result81 = getApplicationHiddenSettingAsUser(_arg0115, _arg184);
                            reply.writeNoException();
                            reply.writeBoolean(_result81);
                            return true;
                        case 130:
                            String _arg0116 = data.readString();
                            boolean _arg185 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setSystemAppHiddenUntilInstalled(_arg0116, _arg185);
                            reply.writeNoException();
                            return true;
                        case 131:
                            String _arg0117 = data.readString();
                            boolean _arg186 = data.readBoolean();
                            int _arg254 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result82 = setSystemAppInstallState(_arg0117, _arg186, _arg254);
                            reply.writeNoException();
                            reply.writeBoolean(_result82);
                            return true;
                        case 132:
                            IPackageInstaller _result83 = getPackageInstaller();
                            reply.writeNoException();
                            reply.writeStrongInterface(_result83);
                            return true;
                        case 133:
                            String _arg0118 = data.readString();
                            boolean _arg187 = data.readBoolean();
                            int _arg255 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result84 = setBlockUninstallForUser(_arg0118, _arg187, _arg255);
                            reply.writeNoException();
                            reply.writeBoolean(_result84);
                            return true;
                        case 134:
                            String _arg0119 = data.readString();
                            int _arg188 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result85 = getBlockUninstallForUser(_arg0119, _arg188);
                            reply.writeNoException();
                            reply.writeBoolean(_result85);
                            return true;
                        case 135:
                            String _arg0120 = data.readString();
                            String _arg189 = data.readString();
                            data.enforceNoDataAvail();
                            KeySet _result86 = getKeySetByAlias(_arg0120, _arg189);
                            reply.writeNoException();
                            reply.writeTypedObject(_result86, 1);
                            return true;
                        case 136:
                            String _arg0121 = data.readString();
                            data.enforceNoDataAvail();
                            KeySet _result87 = getSigningKeySet(_arg0121);
                            reply.writeNoException();
                            reply.writeTypedObject(_result87, 1);
                            return true;
                        case 137:
                            String _arg0122 = data.readString();
                            KeySet _arg190 = (KeySet) data.readTypedObject(KeySet.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result88 = isPackageSignedByKeySet(_arg0122, _arg190);
                            reply.writeNoException();
                            reply.writeBoolean(_result88);
                            return true;
                        case 138:
                            String _arg0123 = data.readString();
                            KeySet _arg191 = (KeySet) data.readTypedObject(KeySet.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result89 = isPackageSignedByKeySetExactly(_arg0123, _arg191);
                            reply.writeNoException();
                            reply.writeBoolean(_result89);
                            return true;
                        case 139:
                            String _result90 = getPermissionControllerPackageName();
                            reply.writeNoException();
                            reply.writeString(_result90);
                            return true;
                        case 140:
                            String _result91 = getSdkSandboxPackageName();
                            reply.writeNoException();
                            reply.writeString(_result91);
                            return true;
                        case 141:
                            int _arg0124 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result92 = getInstantApps(_arg0124);
                            reply.writeNoException();
                            reply.writeTypedObject(_result92, 1);
                            return true;
                        case 142:
                            String _arg0125 = data.readString();
                            int _arg192 = data.readInt();
                            data.enforceNoDataAvail();
                            byte[] _result93 = getInstantAppCookie(_arg0125, _arg192);
                            reply.writeNoException();
                            reply.writeByteArray(_result93);
                            return true;
                        case 143:
                            String _arg0126 = data.readString();
                            byte[] _arg193 = data.createByteArray();
                            int _arg256 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result94 = setInstantAppCookie(_arg0126, _arg193, _arg256);
                            reply.writeNoException();
                            reply.writeBoolean(_result94);
                            return true;
                        case 144:
                            String _arg0127 = data.readString();
                            int _arg194 = data.readInt();
                            data.enforceNoDataAvail();
                            Bitmap _result95 = getInstantAppIcon(_arg0127, _arg194);
                            reply.writeNoException();
                            reply.writeTypedObject(_result95, 1);
                            return true;
                        case 145:
                            String _arg0128 = data.readString();
                            int _arg195 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result96 = isInstantApp(_arg0128, _arg195);
                            reply.writeNoException();
                            reply.writeBoolean(_result96);
                            return true;
                        case 146:
                            String _arg0129 = data.readString();
                            boolean _arg196 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result97 = setRequiredForSystemUser(_arg0129, _arg196);
                            reply.writeNoException();
                            reply.writeBoolean(_result97);
                            return true;
                        case 147:
                            String _arg0130 = data.readString();
                            boolean _arg197 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setUpdateAvailable(_arg0130, _arg197);
                            reply.writeNoException();
                            return true;
                        case 148:
                            String _result98 = getServicesSystemSharedLibraryPackageName();
                            reply.writeNoException();
                            reply.writeString(_result98);
                            return true;
                        case 149:
                            String _result99 = getSharedSystemSharedLibraryPackageName();
                            reply.writeNoException();
                            reply.writeString(_result99);
                            return true;
                        case 150:
                            int _arg0131 = data.readInt();
                            int _arg198 = data.readInt();
                            data.enforceNoDataAvail();
                            ChangedPackages _result100 = getChangedPackages(_arg0131, _arg198);
                            reply.writeNoException();
                            reply.writeTypedObject(_result100, 1);
                            return true;
                        case 151:
                            String _arg0132 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result101 = isPackageDeviceAdminOnAnyUser(_arg0132);
                            reply.writeNoException();
                            reply.writeBoolean(_result101);
                            return true;
                        case 152:
                            String _arg0133 = data.readString();
                            int _arg199 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result102 = getInstallReason(_arg0133, _arg199);
                            reply.writeNoException();
                            reply.writeInt(_result102);
                            return true;
                        case 153:
                            String _arg0134 = data.readString();
                            long _arg1100 = data.readLong();
                            int _arg257 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result103 = getSharedLibraries(_arg0134, _arg1100, _arg257);
                            reply.writeNoException();
                            reply.writeTypedObject(_result103, 1);
                            return true;
                        case 154:
                            String _arg0135 = data.readString();
                            long _arg1101 = data.readLong();
                            int _arg258 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result104 = getDeclaredSharedLibraries(_arg0135, _arg1101, _arg258);
                            reply.writeNoException();
                            reply.writeTypedObject(_result104, 1);
                            return true;
                        case 155:
                            String _arg0136 = data.readString();
                            int _arg1102 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result105 = canRequestPackageInstalls(_arg0136, _arg1102);
                            reply.writeNoException();
                            reply.writeBoolean(_result105);
                            return true;
                        case 156:
                            deletePreloadsFileCache();
                            reply.writeNoException();
                            return true;
                        case 157:
                            ComponentName _result106 = getInstantAppResolverComponent();
                            reply.writeNoException();
                            reply.writeTypedObject(_result106, 1);
                            return true;
                        case 158:
                            ComponentName _result107 = getInstantAppResolverSettingsComponent();
                            reply.writeNoException();
                            reply.writeTypedObject(_result107, 1);
                            return true;
                        case 159:
                            ComponentName _result108 = getInstantAppInstallerComponent();
                            reply.writeNoException();
                            reply.writeTypedObject(_result108, 1);
                            return true;
                        case 160:
                            String _arg0137 = data.readString();
                            int _arg1103 = data.readInt();
                            data.enforceNoDataAvail();
                            String _result109 = getInstantAppAndroidId(_arg0137, _arg1103);
                            reply.writeNoException();
                            reply.writeString(_result109);
                            return true;
                        case 161:
                            IArtManager _result110 = getArtManager();
                            reply.writeNoException();
                            reply.writeStrongInterface(_result110);
                            return true;
                        case 162:
                            String _arg0138 = data.readString();
                            CharSequence _arg1104 = (CharSequence) data.readTypedObject(TextUtils.CHAR_SEQUENCE_CREATOR);
                            int _arg259 = data.readInt();
                            data.enforceNoDataAvail();
                            setHarmfulAppWarning(_arg0138, _arg1104, _arg259);
                            reply.writeNoException();
                            return true;
                        case 163:
                            String _arg0139 = data.readString();
                            int _arg1105 = data.readInt();
                            data.enforceNoDataAvail();
                            CharSequence _result111 = getHarmfulAppWarning(_arg0139, _arg1105);
                            reply.writeNoException();
                            if (_result111 != null) {
                                reply.writeInt(1);
                                TextUtils.writeToParcel(_result111, reply, 1);
                            } else {
                                reply.writeInt(0);
                            }
                            return true;
                        case 164:
                            String _arg0140 = data.readString();
                            byte[] _arg1106 = data.createByteArray();
                            int _arg260 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result112 = hasSigningCertificate(_arg0140, _arg1106, _arg260);
                            reply.writeNoException();
                            reply.writeBoolean(_result112);
                            return true;
                        case 165:
                            int _arg0141 = data.readInt();
                            byte[] _arg1107 = data.createByteArray();
                            int _arg261 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result113 = hasUidSigningCertificate(_arg0141, _arg1107, _arg261);
                            reply.writeNoException();
                            reply.writeBoolean(_result113);
                            return true;
                        case 166:
                            String _result114 = getDefaultTextClassifierPackageName();
                            reply.writeNoException();
                            reply.writeString(_result114);
                            return true;
                        case 167:
                            String _result115 = getSystemTextClassifierPackageName();
                            reply.writeNoException();
                            reply.writeString(_result115);
                            return true;
                        case 168:
                            String _result116 = getAttentionServicePackageName();
                            reply.writeNoException();
                            reply.writeString(_result116);
                            return true;
                        case 169:
                            String _result117 = getRotationResolverPackageName();
                            reply.writeNoException();
                            reply.writeString(_result117);
                            return true;
                        case 170:
                            String _result118 = getWellbeingPackageName();
                            reply.writeNoException();
                            reply.writeString(_result118);
                            return true;
                        case 171:
                            String _result119 = getAppPredictionServicePackageName();
                            reply.writeNoException();
                            reply.writeString(_result119);
                            return true;
                        case 172:
                            String _result120 = getSystemCaptionsServicePackageName();
                            reply.writeNoException();
                            reply.writeString(_result120);
                            return true;
                        case 173:
                            String _result121 = getSetupWizardPackageName();
                            reply.writeNoException();
                            reply.writeString(_result121);
                            return true;
                        case 174:
                            String _result122 = getIncidentReportApproverPackageName();
                            reply.writeNoException();
                            reply.writeString(_result122);
                            return true;
                        case 175:
                            String _result123 = getContentCaptureServicePackageName();
                            reply.writeNoException();
                            reply.writeString(_result123);
                            return true;
                        case 176:
                            String _arg0142 = data.readString();
                            int _arg1108 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result124 = isPackageStateProtected(_arg0142, _arg1108);
                            reply.writeNoException();
                            reply.writeBoolean(_result124);
                            return true;
                        case 177:
                            sendDeviceCustomizationReadyBroadcast();
                            reply.writeNoException();
                            return true;
                        case 178:
                            int _arg0143 = data.readInt();
                            data.enforceNoDataAvail();
                            List<ModuleInfo> _result125 = getInstalledModules(_arg0143);
                            reply.writeNoException();
                            reply.writeTypedList(_result125);
                            return true;
                        case 179:
                            String _arg0144 = data.readString();
                            int _arg1109 = data.readInt();
                            data.enforceNoDataAvail();
                            ModuleInfo _result126 = getModuleInfo(_arg0144, _arg1109);
                            reply.writeNoException();
                            reply.writeTypedObject(_result126, 1);
                            return true;
                        case 180:
                            int _arg0145 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result127 = getRuntimePermissionsVersion(_arg0145);
                            reply.writeNoException();
                            reply.writeInt(_result127);
                            return true;
                        case 181:
                            int _arg0146 = data.readInt();
                            int _arg1110 = data.readInt();
                            data.enforceNoDataAvail();
                            setRuntimePermissionsVersion(_arg0146, _arg1110);
                            reply.writeNoException();
                            return true;
                        case 182:
                            String[] _arg0147 = data.createStringArray();
                            data.enforceNoDataAvail();
                            notifyPackagesReplacedReceived(_arg0147);
                            reply.writeNoException();
                            return true;
                        case 183:
                            String _arg0148 = data.readString();
                            boolean _arg1111 = data.readBoolean();
                            int _arg262 = data.readInt();
                            int _arg326 = data.readInt();
                            ClassLoader cl = getClass().getClassLoader();
                            List _arg412 = data.readArrayList(cl);
                            IOnChecksumsReadyListener _arg57 = IOnChecksumsReadyListener.Stub.asInterface(data.readStrongBinder());
                            int _arg63 = data.readInt();
                            data.enforceNoDataAvail();
                            requestPackageChecksums(_arg0148, _arg1111, _arg262, _arg326, _arg412, _arg57, _arg63);
                            reply.writeNoException();
                            return true;
                        case 184:
                            String _arg0149 = data.readString();
                            String _arg1112 = data.readString();
                            String _arg263 = data.readString();
                            int _arg327 = data.readInt();
                            data.enforceNoDataAvail();
                            IntentSender _result128 = getLaunchIntentSenderForPackage(_arg0149, _arg1112, _arg263, _arg327);
                            reply.writeNoException();
                            reply.writeTypedObject(_result128, 1);
                            return true;
                        case 185:
                            String _arg0150 = data.readString();
                            data.enforceNoDataAvail();
                            String[] _result129 = getAppOpPermissionPackages(_arg0150);
                            reply.writeNoException();
                            reply.writeStringArray(_result129);
                            return true;
                        case 186:
                            String _arg0151 = data.readString();
                            int _arg1113 = data.readInt();
                            data.enforceNoDataAvail();
                            PermissionGroupInfo _result130 = getPermissionGroupInfo(_arg0151, _arg1113);
                            reply.writeNoException();
                            reply.writeTypedObject(_result130, 1);
                            return true;
                        case 187:
                            PermissionInfo _arg0152 = (PermissionInfo) data.readTypedObject(PermissionInfo.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result131 = addPermission(_arg0152);
                            reply.writeNoException();
                            reply.writeBoolean(_result131);
                            return true;
                        case 188:
                            PermissionInfo _arg0153 = (PermissionInfo) data.readTypedObject(PermissionInfo.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result132 = addPermissionAsync(_arg0153);
                            reply.writeNoException();
                            reply.writeBoolean(_result132);
                            return true;
                        case 189:
                            String _arg0154 = data.readString();
                            data.enforceNoDataAvail();
                            removePermission(_arg0154);
                            reply.writeNoException();
                            return true;
                        case 190:
                            String _arg0155 = data.readString();
                            String _arg1114 = data.readString();
                            int _arg264 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result133 = checkPermission(_arg0155, _arg1114, _arg264);
                            reply.writeNoException();
                            reply.writeInt(_result133);
                            return true;
                        case 191:
                            String _arg0156 = data.readString();
                            String _arg1115 = data.readString();
                            int _arg265 = data.readInt();
                            data.enforceNoDataAvail();
                            grantRuntimePermission(_arg0156, _arg1115, _arg265);
                            reply.writeNoException();
                            return true;
                        case 192:
                            String _arg0157 = data.readString();
                            int _arg1116 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result134 = checkUidPermission(_arg0157, _arg1116);
                            reply.writeNoException();
                            reply.writeInt(_result134);
                            return true;
                        case 193:
                            String _arg0158 = data.readString();
                            String _arg1117 = data.readString();
                            List<String> _arg266 = data.createStringArrayList();
                            data.enforceNoDataAvail();
                            setMimeGroup(_arg0158, _arg1117, _arg266);
                            reply.writeNoException();
                            return true;
                        case 194:
                            String _arg0159 = data.readString();
                            int _arg1118 = data.readInt();
                            data.enforceNoDataAvail();
                            String _result135 = getSplashScreenTheme(_arg0159, _arg1118);
                            reply.writeNoException();
                            reply.writeString(_result135);
                            return true;
                        case 195:
                            String _arg0160 = data.readString();
                            String _arg1119 = data.readString();
                            int _arg267 = data.readInt();
                            data.enforceNoDataAvail();
                            setSplashScreenTheme(_arg0160, _arg1119, _arg267);
                            reply.writeNoException();
                            return true;
                        case 196:
                            String _arg0161 = data.readString();
                            String _arg1120 = data.readString();
                            data.enforceNoDataAvail();
                            List<String> _result136 = getMimeGroup(_arg0161, _arg1120);
                            reply.writeNoException();
                            reply.writeStringList(_result136);
                            return true;
                        case 197:
                            String _arg0162 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result137 = isAutoRevokeWhitelisted(_arg0162);
                            reply.writeNoException();
                            reply.writeBoolean(_result137);
                            return true;
                        case 198:
                            int _arg0163 = data.readInt();
                            String _arg1121 = data.readString();
                            data.enforceNoDataAvail();
                            makeProviderVisible(_arg0163, _arg1121);
                            reply.writeNoException();
                            return true;
                        case 199:
                            int _arg0164 = data.readInt();
                            int _arg1122 = data.readInt();
                            data.enforceNoDataAvail();
                            makeUidVisible(_arg0164, _arg1122);
                            reply.writeNoException();
                            return true;
                        case 200:
                            IBinder _result138 = getHoldLockToken();
                            reply.writeNoException();
                            reply.writeStrongBinder(_result138);
                            return true;
                        case 201:
                            IBinder _arg0165 = data.readStrongBinder();
                            int _arg1123 = data.readInt();
                            data.enforceNoDataAvail();
                            holdLock(_arg0165, _arg1123);
                            reply.writeNoException();
                            return true;
                        case 202:
                            String _arg0166 = data.readString();
                            String _arg1124 = data.readString();
                            String _arg268 = data.readString();
                            data.enforceNoDataAvail();
                            PackageManager.Property _result139 = getProperty(_arg0166, _arg1124, _arg268);
                            reply.writeNoException();
                            reply.writeTypedObject(_result139, 1);
                            return true;
                        case 203:
                            String _arg0167 = data.readString();
                            int _arg1125 = data.readInt();
                            data.enforceNoDataAvail();
                            ParceledListSlice _result140 = queryProperty(_arg0167, _arg1125);
                            reply.writeNoException();
                            reply.writeTypedObject(_result140, 1);
                            return true;
                        case 204:
                            List<String> _arg0168 = data.createStringArrayList();
                            data.enforceNoDataAvail();
                            setKeepUninstalledPackages(_arg0168);
                            reply.writeNoException();
                            return true;
                        case 205:
                            String _arg0169 = data.readString();
                            String _arg1126 = data.readString();
                            int _arg269 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result141 = canPackageQuery(_arg0169, _arg1126, _arg269);
                            reply.writeNoException();
                            reply.writeBoolean(_result141);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        static /* synthetic */ void lambda$onTransact$0(Parcel data, Map _arg1, int i) {
            String k = data.readString();
            String v = data.readString();
            _arg1.put(k, v);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static class Proxy implements IPackageManager {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.content.pm.IPackageManager
            public void checkPackageStartable(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageAvailable(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PackageInfo getPackageInfo(String packageName, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    PackageInfo _result = (PackageInfo) _reply.readTypedObject(PackageInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PackageInfo getPackageInfoVersioned(VersionedPackage versionedPackage, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(versionedPackage, 0);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    PackageInfo _result = (PackageInfo) _reply.readTypedObject(PackageInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getPackageUid(String packageName, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int[] getPackageGids(String packageName, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] currentToCanonicalPackageNames(String[] names) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(names);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] canonicalToCurrentPackageNames(String[] names) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(names);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ApplicationInfo getApplicationInfo(String packageName, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    ApplicationInfo _result = (ApplicationInfo) _reply.readTypedObject(ApplicationInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getTargetSdkVersion(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ActivityInfo getActivityInfo(ComponentName className, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(className, 0);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    ActivityInfo _result = (ActivityInfo) _reply.readTypedObject(ActivityInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean activitySupportsIntent(ComponentName className, Intent intent, String resolvedType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(className, 0);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ActivityInfo getReceiverInfo(ComponentName className, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(className, 0);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                    ActivityInfo _result = (ActivityInfo) _reply.readTypedObject(ActivityInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ServiceInfo getServiceInfo(ComponentName className, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(className, 0);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                    ServiceInfo _result = (ServiceInfo) _reply.readTypedObject(ServiceInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ProviderInfo getProviderInfo(ComponentName className, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(className, 0);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                    ProviderInfo _result = (ProviderInfo) _reply.readTypedObject(ProviderInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isProtectedBroadcast(String actionName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(actionName);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int checkSignatures(String pkg1, String pkg2) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(pkg1);
                    _data.writeString(pkg2);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int checkUidSignatures(int uid1, int uid2) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid1);
                    _data.writeInt(uid2);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<String> getAllPackages() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] getPackagesForUid(int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    this.mRemote.transact(20, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getNameForUid(int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    this.mRemote.transact(21, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] getNamesForUids(int[] uids) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(uids);
                    this.mRemote.transact(22, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getUidForSharedUser(String sharedUserName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(sharedUserName);
                    this.mRemote.transact(23, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getFlagsForUid(int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    this.mRemote.transact(24, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getPrivateFlagsForUid(int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    this.mRemote.transact(25, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isUidPrivileged(int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    this.mRemote.transact(26, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ResolveInfo resolveIntent(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(27, _data, _reply, 0);
                    _reply.readException();
                    ResolveInfo _result = (ResolveInfo) _reply.readTypedObject(ResolveInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ResolveInfo findPersistentPreferredActivity(Intent intent, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeInt(userId);
                    this.mRemote.transact(28, _data, _reply, 0);
                    _reply.readException();
                    ResolveInfo _result = (ResolveInfo) _reply.readTypedObject(ResolveInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean canForwardTo(Intent intent, String resolvedType, int sourceUserId, int targetUserId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeInt(sourceUserId);
                    _data.writeInt(targetUserId);
                    this.mRemote.transact(29, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentActivities(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(30, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentActivityOptions(ComponentName caller, Intent[] specifics, String[] specificTypes, Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(caller, 0);
                    _data.writeTypedArray(specifics, 0);
                    _data.writeStringArray(specificTypes);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(31, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentReceivers(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(32, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ResolveInfo resolveService(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(33, _data, _reply, 0);
                    _reply.readException();
                    ResolveInfo _result = (ResolveInfo) _reply.readTypedObject(ResolveInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentServices(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(34, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentContentProviders(Intent intent, String resolvedType, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(35, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getInstalledPackages(long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(36, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getPackagesHoldingPermissions(String[] permissions, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(permissions);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(37, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getInstalledApplications(long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(38, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getPersistentApplications(int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(flags);
                    this.mRemote.transact(39, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ProviderInfo resolveContentProvider(String name, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(40, _data, _reply, 0);
                    _reply.readException();
                    ProviderInfo _result = (ProviderInfo) _reply.readTypedObject(ProviderInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void querySyncProviders(List<String> outNames, List<ProviderInfo> outInfo) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringList(outNames);
                    _data.writeTypedList(outInfo);
                    this.mRemote.transact(41, _data, _reply, 0);
                    _reply.readException();
                    _reply.readStringList(outNames);
                    _reply.readTypedList(outInfo, ProviderInfo.CREATOR);
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryContentProviders(String processName, int uid, long flags, String metaDataKey) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(processName);
                    _data.writeInt(uid);
                    _data.writeLong(flags);
                    _data.writeString(metaDataKey);
                    this.mRemote.transact(42, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public InstrumentationInfo getInstrumentationInfo(ComponentName className, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(className, 0);
                    _data.writeInt(flags);
                    this.mRemote.transact(43, _data, _reply, 0);
                    _reply.readException();
                    InstrumentationInfo _result = (InstrumentationInfo) _reply.readTypedObject(InstrumentationInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryInstrumentation(String targetPackage, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(targetPackage);
                    _data.writeInt(flags);
                    this.mRemote.transact(44, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void finishPackageInstall(int token, boolean didLaunch) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(token);
                    _data.writeBoolean(didLaunch);
                    this.mRemote.transact(45, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setInstallerPackageName(String targetPackage, String installerPackageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(targetPackage);
                    _data.writeString(installerPackageName);
                    this.mRemote.transact(46, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setApplicationCategoryHint(String packageName, int categoryHint, String callerPackageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(categoryHint);
                    _data.writeString(callerPackageName);
                    this.mRemote.transact(47, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deletePackageAsUser(String packageName, int versionCode, IPackageDeleteObserver observer, int userId, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(versionCode);
                    _data.writeStrongInterface(observer);
                    _data.writeInt(userId);
                    _data.writeInt(flags);
                    this.mRemote.transact(48, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deletePackageVersioned(VersionedPackage versionedPackage, IPackageDeleteObserver2 observer, int userId, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(versionedPackage, 0);
                    _data.writeStrongInterface(observer);
                    _data.writeInt(userId);
                    _data.writeInt(flags);
                    this.mRemote.transact(49, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deleteExistingPackageAsUser(VersionedPackage versionedPackage, IPackageDeleteObserver2 observer, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(versionedPackage, 0);
                    _data.writeStrongInterface(observer);
                    _data.writeInt(userId);
                    this.mRemote.transact(50, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getInstallerPackageName(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(51, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public InstallSourceInfo getInstallSourceInfo(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(52, _data, _reply, 0);
                    _reply.readException();
                    InstallSourceInfo _result = (InstallSourceInfo) _reply.readTypedObject(InstallSourceInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void resetApplicationPreferences(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(53, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ResolveInfo getLastChosenActivity(Intent intent, String resolvedType, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeInt(flags);
                    this.mRemote.transact(54, _data, _reply, 0);
                    _reply.readException();
                    ResolveInfo _result = (ResolveInfo) _reply.readTypedObject(ResolveInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setLastChosenActivity(Intent intent, String resolvedType, int flags, IntentFilter filter, int match, ComponentName activity) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeString(resolvedType);
                    _data.writeInt(flags);
                    _data.writeTypedObject(filter, 0);
                    _data.writeInt(match);
                    _data.writeTypedObject(activity, 0);
                    this.mRemote.transact(55, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void addPreferredActivity(IntentFilter filter, int match, ComponentName[] set, ComponentName activity, int userId, boolean removeExisting) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(filter, 0);
                    _data.writeInt(match);
                    _data.writeTypedArray(set, 0);
                    _data.writeTypedObject(activity, 0);
                    _data.writeInt(userId);
                    _data.writeBoolean(removeExisting);
                    this.mRemote.transact(56, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void replacePreferredActivity(IntentFilter filter, int match, ComponentName[] set, ComponentName activity, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(filter, 0);
                    _data.writeInt(match);
                    _data.writeTypedArray(set, 0);
                    _data.writeTypedObject(activity, 0);
                    _data.writeInt(userId);
                    this.mRemote.transact(57, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearPackagePreferredActivities(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(58, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getPreferredActivities(List<IntentFilter> outFilters, List<ComponentName> outActivities, String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(59, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    _reply.readTypedList(outFilters, IntentFilter.CREATOR);
                    _reply.readTypedList(outActivities, ComponentName.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void addPersistentPreferredActivity(IntentFilter filter, ComponentName activity, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(filter, 0);
                    _data.writeTypedObject(activity, 0);
                    _data.writeInt(userId);
                    this.mRemote.transact(60, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearPackagePersistentPreferredActivities(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(61, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void addCrossProfileIntentFilter(IntentFilter intentFilter, String ownerPackage, int sourceUserId, int targetUserId, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intentFilter, 0);
                    _data.writeString(ownerPackage);
                    _data.writeInt(sourceUserId);
                    _data.writeInt(targetUserId);
                    _data.writeInt(flags);
                    this.mRemote.transact(62, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearCrossProfileIntentFilters(int sourceUserId, String ownerPackage) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(sourceUserId);
                    _data.writeString(ownerPackage);
                    this.mRemote.transact(63, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] setDistractingPackageRestrictionsAsUser(String[] packageNames, int restrictionFlags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(packageNames);
                    _data.writeInt(restrictionFlags);
                    _data.writeInt(userId);
                    this.mRemote.transact(64, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] setPackagesSuspendedAsUser(String[] packageNames, boolean suspended, PersistableBundle appExtras, PersistableBundle launcherExtras, SuspendDialogInfo dialogInfo, String callingPackage, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(packageNames);
                    _data.writeBoolean(suspended);
                    _data.writeTypedObject(appExtras, 0);
                    _data.writeTypedObject(launcherExtras, 0);
                    _data.writeTypedObject(dialogInfo, 0);
                    _data.writeString(callingPackage);
                    _data.writeInt(userId);
                    this.mRemote.transact(65, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] getUnsuspendablePackagesForUser(String[] packageNames, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(packageNames);
                    _data.writeInt(userId);
                    this.mRemote.transact(66, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageSuspendedForUser(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(67, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public Bundle getSuspendedPackageAppExtras(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(68, _data, _reply, 0);
                    _reply.readException();
                    Bundle _result = (Bundle) _reply.readTypedObject(Bundle.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public byte[] getPreferredActivityBackup(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(69, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void restorePreferredActivities(byte[] backup, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeByteArray(backup);
                    _data.writeInt(userId);
                    this.mRemote.transact(70, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public byte[] getDefaultAppsBackup(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(71, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void restoreDefaultApps(byte[] backup, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeByteArray(backup);
                    _data.writeInt(userId);
                    this.mRemote.transact(72, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public byte[] getDomainVerificationBackup(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(73, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void restoreDomainVerification(byte[] backup, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeByteArray(backup);
                    _data.writeInt(userId);
                    this.mRemote.transact(74, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ComponentName getHomeActivities(List<ResolveInfo> outHomeCandidates) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(75, _data, _reply, 0);
                    _reply.readException();
                    ComponentName _result = (ComponentName) _reply.readTypedObject(ComponentName.CREATOR);
                    _reply.readTypedList(outHomeCandidates, ResolveInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setHomeActivity(ComponentName className, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(className, 0);
                    _data.writeInt(userId);
                    this.mRemote.transact(76, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void overrideLabelAndIcon(ComponentName componentName, String nonLocalizedLabel, int icon, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(componentName, 0);
                    _data.writeString(nonLocalizedLabel);
                    _data.writeInt(icon);
                    _data.writeInt(userId);
                    this.mRemote.transact(77, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void restoreLabelAndIcon(ComponentName componentName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(componentName, 0);
                    _data.writeInt(userId);
                    this.mRemote.transact(78, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setComponentEnabledSetting(ComponentName componentName, int newState, int flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(componentName, 0);
                    _data.writeInt(newState);
                    _data.writeInt(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(79, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setComponentEnabledSettings(List<PackageManager.ComponentEnabledSetting> settings, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedList(settings);
                    _data.writeInt(userId);
                    this.mRemote.transact(80, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getComponentEnabledSetting(ComponentName componentName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(componentName, 0);
                    _data.writeInt(userId);
                    this.mRemote.transact(81, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setApplicationEnabledSetting(String packageName, int newState, int flags, int userId, String callingPackage) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(newState);
                    _data.writeInt(flags);
                    _data.writeInt(userId);
                    _data.writeString(callingPackage);
                    this.mRemote.transact(82, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getApplicationEnabledSetting(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(83, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void logAppProcessStartIfNeeded(String packageName, String processName, int uid, String seinfo, String apkFile, int pid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(processName);
                    _data.writeInt(uid);
                    _data.writeString(seinfo);
                    _data.writeString(apkFile);
                    _data.writeInt(pid);
                    this.mRemote.transact(84, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void flushPackageRestrictionsAsUser(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(85, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setPackageStoppedState(String packageName, boolean stopped, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(stopped);
                    _data.writeInt(userId);
                    this.mRemote.transact(86, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void freeStorageAndNotify(String volumeUuid, long freeStorageSize, int storageFlags, IPackageDataObserver observer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volumeUuid);
                    _data.writeLong(freeStorageSize);
                    _data.writeInt(storageFlags);
                    _data.writeStrongInterface(observer);
                    this.mRemote.transact(87, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void freeStorage(String volumeUuid, long freeStorageSize, int storageFlags, IntentSender pi) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volumeUuid);
                    _data.writeLong(freeStorageSize);
                    _data.writeInt(storageFlags);
                    _data.writeTypedObject(pi, 0);
                    this.mRemote.transact(88, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deleteApplicationCacheFiles(String packageName, IPackageDataObserver observer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeStrongInterface(observer);
                    this.mRemote.transact(89, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deleteApplicationCacheFilesAsUser(String packageName, int userId, IPackageDataObserver observer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    _data.writeStrongInterface(observer);
                    this.mRemote.transact(90, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearApplicationUserData(String packageName, IPackageDataObserver observer, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeStrongInterface(observer);
                    _data.writeInt(userId);
                    this.mRemote.transact(91, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearApplicationProfileData(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(92, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void getPackageSizeInfo(String packageName, int userHandle, IPackageStatsObserver observer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userHandle);
                    _data.writeStrongInterface(observer);
                    this.mRemote.transact(93, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] getSystemSharedLibraryNames() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(94, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getSystemAvailableFeatures() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(95, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean hasSystemFeature(String name, int version) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(version);
                    this.mRemote.transact(96, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void enterSafeMode() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(97, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isSafeMode() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(98, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean hasSystemUidErrors() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(99, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void notifyPackageUse(String packageName, int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(reason);
                    this.mRemote.transact(100, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void notifyDexLoad(String loadingPackageName, Map<String, String> classLoaderContextMap, String loaderIsa) throws RemoteException {
                final Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(loadingPackageName);
                    if (classLoaderContextMap == null) {
                        _data.writeInt(-1);
                    } else {
                        _data.writeInt(classLoaderContextMap.size());
                        classLoaderContextMap.forEach(new BiConsumer() { // from class: android.content.pm.IPackageManager$Stub$Proxy$$ExternalSyntheticLambda0
                            @Override // java.util.function.BiConsumer
                            public final void accept(Object obj, Object obj2) {
                                IPackageManager.Stub.Proxy.lambda$notifyDexLoad$0(_data, (String) obj, (String) obj2);
                            }
                        });
                    }
                    _data.writeString(loaderIsa);
                    this.mRemote.transact(101, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            static /* synthetic */ void lambda$notifyDexLoad$0(Parcel _data, String k, String v) {
                _data.writeString(k);
                _data.writeString(v);
            }

            @Override // android.content.pm.IPackageManager
            public void registerDexModule(String packageName, String dexModulePath, boolean isSharedModule, IDexModuleRegisterCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(dexModulePath);
                    _data.writeBoolean(isSharedModule);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(102, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean performDexOptMode(String packageName, boolean checkProfiles, String targetCompilerFilter, boolean force, boolean bootComplete, String splitName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(checkProfiles);
                    _data.writeString(targetCompilerFilter);
                    _data.writeBoolean(force);
                    _data.writeBoolean(bootComplete);
                    _data.writeString(splitName);
                    this.mRemote.transact(103, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean performDexOptSecondary(String packageName, String targetCompilerFilter, boolean force) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(targetCompilerFilter);
                    _data.writeBoolean(force);
                    this.mRemote.transact(104, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void dumpProfiles(String packageName, boolean dumpClassesAndMethods) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(dumpClassesAndMethods);
                    this.mRemote.transact(105, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void forceDexOpt(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(106, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void reconcileSecondaryDexFiles(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(107, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getMoveStatus(int moveId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(moveId);
                    this.mRemote.transact(108, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void registerMoveCallback(IPackageMoveObserver callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(109, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void unregisterMoveCallback(IPackageMoveObserver callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(110, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int movePackage(String packageName, String volumeUuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(volumeUuid);
                    this.mRemote.transact(111, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int movePrimaryStorage(String volumeUuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volumeUuid);
                    this.mRemote.transact(112, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setInstallLocation(int loc) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(loc);
                    this.mRemote.transact(113, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getInstallLocation() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(114, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int installExistingPackageAsUser(String packageName, int userId, int installFlags, int installReason, List<String> whiteListedPermissions) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    _data.writeInt(installFlags);
                    _data.writeInt(installReason);
                    _data.writeStringList(whiteListedPermissions);
                    this.mRemote.transact(115, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void verifyPendingInstall(int id, int verificationCode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(id);
                    _data.writeInt(verificationCode);
                    this.mRemote.transact(116, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void extendVerificationTimeout(int id, int verificationCodeAtTimeout, long millisecondsToDelay) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(id);
                    _data.writeInt(verificationCodeAtTimeout);
                    _data.writeLong(millisecondsToDelay);
                    this.mRemote.transact(117, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void verifyIntentFilter(int id, int verificationCode, List<String> failedDomains) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(id);
                    _data.writeInt(verificationCode);
                    _data.writeStringList(failedDomains);
                    this.mRemote.transact(118, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getIntentVerificationStatus(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(119, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean updateIntentVerificationStatus(String packageName, int status, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(status);
                    _data.writeInt(userId);
                    this.mRemote.transact(120, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getIntentFilterVerifications(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(121, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getAllIntentFilters(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(122, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public VerifierDeviceIdentity getVerifierDeviceIdentity() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(123, _data, _reply, 0);
                    _reply.readException();
                    VerifierDeviceIdentity _result = (VerifierDeviceIdentity) _reply.readTypedObject(VerifierDeviceIdentity.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isFirstBoot() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(124, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isOnlyCoreApps() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(125, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isDeviceUpgrading() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(126, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isStorageLow() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(127, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setApplicationHiddenSettingAsUser(String packageName, boolean hidden, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(hidden);
                    _data.writeInt(userId);
                    this.mRemote.transact(128, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean getApplicationHiddenSettingAsUser(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(129, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setSystemAppHiddenUntilInstalled(String packageName, boolean hidden) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(hidden);
                    this.mRemote.transact(130, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setSystemAppInstallState(String packageName, boolean installed, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(installed);
                    _data.writeInt(userId);
                    this.mRemote.transact(131, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public IPackageInstaller getPackageInstaller() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(132, _data, _reply, 0);
                    _reply.readException();
                    IPackageInstaller _result = IPackageInstaller.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setBlockUninstallForUser(String packageName, boolean blockUninstall, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(blockUninstall);
                    _data.writeInt(userId);
                    this.mRemote.transact(133, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean getBlockUninstallForUser(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(134, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public KeySet getKeySetByAlias(String packageName, String alias) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(alias);
                    this.mRemote.transact(135, _data, _reply, 0);
                    _reply.readException();
                    KeySet _result = (KeySet) _reply.readTypedObject(KeySet.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public KeySet getSigningKeySet(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(136, _data, _reply, 0);
                    _reply.readException();
                    KeySet _result = (KeySet) _reply.readTypedObject(KeySet.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageSignedByKeySet(String packageName, KeySet ks) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeTypedObject(ks, 0);
                    this.mRemote.transact(137, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageSignedByKeySetExactly(String packageName, KeySet ks) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeTypedObject(ks, 0);
                    this.mRemote.transact(138, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getPermissionControllerPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(139, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getSdkSandboxPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(140, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getInstantApps(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(141, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public byte[] getInstantAppCookie(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(142, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setInstantAppCookie(String packageName, byte[] cookie, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeByteArray(cookie);
                    _data.writeInt(userId);
                    this.mRemote.transact(143, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public Bitmap getInstantAppIcon(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(144, _data, _reply, 0);
                    _reply.readException();
                    Bitmap _result = (Bitmap) _reply.readTypedObject(Bitmap.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isInstantApp(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(145, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setRequiredForSystemUser(String packageName, boolean systemUserApp) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(systemUserApp);
                    this.mRemote.transact(146, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setUpdateAvailable(String packageName, boolean updateAvaialble) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(updateAvaialble);
                    this.mRemote.transact(147, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getServicesSystemSharedLibraryPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(148, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getSharedSystemSharedLibraryPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(149, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ChangedPackages getChangedPackages(int sequenceNumber, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(sequenceNumber);
                    _data.writeInt(userId);
                    this.mRemote.transact(150, _data, _reply, 0);
                    _reply.readException();
                    ChangedPackages _result = (ChangedPackages) _reply.readTypedObject(ChangedPackages.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageDeviceAdminOnAnyUser(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(151, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getInstallReason(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(152, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getSharedLibraries(String packageName, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(153, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getDeclaredSharedLibraries(String packageName, long flags, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeLong(flags);
                    _data.writeInt(userId);
                    this.mRemote.transact(154, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean canRequestPackageInstalls(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(155, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deletePreloadsFileCache() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(156, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ComponentName getInstantAppResolverComponent() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(157, _data, _reply, 0);
                    _reply.readException();
                    ComponentName _result = (ComponentName) _reply.readTypedObject(ComponentName.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ComponentName getInstantAppResolverSettingsComponent() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(158, _data, _reply, 0);
                    _reply.readException();
                    ComponentName _result = (ComponentName) _reply.readTypedObject(ComponentName.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ComponentName getInstantAppInstallerComponent() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(159, _data, _reply, 0);
                    _reply.readException();
                    ComponentName _result = (ComponentName) _reply.readTypedObject(ComponentName.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getInstantAppAndroidId(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(160, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public IArtManager getArtManager() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(161, _data, _reply, 0);
                    _reply.readException();
                    IArtManager _result = IArtManager.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setHarmfulAppWarning(String packageName, CharSequence warning, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    if (warning != null) {
                        _data.writeInt(1);
                        TextUtils.writeToParcel(warning, _data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeInt(userId);
                    this.mRemote.transact(162, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public CharSequence getHarmfulAppWarning(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(163, _data, _reply, 0);
                    _reply.readException();
                    CharSequence _result = (CharSequence) _reply.readTypedObject(TextUtils.CHAR_SEQUENCE_CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean hasSigningCertificate(String packageName, byte[] signingCertificate, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeByteArray(signingCertificate);
                    _data.writeInt(flags);
                    this.mRemote.transact(164, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean hasUidSigningCertificate(int uid, byte[] signingCertificate, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeByteArray(signingCertificate);
                    _data.writeInt(flags);
                    this.mRemote.transact(165, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getDefaultTextClassifierPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(166, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getSystemTextClassifierPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(167, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getAttentionServicePackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(168, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getRotationResolverPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(169, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getWellbeingPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(170, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getAppPredictionServicePackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(171, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getSystemCaptionsServicePackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(172, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getSetupWizardPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(173, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getIncidentReportApproverPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(174, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getContentCaptureServicePackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(175, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageStateProtected(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(176, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void sendDeviceCustomizationReadyBroadcast() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(177, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<ModuleInfo> getInstalledModules(int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(flags);
                    this.mRemote.transact(178, _data, _reply, 0);
                    _reply.readException();
                    List<ModuleInfo> _result = _reply.createTypedArrayList(ModuleInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ModuleInfo getModuleInfo(String packageName, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(flags);
                    this.mRemote.transact(179, _data, _reply, 0);
                    _reply.readException();
                    ModuleInfo _result = (ModuleInfo) _reply.readTypedObject(ModuleInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getRuntimePermissionsVersion(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(180, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setRuntimePermissionsVersion(int version, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(version);
                    _data.writeInt(userId);
                    this.mRemote.transact(181, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void notifyPackagesReplacedReceived(String[] packages) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(packages);
                    this.mRemote.transact(182, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void requestPackageChecksums(String packageName, boolean includeSplits, int optional, int required, List trustedInstallers, IOnChecksumsReadyListener onChecksumsReadyListener, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeBoolean(includeSplits);
                    _data.writeInt(optional);
                    _data.writeInt(required);
                    _data.writeList(trustedInstallers);
                    _data.writeStrongInterface(onChecksumsReadyListener);
                    _data.writeInt(userId);
                    this.mRemote.transact(183, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public IntentSender getLaunchIntentSenderForPackage(String packageName, String callingPackage, String featureId, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(callingPackage);
                    _data.writeString(featureId);
                    _data.writeInt(userId);
                    this.mRemote.transact(184, _data, _reply, 0);
                    _reply.readException();
                    IntentSender _result = (IntentSender) _reply.readTypedObject(IntentSender.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] getAppOpPermissionPackages(String permissionName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(permissionName);
                    this.mRemote.transact(185, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PermissionGroupInfo getPermissionGroupInfo(String name, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(flags);
                    this.mRemote.transact(186, _data, _reply, 0);
                    _reply.readException();
                    PermissionGroupInfo _result = (PermissionGroupInfo) _reply.readTypedObject(PermissionGroupInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean addPermission(PermissionInfo info) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(info, 0);
                    this.mRemote.transact(187, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean addPermissionAsync(PermissionInfo info) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(info, 0);
                    this.mRemote.transact(188, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void removePermission(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    this.mRemote.transact(189, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int checkPermission(String permName, String pkgName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(permName);
                    _data.writeString(pkgName);
                    _data.writeInt(userId);
                    this.mRemote.transact(190, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void grantRuntimePermission(String packageName, String permissionName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(permissionName);
                    _data.writeInt(userId);
                    this.mRemote.transact(191, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int checkUidPermission(String permName, int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(permName);
                    _data.writeInt(uid);
                    this.mRemote.transact(192, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setMimeGroup(String packageName, String group, List<String> mimeTypes) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(group);
                    _data.writeStringList(mimeTypes);
                    this.mRemote.transact(193, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getSplashScreenTheme(String packageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(194, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setSplashScreenTheme(String packageName, String themeName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(themeName);
                    _data.writeInt(userId);
                    this.mRemote.transact(195, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<String> getMimeGroup(String packageName, String group) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(group);
                    this.mRemote.transact(196, _data, _reply, 0);
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isAutoRevokeWhitelisted(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(197, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void makeProviderVisible(int recipientAppId, String visibleAuthority) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(recipientAppId);
                    _data.writeString(visibleAuthority);
                    this.mRemote.transact(198, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void makeUidVisible(int recipientAppId, int visibleUid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(recipientAppId);
                    _data.writeInt(visibleUid);
                    this.mRemote.transact(199, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public IBinder getHoldLockToken() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(200, _data, _reply, 0);
                    _reply.readException();
                    IBinder _result = _reply.readStrongBinder();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void holdLock(IBinder token, int durationMs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeInt(durationMs);
                    this.mRemote.transact(201, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PackageManager.Property getProperty(String propertyName, String packageName, String className) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(propertyName);
                    _data.writeString(packageName);
                    _data.writeString(className);
                    this.mRemote.transact(202, _data, _reply, 0);
                    _reply.readException();
                    PackageManager.Property _result = (PackageManager.Property) _reply.readTypedObject(PackageManager.Property.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryProperty(String propertyName, int componentType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(propertyName);
                    _data.writeInt(componentType);
                    this.mRemote.transact(203, _data, _reply, 0);
                    _reply.readException();
                    ParceledListSlice _result = (ParceledListSlice) _reply.readTypedObject(ParceledListSlice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setKeepUninstalledPackages(List<String> packageList) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringList(packageList);
                    this.mRemote.transact(204, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean canPackageQuery(String sourcePackageName, String targetPackageName, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(sourcePackageName);
                    _data.writeString(targetPackageName);
                    _data.writeInt(userId);
                    this.mRemote.transact(205, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 204;
        }
    }
}
