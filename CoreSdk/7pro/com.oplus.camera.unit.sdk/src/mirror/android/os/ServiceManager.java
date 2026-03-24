package mirror.android.os;

import android.os.IBinder;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
import java.util.Map;
/* loaded from: classes.dex */
public class ServiceManager {
    public static RefMethod<IBinder> getService;
    public static RefObject<Map<String, IBinder>> sCache;

    static {
        RefClass.load(ServiceManager.class, "android.os.ServiceManager");
    }
}
