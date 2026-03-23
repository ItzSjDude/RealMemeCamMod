package com.oplus.compat.os;

import android.os.Environment;
import android.os.OplusBaseEnvironment;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.os.EnvironmentWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefConstructor;
import com.oplus.utils.reflect.RefMethod;
import java.io.File;
/* loaded from: classes.dex */
public class EnvironmentNative {
    private static final String TAG = "EnvironmentNative";
    private static Object sInstance;

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getExternalStorageDirectoryQCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusCustomDirectoryForQ() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusEngineerDirectoryForQ() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusProductDirectoryForQ() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getOplusVersionDirectoryForQ() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @OplusCompatibleMethod
    public static Object getUserEnvironmentWrapperQCompat(int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getVendorDirectoryCompat() {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<File> getExternalStorageDirectory;
        @MethodName(params = {int.class})
        private static RefConstructor<Object> userEnvironment;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.os.Environment$UserEnvironment");
        }
    }

    private EnvironmentNative() {
    }

    /* loaded from: classes.dex */
    public static class UserEnvironment {
        private Environment.UserEnvironment mUserEnvironment;
        private Object mUserEnvironmentWrapper;

        @RequiresApi(api = 21)
        public UserEnvironment(int i) throws UnSupportedApiVersionException {
            if (VersionUtils.isR()) {
                Object unused = EnvironmentNative.sInstance = ReflectInfo.userEnvironment.newInstance(Integer.valueOf(i));
            } else if (VersionUtils.isQ()) {
                this.mUserEnvironmentWrapper = EnvironmentNative.getUserEnvironmentWrapperQCompat(i);
            } else if (VersionUtils.isL()) {
                this.mUserEnvironment = new Environment.UserEnvironment(i);
            } else {
                throw new UnSupportedApiVersionException();
            }
        }

        @Grey
        @RequiresApi(api = 21)
        public File getExternalStorageDirectory() throws UnSupportedApiVersionException {
            if (VersionUtils.isR()) {
                return (File) ReflectInfo.getExternalStorageDirectory.call(EnvironmentNative.sInstance, new Object[0]);
            }
            if (VersionUtils.isQ()) {
                return (File) EnvironmentNative.getExternalStorageDirectoryQCompat(this.mUserEnvironmentWrapper);
            }
            if (VersionUtils.isL()) {
                return this.mUserEnvironment.getExternalStorageDirectory();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static File getOplusCustomDirectory() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return OplusBaseEnvironment.getOplusCustomDirectory();
        }
        if (VersionUtils.isQ()) {
            return (File) getOplusCustomDirectoryForQ();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static File getOplusProductDirectory() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return OplusBaseEnvironment.getOplusProductDirectory();
        }
        if (VersionUtils.isQ()) {
            return (File) getOplusProductDirectoryForQ();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static File getOplusEngineerDirectory() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return OplusBaseEnvironment.getOplusEngineerDirectory();
        }
        if (VersionUtils.isQ()) {
            return (File) getOplusEngineerDirectoryForQ();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static File getOplusVersionDirectory() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return OplusBaseEnvironment.getOplusVersionDirectory();
        }
        if (VersionUtils.isQ()) {
            return (File) getOplusVersionDirectoryForQ();
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 26)
    public static File getVendorDirectory() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return Environment.getVendorDirectory();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return EnvironmentWrapper.getVendorDirectory();
        }
        if (VersionUtils.isQ()) {
            return (File) getVendorDirectoryCompat();
        }
        if (VersionUtils.isO()) {
            return Environment.getVendorDirectory();
        }
        throw new UnSupportedApiVersionException();
    }
}
