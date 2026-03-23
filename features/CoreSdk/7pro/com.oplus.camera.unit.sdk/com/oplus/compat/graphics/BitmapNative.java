package com.oplus.compat.graphics;

import android.graphics.Bitmap;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class BitmapNative {

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(name = "createAshmemBitmap", params = {Bitmap.Config.class})
        public static RefMethod<Bitmap> createAshmemBitmap;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, Bitmap.class);
        }
    }

    @Grey
    @RequiresApi(api = 25)
    public static Bitmap createAshmemBitmap(Bitmap bitmap) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return bitmap.asShared();
        }
        if (VersionUtils.isN_MR1()) {
            return bitmap.createAshmemBitmap();
        }
        throw new UnSupportedApiVersionException("not supported before N_MR1");
    }

    @Grey
    @RequiresApi(api = 25)
    @Deprecated
    public static Bitmap createAshmemBitmap(Bitmap bitmap, Bitmap.Config config) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isN_MR1()) {
            return ReflectInfo.createAshmemBitmap.call(bitmap, config);
        }
        throw new UnSupportedApiVersionException("not supported before N_MR1");
    }
}
