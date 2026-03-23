package com.oplus.ocs.camera.common.surface;

import android.media.ImageReader;
import android.media.MediaCodec;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SurfacePool {
    private static final String TAG = "SurfacePool";
    private static SurfacePool sInstance;
    private HashMap<String, ImageReader> mImageReaderMap;
    private final Object mSurfacePoolLock = new Object();
    private boolean mbInnerVideoSurface = true;
    private Surface mVideoSurface = null;

    public static synchronized SurfacePool getInstance() {
        SurfacePool surfacePool;
        synchronized (SurfacePool.class) {
            if (sInstance == null) {
                sInstance = new SurfacePool();
            }
            surfacePool = sInstance;
        }
        return surfacePool;
    }

    private SurfacePool() {
        this.mImageReaderMap = null;
        this.mImageReaderMap = new HashMap<>();
    }

    public synchronized void releaseVideoSurface() {
        synchronized (this.mSurfacePoolLock) {
            CameraUnitLog.i(TAG, "releaseVideoSurface, mbInnerVideoSurface: " + this.mbInnerVideoSurface);
            Surface surface = this.mVideoSurface;
            if (surface != null) {
                if (this.mbInnerVideoSurface) {
                    surface.release();
                }
                this.mVideoSurface = null;
            }
        }
    }

    public synchronized void setVideoSurface(Surface surface) {
        CameraUnitLog.i(TAG, "setVideoSurface, surface: " + surface);
        if (surface != null) {
            synchronized (this.mSurfacePoolLock) {
                this.mVideoSurface = surface;
                this.mbInnerVideoSurface = false;
            }
        }
    }

    public synchronized boolean isInnerVideoSurface() {
        return this.mbInnerVideoSurface;
    }

    public synchronized Surface getVideoSurface() {
        Surface surface;
        synchronized (this.mSurfacePoolLock) {
            surface = this.mVideoSurface;
        }
        return surface;
    }

    public synchronized Surface createVideoSurface() {
        Surface createPersistentInputSurface;
        synchronized (this.mSurfacePoolLock) {
            createPersistentInputSurface = MediaCodec.createPersistentInputSurface();
            this.mVideoSurface = createPersistentInputSurface;
            this.mbInnerVideoSurface = true;
        }
        return createPersistentInputSurface;
    }

    public void closeImageReader(@NonNull SurfaceKey surfaceKey) {
        synchronized (this.mSurfacePoolLock) {
            String surfaceKey2 = surfaceKey.toString();
            ImageReader imageReader = this.mImageReaderMap.get(surfaceKey2);
            if (imageReader != null) {
                synchronized (ContextHolder.getContext()) {
                    CameraUnitLog.i(TAG, "closeImageReader, key: " + surfaceKey2);
                    try {
                        imageReader.close();
                    } catch (IllegalArgumentException e) {
                        CameraUnitLog.w(TAG, "closeImageReader", e);
                    }
                    this.mImageReaderMap.remove(surfaceKey2);
                }
            }
        }
    }

    public ImageReader getImageReader(SurfaceKey surfaceKey) {
        ImageReader imageReader;
        synchronized (this.mSurfacePoolLock) {
            imageReader = this.mImageReaderMap.get(surfaceKey.toString());
        }
        return imageReader;
    }

    public ImageReader createImageReader(SurfaceWrapper surfaceWrapper) {
        ImageReader imageReader;
        synchronized (this.mSurfacePoolLock) {
            String formatKey = SurfaceKey.formatKey(surfaceWrapper.getCameraType(), surfaceWrapper.getSurfaceUsage(), surfaceWrapper.getFormat());
            imageReader = this.mImageReaderMap.get(formatKey);
            Size halSurfaceSize = surfaceWrapper.getHalSurfaceSize();
            if (imageReader == null || imageReader.getWidth() != halSurfaceSize.getWidth() || imageReader.getHeight() != halSurfaceSize.getHeight()) {
                if (imageReader != null) {
                    CameraUnitLog.i(TAG, "createImageReader, size does not match, reader close, key: " + formatKey);
                    imageReader.close();
                }
                CameraUnitLog.i(TAG, "createImageReader, key: " + formatKey + ", size: " + halSurfaceSize + ", maxImage: " + surfaceWrapper.getMaxImageNumber());
                imageReader = ImageReader.newInstance(halSurfaceSize.getWidth(), halSurfaceSize.getHeight(), surfaceWrapper.getFormat(), surfaceWrapper.getMaxImageNumber(), surfaceWrapper.getIntention());
                this.mImageReaderMap.put(formatKey, imageReader);
            }
        }
        return imageReader;
    }
}
