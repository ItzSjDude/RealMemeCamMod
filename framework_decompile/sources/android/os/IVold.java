package android.os;

import android.os.IVoldListener;
import android.os.IVoldMountCallback;
import android.os.IVoldTaskListener;
import android.os.incremental.IncrementalFileSystemControlParcel;
import android.provider.Telephony;
import java.io.FileDescriptor;

/* loaded from: classes3.dex */
public interface IVold extends IInterface {
    public static final int FSTRIM_FLAG_DEEP_TRIM = 1;
    public static final int MOUNT_FLAG_PRIMARY = 1;
    public static final int MOUNT_FLAG_VISIBLE_FOR_READ = 2;
    public static final int MOUNT_FLAG_VISIBLE_FOR_WRITE = 4;
    public static final int PARTITION_TYPE_MIXED = 2;
    public static final int PARTITION_TYPE_PRIVATE = 1;
    public static final int PARTITION_TYPE_PUBLIC = 0;
    public static final int REMOUNT_MODE_ANDROID_WRITABLE = 4;
    public static final int REMOUNT_MODE_DEFAULT = 1;
    public static final int REMOUNT_MODE_INSTALLER = 2;
    public static final int REMOUNT_MODE_NONE = 0;
    public static final int REMOUNT_MODE_OPLUS_ANDROID_WRITABLE = 5;
    public static final int REMOUNT_MODE_PASS_THROUGH = 3;
    public static final int STORAGE_FLAG_CE = 2;
    public static final int STORAGE_FLAG_DE = 1;
    public static final int VOLUME_STATE_BAD_REMOVAL = 8;
    public static final int VOLUME_STATE_CHECKING = 1;
    public static final int VOLUME_STATE_EJECTING = 5;
    public static final int VOLUME_STATE_FORMATTING = 4;
    public static final int VOLUME_STATE_MOUNTED = 2;
    public static final int VOLUME_STATE_MOUNTED_READ_ONLY = 3;
    public static final int VOLUME_STATE_REMOVED = 7;
    public static final int VOLUME_STATE_UNMOUNTABLE = 6;
    public static final int VOLUME_STATE_UNMOUNTED = 0;
    public static final int VOLUME_TYPE_ASEC = 3;
    public static final int VOLUME_TYPE_EMULATED = 2;
    public static final int VOLUME_TYPE_OBB = 4;
    public static final int VOLUME_TYPE_PRIVATE = 1;
    public static final int VOLUME_TYPE_PUBLIC = 0;
    public static final int VOLUME_TYPE_STUB = 5;

    void abortChanges(String str, boolean z) throws RemoteException;

    void abortFuse() throws RemoteException;

    void abortIdleMaint(IVoldTaskListener iVoldTaskListener) throws RemoteException;

    void addAppIds(String[] strArr, int[] iArr) throws RemoteException;

    void addSandboxIds(int[] iArr, String[] strArr) throws RemoteException;

    void addUserKeyAuth(int i, int i2, String str) throws RemoteException;

    void benchmark(String str, IVoldTaskListener iVoldTaskListener) throws RemoteException;

    void bindMount(String str, String str2) throws RemoteException;

    void checkBeforeMount(String str) throws RemoteException;

    int clearCache(int i) throws RemoteException;

    void clearUserKeyAuth(int i, int i2, String str) throws RemoteException;

    void commitChanges() throws RemoteException;

    String createObb(String str, int i) throws RemoteException;

    String createStubVolume(String str, String str2, String str3, String str4, String str5, int i) throws RemoteException;

    void createUserKey(int i, int i2, boolean z) throws RemoteException;

    void destroyDsuMetadataKey(String str) throws RemoteException;

    void destroyObb(String str) throws RemoteException;

    void destroySandboxForApp(String str, String str2, int i) throws RemoteException;

    void destroyStubVolume(String str) throws RemoteException;

    void destroyUserKey(int i) throws RemoteException;

    void destroyUserStorage(String str, int i, int i2) throws RemoteException;

    void earlyBootEnded() throws RemoteException;

    void encryptFstab(String str, String str2, boolean z, String str3) throws RemoteException;

    void ensureAppDirsCreated(String[] strArr, int i) throws RemoteException;

    byte[] exportSensitiveBePublicKey(int i, int i2) throws RemoteException;

    byte[] exportSensitiveKey(int i, int i2, boolean z) throws RemoteException;

    void fbeEnable() throws RemoteException;

    void fixateNewestUserKeyAuth(int i) throws RemoteException;

    void fixupAppDir(String str, int i) throws RemoteException;

    void forgetPartition(String str, String str2) throws RemoteException;

    void format(String str, String str2) throws RemoteException;

    void fstrim(int i, IVoldTaskListener iVoldTaskListener) throws RemoteException;

    void fsyncCtrl(String str) throws RemoteException;

    int getStorageLifeTime() throws RemoteException;

    int[] getUnlockedUsers() throws RemoteException;

    int getWriteAmount() throws RemoteException;

    boolean incFsEnabled() throws RemoteException;

    void initUser0() throws RemoteException;

    boolean isCheckpointing() throws RemoteException;

    void lockUserKey(int i) throws RemoteException;

    void markBootAttempt() throws RemoteException;

    void monitor() throws RemoteException;

    void mount(String str, int i, int i2, IVoldMountCallback iVoldMountCallback) throws RemoteException;

    FileDescriptor mountAppFuse(int i, int i2) throws RemoteException;

    void mountFstab(String str, String str2) throws RemoteException;

    IncrementalFileSystemControlParcel mountIncFs(String str, String str2, int i, String str3) throws RemoteException;

    void moveStorage(String str, String str2, IVoldTaskListener iVoldTaskListener) throws RemoteException;

    boolean needsCheckpoint() throws RemoteException;

    boolean needsRollback() throws RemoteException;

    void onSecureKeyguardStateChanged(boolean z) throws RemoteException;

    void onSecureKeyguardStateChangedForSensitiveFile(boolean z, int i, int i2) throws RemoteException;

    void onUserAdded(int i, int i2) throws RemoteException;

    void onUserRemoved(int i) throws RemoteException;

    void onUserStarted(int i) throws RemoteException;

    void onUserStopped(int i) throws RemoteException;

    FileDescriptor openAppFuseFile(int i, int i2, int i3, int i4) throws RemoteException;

    void partition(String str, int i, int i2) throws RemoteException;

    void prepareCheckpoint() throws RemoteException;

    void prepareSandboxForApp(String str, int i, String str2, int i2) throws RemoteException;

    void prepareUserStorage(String str, int i, int i2, int i3) throws RemoteException;

    void refreshLatestWrite() throws RemoteException;

    void remountAppStorageDirs(int i, int i2, String[] strArr) throws RemoteException;

    void remountUid(int i, int i2) throws RemoteException;

    void reset() throws RemoteException;

    void resetCheckpoint() throws RemoteException;

    void restoreCheckpoint(String str) throws RemoteException;

    void restoreCheckpointPart(String str, int i) throws RemoteException;

    void runIdleMaint(boolean z, IVoldTaskListener iVoldTaskListener) throws RemoteException;

    void sdlockClearPassword(String str) throws RemoteException;

    void sdlockErase() throws RemoteException;

    String sdlockGetCid() throws RemoteException;

    String sdlockPoll() throws RemoteException;

    void sdlockSetPassword(String str) throws RemoteException;

    void sdlockUnlock(String str) throws RemoteException;

    void setGCUrgentPace(int i, int i2, float f, float f2, int i3) throws RemoteException;

    void setIncFsMountOptions(IncrementalFileSystemControlParcel incrementalFileSystemControlParcel, boolean z, boolean z2, String str) throws RemoteException;

    void setListener(IVoldListener iVoldListener) throws RemoteException;

    void setStorageBindingSeed(byte[] bArr) throws RemoteException;

    void setupAppDir(String str, int i) throws RemoteException;

    void shutdown() throws RemoteException;

    void startCheckpoint(int i) throws RemoteException;

    int startserviceAppFuse() throws RemoteException;

    int stopserviceAppFuse() throws RemoteException;

    boolean supportsBlockCheckpoint() throws RemoteException;

    boolean supportsCheckpoint() throws RemoteException;

    boolean supportsFileCheckpoint() throws RemoteException;

    void unlockSensitiveKey(int i, int i2, String str, String str2, int i3) throws RemoteException;

    void unlockUserKey(int i, int i2, String str) throws RemoteException;

    void unmount(String str) throws RemoteException;

    void unmountAppFuse(int i, int i2) throws RemoteException;

    void unmountAppStorageDirs(int i, int i2, String[] strArr) throws RemoteException;

    void unmountIncFs(String str) throws RemoteException;

    public static class Default implements IVold {
        @Override // android.os.IVold
        public void setListener(IVoldListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void abortFuse() throws RemoteException {
        }

        @Override // android.os.IVold
        public void monitor() throws RemoteException {
        }

        @Override // android.os.IVold
        public void reset() throws RemoteException {
        }

        @Override // android.os.IVold
        public void shutdown() throws RemoteException {
        }

        @Override // android.os.IVold
        public void onUserAdded(int userId, int userSerial) throws RemoteException {
        }

        @Override // android.os.IVold
        public void onUserRemoved(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void onUserStarted(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void onUserStopped(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void addAppIds(String[] packageNames, int[] appIds) throws RemoteException {
        }

        @Override // android.os.IVold
        public void addSandboxIds(int[] appIds, String[] sandboxIds) throws RemoteException {
        }

        @Override // android.os.IVold
        public void onSecureKeyguardStateChanged(boolean isShowing) throws RemoteException {
        }

        @Override // android.os.IVold
        public void partition(String diskId, int partitionType, int ratio) throws RemoteException {
        }

        @Override // android.os.IVold
        public void forgetPartition(String partGuid, String fsUuid) throws RemoteException {
        }

        @Override // android.os.IVold
        public void mount(String volId, int mountFlags, int mountUserId, IVoldMountCallback callback) throws RemoteException {
        }

        @Override // android.os.IVold
        public void unmount(String volId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void format(String volId, String fsType) throws RemoteException {
        }

        @Override // android.os.IVold
        public void benchmark(String volId, IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void checkBeforeMount(String volId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fsyncCtrl(String fsyncMode) throws RemoteException {
        }

        @Override // android.os.IVold
        public void unlockSensitiveKey(int userId, int userSerial, String token, String secret, int sensitiveType) throws RemoteException {
        }

        @Override // android.os.IVold
        public void onSecureKeyguardStateChangedForSensitiveFile(boolean isShowing, int userId, int sensitiveType) throws RemoteException {
        }

        @Override // android.os.IVold
        public byte[] exportSensitiveKey(int userId, int sensitiveType, boolean useDefault) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public byte[] exportSensitiveBePublicKey(int userId, int sensitiveType) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void moveStorage(String fromVolId, String toVolId, IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void remountUid(int uid, int remountMode) throws RemoteException {
        }

        @Override // android.os.IVold
        public void remountAppStorageDirs(int uid, int pid, String[] packageNames) throws RemoteException {
        }

        @Override // android.os.IVold
        public void unmountAppStorageDirs(int uid, int pid, String[] packageNames) throws RemoteException {
        }

        @Override // android.os.IVold
        public void setupAppDir(String path, int appUid) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fixupAppDir(String path, int appUid) throws RemoteException {
        }

        @Override // android.os.IVold
        public void ensureAppDirsCreated(String[] paths, int appUid) throws RemoteException {
        }

        @Override // android.os.IVold
        public String createObb(String sourcePath, int ownerGid) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void destroyObb(String volId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fstrim(int fstrimFlags, IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void runIdleMaint(boolean needGC, IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void abortIdleMaint(IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public int getStorageLifeTime() throws RemoteException {
            return 0;
        }

        @Override // android.os.IVold
        public void setGCUrgentPace(int neededSegments, int minSegmentThreshold, float dirtyReclaimRate, float reclaimWeight, int gcPeriod) throws RemoteException {
        }

        @Override // android.os.IVold
        public void refreshLatestWrite() throws RemoteException {
        }

        @Override // android.os.IVold
        public int getWriteAmount() throws RemoteException {
            return 0;
        }

        @Override // android.os.IVold
        public FileDescriptor mountAppFuse(int uid, int mountId) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void unmountAppFuse(int uid, int mountId) throws RemoteException {
        }

        @Override // android.os.IVold
        public int startserviceAppFuse() throws RemoteException {
            return 0;
        }

        @Override // android.os.IVold
        public int stopserviceAppFuse() throws RemoteException {
            return 0;
        }

        @Override // android.os.IVold
        public int clearCache(int whatsAppExist) throws RemoteException {
            return 0;
        }

        @Override // android.os.IVold
        public void fbeEnable() throws RemoteException {
        }

        @Override // android.os.IVold
        public void initUser0() throws RemoteException {
        }

        @Override // android.os.IVold
        public void mountFstab(String blkDevice, String mountPoint) throws RemoteException {
        }

        @Override // android.os.IVold
        public void encryptFstab(String blkDevice, String mountPoint, boolean shouldFormat, String fsType) throws RemoteException {
        }

        @Override // android.os.IVold
        public void setStorageBindingSeed(byte[] seed) throws RemoteException {
        }

        @Override // android.os.IVold
        public void createUserKey(int userId, int userSerial, boolean ephemeral) throws RemoteException {
        }

        @Override // android.os.IVold
        public void destroyUserKey(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void addUserKeyAuth(int userId, int userSerial, String secret) throws RemoteException {
        }

        @Override // android.os.IVold
        public void clearUserKeyAuth(int userId, int userSerial, String secret) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fixateNewestUserKeyAuth(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public int[] getUnlockedUsers() throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void unlockUserKey(int userId, int userSerial, String secret) throws RemoteException {
        }

        @Override // android.os.IVold
        public void lockUserKey(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void prepareUserStorage(String uuid, int userId, int userSerial, int storageFlags) throws RemoteException {
        }

        @Override // android.os.IVold
        public void destroyUserStorage(String uuid, int userId, int storageFlags) throws RemoteException {
        }

        @Override // android.os.IVold
        public void prepareSandboxForApp(String packageName, int appId, String sandboxId, int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void destroySandboxForApp(String packageName, String sandboxId, int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void startCheckpoint(int retry) throws RemoteException {
        }

        @Override // android.os.IVold
        public boolean needsCheckpoint() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public boolean needsRollback() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public boolean isCheckpointing() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public void abortChanges(String device, boolean retry) throws RemoteException {
        }

        @Override // android.os.IVold
        public void commitChanges() throws RemoteException {
        }

        @Override // android.os.IVold
        public void prepareCheckpoint() throws RemoteException {
        }

        @Override // android.os.IVold
        public void restoreCheckpoint(String device) throws RemoteException {
        }

        @Override // android.os.IVold
        public void restoreCheckpointPart(String device, int count) throws RemoteException {
        }

        @Override // android.os.IVold
        public void markBootAttempt() throws RemoteException {
        }

        @Override // android.os.IVold
        public boolean supportsCheckpoint() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public boolean supportsBlockCheckpoint() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public boolean supportsFileCheckpoint() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public void resetCheckpoint() throws RemoteException {
        }

        @Override // android.os.IVold
        public void earlyBootEnded() throws RemoteException {
        }

        @Override // android.os.IVold
        public String createStubVolume(String sourcePath, String mountPath, String fsType, String fsUuid, String fsLabel, int flags) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void destroyStubVolume(String volId) throws RemoteException {
        }

        @Override // android.os.IVold
        public FileDescriptor openAppFuseFile(int uid, int mountId, int fileId, int flags) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public boolean incFsEnabled() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public IncrementalFileSystemControlParcel mountIncFs(String backingPath, String targetDir, int flags, String sysfsName) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void unmountIncFs(String dir) throws RemoteException {
        }

        @Override // android.os.IVold
        public void setIncFsMountOptions(IncrementalFileSystemControlParcel control, boolean enableReadLogs, boolean enableReadTimeouts, String sysfsName) throws RemoteException {
        }

        @Override // android.os.IVold
        public void bindMount(String sourceDir, String targetDir) throws RemoteException {
        }

        @Override // android.os.IVold
        public void sdlockSetPassword(String password) throws RemoteException {
        }

        @Override // android.os.IVold
        public void sdlockClearPassword(String password) throws RemoteException {
        }

        @Override // android.os.IVold
        public void sdlockUnlock(String password) throws RemoteException {
        }

        @Override // android.os.IVold
        public String sdlockGetCid() throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public String sdlockPoll() throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void sdlockErase() throws RemoteException {
        }

        @Override // android.os.IVold
        public void destroyDsuMetadataKey(String dsuSlot) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IVold {
        public static final String DESCRIPTOR = "android.os.IVold";
        static final int TRANSACTION_abortChanges = 67;
        static final int TRANSACTION_abortFuse = 2;
        static final int TRANSACTION_abortIdleMaint = 36;
        static final int TRANSACTION_addAppIds = 10;
        static final int TRANSACTION_addSandboxIds = 11;
        static final int TRANSACTION_addUserKeyAuth = 53;
        static final int TRANSACTION_benchmark = 18;
        static final int TRANSACTION_bindMount = 85;
        static final int TRANSACTION_checkBeforeMount = 19;
        static final int TRANSACTION_clearCache = 45;
        static final int TRANSACTION_clearUserKeyAuth = 54;
        static final int TRANSACTION_commitChanges = 68;
        static final int TRANSACTION_createObb = 32;
        static final int TRANSACTION_createStubVolume = 78;
        static final int TRANSACTION_createUserKey = 51;
        static final int TRANSACTION_destroyDsuMetadataKey = 92;
        static final int TRANSACTION_destroyObb = 33;
        static final int TRANSACTION_destroySandboxForApp = 62;
        static final int TRANSACTION_destroyStubVolume = 79;
        static final int TRANSACTION_destroyUserKey = 52;
        static final int TRANSACTION_destroyUserStorage = 60;
        static final int TRANSACTION_earlyBootEnded = 77;
        static final int TRANSACTION_encryptFstab = 49;
        static final int TRANSACTION_ensureAppDirsCreated = 31;
        static final int TRANSACTION_exportSensitiveBePublicKey = 24;
        static final int TRANSACTION_exportSensitiveKey = 23;
        static final int TRANSACTION_fbeEnable = 46;
        static final int TRANSACTION_fixateNewestUserKeyAuth = 55;
        static final int TRANSACTION_fixupAppDir = 30;
        static final int TRANSACTION_forgetPartition = 14;
        static final int TRANSACTION_format = 17;
        static final int TRANSACTION_fstrim = 34;
        static final int TRANSACTION_fsyncCtrl = 20;
        static final int TRANSACTION_getStorageLifeTime = 37;
        static final int TRANSACTION_getUnlockedUsers = 56;
        static final int TRANSACTION_getWriteAmount = 40;
        static final int TRANSACTION_incFsEnabled = 81;
        static final int TRANSACTION_initUser0 = 47;
        static final int TRANSACTION_isCheckpointing = 66;
        static final int TRANSACTION_lockUserKey = 58;
        static final int TRANSACTION_markBootAttempt = 72;
        static final int TRANSACTION_monitor = 3;
        static final int TRANSACTION_mount = 15;
        static final int TRANSACTION_mountAppFuse = 41;
        static final int TRANSACTION_mountFstab = 48;
        static final int TRANSACTION_mountIncFs = 82;
        static final int TRANSACTION_moveStorage = 25;
        static final int TRANSACTION_needsCheckpoint = 64;
        static final int TRANSACTION_needsRollback = 65;
        static final int TRANSACTION_onSecureKeyguardStateChanged = 12;
        static final int TRANSACTION_onSecureKeyguardStateChangedForSensitiveFile = 22;
        static final int TRANSACTION_onUserAdded = 6;
        static final int TRANSACTION_onUserRemoved = 7;
        static final int TRANSACTION_onUserStarted = 8;
        static final int TRANSACTION_onUserStopped = 9;
        static final int TRANSACTION_openAppFuseFile = 80;
        static final int TRANSACTION_partition = 13;
        static final int TRANSACTION_prepareCheckpoint = 69;
        static final int TRANSACTION_prepareSandboxForApp = 61;
        static final int TRANSACTION_prepareUserStorage = 59;
        static final int TRANSACTION_refreshLatestWrite = 39;
        static final int TRANSACTION_remountAppStorageDirs = 27;
        static final int TRANSACTION_remountUid = 26;
        static final int TRANSACTION_reset = 4;
        static final int TRANSACTION_resetCheckpoint = 76;
        static final int TRANSACTION_restoreCheckpoint = 70;
        static final int TRANSACTION_restoreCheckpointPart = 71;
        static final int TRANSACTION_runIdleMaint = 35;
        static final int TRANSACTION_sdlockClearPassword = 87;
        static final int TRANSACTION_sdlockErase = 91;
        static final int TRANSACTION_sdlockGetCid = 89;
        static final int TRANSACTION_sdlockPoll = 90;
        static final int TRANSACTION_sdlockSetPassword = 86;
        static final int TRANSACTION_sdlockUnlock = 88;
        static final int TRANSACTION_setGCUrgentPace = 38;
        static final int TRANSACTION_setIncFsMountOptions = 84;
        static final int TRANSACTION_setListener = 1;
        static final int TRANSACTION_setStorageBindingSeed = 50;
        static final int TRANSACTION_setupAppDir = 29;
        static final int TRANSACTION_shutdown = 5;
        static final int TRANSACTION_startCheckpoint = 63;
        static final int TRANSACTION_startserviceAppFuse = 43;
        static final int TRANSACTION_stopserviceAppFuse = 44;
        static final int TRANSACTION_supportsBlockCheckpoint = 74;
        static final int TRANSACTION_supportsCheckpoint = 73;
        static final int TRANSACTION_supportsFileCheckpoint = 75;
        static final int TRANSACTION_unlockSensitiveKey = 21;
        static final int TRANSACTION_unlockUserKey = 57;
        static final int TRANSACTION_unmount = 16;
        static final int TRANSACTION_unmountAppFuse = 42;
        static final int TRANSACTION_unmountAppStorageDirs = 28;
        static final int TRANSACTION_unmountIncFs = 83;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVold asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IVold)) {
                return (IVold) iin;
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
                    return "setListener";
                case 2:
                    return "abortFuse";
                case 3:
                    return "monitor";
                case 4:
                    return "reset";
                case 5:
                    return "shutdown";
                case 6:
                    return "onUserAdded";
                case 7:
                    return "onUserRemoved";
                case 8:
                    return "onUserStarted";
                case 9:
                    return "onUserStopped";
                case 10:
                    return "addAppIds";
                case 11:
                    return "addSandboxIds";
                case 12:
                    return "onSecureKeyguardStateChanged";
                case 13:
                    return "partition";
                case 14:
                    return "forgetPartition";
                case 15:
                    return "mount";
                case 16:
                    return "unmount";
                case 17:
                    return Telephony.CellBroadcasts.MESSAGE_FORMAT;
                case 18:
                    return "benchmark";
                case 19:
                    return "checkBeforeMount";
                case 20:
                    return "fsyncCtrl";
                case 21:
                    return "unlockSensitiveKey";
                case 22:
                    return "onSecureKeyguardStateChangedForSensitiveFile";
                case 23:
                    return "exportSensitiveKey";
                case 24:
                    return "exportSensitiveBePublicKey";
                case 25:
                    return "moveStorage";
                case 26:
                    return "remountUid";
                case 27:
                    return "remountAppStorageDirs";
                case 28:
                    return "unmountAppStorageDirs";
                case 29:
                    return "setupAppDir";
                case 30:
                    return "fixupAppDir";
                case 31:
                    return "ensureAppDirsCreated";
                case 32:
                    return "createObb";
                case 33:
                    return "destroyObb";
                case 34:
                    return "fstrim";
                case 35:
                    return "runIdleMaint";
                case 36:
                    return "abortIdleMaint";
                case 37:
                    return "getStorageLifeTime";
                case 38:
                    return "setGCUrgentPace";
                case 39:
                    return "refreshLatestWrite";
                case 40:
                    return "getWriteAmount";
                case 41:
                    return "mountAppFuse";
                case 42:
                    return "unmountAppFuse";
                case 43:
                    return "startserviceAppFuse";
                case 44:
                    return "stopserviceAppFuse";
                case 45:
                    return "clearCache";
                case 46:
                    return "fbeEnable";
                case 47:
                    return "initUser0";
                case 48:
                    return "mountFstab";
                case 49:
                    return "encryptFstab";
                case 50:
                    return "setStorageBindingSeed";
                case 51:
                    return "createUserKey";
                case 52:
                    return "destroyUserKey";
                case 53:
                    return "addUserKeyAuth";
                case 54:
                    return "clearUserKeyAuth";
                case 55:
                    return "fixateNewestUserKeyAuth";
                case 56:
                    return "getUnlockedUsers";
                case 57:
                    return "unlockUserKey";
                case 58:
                    return "lockUserKey";
                case 59:
                    return "prepareUserStorage";
                case 60:
                    return "destroyUserStorage";
                case 61:
                    return "prepareSandboxForApp";
                case 62:
                    return "destroySandboxForApp";
                case 63:
                    return "startCheckpoint";
                case 64:
                    return "needsCheckpoint";
                case 65:
                    return "needsRollback";
                case 66:
                    return "isCheckpointing";
                case 67:
                    return "abortChanges";
                case 68:
                    return "commitChanges";
                case 69:
                    return "prepareCheckpoint";
                case 70:
                    return "restoreCheckpoint";
                case 71:
                    return "restoreCheckpointPart";
                case 72:
                    return "markBootAttempt";
                case 73:
                    return "supportsCheckpoint";
                case 74:
                    return "supportsBlockCheckpoint";
                case 75:
                    return "supportsFileCheckpoint";
                case 76:
                    return "resetCheckpoint";
                case 77:
                    return "earlyBootEnded";
                case 78:
                    return "createStubVolume";
                case 79:
                    return "destroyStubVolume";
                case 80:
                    return "openAppFuseFile";
                case 81:
                    return "incFsEnabled";
                case 82:
                    return "mountIncFs";
                case 83:
                    return "unmountIncFs";
                case 84:
                    return "setIncFsMountOptions";
                case 85:
                    return "bindMount";
                case 86:
                    return "sdlockSetPassword";
                case 87:
                    return "sdlockClearPassword";
                case 88:
                    return "sdlockUnlock";
                case 89:
                    return "sdlockGetCid";
                case 90:
                    return "sdlockPoll";
                case 91:
                    return "sdlockErase";
                case 92:
                    return "destroyDsuMetadataKey";
                default:
                    return null;
            }
        }

        @Override // android.os.Binder
        public String getTransactionName(int transactionCode) {
            return getDefaultTransactionName(transactionCode);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
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
                            IVoldListener _arg0 = IVoldListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            setListener(_arg0);
                            reply.writeNoException();
                            return true;
                        case 2:
                            abortFuse();
                            reply.writeNoException();
                            return true;
                        case 3:
                            monitor();
                            reply.writeNoException();
                            return true;
                        case 4:
                            reset();
                            reply.writeNoException();
                            return true;
                        case 5:
                            shutdown();
                            reply.writeNoException();
                            return true;
                        case 6:
                            int _arg02 = data.readInt();
                            int _arg1 = data.readInt();
                            data.enforceNoDataAvail();
                            onUserAdded(_arg02, _arg1);
                            reply.writeNoException();
                            return true;
                        case 7:
                            int _arg03 = data.readInt();
                            data.enforceNoDataAvail();
                            onUserRemoved(_arg03);
                            reply.writeNoException();
                            return true;
                        case 8:
                            int _arg04 = data.readInt();
                            data.enforceNoDataAvail();
                            onUserStarted(_arg04);
                            reply.writeNoException();
                            return true;
                        case 9:
                            int _arg05 = data.readInt();
                            data.enforceNoDataAvail();
                            onUserStopped(_arg05);
                            reply.writeNoException();
                            return true;
                        case 10:
                            String[] _arg06 = data.createStringArray();
                            int[] _arg12 = data.createIntArray();
                            data.enforceNoDataAvail();
                            addAppIds(_arg06, _arg12);
                            reply.writeNoException();
                            return true;
                        case 11:
                            int[] _arg07 = data.createIntArray();
                            String[] _arg13 = data.createStringArray();
                            data.enforceNoDataAvail();
                            addSandboxIds(_arg07, _arg13);
                            reply.writeNoException();
                            return true;
                        case 12:
                            boolean _arg08 = data.readBoolean();
                            data.enforceNoDataAvail();
                            onSecureKeyguardStateChanged(_arg08);
                            reply.writeNoException();
                            return true;
                        case 13:
                            String _arg09 = data.readString();
                            int _arg14 = data.readInt();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            partition(_arg09, _arg14, _arg2);
                            reply.writeNoException();
                            return true;
                        case 14:
                            String _arg010 = data.readString();
                            String _arg15 = data.readString();
                            data.enforceNoDataAvail();
                            forgetPartition(_arg010, _arg15);
                            reply.writeNoException();
                            return true;
                        case 15:
                            String _arg011 = data.readString();
                            int _arg16 = data.readInt();
                            int _arg22 = data.readInt();
                            IVoldMountCallback _arg3 = IVoldMountCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            mount(_arg011, _arg16, _arg22, _arg3);
                            reply.writeNoException();
                            return true;
                        case 16:
                            String _arg012 = data.readString();
                            data.enforceNoDataAvail();
                            unmount(_arg012);
                            reply.writeNoException();
                            return true;
                        case 17:
                            String _arg013 = data.readString();
                            String _arg17 = data.readString();
                            data.enforceNoDataAvail();
                            format(_arg013, _arg17);
                            reply.writeNoException();
                            return true;
                        case 18:
                            String _arg014 = data.readString();
                            IVoldTaskListener _arg18 = IVoldTaskListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            benchmark(_arg014, _arg18);
                            reply.writeNoException();
                            return true;
                        case 19:
                            String _arg015 = data.readString();
                            data.enforceNoDataAvail();
                            checkBeforeMount(_arg015);
                            reply.writeNoException();
                            return true;
                        case 20:
                            String _arg016 = data.readString();
                            data.enforceNoDataAvail();
                            fsyncCtrl(_arg016);
                            reply.writeNoException();
                            return true;
                        case 21:
                            int _arg017 = data.readInt();
                            int _arg19 = data.readInt();
                            String _arg23 = data.readString();
                            String _arg32 = data.readString();
                            int _arg4 = data.readInt();
                            data.enforceNoDataAvail();
                            unlockSensitiveKey(_arg017, _arg19, _arg23, _arg32, _arg4);
                            reply.writeNoException();
                            return true;
                        case 22:
                            boolean _arg018 = data.readBoolean();
                            int _arg110 = data.readInt();
                            int _arg24 = data.readInt();
                            data.enforceNoDataAvail();
                            onSecureKeyguardStateChangedForSensitiveFile(_arg018, _arg110, _arg24);
                            reply.writeNoException();
                            return true;
                        case 23:
                            int _arg019 = data.readInt();
                            int _arg111 = data.readInt();
                            boolean _arg25 = data.readBoolean();
                            data.enforceNoDataAvail();
                            byte[] _result = exportSensitiveKey(_arg019, _arg111, _arg25);
                            reply.writeNoException();
                            reply.writeByteArray(_result);
                            return true;
                        case 24:
                            int _arg020 = data.readInt();
                            int _arg112 = data.readInt();
                            data.enforceNoDataAvail();
                            byte[] _result2 = exportSensitiveBePublicKey(_arg020, _arg112);
                            reply.writeNoException();
                            reply.writeByteArray(_result2);
                            return true;
                        case 25:
                            String _arg021 = data.readString();
                            String _arg113 = data.readString();
                            IVoldTaskListener _arg26 = IVoldTaskListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            moveStorage(_arg021, _arg113, _arg26);
                            reply.writeNoException();
                            return true;
                        case 26:
                            int _arg022 = data.readInt();
                            int _arg114 = data.readInt();
                            data.enforceNoDataAvail();
                            remountUid(_arg022, _arg114);
                            reply.writeNoException();
                            return true;
                        case 27:
                            int _arg023 = data.readInt();
                            int _arg115 = data.readInt();
                            String[] _arg27 = data.createStringArray();
                            data.enforceNoDataAvail();
                            remountAppStorageDirs(_arg023, _arg115, _arg27);
                            reply.writeNoException();
                            return true;
                        case 28:
                            int _arg024 = data.readInt();
                            int _arg116 = data.readInt();
                            String[] _arg28 = data.createStringArray();
                            data.enforceNoDataAvail();
                            unmountAppStorageDirs(_arg024, _arg116, _arg28);
                            reply.writeNoException();
                            return true;
                        case 29:
                            String _arg025 = data.readString();
                            int _arg117 = data.readInt();
                            data.enforceNoDataAvail();
                            setupAppDir(_arg025, _arg117);
                            reply.writeNoException();
                            return true;
                        case 30:
                            String _arg026 = data.readString();
                            int _arg118 = data.readInt();
                            data.enforceNoDataAvail();
                            fixupAppDir(_arg026, _arg118);
                            reply.writeNoException();
                            return true;
                        case 31:
                            String[] _arg027 = data.createStringArray();
                            int _arg119 = data.readInt();
                            data.enforceNoDataAvail();
                            ensureAppDirsCreated(_arg027, _arg119);
                            reply.writeNoException();
                            return true;
                        case 32:
                            String _arg028 = data.readString();
                            int _arg120 = data.readInt();
                            data.enforceNoDataAvail();
                            String _result3 = createObb(_arg028, _arg120);
                            reply.writeNoException();
                            reply.writeString(_result3);
                            return true;
                        case 33:
                            String _arg029 = data.readString();
                            data.enforceNoDataAvail();
                            destroyObb(_arg029);
                            reply.writeNoException();
                            return true;
                        case 34:
                            int _arg030 = data.readInt();
                            IVoldTaskListener _arg121 = IVoldTaskListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            fstrim(_arg030, _arg121);
                            reply.writeNoException();
                            return true;
                        case 35:
                            boolean _arg031 = data.readBoolean();
                            IVoldTaskListener _arg122 = IVoldTaskListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            runIdleMaint(_arg031, _arg122);
                            reply.writeNoException();
                            return true;
                        case 36:
                            IVoldTaskListener _arg032 = IVoldTaskListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            abortIdleMaint(_arg032);
                            reply.writeNoException();
                            return true;
                        case 37:
                            int _result4 = getStorageLifeTime();
                            reply.writeNoException();
                            reply.writeInt(_result4);
                            return true;
                        case 38:
                            int _arg033 = data.readInt();
                            int _arg123 = data.readInt();
                            float _arg29 = data.readFloat();
                            float _arg33 = data.readFloat();
                            int _arg42 = data.readInt();
                            data.enforceNoDataAvail();
                            setGCUrgentPace(_arg033, _arg123, _arg29, _arg33, _arg42);
                            reply.writeNoException();
                            return true;
                        case 39:
                            refreshLatestWrite();
                            reply.writeNoException();
                            return true;
                        case 40:
                            int _result5 = getWriteAmount();
                            reply.writeNoException();
                            reply.writeInt(_result5);
                            return true;
                        case 41:
                            int _arg034 = data.readInt();
                            int _arg124 = data.readInt();
                            data.enforceNoDataAvail();
                            FileDescriptor _result6 = mountAppFuse(_arg034, _arg124);
                            reply.writeNoException();
                            reply.writeRawFileDescriptor(_result6);
                            return true;
                        case 42:
                            int _arg035 = data.readInt();
                            int _arg125 = data.readInt();
                            data.enforceNoDataAvail();
                            unmountAppFuse(_arg035, _arg125);
                            reply.writeNoException();
                            return true;
                        case 43:
                            int _result7 = startserviceAppFuse();
                            reply.writeNoException();
                            reply.writeInt(_result7);
                            return true;
                        case 44:
                            int _result8 = stopserviceAppFuse();
                            reply.writeNoException();
                            reply.writeInt(_result8);
                            return true;
                        case 45:
                            int _arg036 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result9 = clearCache(_arg036);
                            reply.writeNoException();
                            reply.writeInt(_result9);
                            return true;
                        case 46:
                            fbeEnable();
                            reply.writeNoException();
                            return true;
                        case 47:
                            initUser0();
                            reply.writeNoException();
                            return true;
                        case 48:
                            String _arg037 = data.readString();
                            String _arg126 = data.readString();
                            data.enforceNoDataAvail();
                            mountFstab(_arg037, _arg126);
                            reply.writeNoException();
                            return true;
                        case 49:
                            String _arg038 = data.readString();
                            String _arg127 = data.readString();
                            boolean _arg210 = data.readBoolean();
                            String _arg34 = data.readString();
                            data.enforceNoDataAvail();
                            encryptFstab(_arg038, _arg127, _arg210, _arg34);
                            reply.writeNoException();
                            return true;
                        case 50:
                            byte[] _arg039 = data.createByteArray();
                            data.enforceNoDataAvail();
                            setStorageBindingSeed(_arg039);
                            reply.writeNoException();
                            return true;
                        case 51:
                            int _arg040 = data.readInt();
                            int _arg128 = data.readInt();
                            boolean _arg211 = data.readBoolean();
                            data.enforceNoDataAvail();
                            createUserKey(_arg040, _arg128, _arg211);
                            reply.writeNoException();
                            return true;
                        case 52:
                            int _arg041 = data.readInt();
                            data.enforceNoDataAvail();
                            destroyUserKey(_arg041);
                            reply.writeNoException();
                            return true;
                        case 53:
                            int _arg042 = data.readInt();
                            int _arg129 = data.readInt();
                            String _arg212 = data.readString();
                            data.enforceNoDataAvail();
                            addUserKeyAuth(_arg042, _arg129, _arg212);
                            reply.writeNoException();
                            return true;
                        case 54:
                            int _arg043 = data.readInt();
                            int _arg130 = data.readInt();
                            String _arg213 = data.readString();
                            data.enforceNoDataAvail();
                            clearUserKeyAuth(_arg043, _arg130, _arg213);
                            reply.writeNoException();
                            return true;
                        case 55:
                            int _arg044 = data.readInt();
                            data.enforceNoDataAvail();
                            fixateNewestUserKeyAuth(_arg044);
                            reply.writeNoException();
                            return true;
                        case 56:
                            int[] _result10 = getUnlockedUsers();
                            reply.writeNoException();
                            reply.writeIntArray(_result10);
                            return true;
                        case 57:
                            int _arg045 = data.readInt();
                            int _arg131 = data.readInt();
                            String _arg214 = data.readString();
                            data.enforceNoDataAvail();
                            unlockUserKey(_arg045, _arg131, _arg214);
                            reply.writeNoException();
                            return true;
                        case 58:
                            int _arg046 = data.readInt();
                            data.enforceNoDataAvail();
                            lockUserKey(_arg046);
                            reply.writeNoException();
                            return true;
                        case 59:
                            String _arg047 = data.readString();
                            int _arg132 = data.readInt();
                            int _arg215 = data.readInt();
                            int _arg35 = data.readInt();
                            data.enforceNoDataAvail();
                            prepareUserStorage(_arg047, _arg132, _arg215, _arg35);
                            reply.writeNoException();
                            return true;
                        case 60:
                            String _arg048 = data.readString();
                            int _arg133 = data.readInt();
                            int _arg216 = data.readInt();
                            data.enforceNoDataAvail();
                            destroyUserStorage(_arg048, _arg133, _arg216);
                            reply.writeNoException();
                            return true;
                        case 61:
                            String _arg049 = data.readString();
                            int _arg134 = data.readInt();
                            String _arg217 = data.readString();
                            int _arg36 = data.readInt();
                            data.enforceNoDataAvail();
                            prepareSandboxForApp(_arg049, _arg134, _arg217, _arg36);
                            reply.writeNoException();
                            return true;
                        case 62:
                            String _arg050 = data.readString();
                            String _arg135 = data.readString();
                            int _arg218 = data.readInt();
                            data.enforceNoDataAvail();
                            destroySandboxForApp(_arg050, _arg135, _arg218);
                            reply.writeNoException();
                            return true;
                        case 63:
                            int _arg051 = data.readInt();
                            data.enforceNoDataAvail();
                            startCheckpoint(_arg051);
                            reply.writeNoException();
                            return true;
                        case 64:
                            boolean _result11 = needsCheckpoint();
                            reply.writeNoException();
                            reply.writeBoolean(_result11);
                            return true;
                        case 65:
                            boolean _result12 = needsRollback();
                            reply.writeNoException();
                            reply.writeBoolean(_result12);
                            return true;
                        case 66:
                            boolean _result13 = isCheckpointing();
                            reply.writeNoException();
                            reply.writeBoolean(_result13);
                            return true;
                        case 67:
                            String _arg052 = data.readString();
                            boolean _arg136 = data.readBoolean();
                            data.enforceNoDataAvail();
                            abortChanges(_arg052, _arg136);
                            reply.writeNoException();
                            return true;
                        case 68:
                            commitChanges();
                            reply.writeNoException();
                            return true;
                        case 69:
                            prepareCheckpoint();
                            reply.writeNoException();
                            return true;
                        case 70:
                            String _arg053 = data.readString();
                            data.enforceNoDataAvail();
                            restoreCheckpoint(_arg053);
                            reply.writeNoException();
                            return true;
                        case 71:
                            String _arg054 = data.readString();
                            int _arg137 = data.readInt();
                            data.enforceNoDataAvail();
                            restoreCheckpointPart(_arg054, _arg137);
                            reply.writeNoException();
                            return true;
                        case 72:
                            markBootAttempt();
                            reply.writeNoException();
                            return true;
                        case 73:
                            boolean _result14 = supportsCheckpoint();
                            reply.writeNoException();
                            reply.writeBoolean(_result14);
                            return true;
                        case 74:
                            boolean _result15 = supportsBlockCheckpoint();
                            reply.writeNoException();
                            reply.writeBoolean(_result15);
                            return true;
                        case 75:
                            boolean _result16 = supportsFileCheckpoint();
                            reply.writeNoException();
                            reply.writeBoolean(_result16);
                            return true;
                        case 76:
                            resetCheckpoint();
                            reply.writeNoException();
                            return true;
                        case 77:
                            earlyBootEnded();
                            reply.writeNoException();
                            return true;
                        case 78:
                            String _arg055 = data.readString();
                            String _arg138 = data.readString();
                            String _arg219 = data.readString();
                            String _arg37 = data.readString();
                            String _arg43 = data.readString();
                            int _arg5 = data.readInt();
                            data.enforceNoDataAvail();
                            String _result17 = createStubVolume(_arg055, _arg138, _arg219, _arg37, _arg43, _arg5);
                            reply.writeNoException();
                            reply.writeString(_result17);
                            return true;
                        case 79:
                            String _arg056 = data.readString();
                            data.enforceNoDataAvail();
                            destroyStubVolume(_arg056);
                            reply.writeNoException();
                            return true;
                        case 80:
                            int _arg057 = data.readInt();
                            int _arg139 = data.readInt();
                            int _arg220 = data.readInt();
                            int _arg38 = data.readInt();
                            data.enforceNoDataAvail();
                            FileDescriptor _result18 = openAppFuseFile(_arg057, _arg139, _arg220, _arg38);
                            reply.writeNoException();
                            reply.writeRawFileDescriptor(_result18);
                            return true;
                        case 81:
                            boolean _result19 = incFsEnabled();
                            reply.writeNoException();
                            reply.writeBoolean(_result19);
                            return true;
                        case 82:
                            String _arg058 = data.readString();
                            String _arg140 = data.readString();
                            int _arg221 = data.readInt();
                            String _arg39 = data.readString();
                            data.enforceNoDataAvail();
                            IncrementalFileSystemControlParcel _result20 = mountIncFs(_arg058, _arg140, _arg221, _arg39);
                            reply.writeNoException();
                            reply.writeTypedObject(_result20, 1);
                            return true;
                        case 83:
                            String _arg059 = data.readString();
                            data.enforceNoDataAvail();
                            unmountIncFs(_arg059);
                            reply.writeNoException();
                            return true;
                        case 84:
                            IncrementalFileSystemControlParcel _arg060 = (IncrementalFileSystemControlParcel) data.readTypedObject(IncrementalFileSystemControlParcel.CREATOR);
                            boolean _arg141 = data.readBoolean();
                            boolean _arg222 = data.readBoolean();
                            String _arg310 = data.readString();
                            data.enforceNoDataAvail();
                            setIncFsMountOptions(_arg060, _arg141, _arg222, _arg310);
                            reply.writeNoException();
                            return true;
                        case 85:
                            String _arg061 = data.readString();
                            String _arg142 = data.readString();
                            data.enforceNoDataAvail();
                            bindMount(_arg061, _arg142);
                            reply.writeNoException();
                            return true;
                        case 86:
                            String _arg062 = data.readString();
                            data.enforceNoDataAvail();
                            sdlockSetPassword(_arg062);
                            reply.writeNoException();
                            return true;
                        case 87:
                            String _arg063 = data.readString();
                            data.enforceNoDataAvail();
                            sdlockClearPassword(_arg063);
                            reply.writeNoException();
                            return true;
                        case 88:
                            String _arg064 = data.readString();
                            data.enforceNoDataAvail();
                            sdlockUnlock(_arg064);
                            reply.writeNoException();
                            return true;
                        case 89:
                            String _result21 = sdlockGetCid();
                            reply.writeNoException();
                            reply.writeString(_result21);
                            return true;
                        case 90:
                            String _result22 = sdlockPoll();
                            reply.writeNoException();
                            reply.writeString(_result22);
                            return true;
                        case 91:
                            sdlockErase();
                            reply.writeNoException();
                            return true;
                        case 92:
                            String _arg065 = data.readString();
                            data.enforceNoDataAvail();
                            destroyDsuMetadataKey(_arg065);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IVold {
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

            @Override // android.os.IVold
            public void setListener(IVoldListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void abortFuse() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void monitor() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void reset() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void shutdown() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onUserAdded(int userId, int userSerial) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onUserRemoved(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onUserStarted(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onUserStopped(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void addAppIds(String[] packageNames, int[] appIds) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(packageNames);
                    _data.writeIntArray(appIds);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void addSandboxIds(int[] appIds, String[] sandboxIds) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(appIds);
                    _data.writeStringArray(sandboxIds);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onSecureKeyguardStateChanged(boolean isShowing) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(isShowing);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void partition(String diskId, int partitionType, int ratio) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(diskId);
                    _data.writeInt(partitionType);
                    _data.writeInt(ratio);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void forgetPartition(String partGuid, String fsUuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(partGuid);
                    _data.writeString(fsUuid);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void mount(String volId, int mountFlags, int mountUserId, IVoldMountCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeInt(mountFlags);
                    _data.writeInt(mountUserId);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unmount(String volId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void format(String volId, String fsType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeString(fsType);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void benchmark(String volId, IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void checkBeforeMount(String volId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fsyncCtrl(String fsyncMode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(fsyncMode);
                    this.mRemote.transact(20, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unlockSensitiveKey(int userId, int userSerial, String token, String secret, int sensitiveType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeString(token);
                    _data.writeString(secret);
                    _data.writeInt(sensitiveType);
                    this.mRemote.transact(21, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onSecureKeyguardStateChangedForSensitiveFile(boolean isShowing, int userId, int sensitiveType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(isShowing);
                    _data.writeInt(userId);
                    _data.writeInt(sensitiveType);
                    this.mRemote.transact(22, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public byte[] exportSensitiveKey(int userId, int sensitiveType, boolean useDefault) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(sensitiveType);
                    _data.writeBoolean(useDefault);
                    this.mRemote.transact(23, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public byte[] exportSensitiveBePublicKey(int userId, int sensitiveType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(sensitiveType);
                    this.mRemote.transact(24, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void moveStorage(String fromVolId, String toVolId, IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(fromVolId);
                    _data.writeString(toVolId);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(25, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void remountUid(int uid, int remountMode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(remountMode);
                    this.mRemote.transact(26, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void remountAppStorageDirs(int uid, int pid, String[] packageNames) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(pid);
                    _data.writeStringArray(packageNames);
                    this.mRemote.transact(27, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unmountAppStorageDirs(int uid, int pid, String[] packageNames) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(pid);
                    _data.writeStringArray(packageNames);
                    this.mRemote.transact(28, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void setupAppDir(String path, int appUid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeInt(appUid);
                    this.mRemote.transact(29, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fixupAppDir(String path, int appUid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeInt(appUid);
                    this.mRemote.transact(30, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void ensureAppDirsCreated(String[] paths, int appUid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(paths);
                    _data.writeInt(appUid);
                    this.mRemote.transact(31, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public String createObb(String sourcePath, int ownerGid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(sourcePath);
                    _data.writeInt(ownerGid);
                    this.mRemote.transact(32, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroyObb(String volId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    this.mRemote.transact(33, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fstrim(int fstrimFlags, IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(fstrimFlags);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(34, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void runIdleMaint(boolean needGC, IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(needGC);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(35, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void abortIdleMaint(IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(36, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public int getStorageLifeTime() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(37, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void setGCUrgentPace(int neededSegments, int minSegmentThreshold, float dirtyReclaimRate, float reclaimWeight, int gcPeriod) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(neededSegments);
                    _data.writeInt(minSegmentThreshold);
                    _data.writeFloat(dirtyReclaimRate);
                    _data.writeFloat(reclaimWeight);
                    _data.writeInt(gcPeriod);
                    this.mRemote.transact(38, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void refreshLatestWrite() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(39, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public int getWriteAmount() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(40, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public FileDescriptor mountAppFuse(int uid, int mountId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(mountId);
                    this.mRemote.transact(41, _data, _reply, 0);
                    _reply.readException();
                    FileDescriptor _result = _reply.readRawFileDescriptor();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unmountAppFuse(int uid, int mountId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(mountId);
                    this.mRemote.transact(42, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public int startserviceAppFuse() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(43, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public int stopserviceAppFuse() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(44, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public int clearCache(int whatsAppExist) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(whatsAppExist);
                    this.mRemote.transact(45, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fbeEnable() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(46, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void initUser0() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(47, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void mountFstab(String blkDevice, String mountPoint) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(blkDevice);
                    _data.writeString(mountPoint);
                    this.mRemote.transact(48, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void encryptFstab(String blkDevice, String mountPoint, boolean shouldFormat, String fsType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(blkDevice);
                    _data.writeString(mountPoint);
                    _data.writeBoolean(shouldFormat);
                    _data.writeString(fsType);
                    this.mRemote.transact(49, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void setStorageBindingSeed(byte[] seed) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeByteArray(seed);
                    this.mRemote.transact(50, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void createUserKey(int userId, int userSerial, boolean ephemeral) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeBoolean(ephemeral);
                    this.mRemote.transact(51, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroyUserKey(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(52, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void addUserKeyAuth(int userId, int userSerial, String secret) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeString(secret);
                    this.mRemote.transact(53, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void clearUserKeyAuth(int userId, int userSerial, String secret) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeString(secret);
                    this.mRemote.transact(54, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fixateNewestUserKeyAuth(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(55, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public int[] getUnlockedUsers() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(56, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unlockUserKey(int userId, int userSerial, String secret) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeString(secret);
                    this.mRemote.transact(57, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void lockUserKey(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(58, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void prepareUserStorage(String uuid, int userId, int userSerial, int storageFlags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeInt(storageFlags);
                    this.mRemote.transact(59, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroyUserStorage(String uuid, int userId, int storageFlags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeInt(storageFlags);
                    this.mRemote.transact(60, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void prepareSandboxForApp(String packageName, int appId, String sandboxId, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(appId);
                    _data.writeString(sandboxId);
                    _data.writeInt(userId);
                    this.mRemote.transact(61, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroySandboxForApp(String packageName, String sandboxId, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(sandboxId);
                    _data.writeInt(userId);
                    this.mRemote.transact(62, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void startCheckpoint(int retry) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(retry);
                    this.mRemote.transact(63, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean needsCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(64, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean needsRollback() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(65, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean isCheckpointing() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(66, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void abortChanges(String device, boolean retry) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    _data.writeBoolean(retry);
                    this.mRemote.transact(67, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void commitChanges() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(68, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void prepareCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(69, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void restoreCheckpoint(String device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    this.mRemote.transact(70, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void restoreCheckpointPart(String device, int count) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    _data.writeInt(count);
                    this.mRemote.transact(71, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void markBootAttempt() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(72, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean supportsCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(73, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean supportsBlockCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(74, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean supportsFileCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(75, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void resetCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(76, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void earlyBootEnded() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(77, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public String createStubVolume(String sourcePath, String mountPath, String fsType, String fsUuid, String fsLabel, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(sourcePath);
                    _data.writeString(mountPath);
                    _data.writeString(fsType);
                    _data.writeString(fsUuid);
                    _data.writeString(fsLabel);
                    _data.writeInt(flags);
                    this.mRemote.transact(78, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroyStubVolume(String volId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    this.mRemote.transact(79, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public FileDescriptor openAppFuseFile(int uid, int mountId, int fileId, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(mountId);
                    _data.writeInt(fileId);
                    _data.writeInt(flags);
                    this.mRemote.transact(80, _data, _reply, 0);
                    _reply.readException();
                    FileDescriptor _result = _reply.readRawFileDescriptor();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean incFsEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(81, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public IncrementalFileSystemControlParcel mountIncFs(String backingPath, String targetDir, int flags, String sysfsName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(backingPath);
                    _data.writeString(targetDir);
                    _data.writeInt(flags);
                    _data.writeString(sysfsName);
                    this.mRemote.transact(82, _data, _reply, 0);
                    _reply.readException();
                    IncrementalFileSystemControlParcel _result = (IncrementalFileSystemControlParcel) _reply.readTypedObject(IncrementalFileSystemControlParcel.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unmountIncFs(String dir) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(dir);
                    this.mRemote.transact(83, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void setIncFsMountOptions(IncrementalFileSystemControlParcel control, boolean enableReadLogs, boolean enableReadTimeouts, String sysfsName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(control, 0);
                    _data.writeBoolean(enableReadLogs);
                    _data.writeBoolean(enableReadTimeouts);
                    _data.writeString(sysfsName);
                    this.mRemote.transact(84, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void bindMount(String sourceDir, String targetDir) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(sourceDir);
                    _data.writeString(targetDir);
                    this.mRemote.transact(85, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void sdlockSetPassword(String password) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(password);
                    this.mRemote.transact(86, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void sdlockClearPassword(String password) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(password);
                    this.mRemote.transact(87, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void sdlockUnlock(String password) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(password);
                    this.mRemote.transact(88, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public String sdlockGetCid() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(89, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public String sdlockPoll() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(90, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void sdlockErase() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(91, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroyDsuMetadataKey(String dsuSlot) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(dsuSlot);
                    this.mRemote.transact(92, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 91;
        }
    }
}
