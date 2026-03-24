package com.oppo.inner.graphics;

import android.graphics.BitmapFactory;
import android.util.Log;
import java.lang.reflect.Field;
import com.oplus.inner.graphics.BitmapFactoryWrapper;

public class BitmapFactoryWrapper {
    public static boolean getInPostProc(BitmapFactory.Options options) {
        return BitmapFactoryWrapper.getInPostProc(options);
    }

    public static void setInPostProc(BitmapFactory.Options options, boolean inPostProc) {
        BitmapFactoryWrapper.setInPostProc(options, inPostProc);
    }

}