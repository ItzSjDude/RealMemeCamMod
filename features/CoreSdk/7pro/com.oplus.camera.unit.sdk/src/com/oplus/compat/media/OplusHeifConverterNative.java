package com.oplus.compat.media;

import android.graphics.ColorSpace;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.RequiresApi;
import com.oplus.media.OplusHeifConverter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class OplusHeifConverterNative {
    private static final String CLASS_HEIF_DECODED_FRAME = "com.oplus.media.OplusHeifConverter$HeifDecodedFrame";
    private static final String FIELD_M_BUFFER_ID = "m_buffer_id";
    private static final String FIELD_M_BUFFER_ID_SUB = "m_buffer_id_sub";
    private static final String FIELD_M_COLORSPACE = "m_ColorSpace";
    private static final String FIELD_M_FRAME_HEIGHT = "m_frame_height";
    private static final String FIELD_M_FRAME_WIDTH = "m_frame_width";
    private static final String FIELD_M_RECYCLED = "m_recycled";
    private static final String FIELD_M_YUV_DATA = "m_yuvdata";
    private static final String METHOD_IS_RECYCLED = "isRecycled";
    private static final String METHOD_RECYCLE = "recycle";
    private static final String METHOD_RENDER = "render";
    private static final String TAG = "OplusHeifConverter";
    private static Constructor<?> sHeifConstructor;
    private static Method sMethodRender;
    private static Method sMethondIsRecycled;
    private static Method sMethondRecycle;

    static {
        try {
            Class<?> cls = Class.forName(CLASS_HEIF_DECODED_FRAME);
            sMethodRender = cls.getMethod(METHOD_RENDER, Surface.class, Boolean.TYPE);
            sMethondIsRecycled = cls.getMethod(METHOD_IS_RECYCLED, new Class[0]);
            sMethondRecycle = cls.getMethod(METHOD_RECYCLE, new Class[0]);
            sHeifConstructor = cls.getConstructor(byte[].class, Integer.TYPE, Integer.TYPE, Long.TYPE);
        } catch (Throwable th) {
            Log.e(TAG, "getClassAndMethod" + th);
        }
    }

    /* loaded from: classes.dex */
    public static class HeifDecodeFrameNative {
        public long mBufferId;
        public long mBufferIdSub;
        public ColorSpace mColorSpace;
        private OplusHeifConverter.HeifDecodedFrame mDecodedFrame;
        public int mFrameHeight;
        public int mFrameWidth;
        public boolean mRecycled;
        public byte[] mYuvData;

        public HeifDecodeFrameNative(byte[] bArr, int i, int i2, long j) {
            this.mYuvData = bArr;
            this.mFrameWidth = i;
            this.mFrameHeight = i2;
            this.mBufferId = j;
        }

        @RequiresApi(api = 26)
        public HeifDecodeFrameNative(OplusHeifConverter.HeifDecodedFrame heifDecodedFrame) {
            this.mDecodedFrame = heifDecodedFrame;
            try {
                Class<?> cls = heifDecodedFrame.getClass();
                Field declaredField = cls.getDeclaredField(OplusHeifConverterNative.FIELD_M_FRAME_WIDTH);
                declaredField.setAccessible(true);
                this.mFrameWidth = declaredField.getInt(heifDecodedFrame);
                Field declaredField2 = cls.getDeclaredField(OplusHeifConverterNative.FIELD_M_FRAME_HEIGHT);
                declaredField2.setAccessible(true);
                this.mFrameHeight = declaredField2.getInt(heifDecodedFrame);
                Field declaredField3 = cls.getDeclaredField(OplusHeifConverterNative.FIELD_M_YUV_DATA);
                declaredField3.setAccessible(true);
                this.mYuvData = (byte[]) declaredField3.get(heifDecodedFrame);
                Field declaredField4 = cls.getDeclaredField(OplusHeifConverterNative.FIELD_M_BUFFER_ID);
                declaredField4.setAccessible(true);
                this.mBufferId = declaredField4.getLong(heifDecodedFrame);
                Field declaredField5 = cls.getDeclaredField(OplusHeifConverterNative.FIELD_M_BUFFER_ID_SUB);
                declaredField5.setAccessible(true);
                this.mBufferIdSub = declaredField5.getLong(heifDecodedFrame);
                Field declaredField6 = cls.getDeclaredField(OplusHeifConverterNative.FIELD_M_COLORSPACE);
                declaredField6.setAccessible(true);
                this.mColorSpace = (ColorSpace) declaredField6.get(heifDecodedFrame);
                Field declaredField7 = cls.getDeclaredField(OplusHeifConverterNative.FIELD_M_RECYCLED);
                declaredField7.setAccessible(true);
                this.mRecycled = declaredField7.getBoolean(heifDecodedFrame);
            } catch (Throwable th) {
                Log.e(OplusHeifConverterNative.TAG, "HeifDecodedFrameNative " + th);
            }
        }

        public void recycle() {
            try {
                if (this.mDecodedFrame != null) {
                    OplusHeifConverterNative.sMethondRecycle.invoke(this.mDecodedFrame, new Object[0]);
                } else {
                    OplusHeifConverterNative.sMethondRecycle.invoke(getObjectDecodedFrame(this.mYuvData, this.mFrameWidth, this.mFrameHeight, this.mBufferId), new Object[0]);
                }
            } catch (Throwable th) {
                Log.e(OplusHeifConverterNative.TAG, OplusHeifConverterNative.METHOD_IS_RECYCLED + th);
            }
        }

        public final boolean isRecycled() {
            try {
                if (this.mDecodedFrame != null) {
                    Object invoke = OplusHeifConverterNative.sMethondIsRecycled.invoke(this.mDecodedFrame, new Object[0]);
                    if (invoke != null) {
                        return ((Boolean) invoke).booleanValue();
                    }
                } else {
                    OplusHeifConverterNative.sMethondIsRecycled.invoke(getObjectDecodedFrame(this.mYuvData, this.mFrameWidth, this.mFrameHeight, this.mBufferId), new Object[0]);
                }
                return false;
            } catch (Throwable th) {
                Log.e(OplusHeifConverterNative.TAG, OplusHeifConverterNative.METHOD_IS_RECYCLED + th);
                return false;
            }
        }

        public boolean render(Surface surface, boolean z) {
            if (this.mDecodedFrame != null) {
                return renderByDecodedFrame(surface, z);
            }
            return renderByYuvDataConverter(surface, z);
        }

        private boolean renderByYuvDataConverter(Surface surface, boolean z) {
            try {
                Object invoke = OplusHeifConverterNative.sMethodRender.invoke(getObjectDecodedFrame(this.mYuvData, this.mFrameWidth, this.mFrameHeight, this.mBufferId), surface, Boolean.valueOf(z));
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
            } catch (Exception e) {
                Log.e(OplusHeifConverterNative.TAG, "renderByYuvDataConverter" + e);
            }
            return false;
        }

        private boolean renderByDecodedFrame(Surface surface, boolean z) {
            try {
                Object invoke = OplusHeifConverterNative.sMethodRender.invoke(this.mDecodedFrame, surface, Boolean.valueOf(z));
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
            } catch (Throwable th) {
                Log.e(OplusHeifConverterNative.TAG, "renderByDecodedFrame", th);
            }
            return false;
        }

        private Object getObjectDecodedFrame(byte[] bArr, int i, int i2, long j) {
            try {
                return OplusHeifConverterNative.sHeifConstructor.newInstance(bArr, Integer.valueOf(i), Integer.valueOf(i2), Long.valueOf(j));
            } catch (Throwable th) {
                Log.e(OplusHeifConverterNative.TAG, "getObjectDecodedFrame" + th);
                return null;
            }
        }
    }
}
