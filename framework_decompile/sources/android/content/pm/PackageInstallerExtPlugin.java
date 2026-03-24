package android.content.pm;

import android.hardware.gnss.GnssSignalType;
import com.oplus.reflect.MethodParams;
import com.oplus.reflect.RefClass;
import com.oplus.reflect.RefStaticMethod;

/* loaded from: classes.dex */
public class PackageInstallerExtPlugin {
    public static Class<?> TYPE = RefClass.load((Class<?>) PackageInstallerExtPlugin.class, "android.content.pm.PackageInstallerExtImpl");

    @MethodParams({GnssSignalType.CODE_TYPE_I})
    public static RefStaticMethod<String> interceptCreateSession;
}
