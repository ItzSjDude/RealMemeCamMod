package mirror.android.app;

import android.content.pm.PackageManager;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class ContextImpl {
    public static RefObject<PackageManager> mPackageManager;
    public static RefObject<Object[]> mServiceCache;

    static {
        RefClass.load(ContextImpl.class, "android.app.ContextImpl");
    }
}
