package mirror.android.app;

import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class NotificationManager {
    public static RefObject sService;

    static {
        RefClass.load(NotificationManager.class, "android.app.NotificationManager");
    }
}
