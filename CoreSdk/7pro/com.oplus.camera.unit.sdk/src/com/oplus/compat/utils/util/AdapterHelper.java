package com.oplus.compat.utils.util;

import android.content.Context;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
/* loaded from: classes.dex */
public class AdapterHelper {
    @OplusCompatibleMethod
    private static void initCompat(Context context) {
    }

    public static void init(Context context) {
        initCompat(context);
        Epona.init(context);
    }
}
