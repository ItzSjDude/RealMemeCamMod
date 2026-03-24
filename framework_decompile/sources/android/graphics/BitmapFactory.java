package android.graphics;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.Log;
import android.util.TypedValue;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public class BitmapFactory {
    private static final int DECODE_BUFFER_SIZE = 16384;
    public static IBitmapFactoryExt mBitmapFactoryExt = (IBitmapFactoryExt) ExtLoader.type(IBitmapFactoryExt.class).create();
    public static final String BODAR_PLAFORM = SystemProperties.get("ro.board.platform", "unknown");

    private static native Bitmap nativeDecodeAsset(long j, Rect rect, Options options, long j2, long j3);

    private static native Bitmap nativeDecodeByteArray(byte[] bArr, int i, int i2, Options options, long j, long j2);

    private static native Bitmap nativeDecodeFileDescriptor(FileDescriptor fileDescriptor, Rect rect, Options options, long j, long j2);

    private static native Bitmap nativeDecodeStream(InputStream inputStream, byte[] bArr, Rect rect, Options options, long j, long j2);

    private static native boolean nativeIsSeekable(FileDescriptor fileDescriptor);

    public static class Options {
        public Bitmap inBitmap;
        public int inDensity;
        public boolean inDither;

        @Deprecated
        public boolean inInputShareable;
        public boolean inJustDecodeBounds;
        public boolean inMutable;

        @Deprecated
        public boolean inPreferQualityOverSpeed;

        @Deprecated
        public boolean inPurgeable;
        public int inSampleSize;
        public int inScreenDensity;
        public int inTargetDensity;
        public byte[] inTempStorage;

        @Deprecated
        public boolean mCancel;
        public ColorSpace outColorSpace;
        public Bitmap.Config outConfig;
        public int outHeight;
        public String outMimeType;
        public int outWidth;
        public Bitmap.Config inPreferredConfig = Bitmap.Config.ARGB_8888;
        public ColorSpace inPreferredColorSpace = null;
        public boolean inScaled = true;
        public boolean inPremultiplied = true;
        public boolean inPostProc = false;
        public int inPostProcFlag = 0;

        @Deprecated
        public void requestCancelDecode() {
            this.mCancel = true;
        }

        static void validate(Options opts) {
            if (opts == null) {
                return;
            }
            Bitmap bitmap = opts.inBitmap;
            if (bitmap != null) {
                if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                    throw new IllegalArgumentException("Bitmaps with Config.HARDWARE are always immutable");
                }
                if (opts.inBitmap.isRecycled()) {
                    throw new IllegalArgumentException("Cannot reuse a recycled Bitmap");
                }
            }
            if (opts.inMutable && opts.inPreferredConfig == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Bitmaps with Config.HARDWARE cannot be decoded into - they are immutable");
            }
            ColorSpace colorSpace = opts.inPreferredColorSpace;
            if (colorSpace != null) {
                if (!(colorSpace instanceof ColorSpace.Rgb)) {
                    throw new IllegalArgumentException("The destination color space must use the RGB color model");
                }
                if (((ColorSpace.Rgb) colorSpace).getTransferParameters() == null) {
                    throw new IllegalArgumentException("The destination color space must use an ICC parametric transfer function");
                }
            }
        }

        static long nativeInBitmap(Options opts) {
            Bitmap bitmap;
            if (opts == null || (bitmap = opts.inBitmap) == null) {
                return 0L;
            }
            return bitmap.getNativeInstance();
        }

        static long nativeColorSpace(Options opts) {
            ColorSpace colorSpace;
            if (opts == null || (colorSpace = opts.inPreferredColorSpace) == null) {
                return 0L;
            }
            return colorSpace.getNativeInstance();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0016 -> B:22:0x003a). Please report as a decompilation issue!!! */
    public static Bitmap decodeFile(String pathName, Options opts) throws IOException {
        Options.validate(opts);
        Bitmap bm = null;
        InputStream stream = null;
        try {
            try {
                try {
                    stream = new FileInputStream(pathName);
                    bm = decodeStream(stream, null, opts);
                    stream.close();
                } catch (Exception e) {
                    Log.e("BitmapFactory", "Unable to decode stream: " + e);
                    if (stream != null) {
                        stream.close();
                    }
                }
            } catch (IOException e2) {
            }
            return bm;
        } catch (Throwable th) {
            if (stream != null) {
                try {
                    stream.close();
                } catch (IOException e3) {
                }
            }
            throw th;
        }
    }

    public static Bitmap decodeFile(String pathName) {
        return decodeFile(pathName, null);
    }

    public static Bitmap decodeResourceStream(Resources res, TypedValue value, InputStream is, Rect pad, Options opts) {
        Options.validate(opts);
        if (opts == null) {
            opts = new Options();
        }
        if (opts.inDensity == 0 && value != null) {
            int density = value.density;
            if (density == 0) {
                opts.inDensity = 160;
            } else if (density != 65535) {
                opts.inDensity = density;
            }
        }
        if (opts.inTargetDensity == 0 && res != null) {
            opts.inTargetDensity = res.getDisplayMetrics().densityDpi;
        }
        return decodeStream(is, pad, opts);
    }

    public static Bitmap decodeResource(Resources res, int id, Options opts) throws IOException {
        Options.validate(opts);
        Bitmap bm = null;
        InputStream is = null;
        try {
            try {
                TypedValue value = new TypedValue();
                is = res.openRawResource(id, value);
                bm = mBitmapFactoryExt.getBitmapCache(res, id, opts);
                if (bm == null) {
                    bm = decodeResourceStream(res, value, is, null, opts);
                }
                if (is != null) {
                    is.close();
                }
            } catch (IOException e) {
            }
        } catch (Exception e2) {
            if (is != null) {
                is.close();
            }
        } catch (Throwable th) {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e3) {
                }
            }
            throw th;
        }
        if (bm == null && opts != null && opts.inBitmap != null) {
            throw new IllegalArgumentException("Problem decoding into existing bitmap");
        }
        mBitmapFactoryExt.setBitmapCache(bm, res, id);
        return bm;
    }

    public static Bitmap decodeResource(Resources res, int id) {
        return decodeResource(res, id, null);
    }

    public static Bitmap decodeByteArray(byte[] data, int offset, int length, Options opts) {
        boolean isMtk;
        if ((offset | length) >= 0 && data.length >= offset + length) {
            Options.validate(opts);
            Trace.traceBegin(2L, "decodeBitmap");
            if (!BODAR_PLAFORM.toLowerCase().contains("mt")) {
                isMtk = false;
            } else {
                isMtk = true;
            }
            if (!isMtk && opts != null && !opts.inJustDecodeBounds && length > 524288) {
                mBitmapFactoryExt.osenseSetSceneAction(length >> 13);
            }
            try {
                Bitmap bm = nativeDecodeByteArray(data, offset, length, opts, Options.nativeInBitmap(opts), Options.nativeColorSpace(opts));
                if (bm == null && opts != null && opts.inBitmap != null) {
                    throw new IllegalArgumentException("Problem decoding into existing bitmap");
                }
                setDensityFromOptions(bm, opts);
                return bm;
            } finally {
                Trace.traceEnd(2L);
            }
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public static Bitmap decodeByteArray(byte[] data, int offset, int length) {
        return decodeByteArray(data, offset, length, null);
    }

    private static void setDensityFromOptions(Bitmap outputBitmap, Options opts) {
        if (outputBitmap == null || opts == null) {
            return;
        }
        int density = opts.inDensity;
        if (density != 0) {
            outputBitmap.setDensity(density);
            int targetDensity = opts.inTargetDensity;
            if (targetDensity == 0 || density == targetDensity || density == opts.inScreenDensity) {
                return;
            }
            byte[] np = outputBitmap.getNinePatchChunk();
            boolean isNinePatch = np != null && NinePatch.isNinePatchChunk(np);
            if (opts.inScaled || isNinePatch) {
                outputBitmap.setDensity(targetDensity);
                return;
            }
            return;
        }
        if (opts.inBitmap != null) {
            outputBitmap.setDensity(Bitmap.getDefaultDensity());
        }
    }

    public static Bitmap decodeStream(InputStream is, Rect outPadding, Options opts) {
        Bitmap bm;
        if (is == null) {
            return null;
        }
        Options.validate(opts);
        Trace.traceBegin(2L, "decodeBitmap");
        try {
            if (is instanceof AssetManager.AssetInputStream) {
                long asset = ((AssetManager.AssetInputStream) is).getNativeAsset();
                bm = nativeDecodeAsset(asset, outPadding, opts, Options.nativeInBitmap(opts), Options.nativeColorSpace(opts));
            } else {
                bm = decodeStreamInternal(is, outPadding, opts);
            }
            if (bm == null && opts != null && opts.inBitmap != null) {
                throw new IllegalArgumentException("Problem decoding into existing bitmap");
            }
            setDensityFromOptions(bm, opts);
            return bm;
        } finally {
            Trace.traceEnd(2L);
        }
    }

    private static Bitmap decodeStreamInternal(InputStream is, Rect outPadding, Options opts) throws IOException {
        boolean isMtk;
        int size;
        byte[] tempStorage = opts != null ? opts.inTempStorage : null;
        if (tempStorage == null) {
            tempStorage = new byte[16384];
        }
        if (!BODAR_PLAFORM.toLowerCase().contains("mt")) {
            isMtk = false;
        } else {
            isMtk = true;
        }
        if (!isMtk) {
            try {
                size = is.available();
            } catch (IOException e) {
                size = 0;
                Log.e("BitmapFactory", "decodeStreamInternal is.available err!");
            }
            if (opts != null && !opts.inJustDecodeBounds && size > 524288) {
                mBitmapFactoryExt.osenseSetSceneAction(size >> 13);
            }
        }
        return nativeDecodeStream(is, tempStorage, outPadding, opts, Options.nativeInBitmap(opts), Options.nativeColorSpace(opts));
    }

    public static Bitmap decodeStream(InputStream is) {
        return decodeStream(is, null, null);
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fd, Rect outPadding, Options opts) {
        Bitmap bm;
        Options.validate(opts);
        Trace.traceBegin(2L, "decodeFileDescriptor");
        try {
            if (nativeIsSeekable(fd)) {
                bm = nativeDecodeFileDescriptor(fd, outPadding, opts, Options.nativeInBitmap(opts), Options.nativeColorSpace(opts));
            } else {
                FileInputStream fis = new FileInputStream(fd);
                try {
                    Bitmap bm2 = decodeStreamInternal(fis, outPadding, opts);
                    bm = bm2;
                } finally {
                    try {
                        fis.close();
                    } catch (Throwable th) {
                    }
                }
            }
            if (bm == null && opts != null && opts.inBitmap != null) {
                throw new IllegalArgumentException("Problem decoding into existing bitmap");
            }
            setDensityFromOptions(bm, opts);
            return bm;
        } finally {
            Trace.traceEnd(2L);
        }
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fd) {
        return decodeFileDescriptor(fd, null, null);
    }
}
