package com.oplus.compat.content.pm;

import android.content.pm.PackageParser;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefConstructor;
import com.oplus.utils.reflect.RefMethod;
import java.io.File;
/* loaded from: classes.dex */
public class PackageParserNative {
    private static PackageParser sPackageParser;

    private PackageParserNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(name = "parsePackage", params = {File.class, int.class, boolean.class})
        private static RefMethod<Object> parsePackageWithThreeParams;
        @MethodName(name = "parsePackage", params = {File.class, int.class})
        private static RefMethod<Object> parsePackageWithTwoParams;
        private static RefConstructor<PackageParser> sConstructor;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, PackageParser.class);
        }
    }

    @Grey
    @RequiresApi(api = 28)
    public static Object parsePackage(File file, int i, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            sPackageParser = (PackageParser) ReflectInfo.sConstructor.newInstance();
            return ReflectInfo.parsePackageWithThreeParams.call(sPackageParser, file, Integer.valueOf(i), Boolean.valueOf(z));
        }
        throw new UnSupportedApiVersionException("Not supported before P");
    }

    @Grey
    @RequiresApi(api = 28)
    public static Object parsePackage(File file, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            sPackageParser = (PackageParser) ReflectInfo.sConstructor.newInstance();
            return ReflectInfo.parsePackageWithTwoParams.call(sPackageParser, file, Integer.valueOf(i));
        }
        throw new UnSupportedApiVersionException("Not supported before P");
    }
}
