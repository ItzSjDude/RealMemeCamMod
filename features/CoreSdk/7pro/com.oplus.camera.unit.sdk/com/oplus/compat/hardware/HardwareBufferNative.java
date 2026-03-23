package com.oplus.compat.hardware;

import android.graphics.Bitmap;
import android.graphics.GraphicBuffer;
import android.hardware.HardwareBuffer;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class HardwareBufferNative {
    private static final String ACTION_CREATE_FROM_GRAPHIC_BUFFER = "createFromGraphicBuffer";
    private static final String COMPONENT_NAME = "android.graphics.HardwareBuffer";
    private static final String KEY_GRAPHIC_BUFFER = "graphicBuffer";
    private static final String KEY_RESULT = "result";
    private static final String TAG = "HardwareBufferNative";

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<GraphicBuffer> createGraphicBufferHandle;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, Bitmap.class);
        }
    }

    @Permission(authStr = ACTION_CREATE_FROM_GRAPHIC_BUFFER, type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static HardwareBuffer createFromGraphicBuffer(@NonNull Bitmap bitmap) throws UnSupportedApiVersionException {
        if (bitmap == null) {
            throw new IllegalArgumentException("bitmap cannot be null.");
        }
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_CREATE_FROM_GRAPHIC_BUFFER).withParcelable(KEY_GRAPHIC_BUFFER, (GraphicBuffer) ReflectInfo.createGraphicBufferHandle.call(bitmap, new Object[0])).build()).execute();
            if (execute.isSuccessful()) {
                return (HardwareBuffer) execute.getBundle().getParcelable(KEY_RESULT);
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}
