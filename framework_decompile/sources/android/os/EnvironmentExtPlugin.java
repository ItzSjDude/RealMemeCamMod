package android.os;

import com.oplus.reflect.MethodParams;
import com.oplus.reflect.RefClass;
import com.oplus.reflect.RefStaticMethod;
import java.util.List;

/* loaded from: classes3.dex */
public class EnvironmentExtPlugin {
    public static Class<?> TYPE = RefClass.load((Class<?>) EnvironmentExtPlugin.class, "android.os.EnvironmentExtImpl");

    @MethodParams({List.class})
    public static RefStaticMethod<Void> adjustListInGetInternalMediaDirectories;
    public static RefStaticMethod<Boolean> interceptMaybeTranslateEmulatedPathToInternal;
    public static RefStaticMethod<Boolean> isWhiteListMcp;
}
