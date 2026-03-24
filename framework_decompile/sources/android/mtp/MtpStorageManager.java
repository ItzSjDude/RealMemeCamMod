package android.mtp;

import android.media.MediaFile;
import android.os.FileObserver;
import android.os.SystemProperties;
import android.os.storage.StorageVolume;
import android.system.ErrnoException;
import android.system.Os;
import android.system.StructStat;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.io.IOException;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public class MtpStorageManager {
    private static final int IN_IGNORED = 32768;
    private static final int IN_ISDIR = 1073741824;
    private static final int IN_ONLYDIR = 16777216;
    private static final int IN_Q_OVERFLOW = 16384;
    private static final String TAG = MtpStorageManager.class.getSimpleName();
    public static boolean sDebug = SystemProperties.getBoolean("persist.sys.assert.panic", false);
    private MtpNotifier mMtpNotifier;
    private Set<String> mSubdirectories;
    private HashMap<Integer, MtpObject> mObjects = new HashMap<>();
    private HashMap<Integer, MtpObject> mRoots = new HashMap<>();
    private int mNextObjectId = 1;
    private int mNextStorageId = 1;
    private volatile boolean mCheckConsistency = false;
    private Thread mConsistencyThread = new Thread(new Runnable() { // from class: android.mtp.MtpStorageManager$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() throws InterruptedException {
            this.f$0.m2908lambda$new$0$androidmtpMtpStorageManager();
        }
    });

    public static abstract class MtpNotifier {
        public abstract void sendObjectAdded(int i);

        public abstract void sendObjectInfoChanged(int i);

        public abstract void sendObjectRemoved(int i);
    }

    private enum MtpObjectState {
        NORMAL,
        FROZEN,
        FROZEN_ADDED,
        FROZEN_REMOVED,
        FROZEN_ONESHOT_ADD,
        FROZEN_ONESHOT_DEL
    }

    private enum MtpOperation {
        NONE,
        ADD,
        RENAME,
        COPY,
        DELETE
    }

    private class MtpObjectObserver extends FileObserver {
        MtpObject mObject;

        MtpObjectObserver(MtpObject object) {
            super(object.getPath().toString(), 16778184);
            this.mObject = object;
        }

        @Override // android.os.FileObserver
        public void onEvent(int event, String path) {
            synchronized (MtpStorageManager.this) {
                if ((event & 16384) != 0) {
                    Log.e(MtpStorageManager.TAG, "Received Inotify overflow event!");
                }
                MtpObject obj = this.mObject.getChild(path);
                if ((event & 128) != 0 || (event & 256) != 0) {
                    if (MtpStorageManager.sDebug) {
                        Log.i(MtpStorageManager.TAG, "Got inotify added event for " + path + " " + event);
                    }
                    MtpStorageManager.this.handleAddedObject(this.mObject, path, (1073741824 & event) != 0);
                } else if ((event & 64) != 0 || (event & 512) != 0) {
                    if (obj == null) {
                        Log.w(MtpStorageManager.TAG, "Object was null in event " + path);
                    } else {
                        if (MtpStorageManager.sDebug) {
                            Log.i(MtpStorageManager.TAG, "Got inotify removed event for " + path + " " + event);
                        }
                        MtpStorageManager.this.handleRemovedObject(obj);
                    }
                } else if ((32768 & event) != 0) {
                    if (MtpStorageManager.sDebug) {
                        Log.i(MtpStorageManager.TAG, "inotify for " + this.mObject.getPath() + " deleted");
                    }
                    if (this.mObject.mObserver != null) {
                        this.mObject.mObserver.stopWatching();
                    }
                    this.mObject.mObserver = null;
                } else if ((event & 8) != 0) {
                    if (MtpStorageManager.sDebug) {
                        Log.i(MtpStorageManager.TAG, "inotify for " + this.mObject.getPath() + " CLOSE_WRITE: " + path);
                    }
                    MtpStorageManager.this.handleChangedObject(this.mObject, path);
                } else {
                    Log.w(MtpStorageManager.TAG, "Got unrecognized event " + path + " " + event);
                }
            }
        }

        @Override // android.os.FileObserver
        public void finalize() {
        }
    }

    public static class MtpObject {
        private HashMap<String, MtpObject> mChildren;
        private int mId;
        private boolean mIsDir;
        private String mName;
        private MtpObject mParent;
        private MtpStorage mStorage;
        private FileObserver mObserver = null;
        private boolean mVisited = false;
        private MtpObjectState mState = MtpObjectState.NORMAL;
        private MtpOperation mOp = MtpOperation.NONE;

        MtpObject(String name, int id, MtpStorage storage, MtpObject parent, boolean isDir) {
            this.mId = id;
            this.mName = name;
            this.mStorage = (MtpStorage) Preconditions.checkNotNull(storage);
            this.mParent = parent;
            this.mIsDir = isDir;
            this.mChildren = this.mIsDir ? new HashMap<>() : null;
        }

        public String getName() {
            return this.mName;
        }

        public int getId() {
            return this.mId;
        }

        public boolean isDir() {
            return this.mIsDir;
        }

        public int getFormat() {
            if (this.mIsDir) {
                return 12289;
            }
            return MediaFile.getFormatCode(this.mName, null);
        }

        public int getStorageId() {
            return getRoot().getId();
        }

        public long getModifiedTime() {
            return getPath().toFile().lastModified() / 1000;
        }

        public MtpObject getParent() {
            return this.mParent;
        }

        public MtpObject getRoot() {
            return isRoot() ? this : this.mParent.getRoot();
        }

        public long getSize() {
            if (this.mIsDir) {
                return 0L;
            }
            return maybeApplyTranscodeLengthWorkaround(getPath().toFile().length());
        }

        private long maybeApplyTranscodeLengthWorkaround(long length) {
            if (this.mStorage.isHostWindows() && isTranscodeMtpEnabled() && isFileTranscodeSupported()) {
                return 2 * length;
            }
            return length;
        }

        private boolean isTranscodeMtpEnabled() {
            return SystemProperties.getBoolean("sys.fuse.transcode_mtp", false);
        }

        private boolean isFileTranscodeSupported() throws ErrnoException {
            Path path = getPath();
            try {
                StructStat stat = Os.stat(path.toString());
                return stat.st_nlink > 1;
            } catch (ErrnoException e) {
                Log.w(MtpStorageManager.TAG, "Failed to stat path: " + getPath() + ". Ignoring transcoding.");
                return false;
            }
        }

        public Path getPath() {
            return isRoot() ? Paths.get(this.mName, new String[0]) : this.mParent.getPath().resolve(this.mName);
        }

        public boolean isRoot() {
            return this.mParent == null;
        }

        public String getVolumeName() {
            return this.mStorage.getVolumeName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String name) {
            this.mName = name;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setId(int id) {
            this.mId = id;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isVisited() {
            return this.mVisited;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setParent(MtpObject parent) {
            if (getStorageId() != parent.getStorageId()) {
                this.mStorage = (MtpStorage) Preconditions.checkNotNull(parent.getStorage());
            }
            this.mParent = parent;
        }

        private MtpStorage getStorage() {
            return this.mStorage;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDir(boolean dir) {
            if (dir != this.mIsDir) {
                this.mIsDir = dir;
                this.mChildren = dir ? new HashMap<>() : null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVisited(boolean visited) {
            this.mVisited = visited;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MtpObjectState getState() {
            return this.mState;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setState(MtpObjectState state) {
            this.mState = state;
            if (state == MtpObjectState.NORMAL) {
                this.mOp = MtpOperation.NONE;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MtpOperation getOperation() {
            return this.mOp;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOperation(MtpOperation op) {
            this.mOp = op;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public FileObserver getObserver() {
            return this.mObserver;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setObserver(FileObserver observer) {
            this.mObserver = observer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addChild(MtpObject child) {
            this.mChildren.put(child.getName(), child);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MtpObject getChild(String name) {
            return this.mChildren.get(name);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Collection<MtpObject> getChildren() {
            return this.mChildren.values();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean exists() {
            return getPath().toFile().exists();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MtpObject copy(boolean recursive) {
            MtpObject copy = new MtpObject(this.mName, this.mId, this.mStorage, this.mParent, this.mIsDir);
            copy.mIsDir = this.mIsDir;
            copy.mVisited = this.mVisited;
            copy.mState = this.mState;
            copy.mChildren = this.mIsDir ? new HashMap<>() : null;
            if (recursive && this.mIsDir) {
                for (MtpObject child : this.mChildren.values()) {
                    MtpObject childCopy = child.copy(true);
                    childCopy.setParent(copy);
                    copy.addChild(childCopy);
                }
            }
            return copy;
        }
    }

    public MtpStorageManager(MtpNotifier notifier, Set<String> subdirectories) {
        this.mMtpNotifier = notifier;
        this.mSubdirectories = subdirectories;
        if (this.mCheckConsistency) {
            this.mConsistencyThread.start();
        }
    }

    /* renamed from: lambda$new$0$android-mtp-MtpStorageManager, reason: not valid java name */
    /* synthetic */ void m2908lambda$new$0$androidmtpMtpStorageManager() throws InterruptedException {
        while (this.mCheckConsistency) {
            try {
                Thread.sleep(15000L);
                if (checkConsistency()) {
                    Log.v(TAG, "Cache is consistent");
                } else {
                    Log.w(TAG, "Cache is not consistent");
                }
            } catch (InterruptedException e) {
                return;
            }
        }
    }

    public synchronized void close() {
        for (MtpObject obj : this.mObjects.values()) {
            if (obj.getObserver() != null) {
                obj.getObserver().stopWatching();
                obj.setObserver(null);
            }
        }
        for (MtpObject obj2 : this.mRoots.values()) {
            if (obj2.getObserver() != null) {
                obj2.getObserver().stopWatching();
                obj2.setObserver(null);
            }
        }
        if (this.mCheckConsistency) {
            this.mCheckConsistency = false;
            this.mConsistencyThread.interrupt();
            try {
                this.mConsistencyThread.join();
            } catch (InterruptedException e) {
            }
        }
    }

    public synchronized void setSubdirectories(Set<String> subDirs) {
        this.mSubdirectories = subDirs;
    }

    public synchronized MtpStorage addMtpStorage(StorageVolume volume, Supplier<Boolean> isHostWindows) {
        MtpStorage storage;
        int storageId = ((getNextStorageId() & 65535) << 16) + 1;
        storage = new MtpStorage(volume, storageId, isHostWindows);
        MtpObject root = new MtpObject(storage.getPath(), storageId, storage, null, true);
        this.mRoots.put(Integer.valueOf(storageId), root);
        return storage;
    }

    public synchronized void removeMtpStorage(MtpStorage storage) {
        removeObjectFromCache(getStorageRoot(storage.getStorageId()), true, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean isSpecialSubDir(android.mtp.MtpStorageManager.MtpObject r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            android.mtp.MtpStorageManager$MtpObject r0 = r3.getParent()     // Catch: java.lang.Throwable -> L1e
            boolean r0 = r0.isRoot()     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L1b
            java.util.Set<java.lang.String> r0 = r2.mSubdirectories     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L1b
            java.lang.String r1 = r3.getName()     // Catch: java.lang.Throwable -> L1e
            boolean r0 = r0.contains(r1)     // Catch: java.lang.Throwable -> L1e
            if (r0 != 0) goto L1b
            r0 = 1
            goto L1c
        L1b:
            r0 = 0
        L1c:
            monitor-exit(r2)
            return r0
        L1e:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: android.mtp.MtpStorageManager.isSpecialSubDir(android.mtp.MtpStorageManager$MtpObject):boolean");
    }

    public synchronized MtpObject getByPath(String path) {
        MtpObject obj = null;
        for (MtpObject root : this.mRoots.values()) {
            if (path.startsWith(root.getName())) {
                obj = root;
                path = path.substring(root.getName().length());
            }
        }
        for (String name : path.split("/")) {
            if (obj != null && obj.isDir()) {
                if (!"".equals(name)) {
                    if (!obj.isVisited()) {
                        getChildren(obj);
                    }
                    obj = obj.getChild(name);
                }
            }
            return null;
        }
        return obj;
    }

    public synchronized MtpObject getObject(int id) {
        if (id == 0 || id == -1) {
            Log.w(TAG, "Can't get root storages with getObject()");
            return null;
        }
        if (!this.mObjects.containsKey(Integer.valueOf(id))) {
            Log.w(TAG, "Id " + id + " doesn't exist");
            return null;
        }
        return this.mObjects.get(Integer.valueOf(id));
    }

    public MtpObject getStorageRoot(int id) {
        if (!this.mRoots.containsKey(Integer.valueOf(id))) {
            Log.w(TAG, "StorageId " + id + " doesn't exist");
            return null;
        }
        return this.mRoots.get(Integer.valueOf(id));
    }

    private int getNextObjectId() {
        int ret = this.mNextObjectId;
        this.mNextObjectId = (int) (this.mNextObjectId + 1);
        return ret;
    }

    private int getNextStorageId() {
        int i = this.mNextStorageId;
        this.mNextStorageId = i + 1;
        return i;
    }

    public synchronized List<MtpObject> getObjects(int parent, int format, int storageId) {
        boolean recursive = parent == 0;
        ArrayList<MtpObject> objs = new ArrayList<>();
        boolean ret = true;
        if (parent == -1) {
            parent = 0;
        }
        if (storageId == -1 && parent == 0) {
            for (MtpObject root : this.mRoots.values()) {
                ret &= getObjects(objs, root, format, recursive);
            }
            return ret ? objs : null;
        }
        MtpObject obj = parent == 0 ? getStorageRoot(storageId) : getObject(parent);
        if (obj == null) {
            return null;
        }
        boolean ret2 = getObjects(objs, obj, format, recursive);
        return ret2 ? objs : null;
    }

    private synchronized boolean getObjects(List<MtpObject> toAdd, MtpObject parent, int format, boolean rec) {
        Collection<MtpObject> children = getChildren(parent);
        if (children == null) {
            return false;
        }
        for (MtpObject o : children) {
            if (format == 0 || o.getFormat() == format) {
                toAdd.add(o);
            }
        }
        boolean ret = true;
        if (rec) {
            for (MtpObject o2 : children) {
                if (o2.isDir()) {
                    ret &= getObjects(toAdd, o2, format, true);
                }
            }
        }
        return ret;
    }

    private synchronized Collection<MtpObject> getChildren(MtpObject object) {
        if (object != null) {
            if (object.isDir()) {
                if (!object.isVisited()) {
                    Path dir = object.getPath();
                    if (object.getObserver() != null) {
                        Log.e(TAG, "Observer is not null!");
                    }
                    object.setObserver(new MtpObjectObserver(object));
                    object.getObserver().startWatching();
                    try {
                        DirectoryStream<Path> stream = Files.newDirectoryStream(dir);
                        try {
                            for (Path file : stream) {
                                addObjectToCache(object, file.getFileName().toString(), file.toFile().isDirectory());
                            }
                            if (stream != null) {
                                stream.close();
                            }
                            object.setVisited(true);
                        } catch (Throwable th) {
                            if (stream != null) {
                                try {
                                    stream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    } catch (IOException | DirectoryIteratorException e) {
                        Log.e(TAG, e.toString());
                        object.getObserver().stopWatching();
                        object.setObserver(null);
                        return null;
                    }
                }
                return object.getChildren();
            }
        }
        Log.w(TAG, "Can't find children of " + (object == null ? "null" : Integer.valueOf(object.getId())));
        return null;
    }

    private synchronized MtpObject addObjectToCache(MtpObject parent, String newName, boolean isDir) {
        if (!parent.isRoot() && getObject(parent.getId()) != parent) {
            return null;
        }
        if (parent.getChild(newName) != null) {
            return null;
        }
        if (this.mSubdirectories != null && parent.isRoot() && !this.mSubdirectories.contains(newName)) {
            return null;
        }
        MtpObject obj = new MtpObject(newName, getNextObjectId(), parent.mStorage, parent, isDir);
        this.mObjects.put(Integer.valueOf(obj.getId()), obj);
        parent.addChild(obj);
        return obj;
    }

    private synchronized boolean removeObjectFromCache(MtpObject removed, boolean removeGlobal, boolean recursive) {
        boolean ret;
        ret = removed.isRoot() || removed.getParent().mChildren.remove(removed.getName(), removed);
        if (!ret && sDebug) {
            Log.w(TAG, "Failed to remove from parent " + removed.getPath());
        }
        if (removed.isRoot()) {
            ret = this.mRoots.remove(Integer.valueOf(removed.getId()), removed) && ret;
        } else if (removeGlobal) {
            ret = this.mObjects.remove(Integer.valueOf(removed.getId()), removed) && ret;
        }
        if (!ret && sDebug) {
            Log.w(TAG, "Failed to remove from global cache " + removed.getPath());
        }
        if (removed.getObserver() != null) {
            removed.getObserver().stopWatching();
            removed.setObserver(null);
        }
        if (removed.isDir() && recursive) {
            Collection<MtpObject> children = new ArrayList<>((Collection<? extends MtpObject>) removed.getChildren());
            for (MtpObject child : children) {
                ret = removeObjectFromCache(child, removeGlobal, true) && ret;
            }
        }
        return ret;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleAddedObject(MtpObject parent, String path, boolean isDir) {
        MtpOperation op = MtpOperation.NONE;
        MtpObject obj = parent.getChild(path);
        if (obj != null) {
            MtpObjectState state = obj.getState();
            op = obj.getOperation();
            if (obj.isDir() != isDir && state != MtpObjectState.FROZEN_REMOVED) {
                Log.d(TAG, "Inconsistent directory info! " + obj.getPath());
            }
            obj.setDir(isDir);
            switch (AnonymousClass1.$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState[state.ordinal()]) {
                case 1:
                case 2:
                    obj.setState(MtpObjectState.FROZEN_ADDED);
                    break;
                case 3:
                    obj.setState(MtpObjectState.NORMAL);
                    break;
                case 4:
                case 5:
                    return;
                default:
                    Log.w(TAG, "Unexpected state in add " + path + " " + state);
                    break;
            }
            if (sDebug) {
                Log.i(TAG, state + " transitioned to " + obj.getState() + " in op " + op);
            }
        } else {
            obj = addObjectToCache(parent, path, isDir);
            if (obj != null) {
                this.mMtpNotifier.sendObjectAdded(obj.getId());
            } else {
                if (sDebug) {
                    Log.w(TAG, "object " + path + " already exists");
                }
                return;
            }
        }
        if (isDir) {
            if (op == MtpOperation.RENAME) {
                return;
            }
            if (op == MtpOperation.COPY && !obj.isVisited()) {
                return;
            }
            if (obj.getObserver() != null) {
                Log.e(TAG, "Observer is not null!");
                return;
            }
            obj.setObserver(new MtpObjectObserver(obj));
            obj.getObserver().startWatching();
            obj.setVisited(true);
            try {
                DirectoryStream<Path> stream = Files.newDirectoryStream(obj.getPath());
                try {
                    for (Path file : stream) {
                        if (sDebug) {
                            Log.i(TAG, "Manually handling event for " + file.getFileName().toString());
                        }
                        handleAddedObject(obj, file.getFileName().toString(), file.toFile().isDirectory());
                    }
                    if (stream != null) {
                        stream.close();
                    }
                } catch (Throwable th) {
                    if (stream != null) {
                        try {
                            stream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException | DirectoryIteratorException e) {
                Log.e(TAG, e.toString());
                obj.getObserver().stopWatching();
                obj.setObserver(null);
            }
        }
    }

    /* renamed from: android.mtp.MtpStorageManager$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$mtp$MtpStorageManager$MtpObjectState;

        static {
            int[] iArr = new int[MtpObjectState.values().length];
            $SwitchMap$android$mtp$MtpStorageManager$MtpObjectState = iArr;
            try {
                iArr[MtpObjectState.FROZEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$mtp$MtpStorageManager$MtpObjectState[MtpObjectState.FROZEN_REMOVED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$mtp$MtpStorageManager$MtpObjectState[MtpObjectState.FROZEN_ONESHOT_ADD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$mtp$MtpStorageManager$MtpObjectState[MtpObjectState.NORMAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$android$mtp$MtpStorageManager$MtpObjectState[MtpObjectState.FROZEN_ADDED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$android$mtp$MtpStorageManager$MtpObjectState[MtpObjectState.FROZEN_ONESHOT_DEL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleRemovedObject(MtpObject obj) {
        MtpObjectState state = obj.getState();
        MtpOperation op = obj.getOperation();
        boolean z = true;
        switch (AnonymousClass1.$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState[state.ordinal()]) {
            case 1:
                obj.setState(MtpObjectState.FROZEN_REMOVED);
                break;
            case 2:
            case 3:
            default:
                Log.e(TAG, "Got unexpected object remove for " + obj.getName());
                break;
            case 4:
                if (removeObjectFromCache(obj, true, true)) {
                    this.mMtpNotifier.sendObjectRemoved(obj.getId());
                    break;
                }
                break;
            case 5:
                obj.setState(MtpObjectState.FROZEN_REMOVED);
                break;
            case 6:
                if (op == MtpOperation.RENAME) {
                    z = false;
                }
                removeObjectFromCache(obj, z, false);
                break;
        }
        if (sDebug) {
            Log.i(TAG, state + " transitioned to " + obj.getState() + " in op " + op);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleChangedObject(MtpObject parent, String path) {
        MtpOperation mtpOperation = MtpOperation.NONE;
        MtpObject obj = parent.getChild(path);
        if (obj != null) {
            if (!obj.isDir() && obj.getSize() > 0) {
                obj.getState();
                obj.getOperation();
                this.mMtpNotifier.sendObjectInfoChanged(obj.getId());
                if (sDebug) {
                    Log.d(TAG, "sendObjectInfoChanged: id=" + obj.getId() + ",size=" + obj.getSize());
                }
            }
        } else if (sDebug) {
            Log.w(TAG, "object " + path + " null");
        }
    }

    public void flushEvents() throws InterruptedException {
        try {
            Thread.sleep(500L);
        } catch (InterruptedException e) {
        }
    }

    public synchronized void dump() {
        Iterator<Integer> it = this.mObjects.keySet().iterator();
        while (it.hasNext()) {
            int key = it.next().intValue();
            MtpObject obj = this.mObjects.get(Integer.valueOf(key));
            Log.i(TAG, key + " | " + (obj.getParent() == null ? Integer.valueOf(obj.getParent().getId()) : "null") + " | " + obj.getName() + " | " + (obj.isDir() ? "dir" : "obj") + " | " + (obj.isVisited() ? "v" : "nv") + " | " + obj.getState());
        }
    }

    public synchronized boolean checkConsistency() {
        boolean ret;
        List<MtpObject> objs = new ArrayList<>();
        objs.addAll(this.mRoots.values());
        objs.addAll(this.mObjects.values());
        ret = true;
        for (MtpObject obj : objs) {
            if (!obj.exists()) {
                Log.w(TAG, "Object doesn't exist " + obj.getPath() + " " + obj.getId());
                ret = false;
            }
            if (obj.getState() != MtpObjectState.NORMAL) {
                Log.w(TAG, "Object " + obj.getPath() + " in state " + obj.getState());
                ret = false;
            }
            if (obj.getOperation() != MtpOperation.NONE) {
                Log.w(TAG, "Object " + obj.getPath() + " in operation " + obj.getOperation());
                ret = false;
            }
            if (!obj.isRoot() && this.mObjects.get(Integer.valueOf(obj.getId())) != obj) {
                Log.w(TAG, "Object " + obj.getPath() + " is not in map correctly");
                ret = false;
            }
            if (obj.getParent() != null) {
                if (obj.getParent().isRoot() && obj.getParent() != this.mRoots.get(Integer.valueOf(obj.getParent().getId()))) {
                    Log.w(TAG, "Root parent is not in root mapping " + obj.getPath());
                    ret = false;
                }
                if (!obj.getParent().isRoot() && obj.getParent() != this.mObjects.get(Integer.valueOf(obj.getParent().getId()))) {
                    Log.w(TAG, "Parent is not in object mapping " + obj.getPath());
                    ret = false;
                }
                if (obj.getParent().getChild(obj.getName()) != obj) {
                    Log.w(TAG, "Child does not exist in parent " + obj.getPath());
                    ret = false;
                }
            }
            if (obj.isDir()) {
                if (obj.isVisited() == (obj.getObserver() == null)) {
                    Log.w(TAG, obj.getPath() + " is " + (obj.isVisited() ? "" : "not ") + " visited but observer is " + obj.getObserver());
                    ret = false;
                }
                if (!obj.isVisited() && obj.getChildren().size() > 0) {
                    Log.w(TAG, obj.getPath() + " is not visited but has children");
                    ret = false;
                }
                try {
                    DirectoryStream<Path> stream = Files.newDirectoryStream(obj.getPath());
                    try {
                        Set<String> files = new HashSet<>();
                        for (Path file : stream) {
                            if (obj.isVisited() && obj.getChild(file.getFileName().toString()) == null && (this.mSubdirectories == null || !obj.isRoot() || this.mSubdirectories.contains(file.getFileName().toString()))) {
                                Log.w(TAG, "File exists in fs but not in children " + file);
                                ret = false;
                            }
                            files.add(file.toString());
                        }
                        for (MtpObject child : obj.getChildren()) {
                            if (!files.contains(child.getPath().toString())) {
                                Log.w(TAG, "File in children doesn't exist in fs " + child.getPath());
                                ret = false;
                            }
                            if (child != this.mObjects.get(Integer.valueOf(child.getId()))) {
                                Log.w(TAG, "Child is not in object map " + child.getPath());
                                ret = false;
                            }
                        }
                        if (stream != null) {
                            stream.close();
                        }
                    } catch (Throwable th) {
                        if (stream != null) {
                            try {
                                stream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException | DirectoryIteratorException e) {
                    Log.w(TAG, e.toString());
                    ret = false;
                }
            }
        }
        return ret;
    }

    public synchronized int beginSendObject(MtpObject parent, String name, int format) {
        Set<String> set;
        if (sDebug) {
            Log.v(TAG, "beginSendObject " + name);
        }
        if (!parent.isDir()) {
            return -1;
        }
        if (parent.isRoot() && (set = this.mSubdirectories) != null && !set.contains(name)) {
            return -1;
        }
        getChildren(parent);
        MtpObject obj = addObjectToCache(parent, name, format == 12289);
        if (obj == null) {
            return -1;
        }
        obj.setState(MtpObjectState.FROZEN);
        obj.setOperation(MtpOperation.ADD);
        return obj.getId();
    }

    public synchronized boolean endSendObject(MtpObject obj, boolean succeeded) {
        if (sDebug) {
            Log.v(TAG, "endSendObject " + succeeded);
        }
        return generalEndAddObject(obj, succeeded, true);
    }

    public synchronized boolean beginRenameObject(MtpObject obj, String newName) {
        if (sDebug) {
            Log.v(TAG, "beginRenameObject " + obj.getName() + " " + newName);
        }
        if (obj.isRoot()) {
            return false;
        }
        if (isSpecialSubDir(obj)) {
            return false;
        }
        if (obj.getParent().getChild(newName) != null) {
            return false;
        }
        MtpObject oldObj = obj.copy(false);
        obj.setName(newName);
        obj.getParent().addChild(obj);
        oldObj.getParent().addChild(oldObj);
        return generalBeginRenameObject(oldObj, obj);
    }

    public synchronized boolean endRenameObject(MtpObject obj, String oldName, boolean success) {
        MtpObject oldObj;
        if (sDebug) {
            Log.v(TAG, "endRenameObject " + success);
        }
        MtpObject parent = obj.getParent();
        oldObj = parent.getChild(oldName);
        if (!success) {
            MtpObjectState oldState = oldObj.getState();
            oldObj.setName(obj.getName());
            oldObj.setState(obj.getState());
            oldObj = obj;
            oldObj.setName(oldName);
            oldObj.setState(oldState);
            obj = oldObj;
            parent.addChild(obj);
            parent.addChild(oldObj);
        }
        return generalEndRenameObject(oldObj, obj, success);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean beginRemoveObject(android.mtp.MtpStorageManager.MtpObject r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = android.mtp.MtpStorageManager.sDebug     // Catch: java.lang.Throwable -> L3a
            if (r0 == 0) goto L21
            java.lang.String r0 = android.mtp.MtpStorageManager.TAG     // Catch: java.lang.Throwable -> L3a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3a
            r1.<init>()     // Catch: java.lang.Throwable -> L3a
            java.lang.String r2 = "beginRemoveObject "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L3a
            java.lang.String r2 = r4.getName()     // Catch: java.lang.Throwable -> L3a
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L3a
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L3a
            android.util.Log.v(r0, r1)     // Catch: java.lang.Throwable -> L3a
        L21:
            boolean r0 = r4.isRoot()     // Catch: java.lang.Throwable -> L3a
            if (r0 != 0) goto L37
            boolean r0 = r3.isSpecialSubDir(r4)     // Catch: java.lang.Throwable -> L3a
            if (r0 != 0) goto L37
            android.mtp.MtpStorageManager$MtpOperation r0 = android.mtp.MtpStorageManager.MtpOperation.DELETE     // Catch: java.lang.Throwable -> L3a
            boolean r0 = r3.generalBeginRemoveObject(r4, r0)     // Catch: java.lang.Throwable -> L3a
            if (r0 == 0) goto L37
            r0 = 1
            goto L38
        L37:
            r0 = 0
        L38:
            monitor-exit(r3)
            return r0
        L3a:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: android.mtp.MtpStorageManager.beginRemoveObject(android.mtp.MtpStorageManager$MtpObject):boolean");
    }

    public synchronized boolean endRemoveObject(MtpObject obj, boolean success) {
        boolean z;
        if (sDebug) {
            Log.v(TAG, "endRemoveObject " + success);
        }
        boolean ret = true;
        z = false;
        if (obj.isDir()) {
            Iterator it = new ArrayList(obj.getChildren()).iterator();
            while (it.hasNext()) {
                MtpObject child = (MtpObject) it.next();
                if (child.getOperation() == MtpOperation.DELETE) {
                    ret = endRemoveObject(child, success) && ret;
                }
            }
        }
        if (generalEndRemoveObject(obj, success, true) && ret) {
            z = true;
        }
        return z;
    }

    public synchronized boolean beginMoveObject(MtpObject obj, MtpObject newParent) {
        if (sDebug) {
            Log.v(TAG, "beginMoveObject " + newParent.getPath());
        }
        boolean z = false;
        if (obj.isRoot()) {
            return false;
        }
        if (isSpecialSubDir(obj)) {
            return false;
        }
        getChildren(newParent);
        if (newParent.getChild(obj.getName()) != null) {
            return false;
        }
        if (obj.getStorageId() != newParent.getStorageId()) {
            MtpObject newObj = obj.copy(true);
            newObj.setParent(newParent);
            newParent.addChild(newObj);
            if (generalBeginRemoveObject(obj, MtpOperation.RENAME) && generalBeginCopyObject(newObj, false)) {
                z = true;
            }
            return z;
        }
        MtpObject oldObj = obj.copy(false);
        obj.setParent(newParent);
        oldObj.getParent().addChild(oldObj);
        obj.getParent().addChild(obj);
        return generalBeginRenameObject(oldObj, obj);
    }

    public synchronized boolean endMoveObject(MtpObject oldParent, MtpObject newParent, String name, boolean success) {
        if (sDebug) {
            Log.v(TAG, "endMoveObject " + success);
        }
        MtpObject oldObj = oldParent.getChild(name);
        MtpObject newObj = newParent.getChild(name);
        boolean z = false;
        if (oldObj != null && newObj != null) {
            if (oldParent.getStorageId() != newObj.getStorageId()) {
                boolean ret = endRemoveObject(oldObj, success);
                if (generalEndCopyObject(newObj, success, true) && ret) {
                    z = true;
                }
                return z;
            }
            if (!success) {
                MtpObjectState oldState = oldObj.getState();
                oldObj.setParent(newObj.getParent());
                oldObj.setState(newObj.getState());
                oldObj = newObj;
                oldObj.setParent(oldParent);
                oldObj.setState(oldState);
                newObj = oldObj;
                newObj.getParent().addChild(newObj);
                oldParent.addChild(oldObj);
            }
            return generalEndRenameObject(oldObj, newObj, success);
        }
        return false;
    }

    public synchronized int beginCopyObject(MtpObject object, MtpObject newParent) {
        Set<String> set;
        if (sDebug) {
            Log.v(TAG, "beginCopyObject " + object.getName() + " to " + newParent.getPath());
        }
        String name = object.getName();
        if (!newParent.isDir()) {
            return -1;
        }
        if (newParent.isRoot() && (set = this.mSubdirectories) != null && !set.contains(name)) {
            return -1;
        }
        getChildren(newParent);
        if (newParent.getChild(name) != null) {
            return -1;
        }
        MtpObject newObj = object.copy(object.isDir());
        newParent.addChild(newObj);
        newObj.setParent(newParent);
        if (generalBeginCopyObject(newObj, true)) {
            return newObj.getId();
        }
        return -1;
    }

    public synchronized boolean endCopyObject(MtpObject object, boolean success) {
        if (sDebug) {
            Log.v(TAG, "endCopyObject " + object.getName() + " " + success);
        }
        return generalEndCopyObject(object, success, false);
    }

    private synchronized boolean generalEndAddObject(MtpObject obj, boolean succeeded, boolean removeGlobal) {
        switch (AnonymousClass1.$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState[obj.getState().ordinal()]) {
            case 1:
                if (succeeded) {
                    obj.setState(MtpObjectState.FROZEN_ONESHOT_ADD);
                    break;
                } else if (!removeObjectFromCache(obj, removeGlobal, false)) {
                    return false;
                }
                break;
            case 2:
                if (!removeObjectFromCache(obj, removeGlobal, false)) {
                    return false;
                }
                if (succeeded) {
                    this.mMtpNotifier.sendObjectRemoved(obj.getId());
                    break;
                }
                break;
            case 3:
            case 4:
            default:
                return false;
            case 5:
                obj.setState(MtpObjectState.NORMAL);
                if (!succeeded) {
                    MtpObject parent = obj.getParent();
                    if (!removeObjectFromCache(obj, removeGlobal, false)) {
                        return false;
                    }
                    handleAddedObject(parent, obj.getName(), obj.isDir());
                    break;
                }
                break;
        }
        return true;
    }

    private synchronized boolean generalEndRemoveObject(MtpObject obj, boolean success, boolean removeGlobal) {
        switch (AnonymousClass1.$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState[obj.getState().ordinal()]) {
            case 1:
                if (success) {
                    obj.setState(MtpObjectState.FROZEN_ONESHOT_DEL);
                    break;
                } else {
                    obj.setState(MtpObjectState.NORMAL);
                    break;
                }
            case 2:
                if (!removeObjectFromCache(obj, removeGlobal, false)) {
                    return false;
                }
                if (!success) {
                    this.mMtpNotifier.sendObjectRemoved(obj.getId());
                    break;
                }
                break;
            case 3:
            case 4:
            default:
                return false;
            case 5:
                obj.setState(MtpObjectState.NORMAL);
                if (success) {
                    MtpObject parent = obj.getParent();
                    if (!removeObjectFromCache(obj, removeGlobal, false)) {
                        return false;
                    }
                    handleAddedObject(parent, obj.getName(), obj.isDir());
                    break;
                }
                break;
        }
        return true;
    }

    private synchronized boolean generalBeginRenameObject(MtpObject fromObj, MtpObject toObj) {
        fromObj.setState(MtpObjectState.FROZEN);
        toObj.setState(MtpObjectState.FROZEN);
        fromObj.setOperation(MtpOperation.RENAME);
        toObj.setOperation(MtpOperation.RENAME);
        return true;
    }

    private synchronized boolean generalEndRenameObject(MtpObject fromObj, MtpObject toObj, boolean success) {
        boolean ret;
        ret = generalEndRemoveObject(fromObj, success, !success);
        return generalEndAddObject(toObj, success, success) && ret;
    }

    private synchronized boolean generalBeginRemoveObject(MtpObject obj, MtpOperation op) {
        obj.setState(MtpObjectState.FROZEN);
        obj.setOperation(op);
        if (obj.isDir()) {
            for (MtpObject child : obj.getChildren()) {
                generalBeginRemoveObject(child, op);
            }
        }
        return true;
    }

    private synchronized boolean generalBeginCopyObject(MtpObject obj, boolean newId) {
        obj.setState(MtpObjectState.FROZEN);
        obj.setOperation(MtpOperation.COPY);
        if (newId) {
            obj.setId(getNextObjectId());
            this.mObjects.put(Integer.valueOf(obj.getId()), obj);
        }
        if (obj.isDir()) {
            for (MtpObject child : obj.getChildren()) {
                if (!generalBeginCopyObject(child, newId)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001b A[Catch: all -> 0x005d, TryCatch #0 {, blocks: (B:5:0x0005, B:6:0x0012, B:8:0x001b, B:9:0x0028, B:11:0x002e, B:13:0x003c, B:25:0x0051), top: B:35:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean generalEndCopyObject(android.mtp.MtpStorageManager.MtpObject r8, boolean r9, boolean r10) {
        /*
            r7 = this;
            monitor-enter(r7)
            if (r9 == 0) goto L12
            if (r10 == 0) goto L12
            java.util.HashMap<java.lang.Integer, android.mtp.MtpStorageManager$MtpObject> r0 = r7.mObjects     // Catch: java.lang.Throwable -> L5d
            int r1 = r8.getId()     // Catch: java.lang.Throwable -> L5d
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L5d
            r0.put(r1, r8)     // Catch: java.lang.Throwable -> L5d
        L12:
            r0 = 1
            boolean r1 = r8.isDir()     // Catch: java.lang.Throwable -> L5d
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L49
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L5d
            java.util.Collection r4 = android.mtp.MtpStorageManager.MtpObject.m2917$$Nest$mgetChildren(r8)     // Catch: java.lang.Throwable -> L5d
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L5d
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L5d
        L28:
            boolean r4 = r1.hasNext()     // Catch: java.lang.Throwable -> L5d
            if (r4 == 0) goto L49
            java.lang.Object r4 = r1.next()     // Catch: java.lang.Throwable -> L5d
            android.mtp.MtpStorageManager$MtpObject r4 = (android.mtp.MtpStorageManager.MtpObject) r4     // Catch: java.lang.Throwable -> L5d
            android.mtp.MtpStorageManager$MtpOperation r5 = android.mtp.MtpStorageManager.MtpObject.m2919$$Nest$mgetOperation(r4)     // Catch: java.lang.Throwable -> L5d
            android.mtp.MtpStorageManager$MtpOperation r6 = android.mtp.MtpStorageManager.MtpOperation.COPY     // Catch: java.lang.Throwable -> L5d
            if (r5 != r6) goto L48
            boolean r5 = r7.generalEndCopyObject(r4, r9, r10)     // Catch: java.lang.Throwable -> L5d
            if (r5 == 0) goto L46
            if (r0 == 0) goto L46
            r5 = r3
            goto L47
        L46:
            r5 = r2
        L47:
            r0 = r5
        L48:
            goto L28
        L49:
            if (r9 != 0) goto L50
            if (r10 != 0) goto L4e
            goto L50
        L4e:
            r1 = r2
            goto L51
        L50:
            r1 = r3
        L51:
            boolean r1 = r7.generalEndAddObject(r8, r9, r1)     // Catch: java.lang.Throwable -> L5d
            if (r1 == 0) goto L5a
            if (r0 == 0) goto L5a
            r2 = r3
        L5a:
            r0 = r2
            monitor-exit(r7)
            return r0
        L5d:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: android.mtp.MtpStorageManager.generalEndCopyObject(android.mtp.MtpStorageManager$MtpObject, boolean, boolean):boolean");
    }
}
