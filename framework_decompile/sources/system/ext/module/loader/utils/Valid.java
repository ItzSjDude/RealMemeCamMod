package system.ext.module.loader.utils;

import com.android.net.module.util.CollectionUtils;
import java.util.Collection;

/* loaded from: classes5.dex */
public class Valid {
    public static boolean isEmpty(Object object) {
        return object == null;
    }

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static <T> boolean isEmpty(Collection<T> col) {
        return CollectionUtils.isEmpty(col);
    }
}
