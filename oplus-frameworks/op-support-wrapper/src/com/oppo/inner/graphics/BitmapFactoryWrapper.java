package com.oppo.inner.graphics;

import android.graphics.BitmapFactory;
import android.util.Log;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class BitmapFactoryWrapper {
    private static final String TAG = "BitmapFactoryWrapper";

    public static class OptionsWrapper {
        public static boolean getInPostProc(BitmapFactory.Options options) throws NoSuchFieldException {
            try {
                Class<?> clazz = options.getClass();
                Field field = clazz.getField("inPostProc");
                return ((Boolean) field.get(options)).booleanValue();
            } catch (Exception e) {
                Log.e(BitmapFactoryWrapper.TAG, e.toString());
                return false;
            }
        }

        public static void setInPostProc(BitmapFactory.Options options, boolean inPostProc) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            try {
                Class<?> clazz = options.getClass();
                Field field = clazz.getField("inPostProc");
                field.set(options, Boolean.valueOf(inPostProc));
            } catch (Exception e) {
                Log.e(BitmapFactoryWrapper.TAG, e.toString());
            }
        }
    }
}
