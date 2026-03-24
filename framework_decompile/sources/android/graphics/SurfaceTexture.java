package android.graphics;

import android.app.ActivityThread;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Trace;
import android.view.Surface;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SurfaceTexture {
    private static final List<String> PACKAGES_NEED_SEND_MESSAGE_AT_FRONT = Arrays.asList("com.ss.android.ugc.aweme", "com.sina.weibo");
    private final Looper mCreatorLooper;
    private long mFrameAvailableListener;
    private boolean mIsSingleBuffered;
    private Handler mOnFrameAvailableHandler;
    private long mProducer;
    private long mSurfaceTexture;

    public interface OnFrameAvailableListener {
        void onFrameAvailable(SurfaceTexture surfaceTexture);
    }

    private native int nativeAttachToGLContext(int i);

    private native int nativeDetachFromGLContext();

    private native void nativeFinalize();

    private native int nativeGetDataSpace();

    private native long nativeGetTimestamp();

    private native void nativeGetTransformMatrix(float[] fArr);

    private native void nativeInit(boolean z, int i, boolean z2, WeakReference<SurfaceTexture> weakReference) throws Surface.OutOfResourcesException;

    private native boolean nativeIsReleased();

    private native void nativeRelease();

    private native void nativeReleaseTexImage();

    private native void nativeSetDefaultBufferSize(int i, int i2);

    private native void nativeUpdateTexImage();

    @Deprecated
    public static class OutOfResourcesException extends Exception {
        public OutOfResourcesException() {
        }

        public OutOfResourcesException(String name) {
            super(name);
        }
    }

    public SurfaceTexture(int texName) {
        this(texName, false);
    }

    public SurfaceTexture(int texName, boolean singleBufferMode) throws Surface.OutOfResourcesException {
        this.mCreatorLooper = Looper.myLooper();
        this.mIsSingleBuffered = singleBufferMode;
        nativeInit(false, texName, singleBufferMode, new WeakReference<>(this));
    }

    public SurfaceTexture(boolean singleBufferMode) throws Surface.OutOfResourcesException {
        this.mCreatorLooper = Looper.myLooper();
        this.mIsSingleBuffered = singleBufferMode;
        nativeInit(true, 0, singleBufferMode, new WeakReference<>(this));
    }

    public void setOnFrameAvailableListener(OnFrameAvailableListener listener) {
        setOnFrameAvailableListener(listener, null);
    }

    public void setOnFrameAvailableListener(final OnFrameAvailableListener listener, Handler handler) {
        Looper looper;
        if (listener != null) {
            if (handler != null) {
                looper = handler.getLooper();
            } else {
                Looper mainLooper = this.mCreatorLooper;
                if (mainLooper == null) {
                    mainLooper = Looper.getMainLooper();
                }
                looper = mainLooper;
            }
            this.mOnFrameAvailableHandler = new Handler(looper, null, true) { // from class: android.graphics.SurfaceTexture.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    Trace.traceBegin(8L, "ST_handleMessage" + String.valueOf(System.identityHashCode(this)));
                    listener.onFrameAvailable(SurfaceTexture.this);
                    Trace.traceEnd(8L);
                }
            };
            return;
        }
        this.mOnFrameAvailableHandler = null;
    }

    public void setDefaultBufferSize(int width, int height) {
        nativeSetDefaultBufferSize(width, height);
    }

    public void updateTexImage() {
        nativeUpdateTexImage();
    }

    public void releaseTexImage() {
        nativeReleaseTexImage();
    }

    public void detachFromGLContext() {
        int err = nativeDetachFromGLContext();
        if (err != 0) {
            throw new RuntimeException("Error during detachFromGLContext (see logcat for details)");
        }
    }

    public void attachToGLContext(int texName) {
        int err = nativeAttachToGLContext(texName);
        if (err != 0) {
            throw new RuntimeException("Error during attachToGLContext (see logcat for details)");
        }
    }

    public void getTransformMatrix(float[] mtx) {
        if (mtx.length != 16) {
            throw new IllegalArgumentException();
        }
        nativeGetTransformMatrix(mtx);
    }

    public long getTimestamp() {
        return nativeGetTimestamp();
    }

    public int getDataSpace() {
        return nativeGetDataSpace();
    }

    public void release() {
        nativeRelease();
    }

    public boolean isReleased() {
        return nativeIsReleased();
    }

    protected void finalize() throws Throwable {
        try {
            nativeFinalize();
        } finally {
            super.finalize();
        }
    }

    private static void postEventFromNative(WeakReference<SurfaceTexture> weakSelf) {
        Handler handler;
        boolean success;
        SurfaceTexture st = weakSelf.get();
        if (st != null && (handler = st.mOnFrameAvailableHandler) != null) {
            Trace.traceBegin(8L, "StMessageToMSGQueue");
            String packageName = ActivityThread.currentPackageName();
            boolean pkgNameInWhiteList = false;
            if (packageName != null && packageName.length() > 0) {
                Iterator<String> it = PACKAGES_NEED_SEND_MESSAGE_AT_FRONT.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String whiteListName = it.next();
                    if (packageName.contains(whiteListName)) {
                        pkgNameInWhiteList = true;
                        break;
                    }
                }
            }
            Message msg = Message.obtain();
            if (handler.getLooper() == Looper.getMainLooper() && pkgNameInWhiteList) {
                success = handler.sendMessageAtFrontOfQueue(msg);
            } else {
                success = handler.sendEmptyMessage(0);
            }
            if (!success) {
                Trace.traceBegin(8L, "StSendMsgFail");
                Trace.traceEnd(8L);
            }
            Trace.traceEnd(8L);
        }
    }

    public boolean isSingleBuffered() {
        return this.mIsSingleBuffered;
    }
}
