package com.oppo.inner.os;

import android.os.FileUtils;
import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import com.oplus.inner.os.FileUtilsWrapper;

public class FileUtilsWrapper {
    public static void copyFileOrThrow(File srcFile, File destFile) {
        FileUtilsWrapper.copyFileOrThrow(srcFile, destFile);
    }

    public static boolean copyFile(File srcFile, File destFile) {
        return FileUtilsWrapper.copyFile(srcFile, destFile);
    }

    public static int setPermissions(File path, int mode, int uid, int gid) {
        return FileUtilsWrapper.setPermissions(path, mode, uid, gid);
    }

    public static int setPermissions(String path, int mode, int uid, int gid) {
        return FileUtilsWrapper.setPermissions(path, mode, uid, gid);
    }

    public static int setPermissions(FileDescriptor fd, int mode, int uid, int gid) {
        return FileUtilsWrapper.setPermissions(fd, mode, uid, gid);
    }

    public static String readTextFile(File file, int max, String ellipsis) {
        return FileUtilsWrapper.readTextFile(file, max, ellipsis);
    }

}