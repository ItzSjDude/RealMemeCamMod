package com.oplus.compat.view;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class ViewNative {
    private static final String TAG = "ViewNative";

    private ViewNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(name = "isVisibleToUser", params = {})
        public static RefMethod<Boolean> isVisibleToUser;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, View.class);
        }
    }

    @Grey
    @RequiresApi(api = 25)
    public static boolean isVisibleToUser(@NonNull View view) throws UnSupportedApiVersionException {
        if (VersionUtils.isN_MR1()) {
            return ReflectInfo.isVisibleToUser.call(view, new Object[0]).booleanValue();
        }
        throw new UnSupportedApiVersionException("not supported before N_MR1");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean requestAccessibilityFocus(View view) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return view.requestAccessibilityFocus();
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}
