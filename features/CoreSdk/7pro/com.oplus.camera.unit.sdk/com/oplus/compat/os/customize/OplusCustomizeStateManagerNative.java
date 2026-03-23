package com.oplus.compat.os.customize;

import android.content.Context;
import android.os.customize.OplusCustomizeStateManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class OplusCustomizeStateManagerNative {
    private static final String TAG = "OplusCustomizeStateManagerNative";

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<List<String>> getAllowedGetUsageStatusList;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.os.customize.OplusCustomizeStateManager");
        }
    }

    @Oem
    @RequiresApi(api = 30)
    public static List<String> getAllowedGetUsageStatusList(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            try {
                return (List) ReflectInfo.getAllowedGetUsageStatusList.call(OplusCustomizeStateManager.getInstance(context), new Object[0]);
            } catch (Exception e) {
                Log.e(TAG, "getAllowedGetUsageStatusList error: " + e.toString());
                return Collections.emptyList();
            }
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
