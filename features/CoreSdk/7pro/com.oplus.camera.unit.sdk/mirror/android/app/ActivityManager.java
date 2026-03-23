package mirror.android.app;

import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class ActivityManager {
    public static RefObject IActivityManagerSingleton;

    static {
        RefClass.load(ActivityManager.class, "android.app.ActivityManager");
    }
}
