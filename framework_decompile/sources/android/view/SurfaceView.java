package android.view;

import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.graphics.BLASTBufferQueue;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RenderNode;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceControlViewHost;
import android.view.SurfaceHolder;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.IAccessibilityEmbeddedConnection;
import android.window.SurfaceSyncer;
import com.android.internal.view.SurfaceCallbackHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Consumer;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes3.dex */
public class SurfaceView extends View implements ViewRootImpl.SurfaceChangedCallback {
    private static final int MAX_VALUE = 16384;
    private static final String TAG = "SurfaceView";
    private final boolean DEBUG;
    private final boolean DEBUG_POSITION;
    private boolean mAttachedToWindow;
    int mBackgroundColor;
    SurfaceControl mBackgroundControl;
    private BLASTBufferQueue mBlastBufferQueue;
    private SurfaceControl mBlastSurfaceControl;
    final ArrayList<SurfaceHolder.Callback> mCallbacks;
    boolean mClipSurfaceToBounds;
    float mCornerRadius;
    private boolean mDisableBackgroundLayer;
    boolean mDrawFinished;
    private final ViewTreeObserver.OnPreDrawListener mDrawListener;
    boolean mDrawingStopped;
    int mFormat;
    private final SurfaceControl.Transaction mFrameCallbackTransaction;
    private boolean mGlobalListenersAdded;
    boolean mHaveFrame;
    boolean mIsCreating;
    long mLastLockTime;
    int mLastSurfaceHeight;
    int mLastSurfaceWidth;
    boolean mLastWindowVisibility;
    final int[] mLocation;
    private int mParentSurfaceSequenceId;
    private SurfaceViewPositionUpdateListener mPositionListener;
    private final Rect mRTLastReportedPosition;
    private final Point mRTLastReportedSurfaceSize;
    private RemoteAccessibilityController mRemoteAccessibilityController;
    int mRequestedFormat;
    int mRequestedHeight;
    boolean mRequestedVisible;
    int mRequestedWidth;
    Paint mRoundedViewportPaint;
    private final SurfaceControl.Transaction mRtTransaction;
    final Rect mScreenRect;
    private final ViewTreeObserver.OnScrollChangedListener mScrollChangedListener;
    int mSubLayer;
    final Surface mSurface;
    float mSurfaceAlpha;
    SurfaceControl mSurfaceControl;
    final Object mSurfaceControlLock;
    boolean mSurfaceCreated;
    private int mSurfaceFlags;
    final Rect mSurfaceFrame;
    int mSurfaceHeight;
    private final SurfaceHolder mSurfaceHolder;
    final ReentrantLock mSurfaceLock;
    SurfaceControlViewHost.SurfacePackage mSurfacePackage;
    private final SurfaceSession mSurfaceSession;
    private final SurfaceSyncer mSurfaceSyncer;
    private ISurfaceViewSocExt mSurfaceViewSocExt;
    int mSurfaceWidth;
    private final ArraySet<Integer> mSyncIds;
    private final Matrix mTmpMatrix;
    final Rect mTmpRect;
    int mTransformHint;
    boolean mUseAlpha;
    boolean mViewVisibility;
    boolean mVisible;
    int mWindowSpaceLeft;
    int mWindowSpaceTop;
    boolean mWindowStopped;
    boolean mWindowVisibility;

    /* renamed from: lambda$new$0$android-view-SurfaceView, reason: not valid java name */
    /* synthetic */ boolean m5159lambda$new$0$androidviewSurfaceView() throws Throwable {
        this.mHaveFrame = getWidth() > 0 && getHeight() > 0;
        updateSurface();
        return true;
    }

    public SurfaceView(Context context) {
        this(context, null);
    }

    public SurfaceView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SurfaceView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public SurfaceView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this(context, attrs, defStyleAttr, defStyleRes, false);
    }

    public SurfaceView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes, boolean disableBackgroundLayer) {
        super(context, attrs, defStyleAttr, defStyleRes);
        boolean z = SystemProperties.getBoolean("persist.sys.assert.panic", false) || SystemProperties.getBoolean("debug.surfaceview.log", false);
        this.DEBUG = z;
        this.DEBUG_POSITION = z;
        this.mCallbacks = new ArrayList<>();
        this.mLocation = new int[2];
        this.mSurfaceLock = new ReentrantLock(true);
        this.mSurface = new Surface();
        this.mDrawingStopped = true;
        this.mDrawFinished = false;
        this.mScreenRect = new Rect();
        this.mSurfaceSession = new SurfaceSession();
        this.mDisableBackgroundLayer = false;
        this.mSurfaceControlLock = new Object();
        this.mTmpRect = new Rect();
        this.mSubLayer = -2;
        this.mIsCreating = false;
        this.mScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.view.SurfaceView$$ExternalSyntheticLambda4
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() throws Throwable {
                this.f$0.updateSurface();
            }
        };
        this.mDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: android.view.SurfaceView$$ExternalSyntheticLambda5
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return this.f$0.m5159lambda$new$0$androidviewSurfaceView();
            }
        };
        this.mRequestedVisible = false;
        this.mWindowVisibility = false;
        this.mLastWindowVisibility = false;
        this.mViewVisibility = false;
        this.mWindowStopped = false;
        this.mRequestedWidth = -1;
        this.mRequestedHeight = -1;
        this.mRequestedFormat = 4;
        this.mUseAlpha = false;
        this.mSurfaceAlpha = 1.0f;
        this.mBackgroundColor = -16777216;
        this.mHaveFrame = false;
        this.mSurfaceCreated = false;
        this.mLastLockTime = 0L;
        this.mVisible = false;
        this.mWindowSpaceLeft = -1;
        this.mWindowSpaceTop = -1;
        this.mSurfaceWidth = -1;
        this.mSurfaceHeight = -1;
        this.mFormat = -1;
        this.mSurfaceFrame = new Rect();
        this.mLastSurfaceWidth = -1;
        this.mLastSurfaceHeight = -1;
        this.mTransformHint = 0;
        this.mSurfaceFlags = 4;
        this.mSurfaceSyncer = new SurfaceSyncer();
        this.mSyncIds = new ArraySet<>();
        this.mRtTransaction = new SurfaceControl.Transaction();
        this.mFrameCallbackTransaction = new SurfaceControl.Transaction();
        this.mRemoteAccessibilityController = new RemoteAccessibilityController(this);
        this.mTmpMatrix = new Matrix();
        this.mRTLastReportedPosition = new Rect();
        this.mRTLastReportedSurfaceSize = new Point();
        this.mPositionListener = null;
        this.mSurfaceHolder = new AnonymousClass1();
        setWillNotDraw(true);
        this.mDisableBackgroundLayer = disableBackgroundLayer;
        this.mSurfaceViewSocExt = (ISurfaceViewSocExt) ExtLoader.type(ISurfaceViewSocExt.class).base(this).create();
    }

    public SurfaceHolder getHolder() {
        return this.mSurfaceHolder;
    }

    private void updateRequestedVisibility() {
        this.mRequestedVisible = this.mViewVisibility && this.mWindowVisibility && !this.mWindowStopped;
    }

    private void setWindowStopped(boolean stopped) throws Throwable {
        if (this.DEBUG) {
            Log.i(TAG, "setWindowStopped,stopped:" + this.mWindowStopped + ",stopped:" + stopped);
        }
        this.mWindowStopped = stopped;
        updateRequestedVisibility();
        updateSurface();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.i(TAG, System.identityHashCode(this) + " onAttachedToWindow");
        getViewRootImpl().addSurfaceChangedCallback(this);
        this.mWindowStopped = false;
        this.mViewVisibility = getVisibility() == 0;
        updateRequestedVisibility();
        this.mAttachedToWindow = true;
        this.mParent.requestTransparentRegion(this);
        if (!this.mGlobalListenersAdded) {
            ViewTreeObserver observer = getViewTreeObserver();
            observer.addOnScrollChangedListener(this.mScrollChangedListener);
            observer.addOnPreDrawListener(this.mDrawListener);
            this.mGlobalListenersAdded = true;
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) throws Throwable {
        super.onWindowVisibilityChanged(visibility);
        this.mWindowVisibility = visibility == 0;
        updateRequestedVisibility();
        updateSurface();
    }

    @Override // android.view.View
    public void setVisibility(int visibility) throws Throwable {
        super.setVisibility(visibility);
        boolean z = visibility == 0;
        this.mViewVisibility = z;
        boolean newRequestedVisible = this.mWindowVisibility && z && !this.mWindowStopped;
        if (newRequestedVisible != this.mRequestedVisible) {
            requestLayout();
        }
        this.mRequestedVisible = newRequestedVisible;
        updateSurface();
    }

    public void setUseAlpha() {
        if (!this.mUseAlpha) {
            this.mUseAlpha = true;
            updateSurfaceAlpha();
        }
    }

    @Override // android.view.View
    public void setAlpha(float alpha) {
        if (this.DEBUG) {
            Log.d(TAG, System.identityHashCode(this) + " setAlpha: mUseAlpha = " + this.mUseAlpha + " alpha=" + alpha);
        }
        super.setAlpha(alpha);
        updateSurfaceAlpha();
    }

    private float getFixedAlpha() {
        float alpha = getAlpha();
        if (!this.mUseAlpha || (this.mSubLayer <= 0 && alpha != 0.0f)) {
            return 1.0f;
        }
        return alpha;
    }

    private void updateSurfaceAlpha() {
        if (!this.mUseAlpha || !this.mHaveFrame || this.mSurfaceControl == null) {
            return;
        }
        float viewAlpha = getAlpha();
        if (this.mSubLayer < 0 && 0.0f < viewAlpha && viewAlpha < 1.0f) {
            Log.w(TAG, System.identityHashCode(this) + " updateSurfaceAlpha: translucent color is not supported for a surface placed z-below.");
        }
        ViewRootImpl viewRoot = getViewRootImpl();
        if (viewRoot == null) {
            return;
        }
        float alpha = getFixedAlpha();
        if (alpha != this.mSurfaceAlpha) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            transaction.setAlpha(this.mSurfaceControl, alpha);
            viewRoot.applyTransactionOnDraw(transaction);
            damageInParent();
            this.mSurfaceAlpha = alpha;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performDrawFinished() {
        this.mDrawFinished = true;
        if (this.mAttachedToWindow) {
            this.mParent.requestTransparentRegion(this);
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() throws Throwable {
        ViewRootImpl viewRoot = getViewRootImpl();
        if (viewRoot != null) {
            viewRoot.removeSurfaceChangedCallback(this);
        }
        if (this.DEBUG) {
            Log.i(TAG, "onDetachedFromWindow");
        }
        this.mAttachedToWindow = false;
        if (this.mGlobalListenersAdded) {
            ViewTreeObserver observer = getViewTreeObserver();
            observer.removeOnScrollChangedListener(this.mScrollChangedListener);
            observer.removeOnPreDrawListener(this.mDrawListener);
            this.mGlobalListenersAdded = false;
        }
        this.mRequestedVisible = false;
        updateSurface();
        releaseSurfaces(true);
        this.mHaveFrame = false;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width;
        int height;
        int i = this.mRequestedWidth;
        if (i >= 0) {
            width = resolveSizeAndState(i, widthMeasureSpec, 0);
        } else {
            width = getDefaultSize(0, widthMeasureSpec);
        }
        int i2 = this.mRequestedHeight;
        if (i2 >= 0) {
            height = resolveSizeAndState(i2, heightMeasureSpec, 0);
        } else {
            height = getDefaultSize(0, heightMeasureSpec);
        }
        setMeasuredDimension(width, height);
    }

    @Override // android.view.View
    protected boolean setFrame(int left, int top, int right, int bottom) throws Throwable {
        boolean result = super.setFrame(left, top, right, bottom);
        updateSurface();
        return result;
    }

    @Override // android.view.View
    public boolean gatherTransparentRegion(Region region) {
        if (isAboveParent() || !this.mDrawFinished) {
            return super.gatherTransparentRegion(region);
        }
        boolean opaque = true;
        if ((this.mPrivateFlags & 128) == 0) {
            opaque = super.gatherTransparentRegion(region);
        } else if (region != null) {
            int w = getWidth();
            int h = getHeight();
            if (w > 0 && h > 0) {
                getLocationInWindow(this.mLocation);
                int[] iArr = this.mLocation;
                int l = iArr[0];
                int t = iArr[1];
                region.op(l, t, l + w, t + h, Region.Op.UNION);
            }
        }
        if (PixelFormat.formatHasAlpha(this.mRequestedFormat)) {
            return false;
        }
        return opaque;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.mDrawFinished && !isAboveParent() && (this.mPrivateFlags & 128) == 0) {
            clearSurfaceViewPort(canvas);
        }
        super.draw(canvas);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.mDrawFinished && !isAboveParent() && (this.mPrivateFlags & 128) == 128) {
            clearSurfaceViewPort(canvas);
        }
        super.dispatchDraw(canvas);
    }

    public void setEnableSurfaceClipping(boolean enabled) {
        this.mClipSurfaceToBounds = enabled;
        invalidate();
    }

    @Override // android.view.View
    public void setClipBounds(Rect clipBounds) {
        super.setClipBounds(clipBounds);
        if (!this.mClipSurfaceToBounds || this.mSurfaceControl == null) {
            return;
        }
        if (this.mCornerRadius > 0.0f && !isAboveParent()) {
            invalidate();
        }
        if (this.mClipBounds != null) {
            this.mTmpRect.set(this.mClipBounds);
        } else {
            this.mTmpRect.set(0, 0, this.mSurfaceWidth, this.mSurfaceHeight);
        }
        if (this.DEBUG) {
            Log.v(TAG, String.format("%d setWindowCrop([%d %d %d %d]) in setClipBounds([%d %d %d %d])", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(this.mTmpRect.left), Integer.valueOf(this.mTmpRect.top), Integer.valueOf(this.mTmpRect.right), Integer.valueOf(this.mTmpRect.bottom), Integer.valueOf(clipBounds.left), Integer.valueOf(clipBounds.top), Integer.valueOf(clipBounds.right), Integer.valueOf(clipBounds.bottom)));
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        transaction.setWindowCrop(this.mSurfaceControl, this.mTmpRect);
        applyTransactionOnVriDraw(transaction);
        invalidate();
    }

    private void clearSurfaceViewPort(Canvas canvas) {
        if (this.mCornerRadius > 0.0f) {
            canvas.getClipBounds(this.mTmpRect);
            if (this.mClipSurfaceToBounds && this.mClipBounds != null) {
                this.mTmpRect.intersect(this.mClipBounds);
            }
            float f = this.mTmpRect.left;
            float f2 = this.mTmpRect.top;
            float f3 = this.mTmpRect.right;
            float f4 = this.mTmpRect.bottom;
            float f5 = this.mCornerRadius;
            canvas.punchHole(f, f2, f3, f4, f5, f5);
            return;
        }
        canvas.punchHole(0.0f, 0.0f, getWidth(), getHeight(), 0.0f, 0.0f);
    }

    public void setCornerRadius(float cornerRadius) {
        this.mCornerRadius = cornerRadius;
        if (cornerRadius > 0.0f && this.mRoundedViewportPaint == null) {
            Paint paint = new Paint(1);
            this.mRoundedViewportPaint = paint;
            paint.setBlendMode(BlendMode.CLEAR);
            this.mRoundedViewportPaint.setColor(0);
        }
        invalidate();
    }

    public float getCornerRadius() {
        return this.mCornerRadius;
    }

    public void setZOrderMediaOverlay(boolean isMediaOverlay) {
        this.mSubLayer = isMediaOverlay ? -1 : -2;
    }

    public void setZOrderOnTop(boolean onTop) {
        boolean allowDynamicChange = getContext().getApplicationInfo().targetSdkVersion > 29;
        setZOrderedOnTop(onTop, allowDynamicChange);
    }

    public boolean isZOrderedOnTop() {
        return this.mSubLayer > 0;
    }

    public boolean setZOrderedOnTop(boolean onTop, boolean allowDynamicChange) {
        int subLayer;
        ViewRootImpl viewRoot;
        if (onTop) {
            subLayer = 1;
        } else {
            subLayer = -2;
        }
        if (this.mSubLayer == subLayer) {
            return false;
        }
        this.mSubLayer = subLayer;
        if (!allowDynamicChange) {
            return false;
        }
        if (this.mSurfaceControl == null || (viewRoot = getViewRootImpl()) == null) {
            return true;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        updateRelativeZ(transaction);
        viewRoot.applyTransactionOnDraw(transaction);
        invalidate();
        return true;
    }

    public void setSecure(boolean isSecure) {
        if (isSecure) {
            this.mSurfaceFlags |= 128;
        } else {
            this.mSurfaceFlags &= -129;
        }
    }

    public void setProtected(boolean isProtected) {
        if (isProtected) {
            this.mSurfaceFlags |= 2048;
        } else {
            this.mSurfaceFlags &= -2049;
        }
    }

    private void updateOpaqueFlag() {
        if (!PixelFormat.formatHasAlpha(this.mRequestedFormat)) {
            this.mSurfaceFlags |= 1024;
        } else {
            this.mSurfaceFlags &= -1025;
        }
    }

    private void updateBackgroundVisibility(SurfaceControl.Transaction t) {
        SurfaceControl surfaceControl = this.mBackgroundControl;
        if (surfaceControl == null) {
            return;
        }
        if (this.mSubLayer < 0 && (this.mSurfaceFlags & 1024) != 0 && !this.mDisableBackgroundLayer) {
            t.show(surfaceControl);
        } else if (getViewRootImpl() != null && getViewRootImpl().getWrapper().getExtImpl().showSurfaceViewBackground(this.mSubLayer)) {
            t.show(this.mBackgroundControl);
        } else {
            t.hide(this.mBackgroundControl);
        }
    }

    private SurfaceControl.Transaction updateBackgroundColor(SurfaceControl.Transaction t) {
        float[] colorComponents = {Color.red(this.mBackgroundColor) / 255.0f, Color.green(this.mBackgroundColor) / 255.0f, Color.blue(this.mBackgroundColor) / 255.0f};
        t.setColor(this.mBackgroundControl, colorComponents);
        return t;
    }

    private void releaseSurfaces(boolean releaseSurfacePackage) {
        SurfaceControlViewHost.SurfacePackage surfacePackage;
        this.mSurfaceAlpha = 1.0f;
        if (this.mSurfaceLock.isLocked()) {
            Log.w(TAG, "releaseSurfaces, but mSurfaceLock is locked, holded by " + this.mSurfaceLock.toString());
        }
        synchronized (this.mSurfaceControlLock) {
            this.mSurface.destroy();
            BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
            if (bLASTBufferQueue != null) {
                bLASTBufferQueue.destroy();
                this.mBlastBufferQueue = null;
            }
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            SurfaceControl surfaceControl = this.mSurfaceControl;
            if (surfaceControl != null) {
                transaction.remove(surfaceControl);
                this.mSurfaceControl = null;
            }
            SurfaceControl surfaceControl2 = this.mBackgroundControl;
            if (surfaceControl2 != null) {
                transaction.remove(surfaceControl2);
                this.mBackgroundControl = null;
            }
            SurfaceControl surfaceControl3 = this.mBlastSurfaceControl;
            if (surfaceControl3 != null) {
                transaction.remove(surfaceControl3);
                this.mBlastSurfaceControl = null;
            }
            if (releaseSurfacePackage && (surfacePackage = this.mSurfacePackage) != null) {
                surfacePackage.release();
                this.mSurfacePackage = null;
            }
            applyTransactionOnVriDraw(transaction);
        }
    }

    private void replacePositionUpdateListener(int surfaceWidth, int surfaceHeight) {
        if (this.mPositionListener != null) {
            this.mRenderNode.removePositionUpdateListener(this.mPositionListener);
        }
        this.mPositionListener = new SurfaceViewPositionUpdateListener(surfaceWidth, surfaceHeight);
        this.mRenderNode.addPositionUpdateListener(this.mPositionListener);
    }

    private boolean performSurfaceTransaction(ViewRootImpl viewRoot, CompatibilityInfo.Translator translator, boolean creating, boolean sizeChanged, boolean hintChanged, SurfaceControl.Transaction surfaceUpdateTransaction) {
        char c;
        char c2;
        this.mSurfaceLock.lock();
        try {
            boolean z = true;
            this.mDrawingStopped = !this.mVisible;
            if (this.DEBUG) {
                Log.i(TAG, System.identityHashCode(this) + " Cur surface: " + this.mSurface);
            }
            if (creating) {
                updateRelativeZ(surfaceUpdateTransaction);
                SurfaceControlViewHost.SurfacePackage surfacePackage = this.mSurfacePackage;
                if (surfacePackage != null) {
                    reparentSurfacePackage(surfaceUpdateTransaction, surfacePackage);
                }
            }
            this.mParentSurfaceSequenceId = viewRoot.getSurfaceSequenceId();
            if (this.mViewVisibility) {
                surfaceUpdateTransaction.show(this.mSurfaceControl);
            } else {
                surfaceUpdateTransaction.hide(this.mSurfaceControl);
            }
            updateBackgroundVisibility(surfaceUpdateTransaction);
            updateBackgroundColor(surfaceUpdateTransaction);
            if (this.mUseAlpha) {
                float alpha = getFixedAlpha();
                surfaceUpdateTransaction.setAlpha(this.mSurfaceControl, alpha);
                this.mSurfaceAlpha = alpha;
            }
            surfaceUpdateTransaction.setCornerRadius(this.mSurfaceControl, this.mCornerRadius);
            if ((sizeChanged || hintChanged) && !creating) {
                setBufferSize(surfaceUpdateTransaction);
            }
            if (sizeChanged || creating || !isHardwareAccelerated()) {
                if (this.mClipSurfaceToBounds && this.mClipBounds != null) {
                    if (this.DEBUG) {
                        Log.v(TAG, String.format("%d setWindowCrop([%d %d %d %d]) in performSurfaceTransaction()", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(this.mClipBounds.left), Integer.valueOf(this.mClipBounds.top), Integer.valueOf(this.mClipBounds.right), Integer.valueOf(this.mClipBounds.bottom)));
                    }
                    surfaceUpdateTransaction.setWindowCrop(this.mSurfaceControl, this.mClipBounds);
                } else {
                    if (this.DEBUG) {
                        Log.v(TAG, String.format("%d setWindowCrop(w=%d, h=%d) in performSurfaceTransaction()", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(this.mSurfaceWidth), Integer.valueOf(this.mSurfaceHeight)));
                    }
                    surfaceUpdateTransaction.setWindowCrop(this.mSurfaceControl, this.mSurfaceWidth, this.mSurfaceHeight);
                }
                surfaceUpdateTransaction.setDesintationFrame(this.mBlastSurfaceControl, this.mSurfaceWidth, this.mSurfaceHeight);
                if (isHardwareAccelerated()) {
                    replacePositionUpdateListener(this.mSurfaceWidth, this.mSurfaceHeight);
                    c = 3;
                    c2 = 5;
                } else {
                    c = 3;
                    c2 = 5;
                    onSetSurfacePositionAndScale(surfaceUpdateTransaction, this.mSurfaceControl, this.mScreenRect.left, this.mScreenRect.top, this.mScreenRect.width() / this.mSurfaceWidth, this.mScreenRect.height() / this.mSurfaceHeight);
                }
                if (this.DEBUG_POSITION) {
                    Object[] objArr = new Object[8];
                    objArr[0] = Integer.valueOf(System.identityHashCode(this));
                    objArr[1] = isHardwareAccelerated() ? "RenderWorker" : "UI Thread";
                    objArr[2] = Integer.valueOf(this.mScreenRect.left);
                    objArr[c] = Integer.valueOf(this.mScreenRect.top);
                    objArr[4] = Integer.valueOf(this.mScreenRect.right);
                    objArr[c2] = Integer.valueOf(this.mScreenRect.bottom);
                    objArr[6] = Integer.valueOf(this.mSurfaceWidth);
                    objArr[7] = Integer.valueOf(this.mSurfaceHeight);
                    Log.d(TAG, String.format("%d performSurfaceTransaction %s position = [%d, %d, %d, %d] surfaceSize = %dx%d", objArr));
                }
            }
            applyTransactionOnVriDraw(surfaceUpdateTransaction);
            updateEmbeddedAccessibilityMatrix(false);
            this.mSurfaceFrame.left = 0;
            this.mSurfaceFrame.top = 0;
            if (translator == null) {
                this.mSurfaceFrame.right = this.mSurfaceWidth;
                this.mSurfaceFrame.bottom = this.mSurfaceHeight;
            } else {
                float appInvertedScale = translator.applicationInvertedScale;
                this.mSurfaceFrame.right = (int) ((this.mSurfaceWidth * appInvertedScale) + 0.5f);
                this.mSurfaceFrame.bottom = (int) ((this.mSurfaceHeight * appInvertedScale) + 0.5f);
            }
            int surfaceWidth = this.mSurfaceFrame.right;
            int surfaceHeight = this.mSurfaceFrame.bottom;
            if (this.mLastSurfaceWidth == surfaceWidth && this.mLastSurfaceHeight == surfaceHeight) {
                z = false;
            }
            boolean realSizeChanged = z;
            this.mLastSurfaceWidth = surfaceWidth;
            this.mLastSurfaceHeight = surfaceHeight;
            return realSizeChanged;
        } finally {
            this.mSurfaceLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x036c A[Catch: all -> 0x048d, TryCatch #4 {all -> 0x048d, blocks: (B:171:0x0365, B:173:0x036c, B:175:0x0374, B:194:0x03d5), top: B:268:0x0365 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x041a A[Catch: all -> 0x046f, TRY_LEAVE, TryCatch #6 {all -> 0x046f, blocks: (B:198:0x03fe, B:204:0x0416, B:206:0x041a), top: B:272:0x03fe }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0475  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x04a7 A[Catch: Exception -> 0x04b1, TryCatch #7 {Exception -> 0x04b1, blocks: (B:239:0x04a0, B:241:0x04a7, B:243:0x04ab, B:245:0x04b0, B:228:0x047e, B:230:0x0484, B:232:0x0488), top: B:274:0x0341 }] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x02e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0239 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:294:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void updateSurface() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.SurfaceView.updateSurface():void");
    }

    private void handleSyncBufferCallback(final SurfaceHolder.Callback[] callbacks, final SyncBufferTransactionCallback syncBufferTransactionCallback) {
        getViewRootImpl().addToSync(new SurfaceSyncer.SyncTarget() { // from class: android.view.SurfaceView$$ExternalSyntheticLambda6
            @Override // android.window.SurfaceSyncer.SyncTarget
            public final void onReadyToSync(SurfaceSyncer.SyncBufferCallback syncBufferCallback) {
                this.f$0.m5156lambda$handleSyncBufferCallback$2$androidviewSurfaceView(callbacks, syncBufferTransactionCallback, syncBufferCallback);
            }
        });
    }

    /* renamed from: lambda$handleSyncBufferCallback$2$android-view-SurfaceView, reason: not valid java name */
    /* synthetic */ void m5156lambda$handleSyncBufferCallback$2$androidviewSurfaceView(SurfaceHolder.Callback[] callbacks, final SyncBufferTransactionCallback syncBufferTransactionCallback, final SurfaceSyncer.SyncBufferCallback syncBufferCallback) {
        redrawNeededAsync(callbacks, new Runnable() { // from class: android.view.SurfaceView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                this.f$0.m5155lambda$handleSyncBufferCallback$1$androidviewSurfaceView(syncBufferTransactionCallback, syncBufferCallback);
            }
        });
    }

    /* renamed from: lambda$handleSyncBufferCallback$1$android-view-SurfaceView, reason: not valid java name */
    /* synthetic */ void m5155lambda$handleSyncBufferCallback$1$androidviewSurfaceView(SyncBufferTransactionCallback syncBufferTransactionCallback, SurfaceSyncer.SyncBufferCallback syncBufferCallback) throws InterruptedException {
        SurfaceControl.Transaction t = null;
        BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
        if (bLASTBufferQueue != null) {
            bLASTBufferQueue.stopContinuousSyncTransaction();
            t = syncBufferTransactionCallback.waitForTransaction();
        }
        syncBufferCallback.onBufferReady(t);
        onDrawFinished();
    }

    private void handleSyncNoBuffer(final SurfaceHolder.Callback[] callbacks) {
        final int syncId = this.mSurfaceSyncer.setupSync(new Runnable() { // from class: android.view.SurfaceView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onDrawFinished();
            }
        });
        this.mSurfaceSyncer.addToSync(syncId, new SurfaceSyncer.SyncTarget() { // from class: android.view.SurfaceView$$ExternalSyntheticLambda2
            @Override // android.window.SurfaceSyncer.SyncTarget
            public final void onReadyToSync(SurfaceSyncer.SyncBufferCallback syncBufferCallback) {
                this.f$0.m5158lambda$handleSyncNoBuffer$4$androidviewSurfaceView(callbacks, syncId, syncBufferCallback);
            }
        });
        this.mSurfaceSyncer.markSyncReady(syncId);
        synchronized (this.mSyncIds) {
            this.mSyncIds.add(Integer.valueOf(syncId));
        }
    }

    /* renamed from: lambda$handleSyncNoBuffer$4$android-view-SurfaceView, reason: not valid java name */
    /* synthetic */ void m5158lambda$handleSyncNoBuffer$4$androidviewSurfaceView(SurfaceHolder.Callback[] callbacks, final int syncId, final SurfaceSyncer.SyncBufferCallback syncBufferCallback) {
        redrawNeededAsync(callbacks, new Runnable() { // from class: android.view.SurfaceView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m5157lambda$handleSyncNoBuffer$3$androidviewSurfaceView(syncBufferCallback, syncId);
            }
        });
    }

    /* renamed from: lambda$handleSyncNoBuffer$3$android-view-SurfaceView, reason: not valid java name */
    /* synthetic */ void m5157lambda$handleSyncNoBuffer$3$androidviewSurfaceView(SurfaceSyncer.SyncBufferCallback syncBufferCallback, int syncId) {
        syncBufferCallback.onBufferReady(null);
        synchronized (this.mSyncIds) {
            this.mSyncIds.remove(Integer.valueOf(syncId));
        }
    }

    private void redrawNeededAsync(SurfaceHolder.Callback[] callbacks, Runnable callbacksCollected) {
        SurfaceCallbackHelper sch = new SurfaceCallbackHelper(callbacksCollected);
        sch.dispatchSurfaceRedrawNeededAsync(this.mSurfaceHolder, callbacks);
    }

    @Override // android.view.ViewRootImpl.SurfaceChangedCallback
    public void surfaceSyncStarted() {
        ViewRootImpl viewRoot = getViewRootImpl();
        if (viewRoot != null) {
            synchronized (this.mSyncIds) {
                Iterator<Integer> it = this.mSyncIds.iterator();
                while (it.hasNext()) {
                    int syncId = it.next().intValue();
                    viewRoot.mergeSync(syncId, this.mSurfaceSyncer);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class SyncBufferTransactionCallback {
        private final CountDownLatch mCountDownLatch;
        private SurfaceControl.Transaction mTransaction;

        private SyncBufferTransactionCallback() {
            this.mCountDownLatch = new CountDownLatch(1);
        }

        SurfaceControl.Transaction waitForTransaction() throws InterruptedException {
            try {
                this.mCountDownLatch.await();
            } catch (InterruptedException e) {
            }
            return this.mTransaction;
        }

        void onTransactionReady(SurfaceControl.Transaction t) {
            this.mTransaction = t;
            this.mCountDownLatch.countDown();
        }
    }

    private void copySurface(boolean surfaceControlCreated, boolean bufferSizeChanged) {
        BLASTBufferQueue bLASTBufferQueue;
        if (surfaceControlCreated) {
            this.mSurface.copyFrom(this.mBlastBufferQueue);
        }
        if (bufferSizeChanged && getContext().getApplicationInfo().targetSdkVersion < 26 && (bLASTBufferQueue = this.mBlastBufferQueue) != null) {
            this.mSurface.transferFrom(bLASTBufferQueue.createSurfaceWithHandle());
        }
    }

    private void setBufferSize(SurfaceControl.Transaction transaction) {
        if (this.mSurfaceWidth > 16384 || this.mSurfaceHeight > 16384) {
            Log.d(TAG, this + " mSurfaceWidth = " + this.mSurfaceWidth + " mSurfaceHeight = " + this.mSurfaceHeight);
            throw new IllegalStateException("SurfaceView width and height must be smaller than 16384");
        }
        this.mBlastSurfaceControl.setTransformHint(this.mTransformHint);
        BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
        if (bLASTBufferQueue != null) {
            bLASTBufferQueue.update(this.mBlastSurfaceControl, this.mSurfaceWidth, this.mSurfaceHeight, this.mFormat);
        }
    }

    private void createBlastSurfaceControls(ViewRootImpl viewRoot, String name, SurfaceControl.Transaction surfaceUpdateTransaction) {
        if (this.mSurfaceControl == null) {
            this.mSurfaceControl = new SurfaceControl.Builder(this.mSurfaceSession).setName(name).setLocalOwnerView(this).setParent(viewRoot.getBoundsLayer()).setCallsite("SurfaceView.updateSurface").setContainerLayer().build();
        }
        SurfaceControl surfaceControl = this.mBlastSurfaceControl;
        if (surfaceControl == null) {
            this.mBlastSurfaceControl = new SurfaceControl.Builder(this.mSurfaceSession).setName(name + "(BLAST)").setLocalOwnerView(this).setParent(this.mSurfaceControl).setFlags(this.mSurfaceFlags).setHidden(false).setBLASTLayer().setCallsite("SurfaceView.updateSurface").build();
        } else {
            surfaceUpdateTransaction.setOpaque(surfaceControl, (this.mSurfaceFlags & 1024) != 0).setSecure(this.mBlastSurfaceControl, (this.mSurfaceFlags & 128) != 0).show(this.mBlastSurfaceControl);
        }
        if (this.mBackgroundControl == null) {
            this.mBackgroundControl = new SurfaceControl.Builder(this.mSurfaceSession).setName("Background for " + name).setLocalOwnerView(this).setOpaque(true).setColorLayer().setParent(this.mSurfaceControl).setCallsite("SurfaceView.updateSurface").build();
        }
        BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
        if (bLASTBufferQueue != null) {
            bLASTBufferQueue.destroy();
        }
        int bufferTransformHint = viewRoot.getBufferTransformHint();
        this.mTransformHint = bufferTransformHint;
        this.mBlastSurfaceControl.setTransformHint(bufferTransformHint);
        BLASTBufferQueue bLASTBufferQueue2 = new BLASTBufferQueue(name, false);
        this.mBlastBufferQueue = bLASTBufferQueue2;
        bLASTBufferQueue2.update(this.mBlastSurfaceControl, this.mSurfaceWidth, this.mSurfaceHeight, this.mFormat);
        this.mBlastBufferQueue.setTransactionHangCallback(ViewRootImpl.sTransactionHangCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDrawFinished() {
        if (this.DEBUG) {
            Log.i(TAG, System.identityHashCode(this) + " finishedDrawing");
        }
        runOnUiThread(new Runnable() { // from class: android.view.SurfaceView$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performDrawFinished();
            }
        });
    }

    protected void onSetSurfacePositionAndScale(SurfaceControl.Transaction transaction, SurfaceControl surface, int positionLeft, int positionTop, float postScaleX, float postScaleY) {
        if (this.DEBUG) {
            Log.v(TAG, System.identityHashCode(this) + " onSetSurfacePositionAndScale() , positionLeft=" + positionLeft + ", positionTop=" + positionTop + ", postScaleX=" + postScaleX + ", postScaleY=" + postScaleY);
        }
        transaction.setPosition(surface, positionLeft, positionTop);
        transaction.setMatrix(surface, postScaleX, 0.0f, 0.0f, postScaleY);
    }

    public void requestUpdateSurfacePositionAndScale() {
        if (this.mSurfaceControl == null) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        onSetSurfacePositionAndScale(transaction, this.mSurfaceControl, this.mScreenRect.left, this.mScreenRect.top, this.mScreenRect.width() / this.mSurfaceWidth, this.mScreenRect.height() / this.mSurfaceHeight);
        applyTransactionOnVriDraw(transaction);
        invalidate();
    }

    public Rect getSurfaceRenderPosition() {
        return this.mRTLastReportedPosition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyOrMergeTransaction(SurfaceControl.Transaction t, long frameNumber) {
        ViewRootImpl viewRoot = getViewRootImpl();
        if (viewRoot != null) {
            viewRoot.m5297lambda$applyTransactionOnDraw$10$androidviewViewRootImpl(t, frameNumber);
        } else {
            t.apply();
        }
    }

    private class SurfaceViewPositionUpdateListener implements RenderNode.PositionUpdateListener {
        private final int mRtSurfaceHeight;
        private final int mRtSurfaceWidth;
        private boolean mRtFirst = true;
        private final SurfaceControl.Transaction mPositionChangedTransaction = new SurfaceControl.Transaction();

        SurfaceViewPositionUpdateListener(int surfaceWidth, int surfaceHeight) {
            this.mRtSurfaceWidth = surfaceWidth;
            this.mRtSurfaceHeight = surfaceHeight;
        }

        @Override // android.graphics.RenderNode.PositionUpdateListener
        public void positionChanged(long frameNumber, int left, int top, int right, int bottom) throws Throwable {
            if (this.mRtFirst || SurfaceView.this.mRTLastReportedPosition.left != left || SurfaceView.this.mRTLastReportedPosition.top != top || SurfaceView.this.mRTLastReportedPosition.right != right || SurfaceView.this.mRTLastReportedPosition.bottom != bottom || SurfaceView.this.mRTLastReportedSurfaceSize.x != this.mRtSurfaceWidth || SurfaceView.this.mRTLastReportedSurfaceSize.y != this.mRtSurfaceHeight) {
                this.mRtFirst = false;
                try {
                    if (SurfaceView.this.DEBUG_POSITION) {
                        Log.d(SurfaceView.TAG, String.format("%d updateSurfacePosition RenderWorker, frameNr = %d, position = [%d, %d, %d, %d] surfaceSize = %dx%d", Integer.valueOf(System.identityHashCode(SurfaceView.this)), Long.valueOf(frameNumber), Integer.valueOf(left), Integer.valueOf(top), Integer.valueOf(right), Integer.valueOf(bottom), Integer.valueOf(this.mRtSurfaceWidth), Integer.valueOf(this.mRtSurfaceHeight)));
                    }
                } catch (Exception e) {
                    ex = e;
                }
                try {
                    try {
                        synchronized (SurfaceView.this.mSurfaceControlLock) {
                            try {
                                if (SurfaceView.this.mSurfaceControl == null || SurfaceView.this.mSurfaceControl.mNativeObject == 0) {
                                    if (SurfaceView.this.mSurfaceControl == null) {
                                        Log.d(SurfaceView.TAG, System.identityHashCode(this) + "positionChanged mSurfaceControl is null return;");
                                    } else if (SurfaceView.this.mSurfaceControl.mNativeObject == 0) {
                                        Log.d(SurfaceView.TAG, System.identityHashCode(this) + "positionChanged mSurfaceControl.mNativeObject is 0 return;");
                                    }
                                    return;
                                }
                                SurfaceView.this.mRTLastReportedPosition.set(left, top, right, bottom);
                                SurfaceView.this.mRTLastReportedSurfaceSize.set(this.mRtSurfaceWidth, this.mRtSurfaceHeight);
                                SurfaceView surfaceView = SurfaceView.this;
                                surfaceView.onSetSurfacePositionAndScale(this.mPositionChangedTransaction, surfaceView.mSurfaceControl, SurfaceView.this.mRTLastReportedPosition.left, SurfaceView.this.mRTLastReportedPosition.top, SurfaceView.this.mRTLastReportedPosition.width() / this.mRtSurfaceWidth, SurfaceView.this.mRTLastReportedPosition.height() / this.mRtSurfaceHeight);
                                if (SurfaceView.this.mViewVisibility) {
                                    this.mPositionChangedTransaction.show(SurfaceView.this.mSurfaceControl);
                                }
                                SurfaceView.this.applyOrMergeTransaction(this.mPositionChangedTransaction, frameNumber);
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e2) {
                    ex = e2;
                    Log.e(SurfaceView.TAG, "Exception from repositionChild", ex);
                }
            }
        }

        @Override // android.graphics.RenderNode.PositionUpdateListener
        public void applyStretch(long frameNumber, float width, float height, float vecX, float vecY, float maxStretchX, float maxStretchY, float childRelativeLeft, float childRelativeTop, float childRelativeRight, float childRelativeBottom) {
            SurfaceView.this.mRtTransaction.setStretchEffect(SurfaceView.this.mSurfaceControl, width, height, vecX, vecY, maxStretchX, maxStretchY, childRelativeLeft, childRelativeTop, childRelativeRight, childRelativeBottom);
            SurfaceView surfaceView = SurfaceView.this;
            surfaceView.applyOrMergeTransaction(surfaceView.mRtTransaction, frameNumber);
        }

        @Override // android.graphics.RenderNode.PositionUpdateListener
        public void positionLost(long frameNumber) {
            if (SurfaceView.this.DEBUG_POSITION) {
                Log.d(SurfaceView.TAG, String.format("%d windowPositionLost, frameNr = %d", Integer.valueOf(System.identityHashCode(SurfaceView.this)), Long.valueOf(frameNumber)));
            }
            SurfaceView.this.mRTLastReportedPosition.setEmpty();
            SurfaceView.this.mRTLastReportedSurfaceSize.set(-1, -1);
            synchronized (SurfaceView.this.mSurfaceControlLock) {
                if (SurfaceView.this.mSurfaceControl != null && SurfaceView.this.mSurfaceControl.mNativeObject != 0) {
                    SurfaceView.this.mRtTransaction.hide(SurfaceView.this.mSurfaceControl);
                    SurfaceView surfaceView = SurfaceView.this;
                    surfaceView.applyOrMergeTransaction(surfaceView.mRtTransaction, frameNumber);
                    return;
                }
                if (SurfaceView.this.mSurfaceControl == null) {
                    Log.d(SurfaceView.TAG, System.identityHashCode(this) + "positionLost mSurfaceControl is null return;");
                } else if (SurfaceView.this.mSurfaceControl.mNativeObject == 0 || SurfaceView.this.mBackgroundControl.mNativeObject == 0) {
                    Log.d(SurfaceView.TAG, System.identityHashCode(this) + "positionLost mSurfaceControl.mNativeObject or mBackgroundControl.mNativeObject is 0 return;");
                }
            }
        }
    }

    private SurfaceHolder.Callback[] getSurfaceCallbacks() {
        SurfaceHolder.Callback[] callbacks;
        synchronized (this.mCallbacks) {
            callbacks = new SurfaceHolder.Callback[this.mCallbacks.size()];
            this.mCallbacks.toArray(callbacks);
        }
        return callbacks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnUiThread(Runnable runnable) {
        Handler handler = getHandler();
        if (handler != null && handler.getLooper() != Looper.myLooper()) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public boolean isFixedSize() {
        return (this.mRequestedWidth == -1 && this.mRequestedHeight == -1) ? false : true;
    }

    private boolean isAboveParent() {
        return this.mSubLayer >= 0;
    }

    public void setResizeBackgroundColor(int bgColor) {
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        setResizeBackgroundColor(transaction, bgColor);
        applyTransactionOnVriDraw(transaction);
        invalidate();
    }

    public void setResizeBackgroundColor(SurfaceControl.Transaction t, int bgColor) {
        if (this.mBackgroundControl == null) {
            return;
        }
        this.mBackgroundColor = bgColor;
        updateBackgroundColor(t);
    }

    /* renamed from: android.view.SurfaceView$1, reason: invalid class name */
    class AnonymousClass1 implements SurfaceHolder {
        private static final String LOG_TAG = "SurfaceHolder";

        AnonymousClass1() {
        }

        @Override // android.view.SurfaceHolder
        public boolean isCreating() {
            return SurfaceView.this.mIsCreating;
        }

        @Override // android.view.SurfaceHolder
        public void addCallback(SurfaceHolder.Callback callback) {
            synchronized (SurfaceView.this.mCallbacks) {
                if (!SurfaceView.this.mCallbacks.contains(callback)) {
                    SurfaceView.this.mCallbacks.add(callback);
                }
            }
        }

        @Override // android.view.SurfaceHolder
        public void removeCallback(SurfaceHolder.Callback callback) {
            synchronized (SurfaceView.this.mCallbacks) {
                SurfaceView.this.mCallbacks.remove(callback);
            }
        }

        @Override // android.view.SurfaceHolder
        public void setFixedSize(int width, int height) {
            if (SurfaceView.this.mRequestedWidth != width || SurfaceView.this.mRequestedHeight != height) {
                if (SurfaceView.this.DEBUG_POSITION) {
                    Log.d(SurfaceView.TAG, String.format("%d setFixedSize %dx%d -> %dx%d", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(SurfaceView.this.mRequestedWidth), Integer.valueOf(SurfaceView.this.mRequestedHeight), Integer.valueOf(width), Integer.valueOf(height)));
                }
                SurfaceView.this.mRequestedWidth = width;
                SurfaceView.this.mRequestedHeight = height;
                SurfaceView.this.requestLayout();
            }
        }

        @Override // android.view.SurfaceHolder
        public void setSizeFromLayout() {
            if (SurfaceView.this.mRequestedWidth != -1 || SurfaceView.this.mRequestedHeight != -1) {
                if (SurfaceView.this.DEBUG_POSITION) {
                    Log.d(SurfaceView.TAG, String.format("%d setSizeFromLayout was %dx%d", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(SurfaceView.this.mRequestedWidth), Integer.valueOf(SurfaceView.this.mRequestedHeight)));
                }
                SurfaceView surfaceView = SurfaceView.this;
                surfaceView.mRequestedHeight = -1;
                surfaceView.mRequestedWidth = -1;
                SurfaceView.this.requestLayout();
            }
        }

        @Override // android.view.SurfaceHolder
        public void setFormat(int format) throws Throwable {
            if (format == -1) {
                format = 4;
            }
            SurfaceView.this.mRequestedFormat = format;
            if (SurfaceView.this.mSurfaceControl != null) {
                SurfaceView.this.updateSurface();
            }
        }

        @Override // android.view.SurfaceHolder
        @Deprecated
        public void setType(int type) {
        }

        /* renamed from: lambda$setKeepScreenOn$0$android-view-SurfaceView$1, reason: not valid java name */
        /* synthetic */ void m5160lambda$setKeepScreenOn$0$androidviewSurfaceView$1(boolean screenOn) {
            SurfaceView.this.setKeepScreenOn(screenOn);
        }

        @Override // android.view.SurfaceHolder
        public void setKeepScreenOn(final boolean screenOn) {
            SurfaceView.this.runOnUiThread(new Runnable() { // from class: android.view.SurfaceView$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m5160lambda$setKeepScreenOn$0$androidviewSurfaceView$1(screenOn);
                }
            });
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockCanvas() {
            return internalLockCanvas(null, false);
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockCanvas(Rect inOutDirty) {
            return internalLockCanvas(inOutDirty, false);
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockHardwareCanvas() {
            return internalLockCanvas(null, true);
        }

        private Canvas internalLockCanvas(Rect dirty, boolean hardware) throws InterruptedException, Surface.OutOfResourcesException, IllegalArgumentException {
            SurfaceView.this.mSurfaceLock.lock();
            if (SurfaceView.this.DEBUG) {
                Log.i(SurfaceView.TAG, System.identityHashCode(this) + " Locking canvas... stopped=" + SurfaceView.this.mDrawingStopped + ", surfaceControl=" + SurfaceView.this.mSurfaceControl);
            }
            Canvas c = null;
            if (!SurfaceView.this.mDrawingStopped && SurfaceView.this.mSurfaceControl != null) {
                try {
                    if (hardware) {
                        c = SurfaceView.this.mSurface.lockHardwareCanvas();
                    } else {
                        c = SurfaceView.this.mSurface.lockCanvas(dirty);
                    }
                } catch (Exception e) {
                    Log.e(LOG_TAG, "Exception locking surface", e);
                }
            }
            if (SurfaceView.this.DEBUG) {
                Log.i(SurfaceView.TAG, System.identityHashCode(this) + " Returned canvas: " + c);
            }
            if (c != null) {
                SurfaceView.this.mLastLockTime = SystemClock.uptimeMillis();
                return c;
            }
            long now = SystemClock.uptimeMillis();
            long nextTime = SurfaceView.this.mLastLockTime + 100;
            if (nextTime > now) {
                try {
                    Thread.sleep(nextTime - now);
                } catch (InterruptedException e2) {
                }
                now = SystemClock.uptimeMillis();
            }
            SurfaceView.this.mLastLockTime = now;
            SurfaceView.this.mSurfaceLock.unlock();
            return null;
        }

        @Override // android.view.SurfaceHolder
        public void unlockCanvasAndPost(Canvas canvas) {
            if (SurfaceView.this.DEBUG) {
                Log.i(SurfaceView.TAG, System.identityHashCode(this) + "[unlockCanvasAndPost] canvas:" + canvas);
            }
            SurfaceView.this.mSurface.unlockCanvasAndPost(canvas);
            SurfaceView.this.mSurfaceLock.unlock();
        }

        @Override // android.view.SurfaceHolder
        public Surface getSurface() {
            return SurfaceView.this.mSurface;
        }

        @Override // android.view.SurfaceHolder
        public Rect getSurfaceFrame() {
            return SurfaceView.this.mSurfaceFrame;
        }
    }

    public SurfaceControl getSurfaceControl() {
        return this.mSurfaceControl;
    }

    public IBinder getHostToken() {
        ViewRootImpl viewRoot = getViewRootImpl();
        if (viewRoot == null) {
            return null;
        }
        return viewRoot.getInputToken();
    }

    @Override // android.view.ViewRootImpl.SurfaceChangedCallback
    public void surfaceCreated(SurfaceControl.Transaction t) throws Throwable {
        setWindowStopped(false);
    }

    @Override // android.view.ViewRootImpl.SurfaceChangedCallback
    public void surfaceDestroyed() throws Throwable {
        setWindowStopped(true);
        this.mRemoteAccessibilityController.disassosciateHierarchy();
    }

    @Override // android.view.ViewRootImpl.SurfaceChangedCallback
    public void surfaceReplaced(SurfaceControl.Transaction t) {
        if (this.mSurfaceControl != null && this.mBackgroundControl != null) {
            updateRelativeZ(t);
        }
    }

    private void updateRelativeZ(SurfaceControl.Transaction t) {
        ViewRootImpl viewRoot = getViewRootImpl();
        if (viewRoot == null) {
            return;
        }
        SurfaceControl viewRootControl = viewRoot.getSurfaceControl();
        t.setRelativeLayer(this.mBackgroundControl, viewRootControl, Integer.MIN_VALUE);
        t.setRelativeLayer(this.mSurfaceControl, viewRootControl, this.mSubLayer);
    }

    public void setChildSurfacePackage(SurfaceControlViewHost.SurfacePackage p) {
        SurfaceControlViewHost.SurfacePackage surfacePackage = this.mSurfacePackage;
        SurfaceControl lastSc = surfacePackage != null ? surfacePackage.getSurfaceControl() : null;
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        if (this.mSurfaceControl != null) {
            if (lastSc != null) {
                transaction.reparent(lastSc, null);
                this.mSurfacePackage.release();
            }
            reparentSurfacePackage(transaction, p);
            applyTransactionOnVriDraw(transaction);
        }
        this.mSurfacePackage = p;
        invalidate();
    }

    private void reparentSurfacePackage(SurfaceControl.Transaction t, SurfaceControlViewHost.SurfacePackage p) {
        SurfaceControl sc = p.getSurfaceControl();
        if (sc == null || !sc.isValid()) {
            return;
        }
        initEmbeddedHierarchyForAccessibility(p);
        t.reparent(sc, this.mBlastSurfaceControl).show(sc);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfoInternal(info);
        if (!this.mRemoteAccessibilityController.connected()) {
            return;
        }
        info.addChild(this.mRemoteAccessibilityController.getLeashToken());
    }

    @Override // android.view.View
    public int getImportantForAccessibility() {
        int mode = super.getImportantForAccessibility();
        RemoteAccessibilityController remoteAccessibilityController = this.mRemoteAccessibilityController;
        if ((remoteAccessibilityController != null && !remoteAccessibilityController.connected()) || mode != 0) {
            return mode;
        }
        return 1;
    }

    private void initEmbeddedHierarchyForAccessibility(SurfaceControlViewHost.SurfacePackage p) {
        IAccessibilityEmbeddedConnection connection = p.getAccessibilityEmbeddedConnection();
        if (this.mRemoteAccessibilityController.alreadyAssociated(connection)) {
            return;
        }
        this.mRemoteAccessibilityController.assosciateHierarchy(connection, getViewRootImpl().mLeashToken, getAccessibilityViewId());
        updateEmbeddedAccessibilityMatrix(true);
    }

    private void notifySurfaceDestroyed() {
        if (this.mSurface.isValid()) {
            Log.i(TAG, System.identityHashCode(this) + " surfaceDestroyed");
            SurfaceHolder.Callback[] callbacks = getSurfaceCallbacks();
            for (SurfaceHolder.Callback c : callbacks) {
                c.surfaceDestroyed(this.mSurfaceHolder);
            }
            this.mSurfaceViewSocExt.setSurfaceViewCreated(this, false);
            if (this.mSurface.isValid()) {
                this.mSurface.forceScopedDisconnect();
            }
        }
    }

    void updateEmbeddedAccessibilityMatrix(boolean force) {
        if (!this.mRemoteAccessibilityController.connected()) {
            return;
        }
        getBoundsOnScreen(this.mTmpRect);
        this.mTmpRect.offset(-this.mAttachInfo.mWindowLeft, -this.mAttachInfo.mWindowTop);
        this.mTmpMatrix.reset();
        this.mTmpMatrix.setTranslate(this.mTmpRect.left, this.mTmpRect.top);
        this.mTmpMatrix.postScale(this.mScreenRect.width() / this.mSurfaceWidth, this.mScreenRect.height() / this.mSurfaceHeight);
        this.mRemoteAccessibilityController.setWindowMatrix(this.mTmpMatrix, force);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        ViewRootImpl viewRoot = getViewRootImpl();
        if (this.mSurfacePackage == null || viewRoot == null) {
            return;
        }
        try {
            viewRoot.mWindowSession.grantEmbeddedWindowFocus(viewRoot.mWindow, this.mSurfacePackage.getInputToken(), gainFocus);
        } catch (Exception e) {
            Log.e(TAG, System.identityHashCode(this) + "Exception requesting focus on embedded window", e);
        }
    }

    private void applyTransactionOnVriDraw(SurfaceControl.Transaction t) {
        ViewRootImpl viewRoot = getViewRootImpl();
        if (viewRoot != null) {
            viewRoot.applyTransactionOnDraw(t);
        } else {
            t.apply();
        }
    }

    public void syncNextFrame(Consumer<SurfaceControl.Transaction> t) {
        this.mBlastBufferQueue.syncNextTransaction(t);
    }
}
