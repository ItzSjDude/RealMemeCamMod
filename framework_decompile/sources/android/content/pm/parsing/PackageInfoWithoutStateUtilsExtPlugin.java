package android.content.pm.parsing;

import android.content.pm.ApplicationInfo;
import android.content.pm.IApplicationInfoExt;
import android.content.pm.pkg.FrameworkPackageUserState;
import com.oplus.reflect.MethodParams;
import com.oplus.reflect.RefClass;
import com.oplus.reflect.RefStaticMethod;

/* loaded from: classes.dex */
public class PackageInfoWithoutStateUtilsExtPlugin {
    public static Class<?> TYPE = RefClass.load((Class<?>) PackageInfoWithoutStateUtilsExtPlugin.class, "android.content.pm.parsing.PackageInfoWithoutStateUtilsExtImpl");

    @MethodParams({ApplicationInfo.class, FrameworkPackageUserState.class, IApplicationInfoExt.class})
    public static RefStaticMethod<Void> adjustResultInGenerateApplicationInfoUnchecked;
}
