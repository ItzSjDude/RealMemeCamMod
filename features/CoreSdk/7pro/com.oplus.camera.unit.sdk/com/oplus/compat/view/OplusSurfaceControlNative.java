package com.oplus.compat.view;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.GraphicBuffer;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class OplusSurfaceControlNative {
    private static final String ACTION_RATION_LAUNCHING = "fixedrotationlaunching";
    private static final String ACTION_SCREENSHOT = "screenshot";
    private static final String BUFFER_RESULT = "buffer_result";
    private static final String COMPONENT_NAME = getComponentName();
    private static final String PARAM_HEIGHT = "height";
    private static final String PARAM_MAX_LAYER = "maxLayer";
    private static final String PARAM_ROTATION = "rotation";
    private static final String PARAM_SOURCE_CROP = "sourceCrop";
    private static final String PARAM_WIDTH = "width";
    private static final String RESULT = "result";
    private static final String TAG = "OplusSurfaceControlNative";
    private static final String TYPE = "type";

    @OplusCompatibleMethod
    private static Object getComponentNameForCompat() {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(name = OplusSurfaceControlNative.ACTION_SCREENSHOT, params = {Rect.class, int.class, int.class, int.class, int.class})
        public static RefMethod<Bitmap> screenshot;
        @MethodName(name = OplusSurfaceControlNative.ACTION_SCREENSHOT, params = {Rect.class, int.class, int.class, int.class})
        public static RefMethod<Bitmap> screenshotBelowP;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, OplusSurfaceControlNative.COMPONENT_NAME);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class RefHardwareBufferInfo {
        public static RefMethod<HardwareBuffer> createFromGraphicBuffer;

        private RefHardwareBufferInfo() {
        }

        static {
            RefClass.load(RefHardwareBufferInfo.class, HardwareBuffer.class);
        }
    }

    private OplusSurfaceControlNative() {
    }

    private static String getComponentName() {
        return VersionUtils.isOsVersion11_3() ? "com.oplus.view.OplusSurfaceControl" : (String) getComponentNameForCompat();
    }

    @Permission(authStr = ACTION_SCREENSHOT, type = "epona")
    @Blocked
    @RequiresApi(api = 26)
    @System
    public static Bitmap screenshot(Rect rect, int i, int i2, int i3, int i4) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Response query = query("buffer_type", rect, i, i2, i3, i4);
            HardwareBuffer hardwareBuffer = (HardwareBuffer) query.getBundle().getParcelable(BUFFER_RESULT);
            if (hardwareBuffer != null) {
                return getBitmapFromHardwareBuffer(rect, i, i2, i3, i4, hardwareBuffer);
            }
            return (Bitmap) query.getBundle().getParcelable(RESULT);
        } else if (VersionUtils.isR()) {
            Response query2 = query("buffer_type", rect, i, i2, i3, i4);
            GraphicBuffer parcelable = query2.getBundle().getParcelable(BUFFER_RESULT);
            if (parcelable != null) {
                return getBitmapFromGraphicBuffer(rect, i, i2, i3, i4, parcelable);
            }
            return (Bitmap) query2.getBundle().getParcelable(RESULT);
        } else if (VersionUtils.isP()) {
            return ReflectInfo.screenshot.call(null, rect, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        } else {
            if (VersionUtils.isO()) {
                return ReflectInfo.screenshotBelowP.call(null, rect, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
            }
            throw new UnSupportedApiVersionException("not supported before O");
        }
    }

    @Permission(authStr = ACTION_RATION_LAUNCHING, type = "epona")
    @Oem
    @RequiresApi(api = 30)
    @System
    public static boolean isFixedRotationLaunching() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_RATION_LAUNCHING).build()).execute().getBundle().getBoolean(RESULT);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    private static Bitmap getBitmapFromGraphicBuffer(Rect rect, int i, int i2, int i3, int i4, GraphicBuffer graphicBuffer) {
        try {
            HardwareBuffer call = RefHardwareBufferInfo.createFromGraphicBuffer.call(null, graphicBuffer);
            Bitmap wrapHardwareBuffer = Bitmap.wrapHardwareBuffer(call, ColorSpace.get(ColorSpace.Named.SRGB));
            if (call != null) {
                call.close();
            }
            return wrapHardwareBuffer;
        } catch (Throwable unused) {
            return (Bitmap) query("bitmap_type", rect, i, i2, i3, i4).getBundle().getParcelable(RESULT);
        }
    }

    private static Bitmap getBitmapFromHardwareBuffer(Rect rect, int i, int i2, int i3, int i4, HardwareBuffer hardwareBuffer) {
        try {
            return Bitmap.wrapHardwareBuffer(hardwareBuffer, ColorSpace.get(ColorSpace.Named.SRGB));
        } catch (Throwable unused) {
            return (Bitmap) query("bitmap_type", rect, i, i2, i3, i4).getBundle().getParcelable(RESULT);
        }
    }

    private static Response query(String str, Rect rect, int i, int i2, int i3, int i4) {
        return Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_SCREENSHOT).withParcelable(PARAM_SOURCE_CROP, rect).withInt("width", i).withInt("height", i2).withInt(PARAM_MAX_LAYER, i3).withInt(PARAM_ROTATION, i4).withString("type", str).build()).execute();
    }
}
