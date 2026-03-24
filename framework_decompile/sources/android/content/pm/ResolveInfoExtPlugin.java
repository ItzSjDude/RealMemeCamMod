package android.content.pm;

import android.graphics.drawable.Drawable;
import android.hardware.gnss.GnssSignalType;
import com.oplus.reflect.MethodParams;
import com.oplus.reflect.RefClass;
import com.oplus.reflect.RefStaticMethod;

/* loaded from: classes.dex */
public class ResolveInfoExtPlugin {
    public static Class<?> TYPE = RefClass.load((Class<?>) ResolveInfoExtPlugin.class, "android.content.pm.ResolveInfoExtImpl");

    @MethodParams({PackageManager.class, ResolveInfo.class, String.class, GnssSignalType.CODE_TYPE_I, ApplicationInfo.class})
    public static RefStaticMethod<Drawable> getDrawableByComponentInfoInLoadIcon;

    @MethodParams({PackageManager.class, ResolveInfo.class, String.class, GnssSignalType.CODE_TYPE_I})
    public static RefStaticMethod<Drawable> getDrawableByResolvePackageNameInLoadIcon;
}
