package android.view;

import android.Manifest;
import android.animation.AnimationHandler;
import android.animation.LayoutTransition;
import android.app.ActivityManager;
import android.app.ICompatCameraControlCallback;
import android.app.ResourcesManager;
import android.app.WindowConfiguration;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BLASTBufferQueue;
import android.graphics.Canvas;
import android.graphics.FrameInfo;
import android.graphics.HardwareRenderer;
import android.graphics.HardwareRendererObserver;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RenderNode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.hardware.display.DisplayManager;
import android.hardware.gnss.GnssSignalType;
import android.hardware.input.InputManager;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.media.AudioManager;
import android.media.MediaMetrics;
import android.media.TtmlUtils;
import android.media.audio.Enums;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.OplusJankMonitorExtPlugin;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.sysprop.DisplayProperties;
import android.util.AndroidRuntimeException;
import android.util.DisplayMetrics;
import android.util.EventLog;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.util.LongArray;
import android.util.MergedConfiguration;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.proto.ProtoOutputStream;
import android.view.ActionMode;
import android.view.AttachedSurfaceControl;
import android.view.Choreographer;
import android.view.IWindow;
import android.view.InputDevice;
import android.view.InputQueue;
import android.view.KeyCharacterMap;
import android.view.ScrollCaptureResponse;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceHolder;
import android.view.ThreadedRenderer;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeIdManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.IAccessibilityEmbeddedConnection;
import android.view.accessibility.IAccessibilityInteractionConnection;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.contentcapture.ContentCaptureManager;
import android.view.contentcapture.ContentCaptureSession;
import android.view.contentcapture.MainContentCaptureSession;
import android.view.inputmethod.InputMethodManager;
import android.widget.Scroller;
import android.window.ClientWindowFrames;
import android.window.CompatOnBackInvokedCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import android.window.SurfaceSyncer;
import android.window.WindowOnBackInvokedDispatcher;
import com.android.internal.R;
import com.android.internal.graphics.drawable.BackgroundBlurDrawable;
import com.android.internal.inputmethod.ImeTracing;
import com.android.internal.inputmethod.InputMethodDebug;
import com.android.internal.os.IResultReceiver;
import com.android.internal.os.SomeArgs;
import com.android.internal.policy.DecorView;
import com.android.internal.policy.PhoneFallbackEventHandler;
import com.android.internal.util.Preconditions;
import com.android.internal.view.BaseSurfaceHolder;
import com.android.internal.view.RootViewSurfaceTaker;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.CountDownLatch;
import java.util.function.Consumer;
import java.util.function.Function;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes3.dex */
public final class ViewRootImpl implements ViewParent, View.AttachInfo.Callbacks, ThreadedRenderer.DrawCallbacks, AttachedSurfaceControl {
    private static final int CONTENT_CAPTURE_ENABLED_FALSE = 2;
    private static final int CONTENT_CAPTURE_ENABLED_NOT_CHECKED = 0;
    private static final int CONTENT_CAPTURE_ENABLED_TRUE = 1;
    private static final boolean ENABLE_INPUT_LATENCY_TRACKING = true;
    private static final int KEEP_CLEAR_AREA_REPORT_RATE_MILLIS = 100;
    private static final int MAX_QUEUED_INPUT_EVENT_POOL_SIZE = 10;
    static final int MAX_TRACKBALL_DELAY = 250;
    private static final int MSG_CHECK_FOCUS = 13;
    private static final int MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST = 21;
    private static final int MSG_CLOSE_SYSTEM_DIALOGS = 14;
    private static final int MSG_DIE = 3;
    private static final int MSG_DISPATCH_APP_VISIBILITY = 8;
    private static final int MSG_DISPATCH_DRAG_EVENT = 15;
    private static final int MSG_DISPATCH_DRAG_LOCATION_EVENT = 16;
    private static final int MSG_DISPATCH_GET_NEW_SURFACE = 9;
    private static final int MSG_DISPATCH_INPUT_EVENT = 7;
    private static final int MSG_DISPATCH_KEY_FROM_AUTOFILL = 12;
    private static final int MSG_DISPATCH_KEY_FROM_IME = 11;
    private static final int MSG_DISPATCH_SYSTEM_UI_VISIBILITY = 17;
    private static final int MSG_DISPATCH_WINDOW_SHOWN = 25;
    private static final int MSG_HIDE_INSETS = 32;
    private static final int MSG_INSETS_CONTROL_CHANGED = 29;
    private static final int MSG_INVALIDATE = 1;
    private static final int MSG_INVALIDATE_RECT = 2;
    private static final int MSG_INVALIDATE_WORLD = 22;
    private static final int MSG_KEEP_CLEAR_RECTS_CHANGED = 35;
    private static final int MSG_POINTER_CAPTURE_CHANGED = 28;
    private static final int MSG_PROCESS_INPUT_EVENTS = 19;
    private static final int MSG_REPORT_KEEP_CLEAR_RECTS = 36;
    private static final int MSG_REQUEST_KEYBOARD_SHORTCUTS = 26;
    private static final int MSG_REQUEST_SCROLL_CAPTURE = 33;
    private static final int MSG_RESIZED = 4;
    private static final int MSG_RESIZED_REPORT = 5;
    private static final int MSG_SHOW_INSETS = 31;
    private static final int MSG_SYNTHESIZE_INPUT_EVENT = 24;
    private static final int MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED = 30;
    private static final int MSG_UPDATE_CONFIGURATION = 18;
    private static final int MSG_UPDATE_POINTER_ICON = 27;
    private static final int MSG_WINDOW_FOCUS_CHANGED = 6;
    private static final int MSG_WINDOW_MOVED = 23;
    private static final int MSG_WINDOW_TOUCH_MODE_CHANGED = 34;
    private static final boolean MT_RENDERER_AVAILABLE = true;
    private static final String PROPERTY_PROFILE_RENDERING = "viewroot.profile_rendering";
    private static final int SCROLL_CAPTURE_REQUEST_TIMEOUT_MILLIS = 2500;
    private static final String TAG = "ViewRootImpl";
    private static final int UNSET_SYNC_ID = -1;
    private static boolean sAlwaysAssignFocus;
    private IAccessibilityEmbeddedConnection mAccessibilityEmbeddedConnection;
    View mAccessibilityFocusedHost;
    AccessibilityNodeInfo mAccessibilityFocusedVirtualView;
    final AccessibilityInteractionConnectionManager mAccessibilityInteractionConnectionManager;
    AccessibilityInteractionController mAccessibilityInteractionController;
    final AccessibilityManager mAccessibilityManager;
    private ActivityConfigCallback mActivityConfigCallback;
    private boolean mActivityRelaunched;
    boolean mAdded;
    boolean mAddedTouchMode;
    private boolean mAppVisibilityChanged;
    boolean mAppVisible;
    boolean mApplyInsetsRequested;
    final View.AttachInfo mAttachInfo;
    AudioManager mAudioManager;
    final String mBasePackageName;
    private BLASTBufferQueue mBlastBufferQueue;
    private final BackgroundBlurDrawable.Aggregator mBlurRegionAggregator;
    private SurfaceControl mBoundsLayer;
    private int mCanvasOffsetX;
    private int mCanvasOffsetY;
    final Choreographer mChoreographer;
    int mClientWindowLayoutFlags;
    private CompatOnBackInvokedCallback mCompatOnBackInvokedCallback;
    final SystemUiVisibilityInfo mCompatibleVisibilityInfo;
    final ConsumeBatchedInputImmediatelyRunnable mConsumeBatchedInputImmediatelyRunnable;
    boolean mConsumeBatchedInputImmediatelyScheduled;
    boolean mConsumeBatchedInputScheduled;
    final ConsumeBatchedInputRunnable mConsumedBatchedInputRunnable;
    int mContentCaptureEnabled;
    public final Context mContext;
    int mCurScrollY;
    View mCurrentDragView;
    private PointerIcon mCustomPointerIcon;
    private final int mDensity;
    private Rect mDirty;
    int mDispatchedSystemBarAppearance;
    int mDispatchedSystemUiVisibility;
    Display mDisplay;
    boolean mDisplayDecorationCached;
    private int mDisplayInstallOrientation;
    private final DisplayManager.DisplayListener mDisplayListener;
    final DisplayManager mDisplayManager;
    ClipDescription mDragDescription;
    final PointF mDragPoint;
    private boolean mDragResizing;
    boolean mDrawingAllowed;
    FallbackEventHandler mFallbackEventHandler;
    private boolean mFastScrollSoundEffectsEnabled;
    boolean mFirst;
    InputStage mFirstInputStage;
    InputStage mFirstPostImeInputStage;
    private boolean mForceDecorViewVisibility;
    private boolean mForceDisableBLAST;
    private boolean mForceNextConfigUpdate;
    boolean mForceNextWindowRelayout;
    private int mFpsNumFrames;
    private long mFpsPrevTime;
    private long mFpsStartTime;
    public int mFrame;
    boolean mFullRedrawNeeded;
    private final ViewRootRectTracker mGestureExclusionTracker;
    boolean mHadWindowFocus;
    final ViewRootHandler mHandler;
    boolean mHandlingLayoutInLayoutRequest;
    private final HandwritingInitiator mHandwritingInitiator;
    HardwareRendererObserver mHardwareRendererObserver;
    int mHardwareXOffset;
    int mHardwareYOffset;
    private boolean mHasPendingKeepClearAreaChange;
    boolean mHasPendingTransactions;
    int mHeight;
    final HighContrastTextManager mHighContrastTextManager;
    public long mIdent;
    private final ImeFocusController mImeFocusController;
    private boolean mInLayout;
    private final InputEventCompatProcessor mInputCompatProcessor;
    private final InputEventAssigner mInputEventAssigner;
    protected final InputEventConsistencyVerifier mInputEventConsistencyVerifier;
    WindowInputEventReceiver mInputEventReceiver;
    InputQueue mInputQueue;
    InputQueue.Callback mInputQueueCallback;
    private final InsetsController mInsetsController;
    final InvalidateOnAnimationRunnable mInvalidateOnAnimationRunnable;
    private boolean mInvalidateRootRequested;
    boolean mIsAmbientMode;
    public boolean mIsAnimating;
    boolean mIsCreating;
    boolean mIsDrawing;
    boolean mIsInTraversal;
    private boolean mIsSurfaceOpaque;
    private final ViewRootRectTracker mKeepClearRectsTracker;
    private final Configuration mLastConfigurationFromResources;
    final ViewTreeObserver.InternalInsetsInfo mLastGivenInsets;
    boolean mLastInCompatMode;
    private final MergedConfiguration mLastReportedMergedConfiguration;
    WeakReference<View> mLastScrolledFocus;
    private final Point mLastSurfaceSize;
    int mLastSyncSeqId;
    int mLastSystemUiVisibility;
    final PointF mLastTouchPoint;
    int mLastTouchSource;
    private int mLastTransformHint;
    private WindowInsets mLastWindowInsets;
    boolean mLayoutRequested;
    ArrayList<View> mLayoutRequesters;
    final IBinder mLeashToken;
    volatile Object mLocalDragState;
    final WindowLeaked mLocation;
    boolean mLostWindowFocus;
    private boolean mNeedsRendererSetup;
    boolean mNewSurfaceNeeded;
    private final int mNoncompatDensity;
    private int mNumSyncsInProgress;
    private final WindowOnBackInvokedDispatcher mOnBackInvokedDispatcher;
    int mOrigWindowType;
    Rect mOverrideInsetsFrame;
    private ViewRootImpl mParentViewRoot;
    boolean mPausedForTransition;
    boolean mPendingAlwaysConsumeSystemBars;
    final Rect mPendingBackDropFrame;
    private boolean mPendingDragResizing;
    int mPendingInputEventCount;
    QueuedInputEvent mPendingInputEventHead;
    String mPendingInputEventQueueLengthCounterName;
    QueuedInputEvent mPendingInputEventTail;
    private final MergedConfiguration mPendingMergedConfiguration;
    private ArrayList<LayoutTransition> mPendingTransitions;
    boolean mPerformContentCapture;
    boolean mPointerCapture;
    private int mPointerIconType;
    Region mPreviousTouchableRegion;
    private int mPreviousTransformHint;
    final Region mPreviousTransparentRegion;
    boolean mProcessInputEventsScheduled;
    private boolean mProfile;
    private boolean mProfileRendering;
    private QueuedInputEvent mQueuedInputEventPool;
    private int mQueuedInputEventPoolSize;
    private Bundle mRelayoutBundle;
    private boolean mRelayoutRequested;
    private boolean mRemoved;
    private Choreographer.FrameCallback mRenderProfiler;
    private boolean mRenderProfilingEnabled;
    boolean mReportNextDraw;
    private int mResizeMode;
    private HashSet<ScrollCaptureCallback> mRootScrollCaptureCallbacks;
    private long mScrollCaptureRequestTimeout;
    boolean mScrollMayChange;
    int mScrollY;
    Scroller mScroller;
    SendWindowContentChangedAccessibilityEvent mSendWindowContentChangedAccessibilityEvent;
    int mSoftInputMode;
    View mStartedDragViewForA11y;
    boolean mStopped;
    public final Surface mSurface;
    private final ArrayList<SurfaceChangedCallback> mSurfaceChangedCallbacks;
    private final SurfaceControl.Transaction mSurfaceChangedTransaction;
    private final SurfaceControl mSurfaceControl;
    BaseSurfaceHolder mSurfaceHolder;
    SurfaceHolder.Callback2 mSurfaceHolderCallback;
    private int mSurfaceSequenceId;
    private final SurfaceSession mSurfaceSession;
    private final Point mSurfaceSize;
    private final SurfaceSyncer mSurfaceSyncer;
    private boolean mSyncBuffer;
    private SurfaceSyncer.SyncBufferCallback mSyncBufferCallback;
    private int mSyncId;
    int mSyncSeqId;
    public final SurfaceSyncer.SyncTarget mSyncTarget;
    InputStage mSyntheticInputStage;
    private String mTag;
    final int mTargetSdkVersion;
    private final InsetsSourceControl[] mTempControls;
    HashSet<View> mTempHashSet;
    private final InsetsState mTempInsets;
    private final Rect mTempRect;
    final Thread mThread;
    private final ClientWindowFrames mTmpFrames;
    final int[] mTmpLocation;
    final TypedValue mTmpValue;
    Region mTouchableRegion;
    private final SurfaceControl.Transaction mTransaction;
    private ArrayList<AttachedSurfaceControl.OnBufferTransformHintChangedListener> mTransformHintListeners;
    CompatibilityInfo.Translator mTranslator;
    final Region mTransparentRegion;
    int mTraversalBarrier;
    final TraversalRunnable mTraversalRunnable;
    public boolean mTraversalScheduled;
    private int mTypesHiddenByFlags;
    boolean mUnbufferedInputDispatch;
    int mUnbufferedInputSource;
    private final UnhandledKeyManager mUnhandledKeyManager;
    private final ViewRootRectTracker mUnrestrictedKeepClearRectsTracker;
    boolean mUpcomingInTouchMode;
    boolean mUpcomingWindowFocus;
    private boolean mUseBLASTAdapter;
    private boolean mUseMTRenderer;
    View mView;
    final ViewConfiguration mViewConfiguration;
    protected final ViewFrameInfo mViewFrameInfo;
    private int mViewLayoutDirectionInitial;
    private IViewRootImplExt mViewRootImplExt;
    private IViewRootImplSocExt mViewRootImplSocExt;
    private IViewRootImplWrapper mViewRootImplWrapper;
    int mViewVisibility;
    private final Rect mVisRect;
    int mWidth;
    boolean mWillDrawSoon;
    final Rect mWinFrame;
    final W mWindow;
    public final WindowManager.LayoutParams mWindowAttributes;
    boolean mWindowAttributesChanged;
    final ArrayList<WindowCallbacks> mWindowCallbacks;
    CountDownLatch mWindowDrawCountDown;
    boolean mWindowFocusChanged;
    private final WindowLayout mWindowLayout;
    final IWindowSession mWindowSession;
    public static boolean DBG = false;
    public static boolean LOCAL_LOGV = false;
    public static boolean DEBUG_DRAW = false;
    public static boolean DEBUG_LAYOUT = false;
    public static boolean DEBUG_DIALOG = false;
    public static boolean DEBUG_INPUT_RESIZE = false;
    public static boolean DEBUG_ORIENTATION = false;
    public static boolean DEBUG_TRACKBALL = false;
    public static boolean DEBUG_IMF = false;
    public static boolean DEBUG_CONFIGURATION = false;
    public static boolean DEBUG_FPS = false;
    public static boolean DEBUG_INPUT_STAGES = false;
    public static boolean DEBUG_KEEP_SCREEN_ON = false;
    private static final boolean DEBUG_CONTENT_CAPTURE = false;
    private static final boolean DEBUG_SCROLL_CAPTURE = false;
    private static final boolean DEBUG_BLAST = false;
    public static final boolean CAPTION_ON_SHELL = SystemProperties.getBoolean("persist.debug.caption_on_shell", false);
    public static final boolean LOCAL_LAYOUT = SystemProperties.getBoolean("persist.debug.local_layout", false);
    static final ThreadLocal<HandlerActionQueue> sRunQueues = new ThreadLocal<>();
    static final ArrayList<Runnable> sFirstDrawHandlers = new ArrayList<>();
    static boolean sFirstDrawComplete = false;
    private static final ArrayList<ConfigChangedCallback> sConfigCallbacks = new ArrayList<>();
    private static boolean sCompatibilityDone = false;
    static final Interpolator mResizeInterpolator = new AccelerateDecelerateInterpolator();
    private static volatile boolean sAnrReported = false;
    static BLASTBufferQueue.TransactionHangCallback sTransactionHangCallback = new BLASTBufferQueue.TransactionHangCallback() { // from class: android.view.ViewRootImpl.1
        @Override // android.graphics.BLASTBufferQueue.TransactionHangCallback
        public void onTransactionHang(boolean isGPUHang) {
            if (isGPUHang && !ViewRootImpl.sAnrReported) {
                ViewRootImpl.sAnrReported = true;
                try {
                    ActivityManager.getService().appNotResponding("Buffer processing hung up due to stuck fence. Indicates GPU hang");
                } catch (RemoteException e) {
                }
            }
        }
    };

    public interface ActivityConfigCallback {
        void onConfigurationChanged(Configuration configuration, int i);

        void requestCompatCameraControl(boolean z, boolean z2, ICompatCameraControlCallback iCompatCameraControlCallback);
    }

    public interface ConfigChangedCallback {
        void onConfigurationChanged(Configuration configuration);
    }

    protected FrameInfo getUpdatedFrameInfo() {
        FrameInfo frameInfo = this.mChoreographer.mFrameInfo;
        this.mChoreographer.mChoreographerExt.populateAndResetFrameInfo(frameInfo.opFrameInfo, this.mAppVisible);
        this.mViewFrameInfo.populateFrameInfo(frameInfo);
        this.mViewFrameInfo.reset();
        this.mInputEventAssigner.notifyFrameProcessed();
        return frameInfo;
    }

    public ImeFocusController getImeFocusController() {
        return this.mImeFocusController;
    }

    static final class SystemUiVisibilityInfo {
        int globalVisibility;
        int localChanges;
        int localValue;

        SystemUiVisibilityInfo() {
        }
    }

    public HandwritingInitiator getHandwritingInitiator() {
        return this.mHandwritingInitiator;
    }

    public ViewRootImpl(Context context, Display display) {
        this(context, display, WindowManagerGlobal.getWindowSession(), false);
    }

    public ViewRootImpl(Context context, Display display, IWindowSession session) {
        this(context, display, session, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewRootImpl(Context context, Display display, IWindowSession iWindowSession, boolean z) throws Resources.NotFoundException {
        this.mTransformHintListeners = new ArrayList<>();
        this.mPreviousTransformHint = 0;
        this.mWindowCallbacks = new ArrayList<>();
        this.mTmpLocation = new int[2];
        this.mTmpValue = new TypedValue();
        this.mWindowAttributes = new WindowManager.LayoutParams();
        this.mAppVisible = true;
        this.mForceDecorViewVisibility = false;
        this.mOrigWindowType = -1;
        this.mStopped = false;
        this.mIsAmbientMode = false;
        this.mPausedForTransition = false;
        this.mLastInCompatMode = false;
        this.mResizeMode = -1;
        this.mViewFrameInfo = new ViewFrameInfo();
        this.mInputEventAssigner = new InputEventAssigner();
        this.mDisplayDecorationCached = false;
        this.mSurfaceSize = new Point();
        this.mLastSurfaceSize = new Point();
        this.mVisRect = new Rect();
        this.mTempRect = new Rect();
        this.mWindowLayout = new WindowLayout();
        this.mContentCaptureEnabled = 0;
        this.mSyncBuffer = false;
        this.mSyncSeqId = 0;
        this.mLastSyncSeqId = 0;
        this.mUnbufferedInputSource = 0;
        this.mPendingInputEventQueueLengthCounterName = "pq";
        Object[] objArr = 0;
        this.mUnhandledKeyManager = new UnhandledKeyManager();
        this.mWindowAttributesChanged = false;
        this.mSurface = new Surface();
        this.mSurfaceControl = new SurfaceControl();
        this.mSurfaceChangedTransaction = new SurfaceControl.Transaction();
        this.mSurfaceSession = new SurfaceSession();
        this.mTransaction = new SurfaceControl.Transaction();
        this.mTmpFrames = new ClientWindowFrames();
        this.mPendingBackDropFrame = new Rect();
        this.mTempInsets = new InsetsState();
        this.mTempControls = new InsetsSourceControl[24];
        this.mLastGivenInsets = new ViewTreeObserver.InternalInsetsInfo();
        this.mTypesHiddenByFlags = 0;
        this.mLastConfigurationFromResources = new Configuration();
        this.mLastReportedMergedConfiguration = new MergedConfiguration();
        this.mPendingMergedConfiguration = new MergedConfiguration();
        this.mDragPoint = new PointF();
        this.mLastTouchPoint = new PointF();
        this.mFpsStartTime = -1L;
        this.mFpsPrevTime = -1L;
        this.mPointerIconType = 1;
        this.mCustomPointerIcon = null;
        this.mAccessibilityInteractionConnectionManager = new AccessibilityInteractionConnectionManager();
        this.mInLayout = false;
        this.mLayoutRequesters = new ArrayList<>();
        this.mHandlingLayoutInLayoutRequest = false;
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mBlurRegionAggregator = new BackgroundBlurDrawable.Aggregator(this);
        this.mGestureExclusionTracker = new ViewRootRectTracker(new Function() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((View) obj).getSystemGestureExclusionRects();
            }
        });
        this.mKeepClearRectsTracker = new ViewRootRectTracker(new Function() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda10
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((View) obj).collectPreferKeepClearRects();
            }
        });
        this.mUnrestrictedKeepClearRectsTracker = new ViewRootRectTracker(new Function() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda11
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((View) obj).collectUnrestrictedPreferKeepClearRects();
            }
        });
        this.mSurfaceSyncer = new SurfaceSyncer();
        this.mSyncId = -1;
        this.mNumSyncsInProgress = 0;
        this.mScrollCaptureRequestTimeout = 2500L;
        this.mSurfaceSequenceId = 0;
        this.mLastTransformHint = Integer.MIN_VALUE;
        this.mRelayoutBundle = new Bundle();
        this.mTag = TAG;
        this.mProfile = false;
        this.mDisplayListener = new DisplayManager.DisplayListener() { // from class: android.view.ViewRootImpl.3
            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int displayId) {
                int oldDisplayState;
                int newDisplayState;
                ViewRootImpl.this.mViewRootImplExt.onDisplayChanged(displayId);
                if (ViewRootImpl.this.mView != null && ViewRootImpl.this.mDisplay.getDisplayId() == displayId && (oldDisplayState = ViewRootImpl.this.mAttachInfo.mDisplayState) != (newDisplayState = ViewRootImpl.this.mDisplay.getState())) {
                    ViewRootImpl.this.mAttachInfo.mDisplayState = newDisplayState;
                    ViewRootImpl.this.pokeDrawLockIfNeeded();
                    if (oldDisplayState != 0) {
                        int oldScreenState = toViewScreenState(oldDisplayState);
                        int newScreenState = toViewScreenState(newDisplayState);
                        if (oldScreenState != newScreenState) {
                            ViewRootImpl.this.mView.dispatchScreenStateChanged(newScreenState);
                        }
                        if (oldDisplayState == 1) {
                            ViewRootImpl.this.mFullRedrawNeeded = true;
                            ViewRootImpl.this.scheduleTraversals();
                        }
                    }
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int displayId) {
                ViewRootImpl.this.mViewRootImplExt.onDisplayChanged(displayId);
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int displayId) {
                ViewRootImpl.this.mViewRootImplExt.onDisplayChanged(displayId);
            }

            private int toViewScreenState(int displayState) {
                if (displayState != 1) {
                    return 1;
                }
                return 0;
            }
        };
        this.mSurfaceChangedCallbacks = new ArrayList<>();
        ViewRootHandler viewRootHandler = new ViewRootHandler();
        this.mHandler = viewRootHandler;
        this.mTraversalRunnable = new TraversalRunnable();
        this.mConsumedBatchedInputRunnable = new ConsumeBatchedInputRunnable();
        this.mConsumeBatchedInputImmediatelyRunnable = new ConsumeBatchedInputImmediatelyRunnable();
        this.mInvalidateOnAnimationRunnable = new InvalidateOnAnimationRunnable();
        this.mFrame = 0;
        this.mSyncTarget = new AnonymousClass9();
        this.mViewRootImplWrapper = new ViewRootImplWrapper();
        this.mViewRootImplSocExt = (IViewRootImplSocExt) ExtLoader.type(IViewRootImplSocExt.class).base(this).create();
        IViewRootImplExt iViewRootImplExt = (IViewRootImplExt) ExtLoader.type(IViewRootImplExt.class).base(this).create();
        this.mViewRootImplExt = iViewRootImplExt;
        this.mContext = context;
        this.mWindowSession = iWindowSession;
        iViewRootImplExt.init(this, context);
        this.mDisplay = display;
        this.mBasePackageName = context.getBasePackageName();
        this.mThread = Thread.currentThread();
        WindowLeaked windowLeaked = new WindowLeaked(null);
        this.mLocation = windowLeaked;
        windowLeaked.fillInStackTrace();
        this.mWidth = -1;
        this.mHeight = -1;
        this.mDirty = new Rect();
        this.mWinFrame = new Rect();
        W wCreateWindowClient = this.mViewRootImplExt.createWindowClient();
        this.mWindow = wCreateWindowClient;
        this.mLeashToken = new Binder();
        this.mTargetSdkVersion = context.getApplicationInfo().targetSdkVersion;
        this.mViewVisibility = 8;
        this.mTransparentRegion = new Region();
        this.mPreviousTransparentRegion = new Region();
        this.mFirst = true;
        this.mPerformContentCapture = true;
        this.mAdded = false;
        this.mAttachInfo = new View.AttachInfo(iWindowSession, wCreateWindowClient, display, this, viewRootHandler, this, context);
        this.mCompatibleVisibilityInfo = new SystemUiVisibilityInfo();
        this.mAccessibilityManager = AccessibilityManager.getInstance(context);
        this.mHighContrastTextManager = new HighContrastTextManager();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mViewConfiguration = viewConfiguration;
        this.mDensity = context.getResources().getDisplayMetrics().densityDpi;
        this.mNoncompatDensity = context.getResources().getDisplayMetrics().noncompatDensityDpi;
        this.mFallbackEventHandler = new PhoneFallbackEventHandler(context);
        this.mChoreographer = z ? Choreographer.getSfInstance() : Choreographer.getInstance();
        this.mDisplayManager = (DisplayManager) context.getSystemService(Context.DISPLAY_SERVICE);
        this.mInsetsController = new InsetsController(new ViewRootInsetsControllerHost(this));
        this.mHandwritingInitiator = new HandwritingInitiator(viewConfiguration, (InputMethodManager) context.getSystemService(InputMethodManager.class));
        this.mViewRootImplExt.initScrollOpt(context);
        String string = context.getResources().getString(R.string.config_inputEventCompatProcessorOverrideClassName);
        if (string.isEmpty()) {
            this.mInputCompatProcessor = new InputEventCompatProcessor(context);
        } else {
            InputEventCompatProcessor inputEventCompatProcessor = null;
            try {
                InputEventCompatProcessor inputEventCompatProcessor2 = (InputEventCompatProcessor) Class.forName(string).getConstructor(Context.class).newInstance(context);
            } catch (Exception e) {
                Log.e(TAG, "Unable to create the InputEventCompatProcessor. ", e);
            } finally {
                this.mInputCompatProcessor = inputEventCompatProcessor;
            }
        }
        if (!sCompatibilityDone) {
            sAlwaysAssignFocus = this.mTargetSdkVersion < 28;
            sCompatibilityDone = true;
        }
        loadSystemProperties();
        this.mImeFocusController = new ImeFocusController(this);
        this.mViewRootImplExt.initSystemUINavigationGesture(this, context);
        this.mViewRootImplExt.hookNewInstance(this.mContext);
        this.mFastScrollSoundEffectsEnabled = ((AudioManager) this.mContext.getSystemService(AudioManager.class)).areNavigationRepeatSoundEffectsEnabled();
        this.mScrollCaptureRequestTimeout = 2500L;
        this.mOnBackInvokedDispatcher = new WindowOnBackInvokedDispatcher(context.getApplicationInfo().isOnBackInvokedCallbackEnabled());
    }

    public static void addFirstDrawHandler(Runnable callback) {
        ArrayList<Runnable> arrayList = sFirstDrawHandlers;
        synchronized (arrayList) {
            if (!sFirstDrawComplete) {
                arrayList.add(callback);
            }
        }
    }

    public static void addConfigCallback(ConfigChangedCallback callback) {
        ArrayList<ConfigChangedCallback> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            arrayList.add(callback);
        }
    }

    public static void removeConfigCallback(ConfigChangedCallback callback) {
        ArrayList<ConfigChangedCallback> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            arrayList.remove(callback);
        }
    }

    public void setActivityConfigCallback(ActivityConfigCallback callback) {
        this.mActivityConfigCallback = callback;
    }

    public void setOnContentApplyWindowInsetsListener(Window.OnContentApplyWindowInsetsListener listener) {
        this.mAttachInfo.mContentOnApplyWindowInsetsListener = listener;
        if (!this.mFirst) {
            requestFitSystemWindows();
        }
    }

    public void addWindowCallbacks(WindowCallbacks callback) {
        this.mWindowCallbacks.add(callback);
    }

    public void removeWindowCallbacks(WindowCallbacks callback) {
        this.mWindowCallbacks.remove(callback);
    }

    public void reportDrawFinish() {
        CountDownLatch countDownLatch = this.mWindowDrawCountDown;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    public void profile() {
        this.mProfile = true;
    }

    static boolean isInTouchMode() {
        IWindowSession windowSession = WindowManagerGlobal.peekWindowSession();
        if (windowSession != null) {
            try {
                return windowSession.getInTouchMode();
            } catch (RemoteException e) {
                return false;
            }
        }
        return false;
    }

    public void notifyChildRebuilt() {
        if (this.mView instanceof RootViewSurfaceTaker) {
            SurfaceHolder.Callback2 callback2 = this.mSurfaceHolderCallback;
            if (callback2 != null) {
                this.mSurfaceHolder.removeCallback(callback2);
            }
            SurfaceHolder.Callback2 callback2WillYouTakeTheSurface = ((RootViewSurfaceTaker) this.mView).willYouTakeTheSurface();
            this.mSurfaceHolderCallback = callback2WillYouTakeTheSurface;
            if (callback2WillYouTakeTheSurface != null) {
                TakenSurfaceHolder takenSurfaceHolder = new TakenSurfaceHolder();
                this.mSurfaceHolder = takenSurfaceHolder;
                takenSurfaceHolder.setFormat(0);
                this.mSurfaceHolder.addCallback(this.mSurfaceHolderCallback);
            } else {
                this.mSurfaceHolder = null;
            }
            InputQueue.Callback callbackWillYouTakeTheInputQueue = ((RootViewSurfaceTaker) this.mView).willYouTakeTheInputQueue();
            this.mInputQueueCallback = callbackWillYouTakeTheInputQueue;
            if (callbackWillYouTakeTheInputQueue != null) {
                callbackWillYouTakeTheInputQueue.onInputQueueCreated(this.mInputQueue);
            }
        }
    }

    private Configuration getConfiguration() {
        return this.mContext.getResources().getConfiguration();
    }

    public void setView(View view, WindowManager.LayoutParams attrs, View panelParentView) throws Throwable {
        setView(view, attrs, panelParentView, UserHandle.myUserId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0569 A[Catch: all -> 0x0579, TRY_ENTER, TryCatch #5 {all -> 0x0579, blocks: (B:16:0x0069, B:18:0x0077, B:20:0x007d, B:22:0x0083, B:23:0x008b, B:25:0x0098, B:27:0x00a3, B:28:0x00b4, B:30:0x00b9, B:31:0x00bc, B:33:0x00d1, B:37:0x00dd, B:39:0x00e1, B:40:0x00e6, B:42:0x00eb, B:44:0x00fc, B:46:0x0100, B:47:0x0118, B:49:0x011e, B:50:0x0126, B:54:0x0139, B:58:0x0146, B:60:0x014a, B:61:0x0158, B:63:0x0165, B:65:0x016e, B:69:0x0179, B:71:0x0181, B:73:0x0189, B:85:0x01eb, B:86:0x01ee, B:90:0x01f7, B:92:0x025b, B:93:0x025e, B:95:0x0262, B:97:0x027e, B:98:0x02ac, B:99:0x02af, B:120:0x0402, B:121:0x0418, B:100:0x02b3, B:101:0x02d3, B:102:0x02d4, B:103:0x02f4, B:104:0x02f5, B:105:0x0315, B:106:0x0316, B:107:0x0336, B:108:0x0337, B:110:0x0339, B:111:0x0367, B:112:0x0368, B:113:0x0390, B:114:0x0391, B:115:0x03b1, B:116:0x03b2, B:117:0x03e0, B:118:0x03e1, B:119:0x0401, B:122:0x0419, B:124:0x0420, B:125:0x0423, B:127:0x0427, B:130:0x0434, B:132:0x0438, B:133:0x0444, B:135:0x0455, B:136:0x046f, B:140:0x0479, B:143:0x0480, B:145:0x048a, B:146:0x048f, B:148:0x0495, B:149:0x0499, B:169:0x0572, B:163:0x0569, B:165:0x056d, B:57:0x0144, B:173:0x0577), top: B:181:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setView(android.view.View r33, android.view.WindowManager.LayoutParams r34, android.view.View r35, int r36) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.setView(android.view.View, android.view.WindowManager$LayoutParams, android.view.View, int):void");
    }

    private Rect getAttachedWindowFrame() {
        int type = this.mWindowAttributes.type;
        ViewRootImpl viewRootImpl = this.mParentViewRoot;
        boolean layoutAttached = viewRootImpl != null && type >= 1000 && type <= 1999 && type != 1003;
        if (layoutAttached) {
            return viewRootImpl.mWinFrame;
        }
        return null;
    }

    private void registerListeners() {
        this.mAccessibilityManager.addAccessibilityStateChangeListener(this.mAccessibilityInteractionConnectionManager, this.mHandler);
        this.mAccessibilityManager.addHighTextContrastStateChangeListener(this.mHighContrastTextManager, this.mHandler);
        this.mDisplayManager.registerDisplayListener(this.mDisplayListener, this.mHandler);
        this.mViewRootImplExt.onDisplayChanged(-1);
    }

    private void unregisterListeners() {
        this.mAccessibilityManager.removeAccessibilityStateChangeListener(this.mAccessibilityInteractionConnectionManager);
        this.mAccessibilityManager.removeHighTextContrastStateChangeListener(this.mHighContrastTextManager);
        this.mDisplayManager.unregisterDisplayListener(this.mDisplayListener);
    }

    private void setTag() {
        String[] split = this.mWindowAttributes.getTitle().toString().split("\\.");
        if (split.length > 0) {
            this.mTag = "VRI[" + split[split.length - 1] + NavigationBarInflaterView.SIZE_MOD_END;
        }
    }

    public int getWindowFlags() {
        return this.mWindowAttributes.flags;
    }

    public int getDisplayId() {
        return this.mDisplay.getDisplayId();
    }

    public CharSequence getTitle() {
        return this.mWindowAttributes.getTitle();
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    void destroyHardwareResources() {
        ThreadedRenderer renderer = this.mAttachInfo.mThreadedRenderer;
        if (renderer != null) {
            if (Looper.myLooper() != this.mAttachInfo.mHandler.getLooper()) {
                this.mAttachInfo.mHandler.postAtFrontOfQueue(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.destroyHardwareResources();
                    }
                });
            } else {
                renderer.destroyHardwareResources(this.mView);
                renderer.destroy();
            }
        }
    }

    public void detachFunctor(long functor) {
    }

    public static void invokeFunctor(long functor, boolean waitForCompletion) {
    }

    public void registerAnimatingRenderNode(RenderNode animator) {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.registerAnimatingRenderNode(animator);
            return;
        }
        if (this.mAttachInfo.mPendingAnimatingRenderNodes == null) {
            this.mAttachInfo.mPendingAnimatingRenderNodes = new ArrayList();
        }
        this.mAttachInfo.mPendingAnimatingRenderNodes.add(animator);
    }

    public void registerVectorDrawableAnimator(NativeVectorDrawableAnimator animator) {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.registerVectorDrawableAnimator(animator);
        }
    }

    public void registerRtFrameCallback(final HardwareRenderer.FrameDrawingCallback callback) {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.registerRtFrameCallback(new HardwareRenderer.FrameDrawingCallback() { // from class: android.view.ViewRootImpl.2
                @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
                public void onFrameDraw(long frame) {
                }

                @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
                public HardwareRenderer.FrameCommitCallback onFrameDraw(int syncResult, long frame) {
                    try {
                        return callback.onFrameDraw(syncResult, frame);
                    } catch (Exception e) {
                        Log.e(ViewRootImpl.TAG, "Exception while executing onFrameDraw", e);
                        return null;
                    }
                }
            });
        }
    }

    private void enableHardwareAcceleration(WindowManager.LayoutParams attrs) {
        this.mAttachInfo.mHardwareAccelerated = false;
        this.mAttachInfo.mHardwareAccelerationRequested = false;
        if (this.mTranslator != null) {
            return;
        }
        boolean hardwareAccelerated = (attrs.flags & 16777216) != 0;
        if (hardwareAccelerated) {
            boolean forceHwAccelerated = (attrs.privateFlags & 2) != 0;
            boolean fakeHwAccelerated = (attrs.privateFlags & 1) != 0;
            if (fakeHwAccelerated) {
                this.mAttachInfo.mHardwareAccelerationRequested = true;
                return;
            }
            if (ThreadedRenderer.sRendererEnabled || forceHwAccelerated) {
                if (this.mAttachInfo.mThreadedRenderer != null) {
                    this.mAttachInfo.mThreadedRenderer.destroy();
                }
                Rect insets = attrs.surfaceInsets;
                boolean hasSurfaceInsets = (insets.left == 0 && insets.right == 0 && insets.top == 0 && insets.bottom == 0) ? false : true;
                boolean translucent = attrs.format != -1 || hasSurfaceInsets;
                this.mAttachInfo.mThreadedRenderer = ThreadedRenderer.create(this.mContext, translucent, attrs.getTitle().toString());
                updateColorModeIfNeeded(attrs.getColorMode());
                updateForceDarkMode();
                if (this.mAttachInfo.mThreadedRenderer != null) {
                    View.AttachInfo attachInfo = this.mAttachInfo;
                    attachInfo.mHardwareAccelerationRequested = true;
                    attachInfo.mHardwareAccelerated = true;
                    if (this.mHardwareRendererObserver != null) {
                        this.mAttachInfo.mThreadedRenderer.addObserver(this.mHardwareRendererObserver);
                    }
                    this.mAttachInfo.mThreadedRenderer.setSurfaceControl(this.mSurfaceControl);
                    this.mAttachInfo.mThreadedRenderer.setBlastBufferQueue(this.mBlastBufferQueue);
                }
            }
        }
    }

    private int getNightMode() {
        return getConfiguration().uiMode & 48;
    }

    private void updateForceDarkMode() {
        if (this.mAttachInfo.mThreadedRenderer == null) {
            return;
        }
        boolean useAutoDark = getNightMode() == 32;
        this.mViewRootImplExt.logConfigurationNightError(this.mContext, useAutoDark);
        if (useAutoDark) {
            boolean forceDarkAllowedDefault = SystemProperties.getBoolean(ThreadedRenderer.DEBUG_FORCE_DARK, false);
            TypedArray a = this.mContext.obtainStyledAttributes(R.styleable.Theme);
            useAutoDark = a.getBoolean(279, true) && a.getBoolean(278, forceDarkAllowedDefault);
            a.recycle();
            this.mViewRootImplExt.logForceDarkAllowedStatus(this.mContext, forceDarkAllowedDefault);
        }
        this.mViewRootImplExt.forceDarkWithoutTheme(this.mContext, this.mView, useAutoDark);
        if (this.mAttachInfo.mThreadedRenderer != null && this.mAttachInfo.mThreadedRenderer.setForceDark(useAutoDark)) {
            invalidateWorld(this.mView);
        }
    }

    public View getView() {
        return this.mView;
    }

    final WindowLeaked getLocation() {
        return this.mLocation;
    }

    public void setLayoutParams(WindowManager.LayoutParams attrs, boolean newView) {
        int oldInsetLeft;
        synchronized (this) {
            int oldInsetLeft2 = this.mWindowAttributes.surfaceInsets.left;
            int oldInsetTop = this.mWindowAttributes.surfaceInsets.top;
            int oldInsetRight = this.mWindowAttributes.surfaceInsets.right;
            int oldInsetBottom = this.mWindowAttributes.surfaceInsets.bottom;
            int oldSoftInputMode = this.mWindowAttributes.softInputMode;
            boolean oldHasManualSurfaceInsets = this.mWindowAttributes.hasManualSurfaceInsets;
            if (DEBUG_KEEP_SCREEN_ON && (this.mClientWindowLayoutFlags & 128) != 0 && (attrs.flags & 128) == 0) {
                Slog.d(this.mTag, "setLayoutParams: FLAG_KEEP_SCREEN_ON from true to false!");
            }
            this.mClientWindowLayoutFlags = attrs.flags;
            int compatibleWindowFlag = this.mWindowAttributes.privateFlags & 128;
            int systemUiVisibility = this.mWindowAttributes.systemUiVisibility;
            int subtreeSystemUiVisibility = this.mWindowAttributes.subtreeSystemUiVisibility;
            int appearance = this.mWindowAttributes.insetsFlags.appearance;
            int behavior = this.mWindowAttributes.insetsFlags.behavior;
            int appearanceAndBehaviorPrivateFlags = this.mWindowAttributes.privateFlags & Enums.AUDIO_FORMAT_DTS_HD;
            int changes = this.mWindowAttributes.copyFrom(attrs);
            if ((524288 & changes) != 0) {
                this.mAttachInfo.mRecomputeGlobalAttributes = true;
            }
            if ((changes & 1) != 0) {
                this.mAttachInfo.mNeedsUpdateLightCenter = true;
            }
            if (this.mWindowAttributes.packageName == null) {
                this.mWindowAttributes.packageName = this.mBasePackageName;
            }
            this.mWindowAttributes.systemUiVisibility = systemUiVisibility;
            this.mWindowAttributes.subtreeSystemUiVisibility = subtreeSystemUiVisibility;
            this.mWindowAttributes.insetsFlags.appearance = appearance;
            this.mWindowAttributes.insetsFlags.behavior = behavior;
            this.mWindowAttributes.privateFlags |= compatibleWindowFlag | appearanceAndBehaviorPrivateFlags | 33554432;
            if (this.mWindowAttributes.preservePreviousSurfaceInsets) {
                this.mWindowAttributes.surfaceInsets.set(oldInsetLeft2, oldInsetTop, oldInsetRight, oldInsetBottom);
                this.mWindowAttributes.hasManualSurfaceInsets = oldHasManualSurfaceInsets;
            } else if (this.mWindowAttributes.surfaceInsets.left != oldInsetLeft2 || this.mWindowAttributes.surfaceInsets.top != oldInsetTop || this.mWindowAttributes.surfaceInsets.right != oldInsetRight || this.mWindowAttributes.surfaceInsets.bottom != oldInsetBottom) {
                this.mNeedsRendererSetup = true;
            }
            applyKeepScreenOnFlag(this.mWindowAttributes);
            if (newView) {
                this.mSoftInputMode = attrs.softInputMode;
                requestLayout();
            }
            if ((attrs.softInputMode & 240) == 0) {
                WindowManager.LayoutParams layoutParams = this.mWindowAttributes;
                oldInsetLeft = oldSoftInputMode;
                layoutParams.softInputMode = (oldInsetLeft & 240) | (layoutParams.softInputMode & (-241));
            } else {
                oldInsetLeft = oldSoftInputMode;
            }
            if (this.mWindowAttributes.softInputMode != oldInsetLeft) {
                requestFitSystemWindows();
            }
            this.mWindowAttributesChanged = true;
            this.mViewRootImplExt.setScrollToTopRootView(this.mView, this.mWindowAttributes);
            scheduleTraversals();
        }
    }

    void handleAppVisibility(boolean visible) {
        if (this.mAppVisible != visible) {
            boolean previousVisible = getHostVisibility() == 0;
            this.mAppVisible = visible;
            boolean currentVisible = getHostVisibility() == 0;
            if (previousVisible != currentVisible) {
                this.mAppVisibilityChanged = true;
                scheduleTraversals();
            }
            if (!this.mAppVisible) {
                WindowManagerGlobal.trimForeground();
            }
            AnimationHandler.requestAnimatorsEnabled(this.mAppVisible, this);
        }
    }

    void handleGetNewSurface() {
        this.mNewSurfaceNeeded = true;
        this.mFullRedrawNeeded = true;
        scheduleTraversals();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleResized(int msg, SomeArgs args) {
        boolean z;
        if (!this.mAdded) {
            return;
        }
        ClientWindowFrames frames = (ClientWindowFrames) args.arg1;
        MergedConfiguration mergedConfiguration = (MergedConfiguration) args.arg2;
        boolean forceNextWindowRelayout = args.argi1 != 0;
        int displayId = args.argi3;
        int resizeMode = args.argi5;
        Rect frame = frames.frame;
        Rect displayFrame = frames.displayFrame;
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateRectInScreenToAppWindow(frame);
            this.mTranslator.translateRectInScreenToAppWindow(displayFrame);
        }
        boolean frameChanged = !this.mWinFrame.equals(frame);
        boolean configChanged = !this.mLastReportedMergedConfiguration.equals(mergedConfiguration);
        boolean displayChanged = this.mDisplay.getDisplayId() != displayId;
        boolean resizeModeChanged = this.mResizeMode != resizeMode;
        if (msg == 4 || this.mViewRootImplExt.shouldBlockResizeReportForSplashScreen(this.mWindowAttributes, this.mBasePackageName)) {
            if (!frameChanged && !configChanged && !displayChanged && !resizeModeChanged && !forceNextWindowRelayout) {
                if (!this.mViewRootImplExt.updateAlwaysConsumeSystemBarsIfNeeded(args.argi2 != 0)) {
                    return;
                }
            }
        }
        this.mPendingDragResizing = resizeMode != -1;
        this.mResizeMode = resizeMode;
        if (configChanged) {
            performConfigurationChange(mergedConfiguration, false, displayChanged ? displayId : -1);
        } else if (displayChanged) {
            onMovedToDisplay(displayId, this.mLastConfigurationFromResources);
        }
        setFrame(frame);
        this.mTmpFrames.displayFrame.set(displayFrame);
        if (this.mDragResizing && this.mUseMTRenderer) {
            boolean fullscreen = frame.equals(this.mPendingBackDropFrame);
            z = true;
            int i = this.mWindowCallbacks.size() - 1;
            while (i >= 0) {
                this.mWindowCallbacks.get(i).onWindowSizeIsChanging(this.mPendingBackDropFrame, fullscreen, this.mAttachInfo.mVisibleInsets, this.mAttachInfo.mStableInsets);
                i--;
                mergedConfiguration = mergedConfiguration;
                displayId = displayId;
                resizeMode = resizeMode;
            }
        } else {
            z = true;
        }
        this.mForceNextWindowRelayout = forceNextWindowRelayout;
        this.mPendingAlwaysConsumeSystemBars = args.argi2 != 0 ? z : false;
        int i2 = args.argi4;
        int i3 = this.mSyncSeqId;
        if (i2 > i3) {
            i3 = args.argi4;
        }
        this.mSyncSeqId = i3;
        if (msg == 5) {
            reportNextDraw();
        }
        View view = this.mView;
        if (view != null && (frameChanged || configChanged)) {
            forceLayout(view);
        }
        requestLayout();
    }

    public void onMovedToDisplay(int displayId, Configuration config) {
        if (this.mDisplay.getDisplayId() == displayId) {
            return;
        }
        updateInternalDisplay(displayId, this.mView.getResources());
        this.mImeFocusController.onMovedToDisplay();
        this.mAttachInfo.mDisplayState = this.mDisplay.getState();
        this.mDisplayInstallOrientation = this.mDisplay.getInstallOrientation();
        this.mView.dispatchMovedToDisplay(this.mDisplay, config);
    }

    private void updateInternalDisplay(int displayId, Resources resources) {
        Display preferredDisplay = ResourcesManager.getInstance().getAdjustedDisplay(displayId, resources);
        if (preferredDisplay == null) {
            Slog.w(TAG, "Cannot get desired display with Id: " + displayId);
            this.mDisplay = ResourcesManager.getInstance().getAdjustedDisplay(0, resources);
        } else {
            this.mDisplay = preferredDisplay;
        }
        this.mContext.updateDisplay(this.mDisplay.getDisplayId());
    }

    void pokeDrawLockIfNeeded() {
        if (Display.isDozeState(this.mAttachInfo.mDisplayState) && this.mWindowAttributes.type == 1 && this.mAdded && this.mTraversalScheduled && this.mAttachInfo.mHasWindowFocus) {
            try {
                this.mWindowSession.pokeDrawLock(this.mWindow);
            } catch (RemoteException e) {
            }
        }
    }

    @Override // android.view.ViewParent
    public void requestFitSystemWindows() {
        checkThread();
        this.mApplyInsetsRequested = true;
        scheduleTraversals();
    }

    void notifyInsetsChanged() {
        this.mApplyInsetsRequested = true;
        requestLayout();
        if (View.sForceLayoutWhenInsetsChanged && this.mView != null && (this.mWindowAttributes.softInputMode & 240) == 16 && !this.mViewRootImplExt.disableRelayout()) {
            forceLayout(this.mView);
        }
        if (!this.mIsInTraversal) {
            scheduleTraversals();
        }
    }

    @Override // android.view.ViewParent
    public void requestLayout() {
        if (!this.mHandlingLayoutInLayoutRequest) {
            checkThread();
            this.mLayoutRequested = true;
            scheduleTraversals();
        }
    }

    @Override // android.view.ViewParent
    public boolean isLayoutRequested() {
        return this.mLayoutRequested;
    }

    @Override // android.view.ViewParent
    public void onDescendantInvalidated(View child, View descendant) {
        if ((descendant.mPrivateFlags & 64) != 0) {
            this.mIsAnimating = true;
        }
        invalidate();
    }

    void invalidate() {
        this.mDirty.set(0, 0, this.mWidth, this.mHeight);
        if (!this.mWillDrawSoon) {
            scheduleTraversals();
        }
    }

    void invalidateWorld(View view) {
        view.invalidate();
        if (view instanceof ViewGroup) {
            ViewGroup parent = (ViewGroup) view;
            for (int i = 0; i < parent.getChildCount(); i++) {
                invalidateWorld(parent.getChildAt(i));
            }
        }
    }

    @Override // android.view.ViewParent
    public void invalidateChild(View child, Rect dirty) {
        invalidateChildInParent(null, dirty);
    }

    @Override // android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] location, Rect dirty) {
        checkThread();
        if (DEBUG_DRAW) {
            Log.v(this.mTag, "Invalidate child: " + dirty);
        }
        if (dirty == null) {
            invalidate();
            return null;
        }
        if (dirty.isEmpty() && !this.mIsAnimating) {
            return null;
        }
        if (this.mCurScrollY != 0 || this.mTranslator != null) {
            this.mTempRect.set(dirty);
            dirty = this.mTempRect;
            int i = this.mCurScrollY;
            if (i != 0) {
                dirty.offset(0, -i);
            }
            CompatibilityInfo.Translator translator = this.mTranslator;
            if (translator != null) {
                translator.translateRectInAppWindowToScreen(dirty);
            }
            if (this.mAttachInfo.mScalingRequired) {
                dirty.inset(-1, -1);
            }
        }
        invalidateRectOnScreen(dirty);
        return null;
    }

    private void invalidateRectOnScreen(Rect dirty) {
        Rect localDirty = this.mDirty;
        localDirty.union(dirty.left, dirty.top, dirty.right, dirty.bottom);
        float appScale = this.mAttachInfo.mApplicationScale;
        boolean intersected = localDirty.intersect(0, 0, (int) ((this.mWidth * appScale) + 0.5f), (int) ((this.mHeight * appScale) + 0.5f));
        if (!intersected) {
            localDirty.setEmpty();
        }
        if (this.mWillDrawSoon) {
            return;
        }
        if (intersected || this.mIsAnimating) {
            scheduleTraversals();
        }
    }

    public void setIsAmbientMode(boolean ambient) {
        this.mIsAmbientMode = ambient;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setWindowStopped(boolean stopped) {
        checkThread();
        if (this.mStopped != stopped) {
            Log.d(this.mTag, "setWindowStopped stopped:" + stopped);
            this.mStopped = stopped;
            ThreadedRenderer renderer = this.mAttachInfo.mThreadedRenderer;
            if (renderer != null) {
                if (DEBUG_DRAW) {
                    Log.d(this.mTag, "WindowStopped on " + ((Object) getTitle()) + " set to " + this.mStopped);
                }
                renderer.setStopped(this.mStopped);
            }
            if (!this.mStopped) {
                this.mAppVisibilityChanged = true;
                scheduleTraversals();
                return;
            }
            if (renderer != null) {
                renderer.destroyHardwareResources(this.mView);
            }
            if (this.mSurface.isValid()) {
                if (this.mSurfaceHolder != null) {
                    notifyHolderSurfaceDestroyed();
                }
                notifySurfaceDestroyed();
            }
            destroySurface();
        }
    }

    public interface SurfaceChangedCallback {
        void surfaceCreated(SurfaceControl.Transaction transaction);

        void surfaceDestroyed();

        void surfaceReplaced(SurfaceControl.Transaction transaction);

        default void surfaceSyncStarted() {
        }
    }

    public void addSurfaceChangedCallback(SurfaceChangedCallback c) {
        this.mSurfaceChangedCallbacks.add(c);
    }

    public void removeSurfaceChangedCallback(SurfaceChangedCallback c) {
        this.mSurfaceChangedCallbacks.remove(c);
    }

    private void notifySurfaceCreated() {
        this.mViewRootImplExt.updateLogLevel();
        for (int i = 0; i < this.mSurfaceChangedCallbacks.size(); i++) {
            this.mSurfaceChangedCallbacks.get(i).surfaceCreated(this.mSurfaceChangedTransaction);
        }
    }

    private void notifySurfaceReplaced() {
        for (int i = 0; i < this.mSurfaceChangedCallbacks.size(); i++) {
            this.mSurfaceChangedCallbacks.get(i).surfaceReplaced(this.mSurfaceChangedTransaction);
        }
    }

    private void notifySurfaceDestroyed() {
        for (int i = 0; i < this.mSurfaceChangedCallbacks.size(); i++) {
            this.mSurfaceChangedCallbacks.get(i).surfaceDestroyed();
        }
    }

    private void notifySurfaceSyncStarted() {
        for (int i = 0; i < this.mSurfaceChangedCallbacks.size(); i++) {
            this.mSurfaceChangedCallbacks.get(i).surfaceSyncStarted();
        }
    }

    public SurfaceControl getBoundsLayer() {
        if (this.mBoundsLayer == null) {
            this.mBoundsLayer = new SurfaceControl.Builder(this.mSurfaceSession).setContainerLayer().setName("Bounds for - " + getTitle().toString()).setParent(getSurfaceControl()).setCallsite("ViewRootImpl.getBoundsLayer").build();
            setBoundsLayerCrop(this.mTransaction);
            this.mTransaction.show(this.mBoundsLayer).apply();
        }
        return this.mBoundsLayer;
    }

    void updateBlastSurfaceIfNeeded() {
        if (!this.mSurfaceControl.isValid()) {
            return;
        }
        BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
        if (bLASTBufferQueue != null && bLASTBufferQueue.isSameSurfaceControl(this.mSurfaceControl)) {
            this.mBlastBufferQueue.update(this.mSurfaceControl, this.mSurfaceSize.x, this.mSurfaceSize.y, this.mWindowAttributes.format);
            return;
        }
        BLASTBufferQueue bLASTBufferQueue2 = this.mBlastBufferQueue;
        if (bLASTBufferQueue2 != null) {
            bLASTBufferQueue2.destroy();
        }
        BLASTBufferQueue bLASTBufferQueue3 = new BLASTBufferQueue(this.mViewRootImplExt.getOsieLayerName(this.mTag, this.mWindowAttributes.getTitle().toString()), this.mSurfaceControl, this.mSurfaceSize.x, this.mSurfaceSize.y, this.mWindowAttributes.format);
        this.mBlastBufferQueue = bLASTBufferQueue3;
        bLASTBufferQueue3.setTransactionHangCallback(sTransactionHangCallback);
        this.mViewRootImplSocExt.setBLASTBufferQueue(this.mBlastBufferQueue);
        Surface blastSurface = this.mBlastBufferQueue.createSurface();
        this.mSurface.transferFrom(blastSurface);
    }

    private void setBoundsLayerCrop(SurfaceControl.Transaction t) {
        this.mTempRect.set(0, 0, this.mSurfaceSize.x, this.mSurfaceSize.y);
        this.mTempRect.inset(this.mWindowAttributes.surfaceInsets.left, this.mWindowAttributes.surfaceInsets.top, this.mWindowAttributes.surfaceInsets.right, this.mWindowAttributes.surfaceInsets.bottom);
        t.setWindowCrop(this.mBoundsLayer, this.mTempRect);
    }

    private boolean updateBoundsLayer(SurfaceControl.Transaction t) {
        if (this.mBoundsLayer != null) {
            setBoundsLayerCrop(t);
            return true;
        }
        return false;
    }

    private void prepareSurfaces() {
        SurfaceControl.Transaction t = this.mTransaction;
        SurfaceControl sc = getSurfaceControl();
        if (sc.isValid() && updateBoundsLayer(t)) {
            m5297lambda$applyTransactionOnDraw$10$androidviewViewRootImpl(t, this.mSurface.getNextFrameNumber());
        }
    }

    private void destroySurface() {
        SurfaceControl surfaceControl = this.mBoundsLayer;
        if (surfaceControl != null) {
            surfaceControl.release();
            this.mBoundsLayer = null;
        }
        this.mSurface.release();
        this.mSurfaceControl.release();
        BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
        if (bLASTBufferQueue != null) {
            bLASTBufferQueue.destroy();
            this.mBlastBufferQueue = null;
        }
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.setSurfaceControl(null);
            this.mAttachInfo.mThreadedRenderer.setBlastBufferQueue(null);
        }
    }

    public void setPausedForTransition(boolean paused) {
        this.mPausedForTransition = paused;
    }

    @Override // android.view.ViewParent
    public ViewParent getParent() {
        return null;
    }

    @Override // android.view.ViewParent
    public boolean getChildVisibleRect(View child, Rect r, Point offset) {
        if (child != this.mView) {
            throw new RuntimeException("child is not mine, honest!");
        }
        return r.intersect(0, 0, this.mWidth, this.mHeight);
    }

    @Override // android.view.ViewParent
    public void bringChildToFront(View child) {
    }

    int getHostVisibility() {
        View view = this.mView;
        if (view == null || !(this.mAppVisible || this.mForceDecorViewVisibility)) {
            return 8;
        }
        return view.getVisibility();
    }

    public void requestTransitionStart(LayoutTransition transition) {
        ArrayList<LayoutTransition> arrayList = this.mPendingTransitions;
        if (arrayList == null || !arrayList.contains(transition)) {
            if (this.mPendingTransitions == null) {
                this.mPendingTransitions = new ArrayList<>();
            }
            this.mPendingTransitions.add(transition);
        }
    }

    void notifyRendererOfFramePending() {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.notifyFramePending();
        }
    }

    void scheduleTraversals() {
        if (!this.mTraversalScheduled) {
            Trace.traceBegin(8L, "scheduleTraversals");
            this.mTraversalScheduled = true;
            this.mTraversalBarrier = this.mHandler.getLooper().getQueue().postSyncBarrier();
            this.mChoreographer.postCallback(3, this.mTraversalRunnable, null);
            notifyRendererOfFramePending();
            pokeDrawLockIfNeeded();
            Trace.traceEnd(8L);
        }
    }

    void unscheduleTraversals() {
        if (this.mTraversalScheduled) {
            this.mTraversalScheduled = false;
            this.mHandler.getLooper().getQueue().removeSyncBarrier(this.mTraversalBarrier);
            this.mChoreographer.removeCallbacks(3, this.mTraversalRunnable, null);
        }
    }

    void doTraversal() throws Throwable {
        if (this.mTraversalScheduled) {
            this.mTraversalScheduled = false;
            this.mHandler.getLooper().getQueue().removeSyncBarrier(this.mTraversalBarrier);
            if (this.mProfile) {
                Debug.startMethodTracing("ViewAncestor");
            }
            performTraversals();
            if (this.mProfile) {
                Debug.stopMethodTracing();
                this.mProfile = false;
            }
        }
    }

    private void applyKeepScreenOnFlag(WindowManager.LayoutParams params) {
        if (this.mAttachInfo.mKeepScreenOn) {
            params.flags |= 128;
        } else {
            params.flags = (params.flags & (-129)) | (this.mClientWindowLayoutFlags & 128);
        }
    }

    private boolean collectViewAttributes() {
        if (this.mAttachInfo.mRecomputeGlobalAttributes) {
            this.mAttachInfo.mRecomputeGlobalAttributes = false;
            boolean oldScreenOn = this.mAttachInfo.mKeepScreenOn;
            this.mAttachInfo.mKeepScreenOn = false;
            this.mAttachInfo.mSystemUiVisibility = 0;
            this.mAttachInfo.mHasSystemUiListeners = false;
            this.mView.dispatchCollectViewAttributes(this.mAttachInfo, 0);
            View.AttachInfo attachInfo = this.mAttachInfo;
            attachInfo.mSystemUiVisibility = this.mViewRootImplExt.changeSystemUiVisibility(attachInfo.mSystemUiVisibility);
            this.mAttachInfo.mSystemUiVisibility &= ~this.mAttachInfo.mDisabledSystemUiVisibility;
            WindowManager.LayoutParams params = this.mWindowAttributes;
            this.mAttachInfo.mSystemUiVisibility |= getImpliedSystemUiVisibility(params);
            SystemUiVisibilityInfo systemUiVisibilityInfo = this.mCompatibleVisibilityInfo;
            systemUiVisibilityInfo.globalVisibility = (systemUiVisibilityInfo.globalVisibility & (-2)) | (this.mAttachInfo.mSystemUiVisibility & 1);
            dispatchDispatchSystemUiVisibilityChanged(this.mCompatibleVisibilityInfo);
            if (this.mAttachInfo.mKeepScreenOn != oldScreenOn || this.mAttachInfo.mSystemUiVisibility != params.subtreeSystemUiVisibility || this.mAttachInfo.mHasSystemUiListeners != params.hasSystemUiListeners) {
                applyKeepScreenOnFlag(params);
                params.subtreeSystemUiVisibility = this.mAttachInfo.mSystemUiVisibility;
                params.hasSystemUiListeners = this.mAttachInfo.mHasSystemUiListeners;
                this.mView.dispatchWindowSystemUiVisiblityChanged(this.mAttachInfo.mSystemUiVisibility);
                return true;
            }
        }
        return false;
    }

    private int getImpliedSystemUiVisibility(WindowManager.LayoutParams params) {
        int vis = 0;
        if ((params.flags & 67108864) != 0) {
            vis = 0 | 1280;
        }
        if ((params.flags & 134217728) != 0) {
            return vis | 768;
        }
        return vis;
    }

    void updateCompatSysUiVisibility(int type, boolean visible, boolean hasControl) {
        int systemUiFlag;
        int publicType = InsetsState.toPublicType(type);
        if (publicType != WindowInsets.Type.statusBars() && publicType != WindowInsets.Type.navigationBars()) {
            return;
        }
        SystemUiVisibilityInfo info = this.mCompatibleVisibilityInfo;
        if (publicType == WindowInsets.Type.statusBars()) {
            systemUiFlag = 4;
        } else {
            systemUiFlag = 2;
        }
        if (visible) {
            info.globalVisibility &= ~systemUiFlag;
            if (hasControl && (this.mAttachInfo.mSystemUiVisibility & systemUiFlag) != 0) {
                info.localChanges |= systemUiFlag;
            }
        } else {
            info.globalVisibility |= systemUiFlag;
            info.localChanges &= ~systemUiFlag;
        }
        dispatchDispatchSystemUiVisibilityChanged(info);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLowProfileModeIfNeeded(int showTypes, boolean fromIme) {
        SystemUiVisibilityInfo info = this.mCompatibleVisibilityInfo;
        if ((WindowInsets.Type.systemBars() & showTypes) != 0 && !fromIme && (info.globalVisibility & 1) != 0) {
            info.globalVisibility &= -2;
            info.localChanges |= 1;
            dispatchDispatchSystemUiVisibilityChanged(info);
        }
    }

    private void dispatchDispatchSystemUiVisibilityChanged(SystemUiVisibilityInfo args) {
        if (this.mDispatchedSystemUiVisibility != args.globalVisibility) {
            this.mHandler.removeMessages(17);
            ViewRootHandler viewRootHandler = this.mHandler;
            viewRootHandler.sendMessage(viewRootHandler.obtainMessage(17, args));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDispatchSystemUiVisibilityChanged(SystemUiVisibilityInfo args) {
        if (this.mView == null) {
            return;
        }
        if (args.localChanges != 0) {
            this.mView.updateLocalSystemUiVisibility(args.localValue, args.localChanges);
            args.localChanges = 0;
        }
        int visibility = args.globalVisibility & 7;
        if (this.mDispatchedSystemUiVisibility != visibility) {
            this.mDispatchedSystemUiVisibility = visibility;
            this.mView.dispatchSystemUiVisibilityChanged(visibility);
        }
    }

    public static void adjustLayoutParamsForCompatibility(WindowManager.LayoutParams inOutParams) {
        int sysUiVis = inOutParams.systemUiVisibility | inOutParams.subtreeSystemUiVisibility;
        int flags = inOutParams.flags;
        int type = inOutParams.type;
        int adjust = inOutParams.softInputMode & 240;
        if ((inOutParams.privateFlags & 67108864) == 0) {
            inOutParams.insetsFlags.appearance = 0;
            if ((sysUiVis & 1) != 0) {
                inOutParams.insetsFlags.appearance |= 4;
            }
            if ((sysUiVis & 8192) != 0) {
                inOutParams.insetsFlags.appearance |= 8;
            }
            if ((sysUiVis & 16) != 0) {
                inOutParams.insetsFlags.appearance |= 16;
            }
        }
        if ((inOutParams.privateFlags & 134217728) == 0) {
            if ((sysUiVis & 4096) != 0 || (flags & 1024) != 0) {
                inOutParams.insetsFlags.behavior = 2;
            } else {
                inOutParams.insetsFlags.behavior = 1;
            }
        }
        inOutParams.privateFlags &= -1073741825;
        if ((inOutParams.privateFlags & 268435456) != 0) {
            return;
        }
        int types = inOutParams.getFitInsetsTypes();
        boolean ignoreVis = inOutParams.isFitInsetsIgnoringVisibility();
        if ((sysUiVis & 1024) != 0 || (flags & 256) != 0 || (67108864 & flags) != 0) {
            types &= ~WindowInsets.Type.statusBars();
        }
        if ((sysUiVis & 512) != 0 || (flags & 134217728) != 0) {
            types &= ~WindowInsets.Type.systemBars();
        }
        if (type == 2005 || type == 2003) {
            ignoreVis = true;
        } else if ((WindowInsets.Type.systemBars() & types) == WindowInsets.Type.systemBars()) {
            if (adjust == 16) {
                types |= WindowInsets.Type.ime();
            } else {
                inOutParams.privateFlags |= 1073741824;
            }
        }
        inOutParams.setFitInsetsTypes(types);
        inOutParams.setFitInsetsIgnoringVisibility(ignoreVis);
        inOutParams.privateFlags &= -268435457;
    }

    private void controlInsetsForCompatibility(WindowManager.LayoutParams params) {
        int sysUiVis = params.systemUiVisibility | params.subtreeSystemUiVisibility;
        int flags = params.flags;
        boolean matchParent = params.width == -1 && params.height == -1;
        boolean nonAttachedAppWindow = params.type >= 1 && params.type <= 99;
        boolean statusWasHiddenByFlags = (this.mTypesHiddenByFlags & WindowInsets.Type.statusBars()) != 0;
        boolean statusIsHiddenByFlags = (sysUiVis & 4) != 0 || ((flags & 1024) != 0 && matchParent && nonAttachedAppWindow);
        boolean navWasHiddenByFlags = (this.mTypesHiddenByFlags & WindowInsets.Type.navigationBars()) != 0;
        boolean navIsHiddenByFlags = (sysUiVis & 2) != 0;
        int typesToHide = 0;
        int typesToShow = 0;
        if (statusIsHiddenByFlags && !statusWasHiddenByFlags) {
            typesToHide = 0 | WindowInsets.Type.statusBars();
        } else if (!statusIsHiddenByFlags && statusWasHiddenByFlags) {
            typesToShow = 0 | WindowInsets.Type.statusBars();
        }
        if (navIsHiddenByFlags && !navWasHiddenByFlags) {
            typesToHide |= WindowInsets.Type.navigationBars();
        } else if (!navIsHiddenByFlags && navWasHiddenByFlags) {
            typesToShow |= WindowInsets.Type.navigationBars();
        }
        if (typesToHide != 0) {
            getInsetsController().hide(typesToHide);
        }
        if (typesToShow != 0) {
            getInsetsController().show(typesToShow);
        }
        int i = this.mTypesHiddenByFlags | typesToHide;
        this.mTypesHiddenByFlags = i;
        this.mTypesHiddenByFlags = i & (~typesToShow);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x01cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean measureHierarchy(android.view.View r18, android.view.WindowManager.LayoutParams r19, android.content.res.Resources r20, int r21, int r22) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.measureHierarchy(android.view.View, android.view.WindowManager$LayoutParams, android.content.res.Resources, int, int):boolean");
    }

    public void resetIME() {
        this.mImeFocusController.onMovedToDisplay();
    }

    void transformMatrixToGlobal(Matrix m) {
        m.preTranslate(this.mAttachInfo.mWindowLeft, this.mAttachInfo.mWindowTop);
    }

    void transformMatrixToLocal(Matrix m) {
        m.postTranslate(-this.mAttachInfo.mWindowLeft, -this.mAttachInfo.mWindowTop);
    }

    WindowInsets getWindowInsets(boolean forceConstruct) {
        if (this.mLastWindowInsets == null || forceConstruct) {
            Configuration config = getConfiguration();
            WindowInsets windowInsetsCalculateInsets = this.mInsetsController.calculateInsets(config.isScreenRound(), this.mAttachInfo.mAlwaysConsumeSystemBars, this.mWindowAttributes.type, config.windowConfiguration.getWindowingMode(), this.mWindowAttributes.softInputMode, this.mWindowAttributes.flags, this.mWindowAttributes.systemUiVisibility | this.mWindowAttributes.subtreeSystemUiVisibility);
            this.mLastWindowInsets = windowInsetsCalculateInsets;
            this.mLastWindowInsets = this.mViewRootImplExt.adjustWindowInsetsForDispatchIfNeed(windowInsetsCalculateInsets);
            this.mAttachInfo.mContentInsets.set(this.mLastWindowInsets.getSystemWindowInsets().toRect());
            this.mAttachInfo.mStableInsets.set(this.mLastWindowInsets.getStableInsets().toRect());
            this.mAttachInfo.mVisibleInsets.set(this.mInsetsController.calculateVisibleInsets(this.mWindowAttributes.type, config.windowConfiguration.getWindowingMode(), this.mWindowAttributes.softInputMode, this.mWindowAttributes.flags).toRect());
        }
        return this.mLastWindowInsets;
    }

    public void dispatchApplyInsets(View host) {
        Trace.traceBegin(8L, "dispatchApplyInsets");
        this.mApplyInsetsRequested = false;
        WindowInsets insets = getWindowInsets(true);
        if (!shouldDispatchCutout()) {
            insets = insets.consumeDisplayCutout();
        }
        host.dispatchApplyWindowInsets(insets);
        this.mAttachInfo.delayNotifyContentCaptureInsetsEvent(insets.getInsets(WindowInsets.Type.all()));
        Trace.traceEnd(8L);
    }

    private boolean updateCaptionInsets() {
        if (CAPTION_ON_SHELL) {
            return false;
        }
        View view = this.mView;
        if (!(view instanceof DecorView)) {
            return false;
        }
        int captionInsetsHeight = ((DecorView) view).getCaptionInsetsHeight();
        Rect captionFrame = new Rect();
        if (captionInsetsHeight != 0) {
            captionFrame.set(this.mWinFrame.left, this.mWinFrame.top, this.mWinFrame.right, this.mWinFrame.top + captionInsetsHeight);
        }
        if (this.mAttachInfo.mCaptionInsets.equals(captionFrame)) {
            return false;
        }
        this.mAttachInfo.mCaptionInsets.set(captionFrame);
        return true;
    }

    private boolean shouldDispatchCutout() {
        return this.mWindowAttributes.layoutInDisplayCutoutMode == 3 || this.mWindowAttributes.layoutInDisplayCutoutMode == 1;
    }

    public InsetsController getInsetsController() {
        return this.mInsetsController;
    }

    private static boolean shouldUseDisplaySize(WindowManager.LayoutParams lp) {
        return lp.type == 2041 || lp.type == 2011 || lp.type == 2020;
    }

    private Rect getWindowBoundsInsetSystemBars() {
        Rect bounds = new Rect(this.mContext.getResources().getConfiguration().windowConfiguration.getBounds());
        bounds.inset(this.mInsetsController.getState().calculateInsets(bounds, WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout(), false));
        this.mViewRootImplExt.intersectOverrideWindowBoundsIfNeed(this.mLastReportedMergedConfiguration, bounds);
        return bounds;
    }

    int dipToPx(int dip) {
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        return (int) ((displayMetrics.density * dip) + 0.5f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x035f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x038c A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x04de A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x04e6 A[Catch: all -> 0x08ca, RemoteException -> 0x08e0, TRY_LEAVE, TryCatch #31 {RemoteException -> 0x08e0, all -> 0x08ca, blocks: (B:238:0x04da, B:243:0x04e6), top: B:766:0x04da }] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x054c  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x054e  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0558 A[Catch: all -> 0x051d, RemoteException -> 0x052e, TRY_ENTER, TryCatch #21 {RemoteException -> 0x052e, all -> 0x051d, blocks: (B:250:0x0509, B:252:0x050f, B:253:0x0516, B:266:0x0558, B:268:0x055f, B:270:0x0563), top: B:784:0x0509 }] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x05e7  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x05f3 A[Catch: all -> 0x0597, RemoteException -> 0x05a6, TRY_ENTER, TryCatch #25 {RemoteException -> 0x05a6, all -> 0x0597, blocks: (B:275:0x0573, B:288:0x05f3, B:290:0x05f7, B:291:0x0615, B:295:0x0623, B:302:0x063a, B:309:0x065d, B:315:0x066c, B:329:0x0692, B:331:0x069a, B:337:0x06ad, B:339:0x06b5, B:345:0x06c8, B:347:0x06d5, B:349:0x06e2, B:351:0x06e8, B:353:0x06ee, B:398:0x077f, B:356:0x06f8, B:362:0x0709, B:364:0x070d, B:365:0x0710, B:367:0x071b, B:368:0x0721, B:370:0x0725, B:371:0x0728, B:373:0x072e, B:380:0x0740, B:382:0x0746, B:384:0x074e, B:385:0x0751, B:388:0x075c), top: B:777:0x0573 }] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x062b  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0638  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x064f  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0667  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0676  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0692 A[Catch: all -> 0x0597, RemoteException -> 0x05a6, TRY_ENTER, TryCatch #25 {RemoteException -> 0x05a6, all -> 0x0597, blocks: (B:275:0x0573, B:288:0x05f3, B:290:0x05f7, B:291:0x0615, B:295:0x0623, B:302:0x063a, B:309:0x065d, B:315:0x066c, B:329:0x0692, B:331:0x069a, B:337:0x06ad, B:339:0x06b5, B:345:0x06c8, B:347:0x06d5, B:349:0x06e2, B:351:0x06e8, B:353:0x06ee, B:398:0x077f, B:356:0x06f8, B:362:0x0709, B:364:0x070d, B:365:0x0710, B:367:0x071b, B:368:0x0721, B:370:0x0725, B:371:0x0728, B:373:0x072e, B:380:0x0740, B:382:0x0746, B:384:0x074e, B:385:0x0751, B:388:0x075c), top: B:777:0x0573 }] */
    /* JADX WARN: Removed duplicated region for block: B:331:0x069a A[Catch: all -> 0x0597, RemoteException -> 0x05a6, TRY_LEAVE, TryCatch #25 {RemoteException -> 0x05a6, all -> 0x0597, blocks: (B:275:0x0573, B:288:0x05f3, B:290:0x05f7, B:291:0x0615, B:295:0x0623, B:302:0x063a, B:309:0x065d, B:315:0x066c, B:329:0x0692, B:331:0x069a, B:337:0x06ad, B:339:0x06b5, B:345:0x06c8, B:347:0x06d5, B:349:0x06e2, B:351:0x06e8, B:353:0x06ee, B:398:0x077f, B:356:0x06f8, B:362:0x0709, B:364:0x070d, B:365:0x0710, B:367:0x071b, B:368:0x0721, B:370:0x0725, B:371:0x0728, B:373:0x072e, B:380:0x0740, B:382:0x0746, B:384:0x074e, B:385:0x0751, B:388:0x075c), top: B:777:0x0573 }] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x06a8  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x06ad A[Catch: all -> 0x0597, RemoteException -> 0x05a6, TRY_ENTER, TryCatch #25 {RemoteException -> 0x05a6, all -> 0x0597, blocks: (B:275:0x0573, B:288:0x05f3, B:290:0x05f7, B:291:0x0615, B:295:0x0623, B:302:0x063a, B:309:0x065d, B:315:0x066c, B:329:0x0692, B:331:0x069a, B:337:0x06ad, B:339:0x06b5, B:345:0x06c8, B:347:0x06d5, B:349:0x06e2, B:351:0x06e8, B:353:0x06ee, B:398:0x077f, B:356:0x06f8, B:362:0x0709, B:364:0x070d, B:365:0x0710, B:367:0x071b, B:368:0x0721, B:370:0x0725, B:371:0x0728, B:373:0x072e, B:380:0x0740, B:382:0x0746, B:384:0x074e, B:385:0x0751, B:388:0x075c), top: B:777:0x0573 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x06b9 A[Catch: all -> 0x084e, RemoteException -> 0x085e, TRY_ENTER, TRY_LEAVE, TryCatch #26 {RemoteException -> 0x085e, all -> 0x084e, blocks: (B:286:0x05e9, B:299:0x062e, B:303:0x0647, B:307:0x0652, B:320:0x0679, B:333:0x06a2, B:378:0x073c, B:341:0x06b9, B:323:0x0683), top: B:775:0x05e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x06c7  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0707  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x076f  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x07db  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x07f0  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x080c  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x091b  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0942  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x094b  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x0983  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x098b  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x099b  */
    /* JADX WARN: Removed duplicated region for block: B:523:0x0aa3  */
    /* JADX WARN: Removed duplicated region for block: B:526:0x0b05  */
    /* JADX WARN: Removed duplicated region for block: B:529:0x0b1b  */
    /* JADX WARN: Removed duplicated region for block: B:531:0x0b2d  */
    /* JADX WARN: Removed duplicated region for block: B:536:0x0b5c  */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0b65 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:543:0x0b6b  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x0b70  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0b7a  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0b7e  */
    /* JADX WARN: Removed duplicated region for block: B:557:0x0b87  */
    /* JADX WARN: Removed duplicated region for block: B:560:0x0b8b  */
    /* JADX WARN: Removed duplicated region for block: B:576:0x0c4a  */
    /* JADX WARN: Removed duplicated region for block: B:578:0x0c50  */
    /* JADX WARN: Removed duplicated region for block: B:579:0x0c54  */
    /* JADX WARN: Removed duplicated region for block: B:584:0x0c61  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x0c74  */
    /* JADX WARN: Removed duplicated region for block: B:597:0x0cc7  */
    /* JADX WARN: Removed duplicated region for block: B:600:0x0cd7  */
    /* JADX WARN: Removed duplicated region for block: B:603:0x0cdd  */
    /* JADX WARN: Removed duplicated region for block: B:606:0x0ce1  */
    /* JADX WARN: Removed duplicated region for block: B:631:0x0d42  */
    /* JADX WARN: Removed duplicated region for block: B:643:0x0d5f  */
    /* JADX WARN: Removed duplicated region for block: B:669:0x0e0a  */
    /* JADX WARN: Removed duplicated region for block: B:671:0x0e0e  */
    /* JADX WARN: Removed duplicated region for block: B:675:0x0e16  */
    /* JADX WARN: Removed duplicated region for block: B:677:0x0e1a  */
    /* JADX WARN: Removed duplicated region for block: B:681:0x0e23 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:683:0x0e27  */
    /* JADX WARN: Removed duplicated region for block: B:685:0x0e2a  */
    /* JADX WARN: Removed duplicated region for block: B:688:0x0e32 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:691:0x0e37  */
    /* JADX WARN: Removed duplicated region for block: B:692:0x0e3e  */
    /* JADX WARN: Removed duplicated region for block: B:699:0x0e4d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:702:0x0e53  */
    /* JADX WARN: Removed duplicated region for block: B:704:0x0e5d  */
    /* JADX WARN: Removed duplicated region for block: B:705:0x0e60  */
    /* JADX WARN: Removed duplicated region for block: B:708:0x0e66  */
    /* JADX WARN: Removed duplicated region for block: B:711:0x0e83  */
    /* JADX WARN: Removed duplicated region for block: B:714:0x0e90  */
    /* JADX WARN: Removed duplicated region for block: B:716:0x0e95  */
    /* JADX WARN: Removed duplicated region for block: B:729:0x0ecb  */
    /* JADX WARN: Removed duplicated region for block: B:748:0x0f0d  */
    /* JADX WARN: Removed duplicated region for block: B:751:0x0f1e  */
    /* JADX WARN: Removed duplicated region for block: B:784:0x0509 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:786:0x056a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:788:0x03f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:799:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v23 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void performTraversals() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 3895
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.performTraversals():void");
    }

    private void createSyncIfNeeded() {
        if (isInLocalSync() || !this.mReportNextDraw) {
            return;
        }
        final int seqId = this.mSyncSeqId;
        this.mSyncId = this.mSurfaceSyncer.setupSync(new Consumer() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m5299lambda$createSyncIfNeeded$4$androidviewViewRootImpl(seqId, (SurfaceControl.Transaction) obj);
            }
        });
        if (DEBUG_BLAST) {
            Log.d(this.mTag, "Setup new sync id=" + this.mSyncId);
        }
        this.mSurfaceSyncer.addToSync(this.mSyncId, this.mSyncTarget);
        notifySurfaceSyncStarted();
    }

    /* renamed from: lambda$createSyncIfNeeded$4$android-view-ViewRootImpl, reason: not valid java name */
    /* synthetic */ void m5299lambda$createSyncIfNeeded$4$androidviewViewRootImpl(final int seqId, final SurfaceControl.Transaction transaction) {
        Log.d(this.mTag, "draw finished.");
        this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m5298lambda$createSyncIfNeeded$3$androidviewViewRootImpl(transaction, seqId);
            }
        });
    }

    /* renamed from: lambda$createSyncIfNeeded$3$android-view-ViewRootImpl, reason: not valid java name */
    /* synthetic */ void m5298lambda$createSyncIfNeeded$3$androidviewViewRootImpl(SurfaceControl.Transaction transaction, int seqId) {
        this.mSurfaceChangedTransaction.merge(transaction);
        reportDrawFinished(seqId);
    }

    private void notifyContentCatpureEvents() {
        Trace.traceBegin(8L, "notifyContentCaptureEvents");
        try {
            MainContentCaptureSession mainSession = this.mAttachInfo.mContentCaptureManager.getMainContentCaptureSession();
            for (int i = 0; i < this.mAttachInfo.mContentCaptureEvents.size(); i++) {
                int sessionId = this.mAttachInfo.mContentCaptureEvents.keyAt(i);
                mainSession.notifyViewTreeEvent(sessionId, true);
                ArrayList<Object> events = this.mAttachInfo.mContentCaptureEvents.valueAt(i);
                for (int j = 0; j < events.size(); j++) {
                    Object event = events.get(j);
                    if (event instanceof AutofillId) {
                        mainSession.notifyViewDisappeared(sessionId, (AutofillId) event);
                    } else if (event instanceof View) {
                        View view = (View) event;
                        ContentCaptureSession session = view.getContentCaptureSession();
                        if (session == null) {
                            Log.w(this.mTag, "no content capture session on view: " + view);
                        } else {
                            int actualId = session.getId();
                            if (actualId != sessionId) {
                                Log.w(this.mTag, "content capture session mismatch for view (" + view + "): was " + sessionId + " before, it's " + actualId + " now");
                            } else {
                                ViewStructure structure = session.newViewStructure(view);
                                view.onProvideContentCaptureStructure(structure, 0);
                                session.notifyViewAppeared(structure);
                            }
                        }
                    } else if (event instanceof Insets) {
                        mainSession.notifyViewInsetsChanged(sessionId, (Insets) event);
                    } else {
                        Log.w(this.mTag, "invalid content capture event: " + event);
                    }
                }
                mainSession.notifyViewTreeEvent(sessionId, false);
            }
            this.mAttachInfo.mContentCaptureEvents = null;
        } finally {
            Trace.traceEnd(8L);
        }
    }

    private void notifyHolderSurfaceDestroyed() {
        this.mSurfaceHolder.ungetCallbacks();
        SurfaceHolder.Callback[] callbacks = this.mSurfaceHolder.getCallbacks();
        if (callbacks != null) {
            for (SurfaceHolder.Callback c : callbacks) {
                c.surfaceDestroyed(this.mSurfaceHolder);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandleWindowMove(Rect frame) {
        boolean windowMoved = (this.mAttachInfo.mWindowLeft == frame.left && this.mAttachInfo.mWindowTop == frame.top) ? false : true;
        if (windowMoved) {
            this.mAttachInfo.mWindowLeft = frame.left;
            this.mAttachInfo.mWindowTop = frame.top;
        }
        if (windowMoved || this.mAttachInfo.mNeedsUpdateLightCenter) {
            if (this.mAttachInfo.mThreadedRenderer != null) {
                this.mAttachInfo.mThreadedRenderer.setLightCenter(this.mAttachInfo);
            }
            this.mAttachInfo.mNeedsUpdateLightCenter = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWindowFocusChanged() {
        boolean z;
        synchronized (this) {
            if (this.mWindowFocusChanged) {
                this.mWindowFocusChanged = false;
                boolean hasWindowFocus = this.mUpcomingWindowFocus;
                this.mViewRootImplExt.handleWindowFocusChanged(this.mContext, hasWindowFocus);
                if (hasWindowFocus) {
                    InsetsController insetsController = this.mInsetsController;
                    if (getFocusedViewOrNull() == null) {
                        z = false;
                    } else {
                        z = true;
                    }
                    insetsController.onWindowFocusGained(z);
                } else {
                    this.mInsetsController.onWindowFocusLost();
                }
                if (this.mAdded) {
                    profileRendering(hasWindowFocus);
                    if (hasWindowFocus && this.mAttachInfo.mThreadedRenderer != null && this.mSurface.isValid()) {
                        this.mFullRedrawNeeded = true;
                        try {
                            Rect surfaceInsets = this.mWindowAttributes.surfaceInsets;
                            this.mAttachInfo.mThreadedRenderer.initializeIfNeeded(this.mWidth, this.mHeight, this.mAttachInfo, this.mSurface, surfaceInsets);
                        } catch (Surface.OutOfResourcesException e) {
                            Log.e(this.mTag, "OutOfResourcesException locking surface", e);
                            try {
                                if (!this.mWindowSession.outOfMemory(this.mWindow)) {
                                    Slog.w(this.mTag, "No processes killed for memory; killing self");
                                    Process.killProcess(Process.myPid());
                                }
                            } catch (RemoteException e2) {
                            }
                            ViewRootHandler viewRootHandler = this.mHandler;
                            viewRootHandler.sendMessageDelayed(viewRootHandler.obtainMessage(6), 500L);
                            return;
                        }
                    }
                    this.mAttachInfo.mHasWindowFocus = hasWindowFocus;
                    this.mImeFocusController.updateImeFocusable(this.mWindowAttributes, true);
                    this.mImeFocusController.onPreWindowFocus(hasWindowFocus, this.mWindowAttributes);
                    if (this.mView != null) {
                        this.mAttachInfo.mKeyDispatchState.reset();
                        this.mView.dispatchWindowFocusChanged(hasWindowFocus);
                        this.mAttachInfo.mTreeObserver.dispatchOnWindowFocusChange(hasWindowFocus);
                        if (this.mAttachInfo.mTooltipHost != null) {
                            this.mAttachInfo.mTooltipHost.hideTooltip();
                        }
                    }
                    this.mImeFocusController.onPostWindowFocus(getFocusedViewOrNull(), hasWindowFocus, this.mWindowAttributes);
                    if (hasWindowFocus) {
                        this.mWindowAttributes.softInputMode &= -257;
                        ((WindowManager.LayoutParams) this.mView.getLayoutParams()).softInputMode &= -257;
                        fireAccessibilityFocusEventIfHasFocusedNode();
                    } else if (this.mPointerCapture) {
                        handlePointerCaptureChanged(false);
                    }
                }
                this.mFirstInputStage.onWindowFocusChanged(hasWindowFocus);
                if (hasWindowFocus) {
                    handleContentCaptureFlush();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWindowTouchModeChanged() {
        boolean inTouchMode;
        synchronized (this) {
            inTouchMode = this.mUpcomingInTouchMode;
        }
        ensureTouchModeLocally(inTouchMode);
    }

    private void fireAccessibilityFocusEventIfHasFocusedNode() {
        View focusedView;
        if (!AccessibilityManager.getInstance(this.mContext).isEnabled() || (focusedView = this.mView.findFocus()) == null) {
            return;
        }
        AccessibilityNodeProvider provider = focusedView.getAccessibilityNodeProvider();
        if (provider == null) {
            focusedView.sendAccessibilityEvent(8);
            return;
        }
        AccessibilityNodeInfo focusedNode = findFocusedVirtualNode(provider);
        if (focusedNode != null) {
            int virtualId = AccessibilityNodeInfo.getVirtualDescendantId(focusedNode.getSourceNodeId());
            AccessibilityEvent event = AccessibilityEvent.obtain(8);
            event.setSource(focusedView, virtualId);
            event.setPackageName(focusedNode.getPackageName());
            event.setChecked(focusedNode.isChecked());
            event.setContentDescription(focusedNode.getContentDescription());
            event.setPassword(focusedNode.isPassword());
            event.getText().add(focusedNode.getText());
            event.setEnabled(focusedNode.isEnabled());
            focusedView.getParent().requestSendAccessibilityEvent(focusedView, event);
            focusedNode.recycle();
        }
    }

    private AccessibilityNodeInfo findFocusedVirtualNode(AccessibilityNodeProvider provider) {
        AccessibilityNodeInfo focusedNode = provider.findFocus(1);
        if (focusedNode != null) {
            return focusedNode;
        }
        if (!this.mContext.isAutofillCompatibilityEnabled()) {
            return null;
        }
        AccessibilityNodeInfo current = provider.createAccessibilityNodeInfo(-1);
        if (current.isFocused()) {
            return current;
        }
        Queue<AccessibilityNodeInfo> fringe = new ArrayDeque<>();
        fringe.offer(current);
        while (!fringe.isEmpty()) {
            AccessibilityNodeInfo current2 = fringe.poll();
            LongArray childNodeIds = current2.getChildNodeIds();
            if (childNodeIds != null && childNodeIds.size() > 0) {
                int childCount = childNodeIds.size();
                for (int i = 0; i < childCount; i++) {
                    int virtualId = AccessibilityNodeInfo.getVirtualDescendantId(childNodeIds.get(i));
                    AccessibilityNodeInfo child = provider.createAccessibilityNodeInfo(virtualId);
                    if (child != null) {
                        if (child.isFocused()) {
                            return child;
                        }
                        fringe.offer(child);
                    }
                }
                current2.recycle();
            }
        }
        return null;
    }

    private void handleOutOfResourcesException(Surface.OutOfResourcesException e) {
        Log.e(this.mTag, "OutOfResourcesException initializing HW surface", e);
        try {
            if (!this.mWindowSession.outOfMemory(this.mWindow) && Process.myUid() != 1000) {
                Slog.w(this.mTag, "No processes killed for memory; killing self");
                Process.killProcess(Process.myPid());
            }
        } catch (RemoteException e2) {
        }
        this.mLayoutRequested = true;
    }

    private void performMeasure(int childWidthMeasureSpec, int childHeightMeasureSpec) {
        if (this.mView == null) {
            return;
        }
        Trace.traceBegin(8L, "measure");
        long measureStartTime = System.nanoTime();
        try {
            this.mView.measure(childWidthMeasureSpec, childHeightMeasureSpec);
            this.mChoreographer.mChoreographerExt.populateMeasureCost(System.nanoTime() - measureStartTime);
            OplusJankMonitorExtPlugin.setLaunchStageTime.call(this.mBasePackageName, "performMeasure", Long.valueOf(measureStartTime));
            Trace.traceEnd(8L);
        } catch (Throwable th) {
            this.mChoreographer.mChoreographerExt.populateMeasureCost(System.nanoTime() - measureStartTime);
            OplusJankMonitorExtPlugin.setLaunchStageTime.call(this.mBasePackageName, "performMeasure", Long.valueOf(measureStartTime));
            Trace.traceEnd(8L);
            throw th;
        }
    }

    boolean isInLayout() {
        return this.mInLayout;
    }

    boolean requestLayoutDuringLayout(View view) {
        if (view.mParent == null || view.mAttachInfo == null) {
            return true;
        }
        if (!this.mLayoutRequesters.contains(view)) {
            this.mLayoutRequesters.add(view);
        }
        return !this.mHandlingLayoutInLayoutRequest;
    }

    private void performLayout(WindowManager.LayoutParams lp, int desiredWindowWidth, int desiredWindowHeight) {
        ArrayList<View> validLayoutRequesters;
        this.mScrollMayChange = true;
        this.mInLayout = true;
        View host = this.mView;
        if (host == null) {
            return;
        }
        if (DEBUG_ORIENTATION || DEBUG_LAYOUT) {
            Log.v(this.mTag, "Laying out " + host + " to (" + host.getMeasuredWidth() + ", " + host.getMeasuredHeight() + NavigationBarInflaterView.KEY_CODE_END);
        }
        Trace.traceBegin(8L, TtmlUtils.TAG_LAYOUT);
        long layoutStartTime = System.nanoTime();
        try {
            host.layout(0, 0, host.getMeasuredWidth(), host.getMeasuredHeight());
            this.mInLayout = false;
            int numViewsRequestingLayout = this.mLayoutRequesters.size();
            if (numViewsRequestingLayout > 0 && (validLayoutRequesters = getValidLayoutRequesters(this.mLayoutRequesters, false)) != null) {
                this.mHandlingLayoutInLayoutRequest = true;
                int numValidRequests = validLayoutRequesters.size();
                for (int i = 0; i < numValidRequests; i++) {
                    View view = validLayoutRequesters.get(i);
                    Log.w("View", "requestLayout() improperly called by " + view + " during layout: running second layout pass");
                    view.requestLayout();
                }
                measureHierarchy(host, lp, this.mView.getContext().getResources(), desiredWindowWidth, desiredWindowHeight);
                this.mInLayout = true;
                host.layout(0, 0, host.getMeasuredWidth(), host.getMeasuredHeight());
                this.mHandlingLayoutInLayoutRequest = false;
                final ArrayList<View> validLayoutRequesters2 = getValidLayoutRequesters(this.mLayoutRequesters, true);
                if (validLayoutRequesters2 != null) {
                    getRunQueue().post(new Runnable() { // from class: android.view.ViewRootImpl.4
                        @Override // java.lang.Runnable
                        public void run() {
                            int numValidRequests2 = validLayoutRequesters2.size();
                            for (int i2 = 0; i2 < numValidRequests2; i2++) {
                                View view2 = (View) validLayoutRequesters2.get(i2);
                                Log.w("View", "requestLayout() improperly called by " + view2 + " during second layout pass: posting in next frame");
                                view2.requestLayout();
                            }
                        }
                    });
                }
            }
            this.mChoreographer.mChoreographerExt.populateLayoutCost(System.nanoTime() - layoutStartTime);
            Trace.traceEnd(8L);
            this.mViewRootImplExt.postShowGuidePopupRunnable(this.mView);
            this.mInLayout = false;
        } catch (Throwable th) {
            this.mChoreographer.mChoreographerExt.populateLayoutCost(System.nanoTime() - layoutStartTime);
            Trace.traceEnd(8L);
            throw th;
        }
    }

    private ArrayList<View> getValidLayoutRequesters(ArrayList<View> layoutRequesters, boolean secondLayoutRequests) {
        int numViewsRequestingLayout = layoutRequesters.size();
        ArrayList<View> validLayoutRequesters = null;
        for (int i = 0; i < numViewsRequestingLayout; i++) {
            View view = layoutRequesters.get(i);
            if (view != null && view.mAttachInfo != null && view.mParent != null && (secondLayoutRequests || (view.mPrivateFlags & 4096) == 4096)) {
                boolean gone = false;
                View parent = view;
                while (true) {
                    if (parent == null) {
                        break;
                    }
                    if ((parent.mViewFlags & 12) == 8) {
                        gone = true;
                        break;
                    }
                    if (parent.mParent instanceof View) {
                        parent = (View) parent.mParent;
                    } else {
                        parent = null;
                    }
                }
                if (!gone) {
                    if (validLayoutRequesters == null) {
                        validLayoutRequesters = new ArrayList<>();
                    }
                    validLayoutRequesters.add(view);
                }
            }
        }
        if (!secondLayoutRequests) {
            for (int i2 = 0; i2 < numViewsRequestingLayout; i2++) {
                View view2 = layoutRequesters.get(i2);
                while (view2 != null && (view2.mPrivateFlags & 4096) != 0) {
                    view2.mPrivateFlags &= -4097;
                    if (view2.mParent instanceof View) {
                        view2 = (View) view2.mParent;
                    } else {
                        view2 = null;
                    }
                }
            }
        }
        layoutRequesters.clear();
        return validLayoutRequesters;
    }

    @Override // android.view.ViewParent
    public void requestTransparentRegion(View child) {
        checkThread();
        View view = this.mView;
        if (view != child) {
            return;
        }
        if ((view.mPrivateFlags & 512) == 0) {
            this.mView.mPrivateFlags |= 512;
            this.mWindowAttributesChanged = true;
        }
        requestLayout();
    }

    private static int getRootMeasureSpec(int windowSize, int measurement, int privateFlags) {
        int rootDimension = (privateFlags & 8192) != 0 ? -1 : measurement;
        switch (rootDimension) {
            case -2:
                int measureSpec = View.MeasureSpec.makeMeasureSpec(windowSize, Integer.MIN_VALUE);
                return measureSpec;
            case -1:
                int measureSpec2 = View.MeasureSpec.makeMeasureSpec(windowSize, 1073741824);
                return measureSpec2;
            default:
                int measureSpec3 = View.MeasureSpec.makeMeasureSpec(rootDimension, 1073741824);
                return measureSpec3;
        }
    }

    @Override // android.view.ThreadedRenderer.DrawCallbacks
    public void onPreDraw(RecordingCanvas canvas) {
        if (this.mCurScrollY != 0 && this.mHardwareYOffset != 0 && this.mAttachInfo.mThreadedRenderer.isOpaque()) {
            canvas.drawColor(-16777216);
        }
        canvas.translate(-this.mHardwareXOffset, -this.mHardwareYOffset);
    }

    @Override // android.view.ThreadedRenderer.DrawCallbacks
    public void onPostDraw(RecordingCanvas canvas) {
        drawAccessibilityFocusedDrawableIfNeeded(canvas);
        if (this.mUseMTRenderer) {
            for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
                this.mWindowCallbacks.get(i).onPostDraw(canvas);
            }
        }
    }

    void outputDisplayList(View view) {
        view.mRenderNode.output();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void profileRendering(boolean enabled) {
        if (this.mProfileRendering) {
            this.mRenderProfilingEnabled = enabled;
            Choreographer.FrameCallback frameCallback = this.mRenderProfiler;
            if (frameCallback != null) {
                this.mChoreographer.removeFrameCallback(frameCallback);
            }
            if (this.mRenderProfilingEnabled) {
                if (this.mRenderProfiler == null) {
                    this.mRenderProfiler = new Choreographer.FrameCallback() { // from class: android.view.ViewRootImpl.5
                        @Override // android.view.Choreographer.FrameCallback
                        public void doFrame(long frameTimeNanos) {
                            ViewRootImpl.this.mDirty.set(0, 0, ViewRootImpl.this.mWidth, ViewRootImpl.this.mHeight);
                            ViewRootImpl.this.scheduleTraversals();
                            if (ViewRootImpl.this.mRenderProfilingEnabled) {
                                ViewRootImpl.this.mChoreographer.postFrameCallback(ViewRootImpl.this.mRenderProfiler);
                            }
                        }
                    };
                }
                this.mChoreographer.postFrameCallback(this.mRenderProfiler);
                return;
            }
            this.mRenderProfiler = null;
        }
    }

    private void trackFPS() {
        long nowTime = System.currentTimeMillis();
        if (this.mFpsStartTime < 0) {
            this.mFpsPrevTime = nowTime;
            this.mFpsStartTime = nowTime;
            this.mFpsNumFrames = 0;
            return;
        }
        this.mFpsNumFrames++;
        String thisHash = Integer.toHexString(System.identityHashCode(this));
        long frameTime = nowTime - this.mFpsPrevTime;
        long totalTime = nowTime - this.mFpsStartTime;
        Log.v(this.mTag, "0x" + thisHash + "\tFrame time:\t" + frameTime);
        this.mFpsPrevTime = nowTime;
        if (totalTime > 1000) {
            float fps = (this.mFpsNumFrames * 1000.0f) / totalTime;
            Log.v(this.mTag, "0x" + thisHash + "\tFPS:\t" + fps);
            this.mFpsStartTime = nowTime;
            this.mFpsNumFrames = 0;
        }
    }

    private void reportDrawFinished(int seqId) {
        if (DEBUG_BLAST) {
            Log.d(this.mTag, "reportDrawFinished " + Debug.getCallers(5));
        }
        try {
            try {
                this.mWindowSession.finishDrawing(this.mWindow, this.mSurfaceChangedTransaction, seqId);
                this.mViewRootImplSocExt.hookFinishDrawingPerfHint();
            } catch (RemoteException e) {
                Log.e(this.mTag, "Unable to report draw finished", e);
                this.mSurfaceChangedTransaction.apply();
            }
        } finally {
            this.mSurfaceChangedTransaction.clear();
        }
    }

    public boolean isHardwareEnabled() {
        return this.mAttachInfo.mThreadedRenderer != null && this.mAttachInfo.mThreadedRenderer.isEnabled();
    }

    void addToSync(SurfaceSyncer.SyncTarget syncable) {
        if (!isInLocalSync()) {
            return;
        }
        this.mSurfaceSyncer.addToSync(this.mSyncId, syncable);
    }

    public boolean isInLocalSync() {
        return this.mSyncId != -1;
    }

    private void addFrameCommitCallbackIfNeeded() {
        if (!isHardwareEnabled()) {
            return;
        }
        final ArrayList<Runnable> commitCallbacks = this.mAttachInfo.mTreeObserver.captureFrameCommitCallbacks();
        boolean needFrameCommitCallback = commitCallbacks != null && commitCallbacks.size() > 0;
        if (!needFrameCommitCallback) {
            return;
        }
        if (DEBUG_DRAW) {
            Log.d(this.mTag, "Creating frameCommitCallback commitCallbacks size=" + commitCallbacks.size());
        }
        this.mAttachInfo.mThreadedRenderer.setFrameCommitCallback(new HardwareRenderer.FrameCommitCallback() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda7
            @Override // android.graphics.HardwareRenderer.FrameCommitCallback
            public final void onFrameCommit(boolean z) {
                this.f$0.m5296xcb6bff16(commitCallbacks, z);
            }
        });
    }

    /* renamed from: lambda$addFrameCommitCallbackIfNeeded$6$android-view-ViewRootImpl, reason: not valid java name */
    /* synthetic */ void m5296xcb6bff16(final ArrayList commitCallbacks, boolean didProduceBuffer) {
        if (DEBUG_DRAW) {
            Log.d(this.mTag, "Received frameCommitCallback didProduceBuffer=" + didProduceBuffer);
        }
        this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ViewRootImpl.lambda$addFrameCommitCallbackIfNeeded$5(commitCallbacks);
            }
        });
    }

    static /* synthetic */ void lambda$addFrameCommitCallbackIfNeeded$5(ArrayList commitCallbacks) {
        for (int i = 0; i < commitCallbacks.size(); i++) {
            ((Runnable) commitCallbacks.get(i)).run();
        }
    }

    /* renamed from: android.view.ViewRootImpl$6, reason: invalid class name */
    class AnonymousClass6 implements HardwareRenderer.FrameDrawingCallback {
        AnonymousClass6() {
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public HardwareRenderer.FrameCommitCallback onFrameDraw(int syncResult, final long frame) {
            if ((syncResult & 6) != 0) {
                ViewRootImpl.this.mBlastBufferQueue.applyPendingTransactions(frame);
                return null;
            }
            return new HardwareRenderer.FrameCommitCallback() { // from class: android.view.ViewRootImpl$6$$ExternalSyntheticLambda0
                @Override // android.graphics.HardwareRenderer.FrameCommitCallback
                public final void onFrameCommit(boolean z) {
                    this.f$0.m5303lambda$onFrameDraw$0$androidviewViewRootImpl$6(frame, z);
                }
            };
        }

        /* renamed from: lambda$onFrameDraw$0$android-view-ViewRootImpl$6, reason: not valid java name */
        /* synthetic */ void m5303lambda$onFrameDraw$0$androidviewViewRootImpl$6(long frame, boolean didProduceBuffer) {
            if (!didProduceBuffer) {
                ViewRootImpl.this.mBlastBufferQueue.applyPendingTransactions(frame);
            }
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public void onFrameDraw(long frame) {
        }
    }

    private void registerCallbackForPendingTransactions() {
        registerRtFrameCallback(new AnonymousClass6());
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean performDraw() throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.performDraw():boolean");
    }

    /* renamed from: lambda$performDraw$8$android-view-ViewRootImpl, reason: not valid java name */
    /* synthetic */ void m5301lambda$performDraw$8$androidviewViewRootImpl(final SurfaceSyncer.SyncBufferCallback syncBufferCallback) {
        this.mHandler.post(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                syncBufferCallback.onBufferReady(null);
            }
        });
    }

    private boolean isContentCaptureEnabled() {
        switch (this.mContentCaptureEnabled) {
            case 0:
                boolean reallyEnabled = isContentCaptureReallyEnabled();
                this.mContentCaptureEnabled = reallyEnabled ? 1 : 2;
                break;
            case 1:
                break;
            case 2:
                break;
            default:
                Log.w(TAG, "isContentCaptureEnabled(): invalid state " + this.mContentCaptureEnabled);
                break;
        }
        return false;
    }

    private boolean isContentCaptureReallyEnabled() {
        ContentCaptureManager ccm;
        return (this.mContext.getContentCaptureOptions() == null || (ccm = this.mAttachInfo.getContentCaptureManager(this.mContext)) == null || !ccm.isContentCaptureEnabled()) ? false : true;
    }

    private void performContentCaptureInitialReport() {
        this.mPerformContentCapture = false;
        View rootView = this.mView;
        if (DEBUG_CONTENT_CAPTURE) {
            Log.v(this.mTag, "performContentCaptureInitialReport() on " + rootView);
        }
        if (Trace.isTagEnabled(8L)) {
            Trace.traceBegin(8L, "dispatchContentCapture() for " + getClass().getSimpleName());
        }
        try {
            if (!isContentCaptureEnabled()) {
                return;
            }
            if (this.mAttachInfo.mContentCaptureManager != null) {
                MainContentCaptureSession session = this.mAttachInfo.mContentCaptureManager.getMainContentCaptureSession();
                session.notifyWindowBoundsChanged(session.getId(), getConfiguration().windowConfiguration.getBounds());
            }
            rootView.dispatchInitialProvideContentCaptureStructure();
        } finally {
            Trace.traceEnd(8L);
        }
    }

    private void handleContentCaptureFlush() {
        if (DEBUG_CONTENT_CAPTURE) {
            Log.v(this.mTag, "handleContentCaptureFlush()");
        }
        if (Trace.isTagEnabled(8L)) {
            Trace.traceBegin(8L, "flushContentCapture for " + getClass().getSimpleName());
        }
        try {
            if (isContentCaptureEnabled()) {
                ContentCaptureManager ccm = this.mAttachInfo.mContentCaptureManager;
                if (ccm == null) {
                    Log.w(TAG, "No ContentCapture on AttachInfo");
                } else {
                    ccm.flush(2);
                }
            }
        } finally {
            Trace.traceEnd(8L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x01a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean draw(boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 725
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.draw(boolean, boolean):boolean");
    }

    private boolean drawSoftware(Surface surface, View.AttachInfo attachInfo, int xoff, int yoff, boolean scalingRequired, Rect dirty, Rect surfaceInsets) {
        int dirtyYOffset;
        int dirtyYOffset2;
        boolean z;
        boolean z2;
        if (surfaceInsets != null) {
            int dirtyXOffset = xoff + surfaceInsets.left;
            int dirtyYOffset3 = yoff + surfaceInsets.top;
            dirtyYOffset = dirtyYOffset3;
            dirtyYOffset2 = dirtyXOffset;
        } else {
            dirtyYOffset = yoff;
            dirtyYOffset2 = xoff;
        }
        int dirtyXOffset2 = -dirtyYOffset2;
        try {
            try {
                try {
                    dirty.offset(dirtyXOffset2, -dirtyYOffset);
                    int i = dirty.left;
                    int i2 = dirty.top;
                    int i3 = dirty.right;
                    int i4 = dirty.bottom;
                    Canvas canvas = this.mSurface.lockCanvas(dirty);
                    int left = this.mDensity;
                    canvas.setDensity(left);
                    try {
                        if (DEBUG_ORIENTATION || DEBUG_DRAW) {
                            Log.v(this.mTag, "Surface " + surface + " drawing to bitmap w=" + canvas.getWidth() + ", h=" + canvas.getHeight());
                        }
                        if (canvas.isOpaque() && yoff == 0 && xoff == 0) {
                            z2 = false;
                        } else {
                            z2 = false;
                            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                        }
                        dirty.setEmpty();
                        this.mIsAnimating = z2;
                        this.mView.mPrivateFlags |= 32;
                        if (DEBUG_DRAW) {
                            Context cxt = this.mView.getContext();
                            Log.i(this.mTag, "Drawing: package:" + cxt.getPackageName() + ", metrics=" + cxt.getResources().getDisplayMetrics() + ", compatibilityInfo=" + cxt.getResources().getCompatibilityInfo());
                        }
                        canvas.translate(-xoff, -yoff);
                        CompatibilityInfo.Translator translator = this.mTranslator;
                        if (translator != null) {
                            translator.translateCanvas(canvas);
                        }
                        canvas.setScreenDensity(scalingRequired ? this.mNoncompatDensity : 0);
                        this.mView.draw(canvas);
                        drawAccessibilityFocusedDrawableIfNeeded(canvas);
                        try {
                            surface.unlockCanvasAndPost(canvas);
                            if (!LOCAL_LOGV) {
                                return true;
                            }
                            Log.v(this.mTag, "Surface " + surface + " unlockCanvasAndPost");
                            return true;
                        } catch (IllegalArgumentException e) {
                            z = true;
                            Log.e(this.mTag, "Could not unlock surface", e);
                            this.mLayoutRequested = z;
                            return false;
                        }
                    } catch (Throwable e2) {
                        try {
                            surface.unlockCanvasAndPost(canvas);
                            if (LOCAL_LOGV) {
                                Log.v(this.mTag, "Surface " + surface + " unlockCanvasAndPost");
                            }
                            throw e2;
                        } catch (IllegalArgumentException e3) {
                            Log.e(this.mTag, "Could not unlock surface", e3);
                            z = true;
                            this.mLayoutRequested = z;
                            return false;
                        }
                    }
                } finally {
                    dirty.offset(dirtyYOffset2, dirtyYOffset);
                }
            } catch (Surface.OutOfResourcesException e4) {
                handleOutOfResourcesException(e4);
                dirty.offset(dirtyYOffset2, dirtyYOffset);
                return false;
            }
        } catch (IllegalArgumentException e5) {
            Log.e(this.mTag, "Could not lock surface", e5);
            this.mLayoutRequested = true;
            dirty.offset(dirtyYOffset2, dirtyYOffset);
            return false;
        }
    }

    private void drawAccessibilityFocusedDrawableIfNeeded(Canvas canvas) {
        Rect bounds = this.mAttachInfo.mTmpInvalRect;
        if (getAccessibilityFocusedRect(bounds)) {
            Drawable drawable = getAccessibilityFocusedDrawable();
            if (drawable != null) {
                drawable.setBounds(bounds);
                drawable.draw(canvas);
                return;
            }
            return;
        }
        if (this.mAttachInfo.mAccessibilityFocusDrawable != null) {
            this.mAttachInfo.mAccessibilityFocusDrawable.setBounds(0, 0, 0, 0);
        }
    }

    private boolean getAccessibilityFocusedRect(Rect bounds) {
        View host;
        AccessibilityManager manager = AccessibilityManager.getInstance(this.mView.mContext);
        if (!manager.isEnabled() || !manager.isTouchExplorationEnabled() || (host = this.mAccessibilityFocusedHost) == null || host.mAttachInfo == null) {
            return false;
        }
        AccessibilityNodeProvider provider = host.getAccessibilityNodeProvider();
        if (provider == null) {
            host.getBoundsOnScreen(bounds, true);
        } else {
            AccessibilityNodeInfo accessibilityNodeInfo = this.mAccessibilityFocusedVirtualView;
            if (accessibilityNodeInfo == null) {
                return false;
            }
            accessibilityNodeInfo.getBoundsInScreen(bounds);
        }
        View.AttachInfo attachInfo = this.mAttachInfo;
        bounds.offset(0, attachInfo.mViewRootImpl.mScrollY);
        bounds.offset(-attachInfo.mWindowLeft, -attachInfo.mWindowTop);
        if (!bounds.intersect(0, 0, attachInfo.mViewRootImpl.mWidth, attachInfo.mViewRootImpl.mHeight)) {
            bounds.setEmpty();
        }
        return !bounds.isEmpty();
    }

    private Drawable getAccessibilityFocusedDrawable() {
        if (this.mAttachInfo.mAccessibilityFocusDrawable == null) {
            TypedValue value = new TypedValue();
            boolean resolved = this.mView.mContext.getTheme().resolveAttribute(R.attr.accessibilityFocusedDrawable, value, true);
            if (resolved) {
                this.mAttachInfo.mAccessibilityFocusDrawable = this.mView.mContext.getDrawable(value.resourceId);
            }
        }
        if (this.mAttachInfo.mAccessibilityFocusDrawable instanceof GradientDrawable) {
            GradientDrawable drawable = (GradientDrawable) this.mAttachInfo.mAccessibilityFocusDrawable;
            drawable.setStroke(this.mAccessibilityManager.getAccessibilityFocusStrokeWidth(), this.mAccessibilityManager.getAccessibilityFocusColor());
        }
        return this.mAttachInfo.mAccessibilityFocusDrawable;
    }

    void updateSystemGestureExclusionRectsForView(View view) {
        this.mGestureExclusionTracker.updateRectsForView(view);
        this.mHandler.sendEmptyMessage(30);
    }

    void systemGestureExclusionChanged() {
        List<Rect> rectsForWindowManager = this.mGestureExclusionTracker.computeChangedRects();
        if (rectsForWindowManager != null && this.mView != null) {
            try {
                this.mWindowSession.reportSystemGestureExclusionChanged(this.mWindow, rectsForWindowManager);
                this.mAttachInfo.mTreeObserver.dispatchOnSystemGestureExclusionRectsChanged(rectsForWindowManager);
                this.mViewRootImplExt.setSystemGestureExclusionRegion(rectsForWindowManager);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void setRootSystemGestureExclusionRects(List<Rect> rects) {
        this.mGestureExclusionTracker.setRootRects(rects);
        this.mHandler.sendEmptyMessage(30);
    }

    public List<Rect> getRootSystemGestureExclusionRects() {
        return this.mGestureExclusionTracker.getRootRects();
    }

    void updateKeepClearRectsForView(View view) {
        this.mKeepClearRectsTracker.updateRectsForView(view);
        this.mUnrestrictedKeepClearRectsTracker.updateRectsForView(view);
        this.mHandler.sendEmptyMessage(35);
    }

    void keepClearRectsChanged() {
        boolean restrictedKeepClearRectsChanged = this.mKeepClearRectsTracker.computeChanges();
        boolean unrestrictedKeepClearRectsChanged = this.mUnrestrictedKeepClearRectsTracker.computeChanges();
        if ((restrictedKeepClearRectsChanged || unrestrictedKeepClearRectsChanged) && this.mView != null) {
            this.mHasPendingKeepClearAreaChange = true;
            if (!this.mHandler.hasMessages(36)) {
                this.mHandler.sendEmptyMessageDelayed(36, 100L);
                reportKeepClearAreasChanged();
            }
        }
    }

    void reportKeepClearAreasChanged() {
        if (!this.mHasPendingKeepClearAreaChange) {
            return;
        }
        this.mHasPendingKeepClearAreaChange = false;
        List<Rect> restrictedKeepClearRects = this.mKeepClearRectsTracker.getLastComputedRects();
        List<Rect> unrestrictedKeepClearRects = this.mUnrestrictedKeepClearRectsTracker.getLastComputedRects();
        try {
            this.mWindowSession.reportKeepClearAreasChanged(this.mWindow, restrictedKeepClearRects, unrestrictedKeepClearRects);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void requestInvalidateRootRenderNode() {
        this.mInvalidateRootRequested = true;
    }

    boolean scrollToRectOrFocus(Rect rectangle, boolean immediate) {
        int scrollY;
        Rect ci = this.mAttachInfo.mContentInsets;
        Rect vi = this.mAttachInfo.mVisibleInsets;
        int scrollY2 = 0;
        boolean handled = false;
        if (vi.left > ci.left || vi.top > ci.top || vi.right > ci.right || vi.bottom > ci.bottom) {
            scrollY2 = this.mScrollY;
            View focus = this.mView.findFocus();
            if (focus == null) {
                return false;
            }
            WeakReference<View> weakReference = this.mLastScrolledFocus;
            View lastScrolledFocus = weakReference != null ? weakReference.get() : null;
            if (focus != lastScrolledFocus) {
                rectangle = null;
            }
            if (DEBUG_INPUT_RESIZE) {
                Log.v(this.mTag, "Eval scroll: focus=" + focus + " rectangle=" + rectangle + " ci=" + ci + " vi=" + vi);
            }
            if (focus == lastScrolledFocus && !this.mScrollMayChange && rectangle == null) {
                if (DEBUG_INPUT_RESIZE) {
                    Log.v(this.mTag, "Keeping scroll y=" + this.mScrollY + " vi=" + vi.toShortString());
                }
            } else {
                this.mLastScrolledFocus = new WeakReference<>(focus);
                this.mScrollMayChange = false;
                if (DEBUG_INPUT_RESIZE) {
                    Log.v(this.mTag, "Need to scroll?");
                }
                if (focus.getGlobalVisibleRect(this.mVisRect, null)) {
                    if (DEBUG_INPUT_RESIZE) {
                        Log.v(this.mTag, "Root w=" + this.mView.getWidth() + " h=" + this.mView.getHeight() + " ci=" + ci.toShortString() + " vi=" + vi.toShortString());
                    }
                    if (rectangle == null) {
                        focus.getFocusedRect(this.mTempRect);
                        if (DEBUG_INPUT_RESIZE) {
                            Log.v(this.mTag, "Focus " + focus + ": focusRect=" + this.mTempRect.toShortString());
                        }
                        View view = this.mView;
                        if (view instanceof ViewGroup) {
                            ((ViewGroup) view).offsetDescendantRectToMyCoords(focus, this.mTempRect);
                        }
                        if (DEBUG_INPUT_RESIZE) {
                            Log.v(this.mTag, "Focus in window: focusRect=" + this.mTempRect.toShortString() + " visRect=" + this.mVisRect.toShortString());
                        }
                    } else {
                        this.mTempRect.set(rectangle);
                        if (DEBUG_INPUT_RESIZE) {
                            Log.v(this.mTag, "Request scroll to rect: " + this.mTempRect.toShortString() + " visRect=" + this.mVisRect.toShortString());
                        }
                    }
                    if (this.mTempRect.intersect(this.mVisRect)) {
                        if (DEBUG_INPUT_RESIZE) {
                            Log.v(this.mTag, "Focus window visible rect: " + this.mTempRect.toShortString());
                        }
                        if (this.mTempRect.height() > (this.mView.getHeight() - vi.top) - vi.bottom) {
                            if (DEBUG_INPUT_RESIZE) {
                                Log.v(this.mTag, "Too tall; leaving scrollY=" + scrollY2);
                            }
                        } else {
                            if (this.mTempRect.top < vi.top) {
                                scrollY = this.mTempRect.top - vi.top;
                                if (DEBUG_INPUT_RESIZE) {
                                    Log.v(this.mTag, "Top covered; scrollY=" + scrollY);
                                }
                            } else if (this.mTempRect.bottom > this.mView.getHeight() - vi.bottom) {
                                scrollY = this.mTempRect.bottom - (this.mView.getHeight() - vi.bottom);
                                if (DEBUG_INPUT_RESIZE) {
                                    Log.v(this.mTag, "Bottom covered; scrollY=" + scrollY);
                                }
                            } else {
                                scrollY2 = 0;
                            }
                            scrollY2 = scrollY;
                        }
                        handled = true;
                    }
                }
            }
        }
        if (scrollY2 != this.mScrollY) {
            if (DEBUG_INPUT_RESIZE) {
                Log.v(this.mTag, "Pan scroll changed: old=" + this.mScrollY + " , new=" + scrollY2);
            }
            if (!immediate) {
                if (this.mScroller == null) {
                    this.mScroller = new Scroller(this.mView.getContext());
                }
                Scroller scroller = this.mScroller;
                int i = this.mScrollY;
                scroller.startScroll(0, i, 0, scrollY2 - i);
            } else {
                Scroller scroller2 = this.mScroller;
                if (scroller2 != null) {
                    scroller2.abortAnimation();
                }
            }
            this.mScrollY = scrollY2;
        }
        return handled;
    }

    public View getAccessibilityFocusedHost() {
        return this.mAccessibilityFocusedHost;
    }

    public AccessibilityNodeInfo getAccessibilityFocusedVirtualView() {
        return this.mAccessibilityFocusedVirtualView;
    }

    void setAccessibilityFocus(View view, AccessibilityNodeInfo node) {
        if (this.mAccessibilityFocusedVirtualView != null) {
            AccessibilityNodeInfo focusNode = this.mAccessibilityFocusedVirtualView;
            View focusHost = this.mAccessibilityFocusedHost;
            this.mAccessibilityFocusedHost = null;
            this.mAccessibilityFocusedVirtualView = null;
            focusHost.clearAccessibilityFocusNoCallbacks(64);
            AccessibilityNodeProvider provider = focusHost.getAccessibilityNodeProvider();
            if (provider != null) {
                focusNode.getBoundsInParent(this.mTempRect);
                focusHost.invalidate(this.mTempRect);
                int virtualNodeId = AccessibilityNodeInfo.getVirtualDescendantId(focusNode.getSourceNodeId());
                provider.performAction(virtualNodeId, 128, null);
            }
            focusNode.recycle();
        }
        View view2 = this.mAccessibilityFocusedHost;
        if (view2 != null && view2 != view) {
            view2.clearAccessibilityFocusNoCallbacks(64);
        }
        this.mAccessibilityFocusedHost = view;
        this.mAccessibilityFocusedVirtualView = node;
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.invalidateRoot();
        }
    }

    boolean hasPointerCapture() {
        return this.mPointerCapture;
    }

    void requestPointerCapture(boolean enabled) {
        IBinder inputToken = getInputToken();
        if (inputToken == null) {
            Log.e(this.mTag, "No input channel to request Pointer Capture.");
        } else {
            InputManager.getInstance().requestPointerCapture(inputToken, enabled);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePointerCaptureChanged(boolean hasCapture) {
        if (this.mPointerCapture == hasCapture) {
            return;
        }
        this.mPointerCapture = hasCapture;
        View view = this.mView;
        if (view != null) {
            view.dispatchPointerCaptureChanged(hasCapture);
        }
    }

    private void updateColorModeIfNeeded(int colorMode) {
        if (this.mAttachInfo.mThreadedRenderer == null) {
            return;
        }
        if (colorMode != 4 && !getConfiguration().isScreenWideColorGamut()) {
            colorMode = 0;
        }
        this.mAttachInfo.mThreadedRenderer.setColorMode(this.mViewRootImplExt.getColorMode(colorMode));
    }

    @Override // android.view.ViewParent
    public void requestChildFocus(View child, View focused) {
        if (DEBUG_INPUT_RESIZE) {
            Log.v(this.mTag, "Request child focus: focus now " + focused);
        }
        checkThread();
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public void clearChildFocus(View child) {
        if (DEBUG_INPUT_RESIZE) {
            Log.v(this.mTag, "Clearing child focus");
        }
        checkThread();
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public ViewParent getParentForAccessibility() {
        return null;
    }

    @Override // android.view.ViewParent
    public void focusableViewAvailable(View v) {
        checkThread();
        View view = this.mView;
        if (view != null) {
            if (!view.hasFocus()) {
                if (sAlwaysAssignFocus || !this.mAttachInfo.mInTouchMode) {
                    v.requestFocus();
                    return;
                }
                return;
            }
            View focused = this.mView.findFocus();
            if (focused instanceof ViewGroup) {
                ViewGroup group = (ViewGroup) focused;
                if (group.getDescendantFocusability() == 262144 && isViewDescendantOf(v, focused)) {
                    v.requestFocus();
                }
            }
        }
    }

    @Override // android.view.ViewParent
    public void recomputeViewAttributes(View child) {
        checkThread();
        if (this.mView == child) {
            this.mAttachInfo.mRecomputeGlobalAttributes = true;
            if (!this.mWillDrawSoon) {
                scheduleTraversals();
            }
        }
    }

    void dispatchDetachedFromWindow() {
        InputQueue inputQueue;
        this.mInsetsController.onWindowFocusLost();
        InputStage inputStage = this.mFirstInputStage;
        if (inputStage != null) {
            inputStage.onDetachedFromWindow();
        }
        View view = this.mView;
        if (view != null && view.mAttachInfo != null) {
            this.mAttachInfo.mTreeObserver.dispatchOnWindowAttachedChange(false);
            this.mView.dispatchDetachedFromWindow();
            this.mViewRootImplExt.dispatchDetachedFromWindow(this.mView);
        }
        this.mAccessibilityInteractionConnectionManager.ensureNoConnection();
        removeSendWindowContentChangedCallback();
        destroyHardwareRenderer();
        setAccessibilityFocus(null, null);
        this.mInsetsController.cancelExistingAnimations();
        this.mView.assignParent(null);
        this.mView = null;
        this.mAttachInfo.mRootView = null;
        destroySurface();
        InputQueue.Callback callback = this.mInputQueueCallback;
        if (callback != null && (inputQueue = this.mInputQueue) != null) {
            callback.onInputQueueDestroyed(inputQueue);
            this.mInputQueue.dispose();
            this.mInputQueueCallback = null;
            this.mInputQueue = null;
        }
        try {
            this.mWindowSession.remove(this.mWindow);
        } catch (RemoteException e) {
        }
        WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
        if (windowInputEventReceiver != null) {
            windowInputEventReceiver.dispose();
            this.mInputEventReceiver = null;
        }
        unregisterListeners();
        unscheduleTraversals();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performConfigurationChange(MergedConfiguration mergedConfiguration, boolean force, int newDisplayId) {
        if (mergedConfiguration == null) {
            throw new IllegalArgumentException("No merged config provided.");
        }
        Configuration globalConfig = mergedConfiguration.getGlobalConfiguration();
        Configuration overrideConfig = mergedConfiguration.getOverrideConfiguration();
        if (DEBUG_CONFIGURATION) {
            Log.v(this.mTag, "Applying new config to window " + ((Object) this.mWindowAttributes.getTitle()) + ", globalConfig: " + globalConfig + ", overrideConfig: " + overrideConfig);
        }
        CompatibilityInfo ci = this.mDisplay.getDisplayAdjustments().getCompatibilityInfo();
        if (!ci.equals(CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO)) {
            globalConfig = new Configuration(globalConfig);
            ci.applyToConfiguration(this.mNoncompatDensity, globalConfig);
        }
        ArrayList<ConfigChangedCallback> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            for (int i = arrayList.size() - 1; i >= 0; i--) {
                sConfigCallbacks.get(i).onConfigurationChanged(globalConfig);
            }
        }
        this.mViewRootImplExt.handleGestureConfigCheck();
        this.mViewRootImplExt.setDarkModeProgress(this.mView, globalConfig);
        this.mLastReportedMergedConfiguration.setConfiguration(globalConfig, overrideConfig);
        this.mViewRootImplExt.setLastReportedMergedConfiguration(this.mView, this.mLastReportedMergedConfiguration.getMergedConfiguration(), this.mContext);
        this.mForceNextConfigUpdate = force;
        ActivityConfigCallback activityConfigCallback = this.mActivityConfigCallback;
        if (activityConfigCallback != null) {
            activityConfigCallback.onConfigurationChanged(overrideConfig, newDisplayId);
        } else {
            updateConfiguration(newDisplayId);
        }
        this.mForceNextConfigUpdate = false;
    }

    public void updateConfiguration(int newDisplayId) {
        View view = this.mView;
        if (view == null) {
            return;
        }
        Resources localResources = view.getResources();
        Configuration config = localResources.getConfiguration();
        if (newDisplayId != -1) {
            onMovedToDisplay(newDisplayId, config);
        }
        if (this.mForceNextConfigUpdate || this.mLastConfigurationFromResources.diff(config) != 0) {
            updateInternalDisplay(this.mDisplay.getDisplayId(), localResources);
            int lastLayoutDirection = this.mLastConfigurationFromResources.getLayoutDirection();
            int currentLayoutDirection = config.getLayoutDirection();
            this.mLastConfigurationFromResources.setTo(config);
            if (lastLayoutDirection != currentLayoutDirection && this.mViewLayoutDirectionInitial == 2) {
                this.mView.setLayoutDirection(currentLayoutDirection);
            }
            if (DEBUG_CONFIGURATION) {
                Log.i(this.mTag, "ViewRootImpl updateConfiguration" + localResources.getImpl() + " \n" + config + " \n" + Debug.getCallers(10));
            }
            this.mView.dispatchConfigurationChanged(config);
            this.mForceNextWindowRelayout = true;
            requestLayout();
        }
        updateForceDarkMode();
    }

    public static boolean isViewDescendantOf(View child, View parent) {
        if (child == parent) {
            return true;
        }
        Object parent2 = child.getParent();
        return (parent2 instanceof ViewGroup) && isViewDescendantOf((View) parent2, parent);
    }

    private static void forceLayout(View view) {
        view.forceLayout();
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            int count = group.getChildCount();
            for (int i = 0; i < count; i++) {
                if (group.getChildAt(i) != null) {
                    forceLayout(group.getChildAt(i));
                }
            }
        }
    }

    final class ViewRootHandler extends Handler {
        ViewRootHandler() {
        }

        @Override // android.os.Handler
        public String getMessageName(Message message) {
            switch (message.what) {
                case 1:
                    return "MSG_INVALIDATE";
                case 2:
                    return "MSG_INVALIDATE_RECT";
                case 3:
                    return "MSG_DIE";
                case 4:
                    return "MSG_RESIZED";
                case 5:
                    return "MSG_RESIZED_REPORT";
                case 6:
                    return "MSG_WINDOW_FOCUS_CHANGED";
                case 7:
                    return "MSG_DISPATCH_INPUT_EVENT";
                case 8:
                    return "MSG_DISPATCH_APP_VISIBILITY";
                case 9:
                    return "MSG_DISPATCH_GET_NEW_SURFACE";
                case 10:
                case 20:
                case 22:
                case 26:
                case 33:
                default:
                    return super.getMessageName(message);
                case 11:
                    return "MSG_DISPATCH_KEY_FROM_IME";
                case 12:
                    return "MSG_DISPATCH_KEY_FROM_AUTOFILL";
                case 13:
                    return "MSG_CHECK_FOCUS";
                case 14:
                    return "MSG_CLOSE_SYSTEM_DIALOGS";
                case 15:
                    return "MSG_DISPATCH_DRAG_EVENT";
                case 16:
                    return "MSG_DISPATCH_DRAG_LOCATION_EVENT";
                case 17:
                    return "MSG_DISPATCH_SYSTEM_UI_VISIBILITY";
                case 18:
                    return "MSG_UPDATE_CONFIGURATION";
                case 19:
                    return "MSG_PROCESS_INPUT_EVENTS";
                case 21:
                    return "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST";
                case 23:
                    return "MSG_WINDOW_MOVED";
                case 24:
                    return "MSG_SYNTHESIZE_INPUT_EVENT";
                case 25:
                    return "MSG_DISPATCH_WINDOW_SHOWN";
                case 27:
                    return "MSG_UPDATE_POINTER_ICON";
                case 28:
                    return "MSG_POINTER_CAPTURE_CHANGED";
                case 29:
                    return "MSG_INSETS_CONTROL_CHANGED";
                case 30:
                    return "MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED";
                case 31:
                    return "MSG_SHOW_INSETS";
                case 32:
                    return "MSG_HIDE_INSETS";
                case 34:
                    return "MSG_WINDOW_TOUCH_MODE_CHANGED";
                case 35:
                    return "MSG_KEEP_CLEAR_RECTS_CHANGED";
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message msg, long uptimeMillis) {
            if (msg.what == 26 && msg.obj == null) {
                throw new NullPointerException("Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:");
            }
            return super.sendMessageAtTime(msg, uptimeMillis);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (Trace.isTagEnabled(8L)) {
                Trace.traceBegin(8L, getMessageName(msg));
            }
            try {
                handleMessageImpl(msg);
            } finally {
                Trace.traceEnd(8L);
            }
        }

        private void handleMessageImpl(Message message) {
            switch (message.what) {
                case 1:
                    ((View) message.obj).invalidate();
                    break;
                case 2:
                    View.AttachInfo.InvalidateInfo invalidateInfo = (View.AttachInfo.InvalidateInfo) message.obj;
                    invalidateInfo.target.invalidate(invalidateInfo.left, invalidateInfo.top, invalidateInfo.right, invalidateInfo.bottom);
                    invalidateInfo.recycle();
                    break;
                case 3:
                    ViewRootImpl.this.doDie();
                    break;
                case 4:
                case 5:
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    ViewRootImpl.this.mInsetsController.onStateChanged((InsetsState) someArgs.arg3);
                    ViewRootImpl.this.handleResized(message.what, someArgs);
                    someArgs.recycle();
                    break;
                case 6:
                    ViewRootImpl.this.handleWindowFocusChanged();
                    break;
                case 7:
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    ViewRootImpl.this.enqueueInputEvent((InputEvent) someArgs2.arg1, (InputEventReceiver) someArgs2.arg2, 0, true);
                    someArgs2.recycle();
                    break;
                case 8:
                    ViewRootImpl.this.handleAppVisibility(message.arg1 != 0);
                    break;
                case 9:
                    ViewRootImpl.this.handleGetNewSurface();
                    break;
                case 11:
                    if (ViewRootImpl.LOCAL_LOGV) {
                        Log.v(ViewRootImpl.TAG, "Dispatching key " + message.obj + " from IME to " + ViewRootImpl.this.mView);
                    }
                    KeyEvent keyEventChangeFlags = (KeyEvent) message.obj;
                    if ((keyEventChangeFlags.getFlags() & 8) != 0) {
                        keyEventChangeFlags = KeyEvent.changeFlags(keyEventChangeFlags, keyEventChangeFlags.getFlags() & (-9));
                    }
                    ViewRootImpl.this.enqueueInputEvent(keyEventChangeFlags, null, 1, true);
                    break;
                case 12:
                    if (ViewRootImpl.LOCAL_LOGV) {
                        Log.v(ViewRootImpl.TAG, "Dispatching key " + message.obj + " from Autofill to " + ViewRootImpl.this.mView);
                    }
                    ViewRootImpl.this.enqueueInputEvent((KeyEvent) message.obj, null, 0, true);
                    break;
                case 13:
                    ViewRootImpl.this.getImeFocusController().checkFocus(false, true);
                    break;
                case 14:
                    if (ViewRootImpl.this.mView != null) {
                        ViewRootImpl.this.mView.onCloseSystemDialogs((String) message.obj);
                        break;
                    }
                    break;
                case 15:
                case 16:
                    DragEvent dragEvent = (DragEvent) message.obj;
                    dragEvent.mLocalState = ViewRootImpl.this.mLocalDragState;
                    ViewRootImpl.this.handleDragEvent(dragEvent);
                    break;
                case 17:
                    ViewRootImpl.this.handleDispatchSystemUiVisibilityChanged((SystemUiVisibilityInfo) message.obj);
                    break;
                case 18:
                    Configuration globalConfiguration = (Configuration) message.obj;
                    if (globalConfiguration.isOtherSeqNewer(ViewRootImpl.this.mLastReportedMergedConfiguration.getMergedConfiguration())) {
                        globalConfiguration = ViewRootImpl.this.mLastReportedMergedConfiguration.getGlobalConfiguration();
                    }
                    ViewRootImpl.this.mPendingMergedConfiguration.setConfiguration(globalConfiguration, ViewRootImpl.this.mLastReportedMergedConfiguration.getOverrideConfiguration());
                    ViewRootImpl.this.performConfigurationChange(new MergedConfiguration(ViewRootImpl.this.mPendingMergedConfiguration), false, -1);
                    break;
                case 19:
                    ViewRootImpl.this.mProcessInputEventsScheduled = false;
                    ViewRootImpl.this.doProcessInputEvents();
                    break;
                case 21:
                    ViewRootImpl.this.setAccessibilityFocus(null, null);
                    break;
                case 22:
                    if (ViewRootImpl.this.mView != null) {
                        ViewRootImpl viewRootImpl = ViewRootImpl.this;
                        viewRootImpl.invalidateWorld(viewRootImpl.mView);
                        break;
                    }
                    break;
                case 23:
                    if (ViewRootImpl.this.mAdded) {
                        int iWidth = ViewRootImpl.this.mWinFrame.width();
                        int iHeight = ViewRootImpl.this.mWinFrame.height();
                        int i = message.arg1;
                        int i2 = message.arg2;
                        ViewRootImpl.this.mTmpFrames.frame.left = i;
                        ViewRootImpl.this.mTmpFrames.frame.right = i + iWidth;
                        ViewRootImpl.this.mTmpFrames.frame.top = i2;
                        ViewRootImpl.this.mTmpFrames.frame.bottom = i2 + iHeight;
                        ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
                        viewRootImpl2.setFrame(viewRootImpl2.mTmpFrames.frame);
                        ViewRootImpl viewRootImpl3 = ViewRootImpl.this;
                        viewRootImpl3.maybeHandleWindowMove(viewRootImpl3.mWinFrame);
                        break;
                    }
                    break;
                case 24:
                    ViewRootImpl.this.enqueueInputEvent((InputEvent) message.obj, null, 32, true);
                    break;
                case 25:
                    ViewRootImpl.this.handleDispatchWindowShown();
                    ViewRootImpl.this.mViewRootImplExt.checkKeyguardAndConfig(ViewRootImpl.this.mTag);
                    break;
                case 26:
                    ViewRootImpl.this.handleRequestKeyboardShortcuts((IResultReceiver) message.obj, message.arg1);
                    break;
                case 27:
                    ViewRootImpl.this.resetPointerIcon((MotionEvent) message.obj);
                    break;
                case 28:
                    ViewRootImpl.this.handlePointerCaptureChanged(message.arg1 != 0);
                    break;
                case 29:
                    SomeArgs someArgs3 = (SomeArgs) message.obj;
                    ViewRootImpl.this.mInsetsController.onStateChanged((InsetsState) someArgs3.arg1);
                    InsetsSourceControl[] insetsSourceControlArr = (InsetsSourceControl[]) someArgs3.arg2;
                    if (ViewRootImpl.this.mAdded) {
                        ViewRootImpl.this.mInsetsController.onControlsChanged(insetsSourceControlArr);
                    } else if (insetsSourceControlArr != null) {
                        for (InsetsSourceControl insetsSourceControl : insetsSourceControlArr) {
                            if (insetsSourceControl != null) {
                                insetsSourceControl.release(new InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0());
                            }
                        }
                    }
                    someArgs3.recycle();
                    break;
                case 30:
                    ViewRootImpl.this.systemGestureExclusionChanged();
                    break;
                case 31:
                    if (ViewRootImpl.this.mView == null) {
                        Object[] objArr = new Object[2];
                        objArr[0] = Integer.valueOf(message.arg1);
                        objArr[1] = Boolean.valueOf(message.arg2 == 1);
                        Log.e(ViewRootImpl.TAG, String.format("Calling showInsets(%d,%b) on window that no longer has views.", objArr));
                    }
                    ViewRootImpl.this.clearLowProfileModeIfNeeded(message.arg1, message.arg2 == 1);
                    ViewRootImpl.this.mInsetsController.show(message.arg1, message.arg2 == 1);
                    break;
                case 32:
                    ViewRootImpl.this.mInsetsController.hide(message.arg1, message.arg2 == 1);
                    break;
                case 33:
                    ViewRootImpl.this.handleScrollCaptureRequest((IScrollCaptureResponseListener) message.obj);
                    break;
                case 34:
                    ViewRootImpl.this.handleWindowTouchModeChanged();
                    break;
                case 35:
                    ViewRootImpl.this.keepClearRectsChanged();
                    break;
                case 36:
                    ViewRootImpl.this.reportKeepClearAreasChanged();
                    break;
            }
        }
    }

    boolean ensureTouchMode(boolean inTouchMode) {
        if (DBG) {
            Log.d("touchmode", "ensureTouchMode(" + inTouchMode + "), current touch mode is " + this.mAttachInfo.mInTouchMode);
        }
        if (this.mAttachInfo.mInTouchMode == inTouchMode) {
            return false;
        }
        try {
            this.mWindowSession.setInTouchMode(inTouchMode);
            return ensureTouchModeLocally(inTouchMode);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    private boolean ensureTouchModeLocally(boolean inTouchMode) {
        if (DBG) {
            Log.d("touchmode", "ensureTouchModeLocally(" + inTouchMode + "), current touch mode is " + this.mAttachInfo.mInTouchMode);
        }
        if (this.mAttachInfo.mInTouchMode == inTouchMode) {
            return false;
        }
        this.mAttachInfo.mInTouchMode = inTouchMode;
        this.mAttachInfo.mTreeObserver.dispatchOnTouchModeChanged(inTouchMode);
        return inTouchMode ? enterTouchMode() : leaveTouchMode();
    }

    private boolean enterTouchMode() {
        View focused;
        View view = this.mView;
        if (view == null || !view.hasFocus() || (focused = this.mView.findFocus()) == null || focused.isFocusableInTouchMode()) {
            return false;
        }
        ViewGroup ancestorToTakeFocus = findAncestorToTakeFocusInTouchMode(focused);
        if (ancestorToTakeFocus != null) {
            return ancestorToTakeFocus.requestFocus();
        }
        focused.clearFocusInternal(null, true, false);
        return true;
    }

    private static ViewGroup findAncestorToTakeFocusInTouchMode(View focused) {
        ViewParent parent = focused.getParent();
        while (parent instanceof ViewGroup) {
            ViewGroup vgParent = (ViewGroup) parent;
            if (vgParent.getDescendantFocusability() == 262144 && vgParent.isFocusableInTouchMode()) {
                return vgParent;
            }
            if (vgParent.isRootNamespace()) {
                return null;
            }
            parent = vgParent.getParent();
        }
        return null;
    }

    private boolean leaveTouchMode() {
        View view = this.mView;
        if (view == null) {
            return false;
        }
        if (view.hasFocus()) {
            View focusedView = this.mView.findFocus();
            if (!(focusedView instanceof ViewGroup) || ((ViewGroup) focusedView).getDescendantFocusability() != 262144) {
                return false;
            }
        }
        return this.mView.restoreDefaultFocus();
    }

    abstract class InputStage {
        protected static final int FINISH_HANDLED = 1;
        protected static final int FINISH_NOT_HANDLED = 2;
        protected static final int FORWARD = 0;
        private final InputStage mNext;
        private String mTracePrefix;

        public InputStage(InputStage next) {
            this.mNext = next;
        }

        public final void deliver(QueuedInputEvent q) {
            if ((q.mFlags & 4) != 0) {
                forward(q);
                return;
            }
            if (shouldDropInputEvent(q)) {
                finish(q, false);
                return;
            }
            traceEvent(q, 8L);
            try {
                int result = onProcess(q);
                Trace.traceEnd(8L);
                apply(q, result);
            } catch (Throwable th) {
                Trace.traceEnd(8L);
                throw th;
            }
        }

        protected void finish(QueuedInputEvent q, boolean handled) {
            q.mFlags |= 4;
            if (handled) {
                q.mFlags |= 8;
            }
            forward(q);
        }

        protected void forward(QueuedInputEvent q) {
            onDeliverToNext(q);
        }

        protected void apply(QueuedInputEvent q, int result) {
            if (result == 0) {
                forward(q);
            } else if (result == 1) {
                finish(q, true);
            } else {
                if (result == 2) {
                    finish(q, false);
                    return;
                }
                throw new IllegalArgumentException("Invalid result: " + result);
            }
        }

        protected int onProcess(QueuedInputEvent q) {
            return 0;
        }

        protected void onDeliverToNext(QueuedInputEvent q) {
            ViewRootImpl.this.mViewRootImplExt.debugInputStageDeliverd(ViewRootImpl.this.mTag, q.mFlags, q.mEvent, getClass().getSimpleName(), (ViewRootImpl.DEBUG_INPUT_STAGES || ViewRootImpl.this.mViewRootImplExt.isLevelDebug()) ? q.toString() : null);
            if (ViewRootImpl.DEBUG_INPUT_STAGES) {
                Log.v(ViewRootImpl.this.mTag, "Done with " + getClass().getSimpleName() + ". " + q);
            }
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.deliver(q);
            } else {
                ViewRootImpl.this.finishInputEvent(q);
            }
        }

        protected void onWindowFocusChanged(boolean hasWindowFocus) {
            ViewRootImpl.this.mViewRootImplExt.onWindowFocusChangedByRoot(hasWindowFocus, ViewRootImpl.this.mView, ViewRootImpl.this.mLastReportedMergedConfiguration);
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.onWindowFocusChanged(hasWindowFocus);
            }
        }

        protected void onDetachedFromWindow() {
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.onDetachedFromWindow();
            }
        }

        protected boolean shouldDropInputEvent(QueuedInputEvent q) {
            String reason;
            if (ViewRootImpl.this.mView == null || !ViewRootImpl.this.mAdded) {
                Slog.w(ViewRootImpl.this.mTag, "Dropping event due to root view being removed: " + q.mEvent);
                return true;
            }
            if (!ViewRootImpl.this.mAttachInfo.mHasWindowFocus && !q.mEvent.isFromSource(2) && !ViewRootImpl.this.isAutofillUiShowing()) {
                reason = "no window focus";
            } else if (ViewRootImpl.this.mStopped) {
                reason = "window is stopped";
            } else if (ViewRootImpl.this.mIsAmbientMode && !q.mEvent.isFromSource(1)) {
                reason = "non-button event in ambient mode";
            } else {
                if (!ViewRootImpl.this.mPausedForTransition || isBack(q.mEvent)) {
                    return false;
                }
                reason = "paused for transition";
            }
            if (ViewRootImpl.isTerminalInputEvent(q.mEvent)) {
                q.mEvent.cancel();
                Slog.w(ViewRootImpl.this.mTag, "Cancelling event (" + reason + "):" + q.mEvent);
                return false;
            }
            Slog.w(ViewRootImpl.this.mTag, "Dropping event (" + reason + "):" + q.mEvent);
            return true;
        }

        void dump(String prefix, PrintWriter writer) {
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.dump(prefix, writer);
            }
        }

        boolean isBack(InputEvent event) {
            return (event instanceof KeyEvent) && ((KeyEvent) event).getKeyCode() == 4;
        }

        private void traceEvent(QueuedInputEvent q, long traceTag) {
            if (!Trace.isTagEnabled(traceTag)) {
                return;
            }
            if (this.mTracePrefix == null) {
                this.mTracePrefix = getClass().getSimpleName();
            }
            Trace.traceBegin(traceTag, this.mTracePrefix + " id=0x" + Integer.toHexString(q.mEvent.getId()));
        }
    }

    abstract class AsyncInputStage extends InputStage {
        protected static final int DEFER = 3;
        private QueuedInputEvent mQueueHead;
        private int mQueueLength;
        private QueuedInputEvent mQueueTail;
        private final String mTraceCounter;

        public AsyncInputStage(InputStage next, String traceCounter) {
            super(next);
            this.mTraceCounter = traceCounter;
        }

        protected void defer(QueuedInputEvent q) {
            q.mFlags |= 2;
            enqueue(q);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void forward(QueuedInputEvent q) {
            q.mFlags &= -3;
            QueuedInputEvent curr = this.mQueueHead;
            if (curr == null) {
                super.forward(q);
                return;
            }
            int deviceId = q.mEvent.getDeviceId();
            QueuedInputEvent prev = null;
            boolean blocked = false;
            while (curr != null && curr != q) {
                if (!blocked && deviceId == curr.mEvent.getDeviceId()) {
                    blocked = true;
                }
                prev = curr;
                curr = curr.mNext;
            }
            if (blocked) {
                if (curr == null) {
                    enqueue(q);
                    return;
                }
                return;
            }
            if (curr != null) {
                curr = curr.mNext;
                dequeue(q, prev);
            }
            super.forward(q);
            while (curr != null) {
                if (deviceId == curr.mEvent.getDeviceId()) {
                    if ((curr.mFlags & 2) == 0) {
                        QueuedInputEvent next = curr.mNext;
                        dequeue(curr, prev);
                        super.forward(curr);
                        curr = next;
                    } else {
                        return;
                    }
                } else {
                    prev = curr;
                    curr = curr.mNext;
                }
            }
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void apply(QueuedInputEvent q, int result) {
            if (result == 3) {
                defer(q);
            } else {
                super.apply(q, result);
            }
        }

        private void enqueue(QueuedInputEvent q) {
            QueuedInputEvent queuedInputEvent = this.mQueueTail;
            if (queuedInputEvent == null) {
                this.mQueueHead = q;
                this.mQueueTail = q;
            } else {
                queuedInputEvent.mNext = q;
                this.mQueueTail = q;
            }
            int i = this.mQueueLength + 1;
            this.mQueueLength = i;
            Trace.traceCounter(4L, this.mTraceCounter, i);
        }

        private void dequeue(QueuedInputEvent q, QueuedInputEvent prev) {
            if (prev == null) {
                this.mQueueHead = q.mNext;
            } else {
                prev.mNext = q.mNext;
            }
            if (this.mQueueTail == q) {
                this.mQueueTail = prev;
            }
            q.mNext = null;
            int i = this.mQueueLength - 1;
            this.mQueueLength = i;
            Trace.traceCounter(4L, this.mTraceCounter, i);
        }

        @Override // android.view.ViewRootImpl.InputStage
        void dump(String prefix, PrintWriter writer) {
            writer.print(prefix);
            writer.print(getClass().getName());
            writer.print(": mQueueLength=");
            writer.println(this.mQueueLength);
            super.dump(prefix, writer);
        }
    }

    final class NativePreImeInputStage extends AsyncInputStage implements InputQueue.FinishedInputEventCallback {
        public NativePreImeInputStage(InputStage next, String traceCounter) {
            super(next, traceCounter);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (q.mEvent instanceof KeyEvent) {
                KeyEvent event = (KeyEvent) q.mEvent;
                if (isBack(event) && ViewRootImpl.this.mContext != null && WindowOnBackInvokedDispatcher.isOnBackInvokedCallbackEnabled(ViewRootImpl.this.mContext)) {
                    OnBackInvokedCallback topCallback = ViewRootImpl.this.getOnBackInvokedDispatcher().getTopCallback();
                    if (event.getAction() == 1) {
                        if (topCallback != null) {
                            topCallback.onBackInvoked();
                            return 1;
                        }
                    } else {
                        return 2;
                    }
                }
            }
            if (ViewRootImpl.this.mInputQueue != null && (q.mEvent instanceof KeyEvent)) {
                ViewRootImpl.this.mInputQueue.sendInputEvent(q.mEvent, q, true, this);
                return 3;
            }
            return 0;
        }

        @Override // android.view.InputQueue.FinishedInputEventCallback
        public void onFinishedInputEvent(Object token, boolean handled) {
            QueuedInputEvent q = (QueuedInputEvent) token;
            if (handled) {
                finish(q, true);
            } else {
                forward(q);
            }
        }
    }

    final class ViewPreImeInputStage extends InputStage {
        public ViewPreImeInputStage(InputStage next) {
            super(next);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (q.mEvent instanceof KeyEvent) {
                return processKeyEvent(q);
            }
            return 0;
        }

        private int processKeyEvent(QueuedInputEvent q) {
            KeyEvent event = (KeyEvent) q.mEvent;
            if (ViewRootImpl.this.mView.dispatchKeyEventPreIme(event)) {
                return 1;
            }
            return 0;
        }
    }

    final class ImeInputStage extends AsyncInputStage implements InputMethodManager.FinishedInputEventCallback {
        public ImeInputStage(InputStage next, String traceCounter) {
            super(next, traceCounter);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            int result = ViewRootImpl.this.mImeFocusController.onProcessImeInputStage(q, q.mEvent, ViewRootImpl.this.mWindowAttributes, this);
            switch (result) {
                case -1:
                    return 3;
                case 0:
                    return 0;
                case 1:
                    return 1;
                default:
                    throw new IllegalStateException("Unexpected result=" + result);
            }
        }

        @Override // android.view.inputmethod.InputMethodManager.FinishedInputEventCallback
        public void onFinishedInputEvent(Object token, boolean handled) {
            QueuedInputEvent q = (QueuedInputEvent) token;
            if (handled) {
                finish(q, true);
            } else {
                forward(q);
            }
        }
    }

    final class EarlyPostImeInputStage extends InputStage {
        public EarlyPostImeInputStage(InputStage next) {
            super(next);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (q.mEvent instanceof KeyEvent) {
                return processKeyEvent(q);
            }
            if (q.mEvent instanceof MotionEvent) {
                return processMotionEvent(q);
            }
            return 0;
        }

        private int processKeyEvent(QueuedInputEvent q) {
            KeyEvent event = (KeyEvent) q.mEvent;
            if (ViewRootImpl.this.mAttachInfo.mTooltipHost != null) {
                ViewRootImpl.this.mAttachInfo.mTooltipHost.handleTooltipKey(event);
            }
            if (ViewRootImpl.this.checkForLeavingTouchModeAndConsume(event)) {
                return 1;
            }
            ViewRootImpl.this.mFallbackEventHandler.preDispatchKeyEvent(event);
            return 0;
        }

        private int processMotionEvent(QueuedInputEvent q) {
            MotionEvent event = (MotionEvent) q.mEvent;
            if (event.isFromSource(2)) {
                return processPointerEvent(q);
            }
            int action = event.getActionMasked();
            if ((action == 0 || action == 8) && event.isFromSource(8)) {
                ViewRootImpl.this.ensureTouchMode(false);
            }
            return 0;
        }

        private int processPointerEvent(QueuedInputEvent q) {
            AutofillManager afm;
            MotionEvent event = (MotionEvent) q.mEvent;
            if (ViewRootImpl.this.mTranslator != null) {
                ViewRootImpl.this.mTranslator.translateEventInScreenToAppWindow(event);
            }
            int action = event.getAction();
            if (action == 0 || action == 8) {
                ViewRootImpl.this.ensureTouchMode(true);
            }
            if (action == 0 && (afm = ViewRootImpl.this.getAutofillManager()) != null) {
                afm.requestHideFillUi();
            }
            if (action == 0 && ViewRootImpl.this.mAttachInfo.mTooltipHost != null) {
                ViewRootImpl.this.mAttachInfo.mTooltipHost.hideTooltip();
            }
            if (ViewRootImpl.this.mCurScrollY != 0) {
                event.offsetLocation(0.0f, ViewRootImpl.this.mCurScrollY);
            }
            if (event.isTouchEvent()) {
                ViewRootImpl.this.mLastTouchPoint.x = event.getRawX();
                ViewRootImpl.this.mLastTouchPoint.y = event.getRawY();
                ViewRootImpl.this.mLastTouchSource = event.getSource();
                return 0;
            }
            return 0;
        }
    }

    final class NativePostImeInputStage extends AsyncInputStage implements InputQueue.FinishedInputEventCallback {
        public NativePostImeInputStage(InputStage next, String traceCounter) {
            super(next, traceCounter);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (ViewRootImpl.this.mInputQueue == null) {
                return 0;
            }
            ViewRootImpl.this.mInputQueue.sendInputEvent(q.mEvent, q, false, this);
            return 3;
        }

        @Override // android.view.InputQueue.FinishedInputEventCallback
        public void onFinishedInputEvent(Object token, boolean handled) {
            QueuedInputEvent q = (QueuedInputEvent) token;
            if (handled) {
                finish(q, true);
            } else {
                forward(q);
            }
        }
    }

    final class ViewPostImeInputStage extends InputStage {
        public ViewPostImeInputStage(InputStage next) {
            super(next);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (q.mEvent instanceof KeyEvent) {
                return processKeyEvent(q);
            }
            int source = q.mEvent.getSource();
            if ((source & 2) != 0) {
                return processPointerEvent(q);
            }
            if ((source & 4) != 0) {
                return processTrackballEvent(q);
            }
            return processGenericMotionEvent(q);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onDeliverToNext(QueuedInputEvent q) {
            if (ViewRootImpl.this.mUnbufferedInputDispatch && (q.mEvent instanceof MotionEvent) && ((MotionEvent) q.mEvent).isTouchEvent() && ViewRootImpl.isTerminalInputEvent(q.mEvent)) {
                ViewRootImpl.this.mUnbufferedInputDispatch = false;
                ViewRootImpl.this.scheduleConsumeBatchedInput();
            }
            super.onDeliverToNext(q);
        }

        private boolean performFocusNavigation(KeyEvent event) {
            int direction = 0;
            switch (event.getKeyCode()) {
                case 19:
                    if (event.hasNoModifiers()) {
                        direction = 33;
                        break;
                    }
                    break;
                case 20:
                    if (event.hasNoModifiers()) {
                        direction = 130;
                        break;
                    }
                    break;
                case 21:
                    if (event.hasNoModifiers()) {
                        direction = 17;
                        break;
                    }
                    break;
                case 22:
                    if (event.hasNoModifiers()) {
                        direction = 66;
                        break;
                    }
                    break;
                case 61:
                    if (event.hasNoModifiers()) {
                        direction = 2;
                        break;
                    } else if (event.hasModifiers(1)) {
                        direction = 1;
                        break;
                    }
                    break;
            }
            if (direction != 0) {
                View focused = ViewRootImpl.this.mView.findFocus();
                if (focused != null) {
                    View v = focused.focusSearch(direction);
                    if (v != null && v != focused) {
                        focused.getFocusedRect(ViewRootImpl.this.mTempRect);
                        if (ViewRootImpl.this.mView instanceof ViewGroup) {
                            ((ViewGroup) ViewRootImpl.this.mView).offsetDescendantRectToMyCoords(focused, ViewRootImpl.this.mTempRect);
                            ((ViewGroup) ViewRootImpl.this.mView).offsetRectIntoDescendantCoords(v, ViewRootImpl.this.mTempRect);
                        }
                        if (v.requestFocus(direction, ViewRootImpl.this.mTempRect)) {
                            boolean isFastScrolling = event.getRepeatCount() > 0;
                            ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getConstantForFocusDirection(direction, isFastScrolling));
                            return true;
                        }
                    }
                    if (ViewRootImpl.this.mView.dispatchUnhandledMove(focused, direction)) {
                        return true;
                    }
                } else if (ViewRootImpl.this.mView.restoreDefaultFocus()) {
                    return true;
                }
            }
            return false;
        }

        private boolean performKeyboardGroupNavigation(int direction) {
            View cluster;
            View focused = ViewRootImpl.this.mView.findFocus();
            if (focused == null && ViewRootImpl.this.mView.restoreDefaultFocus()) {
                return true;
            }
            if (focused == null) {
                cluster = ViewRootImpl.this.keyboardNavigationClusterSearch(null, direction);
            } else {
                cluster = focused.keyboardNavigationClusterSearch(null, direction);
            }
            int realDirection = direction;
            if (direction == 2 || direction == 1) {
                realDirection = 130;
            }
            if (cluster != null && cluster.isRootNamespace()) {
                if (!cluster.restoreFocusNotInCluster()) {
                    cluster = ViewRootImpl.this.keyboardNavigationClusterSearch(null, direction);
                } else {
                    ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(direction));
                    return true;
                }
            }
            if (cluster != null && cluster.restoreFocusInCluster(realDirection)) {
                ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(direction));
                return true;
            }
            return false;
        }

        private int processKeyEvent(QueuedInputEvent q) {
            KeyEvent event = (KeyEvent) q.mEvent;
            if (ViewRootImpl.this.mUnhandledKeyManager.preViewDispatch(event)) {
                ViewRootImpl.this.mViewRootImplExt.v(ViewRootImpl.this.mTag, "App handle dispatchUnique event = " + event + ", mView = " + ViewRootImpl.this.mView + ", this = " + this);
                return 1;
            }
            if (ViewRootImpl.this.mView.dispatchKeyEvent(event)) {
                return 1;
            }
            if (shouldDropInputEvent(q)) {
                return 2;
            }
            if (ViewRootImpl.this.mUnhandledKeyManager.dispatch(ViewRootImpl.this.mView, event)) {
                return 1;
            }
            int groupNavigationDirection = 0;
            if (event.getAction() == 0 && event.getKeyCode() == 61) {
                if (KeyEvent.metaStateHasModifiers(event.getMetaState(), 65536)) {
                    groupNavigationDirection = 2;
                } else if (KeyEvent.metaStateHasModifiers(event.getMetaState(), 65537)) {
                    groupNavigationDirection = 1;
                }
            }
            if (event.getAction() == 0 && !KeyEvent.metaStateHasNoModifiers(event.getMetaState()) && event.getRepeatCount() == 0 && !KeyEvent.isModifierKey(event.getKeyCode()) && groupNavigationDirection == 0) {
                if (ViewRootImpl.this.mView.dispatchKeyShortcutEvent(event)) {
                    return 1;
                }
                if (shouldDropInputEvent(q)) {
                    return 2;
                }
            }
            if (ViewRootImpl.this.mFallbackEventHandler.dispatchKeyEvent(event)) {
                return 1;
            }
            if (shouldDropInputEvent(q)) {
                return 2;
            }
            if (event.getAction() == 0) {
                return groupNavigationDirection != 0 ? performKeyboardGroupNavigation(groupNavigationDirection) ? 1 : 0 : performFocusNavigation(event) ? 1 : 0;
            }
            return 0;
        }

        private int processPointerEvent(QueuedInputEvent queuedInputEvent) {
            MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
            ViewRootImpl.this.mHandwritingInitiator.onTouchEvent(motionEvent);
            boolean zProcessGestureEvent = ViewRootImpl.this.mViewRootImplExt.processGestureEvent(motionEvent);
            if (zProcessGestureEvent) {
                ViewRootImpl.this.mViewRootImplExt.debugEventHandled(ViewRootImpl.this.mTag, motionEvent, "Navigation Gesture handled=" + zProcessGestureEvent);
                return 1;
            }
            ViewRootImpl.this.mAttachInfo.mUnbufferedDispatchRequested = false;
            ViewRootImpl.this.mAttachInfo.mHandlingPointerEvent = true;
            if (ViewRootImpl.this.mView == null) {
                return 1;
            }
            ViewRootImpl.this.mViewRootImplSocExt.hookInputBegin(motionEvent, ViewRootImpl.this.mContext);
            boolean zDispatchPointerEvent = ViewRootImpl.this.mView.dispatchPointerEvent(motionEvent);
            motionEvent.getActionMasked();
            ViewRootImpl.this.mViewRootImplSocExt.hookMotionEventPerfHint(motionEvent, ViewRootImpl.this.mContext);
            ViewRootImpl.this.mViewRootImplSocExt.setHaveMoveEvent(motionEvent);
            ViewRootImpl.this.mViewRootImplExt.processPointerEvent(motionEvent, ViewRootImpl.this.mContext);
            maybeUpdatePointerIcon(motionEvent);
            ViewRootImpl.this.maybeUpdateTooltip(motionEvent);
            ViewRootImpl.this.mAttachInfo.mHandlingPointerEvent = false;
            if (ViewRootImpl.this.mAttachInfo.mUnbufferedDispatchRequested && !ViewRootImpl.this.mUnbufferedInputDispatch) {
                ViewRootImpl.this.mUnbufferedInputDispatch = true;
                if (ViewRootImpl.this.mConsumeBatchedInputScheduled) {
                    ViewRootImpl.this.scheduleConsumeBatchedInputImmediately();
                }
            }
            ViewRootImpl.this.mViewRootImplExt.debugEventHandled(ViewRootImpl.this.mTag, motionEvent, "mView handled=" + zDispatchPointerEvent);
            return zDispatchPointerEvent ? 1 : 0;
        }

        private void maybeUpdatePointerIcon(MotionEvent event) {
            if (event.getPointerCount() == 1 && event.isFromSource(8194)) {
                if (event.getActionMasked() == 9 || event.getActionMasked() == 10) {
                    ViewRootImpl.this.mPointerIconType = 1;
                }
                if (event.getActionMasked() != 10 && !ViewRootImpl.this.updatePointerIcon(event) && event.getActionMasked() == 7) {
                    ViewRootImpl.this.mPointerIconType = 1;
                }
            }
        }

        private int processTrackballEvent(QueuedInputEvent q) {
            MotionEvent event = (MotionEvent) q.mEvent;
            return ((!event.isFromSource(InputDevice.SOURCE_MOUSE_RELATIVE) || (ViewRootImpl.this.hasPointerCapture() && !ViewRootImpl.this.mView.dispatchCapturedPointerEvent(event))) && !ViewRootImpl.this.mView.dispatchTrackballEvent(event)) ? 0 : 1;
        }

        private int processGenericMotionEvent(QueuedInputEvent q) {
            MotionEvent event = (MotionEvent) q.mEvent;
            return ((event.isFromSource(InputDevice.SOURCE_TOUCHPAD) && ViewRootImpl.this.hasPointerCapture() && ViewRootImpl.this.mView.dispatchCapturedPointerEvent(event)) || ViewRootImpl.this.mView.dispatchGenericMotionEvent(event)) ? 1 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetPointerIcon(MotionEvent event) {
        this.mPointerIconType = 1;
        updatePointerIcon(event);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updatePointerIcon(MotionEvent event) {
        float x = event.getX(0);
        float y = event.getY(0);
        if (this.mView == null) {
            Slog.d(this.mTag, "updatePointerIcon called after view was removed");
            return false;
        }
        if (x >= 0.0f && x < r4.getWidth() && y >= 0.0f && y < this.mView.getHeight()) {
            PointerIcon pointerIcon = this.mView.onResolvePointerIcon(event, 0);
            int pointerType = pointerIcon != null ? pointerIcon.getType() : 1000;
            if (this.mPointerIconType != pointerType) {
                this.mPointerIconType = pointerType;
                this.mCustomPointerIcon = null;
                if (pointerType != -1) {
                    InputManager.getInstance().setPointerIconType(pointerType);
                    return true;
                }
            }
            if (this.mPointerIconType == -1 && !pointerIcon.equals(this.mCustomPointerIcon)) {
                this.mCustomPointerIcon = pointerIcon;
                InputManager.getInstance().setCustomPointerIcon(this.mCustomPointerIcon);
            }
            return true;
        }
        Slog.d(this.mTag, "updatePointerIcon called with position out of bounds");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeUpdateTooltip(MotionEvent event) {
        if (event.getPointerCount() != 1) {
            return;
        }
        int action = event.getActionMasked();
        if (action != 9 && action != 7 && action != 10) {
            return;
        }
        AccessibilityManager manager = AccessibilityManager.getInstance(this.mContext);
        if (manager.isEnabled() && manager.isTouchExplorationEnabled()) {
            return;
        }
        View view = this.mView;
        if (view == null) {
            Slog.d(this.mTag, "maybeUpdateTooltip called after view was removed");
        } else {
            view.dispatchTooltipHoverEvent(event);
        }
    }

    private View getFocusedViewOrNull() {
        View view = this.mView;
        if (view != null) {
            return view.findFocus();
        }
        return null;
    }

    final class SyntheticInputStage extends InputStage {
        private final SyntheticJoystickHandler mJoystick;
        private final SyntheticKeyboardHandler mKeyboard;
        private final SyntheticTouchNavigationHandler mTouchNavigation;
        private final SyntheticTrackballHandler mTrackball;

        public SyntheticInputStage() {
            super(null);
            this.mTrackball = ViewRootImpl.this.new SyntheticTrackballHandler();
            this.mJoystick = ViewRootImpl.this.new SyntheticJoystickHandler();
            this.mTouchNavigation = ViewRootImpl.this.new SyntheticTouchNavigationHandler();
            this.mKeyboard = ViewRootImpl.this.new SyntheticKeyboardHandler();
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            q.mFlags |= 16;
            if (q.mEvent instanceof MotionEvent) {
                MotionEvent event = (MotionEvent) q.mEvent;
                int source = event.getSource();
                if ((source & 4) != 0) {
                    this.mTrackball.process(event);
                    return 1;
                }
                if ((source & 16) != 0) {
                    this.mJoystick.process(event);
                    return 1;
                }
                if ((source & 2097152) == 2097152) {
                    this.mTouchNavigation.process(event);
                    return 1;
                }
                return 0;
            }
            if ((q.mFlags & 32) != 0) {
                this.mKeyboard.process((KeyEvent) q.mEvent);
                return 1;
            }
            return 0;
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onDeliverToNext(QueuedInputEvent q) {
            if ((q.mFlags & 16) == 0 && (q.mEvent instanceof MotionEvent)) {
                MotionEvent event = (MotionEvent) q.mEvent;
                int source = event.getSource();
                if ((source & 4) != 0) {
                    this.mTrackball.cancel();
                } else if ((source & 16) != 0) {
                    this.mJoystick.cancel();
                } else if ((source & 2097152) == 2097152) {
                    this.mTouchNavigation.cancel(event);
                }
            }
            super.onDeliverToNext(q);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onWindowFocusChanged(boolean hasWindowFocus) {
            if (!hasWindowFocus) {
                this.mJoystick.cancel();
            }
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onDetachedFromWindow() {
            this.mJoystick.cancel();
        }
    }

    final class SyntheticTrackballHandler {
        private long mLastTime;
        private final TrackballAxis mX = new TrackballAxis();
        private final TrackballAxis mY = new TrackballAxis();

        SyntheticTrackballHandler() {
        }

        public void process(MotionEvent event) {
            long curTime;
            int keycode;
            float accel;
            String str;
            int keycode2;
            long curTime2;
            String str2;
            long curTime3 = SystemClock.uptimeMillis();
            if (this.mLastTime + 250 < curTime3) {
                this.mX.reset(0);
                this.mY.reset(0);
                this.mLastTime = curTime3;
            }
            int action = event.getAction();
            int metaState = event.getMetaState();
            switch (action) {
                case 0:
                    curTime = curTime3;
                    this.mX.reset(2);
                    this.mY.reset(2);
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime, curTime, 0, 23, 0, metaState, -1, 0, 1024, 257));
                    break;
                case 1:
                    this.mX.reset(2);
                    this.mY.reset(2);
                    curTime = curTime3;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime3, curTime3, 1, 23, 0, metaState, -1, 0, 1024, 257));
                    break;
                default:
                    curTime = curTime3;
                    break;
            }
            if (ViewRootImpl.DEBUG_TRACKBALL) {
                Log.v(ViewRootImpl.this.mTag, "TB X=" + this.mX.position + " step=" + this.mX.step + " dir=" + this.mX.dir + " acc=" + this.mX.acceleration + " move=" + event.getX() + " / Y=" + this.mY.position + " step=" + this.mY.step + " dir=" + this.mY.dir + " acc=" + this.mY.acceleration + " move=" + event.getY());
            }
            float xOff = this.mX.collect(event.getX(), event.getEventTime(), GnssSignalType.CODE_TYPE_X);
            float yOff = this.mY.collect(event.getY(), event.getEventTime(), GnssSignalType.CODE_TYPE_Y);
            int movement = 0;
            if (xOff > yOff) {
                movement = this.mX.generate();
                if (movement == 0) {
                    keycode = 0;
                    accel = 1.0f;
                } else {
                    int keycode3 = movement > 0 ? 22 : 21;
                    float accel2 = this.mX.acceleration;
                    this.mY.reset(2);
                    keycode = keycode3;
                    accel = accel2;
                }
            } else if (yOff <= 0.0f || (movement = this.mY.generate()) == 0) {
                keycode = 0;
                accel = 1.0f;
            } else {
                int keycode4 = movement > 0 ? 20 : 19;
                float accel3 = this.mY.acceleration;
                this.mX.reset(2);
                keycode = keycode4;
                accel = accel3;
            }
            if (keycode != 0) {
                if (movement < 0) {
                    movement = -movement;
                }
                int accelMovement = (int) (movement * accel);
                if (ViewRootImpl.DEBUG_TRACKBALL) {
                    Log.v(ViewRootImpl.this.mTag, "Move: movement=" + movement + " accelMovement=" + accelMovement + " accel=" + accel);
                }
                if (accelMovement <= movement) {
                    str = "Delivering fake DPAD: ";
                    keycode2 = keycode;
                    curTime2 = curTime;
                } else {
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.this.mTag, "Delivering fake DPAD: " + keycode);
                    }
                    int movement2 = movement - 1;
                    int repeatCount = accelMovement - movement2;
                    str = "Delivering fake DPAD: ";
                    keycode2 = keycode;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime, curTime, 2, keycode, repeatCount, metaState, -1, 0, 1024, 257));
                    curTime2 = curTime;
                    movement = movement2;
                }
                while (movement > 0) {
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        str2 = str;
                        Log.v(ViewRootImpl.this.mTag, str2 + keycode2);
                    } else {
                        str2 = str;
                    }
                    long curTime4 = SystemClock.uptimeMillis();
                    int i = keycode2;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime4, curTime4, 0, i, 0, metaState, -1, 0, 1024, 257));
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime4, curTime4, 1, i, 0, metaState, -1, 0, 1024, 257));
                    movement--;
                    curTime2 = curTime4;
                    str = str2;
                    keycode2 = keycode2;
                }
                this.mLastTime = curTime2;
            }
        }

        public void cancel() {
            this.mLastTime = -2147483648L;
            if (ViewRootImpl.this.mView != null && ViewRootImpl.this.mAdded) {
                ViewRootImpl.this.ensureTouchMode(false);
            }
        }
    }

    static final class TrackballAxis {
        static final float ACCEL_MOVE_SCALING_FACTOR = 0.025f;
        static final long FAST_MOVE_TIME = 150;
        static final float FIRST_MOVEMENT_THRESHOLD = 0.5f;
        static final float MAX_ACCELERATION = 20.0f;
        static final float SECOND_CUMULATIVE_MOVEMENT_THRESHOLD = 2.0f;
        static final float SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD = 1.0f;
        int dir;
        int nonAccelMovement;
        float position;
        int step;
        float acceleration = 1.0f;
        long lastMoveTime = 0;

        TrackballAxis() {
        }

        void reset(int _step) {
            this.position = 0.0f;
            this.acceleration = 1.0f;
            this.lastMoveTime = 0L;
            this.step = _step;
            this.dir = 0;
        }

        float collect(float off, long time, String axis) {
            long normTime;
            if (off > 0.0f) {
                normTime = (long) (off * 150.0f);
                if (this.dir < 0) {
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.TAG, axis + " reversed to positive!");
                    }
                    this.position = 0.0f;
                    this.step = 0;
                    this.acceleration = 1.0f;
                    this.lastMoveTime = 0L;
                }
                this.dir = 1;
            } else if (off < 0.0f) {
                normTime = (long) ((-off) * 150.0f);
                if (this.dir > 0) {
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.TAG, axis + " reversed to negative!");
                    }
                    this.position = 0.0f;
                    this.step = 0;
                    this.acceleration = 1.0f;
                    this.lastMoveTime = 0L;
                }
                this.dir = -1;
            } else {
                normTime = 0;
            }
            if (normTime > 0) {
                long delta = time - this.lastMoveTime;
                this.lastMoveTime = time;
                float acc = this.acceleration;
                if (delta < normTime) {
                    float scale = (normTime - delta) * ACCEL_MOVE_SCALING_FACTOR;
                    if (scale > 1.0f) {
                        acc *= scale;
                    }
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.TAG, axis + " accelerate: off=" + off + " normTime=" + normTime + " delta=" + delta + " scale=" + scale + " acc=" + acc);
                    }
                    float f = MAX_ACCELERATION;
                    if (acc < MAX_ACCELERATION) {
                        f = acc;
                    }
                    this.acceleration = f;
                } else {
                    float scale2 = (delta - normTime) * ACCEL_MOVE_SCALING_FACTOR;
                    if (scale2 > 1.0f) {
                        acc /= scale2;
                    }
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.TAG, axis + " deccelerate: off=" + off + " normTime=" + normTime + " delta=" + delta + " scale=" + scale2 + " acc=" + acc);
                    }
                    this.acceleration = acc > 1.0f ? acc : 1.0f;
                }
            }
            float f2 = this.position + off;
            this.position = f2;
            return Math.abs(f2);
        }

        int generate() {
            int movement = 0;
            this.nonAccelMovement = 0;
            while (true) {
                float f = this.position;
                int dir = f >= 0.0f ? 1 : -1;
                switch (this.step) {
                    case 0:
                        if (Math.abs(f) < 0.5f) {
                            return movement;
                        }
                        movement += dir;
                        this.nonAccelMovement += dir;
                        this.step = 1;
                        break;
                    case 1:
                        if (Math.abs(f) < SECOND_CUMULATIVE_MOVEMENT_THRESHOLD) {
                            return movement;
                        }
                        movement += dir;
                        this.nonAccelMovement += dir;
                        this.position -= dir * SECOND_CUMULATIVE_MOVEMENT_THRESHOLD;
                        this.step = 2;
                        break;
                    default:
                        if (Math.abs(f) < 1.0f) {
                            return movement;
                        }
                        movement += dir;
                        this.position -= dir * 1.0f;
                        float acc = this.acceleration * 1.1f;
                        this.acceleration = acc < MAX_ACCELERATION ? acc : this.acceleration;
                        break;
                }
            }
        }
    }

    final class SyntheticJoystickHandler extends Handler {
        private static final int MSG_ENQUEUE_X_AXIS_KEY_REPEAT = 1;
        private static final int MSG_ENQUEUE_Y_AXIS_KEY_REPEAT = 2;
        private final SparseArray<KeyEvent> mDeviceKeyEvents;
        private final JoystickAxesState mJoystickAxesState;

        public SyntheticJoystickHandler() {
            super(true);
            this.mJoystickAxesState = new JoystickAxesState();
            this.mDeviceKeyEvents = new SparseArray<>();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                case 2:
                    if (ViewRootImpl.this.mAttachInfo.mHasWindowFocus) {
                        KeyEvent oldEvent = (KeyEvent) msg.obj;
                        KeyEvent e = KeyEvent.changeTimeRepeat(oldEvent, SystemClock.uptimeMillis(), oldEvent.getRepeatCount() + 1);
                        ViewRootImpl.this.enqueueInputEvent(e);
                        Message m = obtainMessage(msg.what, e);
                        m.setAsynchronous(true);
                        sendMessageDelayed(m, ViewConfiguration.getKeyRepeatDelay());
                        break;
                    }
                    break;
            }
        }

        public void process(MotionEvent event) {
            switch (event.getActionMasked()) {
                case 2:
                    update(event);
                    break;
                case 3:
                    cancel();
                    break;
                default:
                    Log.w(ViewRootImpl.this.mTag, "Unexpected action: " + event.getActionMasked());
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() {
            removeMessages(1);
            removeMessages(2);
            for (int i = 0; i < this.mDeviceKeyEvents.size(); i++) {
                KeyEvent keyEvent = this.mDeviceKeyEvents.valueAt(i);
                if (keyEvent != null) {
                    ViewRootImpl.this.enqueueInputEvent(KeyEvent.changeTimeRepeat(keyEvent, SystemClock.uptimeMillis(), 0));
                }
            }
            this.mDeviceKeyEvents.clear();
            this.mJoystickAxesState.resetState();
        }

        private void update(MotionEvent event) {
            int historySize = event.getHistorySize();
            for (int h = 0; h < historySize; h++) {
                long time = event.getHistoricalEventTime(h);
                this.mJoystickAxesState.updateStateForAxis(event, time, 0, event.getHistoricalAxisValue(0, 0, h));
                this.mJoystickAxesState.updateStateForAxis(event, time, 1, event.getHistoricalAxisValue(1, 0, h));
                this.mJoystickAxesState.updateStateForAxis(event, time, 15, event.getHistoricalAxisValue(15, 0, h));
                this.mJoystickAxesState.updateStateForAxis(event, time, 16, event.getHistoricalAxisValue(16, 0, h));
            }
            long time2 = event.getEventTime();
            this.mJoystickAxesState.updateStateForAxis(event, time2, 0, event.getAxisValue(0));
            this.mJoystickAxesState.updateStateForAxis(event, time2, 1, event.getAxisValue(1));
            this.mJoystickAxesState.updateStateForAxis(event, time2, 15, event.getAxisValue(15));
            this.mJoystickAxesState.updateStateForAxis(event, time2, 16, event.getAxisValue(16));
        }

        final class JoystickAxesState {
            private static final int STATE_DOWN_OR_RIGHT = 1;
            private static final int STATE_NEUTRAL = 0;
            private static final int STATE_UP_OR_LEFT = -1;
            final int[] mAxisStatesHat = {0, 0};
            final int[] mAxisStatesStick = {0, 0};

            JoystickAxesState() {
            }

            void resetState() {
                int[] iArr = this.mAxisStatesHat;
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = this.mAxisStatesStick;
                iArr2[0] = 0;
                iArr2[1] = 0;
            }

            void updateStateForAxis(MotionEvent event, long time, int axis, float value) {
                int axisStateIndex;
                int repeatMessage;
                int currentState;
                int keyCode;
                if (isXAxis(axis)) {
                    axisStateIndex = 0;
                    repeatMessage = 1;
                } else if (!isYAxis(axis)) {
                    Log.e(ViewRootImpl.this.mTag, "Unexpected axis " + axis + " in updateStateForAxis!");
                    return;
                } else {
                    axisStateIndex = 1;
                    repeatMessage = 2;
                }
                int newState = joystickAxisValueToState(value);
                if (axis == 0 || axis == 1) {
                    currentState = this.mAxisStatesStick[axisStateIndex];
                } else {
                    currentState = this.mAxisStatesHat[axisStateIndex];
                }
                if (currentState == newState) {
                    return;
                }
                int metaState = event.getMetaState();
                int deviceId = event.getDeviceId();
                int source = event.getSource();
                if (currentState == 1 || currentState == -1) {
                    int keyCode2 = joystickAxisAndStateToKeycode(axis, currentState);
                    if (keyCode2 != 0) {
                        ViewRootImpl.this.enqueueInputEvent(new KeyEvent(time, time, 1, keyCode2, 0, metaState, deviceId, 0, 1024, source));
                        deviceId = deviceId;
                        SyntheticJoystickHandler.this.mDeviceKeyEvents.put(deviceId, null);
                    }
                    SyntheticJoystickHandler.this.removeMessages(repeatMessage);
                }
                if ((newState == 1 || newState == -1) && (keyCode = joystickAxisAndStateToKeycode(axis, newState)) != 0) {
                    int deviceId2 = deviceId;
                    KeyEvent keyEvent = new KeyEvent(time, time, 0, keyCode, 0, metaState, deviceId2, 0, 1024, source);
                    ViewRootImpl.this.enqueueInputEvent(keyEvent);
                    Message m = SyntheticJoystickHandler.this.obtainMessage(repeatMessage, keyEvent);
                    m.setAsynchronous(true);
                    SyntheticJoystickHandler.this.sendMessageDelayed(m, ViewConfiguration.getKeyRepeatTimeout());
                    SyntheticJoystickHandler.this.mDeviceKeyEvents.put(deviceId2, new KeyEvent(time, time, 1, keyCode, 0, metaState, deviceId2, 0, 1056, source));
                }
                if (axis == 0 || axis == 1) {
                    this.mAxisStatesStick[axisStateIndex] = newState;
                } else {
                    this.mAxisStatesHat[axisStateIndex] = newState;
                }
            }

            private boolean isXAxis(int axis) {
                return axis == 0 || axis == 15;
            }

            private boolean isYAxis(int axis) {
                return axis == 1 || axis == 16;
            }

            private int joystickAxisAndStateToKeycode(int axis, int state) {
                if (isXAxis(axis) && state == -1) {
                    return 21;
                }
                if (isXAxis(axis) && state == 1) {
                    return 22;
                }
                if (isYAxis(axis) && state == -1) {
                    return 19;
                }
                if (isYAxis(axis) && state == 1) {
                    return 20;
                }
                Log.e(ViewRootImpl.this.mTag, "Unknown axis " + axis + " or direction " + state);
                return 0;
            }

            private int joystickAxisValueToState(float value) {
                if (value >= 0.5f) {
                    return 1;
                }
                if (value <= -0.5f) {
                    return -1;
                }
                return 0;
            }
        }
    }

    final class SyntheticTouchNavigationHandler extends Handler {
        private static final float DEFAULT_HEIGHT_MILLIMETERS = 48.0f;
        private static final float DEFAULT_WIDTH_MILLIMETERS = 48.0f;
        private static final float FLING_TICK_DECAY = 0.8f;
        private static final boolean LOCAL_DEBUG = false;
        private static final String LOCAL_TAG = "SyntheticTouchNavigationHandler";
        private static final float MAX_FLING_VELOCITY_TICKS_PER_SECOND = 20.0f;
        private static final float MIN_FLING_VELOCITY_TICKS_PER_SECOND = 6.0f;
        private static final int TICK_DISTANCE_MILLIMETERS = 12;
        private float mAccumulatedX;
        private float mAccumulatedY;
        private int mActivePointerId;
        private float mConfigMaxFlingVelocity;
        private float mConfigMinFlingVelocity;
        private float mConfigTickDistance;
        private boolean mConsumedMovement;
        private int mCurrentDeviceId;
        private boolean mCurrentDeviceSupported;
        private int mCurrentSource;
        private final Runnable mFlingRunnable;
        private float mFlingVelocity;
        private boolean mFlinging;
        private float mLastX;
        private float mLastY;
        private int mPendingKeyCode;
        private long mPendingKeyDownTime;
        private int mPendingKeyMetaState;
        private int mPendingKeyRepeatCount;
        private float mStartX;
        private float mStartY;
        private VelocityTracker mVelocityTracker;

        public SyntheticTouchNavigationHandler() {
            super(true);
            this.mCurrentDeviceId = -1;
            this.mActivePointerId = -1;
            this.mPendingKeyCode = 0;
            this.mFlingRunnable = new Runnable() { // from class: android.view.ViewRootImpl.SyntheticTouchNavigationHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    long time = SystemClock.uptimeMillis();
                    SyntheticTouchNavigationHandler syntheticTouchNavigationHandler = SyntheticTouchNavigationHandler.this;
                    syntheticTouchNavigationHandler.sendKeyDownOrRepeat(time, syntheticTouchNavigationHandler.mPendingKeyCode, SyntheticTouchNavigationHandler.this.mPendingKeyMetaState);
                    SyntheticTouchNavigationHandler.this.mFlingVelocity *= 0.8f;
                    if (!SyntheticTouchNavigationHandler.this.postFling(time)) {
                        SyntheticTouchNavigationHandler.this.mFlinging = false;
                        SyntheticTouchNavigationHandler.this.finishKeys(time);
                    }
                }
            };
        }

        public void process(MotionEvent event) {
            long time = event.getEventTime();
            int deviceId = event.getDeviceId();
            int source = event.getSource();
            if (this.mCurrentDeviceId != deviceId || this.mCurrentSource != source) {
                finishKeys(time);
                finishTracking(time);
                this.mCurrentDeviceId = deviceId;
                this.mCurrentSource = source;
                this.mCurrentDeviceSupported = false;
                InputDevice device = event.getDevice();
                if (device != null) {
                    InputDevice.MotionRange xRange = device.getMotionRange(0);
                    InputDevice.MotionRange yRange = device.getMotionRange(1);
                    if (xRange != null && yRange != null) {
                        this.mCurrentDeviceSupported = true;
                        float xRes = xRange.getResolution();
                        if (xRes <= 0.0f) {
                            xRes = xRange.getRange() / 48.0f;
                        }
                        float yRes = yRange.getResolution();
                        if (yRes <= 0.0f) {
                            yRes = yRange.getRange() / 48.0f;
                        }
                        float nominalRes = (xRes + yRes) * 0.5f;
                        float f = 12.0f * nominalRes;
                        this.mConfigTickDistance = f;
                        this.mConfigMinFlingVelocity = f * MIN_FLING_VELOCITY_TICKS_PER_SECOND;
                        this.mConfigMaxFlingVelocity = f * MAX_FLING_VELOCITY_TICKS_PER_SECOND;
                    }
                }
            }
            if (!this.mCurrentDeviceSupported) {
            }
            int action = event.getActionMasked();
            switch (action) {
                case 0:
                    boolean caughtFling = this.mFlinging;
                    finishKeys(time);
                    finishTracking(time);
                    this.mActivePointerId = event.getPointerId(0);
                    VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
                    this.mVelocityTracker = velocityTrackerObtain;
                    velocityTrackerObtain.addMovement(event);
                    this.mStartX = event.getX();
                    float y = event.getY();
                    this.mStartY = y;
                    this.mLastX = this.mStartX;
                    this.mLastY = y;
                    this.mAccumulatedX = 0.0f;
                    this.mAccumulatedY = 0.0f;
                    this.mConsumedMovement = caughtFling;
                    break;
                case 1:
                case 2:
                    int i = this.mActivePointerId;
                    if (i >= 0) {
                        int index = event.findPointerIndex(i);
                        if (index < 0) {
                            finishKeys(time);
                            finishTracking(time);
                            break;
                        } else {
                            this.mVelocityTracker.addMovement(event);
                            float x = event.getX(index);
                            float y2 = event.getY(index);
                            this.mAccumulatedX += x - this.mLastX;
                            this.mAccumulatedY += y2 - this.mLastY;
                            this.mLastX = x;
                            this.mLastY = y2;
                            int metaState = event.getMetaState();
                            consumeAccumulatedMovement(time, metaState);
                            if (action == 1) {
                                if (this.mConsumedMovement && this.mPendingKeyCode != 0) {
                                    this.mVelocityTracker.computeCurrentVelocity(1000, this.mConfigMaxFlingVelocity);
                                    float vx = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
                                    float vy = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
                                    if (!startFling(time, vx, vy)) {
                                        finishKeys(time);
                                    }
                                }
                                finishTracking(time);
                                break;
                            }
                        }
                    }
                    break;
                case 3:
                    finishKeys(time);
                    finishTracking(time);
                    break;
            }
        }

        public void cancel(MotionEvent event) {
            if (this.mCurrentDeviceId == event.getDeviceId() && this.mCurrentSource == event.getSource()) {
                long time = event.getEventTime();
                finishKeys(time);
                finishTracking(time);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void finishKeys(long time) {
            cancelFling();
            sendKeyUp(time);
        }

        private void finishTracking(long time) {
            if (this.mActivePointerId >= 0) {
                this.mActivePointerId = -1;
                this.mVelocityTracker.recycle();
                this.mVelocityTracker = null;
            }
        }

        private void consumeAccumulatedMovement(long time, int metaState) {
            float absX = Math.abs(this.mAccumulatedX);
            float absY = Math.abs(this.mAccumulatedY);
            if (absX >= absY) {
                if (absX >= this.mConfigTickDistance) {
                    this.mAccumulatedX = consumeAccumulatedMovement(time, metaState, this.mAccumulatedX, 21, 22);
                    this.mAccumulatedY = 0.0f;
                    this.mConsumedMovement = true;
                    return;
                }
                return;
            }
            if (absY >= this.mConfigTickDistance) {
                this.mAccumulatedY = consumeAccumulatedMovement(time, metaState, this.mAccumulatedY, 19, 20);
                this.mAccumulatedX = 0.0f;
                this.mConsumedMovement = true;
            }
        }

        private float consumeAccumulatedMovement(long time, int metaState, float accumulator, int negativeKeyCode, int positiveKeyCode) {
            while (accumulator <= (-this.mConfigTickDistance)) {
                sendKeyDownOrRepeat(time, negativeKeyCode, metaState);
                accumulator += this.mConfigTickDistance;
            }
            while (accumulator >= this.mConfigTickDistance) {
                sendKeyDownOrRepeat(time, positiveKeyCode, metaState);
                accumulator -= this.mConfigTickDistance;
            }
            return accumulator;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendKeyDownOrRepeat(long time, int keyCode, int metaState) {
            if (this.mPendingKeyCode == keyCode) {
                this.mPendingKeyRepeatCount++;
            } else {
                sendKeyUp(time);
                this.mPendingKeyDownTime = time;
                this.mPendingKeyCode = keyCode;
                this.mPendingKeyRepeatCount = 0;
            }
            this.mPendingKeyMetaState = metaState;
            ViewRootImpl.this.enqueueInputEvent(new KeyEvent(this.mPendingKeyDownTime, time, 0, this.mPendingKeyCode, this.mPendingKeyRepeatCount, this.mPendingKeyMetaState, this.mCurrentDeviceId, 1024, this.mCurrentSource));
        }

        private void sendKeyUp(long time) {
            if (this.mPendingKeyCode != 0) {
                ViewRootImpl.this.enqueueInputEvent(new KeyEvent(this.mPendingKeyDownTime, time, 1, this.mPendingKeyCode, 0, this.mPendingKeyMetaState, this.mCurrentDeviceId, 0, 1024, this.mCurrentSource));
                this.mPendingKeyCode = 0;
            }
        }

        private boolean startFling(long time, float vx, float vy) {
            switch (this.mPendingKeyCode) {
                case 19:
                    if ((-vy) >= this.mConfigMinFlingVelocity && Math.abs(vx) < this.mConfigMinFlingVelocity) {
                        this.mFlingVelocity = -vy;
                        break;
                    } else {
                        return false;
                    }
                    break;
                case 20:
                    if (vy >= this.mConfigMinFlingVelocity && Math.abs(vx) < this.mConfigMinFlingVelocity) {
                        this.mFlingVelocity = vy;
                        break;
                    } else {
                        return false;
                    }
                    break;
                case 21:
                    if ((-vx) >= this.mConfigMinFlingVelocity && Math.abs(vy) < this.mConfigMinFlingVelocity) {
                        this.mFlingVelocity = -vx;
                        break;
                    } else {
                        return false;
                    }
                    break;
                case 22:
                    if (vx >= this.mConfigMinFlingVelocity && Math.abs(vy) < this.mConfigMinFlingVelocity) {
                        this.mFlingVelocity = vx;
                        break;
                    } else {
                        return false;
                    }
                    break;
            }
            boolean zPostFling = postFling(time);
            this.mFlinging = zPostFling;
            return zPostFling;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean postFling(long time) {
            float f = this.mFlingVelocity;
            if (f >= this.mConfigMinFlingVelocity) {
                long delay = (long) ((this.mConfigTickDistance / f) * 1000.0f);
                postAtTime(this.mFlingRunnable, time + delay);
                return true;
            }
            return false;
        }

        private void cancelFling() {
            if (this.mFlinging) {
                removeCallbacks(this.mFlingRunnable);
                this.mFlinging = false;
            }
        }
    }

    final class SyntheticKeyboardHandler {
        SyntheticKeyboardHandler() {
        }

        public void process(KeyEvent event) {
            if ((event.getFlags() & 1024) != 0) {
                return;
            }
            KeyCharacterMap kcm = event.getKeyCharacterMap();
            int keyCode = event.getKeyCode();
            int metaState = event.getMetaState();
            KeyCharacterMap.FallbackAction fallbackAction = kcm.getFallbackAction(keyCode, metaState);
            if (fallbackAction != null) {
                int flags = event.getFlags() | 1024;
                KeyEvent fallbackEvent = KeyEvent.obtain(event.getDownTime(), event.getEventTime(), event.getAction(), fallbackAction.keyCode, event.getRepeatCount(), fallbackAction.metaState, event.getDeviceId(), event.getScanCode(), flags, event.getSource(), null);
                fallbackAction.recycle();
                ViewRootImpl.this.enqueueInputEvent(fallbackEvent);
            }
        }
    }

    private static boolean isNavigationKey(KeyEvent keyEvent) {
        switch (keyEvent.getKeyCode()) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 61:
            case 62:
            case 66:
            case 92:
            case 93:
            case 122:
            case 123:
                return true;
            default:
                return false;
        }
    }

    private static boolean isTypingKey(KeyEvent keyEvent) {
        return keyEvent.getUnicodeChar() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkForLeavingTouchModeAndConsume(KeyEvent event) {
        if (!this.mAttachInfo.mInTouchMode) {
            return false;
        }
        int action = event.getAction();
        if ((action != 0 && action != 2) || (event.getFlags() & 4) != 0) {
            return false;
        }
        if (event.hasNoModifiers() && isNavigationKey(event)) {
            return ensureTouchMode(false);
        }
        if (!isTypingKey(event)) {
            return false;
        }
        ensureTouchMode(false);
        return false;
    }

    void setLocalDragState(Object obj) {
        this.mLocalDragState = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDragEvent(DragEvent event) {
        if (this.mView != null && this.mAdded) {
            int what = event.mAction;
            if (what == 1) {
                this.mCurrentDragView = null;
                this.mDragDescription = event.mClipDescription;
                View view = this.mStartedDragViewForA11y;
                if (view != null) {
                    view.sendWindowContentChangedAccessibilityEvent(128);
                }
            } else {
                if (what == 4) {
                    this.mDragDescription = null;
                }
                event.mClipDescription = this.mDragDescription;
            }
            if (what == 6) {
                if (View.sCascadedDragDrop) {
                    this.mView.dispatchDragEnterExitInPreN(event);
                }
                setDragFocus(null, event);
            } else {
                if (what == 2 || what == 3) {
                    this.mDragPoint.set(event.mX, event.mY);
                    CompatibilityInfo.Translator translator = this.mTranslator;
                    if (translator != null) {
                        translator.translatePointInScreenToAppWindow(this.mDragPoint);
                    }
                    int i = this.mCurScrollY;
                    if (i != 0) {
                        this.mDragPoint.offset(0.0f, i);
                    }
                    event.mX = this.mDragPoint.x;
                    event.mY = this.mDragPoint.y;
                }
                View prevDragView = this.mCurrentDragView;
                if (what == 3 && event.mClipData != null) {
                    event.mClipData.prepareToEnterProcess(this.mView.getContext().getAttributionSource());
                }
                boolean result = this.mView.dispatchDragEvent(event);
                if (what == 2 && !event.mEventHandlerWasCalled) {
                    setDragFocus(null, event);
                }
                if (prevDragView != this.mCurrentDragView) {
                    if (prevDragView != null) {
                        try {
                            this.mWindowSession.dragRecipientExited(this.mWindow);
                        } catch (RemoteException e) {
                            Slog.e(this.mTag, "Unable to note drag target change");
                        }
                    }
                    if (this.mCurrentDragView != null) {
                        this.mWindowSession.dragRecipientEntered(this.mWindow);
                    }
                }
                if (what == 3) {
                    try {
                        Log.i(this.mTag, "Reporting drop result: " + result);
                        this.mWindowSession.reportDropResult(this.mWindow, result);
                    } catch (RemoteException e2) {
                        Log.e(this.mTag, "Unable to report drop result");
                    }
                }
                if (what == 4) {
                    if (this.mStartedDragViewForA11y != null) {
                        if (!event.getResult()) {
                            this.mStartedDragViewForA11y.sendWindowContentChangedAccessibilityEvent(512);
                        }
                        this.mStartedDragViewForA11y.setAccessibilityDragStarted(false);
                    }
                    this.mStartedDragViewForA11y = null;
                    this.mCurrentDragView = null;
                    setLocalDragState(null);
                    this.mAttachInfo.mDragToken = null;
                    if (this.mAttachInfo.mDragSurface != null) {
                        this.mAttachInfo.mDragSurface.release();
                        this.mAttachInfo.mDragSurface = null;
                    }
                }
            }
        }
        event.recycle();
    }

    public void onWindowTitleChanged() {
        this.mAttachInfo.mForceReportNewAttributes = true;
    }

    public void handleDispatchWindowShown() {
        this.mAttachInfo.mTreeObserver.dispatchOnWindowShown();
    }

    public void handleRequestKeyboardShortcuts(IResultReceiver receiver, int deviceId) {
        Bundle data = new Bundle();
        ArrayList<KeyboardShortcutGroup> list = new ArrayList<>();
        View view = this.mView;
        if (view != null) {
            view.requestKeyboardShortcuts(list, deviceId);
        }
        data.putParcelableArrayList(WindowManager.PARCEL_KEY_SHORTCUTS_ARRAY, list);
        try {
            receiver.send(0, data);
        } catch (RemoteException e) {
        }
    }

    public void getLastTouchPoint(Point outLocation) {
        outLocation.x = (int) this.mLastTouchPoint.x;
        outLocation.y = (int) this.mLastTouchPoint.y;
    }

    public int getLastTouchSource() {
        return this.mLastTouchSource;
    }

    public void setDragFocus(View newDragTarget, DragEvent event) {
        if (this.mCurrentDragView != newDragTarget && !View.sCascadedDragDrop) {
            float tx = event.mX;
            float ty = event.mY;
            int action = event.mAction;
            ClipData td = event.mClipData;
            event.mX = 0.0f;
            event.mY = 0.0f;
            event.mClipData = null;
            if (this.mCurrentDragView != null) {
                event.mAction = 6;
                this.mCurrentDragView.callDragEventHandler(event);
            }
            if (newDragTarget != null) {
                event.mAction = 5;
                newDragTarget.callDragEventHandler(event);
            }
            event.mAction = action;
            event.mX = tx;
            event.mY = ty;
            event.mClipData = td;
        }
        this.mCurrentDragView = newDragTarget;
    }

    void setDragStartedViewForAccessibility(View view) {
        if (this.mStartedDragViewForA11y == null) {
            this.mStartedDragViewForA11y = view;
        }
    }

    private AudioManager getAudioManager() {
        View view = this.mView;
        if (view == null) {
            throw new IllegalStateException("getAudioManager called when there is no mView");
        }
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) view.getContext().getSystemService("audio");
        }
        return this.mAudioManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AutofillManager getAutofillManager() {
        View view = this.mView;
        if (view instanceof ViewGroup) {
            ViewGroup decorView = (ViewGroup) view;
            if (decorView.getChildCount() > 0) {
                return (AutofillManager) decorView.getChildAt(0).getContext().getSystemService(AutofillManager.class);
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAutofillUiShowing() {
        AutofillManager afm = getAutofillManager();
        if (afm == null) {
            return false;
        }
        return afm.isAutofillUiShowing();
    }

    public AccessibilityInteractionController getAccessibilityInteractionController() {
        if (this.mView == null) {
            throw new IllegalStateException("getAccessibilityInteractionController called when there is no mView");
        }
        if (this.mAccessibilityInteractionController == null) {
            this.mAccessibilityInteractionController = new AccessibilityInteractionController(this);
        }
        return this.mAccessibilityInteractionController;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int relayoutWindow(WindowManager.LayoutParams layoutParams, int i, boolean z) throws RemoteException {
        Object[] objArr;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        this.mRelayoutRequested = true;
        float f = this.mAttachInfo.mApplicationScale;
        if (layoutParams != null && this.mTranslator != null) {
            layoutParams.backup();
            this.mTranslator.translateWindowLayout(layoutParams);
            objArr = true;
        } else {
            objArr = false;
        }
        if (layoutParams != null) {
            if (DBG) {
                Log.d(this.mTag, "WindowLayout in layoutWindow:" + layoutParams);
            }
            if (this.mOrigWindowType != layoutParams.type && this.mTargetSdkVersion < 14) {
                Slog.w(this.mTag, "Window type can not be changed after the window is added; ignoring change of " + this.mView);
                layoutParams.type = this.mOrigWindowType;
            }
        }
        int measuredWidth = (int) ((this.mView.getMeasuredWidth() * f) + 0.5f);
        int measuredHeight = (int) ((this.mView.getMeasuredHeight() * f) + 0.5f);
        WindowConfiguration windowConfiguration = getConfiguration().windowConfiguration;
        if (LOCAL_LAYOUT) {
            if (this.mFirst || i != this.mViewVisibility) {
                int iUpdateVisibility = this.mWindowSession.updateVisibility(this.mWindow, layoutParams, i, this.mPendingMergedConfiguration, this.mSurfaceControl, this.mTempInsets, this.mTempControls);
                CompatibilityInfo.Translator translator = this.mTranslator;
                if (translator != null) {
                    translator.translateInsetsStateInScreenToAppWindow(this.mTempInsets);
                    this.mTranslator.translateSourceControlsInScreenToAppWindow(this.mTempControls);
                }
                this.mInsetsController.onStateChanged(this.mTempInsets);
                this.mInsetsController.onControlsChanged(this.mTempControls);
                this.mPendingAlwaysConsumeSystemBars = (iUpdateVisibility & 8) != 0;
                i6 = iUpdateVisibility;
            } else {
                i6 = 0;
            }
            InsetsState state = this.mInsetsController.getState();
            Rect rect = this.mTempRect;
            state.getDisplayCutoutSafe(rect);
            if (this.mWindowAttributes.type == 3) {
                windowConfiguration = this.mPendingMergedConfiguration.getMergedConfiguration().windowConfiguration;
            }
            this.mWindowLayout.computeFrames(this.mWindowAttributes, state, rect, windowConfiguration.getBounds(), windowConfiguration.getWindowingMode(), measuredWidth, measuredHeight, this.mInsetsController.getRequestedVisibilities(), getAttachedWindowFrame(), 1.0f, this.mTmpFrames);
            this.mWindowSession.updateLayout(this.mWindow, layoutParams, z ? 1 : 0, this.mTmpFrames, measuredWidth, measuredHeight);
            i4 = i6;
            i2 = measuredHeight;
            i3 = measuredWidth;
        } else {
            i2 = measuredHeight;
            i3 = measuredWidth;
            int iRelayout = this.mWindowSession.relayout(this.mWindow, layoutParams, measuredWidth, measuredHeight, i, z ? 1 : 0, this.mTmpFrames, this.mPendingMergedConfiguration, this.mSurfaceControl, this.mTempInsets, this.mTempControls, this.mRelayoutBundle);
            int i7 = this.mRelayoutBundle.getInt("seqid");
            if (i7 > 0) {
                this.mSyncSeqId = i7;
            }
            this.mViewRootImplExt.updateSplitScreenImmersiveFlag(this.mRelayoutBundle);
            CompatibilityInfo.Translator translator2 = this.mTranslator;
            if (translator2 != null) {
                translator2.translateRectInScreenToAppWindow(this.mTmpFrames.frame);
                this.mTranslator.translateRectInScreenToAppWindow(this.mTmpFrames.displayFrame);
                this.mTranslator.translateInsetsStateInScreenToAppWindow(this.mTempInsets);
                this.mTranslator.translateSourceControlsInScreenToAppWindow(this.mTempControls);
            }
            this.mInsetsController.onStateChanged(this.mTempInsets);
            this.mInsetsController.onControlsChanged(this.mTempControls);
            this.mPendingAlwaysConsumeSystemBars = (iRelayout & 8) != 0;
            i4 = iRelayout;
            windowConfiguration = windowConfiguration;
        }
        int iRotationToBufferTransform = SurfaceControl.rotationToBufferTransform((this.mDisplayInstallOrientation + this.mDisplay.getRotation()) % 4);
        WindowLayout.computeSurfaceSize(this.mWindowAttributes, windowConfiguration.getMaxBounds(), i3, i2, this.mTmpFrames.frame, this.mPendingDragResizing, this.mSurfaceSize);
        boolean z2 = iRotationToBufferTransform != this.mLastTransformHint;
        boolean z3 = !this.mLastSurfaceSize.equals(this.mSurfaceSize);
        boolean z4 = (i4 & 2) == 2;
        if (this.mAttachInfo.mThreadedRenderer == null) {
            i5 = 0;
        } else if ((z2 || z3 || z4) && this.mAttachInfo.mThreadedRenderer.pause()) {
            i5 = 0;
            this.mDirty.set(0, 0, this.mWidth, this.mHeight);
        } else {
            i5 = 0;
        }
        this.mLastTransformHint = iRotationToBufferTransform;
        this.mSurfaceControl.setTransformHint(iRotationToBufferTransform);
        if (this.mAttachInfo.mContentCaptureManager != null) {
            MainContentCaptureSession mainContentCaptureSession = this.mAttachInfo.mContentCaptureManager.getMainContentCaptureSession();
            mainContentCaptureSession.notifyWindowBoundsChanged(mainContentCaptureSession.getId(), getConfiguration().windowConfiguration.getBounds());
        }
        this.mViewRootImplExt.refreshForceDark(this.mView, this.mPendingMergedConfiguration.mOplusDarkModeData);
        if (this.mSurfaceControl.isValid()) {
            if (!useBLAST()) {
                this.mSurface.copyFrom(this.mSurfaceControl);
            } else {
                updateBlastSurfaceIfNeeded();
            }
            if (this.mAttachInfo.mThreadedRenderer != null) {
                this.mAttachInfo.mThreadedRenderer.setSurfaceControl(this.mSurfaceControl);
                this.mAttachInfo.mThreadedRenderer.setBlastBufferQueue(this.mBlastBufferQueue);
            }
            if (this.mPreviousTransformHint != iRotationToBufferTransform) {
                this.mPreviousTransformHint = iRotationToBufferTransform;
                dispatchTransformHintChanged(iRotationToBufferTransform);
            }
        } else {
            if (this.mAttachInfo.mThreadedRenderer != null && this.mAttachInfo.mThreadedRenderer.pause()) {
                this.mDirty.set(i5, i5, this.mWidth, this.mHeight);
            }
            destroySurface();
        }
        if (objArr != false) {
            layoutParams.restore();
        }
        setFrame(this.mTmpFrames.frame);
        return i4;
    }

    private void updateOpacity(WindowManager.LayoutParams params, boolean dragResizing, boolean forceUpdate) {
        boolean opaque = false;
        if (!PixelFormat.formatHasAlpha(params.format) && params.surfaceInsets.left == 0 && params.surfaceInsets.top == 0 && params.surfaceInsets.right == 0 && params.surfaceInsets.bottom == 0 && !dragResizing) {
            opaque = true;
        }
        if (!forceUpdate && this.mIsSurfaceOpaque == opaque) {
            return;
        }
        ThreadedRenderer renderer = this.mAttachInfo.mThreadedRenderer;
        if (renderer != null && renderer.rendererOwnsSurfaceControlOpacity()) {
            opaque = renderer.setSurfaceControlOpaque(opaque);
        } else {
            this.mTransaction.setOpaque(this.mSurfaceControl, opaque).apply();
        }
        this.mIsSurfaceOpaque = opaque;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFrame(Rect frame) {
        Rect maxBounds;
        this.mWinFrame.set(frame);
        WindowConfiguration winConfig = getConfiguration().windowConfiguration;
        Rect rect = this.mPendingBackDropFrame;
        if (this.mPendingDragResizing && !winConfig.useWindowFrameForBackdrop()) {
            maxBounds = winConfig.getMaxBounds();
        } else {
            maxBounds = frame;
        }
        rect.set(maxBounds);
        this.mPendingBackDropFrame.offsetTo(0, 0);
        InsetsController insetsController = this.mInsetsController;
        Rect rect2 = this.mOverrideInsetsFrame;
        if (rect2 == null) {
            rect2 = frame;
        }
        insetsController.onFrameChanged(rect2);
        this.mViewRootImplExt.setScrollToTopWinFrame(frame);
    }

    void setOverrideInsetsFrame(Rect frame) {
        Rect rect = new Rect(frame);
        this.mOverrideInsetsFrame = rect;
        this.mInsetsController.onFrameChanged(rect);
    }

    void getDisplayFrame(Rect outFrame) {
        outFrame.set(this.mTmpFrames.displayFrame);
    }

    void getWindowVisibleDisplayFrame(Rect outFrame) {
        outFrame.set(this.mTmpFrames.displayFrame);
        Rect insets = this.mAttachInfo.mVisibleInsets;
        outFrame.left += insets.left;
        outFrame.top += insets.top;
        outFrame.right -= insets.right;
        outFrame.bottom -= insets.bottom;
    }

    @Override // android.view.View.AttachInfo.Callbacks
    public void playSoundEffect(int effectId) {
        if ((this.mDisplay.getFlags() & 1024) != 0) {
            return;
        }
        checkThread();
        try {
            AudioManager audioManager = getAudioManager();
            if (this.mFastScrollSoundEffectsEnabled && SoundEffectConstants.isNavigationRepeat(effectId)) {
                audioManager.playSoundEffect(SoundEffectConstants.nextNavigationRepeatSoundEffectId());
                return;
            }
            switch (effectId) {
                case 0:
                    audioManager.playSoundEffect(0);
                    return;
                case 1:
                case 5:
                    audioManager.playSoundEffect(3);
                    return;
                case 2:
                case 6:
                    audioManager.playSoundEffect(1);
                    return;
                case 3:
                case 7:
                    audioManager.playSoundEffect(4);
                    return;
                case 4:
                case 8:
                    audioManager.playSoundEffect(2);
                    return;
                default:
                    throw new IllegalArgumentException("unknown effect id " + effectId + " not defined in " + SoundEffectConstants.class.getCanonicalName());
            }
        } catch (IllegalStateException e) {
            Log.e(this.mTag, "FATAL EXCEPTION when attempting to play sound effect: " + e);
            e.printStackTrace();
        }
    }

    @Override // android.view.View.AttachInfo.Callbacks
    public boolean performHapticFeedback(int effectId, boolean always) {
        if ((this.mDisplay.getFlags() & 1024) != 0) {
            return false;
        }
        try {
            return this.mWindowSession.performHapticFeedback(effectId, always);
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // android.view.ViewParent
    public View focusSearch(View focused, int direction) {
        checkThread();
        if (!(this.mView instanceof ViewGroup)) {
            return null;
        }
        return FocusFinder.getInstance().findNextFocus((ViewGroup) this.mView, focused, direction);
    }

    @Override // android.view.ViewParent
    public View keyboardNavigationClusterSearch(View currentCluster, int direction) {
        checkThread();
        return FocusFinder.getInstance().findNextKeyboardNavigationCluster(this.mView, currentCluster, direction);
    }

    public void debug() {
        this.mView.debug();
    }

    public void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1138166333441L, Objects.toString(this.mView));
        proto.write(1120986464258L, this.mDisplay.getDisplayId());
        proto.write(1133871366147L, this.mAppVisible);
        proto.write(1120986464261L, this.mHeight);
        proto.write(1120986464260L, this.mWidth);
        proto.write(1133871366150L, this.mIsAnimating);
        this.mVisRect.dumpDebug(proto, 1146756268039L);
        proto.write(1133871366152L, this.mIsDrawing);
        proto.write(1133871366153L, this.mAdded);
        this.mWinFrame.dumpDebug(proto, 1146756268042L);
        proto.write(1138166333452L, Objects.toString(this.mLastWindowInsets));
        proto.write(1138166333453L, InputMethodDebug.softInputModeToString(this.mSoftInputMode));
        proto.write(1120986464270L, this.mScrollY);
        proto.write(1120986464271L, this.mCurScrollY);
        proto.write(1133871366160L, this.mRemoved);
        this.mWindowAttributes.dumpDebug(proto, 1146756268049L);
        proto.end(token);
        this.mInsetsController.dumpDebug(proto, 1146756268036L);
        this.mImeFocusController.dumpDebug(proto, 1146756268039L);
    }

    public void dump(String prefix, PrintWriter writer) {
        String innerPrefix = prefix + "  ";
        writer.println(prefix + "ViewRoot:");
        writer.println(innerPrefix + "mAdded=" + this.mAdded);
        writer.println(innerPrefix + "mRemoved=" + this.mRemoved);
        writer.println(innerPrefix + "mStopped=" + this.mStopped);
        writer.println(innerPrefix + "mPausedForTransition=" + this.mPausedForTransition);
        writer.println(innerPrefix + "mConsumeBatchedInputScheduled=" + this.mConsumeBatchedInputScheduled);
        writer.println(innerPrefix + "mConsumeBatchedInputImmediatelyScheduled=" + this.mConsumeBatchedInputImmediatelyScheduled);
        writer.println(innerPrefix + "mPendingInputEventCount=" + this.mPendingInputEventCount);
        writer.println(innerPrefix + "mProcessInputEventsScheduled=" + this.mProcessInputEventsScheduled);
        writer.println(innerPrefix + "mTraversalScheduled=" + this.mTraversalScheduled);
        if (this.mTraversalScheduled) {
            writer.println(innerPrefix + " (barrier=" + this.mTraversalBarrier + NavigationBarInflaterView.KEY_CODE_END);
        }
        writer.println(innerPrefix + "mIsAmbientMode=" + this.mIsAmbientMode);
        writer.println(innerPrefix + "mUnbufferedInputSource=" + Integer.toHexString(this.mUnbufferedInputSource));
        if (this.mAttachInfo != null) {
            writer.print(innerPrefix + "mAttachInfo= ");
            this.mAttachInfo.dump(innerPrefix, writer);
        } else {
            writer.println(innerPrefix + "mAttachInfo=<null>");
        }
        this.mFirstInputStage.dump(innerPrefix, writer);
        WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
        if (windowInputEventReceiver != null) {
            windowInputEventReceiver.dump(innerPrefix, writer);
        }
        this.mChoreographer.dump(prefix, writer);
        this.mInsetsController.dump(prefix, writer);
        writer.println(prefix + "View Hierarchy:");
        dumpViewHierarchy(innerPrefix, writer, this.mView);
    }

    private void dumpViewHierarchy(String prefix, PrintWriter writer, View view) {
        ViewGroup grp;
        int N;
        writer.print(prefix);
        if (view == null) {
            writer.println("null");
            return;
        }
        writer.println(view.toString());
        if (!(view instanceof ViewGroup) || (N = (grp = (ViewGroup) view).getChildCount()) <= 0) {
            return;
        }
        String prefix2 = prefix + "  ";
        for (int i = 0; i < N; i++) {
            dumpViewHierarchy(prefix2, writer, grp.getChildAt(i));
        }
    }

    static final class GfxInfo {
        public long renderNodeMemoryAllocated;
        public long renderNodeMemoryUsage;
        public int viewCount;

        GfxInfo() {
        }

        void add(GfxInfo other) {
            this.viewCount += other.viewCount;
            this.renderNodeMemoryUsage += other.renderNodeMemoryUsage;
            this.renderNodeMemoryAllocated += other.renderNodeMemoryAllocated;
        }
    }

    GfxInfo getGfxInfo() {
        GfxInfo info = new GfxInfo();
        View view = this.mView;
        if (view != null) {
            appendGfxInfo(view, info);
        }
        return info;
    }

    private static void computeRenderNodeUsage(RenderNode node, GfxInfo info) {
        if (node == null) {
            return;
        }
        info.renderNodeMemoryUsage += node.computeApproximateMemoryUsage();
        info.renderNodeMemoryAllocated += node.computeApproximateMemoryAllocated();
    }

    private static void appendGfxInfo(View view, GfxInfo info) {
        info.viewCount++;
        computeRenderNodeUsage(view.mRenderNode, info);
        computeRenderNodeUsage(view.mBackgroundRenderNode, info);
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            int count = group.getChildCount();
            for (int i = 0; i < count; i++) {
                appendGfxInfo(group.getChildAt(i), info);
            }
        }
    }

    boolean die(boolean immediate) {
        if (immediate && !this.mIsInTraversal) {
            doDie();
            return false;
        }
        if (!this.mIsDrawing) {
            destroyHardwareRenderer();
        } else {
            Log.e(this.mTag, "Attempting to destroy the window while drawing!\n  window=" + this + ", title=" + ((Object) this.mWindowAttributes.getTitle()));
        }
        this.mHandler.sendEmptyMessage(3);
        return true;
    }

    void doDie() {
        checkThread();
        if (LOCAL_LOGV) {
            Log.v(this.mTag, "DIE in " + this + " of " + this.mSurface);
        }
        synchronized (this) {
            if (this.mRemoved) {
                return;
            }
            this.mViewRootImplExt.onWindowDying();
            this.mRemoved = true;
            this.mOnBackInvokedDispatcher.detachFromWindow();
            if (this.mAdded) {
                dispatchDetachedFromWindow();
            }
            if (this.mAdded && !this.mFirst) {
                destroyHardwareRenderer();
                View view = this.mView;
                if (view != null) {
                    int viewVisibility = view.getVisibility();
                    boolean viewVisibilityChanged = this.mViewVisibility != viewVisibility;
                    if (this.mWindowAttributesChanged || viewVisibilityChanged) {
                        try {
                            if ((1 & relayoutWindow(this.mWindowAttributes, viewVisibility, false)) != 0) {
                                this.mWindowSession.finishDrawing(this.mWindow, null, Integer.MAX_VALUE);
                            }
                        } catch (RemoteException e) {
                        }
                    }
                    destroySurface();
                }
            }
            this.mInsetsController.onControlsChanged(null);
            this.mAdded = false;
            AnimationHandler.removeRequestor(this);
            WindowManagerGlobal.getInstance().doRemoveView(this);
        }
    }

    public void requestUpdateConfiguration(Configuration config) {
        Message msg = this.mHandler.obtainMessage(18, config);
        this.mHandler.sendMessage(msg);
    }

    public void loadSystemProperties() {
        this.mHandler.post(new Runnable() { // from class: android.view.ViewRootImpl.7
            @Override // java.lang.Runnable
            public void run() {
                ViewRootImpl.this.mProfileRendering = SystemProperties.getBoolean(ViewRootImpl.PROPERTY_PROFILE_RENDERING, false);
                ViewRootImpl viewRootImpl = ViewRootImpl.this;
                viewRootImpl.profileRendering(viewRootImpl.mAttachInfo.mHasWindowFocus);
                if (ViewRootImpl.this.mAttachInfo.mThreadedRenderer != null && ViewRootImpl.this.mAttachInfo.mThreadedRenderer.loadSystemProperties()) {
                    ViewRootImpl.this.invalidate();
                }
                boolean layout = DisplayProperties.debug_layout().orElse(false).booleanValue();
                if (layout != ViewRootImpl.this.mAttachInfo.mDebugLayout) {
                    ViewRootImpl.this.mAttachInfo.mDebugLayout = layout;
                    if (!ViewRootImpl.this.mHandler.hasMessages(22)) {
                        ViewRootImpl.this.mHandler.sendEmptyMessageDelayed(22, 200L);
                    }
                }
            }
        });
    }

    private void destroyHardwareRenderer() {
        ThreadedRenderer hardwareRenderer = this.mAttachInfo.mThreadedRenderer;
        if (hardwareRenderer != null) {
            HardwareRendererObserver hardwareRendererObserver = this.mHardwareRendererObserver;
            if (hardwareRendererObserver != null) {
                hardwareRenderer.removeObserver(hardwareRendererObserver);
            }
            View view = this.mView;
            if (view != null) {
                hardwareRenderer.destroyHardwareResources(view);
            }
            hardwareRenderer.destroy();
            hardwareRenderer.setRequested(false);
            this.mAttachInfo.mThreadedRenderer = null;
            this.mAttachInfo.mHardwareAccelerated = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchResized(ClientWindowFrames clientWindowFrames, boolean z, MergedConfiguration mergedConfiguration, InsetsState insetsState, boolean z2, boolean z3, int i, int i2, int i3) {
        InsetsState insetsState2;
        Message messageObtainMessage = this.mHandler.obtainMessage(z ? 5 : 4);
        SomeArgs someArgsObtain = SomeArgs.obtain();
        boolean z4 = Binder.getCallingPid() == Process.myPid();
        if (!z4) {
            insetsState2 = insetsState;
        } else {
            insetsState2 = new InsetsState(insetsState, true);
        }
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateInsetsStateInScreenToAppWindow(insetsState2);
        }
        if (insetsState2.getSourceOrDefaultVisibility(19)) {
            ImeTracing.getInstance().triggerClientDump("ViewRootImpl#dispatchResized", getInsetsController().getHost().getInputMethodManager(), null);
        }
        someArgsObtain.arg1 = z4 ? new ClientWindowFrames(clientWindowFrames) : clientWindowFrames;
        someArgsObtain.arg2 = (!z4 || mergedConfiguration == null) ? mergedConfiguration : new MergedConfiguration(mergedConfiguration);
        someArgsObtain.arg3 = insetsState2;
        someArgsObtain.argi1 = z2 ? 1 : 0;
        someArgsObtain.argi2 = z3 ? 1 : 0;
        someArgsObtain.argi3 = i;
        someArgsObtain.argi4 = i2;
        someArgsObtain.argi5 = i3;
        messageObtainMessage.obj = someArgsObtain;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchInsetsControlChanged(InsetsState insetsState, InsetsSourceControl[] activeControls) {
        if (Binder.getCallingPid() == Process.myPid()) {
            insetsState = new InsetsState(insetsState, true);
            if (activeControls != null) {
                for (int i = activeControls.length - 1; i >= 0; i--) {
                    if (activeControls[i] != null) {
                        activeControls[i] = new InsetsSourceControl(activeControls[i]);
                    }
                }
            }
        }
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateInsetsStateInScreenToAppWindow(insetsState);
            this.mTranslator.translateSourceControlsInScreenToAppWindow(activeControls);
        }
        if (insetsState != null && insetsState.getSourceOrDefaultVisibility(19)) {
            ImeTracing.getInstance().triggerClientDump("ViewRootImpl#dispatchInsetsControlChanged", getInsetsController().getHost().getInputMethodManager(), null);
        }
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = insetsState;
        args.arg2 = activeControls;
        this.mHandler.obtainMessage(29, args).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showInsets(int i, boolean z) {
        this.mHandler.obtainMessage(31, i, z ? 1 : 0).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideInsets(int i, boolean z) {
        this.mHandler.obtainMessage(32, i, z ? 1 : 0).sendToTarget();
    }

    public void dispatchMoved(int newX, int newY) {
        if (DEBUG_LAYOUT) {
            Log.v(this.mTag, "Window moved " + this + ": newX=" + newX + " newY=" + newY);
        }
        if (this.mTranslator != null) {
            PointF point = new PointF(newX, newY);
            this.mTranslator.translatePointInScreenToAppWindow(point);
            newX = (int) (point.x + 0.5d);
            newY = (int) (point.y + 0.5d);
        }
        Message msg = this.mHandler.obtainMessage(23, newX, newY);
        this.mHandler.sendMessage(msg);
    }

    private static final class QueuedInputEvent {
        public static final int FLAG_DEFERRED = 2;
        public static final int FLAG_DELIVER_POST_IME = 1;
        public static final int FLAG_FINISHED = 4;
        public static final int FLAG_FINISHED_HANDLED = 8;
        public static final int FLAG_MODIFIED_FOR_COMPATIBILITY = 64;
        public static final int FLAG_RESYNTHESIZED = 16;
        public static final int FLAG_UNHANDLED = 32;
        public InputEvent mEvent;
        public int mFlags;
        public QueuedInputEvent mNext;
        public InputEventReceiver mReceiver;

        private QueuedInputEvent() {
        }

        public boolean shouldSkipIme() {
            if ((this.mFlags & 1) != 0) {
                return true;
            }
            InputEvent inputEvent = this.mEvent;
            return (inputEvent instanceof MotionEvent) && (inputEvent.isFromSource(2) || this.mEvent.isFromSource(4194304));
        }

        public boolean shouldSendToSynthesizer() {
            if ((this.mFlags & 32) != 0) {
                return true;
            }
            return false;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("QueuedInputEvent{flags=");
            boolean hasPrevious = flagToString("DELIVER_POST_IME", 1, false, sb);
            if (!flagToString("UNHANDLED", 32, flagToString("RESYNTHESIZED", 16, flagToString("FINISHED_HANDLED", 8, flagToString("FINISHED", 4, flagToString("DEFERRED", 2, hasPrevious, sb), sb), sb), sb), sb)) {
                sb.append("0");
            }
            sb.append(", hasNextQueuedEvent=" + (this.mEvent != null ? "true" : "false"));
            sb.append(", hasInputEventReceiver=" + (this.mReceiver == null ? "false" : "true"));
            sb.append(", mEvent=" + this.mEvent + "}");
            return sb.toString();
        }

        private boolean flagToString(String name, int flag, boolean hasPrevious, StringBuilder sb) {
            if ((this.mFlags & flag) != 0) {
                if (hasPrevious) {
                    sb.append("|");
                }
                sb.append(name);
                return true;
            }
            return hasPrevious;
        }
    }

    private QueuedInputEvent obtainQueuedInputEvent(InputEvent event, InputEventReceiver receiver, int flags) {
        QueuedInputEvent q = this.mQueuedInputEventPool;
        if (q != null) {
            this.mQueuedInputEventPoolSize--;
            this.mQueuedInputEventPool = q.mNext;
            q.mNext = null;
        } else {
            q = new QueuedInputEvent();
        }
        q.mEvent = event;
        q.mReceiver = receiver;
        q.mFlags = flags;
        return q;
    }

    private void recycleQueuedInputEvent(QueuedInputEvent q) {
        q.mEvent = null;
        q.mReceiver = null;
        int i = this.mQueuedInputEventPoolSize;
        if (i < 10) {
            this.mQueuedInputEventPoolSize = i + 1;
            q.mNext = this.mQueuedInputEventPool;
            this.mQueuedInputEventPool = q;
        }
    }

    void enqueueInputEvent(InputEvent event) {
        enqueueInputEvent(event, null, 0, false);
    }

    void enqueueInputEvent(InputEvent event, InputEventReceiver receiver, int flags, boolean processImmediately) {
        QueuedInputEvent q = obtainQueuedInputEvent(event, receiver, flags);
        if (event instanceof MotionEvent) {
            MotionEvent me = (MotionEvent) event;
            if (me.getAction() == 3) {
                EventLog.writeEvent(EventLogTags.VIEW_ENQUEUE_INPUT_EVENT, "Motion - Cancel", getTitle().toString());
            }
        } else if (event instanceof KeyEvent) {
            KeyEvent ke = (KeyEvent) event;
            if (ke.isCanceled()) {
                EventLog.writeEvent(EventLogTags.VIEW_ENQUEUE_INPUT_EVENT, "Key - Cancel", getTitle().toString());
            }
        }
        QueuedInputEvent last = this.mPendingInputEventTail;
        if (last == null) {
            this.mPendingInputEventHead = q;
            this.mPendingInputEventTail = q;
        } else {
            last.mNext = q;
            this.mPendingInputEventTail = q;
        }
        int i = this.mPendingInputEventCount + 1;
        this.mPendingInputEventCount = i;
        Trace.traceCounter(4L, this.mPendingInputEventQueueLengthCounterName, i);
        this.mViewRootImplExt.debugInputEventEnqueue(this.mTag, event, processImmediately, this.mProcessInputEventsScheduled);
        if (processImmediately) {
            doProcessInputEvents();
        } else {
            scheduleProcessInputEvents();
        }
    }

    private void scheduleProcessInputEvents() {
        if (!this.mProcessInputEventsScheduled) {
            this.mProcessInputEventsScheduled = true;
            Message msg = this.mHandler.obtainMessage(19);
            msg.setAsynchronous(true);
            this.mHandler.sendMessage(msg);
        }
    }

    void doProcessInputEvents() {
        this.mViewRootImplSocExt.setBLASTBufferQueue(this.mBlastBufferQueue);
        while (this.mPendingInputEventHead != null) {
            QueuedInputEvent q = this.mPendingInputEventHead;
            QueuedInputEvent queuedInputEvent = q.mNext;
            this.mPendingInputEventHead = queuedInputEvent;
            if (queuedInputEvent == null) {
                this.mPendingInputEventTail = null;
            }
            q.mNext = null;
            int i = this.mPendingInputEventCount - 1;
            this.mPendingInputEventCount = i;
            Trace.traceCounter(4L, this.mPendingInputEventQueueLengthCounterName, i);
            this.mViewRootImplSocExt.scaleMotionEvent(q.mEvent);
            this.mViewFrameInfo.setInputEvent(this.mInputEventAssigner.processEvent(q.mEvent));
            if (q.mEvent instanceof MotionEvent) {
                this.mViewRootImplExt.updateScrollerState((MotionEvent) q.mEvent);
            }
            this.mChoreographer.mChoreographerExt.handleInputEvent(q.mEvent, this.mViewConfiguration.getScaledMaximumFlingVelocity(), this.mViewConfiguration.getScaledMinimumFlingVelocity());
            deliverInputEvent(q);
        }
        if (this.mProcessInputEventsScheduled) {
            this.mProcessInputEventsScheduled = false;
            this.mHandler.removeMessages(19);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a0, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a5, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00be, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void deliverInputEvent(android.view.ViewRootImpl.QueuedInputEvent r6) {
        /*
            r5 = this;
            android.view.InputEvent r0 = r6.mEvent
            int r0 = r0.getId()
            r1 = 8
            java.lang.String r3 = "deliverInputEvent"
            android.os.Trace.asyncTraceBegin(r1, r3, r0)
            boolean r0 = android.os.Trace.isTagEnabled(r1)
            if (r0 == 0) goto L57
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "deliverInputEvent src=0x"
            java.lang.StringBuilder r0 = r0.append(r3)
            android.view.InputEvent r3 = r6.mEvent
            int r3 = r3.getSource()
            java.lang.String r3 = java.lang.Integer.toHexString(r3)
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r3 = " eventTimeNano="
            java.lang.StringBuilder r0 = r0.append(r3)
            android.view.InputEvent r3 = r6.mEvent
            long r3 = r3.getEventTimeNano()
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r3 = " id=0x"
            java.lang.StringBuilder r0 = r0.append(r3)
            android.view.InputEvent r3 = r6.mEvent
            int r3 = r3.getId()
            java.lang.String r3 = java.lang.Integer.toHexString(r3)
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r0 = r0.toString()
            android.os.Trace.traceBegin(r1, r0)
        L57:
            android.view.InputEventConsistencyVerifier r0 = r5.mInputEventConsistencyVerifier     // Catch: java.lang.Throwable -> Lbe
            if (r0 == 0) goto L73
            java.lang.String r0 = "verifyEventConsistency"
            android.os.Trace.traceBegin(r1, r0)     // Catch: java.lang.Throwable -> Lbe
            android.view.InputEventConsistencyVerifier r0 = r5.mInputEventConsistencyVerifier     // Catch: java.lang.Throwable -> L6d
            android.view.InputEvent r3 = r6.mEvent     // Catch: java.lang.Throwable -> L6d
            r4 = 0
            r0.onInputEvent(r3, r4)     // Catch: java.lang.Throwable -> L6d
            android.os.Trace.traceEnd(r1)     // Catch: java.lang.Throwable -> Lbe
            goto L73
        L6d:
            r0 = move-exception
            android.os.Trace.traceEnd(r1)     // Catch: java.lang.Throwable -> Lbe
            throw r0     // Catch: java.lang.Throwable -> Lbe
        L73:
            boolean r0 = r6.shouldSendToSynthesizer()     // Catch: java.lang.Throwable -> Lbe
            if (r0 == 0) goto L7c
            android.view.ViewRootImpl$InputStage r0 = r5.mSyntheticInputStage     // Catch: java.lang.Throwable -> Lbe
            goto L87
        L7c:
            boolean r0 = r6.shouldSkipIme()     // Catch: java.lang.Throwable -> Lbe
            if (r0 == 0) goto L85
            android.view.ViewRootImpl$InputStage r0 = r5.mFirstPostImeInputStage     // Catch: java.lang.Throwable -> Lbe
            goto L87
        L85:
            android.view.ViewRootImpl$InputStage r0 = r5.mFirstInputStage     // Catch: java.lang.Throwable -> Lbe
        L87:
            android.view.InputEvent r3 = r6.mEvent     // Catch: java.lang.Throwable -> Lbe
            boolean r3 = r3 instanceof android.view.KeyEvent     // Catch: java.lang.Throwable -> Lbe
            if (r3 == 0) goto La6
            java.lang.String r3 = "preDispatchToUnhandledKeyManager"
            android.os.Trace.traceBegin(r1, r3)     // Catch: java.lang.Throwable -> Lbe
            android.view.ViewRootImpl$UnhandledKeyManager r3 = r5.mUnhandledKeyManager     // Catch: java.lang.Throwable -> La0
            android.view.InputEvent r4 = r6.mEvent     // Catch: java.lang.Throwable -> La0
            android.view.KeyEvent r4 = (android.view.KeyEvent) r4     // Catch: java.lang.Throwable -> La0
            r3.preDispatch(r4)     // Catch: java.lang.Throwable -> La0
            android.os.Trace.traceEnd(r1)     // Catch: java.lang.Throwable -> Lbe
            goto La6
        La0:
            r3 = move-exception
            android.os.Trace.traceEnd(r1)     // Catch: java.lang.Throwable -> Lbe
            throw r3     // Catch: java.lang.Throwable -> Lbe
        La6:
            if (r0 == 0) goto Lb6
            r5.handleWindowFocusChanged()     // Catch: java.lang.Throwable -> Lbe
            r0.deliver(r6)     // Catch: java.lang.Throwable -> Lbe
            android.view.IViewRootImplExt r3 = r5.mViewRootImplExt     // Catch: java.lang.Throwable -> Lbe
            android.view.Surface r4 = r5.mSurface     // Catch: java.lang.Throwable -> Lbe
            r3.resetOptState(r4)     // Catch: java.lang.Throwable -> Lbe
            goto Lb9
        Lb6:
            r5.finishInputEvent(r6)     // Catch: java.lang.Throwable -> Lbe
        Lb9:
            android.os.Trace.traceEnd(r1)
            return
        Lbe:
            r0 = move-exception
            android.os.Trace.traceEnd(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.deliverInputEvent(android.view.ViewRootImpl$QueuedInputEvent):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishInputEvent(QueuedInputEvent q) {
        Trace.asyncTraceEnd(8L, "deliverInputEvent", q.mEvent.getId());
        this.mViewRootImplExt.debugInputEventFinished(this.mTag, q.mFlags, q.mEvent);
        this.mViewRootImplExt.enableClickIfNeededWhenInputEventFinish(q.mEvent);
        if (q.mReceiver != null) {
            boolean handled = (q.mFlags & 8) != 0;
            boolean modified = (q.mFlags & 64) != 0;
            if (modified) {
                Trace.traceBegin(8L, "processInputEventBeforeFinish");
                try {
                    InputEvent processedEvent = this.mInputCompatProcessor.processInputEventBeforeFinish(q.mEvent);
                    if (processedEvent != null) {
                        q.mReceiver.finishInputEvent(processedEvent, handled);
                    }
                } finally {
                    Trace.traceEnd(8L);
                }
            } else {
                q.mReceiver.finishInputEvent(q.mEvent, handled);
            }
        } else {
            q.mEvent.recycleIfNeededAfterDispatch();
        }
        recycleQueuedInputEvent(q);
    }

    static boolean isTerminalInputEvent(InputEvent event) {
        if (event instanceof KeyEvent) {
            KeyEvent keyEvent = (KeyEvent) event;
            return keyEvent.getAction() == 1;
        }
        MotionEvent motionEvent = (MotionEvent) event;
        int action = motionEvent.getAction();
        return action == 1 || action == 3 || action == 10;
    }

    void scheduleConsumeBatchedInput() {
        if (!this.mConsumeBatchedInputScheduled && !this.mConsumeBatchedInputImmediatelyScheduled) {
            this.mConsumeBatchedInputScheduled = true;
            this.mChoreographer.postCallback(0, this.mConsumedBatchedInputRunnable, null);
        }
    }

    void unscheduleConsumeBatchedInput() {
        if (this.mConsumeBatchedInputScheduled) {
            this.mConsumeBatchedInputScheduled = false;
            this.mChoreographer.removeCallbacks(0, this.mConsumedBatchedInputRunnable, null);
        }
    }

    void scheduleConsumeBatchedInputImmediately() {
        if (!this.mConsumeBatchedInputImmediatelyScheduled) {
            unscheduleConsumeBatchedInput();
            this.mConsumeBatchedInputImmediatelyScheduled = true;
            this.mHandler.post(this.mConsumeBatchedInputImmediatelyRunnable);
        }
    }

    boolean doConsumeBatchedInput(long frameTimeNanos) {
        boolean consumedBatches;
        WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
        if (windowInputEventReceiver != null) {
            consumedBatches = windowInputEventReceiver.consumeBatchedInputEvents(frameTimeNanos);
        } else {
            consumedBatches = false;
        }
        doProcessInputEvents();
        return consumedBatches;
    }

    final class TraversalRunnable implements Runnable {
        TraversalRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            ViewRootImpl.this.doTraversal();
        }
    }

    final class WindowInputEventReceiver extends InputEventReceiver {
        public WindowInputEventReceiver(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
        }

        @Override // android.view.InputEventReceiver
        public void onInputEvent(InputEvent event) {
            Trace.traceBegin(8L, "processInputEventForCompatibility");
            ViewRootImpl.this.mViewRootImplExt.debugInputEventStart(ViewRootImpl.this.mTag, event);
            ViewRootImpl.this.mViewRootImplExt.disableClickIfNeededWhenInputEventStart(event);
            try {
                ViewRootImpl.this.mViewRootImplExt.updateInputEventToInputMethod(event);
                if (ViewRootImpl.this.mViewRootImplExt.dispatchTouchEventForZoomWinow(this, event, ViewRootImpl.this.mView, ViewRootImpl.this.mLastReportedMergedConfiguration)) {
                    return;
                }
                List<InputEvent> processedEvents = ViewRootImpl.this.mInputCompatProcessor.processInputEventForCompatibility(event);
                Trace.traceEnd(8L);
                if (processedEvents == null) {
                    ViewRootImpl.this.enqueueInputEvent(event, this, 0, true);
                    return;
                }
                if (processedEvents.isEmpty()) {
                    finishInputEvent(event, true);
                    return;
                }
                for (int i = 0; i < processedEvents.size(); i++) {
                    ViewRootImpl.this.enqueueInputEvent(processedEvents.get(i), this, 64, true);
                }
            } finally {
                Trace.traceEnd(8L);
            }
        }

        @Override // android.view.InputEventReceiver
        public void onBatchedInputEventPending(int source) {
            boolean unbuffered = ViewRootImpl.this.mUnbufferedInputDispatch || (ViewRootImpl.this.mUnbufferedInputSource & source) != 0;
            if (unbuffered) {
                if (ViewRootImpl.this.mConsumeBatchedInputScheduled) {
                    ViewRootImpl.this.unscheduleConsumeBatchedInput();
                }
                consumeBatchedInputEvents(-1L);
                return;
            }
            ViewRootImpl.this.scheduleConsumeBatchedInput();
        }

        @Override // android.view.InputEventReceiver
        public void onFocusEvent(boolean hasFocus) {
            Log.d(ViewRootImpl.this.mTag, "onFocusEvent " + hasFocus);
            ViewRootImpl.this.windowFocusChanged(hasFocus);
        }

        @Override // android.view.InputEventReceiver
        public void onTouchModeChanged(boolean inTouchMode) {
            ViewRootImpl.this.touchModeChanged(inTouchMode);
        }

        @Override // android.view.InputEventReceiver
        public void onPointerCaptureEvent(boolean pointerCaptureEnabled) {
            ViewRootImpl.this.dispatchPointerCaptureChanged(pointerCaptureEnabled);
        }

        @Override // android.view.InputEventReceiver
        public void onDragEvent(boolean isExiting, float x, float y) {
            DragEvent event = DragEvent.obtain(isExiting ? 6 : 2, x, y, 0.0f, 0.0f, null, null, null, null, null, false);
            ViewRootImpl.this.dispatchDragEvent(event);
        }

        @Override // android.view.InputEventReceiver
        public void dispose() {
            ViewRootImpl.this.unscheduleConsumeBatchedInput();
            super.dispose();
        }
    }

    final class InputMetricsListener implements HardwareRendererObserver.OnFrameMetricsAvailableListener {
        public long[] data = new long[23];

        InputMetricsListener() {
        }

        @Override // android.graphics.HardwareRendererObserver.OnFrameMetricsAvailableListener
        public void onFrameMetricsAvailable(int dropCountSinceLastInvocation) {
            long[] jArr = this.data;
            int inputEventId = (int) jArr[4];
            if (inputEventId == 0) {
                return;
            }
            long presentTime = jArr[21];
            if (presentTime <= 0) {
                return;
            }
            long gpuCompletedTime = jArr[19];
            if (ViewRootImpl.this.mInputEventReceiver == null) {
                return;
            }
            if (gpuCompletedTime >= presentTime) {
                double discrepancyMs = (gpuCompletedTime - presentTime) * 1.0E-6d;
                long vsyncId = this.data[1];
                Log.w(ViewRootImpl.TAG, "Not reporting timeline because gpuCompletedTime is " + discrepancyMs + "ms ahead of presentTime. FRAME_TIMELINE_VSYNC_ID=" + vsyncId + ", INPUT_EVENT_ID=" + inputEventId);
                return;
            }
            ViewRootImpl.this.mInputEventReceiver.reportTimeline(inputEventId, gpuCompletedTime, presentTime);
        }
    }

    final class ConsumeBatchedInputRunnable implements Runnable {
        ConsumeBatchedInputRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.mConsumeBatchedInputScheduled = false;
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            if (viewRootImpl.doConsumeBatchedInput(viewRootImpl.mChoreographer.getFrameTimeNanos())) {
                ViewRootImpl.this.scheduleConsumeBatchedInput();
            }
        }
    }

    final class ConsumeBatchedInputImmediatelyRunnable implements Runnable {
        ConsumeBatchedInputImmediatelyRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.mConsumeBatchedInputImmediatelyScheduled = false;
            ViewRootImpl.this.doConsumeBatchedInput(-1L);
        }
    }

    final class InvalidateOnAnimationRunnable implements Runnable {
        private boolean mPosted;
        private View.AttachInfo.InvalidateInfo[] mTempViewRects;
        private View[] mTempViews;
        private final ArrayList<View> mViews = new ArrayList<>();
        private final ArrayList<View.AttachInfo.InvalidateInfo> mViewRects = new ArrayList<>();

        InvalidateOnAnimationRunnable() {
        }

        public void addView(View view) {
            synchronized (this) {
                this.mViews.add(view);
                postIfNeededLocked();
            }
        }

        public void addViewRect(View.AttachInfo.InvalidateInfo info) {
            synchronized (this) {
                this.mViewRects.add(info);
                postIfNeededLocked();
            }
        }

        public void removeView(View view) {
            synchronized (this) {
                this.mViews.remove(view);
                int i = this.mViewRects.size();
                while (true) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    View.AttachInfo.InvalidateInfo info = this.mViewRects.get(i2);
                    if (info.target == view) {
                        this.mViewRects.remove(i2);
                        info.recycle();
                    }
                    i = i2;
                }
                if (this.mPosted && this.mViews.isEmpty() && this.mViewRects.isEmpty()) {
                    ViewRootImpl.this.mChoreographer.removeCallbacks(1, this, null);
                    this.mPosted = false;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int viewCount;
            int viewRectCount;
            synchronized (this) {
                this.mPosted = false;
                viewCount = this.mViews.size();
                if (viewCount != 0) {
                    ArrayList<View> arrayList = this.mViews;
                    View[] viewArr = this.mTempViews;
                    if (viewArr == null) {
                        viewArr = new View[viewCount];
                    }
                    this.mTempViews = (View[]) arrayList.toArray(viewArr);
                    this.mViews.clear();
                }
                viewRectCount = this.mViewRects.size();
                if (viewRectCount != 0) {
                    ArrayList<View.AttachInfo.InvalidateInfo> arrayList2 = this.mViewRects;
                    View.AttachInfo.InvalidateInfo[] invalidateInfoArr = this.mTempViewRects;
                    if (invalidateInfoArr == null) {
                        invalidateInfoArr = new View.AttachInfo.InvalidateInfo[viewRectCount];
                    }
                    this.mTempViewRects = (View.AttachInfo.InvalidateInfo[]) arrayList2.toArray(invalidateInfoArr);
                    this.mViewRects.clear();
                }
            }
            for (int i = 0; i < viewCount; i++) {
                this.mTempViews[i].invalidate();
                this.mTempViews[i] = null;
            }
            for (int i2 = 0; i2 < viewRectCount; i2++) {
                View.AttachInfo.InvalidateInfo info = this.mTempViewRects[i2];
                info.target.invalidate(info.left, info.top, info.right, info.bottom);
                info.recycle();
            }
        }

        private void postIfNeededLocked() {
            if (!this.mPosted) {
                ViewRootImpl.this.mChoreographer.postCallback(1, this, null);
                this.mPosted = true;
            }
        }
    }

    public void dispatchInvalidateDelayed(View view, long delayMilliseconds) {
        Message msg = this.mHandler.obtainMessage(1, view);
        this.mHandler.sendMessageDelayed(msg, delayMilliseconds);
    }

    public void dispatchInvalidateRectDelayed(View.AttachInfo.InvalidateInfo info, long delayMilliseconds) {
        Message msg = this.mHandler.obtainMessage(2, info);
        this.mHandler.sendMessageDelayed(msg, delayMilliseconds);
    }

    public void dispatchInvalidateOnAnimation(View view) {
        this.mInvalidateOnAnimationRunnable.addView(view);
    }

    public void dispatchInvalidateRectOnAnimation(View.AttachInfo.InvalidateInfo info) {
        this.mInvalidateOnAnimationRunnable.addViewRect(info);
    }

    public void cancelInvalidate(View view) {
        this.mHandler.removeMessages(1, view);
        this.mHandler.removeMessages(2, view);
        this.mInvalidateOnAnimationRunnable.removeView(view);
    }

    public void dispatchInputEvent(InputEvent event) {
        dispatchInputEvent(event, null);
    }

    public void dispatchInputEvent(InputEvent event, InputEventReceiver receiver) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = event;
        args.arg2 = receiver;
        Message msg = this.mHandler.obtainMessage(7, args);
        msg.setAsynchronous(true);
        this.mHandler.sendMessage(msg);
    }

    public void synthesizeInputEvent(InputEvent event) {
        Message msg = this.mHandler.obtainMessage(24, event);
        msg.setAsynchronous(true);
        this.mHandler.sendMessage(msg);
    }

    public void dispatchKeyFromIme(KeyEvent event) {
        Message msg = this.mHandler.obtainMessage(11, event);
        msg.setAsynchronous(true);
        this.mHandler.sendMessage(msg);
    }

    public void dispatchKeyFromAutofill(KeyEvent event) {
        Message msg = this.mHandler.obtainMessage(12, event);
        msg.setAsynchronous(true);
        this.mHandler.sendMessage(msg);
    }

    public void dispatchUnhandledInputEvent(InputEvent event) {
        if (event instanceof MotionEvent) {
            event = MotionEvent.obtain((MotionEvent) event);
        }
        synthesizeInputEvent(event);
    }

    public void dispatchAppVisibility(boolean z) {
        Log.d(this.mTag, "dispatchAppVisibility visible:" + z);
        Message messageObtainMessage = this.mHandler.obtainMessage(8);
        messageObtainMessage.arg1 = z ? 1 : 0;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    public void dispatchGetNewSurface() {
        Message msg = this.mHandler.obtainMessage(9);
        this.mHandler.sendMessage(msg);
    }

    public void windowFocusChanged(boolean hasFocus) {
        this.mViewRootImplExt.checkKeyguardAndConfig(this.mTag);
        synchronized (this) {
            this.mWindowFocusChanged = true;
            this.mUpcomingWindowFocus = hasFocus;
        }
        Message msg = Message.obtain();
        msg.what = 6;
        this.mHandler.sendMessage(msg);
    }

    public void touchModeChanged(boolean inTouchMode) {
        synchronized (this) {
            this.mUpcomingInTouchMode = inTouchMode;
        }
        Message msg = Message.obtain();
        msg.what = 34;
        this.mHandler.sendMessage(msg);
    }

    public void dispatchWindowShown() {
        this.mHandler.sendEmptyMessage(25);
    }

    public void dispatchCloseSystemDialogs(String reason) {
        Message msg = Message.obtain();
        msg.what = 14;
        msg.obj = reason;
        this.mHandler.sendMessage(msg);
    }

    public void dispatchDragEvent(DragEvent event) {
        int what;
        if (event.getAction() == 2) {
            what = 16;
            this.mHandler.removeMessages(16);
        } else {
            what = 15;
        }
        Message msg = this.mHandler.obtainMessage(what, event);
        this.mHandler.sendMessage(msg);
    }

    public void updatePointerIcon(float x, float y) {
        this.mHandler.removeMessages(27);
        long now = SystemClock.uptimeMillis();
        MotionEvent event = MotionEvent.obtain(0L, now, 7, x, y, 0);
        Message msg = this.mHandler.obtainMessage(27, event);
        this.mHandler.sendMessage(msg);
    }

    public void dispatchCheckFocus() {
        if (!this.mHandler.hasMessages(13)) {
            this.mHandler.sendEmptyMessage(13);
        }
    }

    public void dispatchRequestKeyboardShortcuts(IResultReceiver receiver, int deviceId) {
        this.mHandler.obtainMessage(26, deviceId, 0, receiver).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchPointerCaptureChanged(boolean z) {
        this.mHandler.removeMessages(28);
        Message messageObtainMessage = this.mHandler.obtainMessage(28);
        messageObtainMessage.arg1 = z ? 1 : 0;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    private void postSendWindowContentChangedCallback(View source, int changeType) {
        if (this.mSendWindowContentChangedAccessibilityEvent == null) {
            this.mSendWindowContentChangedAccessibilityEvent = new SendWindowContentChangedAccessibilityEvent();
        }
        this.mSendWindowContentChangedAccessibilityEvent.runOrPost(source, changeType);
    }

    private void removeSendWindowContentChangedCallback() {
        SendWindowContentChangedAccessibilityEvent sendWindowContentChangedAccessibilityEvent = this.mSendWindowContentChangedAccessibilityEvent;
        if (sendWindowContentChangedAccessibilityEvent != null) {
            this.mHandler.removeCallbacks(sendWindowContentChangedAccessibilityEvent);
        }
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View originalView) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View originalView, float x, float y) {
        return false;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback, int type) {
        return null;
    }

    @Override // android.view.ViewParent
    public void createContextMenu(ContextMenu menu) {
    }

    @Override // android.view.ViewParent
    public void childDrawableStateChanged(View child) {
    }

    @Override // android.view.ViewParent
    public boolean requestSendAccessibilityEvent(View child, AccessibilityEvent event) {
        AccessibilityNodeProvider provider;
        SendWindowContentChangedAccessibilityEvent sendWindowContentChangedAccessibilityEvent;
        if (this.mView == null || this.mStopped || this.mPausedForTransition) {
            return false;
        }
        if (event.getEventType() != 2048 && (sendWindowContentChangedAccessibilityEvent = this.mSendWindowContentChangedAccessibilityEvent) != null && sendWindowContentChangedAccessibilityEvent.mSource != null) {
            this.mSendWindowContentChangedAccessibilityEvent.removeCallbacksAndRun();
        }
        int eventType = event.getEventType();
        View source = getSourceForAccessibilityEvent(event);
        switch (eventType) {
            case 2048:
                handleWindowContentChangedEvent(event);
                break;
            case 32768:
                if (source != null && (provider = source.getAccessibilityNodeProvider()) != null) {
                    int virtualNodeId = AccessibilityNodeInfo.getVirtualDescendantId(event.getSourceNodeId());
                    AccessibilityNodeInfo node = provider.createAccessibilityNodeInfo(virtualNodeId);
                    setAccessibilityFocus(source, node);
                    break;
                }
                break;
            case 65536:
                if (source != null && source.getAccessibilityNodeProvider() != null) {
                    setAccessibilityFocus(null, null);
                    break;
                }
                break;
        }
        this.mAccessibilityManager.sendAccessibilityEvent(event);
        return true;
    }

    private View getSourceForAccessibilityEvent(AccessibilityEvent event) {
        long sourceNodeId = event.getSourceNodeId();
        int accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(sourceNodeId);
        return AccessibilityNodeIdManager.getInstance().findView(accessibilityViewId);
    }

    private void handleWindowContentChangedEvent(AccessibilityEvent event) {
        View focusedHost = this.mAccessibilityFocusedHost;
        if (focusedHost == null || this.mAccessibilityFocusedVirtualView == null) {
            return;
        }
        AccessibilityNodeProvider provider = focusedHost.getAccessibilityNodeProvider();
        if (provider == null) {
            this.mAccessibilityFocusedHost = null;
            this.mAccessibilityFocusedVirtualView = null;
            focusedHost.clearAccessibilityFocusNoCallbacks(0);
            return;
        }
        int changes = event.getContentChangeTypes();
        if ((changes & 1) == 0 && changes != 0) {
            return;
        }
        long eventSourceNodeId = event.getSourceNodeId();
        int changedViewId = AccessibilityNodeInfo.getAccessibilityViewId(eventSourceNodeId);
        boolean hostInSubtree = false;
        View root = this.mAccessibilityFocusedHost;
        while (root != null && !hostInSubtree) {
            if (changedViewId == root.getAccessibilityViewId()) {
                hostInSubtree = true;
            } else {
                Object parent = root.getParent();
                if (parent instanceof View) {
                    root = (View) parent;
                } else {
                    root = null;
                }
            }
        }
        if (!hostInSubtree) {
            return;
        }
        long focusedSourceNodeId = this.mAccessibilityFocusedVirtualView.getSourceNodeId();
        int focusedChildId = AccessibilityNodeInfo.getVirtualDescendantId(focusedSourceNodeId);
        Rect oldBounds = this.mTempRect;
        this.mAccessibilityFocusedVirtualView.getBoundsInScreen(oldBounds);
        AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = provider.createAccessibilityNodeInfo(focusedChildId);
        this.mAccessibilityFocusedVirtualView = accessibilityNodeInfoCreateAccessibilityNodeInfo;
        if (accessibilityNodeInfoCreateAccessibilityNodeInfo == null) {
            this.mAccessibilityFocusedHost = null;
            focusedHost.clearAccessibilityFocusNoCallbacks(0);
            provider.performAction(focusedChildId, AccessibilityNodeInfo.AccessibilityAction.ACTION_CLEAR_ACCESSIBILITY_FOCUS.getId(), null);
            invalidateRectOnScreen(oldBounds);
            return;
        }
        Rect newBounds = accessibilityNodeInfoCreateAccessibilityNodeInfo.getBoundsInScreen();
        if (!oldBounds.equals(newBounds)) {
            oldBounds.union(newBounds);
            invalidateRectOnScreen(oldBounds);
        }
    }

    @Override // android.view.ViewParent
    public void notifySubtreeAccessibilityStateChanged(View child, View source, int changeType) {
        postSendWindowContentChangedCallback((View) Preconditions.checkNotNull(source), changeType);
    }

    @Override // android.view.ViewParent
    public boolean canResolveLayoutDirection() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isLayoutDirectionResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public int getLayoutDirection() {
        return 0;
    }

    @Override // android.view.ViewParent
    public boolean canResolveTextDirection() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isTextDirectionResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public int getTextDirection() {
        return 1;
    }

    @Override // android.view.ViewParent
    public boolean canResolveTextAlignment() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isTextAlignmentResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public int getTextAlignment() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getCommonPredecessor(View first, View second) {
        if (this.mTempHashSet == null) {
            this.mTempHashSet = new HashSet<>();
        }
        HashSet<View> seen = this.mTempHashSet;
        seen.clear();
        View firstCurrent = first;
        while (firstCurrent != null) {
            seen.add(firstCurrent);
            Object obj = firstCurrent.mParent;
            if (obj instanceof View) {
                firstCurrent = (View) obj;
            } else {
                firstCurrent = null;
            }
        }
        View secondCurrent = second;
        while (secondCurrent != null) {
            if (seen.contains(secondCurrent)) {
                seen.clear();
                return secondCurrent;
            }
            Object obj2 = secondCurrent.mParent;
            if (obj2 instanceof View) {
                secondCurrent = (View) obj2;
            } else {
                secondCurrent = null;
            }
        }
        seen.clear();
        return null;
    }

    void checkThread() {
        if (this.mThread != Thread.currentThread()) {
            throw new CalledFromWrongThreadException("Only the original thread that created a view hierarchy can touch its views.");
        }
    }

    @Override // android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
    }

    @Override // android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean immediate) {
        if (rectangle == null) {
            return scrollToRectOrFocus(null, immediate);
        }
        rectangle.offset(child.getLeft() - child.getScrollX(), child.getTop() - child.getScrollY());
        boolean scrolled = scrollToRectOrFocus(rectangle, immediate);
        this.mTempRect.set(rectangle);
        this.mTempRect.offset(0, -this.mCurScrollY);
        this.mTempRect.offset(this.mAttachInfo.mWindowLeft, this.mAttachInfo.mWindowTop);
        try {
            this.mWindowSession.onRectangleOnScreenRequested(this.mWindow, this.mTempRect);
        } catch (RemoteException e) {
        }
        return scrolled;
    }

    @Override // android.view.ViewParent
    public void childHasTransientStateChanged(View child, boolean hasTransientState) {
    }

    @Override // android.view.ViewParent
    public boolean onStartNestedScroll(View child, View target, int nestedScrollAxes) {
        return false;
    }

    @Override // android.view.ViewParent
    public void onStopNestedScroll(View target) {
    }

    @Override // android.view.ViewParent
    public void onNestedScrollAccepted(View child, View target, int nestedScrollAxes) {
    }

    @Override // android.view.ViewParent
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed) {
    }

    @Override // android.view.ViewParent
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed) {
    }

    @Override // android.view.ViewParent
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean onNestedPrePerformAccessibilityAction(View target, int action, Bundle args) {
        return false;
    }

    public void addScrollCaptureCallback(ScrollCaptureCallback callback) {
        if (this.mRootScrollCaptureCallbacks == null) {
            this.mRootScrollCaptureCallbacks = new HashSet<>();
        }
        this.mRootScrollCaptureCallbacks.add(callback);
    }

    public void removeScrollCaptureCallback(ScrollCaptureCallback callback) {
        HashSet<ScrollCaptureCallback> hashSet = this.mRootScrollCaptureCallbacks;
        if (hashSet != null) {
            hashSet.remove(callback);
            if (this.mRootScrollCaptureCallbacks.isEmpty()) {
                this.mRootScrollCaptureCallbacks = null;
            }
        }
    }

    public void dispatchScrollCaptureRequest(IScrollCaptureResponseListener listener) {
        this.mHandler.obtainMessage(33, listener).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void collectRootScrollCaptureTargets(ScrollCaptureSearchResults results) {
        HashSet<ScrollCaptureCallback> hashSet = this.mRootScrollCaptureCallbacks;
        if (hashSet == null) {
            return;
        }
        Iterator<ScrollCaptureCallback> it = hashSet.iterator();
        while (it.hasNext()) {
            ScrollCaptureCallback cb = it.next();
            Point offset = new Point(this.mView.getLeft(), this.mView.getTop());
            Rect rect = new Rect(0, 0, this.mView.getWidth(), this.mView.getHeight());
            results.addTarget(new ScrollCaptureTarget(this.mView, rect, offset, cb));
        }
    }

    public void setScrollCaptureRequestTimeout(int timeMillis) {
        this.mScrollCaptureRequestTimeout = timeMillis;
    }

    public long getScrollCaptureRequestTimeout() {
        return this.mScrollCaptureRequestTimeout;
    }

    public void handleScrollCaptureRequest(final IScrollCaptureResponseListener listener) {
        final ScrollCaptureSearchResults results = new ScrollCaptureSearchResults(this.mContext.getMainExecutor());
        collectRootScrollCaptureTargets(results);
        View rootView = getView();
        if (rootView != null) {
            Point point = new Point();
            Rect rect = new Rect(0, 0, rootView.getWidth(), rootView.getHeight());
            getChildVisibleRect(rootView, rect, point);
            Objects.requireNonNull(results);
            rootView.dispatchScrollCaptureSearch(rect, point, new Consumer() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    results.addTarget((ScrollCaptureTarget) obj);
                }
            });
        }
        Runnable onComplete = new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m5300lambda$handleScrollCaptureRequest$9$androidviewViewRootImpl(listener, results);
            }
        };
        results.setOnCompleteListener(onComplete);
        if (!results.isComplete()) {
            ViewRootHandler viewRootHandler = this.mHandler;
            Objects.requireNonNull(results);
            viewRootHandler.postDelayed(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    results.finish();
                }
            }, getScrollCaptureRequestTimeout());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dispatchScrollCaptureSearchResponse, reason: merged with bridge method [inline-methods] */
    public void m5300lambda$handleScrollCaptureRequest$9$androidviewViewRootImpl(IScrollCaptureResponseListener listener, ScrollCaptureSearchResults results) {
        ScrollCaptureTarget selectedTarget = results.getTopResult();
        ScrollCaptureResponse.Builder response = new ScrollCaptureResponse.Builder();
        response.setWindowTitle(getTitle().toString());
        response.setPackageName(this.mContext.getPackageName());
        StringWriter writer = new StringWriter();
        IndentingPrintWriter pw = new IndentingPrintWriter(writer);
        results.dump(pw);
        pw.flush();
        response.addMessage(writer.toString());
        if (selectedTarget == null) {
            response.setDescription("No scrollable targets found in window");
            try {
                listener.onScrollCaptureResponse(response.build());
                return;
            } catch (RemoteException e) {
                Log.e(TAG, "Failed to send scroll capture search result", e);
                return;
            }
        }
        response.setDescription("Connected");
        Rect boundsInWindow = new Rect();
        View containingView = selectedTarget.getContainingView();
        containingView.getLocationInWindow(this.mAttachInfo.mTmpLocation);
        boundsInWindow.set(selectedTarget.getScrollBounds());
        boundsInWindow.offset(this.mAttachInfo.mTmpLocation[0], this.mAttachInfo.mTmpLocation[1]);
        response.setBoundsInWindow(boundsInWindow);
        Rect boundsOnScreen = new Rect();
        this.mView.getLocationOnScreen(this.mAttachInfo.mTmpLocation);
        boundsOnScreen.set(0, 0, this.mView.getWidth(), this.mView.getHeight());
        boundsOnScreen.offset(this.mAttachInfo.mTmpLocation[0], this.mAttachInfo.mTmpLocation[1]);
        response.setWindowBounds(boundsOnScreen);
        ScrollCaptureConnection connection = new ScrollCaptureConnection(this.mView.getContext().getMainExecutor(), selectedTarget);
        response.setConnection(connection);
        try {
            listener.onScrollCaptureResponse(response.build());
        } catch (RemoteException e2) {
            if (DEBUG_SCROLL_CAPTURE) {
                Log.w(TAG, "Failed to send scroll capture search response.", e2);
            }
            connection.close();
        }
    }

    private void reportNextDraw() {
        if (DEBUG_BLAST) {
            Log.d(this.mTag, "reportNextDraw " + Debug.getCallers(5));
        }
        this.mReportNextDraw = true;
    }

    public void setReportNextDraw(boolean syncBuffer) {
        this.mSyncBuffer = syncBuffer;
        reportNextDraw();
        invalidate();
    }

    void changeCanvasOpacity(boolean opaque) {
        Log.d(this.mTag, "changeCanvasOpacity: opaque=" + opaque);
        boolean opaque2 = opaque & ((this.mView.mPrivateFlags & 512) == 0);
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.setOpaque(opaque2);
        }
    }

    public boolean dispatchUnhandledKeyEvent(KeyEvent event) {
        return this.mUnhandledKeyManager.dispatch(this.mView, event);
    }

    class TakenSurfaceHolder extends BaseSurfaceHolder {
        TakenSurfaceHolder() {
        }

        @Override // com.android.internal.view.BaseSurfaceHolder
        public boolean onAllowLockCanvas() {
            return ViewRootImpl.this.mDrawingAllowed;
        }

        @Override // com.android.internal.view.BaseSurfaceHolder
        public void onRelayoutContainer() {
        }

        @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
        public void setFormat(int format) {
            ((RootViewSurfaceTaker) ViewRootImpl.this.mView).setSurfaceFormat(format);
        }

        @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
        public void setType(int type) {
            ((RootViewSurfaceTaker) ViewRootImpl.this.mView).setSurfaceType(type);
        }

        @Override // com.android.internal.view.BaseSurfaceHolder
        public void onUpdateSurface() {
            throw new IllegalStateException("Shouldn't be here");
        }

        @Override // android.view.SurfaceHolder
        public boolean isCreating() {
            return ViewRootImpl.this.mIsCreating;
        }

        @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
        public void setFixedSize(int width, int height) {
            throw new UnsupportedOperationException("Currently only support sizing from layout");
        }

        @Override // android.view.SurfaceHolder
        public void setKeepScreenOn(boolean screenOn) {
            ((RootViewSurfaceTaker) ViewRootImpl.this.mView).setSurfaceKeepScreenOn(screenOn);
        }
    }

    static class W extends IWindow.Stub {
        final WeakReference<ViewRootImpl> mViewAncestor;
        private final IWindowSession mWindowSession;

        W(ViewRootImpl viewAncestor) {
            this.mViewAncestor = new WeakReference<>(viewAncestor);
            this.mWindowSession = viewAncestor.mWindowSession;
        }

        @Override // android.view.IWindow
        public void resized(ClientWindowFrames frames, boolean reportDraw, MergedConfiguration mergedConfiguration, InsetsState insetsState, boolean forceLayout, boolean alwaysConsumeSystemBars, int displayId, int syncSeqId, int resizeMode) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchResized(frames, reportDraw, mergedConfiguration, insetsState, forceLayout, alwaysConsumeSystemBars, displayId, syncSeqId, resizeMode);
            }
        }

        @Override // android.view.IWindow
        public void insetsControlChanged(InsetsState insetsState, InsetsSourceControl[] activeControls) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchInsetsControlChanged(insetsState, activeControls);
            }
        }

        @Override // android.view.IWindow
        public void showInsets(int types, boolean fromIme) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (fromIme) {
                ImeTracing.getInstance().triggerClientDump("ViewRootImpl.W#showInsets", viewAncestor.getInsetsController().getHost().getInputMethodManager(), null);
            }
            if (viewAncestor != null) {
                viewAncestor.showInsets(types, fromIme);
            }
        }

        @Override // android.view.IWindow
        public void hideInsets(int types, boolean fromIme) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (fromIme) {
                ImeTracing.getInstance().triggerClientDump("ViewRootImpl.W#hideInsets", viewAncestor.getInsetsController().getHost().getInputMethodManager(), null);
            }
            if (viewAncestor != null) {
                viewAncestor.hideInsets(types, fromIme);
            }
        }

        @Override // android.view.IWindow
        public void moved(int newX, int newY) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchMoved(newX, newY);
            }
        }

        @Override // android.view.IWindow
        public void dispatchAppVisibility(boolean visible) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchAppVisibility(visible);
            }
        }

        @Override // android.view.IWindow
        public void dispatchGetNewSurface() {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchGetNewSurface();
            }
        }

        private static int checkCallingPermission(String permission) {
            try {
                return ActivityManager.getService().checkPermission(permission, Binder.getCallingPid(), Binder.getCallingUid());
            } catch (RemoteException e) {
                return -1;
            }
        }

        @Override // android.view.IWindow
        public void executeCommand(String command, String parameters, ParcelFileDescriptor out) throws IOException {
            View view;
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor == null || (view = viewAncestor.mView) == null) {
                return;
            }
            if (checkCallingPermission(Manifest.permission.DUMP) != 0) {
                throw new SecurityException("Insufficient permissions to invoke executeCommand() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            }
            OutputStream clientStream = null;
            try {
                try {
                    try {
                        clientStream = new ParcelFileDescriptor.AutoCloseOutputStream(out);
                        ViewDebug.dispatchCommand(view, command, parameters, clientStream);
                        clientStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                        if (clientStream == null) {
                        } else {
                            clientStream.close();
                        }
                    }
                } catch (Throwable th) {
                    if (clientStream != null) {
                        try {
                            clientStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }

        @Override // android.view.IWindow
        public void closeSystemDialogs(String reason) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchCloseSystemDialogs(reason);
            }
        }

        @Override // android.view.IWindow
        public void dispatchWallpaperOffsets(float x, float y, float xStep, float yStep, float zoom, boolean sync) {
            if (sync) {
                try {
                    this.mWindowSession.wallpaperOffsetsComplete(asBinder());
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.IWindow
        public void dispatchWallpaperCommand(String action, int x, int y, int z, Bundle extras, boolean sync) {
            if (sync) {
                try {
                    this.mWindowSession.wallpaperCommandComplete(asBinder(), null);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.IWindow
        public void dispatchDragEvent(DragEvent event) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchDragEvent(event);
            }
        }

        @Override // android.view.IWindow
        public void updatePointerIcon(float x, float y) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.updatePointerIcon(x, y);
            }
        }

        @Override // android.view.IWindow
        public void dispatchWindowShown() {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchWindowShown();
            }
        }

        @Override // android.view.IWindow
        public void requestAppKeyboardShortcuts(IResultReceiver receiver, int deviceId) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchRequestKeyboardShortcuts(receiver, deviceId);
            }
        }

        @Override // android.view.IWindow
        public void requestScrollCapture(IScrollCaptureResponseListener listener) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchScrollCaptureRequest(listener);
            }
        }
    }

    public static final class CalledFromWrongThreadException extends AndroidRuntimeException {
        public CalledFromWrongThreadException(String msg) {
            super(msg);
        }
    }

    static HandlerActionQueue getRunQueue() {
        ThreadLocal<HandlerActionQueue> threadLocal = sRunQueues;
        HandlerActionQueue rq = threadLocal.get();
        if (rq != null) {
            return rq;
        }
        HandlerActionQueue rq2 = new HandlerActionQueue();
        threadLocal.set(rq2);
        return rq2;
    }

    private void startDragResizing(Rect initialBounds, boolean fullscreen, Rect systemInsets, Rect stableInsets, int resizeMode) {
        if (!this.mDragResizing) {
            this.mDragResizing = true;
            if (this.mUseMTRenderer) {
                for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
                    this.mWindowCallbacks.get(i).onWindowDragResizeStart(initialBounds, fullscreen, systemInsets, stableInsets, resizeMode);
                }
            }
            this.mFullRedrawNeeded = true;
        }
    }

    private void endDragResizing() {
        if (this.mDragResizing) {
            this.mDragResizing = false;
            if (this.mUseMTRenderer) {
                for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
                    this.mWindowCallbacks.get(i).onWindowDragResizeEnd();
                }
            }
            this.mFullRedrawNeeded = true;
        }
    }

    private boolean updateContentDrawBounds() {
        boolean updated = false;
        if (this.mUseMTRenderer) {
            for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
                updated |= this.mWindowCallbacks.get(i).onContentDrawn(this.mWindowAttributes.surfaceInsets.left, this.mWindowAttributes.surfaceInsets.top, this.mWidth, this.mHeight);
            }
        }
        return updated | (this.mDragResizing && this.mReportNextDraw);
    }

    private void requestDrawWindow() {
        if (!this.mUseMTRenderer) {
            return;
        }
        if (this.mReportNextDraw) {
            this.mWindowDrawCountDown = new CountDownLatch(this.mWindowCallbacks.size());
        }
        for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
            this.mWindowCallbacks.get(i).onRequestDraw(this.mReportNextDraw || (this.mResizeMode == 1 && this.mDragResizing));
        }
    }

    public void reportActivityRelaunched() {
        this.mActivityRelaunched = true;
    }

    public SurfaceControl getSurfaceControl() {
        return this.mSurfaceControl;
    }

    public IBinder getInputToken() {
        WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
        if (windowInputEventReceiver == null) {
            return null;
        }
        return windowInputEventReceiver.getToken();
    }

    public IBinder getWindowToken() {
        return this.mAttachInfo.mWindowToken;
    }

    final class AccessibilityInteractionConnectionManager implements AccessibilityManager.AccessibilityStateChangeListener {
        AccessibilityInteractionConnectionManager() {
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean enabled) {
            if (enabled) {
                ensureConnection();
                try {
                    if (ViewRootImpl.this.mAttachInfo.mHasWindowFocus && ViewRootImpl.this.mView != null) {
                        ViewRootImpl.this.mView.sendAccessibilityEvent(32);
                        View focusedView = ViewRootImpl.this.mView.findFocus();
                        if (focusedView != null && focusedView != ViewRootImpl.this.mView) {
                            focusedView.sendAccessibilityEvent(8);
                        }
                    }
                    if (ViewRootImpl.this.mAttachInfo.mLeashedParentToken != null) {
                        ViewRootImpl.this.mAccessibilityManager.associateEmbeddedHierarchy(ViewRootImpl.this.mAttachInfo.mLeashedParentToken, ViewRootImpl.this.mLeashToken);
                        return;
                    }
                    return;
                } catch (NullPointerException e) {
                    Slog.w(ViewRootImpl.TAG, "onAccessibilityStateChanged catch NullPointerException " + e);
                    return;
                }
            }
            ensureNoConnection();
            ViewRootImpl.this.mHandler.obtainMessage(21).sendToTarget();
        }

        public void ensureConnection() {
            boolean registered = ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId != -1;
            if (!registered) {
                ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId = ViewRootImpl.this.mAccessibilityManager.addAccessibilityInteractionConnection(ViewRootImpl.this.mWindow, ViewRootImpl.this.mLeashToken, ViewRootImpl.this.mContext.getPackageName(), new AccessibilityInteractionConnection(ViewRootImpl.this));
            }
        }

        public void ensureNoConnection() {
            boolean registered = ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId != -1;
            if (registered) {
                ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId = -1;
                ViewRootImpl.this.mAccessibilityManager.removeAccessibilityInteractionConnection(ViewRootImpl.this.mWindow);
            }
        }
    }

    final class HighContrastTextManager implements AccessibilityManager.HighTextContrastChangeListener {
        HighContrastTextManager() {
            ThreadedRenderer.setHighContrastText(ViewRootImpl.this.mAccessibilityManager.isHighTextContrastEnabled());
        }

        @Override // android.view.accessibility.AccessibilityManager.HighTextContrastChangeListener
        public void onHighTextContrastStateChanged(boolean enabled) {
            ThreadedRenderer.setHighContrastText(enabled);
            ViewRootImpl.this.destroyHardwareResources();
            ViewRootImpl.this.invalidate();
        }
    }

    static final class AccessibilityInteractionConnection extends IAccessibilityInteractionConnection.Stub {
        private final WeakReference<ViewRootImpl> mViewRootImpl;

        AccessibilityInteractionConnection(ViewRootImpl viewRootImpl) {
            this.mViewRootImpl = new WeakReference<>(viewRootImpl);
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfoByAccessibilityId(long accessibilityNodeId, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix, Bundle args) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfoByAccessibilityIdClientThread(accessibilityNodeId, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix, args);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfosResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void performAccessibilityAction(long accessibilityNodeId, int action, Bundle arguments, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().performAccessibilityActionClientThread(accessibilityNodeId, action, arguments, interactionId, callback, flags, interrogatingPid, interrogatingTid);
            } else {
                try {
                    callback.setPerformAccessibilityActionResult(false, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByViewId(long accessibilityNodeId, String viewId, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByViewIdClientThread(accessibilityNodeId, viewId, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfoResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByText(long accessibilityNodeId, String text, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByTextClientThread(accessibilityNodeId, text, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfosResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findFocus(long accessibilityNodeId, int focusType, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findFocusClientThread(accessibilityNodeId, focusType, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfoResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void focusSearch(long accessibilityNodeId, int direction, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().focusSearchClientThread(accessibilityNodeId, direction, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfoResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void clearAccessibilityFocus() {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().clearAccessibilityFocusClientThread();
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void notifyOutsideTouch() {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().notifyOutsideTouchClientThread();
            }
        }
    }

    public IAccessibilityEmbeddedConnection getAccessibilityEmbeddedConnection() {
        if (this.mAccessibilityEmbeddedConnection == null) {
            this.mAccessibilityEmbeddedConnection = new AccessibilityEmbeddedConnection(this);
        }
        return this.mAccessibilityEmbeddedConnection;
    }

    private class SendWindowContentChangedAccessibilityEvent implements Runnable {
        private int mChangeTypes;
        public long mLastEventTimeMillis;
        public StackTraceElement[] mOrigin;
        public View mSource;

        private SendWindowContentChangedAccessibilityEvent() {
            this.mChangeTypes = 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            View source = this.mSource;
            this.mSource = null;
            if (source == null) {
                Log.e(ViewRootImpl.TAG, "Accessibility content change has no source");
                return;
            }
            if (AccessibilityManager.getInstance(ViewRootImpl.this.mContext).isEnabled()) {
                this.mLastEventTimeMillis = SystemClock.uptimeMillis();
                AccessibilityEvent event = AccessibilityEvent.obtain();
                event.setEventType(2048);
                event.setContentChangeTypes(this.mChangeTypes);
                source.sendAccessibilityEventUnchecked(event);
            } else {
                this.mLastEventTimeMillis = 0L;
            }
            source.resetSubtreeAccessibilityStateChanged();
            this.mChangeTypes = 0;
        }

        public void runOrPost(View source, int changeType) {
            if (ViewRootImpl.this.mHandler.getLooper() != Looper.myLooper()) {
                CalledFromWrongThreadException e = new CalledFromWrongThreadException("Only the original thread that created a view hierarchy can touch its views.");
                Log.e(ViewRootImpl.TAG, "Accessibility content change on non-UI thread. Future Android versions will throw an exception.", e);
                ViewRootImpl.this.mHandler.removeCallbacks(this);
                if (this.mSource != null) {
                    run();
                }
            }
            View view = this.mSource;
            if (view != null) {
                View predecessor = ViewRootImpl.this.getCommonPredecessor(view, source);
                if (predecessor != null) {
                    predecessor = predecessor.getSelfOrParentImportantForA11y();
                }
                this.mSource = predecessor != null ? predecessor : source;
                this.mChangeTypes |= changeType;
                return;
            }
            this.mSource = source;
            this.mChangeTypes = changeType;
            long timeSinceLastMillis = SystemClock.uptimeMillis() - this.mLastEventTimeMillis;
            long minEventIntevalMillis = ViewConfiguration.getSendRecurringAccessibilityEventsInterval();
            if (timeSinceLastMillis >= minEventIntevalMillis) {
                removeCallbacksAndRun();
            } else {
                ViewRootImpl.this.mHandler.postDelayed(this, minEventIntevalMillis - timeSinceLastMillis);
            }
        }

        public void removeCallbacksAndRun() {
            ViewRootImpl.this.mHandler.removeCallbacks(this);
            run();
        }
    }

    private static class UnhandledKeyManager {
        private final SparseArray<WeakReference<View>> mCapturedKeys;
        private WeakReference<View> mCurrentReceiver;
        private boolean mDispatched;

        private UnhandledKeyManager() {
            this.mDispatched = true;
            this.mCapturedKeys = new SparseArray<>();
            this.mCurrentReceiver = null;
        }

        boolean dispatch(View root, KeyEvent event) {
            if (this.mDispatched) {
                return false;
            }
            try {
                Trace.traceBegin(8L, "UnhandledKeyEvent dispatch");
                this.mDispatched = true;
                View consumer = root.dispatchUnhandledKeyEvent(event);
                if (event.getAction() == 0) {
                    int keycode = event.getKeyCode();
                    if (consumer != null && !KeyEvent.isModifierKey(keycode)) {
                        this.mCapturedKeys.put(keycode, new WeakReference<>(consumer));
                    }
                }
                return consumer != null;
            } finally {
                Trace.traceEnd(8L);
            }
        }

        void preDispatch(KeyEvent event) {
            int idx;
            this.mCurrentReceiver = null;
            if (event.getAction() == 1 && (idx = this.mCapturedKeys.indexOfKey(event.getKeyCode())) >= 0) {
                this.mCurrentReceiver = this.mCapturedKeys.valueAt(idx);
                this.mCapturedKeys.removeAt(idx);
            }
        }

        boolean preViewDispatch(KeyEvent event) {
            this.mDispatched = false;
            if (this.mCurrentReceiver == null) {
                this.mCurrentReceiver = this.mCapturedKeys.get(event.getKeyCode());
            }
            WeakReference<View> weakReference = this.mCurrentReceiver;
            if (weakReference == null) {
                return false;
            }
            View target = weakReference.get();
            if (event.getAction() == 1) {
                this.mCurrentReceiver = null;
            }
            if (target != null && target.isAttachedToWindow()) {
                target.onUnhandledKeyEvent(event);
            }
            return true;
        }
    }

    public void setDisplayDecoration(boolean displayDecoration) {
        if (displayDecoration == this.mDisplayDecorationCached) {
            return;
        }
        this.mDisplayDecorationCached = displayDecoration;
        if (this.mSurfaceControl.isValid()) {
            updateDisplayDecoration();
        }
    }

    private void updateDisplayDecoration() {
        this.mTransaction.setDisplayDecoration(this.mSurfaceControl, this.mDisplayDecorationCached).apply();
    }

    public void dispatchBlurRegions(float[][] regionCopy, long frameNumber) {
        BLASTBufferQueue bLASTBufferQueue;
        SurfaceControl surfaceControl = getSurfaceControl();
        if (!surfaceControl.isValid()) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        transaction.setBlurRegions(surfaceControl, regionCopy);
        if (useBLAST() && (bLASTBufferQueue = this.mBlastBufferQueue) != null) {
            bLASTBufferQueue.mergeWithNextTransaction(transaction, frameNumber);
        }
    }

    public BackgroundBlurDrawable createBackgroundBlurDrawable() {
        return this.mBlurRegionAggregator.createBackgroundBlurDrawable(this.mContext);
    }

    @Override // android.view.ViewParent
    public void onDescendantUnbufferedRequested() {
        this.mUnbufferedInputSource = this.mView.mUnbufferedInputSource;
    }

    void forceDisableBLAST() {
        this.mForceDisableBLAST = true;
    }

    boolean useBLAST() {
        return this.mUseBLASTAdapter && !this.mForceDisableBLAST;
    }

    int getSurfaceSequenceId() {
        return this.mSurfaceSequenceId;
    }

    /* renamed from: mergeWithNextTransaction, reason: merged with bridge method [inline-methods] */
    public void m5297lambda$applyTransactionOnDraw$10$androidviewViewRootImpl(SurfaceControl.Transaction t, long frameNumber) {
        BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
        if (bLASTBufferQueue != null) {
            bLASTBufferQueue.mergeWithNextTransaction(t, frameNumber);
        } else {
            t.apply();
        }
    }

    @Override // android.view.AttachedSurfaceControl
    public SurfaceControl.Transaction buildReparentTransaction(SurfaceControl child) {
        if (this.mSurfaceControl.isValid()) {
            return new SurfaceControl.Transaction().reparent(child, this.mSurfaceControl);
        }
        return null;
    }

    @Override // android.view.AttachedSurfaceControl
    public boolean applyTransactionOnDraw(final SurfaceControl.Transaction t) {
        if (this.mRemoved || !isHardwareEnabled()) {
            t.apply();
        } else {
            this.mHasPendingTransactions = true;
            registerRtFrameCallback(new HardwareRenderer.FrameDrawingCallback() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda1
                @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
                public final void onFrameDraw(long j) {
                    this.f$0.m5297lambda$applyTransactionOnDraw$10$androidviewViewRootImpl(t, j);
                }
            });
        }
        return true;
    }

    @Override // android.view.AttachedSurfaceControl
    public int getBufferTransformHint() {
        return this.mSurfaceControl.getTransformHint();
    }

    @Override // android.view.AttachedSurfaceControl
    public void addOnBufferTransformHintChangedListener(AttachedSurfaceControl.OnBufferTransformHintChangedListener listener) {
        Objects.requireNonNull(listener);
        if (this.mTransformHintListeners.contains(listener)) {
            throw new IllegalArgumentException("attempt to call addOnBufferTransformHintChangedListener() with a previously registered listener");
        }
        this.mTransformHintListeners.add(listener);
    }

    @Override // android.view.AttachedSurfaceControl
    public void removeOnBufferTransformHintChangedListener(AttachedSurfaceControl.OnBufferTransformHintChangedListener listener) {
        Objects.requireNonNull(listener);
        this.mTransformHintListeners.remove(listener);
    }

    private void dispatchTransformHintChanged(int hint) {
        if (this.mTransformHintListeners.isEmpty()) {
            return;
        }
        ArrayList<AttachedSurfaceControl.OnBufferTransformHintChangedListener> listeners = (ArrayList) this.mTransformHintListeners.clone();
        for (int i = 0; i < listeners.size(); i++) {
            AttachedSurfaceControl.OnBufferTransformHintChangedListener listener = listeners.get(i);
            listener.onBufferTransformHintChanged(hint);
        }
    }

    public void requestCompatCameraControl(boolean showControl, boolean transformationApplied, ICompatCameraControlCallback callback) {
        this.mActivityConfigCallback.requestCompatCameraControl(showControl, transformationApplied, callback);
    }

    boolean wasRelayoutRequested() {
        return this.mRelayoutRequested;
    }

    void forceWmRelayout() {
        this.mForceNextWindowRelayout = true;
        scheduleTraversals();
    }

    public WindowOnBackInvokedDispatcher getOnBackInvokedDispatcher() {
        return this.mOnBackInvokedDispatcher;
    }

    @Override // android.view.ViewParent
    public OnBackInvokedDispatcher findOnBackInvokedDispatcherForChild(View child, View requester) {
        return getOnBackInvokedDispatcher();
    }

    private void registerBackCallbackOnWindow() {
        this.mOnBackInvokedDispatcher.attachToWindow(this.mWindowSession, this.mWindow);
    }

    private void sendBackKeyEvent(int action) {
        long when = SystemClock.uptimeMillis();
        KeyEvent ev = new KeyEvent(when, when, action, 4, 0, 0, -1, 0, 72, 257);
        enqueueInputEvent(ev);
    }

    private void registerCompatOnBackInvokedCallback() {
        CompatOnBackInvokedCallback compatOnBackInvokedCallback = new CompatOnBackInvokedCallback() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda14
            @Override // android.window.CompatOnBackInvokedCallback, android.window.OnBackInvokedCallback
            public final void onBackInvoked() {
                this.f$0.m5302xdbe86de8();
            }
        };
        this.mCompatOnBackInvokedCallback = compatOnBackInvokedCallback;
        this.mOnBackInvokedDispatcher.registerOnBackInvokedCallback(0, compatOnBackInvokedCallback);
    }

    /* renamed from: lambda$registerCompatOnBackInvokedCallback$11$android-view-ViewRootImpl, reason: not valid java name */
    /* synthetic */ void m5302xdbe86de8() {
        sendBackKeyEvent(0);
        sendBackKeyEvent(1);
    }

    @Override // android.view.AttachedSurfaceControl
    public void setTouchableRegion(Region r) {
        if (r != null) {
            this.mTouchableRegion = new Region(r);
        } else {
            this.mTouchableRegion = null;
        }
        this.mLastGivenInsets.reset();
        requestLayout();
    }

    IWindowSession getWindowSession() {
        return this.mWindowSession;
    }

    private void registerCallbacksForSync(boolean syncBuffer, SurfaceSyncer.SyncBufferCallback syncBufferCallback) {
        if (!isHardwareEnabled()) {
            return;
        }
        Log.d(this.mTag, "registerCallbacksForSync syncBuffer=" + syncBuffer);
        this.mAttachInfo.mThreadedRenderer.registerRtFrameCallback(new AnonymousClass8(syncBufferCallback, syncBuffer));
    }

    /* renamed from: android.view.ViewRootImpl$8, reason: invalid class name */
    class AnonymousClass8 implements HardwareRenderer.FrameDrawingCallback {
        final /* synthetic */ boolean val$syncBuffer;
        final /* synthetic */ SurfaceSyncer.SyncBufferCallback val$syncBufferCallback;

        AnonymousClass8(SurfaceSyncer.SyncBufferCallback syncBufferCallback, boolean z) {
            this.val$syncBufferCallback = syncBufferCallback;
            this.val$syncBuffer = z;
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public void onFrameDraw(long frame) {
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public HardwareRenderer.FrameCommitCallback onFrameDraw(int syncResult, final long frame) {
            if (ViewRootImpl.DEBUG_BLAST) {
                Log.d(ViewRootImpl.this.mTag, "Received frameDrawingCallback syncResult=" + syncResult + " frameNum=" + frame + MediaMetrics.SEPARATOR);
            }
            if ((syncResult & 6) != 0) {
                this.val$syncBufferCallback.onBufferReady(ViewRootImpl.this.mBlastBufferQueue.gatherPendingTransactions(frame));
                return null;
            }
            if (ViewRootImpl.DEBUG_BLAST) {
                Log.d(ViewRootImpl.this.mTag, "Setting up sync and frameCommitCallback");
            }
            if (this.val$syncBuffer) {
                BLASTBufferQueue bLASTBufferQueue = ViewRootImpl.this.mBlastBufferQueue;
                SurfaceSyncer.SyncBufferCallback syncBufferCallback = this.val$syncBufferCallback;
                Objects.requireNonNull(syncBufferCallback);
                bLASTBufferQueue.syncNextTransaction(new ViewRootImpl$8$$ExternalSyntheticLambda0(syncBufferCallback));
            }
            final boolean z = this.val$syncBuffer;
            final SurfaceSyncer.SyncBufferCallback syncBufferCallback2 = this.val$syncBufferCallback;
            return new HardwareRenderer.FrameCommitCallback() { // from class: android.view.ViewRootImpl$8$$ExternalSyntheticLambda1
                @Override // android.graphics.HardwareRenderer.FrameCommitCallback
                public final void onFrameCommit(boolean z2) {
                    this.f$0.m5304lambda$onFrameDraw$0$androidviewViewRootImpl$8(frame, z, syncBufferCallback2, z2);
                }
            };
        }

        /* renamed from: lambda$onFrameDraw$0$android-view-ViewRootImpl$8, reason: not valid java name */
        /* synthetic */ void m5304lambda$onFrameDraw$0$androidviewViewRootImpl$8(long frame, boolean syncBuffer, SurfaceSyncer.SyncBufferCallback syncBufferCallback, boolean didProduceBuffer) {
            Log.d(ViewRootImpl.this.mTag, "Received frameCommittedCallback lastAttemptedDrawFrameNum=" + frame + " didProduceBuffer=" + didProduceBuffer + " syncBuffer=" + syncBuffer);
            ViewRootImpl.this.mViewRootImplSocExt.hookOnFrameDrawPerfHint();
            if (!didProduceBuffer) {
                ViewRootImpl.this.mBlastBufferQueue.syncNextTransaction(null);
                syncBufferCallback.onBufferReady(ViewRootImpl.this.mBlastBufferQueue.gatherPendingTransactions(frame));
            } else if (!syncBuffer) {
                syncBufferCallback.onBufferReady(null);
            }
        }
    }

    /* renamed from: android.view.ViewRootImpl$9, reason: invalid class name */
    class AnonymousClass9 implements SurfaceSyncer.SyncTarget {
        AnonymousClass9() {
        }

        @Override // android.window.SurfaceSyncer.SyncTarget
        public void onReadyToSync(SurfaceSyncer.SyncBufferCallback syncBufferCallback) {
            ViewRootImpl.this.readyToSync(syncBufferCallback);
        }

        @Override // android.window.SurfaceSyncer.SyncTarget
        public void onSyncComplete() {
            ViewRootImpl.this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: android.view.ViewRootImpl$9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m5305lambda$onSyncComplete$0$androidviewViewRootImpl$9();
                }
            });
        }

        /* renamed from: lambda$onSyncComplete$0$android-view-ViewRootImpl$9, reason: not valid java name */
        /* synthetic */ void m5305lambda$onSyncComplete$0$androidviewViewRootImpl$9() {
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            int i = viewRootImpl.mNumSyncsInProgress - 1;
            viewRootImpl.mNumSyncsInProgress = i;
            if (i == 0 && ViewRootImpl.this.mAttachInfo.mThreadedRenderer != null) {
                HardwareRenderer.setRtAnimationsEnabled(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readyToSync(SurfaceSyncer.SyncBufferCallback syncBufferCallback) {
        this.mNumSyncsInProgress++;
        if (!isInLocalSync()) {
            this.mSyncBuffer = true;
        }
        if (this.mAttachInfo.mThreadedRenderer != null) {
            HardwareRenderer.setRtAnimationsEnabled(false);
        }
        if (this.mSyncBufferCallback != null) {
            Log.d(this.mTag, "Already set sync for the next draw.");
            this.mSyncBufferCallback.onBufferReady(null);
        }
        if (DEBUG_BLAST) {
            Log.d(this.mTag, "Setting syncFrameCallback");
        }
        this.mSyncBufferCallback = syncBufferCallback;
        if (!this.mIsInTraversal && !this.mTraversalScheduled) {
            scheduleTraversals();
        }
    }

    void mergeSync(int syncId, SurfaceSyncer otherSyncer) {
        if (!isInLocalSync()) {
            return;
        }
        this.mSurfaceSyncer.merge(this.mSyncId, syncId, otherSyncer);
    }

    public IViewRootImplWrapper getWrapper() {
        return this.mViewRootImplWrapper;
    }

    private class ViewRootImplWrapper implements IViewRootImplWrapper {
        private ViewRootImplWrapper() {
        }

        @Override // android.view.IViewRootImplWrapper
        public void collectRootScrollCaptureTargets(ScrollCaptureSearchResults results) {
            ViewRootImpl.this.collectRootScrollCaptureTargets(results);
        }

        @Override // android.view.IViewRootImplWrapper
        public Object getSocExtImpl() {
            return ViewRootImpl.this.mViewRootImplSocExt;
        }

        @Override // android.view.IViewRootImplWrapper
        public IViewRootImplExt getExtImpl() {
            return ViewRootImpl.this.mViewRootImplExt;
        }

        @Override // android.view.IViewRootImplWrapper
        public Handler getHandler() {
            return ViewRootImpl.this.mHandler;
        }

        @Override // android.view.IViewRootImplWrapper
        public Choreographer getChoreographer() {
            return ViewRootImpl.this.mChoreographer;
        }

        @Override // android.view.IViewRootImplWrapper
        public WindowManager.LayoutParams getWindowAttributes() {
            return ViewRootImpl.this.mWindowAttributes;
        }

        @Override // android.view.IViewRootImplWrapper
        public String getBasePackageName() {
            return ViewRootImpl.this.mBasePackageName;
        }

        @Override // android.view.IViewRootImplWrapper
        public TraversalRunnable getTraversalRunnable() {
            return ViewRootImpl.this.mTraversalRunnable;
        }

        @Override // android.view.IViewRootImplWrapper
        public WindowInputEventReceiver getInputEventReceiver() {
            return ViewRootImpl.this.mInputEventReceiver;
        }

        @Override // android.view.IViewRootImplWrapper
        public int getTraversalBarrier() {
            return ViewRootImpl.this.mTraversalBarrier;
        }

        @Override // android.view.IViewRootImplWrapper
        public void setTraversalBarrier(int traversalBarrier) {
            ViewRootImpl.this.mTraversalBarrier = traversalBarrier;
        }

        @Override // android.view.IViewRootImplWrapper
        public boolean getTraversalScheduled() {
            return ViewRootImpl.this.mTraversalScheduled;
        }

        @Override // android.view.IViewRootImplWrapper
        public void setTraversalScheduled(boolean traversalScheduled) {
            ViewRootImpl.this.mTraversalScheduled = traversalScheduled;
        }

        @Override // android.view.IViewRootImplWrapper
        public boolean getUnbufferedInputDispatch() {
            return ViewRootImpl.this.mUnbufferedInputDispatch;
        }

        @Override // android.view.IViewRootImplWrapper
        public void notifyRendererOfFramePending() {
            ViewRootImpl.this.notifyRendererOfFramePending();
        }

        @Override // android.view.IViewRootImplWrapper
        public void pokeDrawLockIfNeeded() {
            ViewRootImpl.this.pokeDrawLockIfNeeded();
        }

        @Override // android.view.IViewRootImplWrapper
        public void scheduleConsumeBatchedInput() {
            ViewRootImpl.this.scheduleConsumeBatchedInput();
        }
    }
}
