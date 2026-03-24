package android.graphics;

import android.content.res.AssetManager;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import android.os.Trace;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class BitmapRegionDecoder {
    private long mNativeBitmapRegionDecoder;
    private final Object mNativeLock = new Object();
    private boolean mRecycled = false;

    private static native void nativeClean(long j);

    private static native Bitmap nativeDecodeRegion(long j, int i, int i2, int i3, int i4, BitmapFactory.Options options, long j2, long j3);

    private static native int nativeGetHeight(long j);

    private static native int nativeGetWidth(long j);

    private static native BitmapRegionDecoder nativeNewInstance(long j);

    private static native BitmapRegionDecoder nativeNewInstance(FileDescriptor fileDescriptor);

    private static native BitmapRegionDecoder nativeNewInstance(InputStream inputStream, byte[] bArr);

    private static native BitmapRegionDecoder nativeNewInstance(byte[] bArr, int i, int i2);

    @Deprecated
    public static BitmapRegionDecoder newInstance(byte[] data, int offset, int length, boolean isShareable) throws IOException {
        return newInstance(data, offset, length);
    }

    public static BitmapRegionDecoder newInstance(byte[] data, int offset, int length) throws IOException {
        if ((offset | length) < 0 || data.length < offset + length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return nativeNewInstance(data, offset, length);
    }

    @Deprecated
    public static BitmapRegionDecoder newInstance(FileDescriptor fd, boolean isShareable) throws IOException {
        return nativeNewInstance(fd);
    }

    public static BitmapRegionDecoder newInstance(ParcelFileDescriptor pfd) throws IOException {
        return nativeNewInstance(pfd.getFileDescriptor());
    }

    @Deprecated
    public static BitmapRegionDecoder newInstance(InputStream is, boolean isShareable) throws IOException {
        return newInstance(is);
    }

    public static BitmapRegionDecoder newInstance(InputStream is) throws IOException {
        if (is instanceof AssetManager.AssetInputStream) {
            return nativeNewInstance(((AssetManager.AssetInputStream) is).getNativeAsset());
        }
        byte[] tempStorage = new byte[16384];
        return nativeNewInstance(is, tempStorage);
    }

    @Deprecated
    public static BitmapRegionDecoder newInstance(String pathName, boolean isShareable) throws IOException {
        return newInstance(pathName);
    }

    public static BitmapRegionDecoder newInstance(String pathName) throws IOException {
        InputStream stream = null;
        try {
            stream = new FileInputStream(pathName);
            BitmapRegionDecoder decoder = newInstance(stream);
            try {
                stream.close();
            } catch (IOException e) {
            }
            return decoder;
        } catch (Throwable th) {
            if (stream != null) {
                try {
                    stream.close();
                } catch (IOException e2) {
                }
            }
            throw th;
        }
    }

    private BitmapRegionDecoder(long decoder) {
        this.mNativeBitmapRegionDecoder = decoder;
    }

    public Bitmap decodeRegion(Rect rect, BitmapFactory.Options options) {
        Bitmap bm;
        BitmapFactory.Options.validate(options);
        synchronized (this.mNativeLock) {
            checkRecycled("decodeRegion called on recycled region decoder");
            if (rect.right <= 0 || rect.bottom <= 0 || rect.left >= getWidth() || rect.top >= getHeight()) {
                throw new IllegalArgumentException("rectangle is outside the image");
            }
            Trace.traceBegin(2L, "decodeRegion");
            try {
                bm = nativeDecodeRegion(this.mNativeBitmapRegionDecoder, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, options, BitmapFactory.Options.nativeInBitmap(options), BitmapFactory.Options.nativeColorSpace(options));
            } finally {
                Trace.traceEnd(2L);
            }
        }
        return bm;
    }

    public int getWidth() {
        int iNativeGetWidth;
        synchronized (this.mNativeLock) {
            checkRecycled("getWidth called on recycled region decoder");
            iNativeGetWidth = nativeGetWidth(this.mNativeBitmapRegionDecoder);
        }
        return iNativeGetWidth;
    }

    public int getHeight() {
        int iNativeGetHeight;
        synchronized (this.mNativeLock) {
            checkRecycled("getHeight called on recycled region decoder");
            iNativeGetHeight = nativeGetHeight(this.mNativeBitmapRegionDecoder);
        }
        return iNativeGetHeight;
    }

    public void recycle() {
        synchronized (this.mNativeLock) {
            if (!this.mRecycled) {
                nativeClean(this.mNativeBitmapRegionDecoder);
                this.mRecycled = true;
            }
        }
    }

    public final boolean isRecycled() {
        return this.mRecycled;
    }

    private void checkRecycled(String errorMessage) {
        if (this.mRecycled) {
            throw new IllegalStateException(errorMessage);
        }
    }

    protected void finalize() throws Throwable {
        try {
            recycle();
        } finally {
            super.finalize();
        }
    }
}
