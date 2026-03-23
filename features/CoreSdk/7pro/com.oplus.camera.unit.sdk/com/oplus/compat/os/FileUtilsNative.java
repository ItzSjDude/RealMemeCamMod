package com.oplus.compat.os;

import android.os.FileUtils;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.os.FileUtilsWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
/* loaded from: classes.dex */
public class FileUtilsNative {
    private static final String TAG = "FileUtilsNative";

    @OplusCompatibleMethod
    private static Object copyFileCompat(File file, File file2) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object readTextFileCompat(File file, int i, String str) throws IOException {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setPermissionsCompat(FileDescriptor fileDescriptor, int i, int i2, int i3) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setPermissionsQCompat(File file, int i, int i2, int i3) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setPermissionsQCompat(String str, int i, int i2, int i3) {
        return null;
    }

    private FileUtilsNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(name = "setPermissions", params = {File.class, int.class, int.class, int.class})
        private static RefMethod<Integer> setPermissionsFile;
        @MethodName(name = "setPermissions", params = {String.class, int.class, int.class, int.class})
        private static RefMethod<Integer> setPermissionsString;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.os.FileUtils");
        }
    }

    @Grey
    @RequiresApi(api = 21)
    public static int setPermissions(String str, int i, int i2, int i3) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Integer) ReflectInfo.setPermissionsString.call(null, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3))).intValue();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) setPermissionsQCompat(str, i, i2, i3)).intValue();
        }
        if (VersionUtils.isL()) {
            return FileUtils.setPermissions(str, i, i2, i3);
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 21)
    public static int setPermissions(File file, int i, int i2, int i3) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Integer) ReflectInfo.setPermissionsFile.call(null, file, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3))).intValue();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) setPermissionsQCompat(file, i, i2, i3)).intValue();
        }
        if (VersionUtils.isL()) {
            return FileUtils.setPermissions(file, i, i2, i3);
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 28)
    public static boolean copyFile(File file, File file2) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return FileUtils.copyFile(file, file2);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return FileUtilsWrapper.copyFile(file, file2);
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) copyFileCompat(file, file2)).booleanValue();
        }
        if (VersionUtils.isP()) {
            return FileUtils.copyFile(file, file2);
        }
        throw new UnSupportedApiVersionException();
    }

    @Blocked
    @RequiresApi(api = 21)
    public static int setPermissions(FileDescriptor fileDescriptor, int i, int i2, int i3) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return FileUtils.setPermissions(fileDescriptor, i, i2, i3);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return FileUtilsWrapper.setPermissions(fileDescriptor, i, i2, i3);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) setPermissionsCompat(fileDescriptor, i, i2, i3)).intValue();
            }
            if (VersionUtils.isL()) {
                return FileUtils.setPermissions(fileDescriptor, i, i2, i3);
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String readTextFile(File file, int i, String str) throws UnSupportedApiVersionException, IOException {
        if (VersionUtils.isS()) {
            return FileUtils.readTextFile(file, i, str);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return FileUtilsWrapper.readTextFile(file, i, str);
        }
        if (VersionUtils.isQ()) {
            return (String) readTextFileCompat(file, i, str);
        }
        throw new UnSupportedApiVersionException();
    }
}
