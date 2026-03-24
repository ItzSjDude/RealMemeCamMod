package com.oplus.compat.app;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefObject;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class QueuedWorkNative {
    private static final String TAG = "QueuedWorkNative";
    @Grey
    @RequiresApi(api = 21)
    public static LinkedList<Runnable> sFinishers;

    private QueuedWorkNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefObject<LinkedList<Runnable>> sFinishers;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.app.QueuedWork");
        }
    }

    static {
        try {
            if (VersionUtils.isL()) {
                sFinishers = (LinkedList) ReflectInfo.sFinishers.get(null);
                return;
            }
            throw new UnSupportedApiVersionException("Not Supported before L");
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
