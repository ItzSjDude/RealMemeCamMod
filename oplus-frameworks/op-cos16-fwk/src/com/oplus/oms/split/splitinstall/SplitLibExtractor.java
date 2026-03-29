package com.oplus.oms.split.splitinstall;

import com.oplus.oms.split.common.FileUtil;
import com.oplus.oms.split.common.SplitLog;
import com.oplus.oms.split.splitrequest.SplitInfo;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class SplitLibExtractor implements Closeable {
    private static final String LOCK_FILENAME = "SplitLib.lock";
    private static final String TAG = "Split:LibExtractor";
    private final FileLock mCacheLock;
    private final File mLibDir;
    private final FileChannel mLockChannel;
    private final RandomAccessFile mLockRaf;
    private final File mSourceApk;

    public SplitLibExtractor(File sourceApk, File libDir) throws IOException {
        this.mSourceApk = sourceApk;
        this.mLibDir = libDir;
        File lockFile = new File(libDir, LOCK_FILENAME);
        this.mLockRaf = new RandomAccessFile(lockFile, "rw");
        try {
            this.mLockChannel = this.mLockRaf.getChannel();
            try {
                SplitLog.d(TAG, "Blocking on lock " + lockFile.getPath(), new Object[0]);
                this.mCacheLock = this.mLockChannel.lock();
                SplitLog.d(TAG, lockFile.getPath() + " locked", new Object[0]);
            } catch (IOException | RuntimeException var5) {
                FileUtil.closeQuietly(this.mLockChannel);
                throw var5;
            }
        } catch (RuntimeException var6) {
            FileUtil.closeQuietly(this.mLockRaf);
            throw var6;
        }
    }

    public List<File> load(SplitInfo.LibData libData, boolean forceReload) throws IOException {
        List<File> files;
        if (libData == null) {
            return null;
        }
        if (!this.mCacheLock.isValid()) {
            throw new IllegalStateException("SplitLibExtractor was closed");
        }
        if (!forceReload) {
            try {
                files = loadExistingExtractions(libData.getLibs());
            } catch (IOException e) {
                SplitLog.w(TAG, "Failed to reload existing extracted lib files, falling back to fresh extraction " + e.getMessage(), new Object[0]);
                files = performExtractions(libData);
            }
        } else {
            files = performExtractions(libData);
        }
        SplitLog.d(TAG, "load found " + files.size() + " lib files", new Object[0]);
        return files;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01bb A[Catch: all -> 0x029b, TryCatch #7 {all -> 0x029b, blocks: (B:61:0x012d, B:62:0x017b, B:65:0x018e, B:67:0x01bb, B:69:0x01c4, B:74:0x01ea, B:78:0x0156, B:95:0x014b, B:90:0x014e, B:103:0x01f7, B:108:0x0208, B:109:0x022a, B:112:0x022b, B:113:0x024b, B:124:0x0254, B:128:0x026c, B:129:0x029a), top: B:60:0x012d }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ea A[Catch: all -> 0x029b, TryCatch #7 {all -> 0x029b, blocks: (B:61:0x012d, B:62:0x017b, B:65:0x018e, B:67:0x01bb, B:69:0x01c4, B:74:0x01ea, B:78:0x0156, B:95:0x014b, B:90:0x014e, B:103:0x01f7, B:108:0x0208, B:109:0x022a, B:112:0x022b, B:113:0x024b, B:124:0x0254, B:128:0x026c, B:129:0x029a), top: B:60:0x012d }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x018c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<java.io.File> performExtractions(com.oplus.oms.split.splitrequest.SplitInfo.LibData r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.oms.split.splitinstall.SplitLibExtractor.performExtractions(com.oplus.oms.split.splitrequest.SplitInfo$LibData):java.util.List");
    }

    private SplitInfo.LibData.Lib findLib(String libName, List<SplitInfo.LibData.Lib> libs) {
        if (libs == null || libs.isEmpty()) {
            return null;
        }
        for (SplitInfo.LibData.Lib lib : libs) {
            if (lib.getName().equals(libName)) {
                return lib;
            }
        }
        return null;
    }

    private List<File> loadExistingExtractions(List<SplitInfo.LibData.Lib> libs) throws IOException {
        SplitLog.d(TAG, "loading existing lib files", new Object[0]);
        if (libs == null) {
            SplitLog.w(TAG, "loading existing lib files null", new Object[0]);
            return Collections.emptyList();
        }
        File[] files = this.mLibDir.listFiles();
        if (files == null || files.length <= 0) {
            throw new IOException("Missing extracted lib file '" + this.mLibDir.getPath() + "'");
        }
        List<File> libFiles = new ArrayList<>(files.length);
        for (SplitInfo.LibData.Lib lib : libs) {
            boolean hasSo = false;
            for (File file : files) {
                if (lib.getName().equals(file.getName())) {
                    hasSo = true;
                    libFiles.add(file);
                }
            }
            if (!hasSo) {
                throw new IOException("Invalid extracted lib: file " + lib.getName() + "is not existing!");
            }
        }
        SplitLog.d(TAG, "Existing lib files loaded", new Object[0]);
        return libFiles;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.mLockChannel != null && this.mLockChannel.isOpen()) {
            try {
                this.mLockChannel.close();
            } catch (IOException e) {
                throw new IOException("lockChannel.close error");
            }
        } else {
            SplitLog.d(TAG, "lockChannel may has closed" + this.mLockChannel, new Object[0]);
        }
        if (this.mLockRaf != null) {
            try {
                this.mLockRaf.close();
            } catch (IOException e2) {
                throw new IOException("lockRaf.close error");
            }
        } else {
            SplitLog.d(TAG, "lockRaf may has closed ", new Object[0]);
        }
        if (this.mCacheLock != null && this.mCacheLock.isValid()) {
            try {
                this.mCacheLock.release();
            } catch (IOException e3) {
                throw new IOException("cacheLock.close error");
            }
        } else {
            SplitLog.d(TAG, "cacheLock may has closed " + this.mCacheLock, new Object[0]);
        }
    }
}
