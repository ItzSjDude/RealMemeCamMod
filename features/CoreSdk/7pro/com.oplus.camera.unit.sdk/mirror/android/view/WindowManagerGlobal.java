package mirror.android.view;

import android.os.IInterface;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class WindowManagerGlobal {
    public static RefObject<IInterface> sWindowManagerService;
    public static RefObject<IInterface> sWindowSession;

    static {
        RefClass.load(WindowManagerGlobal.class, "android.view.WindowManagerGlobal");
    }
}
