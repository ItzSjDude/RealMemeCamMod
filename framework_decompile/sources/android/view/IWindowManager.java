package android.view;

import android.app.IAssistDataReceiver;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.IRemoteCallback;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.IAppTransitionAnimationSpecsFuture;
import android.view.ICrossWindowBlurEnabledListener;
import android.view.IDisplayFoldListener;
import android.view.IDisplayWindowInsetsController;
import android.view.IDisplayWindowListener;
import android.view.IDisplayWindowRotationController;
import android.view.IOnKeyguardExitResult;
import android.view.IPinnedTaskListener;
import android.view.IRotationWatcher;
import android.view.IScrollCaptureResponseListener;
import android.view.ISystemGestureExclusionListener;
import android.view.IWallpaperVisibilityListener;
import android.view.IWindow;
import android.view.IWindowSession;
import android.view.IWindowSessionCallback;
import android.view.WindowManager;
import android.view.displayhash.DisplayHash;
import android.view.displayhash.VerifiedDisplayHash;
import android.window.ITaskFpsCallback;
import com.android.internal.os.IResultReceiver;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.internal.policy.IKeyguardLockedStateListener;
import com.android.internal.policy.IShortcutService;
import java.util.List;

/* loaded from: classes3.dex */
public interface IWindowManager extends IInterface {
    public static final int FIXED_TO_USER_ROTATION_DEFAULT = 0;
    public static final int FIXED_TO_USER_ROTATION_DISABLED = 1;
    public static final int FIXED_TO_USER_ROTATION_ENABLED = 2;

    void addKeyguardLockedStateListener(IKeyguardLockedStateListener iKeyguardLockedStateListener) throws RemoteException;

    SurfaceControl addShellRoot(int i, IWindow iWindow, int i2) throws RemoteException;

    void addWindowToken(IBinder iBinder, int i, int i2, Bundle bundle) throws RemoteException;

    Configuration attachToDisplayContent(IBinder iBinder, int i) throws RemoteException;

    Configuration attachWindowContextToDisplayArea(IBinder iBinder, int i, int i2, Bundle bundle) throws RemoteException;

    void attachWindowContextToWindowToken(IBinder iBinder, IBinder iBinder2) throws RemoteException;

    void clearForcedDisplayDensityForUser(int i, int i2) throws RemoteException;

    void clearForcedDisplaySize(int i) throws RemoteException;

    void clearTaskTransitionSpec() throws RemoteException;

    boolean clearWindowContentFrameStats(IBinder iBinder) throws RemoteException;

    void closeSystemDialogs(String str) throws RemoteException;

    void createInputConsumer(IBinder iBinder, String str, int i, InputChannel inputChannel) throws RemoteException;

    boolean destroyInputConsumer(String str, int i) throws RemoteException;

    void detachWindowContextFromWindowContainer(IBinder iBinder) throws RemoteException;

    @Deprecated
    void disableKeyguard(IBinder iBinder, String str, int i) throws RemoteException;

    void dismissKeyguard(IKeyguardDismissCallback iKeyguardDismissCallback, CharSequence charSequence) throws RemoteException;

    void enableScreenIfNeeded() throws RemoteException;

    @Deprecated
    void endProlongedAnimations() throws RemoteException;

    void exitKeyguardSecurely(IOnKeyguardExitResult iOnKeyguardExitResult) throws RemoteException;

    void freezeDisplayRotation(int i, int i2) throws RemoteException;

    void freezeRotation(int i) throws RemoteException;

    float getAnimationScale(int i) throws RemoteException;

    float[] getAnimationScales() throws RemoteException;

    int getBaseDisplayDensity(int i) throws RemoteException;

    void getBaseDisplaySize(int i, Point point) throws RemoteException;

    float getCurrentAnimatorScale() throws RemoteException;

    Region getCurrentImeTouchRegion() throws RemoteException;

    int getDefaultDisplayRotation() throws RemoteException;

    int getDisplayImePolicy(int i) throws RemoteException;

    int getDockedStackSide() throws RemoteException;

    int getImeDisplayId() throws RemoteException;

    int getInitialDisplayDensity(int i) throws RemoteException;

    void getInitialDisplaySize(int i, Point point) throws RemoteException;

    int getNavBarPosition(int i) throws RemoteException;

    List<DisplayInfo> getPossibleDisplayInfo(int i, String str) throws RemoteException;

    int getPreferredOptionsPanelGravity(int i) throws RemoteException;

    int getRemoveContentMode(int i) throws RemoteException;

    void getStableInsets(int i, Rect rect) throws RemoteException;

    String[] getSupportedDisplayHashAlgorithms() throws RemoteException;

    WindowContentFrameStats getWindowContentFrameStats(IBinder iBinder) throws RemoteException;

    boolean getWindowInsets(WindowManager.LayoutParams layoutParams, int i, InsetsState insetsState) throws RemoteException;

    int getWindowingMode(int i) throws RemoteException;

    boolean hasNavigationBar(int i) throws RemoteException;

    void hideTransientBars(int i) throws RemoteException;

    void holdLock(IBinder iBinder, int i) throws RemoteException;

    boolean isDisplayRotationFrozen(int i) throws RemoteException;

    boolean isKeyguardLocked() throws RemoteException;

    boolean isKeyguardSecure(int i) throws RemoteException;

    boolean isLayerTracing() throws RemoteException;

    boolean isRotationFrozen() throws RemoteException;

    boolean isSafeModeEnabled() throws RemoteException;

    boolean isTaskSnapshotSupported() throws RemoteException;

    boolean isViewServerRunning() throws RemoteException;

    boolean isWindowToken(IBinder iBinder) throws RemoteException;

    boolean isWindowTraceEnabled() throws RemoteException;

    void lockNow(Bundle bundle) throws RemoteException;

    boolean mirrorDisplay(int i, SurfaceControl surfaceControl) throws RemoteException;

    SurfaceControl mirrorWallpaperSurface(int i) throws RemoteException;

    IWindowSession openSession(IWindowSessionCallback iWindowSessionCallback) throws RemoteException;

    void overridePendingAppTransitionMultiThumbFuture(IAppTransitionAnimationSpecsFuture iAppTransitionAnimationSpecsFuture, IRemoteCallback iRemoteCallback, boolean z, int i) throws RemoteException;

    void overridePendingAppTransitionRemote(RemoteAnimationAdapter remoteAnimationAdapter, int i) throws RemoteException;

    @Deprecated
    void reenableKeyguard(IBinder iBinder, int i) throws RemoteException;

    void refreshScreenCaptureDisabled() throws RemoteException;

    boolean registerCrossWindowBlurEnabledListener(ICrossWindowBlurEnabledListener iCrossWindowBlurEnabledListener) throws RemoteException;

    void registerDisplayFoldListener(IDisplayFoldListener iDisplayFoldListener) throws RemoteException;

    int[] registerDisplayWindowListener(IDisplayWindowListener iDisplayWindowListener) throws RemoteException;

    void registerPinnedTaskListener(int i, IPinnedTaskListener iPinnedTaskListener) throws RemoteException;

    void registerShortcutKey(long j, IShortcutService iShortcutService) throws RemoteException;

    void registerSystemGestureExclusionListener(ISystemGestureExclusionListener iSystemGestureExclusionListener, int i) throws RemoteException;

    void registerTaskFpsCallback(int i, ITaskFpsCallback iTaskFpsCallback) throws RemoteException;

    boolean registerWallpaperVisibilityListener(IWallpaperVisibilityListener iWallpaperVisibilityListener, int i) throws RemoteException;

    void removeKeyguardLockedStateListener(IKeyguardLockedStateListener iKeyguardLockedStateListener) throws RemoteException;

    void removeRotationWatcher(IRotationWatcher iRotationWatcher) throws RemoteException;

    void removeWindowToken(IBinder iBinder, int i) throws RemoteException;

    void requestAppKeyboardShortcuts(IResultReceiver iResultReceiver, int i) throws RemoteException;

    boolean requestAssistScreenshot(IAssistDataReceiver iAssistDataReceiver) throws RemoteException;

    void requestScrollCapture(int i, IBinder iBinder, int i2, IScrollCaptureResponseListener iScrollCaptureResponseListener) throws RemoteException;

    void saveWindowTraceToFile() throws RemoteException;

    Bitmap screenshotWallpaper() throws RemoteException;

    void setAnimationScale(int i, float f) throws RemoteException;

    void setAnimationScales(float[] fArr) throws RemoteException;

    void setDisplayHashThrottlingEnabled(boolean z) throws RemoteException;

    void setDisplayImePolicy(int i, int i2) throws RemoteException;

    void setDisplayWindowInsetsController(int i, IDisplayWindowInsetsController iDisplayWindowInsetsController) throws RemoteException;

    void setDisplayWindowRotationController(IDisplayWindowRotationController iDisplayWindowRotationController) throws RemoteException;

    void setDockedTaskDividerTouchRegion(Rect rect) throws RemoteException;

    void setEventDispatching(boolean z) throws RemoteException;

    void setFixedToUserRotation(int i, int i2) throws RemoteException;

    void setForcedDisplayDensityForUser(int i, int i2, int i3) throws RemoteException;

    void setForcedDisplayScalingMode(int i, int i2) throws RemoteException;

    void setForcedDisplaySize(int i, int i2, int i3) throws RemoteException;

    void setIgnoreOrientationRequest(int i, boolean z) throws RemoteException;

    void setInTouchMode(boolean z) throws RemoteException;

    void setLayerTracing(boolean z) throws RemoteException;

    void setLayerTracingFlags(int i) throws RemoteException;

    void setNavBarVirtualKeyHapticFeedbackEnabled(boolean z) throws RemoteException;

    void setRecentsAppBehindSystemBars(boolean z) throws RemoteException;

    void setRecentsVisibility(boolean z) throws RemoteException;

    void setRemoveContentMode(int i, int i2) throws RemoteException;

    void setShellRootAccessibilityWindow(int i, int i2, IWindow iWindow) throws RemoteException;

    void setShouldShowSystemDecors(int i, boolean z) throws RemoteException;

    void setShouldShowWithInsecureKeyguard(int i, boolean z) throws RemoteException;

    void setStrictModeVisualIndicatorPreference(String str) throws RemoteException;

    void setSwitchingUser(boolean z) throws RemoteException;

    void setTaskSnapshotEnabled(boolean z) throws RemoteException;

    void setTaskTransitionSpec(TaskTransitionSpec taskTransitionSpec) throws RemoteException;

    void setWindowingMode(int i, int i2) throws RemoteException;

    boolean shouldShowSystemDecors(int i) throws RemoteException;

    boolean shouldShowWithInsecureKeyguard(int i) throws RemoteException;

    void showGlobalActions() throws RemoteException;

    void showStrictModeViolation(boolean z) throws RemoteException;

    Bitmap snapshotTaskForRecents(int i) throws RemoteException;

    void startFreezingScreen(int i, int i2) throws RemoteException;

    boolean startViewServer(int i) throws RemoteException;

    void startWindowTrace() throws RemoteException;

    void stopFreezingScreen() throws RemoteException;

    boolean stopViewServer() throws RemoteException;

    void stopWindowTrace() throws RemoteException;

    void syncInputTransactions(boolean z) throws RemoteException;

    void thawDisplayRotation(int i) throws RemoteException;

    void thawRotation() throws RemoteException;

    void unregisterCrossWindowBlurEnabledListener(ICrossWindowBlurEnabledListener iCrossWindowBlurEnabledListener) throws RemoteException;

    void unregisterDisplayFoldListener(IDisplayFoldListener iDisplayFoldListener) throws RemoteException;

    void unregisterDisplayWindowListener(IDisplayWindowListener iDisplayWindowListener) throws RemoteException;

    void unregisterSystemGestureExclusionListener(ISystemGestureExclusionListener iSystemGestureExclusionListener, int i) throws RemoteException;

    void unregisterTaskFpsCallback(ITaskFpsCallback iTaskFpsCallback) throws RemoteException;

    void unregisterWallpaperVisibilityListener(IWallpaperVisibilityListener iWallpaperVisibilityListener, int i) throws RemoteException;

    void updateDisplayWindowRequestedVisibilities(int i, InsetsVisibilities insetsVisibilities) throws RemoteException;

    void updateRotation(boolean z, boolean z2) throws RemoteException;

    void updateStaticPrivacyIndicatorBounds(int i, Rect[] rectArr) throws RemoteException;

    boolean useBLAST() throws RemoteException;

    VerifiedDisplayHash verifyDisplayHash(DisplayHash displayHash) throws RemoteException;

    int watchRotation(IRotationWatcher iRotationWatcher, int i) throws RemoteException;

    public static class Default implements IWindowManager {
        @Override // android.view.IWindowManager
        public boolean startViewServer(int port) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public boolean stopViewServer() throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public boolean isViewServerRunning() throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public IWindowSession openSession(IWindowSessionCallback callback) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public boolean useBLAST() throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void getInitialDisplaySize(int displayId, Point size) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void getBaseDisplaySize(int displayId, Point size) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setForcedDisplaySize(int displayId, int width, int height) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void clearForcedDisplaySize(int displayId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public int getInitialDisplayDensity(int displayId) throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public int getBaseDisplayDensity(int displayId) throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public void setForcedDisplayDensityForUser(int displayId, int density, int userId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void clearForcedDisplayDensityForUser(int displayId, int userId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setForcedDisplayScalingMode(int displayId, int mode) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setEventDispatching(boolean enabled) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean isWindowToken(IBinder binder) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void addWindowToken(IBinder token, int type, int displayId, Bundle options) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void removeWindowToken(IBinder token, int displayId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setDisplayWindowRotationController(IDisplayWindowRotationController controller) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public SurfaceControl addShellRoot(int displayId, IWindow client, int shellRootLayer) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public void setShellRootAccessibilityWindow(int displayId, int shellRootLayer, IWindow target) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void overridePendingAppTransitionMultiThumbFuture(IAppTransitionAnimationSpecsFuture specsFuture, IRemoteCallback startedCallback, boolean scaleUp, int displayId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void overridePendingAppTransitionRemote(RemoteAnimationAdapter remoteAnimationAdapter, int displayId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void endProlongedAnimations() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void startFreezingScreen(int exitAnim, int enterAnim) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void stopFreezingScreen() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void disableKeyguard(IBinder token, String tag, int userId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void reenableKeyguard(IBinder token, int userId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void exitKeyguardSecurely(IOnKeyguardExitResult callback) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean isKeyguardLocked() throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public boolean isKeyguardSecure(int userId) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void dismissKeyguard(IKeyguardDismissCallback callback, CharSequence message) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void addKeyguardLockedStateListener(IKeyguardLockedStateListener listener) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void removeKeyguardLockedStateListener(IKeyguardLockedStateListener listener) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setSwitchingUser(boolean switching) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void closeSystemDialogs(String reason) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public float getAnimationScale(int which) throws RemoteException {
            return 0.0f;
        }

        @Override // android.view.IWindowManager
        public float[] getAnimationScales() throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public void setAnimationScale(int which, float scale) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setAnimationScales(float[] scales) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public float getCurrentAnimatorScale() throws RemoteException {
            return 0.0f;
        }

        @Override // android.view.IWindowManager
        public void setInTouchMode(boolean showFocus) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void showStrictModeViolation(boolean on) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setStrictModeVisualIndicatorPreference(String enabled) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void refreshScreenCaptureDisabled() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void updateRotation(boolean alwaysSendConfiguration, boolean forceRelayout) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public int getDefaultDisplayRotation() throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public int watchRotation(IRotationWatcher watcher, int displayId) throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public void removeRotationWatcher(IRotationWatcher watcher) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public int getPreferredOptionsPanelGravity(int displayId) throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public void freezeRotation(int rotation) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void thawRotation() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean isRotationFrozen() throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void freezeDisplayRotation(int displayId, int rotation) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void thawDisplayRotation(int displayId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean isDisplayRotationFrozen(int displayId) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void setFixedToUserRotation(int displayId, int fixedToUserRotation) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setIgnoreOrientationRequest(int displayId, boolean ignoreOrientationRequest) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public Bitmap screenshotWallpaper() throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public SurfaceControl mirrorWallpaperSurface(int displayId) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public boolean registerWallpaperVisibilityListener(IWallpaperVisibilityListener listener, int displayId) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void unregisterWallpaperVisibilityListener(IWallpaperVisibilityListener listener, int displayId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void registerSystemGestureExclusionListener(ISystemGestureExclusionListener listener, int displayId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void unregisterSystemGestureExclusionListener(ISystemGestureExclusionListener listener, int displayId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean requestAssistScreenshot(IAssistDataReceiver receiver) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void hideTransientBars(int displayId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setRecentsVisibility(boolean visible) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void updateStaticPrivacyIndicatorBounds(int displayId, Rect[] staticBounds) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setNavBarVirtualKeyHapticFeedbackEnabled(boolean enabled) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean hasNavigationBar(int displayId) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public int getNavBarPosition(int displayId) throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public void lockNow(Bundle options) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean isSafeModeEnabled() throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void enableScreenIfNeeded() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean clearWindowContentFrameStats(IBinder token) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public WindowContentFrameStats getWindowContentFrameStats(IBinder token) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public int getDockedStackSide() throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public void setDockedTaskDividerTouchRegion(Rect touchableRegion) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void registerPinnedTaskListener(int displayId, IPinnedTaskListener listener) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void requestAppKeyboardShortcuts(IResultReceiver receiver, int deviceId) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void getStableInsets(int displayId, Rect outInsets) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void registerShortcutKey(long shortcutCode, IShortcutService keySubscriber) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void createInputConsumer(IBinder token, String name, int displayId, InputChannel inputChannel) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean destroyInputConsumer(String name, int displayId) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public Region getCurrentImeTouchRegion() throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public void registerDisplayFoldListener(IDisplayFoldListener listener) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void unregisterDisplayFoldListener(IDisplayFoldListener listener) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public int[] registerDisplayWindowListener(IDisplayWindowListener listener) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public void unregisterDisplayWindowListener(IDisplayWindowListener listener) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void startWindowTrace() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void stopWindowTrace() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void saveWindowTraceToFile() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean isWindowTraceEnabled() throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public int getWindowingMode(int displayId) throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public void setWindowingMode(int displayId, int mode) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public int getRemoveContentMode(int displayId) throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public void setRemoveContentMode(int displayId, int mode) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean shouldShowWithInsecureKeyguard(int displayId) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void setShouldShowWithInsecureKeyguard(int displayId, boolean shouldShow) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean shouldShowSystemDecors(int displayId) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void setShouldShowSystemDecors(int displayId, boolean shouldShow) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public int getDisplayImePolicy(int displayId) throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public void setDisplayImePolicy(int displayId, int imePolicy) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void syncInputTransactions(boolean waitForAnimations) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean isLayerTracing() throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void setLayerTracing(boolean enabled) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean mirrorDisplay(int displayId, SurfaceControl outSurfaceControl) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void setDisplayWindowInsetsController(int displayId, IDisplayWindowInsetsController displayWindowInsetsController) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void updateDisplayWindowRequestedVisibilities(int displayId, InsetsVisibilities vis) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean getWindowInsets(WindowManager.LayoutParams attrs, int displayId, InsetsState outInsetsState) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public List<DisplayInfo> getPossibleDisplayInfo(int displayId, String packageName) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public void showGlobalActions() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setLayerTracingFlags(int flags) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void requestScrollCapture(int displayId, IBinder behindClient, int taskId, IScrollCaptureResponseListener listener) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void holdLock(IBinder token, int durationMs) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public String[] getSupportedDisplayHashAlgorithms() throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public VerifiedDisplayHash verifyDisplayHash(DisplayHash displayHash) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public void setDisplayHashThrottlingEnabled(boolean enable) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public Configuration attachWindowContextToDisplayArea(IBinder clientToken, int type, int displayId, Bundle options) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public void attachWindowContextToWindowToken(IBinder clientToken, IBinder token) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public Configuration attachToDisplayContent(IBinder clientToken, int displayId) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public void detachWindowContextFromWindowContainer(IBinder clientToken) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean registerCrossWindowBlurEnabledListener(ICrossWindowBlurEnabledListener listener) throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public void unregisterCrossWindowBlurEnabledListener(ICrossWindowBlurEnabledListener listener) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public boolean isTaskSnapshotSupported() throws RemoteException {
            return false;
        }

        @Override // android.view.IWindowManager
        public int getImeDisplayId() throws RemoteException {
            return 0;
        }

        @Override // android.view.IWindowManager
        public void setTaskSnapshotEnabled(boolean enabled) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void setTaskTransitionSpec(TaskTransitionSpec spec) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void clearTaskTransitionSpec() throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void registerTaskFpsCallback(int taskId, ITaskFpsCallback callback) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public void unregisterTaskFpsCallback(ITaskFpsCallback listener) throws RemoteException {
        }

        @Override // android.view.IWindowManager
        public Bitmap snapshotTaskForRecents(int taskId) throws RemoteException {
            return null;
        }

        @Override // android.view.IWindowManager
        public void setRecentsAppBehindSystemBars(boolean behindSystemBars) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IWindowManager {
        public static final String DESCRIPTOR = "android.view.IWindowManager";
        static final int TRANSACTION_addKeyguardLockedStateListener = 33;
        static final int TRANSACTION_addShellRoot = 20;
        static final int TRANSACTION_addWindowToken = 17;
        static final int TRANSACTION_attachToDisplayContent = 121;
        static final int TRANSACTION_attachWindowContextToDisplayArea = 119;
        static final int TRANSACTION_attachWindowContextToWindowToken = 120;
        static final int TRANSACTION_clearForcedDisplayDensityForUser = 13;
        static final int TRANSACTION_clearForcedDisplaySize = 9;
        static final int TRANSACTION_clearTaskTransitionSpec = 129;
        static final int TRANSACTION_clearWindowContentFrameStats = 75;
        static final int TRANSACTION_closeSystemDialogs = 36;
        static final int TRANSACTION_createInputConsumer = 83;
        static final int TRANSACTION_destroyInputConsumer = 84;
        static final int TRANSACTION_detachWindowContextFromWindowContainer = 122;
        static final int TRANSACTION_disableKeyguard = 27;
        static final int TRANSACTION_dismissKeyguard = 32;
        static final int TRANSACTION_enableScreenIfNeeded = 74;
        static final int TRANSACTION_endProlongedAnimations = 24;
        static final int TRANSACTION_exitKeyguardSecurely = 29;
        static final int TRANSACTION_freezeDisplayRotation = 54;
        static final int TRANSACTION_freezeRotation = 51;
        static final int TRANSACTION_getAnimationScale = 37;
        static final int TRANSACTION_getAnimationScales = 38;
        static final int TRANSACTION_getBaseDisplayDensity = 11;
        static final int TRANSACTION_getBaseDisplaySize = 7;
        static final int TRANSACTION_getCurrentAnimatorScale = 41;
        static final int TRANSACTION_getCurrentImeTouchRegion = 85;
        static final int TRANSACTION_getDefaultDisplayRotation = 47;
        static final int TRANSACTION_getDisplayImePolicy = 102;
        static final int TRANSACTION_getDockedStackSide = 77;
        static final int TRANSACTION_getImeDisplayId = 126;
        static final int TRANSACTION_getInitialDisplayDensity = 10;
        static final int TRANSACTION_getInitialDisplaySize = 6;
        static final int TRANSACTION_getNavBarPosition = 71;
        static final int TRANSACTION_getPossibleDisplayInfo = 111;
        static final int TRANSACTION_getPreferredOptionsPanelGravity = 50;
        static final int TRANSACTION_getRemoveContentMode = 96;
        static final int TRANSACTION_getStableInsets = 81;
        static final int TRANSACTION_getSupportedDisplayHashAlgorithms = 116;
        static final int TRANSACTION_getWindowContentFrameStats = 76;
        static final int TRANSACTION_getWindowInsets = 110;
        static final int TRANSACTION_getWindowingMode = 94;
        static final int TRANSACTION_hasNavigationBar = 70;
        static final int TRANSACTION_hideTransientBars = 66;
        static final int TRANSACTION_holdLock = 115;
        static final int TRANSACTION_isDisplayRotationFrozen = 56;
        static final int TRANSACTION_isKeyguardLocked = 30;
        static final int TRANSACTION_isKeyguardSecure = 31;
        static final int TRANSACTION_isLayerTracing = 105;
        static final int TRANSACTION_isRotationFrozen = 53;
        static final int TRANSACTION_isSafeModeEnabled = 73;
        static final int TRANSACTION_isTaskSnapshotSupported = 125;
        static final int TRANSACTION_isViewServerRunning = 3;
        static final int TRANSACTION_isWindowToken = 16;
        static final int TRANSACTION_isWindowTraceEnabled = 93;
        static final int TRANSACTION_lockNow = 72;
        static final int TRANSACTION_mirrorDisplay = 107;
        static final int TRANSACTION_mirrorWallpaperSurface = 60;
        static final int TRANSACTION_openSession = 4;
        static final int TRANSACTION_overridePendingAppTransitionMultiThumbFuture = 22;
        static final int TRANSACTION_overridePendingAppTransitionRemote = 23;
        static final int TRANSACTION_reenableKeyguard = 28;
        static final int TRANSACTION_refreshScreenCaptureDisabled = 45;
        static final int TRANSACTION_registerCrossWindowBlurEnabledListener = 123;
        static final int TRANSACTION_registerDisplayFoldListener = 86;
        static final int TRANSACTION_registerDisplayWindowListener = 88;
        static final int TRANSACTION_registerPinnedTaskListener = 79;
        static final int TRANSACTION_registerShortcutKey = 82;
        static final int TRANSACTION_registerSystemGestureExclusionListener = 63;
        static final int TRANSACTION_registerTaskFpsCallback = 130;
        static final int TRANSACTION_registerWallpaperVisibilityListener = 61;
        static final int TRANSACTION_removeKeyguardLockedStateListener = 34;
        static final int TRANSACTION_removeRotationWatcher = 49;
        static final int TRANSACTION_removeWindowToken = 18;
        static final int TRANSACTION_requestAppKeyboardShortcuts = 80;
        static final int TRANSACTION_requestAssistScreenshot = 65;
        static final int TRANSACTION_requestScrollCapture = 114;
        static final int TRANSACTION_saveWindowTraceToFile = 92;
        static final int TRANSACTION_screenshotWallpaper = 59;
        static final int TRANSACTION_setAnimationScale = 39;
        static final int TRANSACTION_setAnimationScales = 40;
        static final int TRANSACTION_setDisplayHashThrottlingEnabled = 118;
        static final int TRANSACTION_setDisplayImePolicy = 103;
        static final int TRANSACTION_setDisplayWindowInsetsController = 108;
        static final int TRANSACTION_setDisplayWindowRotationController = 19;
        static final int TRANSACTION_setDockedTaskDividerTouchRegion = 78;
        static final int TRANSACTION_setEventDispatching = 15;
        static final int TRANSACTION_setFixedToUserRotation = 57;
        static final int TRANSACTION_setForcedDisplayDensityForUser = 12;
        static final int TRANSACTION_setForcedDisplayScalingMode = 14;
        static final int TRANSACTION_setForcedDisplaySize = 8;
        static final int TRANSACTION_setIgnoreOrientationRequest = 58;
        static final int TRANSACTION_setInTouchMode = 42;
        static final int TRANSACTION_setLayerTracing = 106;
        static final int TRANSACTION_setLayerTracingFlags = 113;
        static final int TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled = 69;
        static final int TRANSACTION_setRecentsAppBehindSystemBars = 133;
        static final int TRANSACTION_setRecentsVisibility = 67;
        static final int TRANSACTION_setRemoveContentMode = 97;
        static final int TRANSACTION_setShellRootAccessibilityWindow = 21;
        static final int TRANSACTION_setShouldShowSystemDecors = 101;
        static final int TRANSACTION_setShouldShowWithInsecureKeyguard = 99;
        static final int TRANSACTION_setStrictModeVisualIndicatorPreference = 44;
        static final int TRANSACTION_setSwitchingUser = 35;
        static final int TRANSACTION_setTaskSnapshotEnabled = 127;
        static final int TRANSACTION_setTaskTransitionSpec = 128;
        static final int TRANSACTION_setWindowingMode = 95;
        static final int TRANSACTION_shouldShowSystemDecors = 100;
        static final int TRANSACTION_shouldShowWithInsecureKeyguard = 98;
        static final int TRANSACTION_showGlobalActions = 112;
        static final int TRANSACTION_showStrictModeViolation = 43;
        static final int TRANSACTION_snapshotTaskForRecents = 132;
        static final int TRANSACTION_startFreezingScreen = 25;
        static final int TRANSACTION_startViewServer = 1;
        static final int TRANSACTION_startWindowTrace = 90;
        static final int TRANSACTION_stopFreezingScreen = 26;
        static final int TRANSACTION_stopViewServer = 2;
        static final int TRANSACTION_stopWindowTrace = 91;
        static final int TRANSACTION_syncInputTransactions = 104;
        static final int TRANSACTION_thawDisplayRotation = 55;
        static final int TRANSACTION_thawRotation = 52;
        static final int TRANSACTION_unregisterCrossWindowBlurEnabledListener = 124;
        static final int TRANSACTION_unregisterDisplayFoldListener = 87;
        static final int TRANSACTION_unregisterDisplayWindowListener = 89;
        static final int TRANSACTION_unregisterSystemGestureExclusionListener = 64;
        static final int TRANSACTION_unregisterTaskFpsCallback = 131;
        static final int TRANSACTION_unregisterWallpaperVisibilityListener = 62;
        static final int TRANSACTION_updateDisplayWindowRequestedVisibilities = 109;
        static final int TRANSACTION_updateRotation = 46;
        static final int TRANSACTION_updateStaticPrivacyIndicatorBounds = 68;
        static final int TRANSACTION_useBLAST = 5;
        static final int TRANSACTION_verifyDisplayHash = 117;
        static final int TRANSACTION_watchRotation = 48;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWindowManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IWindowManager)) {
                return (IWindowManager) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public static String getDefaultTransactionName(int transactionCode) {
            switch (transactionCode) {
                case 1:
                    return "startViewServer";
                case 2:
                    return "stopViewServer";
                case 3:
                    return "isViewServerRunning";
                case 4:
                    return "openSession";
                case 5:
                    return "useBLAST";
                case 6:
                    return "getInitialDisplaySize";
                case 7:
                    return "getBaseDisplaySize";
                case 8:
                    return "setForcedDisplaySize";
                case 9:
                    return "clearForcedDisplaySize";
                case 10:
                    return "getInitialDisplayDensity";
                case 11:
                    return "getBaseDisplayDensity";
                case 12:
                    return "setForcedDisplayDensityForUser";
                case 13:
                    return "clearForcedDisplayDensityForUser";
                case 14:
                    return "setForcedDisplayScalingMode";
                case 15:
                    return "setEventDispatching";
                case 16:
                    return "isWindowToken";
                case 17:
                    return "addWindowToken";
                case 18:
                    return "removeWindowToken";
                case 19:
                    return "setDisplayWindowRotationController";
                case 20:
                    return "addShellRoot";
                case 21:
                    return "setShellRootAccessibilityWindow";
                case 22:
                    return "overridePendingAppTransitionMultiThumbFuture";
                case 23:
                    return "overridePendingAppTransitionRemote";
                case 24:
                    return "endProlongedAnimations";
                case 25:
                    return "startFreezingScreen";
                case 26:
                    return "stopFreezingScreen";
                case 27:
                    return "disableKeyguard";
                case 28:
                    return "reenableKeyguard";
                case 29:
                    return "exitKeyguardSecurely";
                case 30:
                    return "isKeyguardLocked";
                case 31:
                    return "isKeyguardSecure";
                case 32:
                    return "dismissKeyguard";
                case 33:
                    return "addKeyguardLockedStateListener";
                case 34:
                    return "removeKeyguardLockedStateListener";
                case 35:
                    return "setSwitchingUser";
                case 36:
                    return "closeSystemDialogs";
                case 37:
                    return "getAnimationScale";
                case 38:
                    return "getAnimationScales";
                case 39:
                    return "setAnimationScale";
                case 40:
                    return "setAnimationScales";
                case 41:
                    return "getCurrentAnimatorScale";
                case 42:
                    return "setInTouchMode";
                case 43:
                    return "showStrictModeViolation";
                case 44:
                    return "setStrictModeVisualIndicatorPreference";
                case 45:
                    return "refreshScreenCaptureDisabled";
                case 46:
                    return "updateRotation";
                case 47:
                    return "getDefaultDisplayRotation";
                case 48:
                    return "watchRotation";
                case 49:
                    return "removeRotationWatcher";
                case 50:
                    return "getPreferredOptionsPanelGravity";
                case 51:
                    return "freezeRotation";
                case 52:
                    return "thawRotation";
                case 53:
                    return "isRotationFrozen";
                case 54:
                    return "freezeDisplayRotation";
                case 55:
                    return "thawDisplayRotation";
                case 56:
                    return "isDisplayRotationFrozen";
                case 57:
                    return "setFixedToUserRotation";
                case 58:
                    return "setIgnoreOrientationRequest";
                case 59:
                    return "screenshotWallpaper";
                case 60:
                    return "mirrorWallpaperSurface";
                case 61:
                    return "registerWallpaperVisibilityListener";
                case 62:
                    return "unregisterWallpaperVisibilityListener";
                case 63:
                    return "registerSystemGestureExclusionListener";
                case 64:
                    return "unregisterSystemGestureExclusionListener";
                case 65:
                    return "requestAssistScreenshot";
                case 66:
                    return "hideTransientBars";
                case 67:
                    return "setRecentsVisibility";
                case 68:
                    return "updateStaticPrivacyIndicatorBounds";
                case 69:
                    return "setNavBarVirtualKeyHapticFeedbackEnabled";
                case 70:
                    return "hasNavigationBar";
                case 71:
                    return "getNavBarPosition";
                case 72:
                    return "lockNow";
                case 73:
                    return "isSafeModeEnabled";
                case 74:
                    return "enableScreenIfNeeded";
                case 75:
                    return "clearWindowContentFrameStats";
                case 76:
                    return "getWindowContentFrameStats";
                case 77:
                    return "getDockedStackSide";
                case 78:
                    return "setDockedTaskDividerTouchRegion";
                case 79:
                    return "registerPinnedTaskListener";
                case 80:
                    return "requestAppKeyboardShortcuts";
                case 81:
                    return "getStableInsets";
                case 82:
                    return "registerShortcutKey";
                case 83:
                    return "createInputConsumer";
                case 84:
                    return "destroyInputConsumer";
                case 85:
                    return "getCurrentImeTouchRegion";
                case 86:
                    return "registerDisplayFoldListener";
                case 87:
                    return "unregisterDisplayFoldListener";
                case 88:
                    return "registerDisplayWindowListener";
                case 89:
                    return "unregisterDisplayWindowListener";
                case 90:
                    return "startWindowTrace";
                case 91:
                    return "stopWindowTrace";
                case 92:
                    return "saveWindowTraceToFile";
                case 93:
                    return "isWindowTraceEnabled";
                case 94:
                    return "getWindowingMode";
                case 95:
                    return "setWindowingMode";
                case 96:
                    return "getRemoveContentMode";
                case 97:
                    return "setRemoveContentMode";
                case 98:
                    return "shouldShowWithInsecureKeyguard";
                case 99:
                    return "setShouldShowWithInsecureKeyguard";
                case 100:
                    return "shouldShowSystemDecors";
                case 101:
                    return "setShouldShowSystemDecors";
                case 102:
                    return "getDisplayImePolicy";
                case 103:
                    return "setDisplayImePolicy";
                case 104:
                    return "syncInputTransactions";
                case 105:
                    return "isLayerTracing";
                case 106:
                    return "setLayerTracing";
                case 107:
                    return "mirrorDisplay";
                case 108:
                    return "setDisplayWindowInsetsController";
                case 109:
                    return "updateDisplayWindowRequestedVisibilities";
                case 110:
                    return "getWindowInsets";
                case 111:
                    return "getPossibleDisplayInfo";
                case 112:
                    return "showGlobalActions";
                case 113:
                    return "setLayerTracingFlags";
                case 114:
                    return "requestScrollCapture";
                case 115:
                    return "holdLock";
                case 116:
                    return "getSupportedDisplayHashAlgorithms";
                case 117:
                    return "verifyDisplayHash";
                case 118:
                    return "setDisplayHashThrottlingEnabled";
                case 119:
                    return "attachWindowContextToDisplayArea";
                case 120:
                    return "attachWindowContextToWindowToken";
                case 121:
                    return "attachToDisplayContent";
                case 122:
                    return "detachWindowContextFromWindowContainer";
                case 123:
                    return "registerCrossWindowBlurEnabledListener";
                case 124:
                    return "unregisterCrossWindowBlurEnabledListener";
                case 125:
                    return "isTaskSnapshotSupported";
                case 126:
                    return "getImeDisplayId";
                case 127:
                    return "setTaskSnapshotEnabled";
                case 128:
                    return "setTaskTransitionSpec";
                case 129:
                    return "clearTaskTransitionSpec";
                case 130:
                    return "registerTaskFpsCallback";
                case 131:
                    return "unregisterTaskFpsCallback";
                case 132:
                    return "snapshotTaskForRecents";
                case 133:
                    return "setRecentsAppBehindSystemBars";
                default:
                    return null;
            }
        }

        @Override // android.os.Binder
        public String getTransactionName(int transactionCode) {
            return getDefaultTransactionName(transactionCode);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result = startViewServer(_arg0);
                            reply.writeNoException();
                            reply.writeBoolean(_result);
                            return true;
                        case 2:
                            boolean _result2 = stopViewServer();
                            reply.writeNoException();
                            reply.writeBoolean(_result2);
                            return true;
                        case 3:
                            boolean _result3 = isViewServerRunning();
                            reply.writeNoException();
                            reply.writeBoolean(_result3);
                            return true;
                        case 4:
                            IWindowSessionCallback _arg02 = IWindowSessionCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            IWindowSession _result4 = openSession(_arg02);
                            reply.writeNoException();
                            reply.writeStrongInterface(_result4);
                            return true;
                        case 5:
                            boolean _result5 = useBLAST();
                            reply.writeNoException();
                            reply.writeBoolean(_result5);
                            return true;
                        case 6:
                            int _arg03 = data.readInt();
                            Point _arg1 = new Point();
                            data.enforceNoDataAvail();
                            getInitialDisplaySize(_arg03, _arg1);
                            reply.writeNoException();
                            reply.writeTypedObject(_arg1, 1);
                            return true;
                        case 7:
                            int _arg04 = data.readInt();
                            Point _arg12 = new Point();
                            data.enforceNoDataAvail();
                            getBaseDisplaySize(_arg04, _arg12);
                            reply.writeNoException();
                            reply.writeTypedObject(_arg12, 1);
                            return true;
                        case 8:
                            int _arg05 = data.readInt();
                            int _arg13 = data.readInt();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            setForcedDisplaySize(_arg05, _arg13, _arg2);
                            reply.writeNoException();
                            return true;
                        case 9:
                            int _arg06 = data.readInt();
                            data.enforceNoDataAvail();
                            clearForcedDisplaySize(_arg06);
                            reply.writeNoException();
                            return true;
                        case 10:
                            int _arg07 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result6 = getInitialDisplayDensity(_arg07);
                            reply.writeNoException();
                            reply.writeInt(_result6);
                            return true;
                        case 11:
                            int _arg08 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result7 = getBaseDisplayDensity(_arg08);
                            reply.writeNoException();
                            reply.writeInt(_result7);
                            return true;
                        case 12:
                            int _arg09 = data.readInt();
                            int _arg14 = data.readInt();
                            int _arg22 = data.readInt();
                            data.enforceNoDataAvail();
                            setForcedDisplayDensityForUser(_arg09, _arg14, _arg22);
                            reply.writeNoException();
                            return true;
                        case 13:
                            int _arg010 = data.readInt();
                            int _arg15 = data.readInt();
                            data.enforceNoDataAvail();
                            clearForcedDisplayDensityForUser(_arg010, _arg15);
                            reply.writeNoException();
                            return true;
                        case 14:
                            int _arg011 = data.readInt();
                            int _arg16 = data.readInt();
                            data.enforceNoDataAvail();
                            setForcedDisplayScalingMode(_arg011, _arg16);
                            reply.writeNoException();
                            return true;
                        case 15:
                            boolean _arg012 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setEventDispatching(_arg012);
                            reply.writeNoException();
                            return true;
                        case 16:
                            IBinder _arg013 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            boolean _result8 = isWindowToken(_arg013);
                            reply.writeNoException();
                            reply.writeBoolean(_result8);
                            return true;
                        case 17:
                            IBinder _arg014 = data.readStrongBinder();
                            int _arg17 = data.readInt();
                            int _arg23 = data.readInt();
                            Bundle _arg3 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            data.enforceNoDataAvail();
                            addWindowToken(_arg014, _arg17, _arg23, _arg3);
                            reply.writeNoException();
                            return true;
                        case 18:
                            IBinder _arg015 = data.readStrongBinder();
                            int _arg18 = data.readInt();
                            data.enforceNoDataAvail();
                            removeWindowToken(_arg015, _arg18);
                            reply.writeNoException();
                            return true;
                        case 19:
                            IDisplayWindowRotationController _arg016 = IDisplayWindowRotationController.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            setDisplayWindowRotationController(_arg016);
                            reply.writeNoException();
                            return true;
                        case 20:
                            int _arg017 = data.readInt();
                            IWindow _arg19 = IWindow.Stub.asInterface(data.readStrongBinder());
                            int _arg24 = data.readInt();
                            data.enforceNoDataAvail();
                            SurfaceControl _result9 = addShellRoot(_arg017, _arg19, _arg24);
                            reply.writeNoException();
                            reply.writeTypedObject(_result9, 1);
                            return true;
                        case 21:
                            int _arg018 = data.readInt();
                            int _arg110 = data.readInt();
                            IWindow _arg25 = IWindow.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            setShellRootAccessibilityWindow(_arg018, _arg110, _arg25);
                            reply.writeNoException();
                            return true;
                        case 22:
                            IAppTransitionAnimationSpecsFuture _arg019 = IAppTransitionAnimationSpecsFuture.Stub.asInterface(data.readStrongBinder());
                            IRemoteCallback _arg111 = IRemoteCallback.Stub.asInterface(data.readStrongBinder());
                            boolean _arg26 = data.readBoolean();
                            int _arg32 = data.readInt();
                            data.enforceNoDataAvail();
                            overridePendingAppTransitionMultiThumbFuture(_arg019, _arg111, _arg26, _arg32);
                            reply.writeNoException();
                            return true;
                        case 23:
                            RemoteAnimationAdapter _arg020 = (RemoteAnimationAdapter) data.readTypedObject(RemoteAnimationAdapter.CREATOR);
                            int _arg112 = data.readInt();
                            data.enforceNoDataAvail();
                            overridePendingAppTransitionRemote(_arg020, _arg112);
                            reply.writeNoException();
                            return true;
                        case 24:
                            endProlongedAnimations();
                            reply.writeNoException();
                            return true;
                        case 25:
                            int _arg021 = data.readInt();
                            int _arg113 = data.readInt();
                            data.enforceNoDataAvail();
                            startFreezingScreen(_arg021, _arg113);
                            reply.writeNoException();
                            return true;
                        case 26:
                            stopFreezingScreen();
                            reply.writeNoException();
                            return true;
                        case 27:
                            IBinder _arg022 = data.readStrongBinder();
                            String _arg114 = data.readString();
                            int _arg27 = data.readInt();
                            data.enforceNoDataAvail();
                            disableKeyguard(_arg022, _arg114, _arg27);
                            reply.writeNoException();
                            return true;
                        case 28:
                            IBinder _arg023 = data.readStrongBinder();
                            int _arg115 = data.readInt();
                            data.enforceNoDataAvail();
                            reenableKeyguard(_arg023, _arg115);
                            reply.writeNoException();
                            return true;
                        case 29:
                            IOnKeyguardExitResult _arg024 = IOnKeyguardExitResult.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            exitKeyguardSecurely(_arg024);
                            reply.writeNoException();
                            return true;
                        case 30:
                            boolean _result10 = isKeyguardLocked();
                            reply.writeNoException();
                            reply.writeBoolean(_result10);
                            return true;
                        case 31:
                            int _arg025 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result11 = isKeyguardSecure(_arg025);
                            reply.writeNoException();
                            reply.writeBoolean(_result11);
                            return true;
                        case 32:
                            IKeyguardDismissCallback _arg026 = IKeyguardDismissCallback.Stub.asInterface(data.readStrongBinder());
                            CharSequence _arg116 = (CharSequence) data.readTypedObject(TextUtils.CHAR_SEQUENCE_CREATOR);
                            data.enforceNoDataAvail();
                            dismissKeyguard(_arg026, _arg116);
                            reply.writeNoException();
                            return true;
                        case 33:
                            IKeyguardLockedStateListener _arg027 = IKeyguardLockedStateListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            addKeyguardLockedStateListener(_arg027);
                            reply.writeNoException();
                            return true;
                        case 34:
                            IKeyguardLockedStateListener _arg028 = IKeyguardLockedStateListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            removeKeyguardLockedStateListener(_arg028);
                            reply.writeNoException();
                            return true;
                        case 35:
                            boolean _arg029 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setSwitchingUser(_arg029);
                            reply.writeNoException();
                            return true;
                        case 36:
                            String _arg030 = data.readString();
                            data.enforceNoDataAvail();
                            closeSystemDialogs(_arg030);
                            reply.writeNoException();
                            return true;
                        case 37:
                            int _arg031 = data.readInt();
                            data.enforceNoDataAvail();
                            float _result12 = getAnimationScale(_arg031);
                            reply.writeNoException();
                            reply.writeFloat(_result12);
                            return true;
                        case 38:
                            float[] _result13 = getAnimationScales();
                            reply.writeNoException();
                            reply.writeFloatArray(_result13);
                            return true;
                        case 39:
                            int _arg032 = data.readInt();
                            float _arg117 = data.readFloat();
                            data.enforceNoDataAvail();
                            setAnimationScale(_arg032, _arg117);
                            reply.writeNoException();
                            return true;
                        case 40:
                            float[] _arg033 = data.createFloatArray();
                            data.enforceNoDataAvail();
                            setAnimationScales(_arg033);
                            reply.writeNoException();
                            return true;
                        case 41:
                            float _result14 = getCurrentAnimatorScale();
                            reply.writeNoException();
                            reply.writeFloat(_result14);
                            return true;
                        case 42:
                            boolean _arg034 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setInTouchMode(_arg034);
                            reply.writeNoException();
                            return true;
                        case 43:
                            boolean _arg035 = data.readBoolean();
                            data.enforceNoDataAvail();
                            showStrictModeViolation(_arg035);
                            reply.writeNoException();
                            return true;
                        case 44:
                            String _arg036 = data.readString();
                            data.enforceNoDataAvail();
                            setStrictModeVisualIndicatorPreference(_arg036);
                            reply.writeNoException();
                            return true;
                        case 45:
                            refreshScreenCaptureDisabled();
                            reply.writeNoException();
                            return true;
                        case 46:
                            boolean _arg037 = data.readBoolean();
                            boolean _arg118 = data.readBoolean();
                            data.enforceNoDataAvail();
                            updateRotation(_arg037, _arg118);
                            reply.writeNoException();
                            return true;
                        case 47:
                            int _result15 = getDefaultDisplayRotation();
                            reply.writeNoException();
                            reply.writeInt(_result15);
                            return true;
                        case 48:
                            IRotationWatcher _arg038 = IRotationWatcher.Stub.asInterface(data.readStrongBinder());
                            int _arg119 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result16 = watchRotation(_arg038, _arg119);
                            reply.writeNoException();
                            reply.writeInt(_result16);
                            return true;
                        case 49:
                            IRotationWatcher _arg039 = IRotationWatcher.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            removeRotationWatcher(_arg039);
                            reply.writeNoException();
                            return true;
                        case 50:
                            int _arg040 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result17 = getPreferredOptionsPanelGravity(_arg040);
                            reply.writeNoException();
                            reply.writeInt(_result17);
                            return true;
                        case 51:
                            int _arg041 = data.readInt();
                            data.enforceNoDataAvail();
                            freezeRotation(_arg041);
                            reply.writeNoException();
                            return true;
                        case 52:
                            thawRotation();
                            reply.writeNoException();
                            return true;
                        case 53:
                            boolean _result18 = isRotationFrozen();
                            reply.writeNoException();
                            reply.writeBoolean(_result18);
                            return true;
                        case 54:
                            int _arg042 = data.readInt();
                            int _arg120 = data.readInt();
                            data.enforceNoDataAvail();
                            freezeDisplayRotation(_arg042, _arg120);
                            reply.writeNoException();
                            return true;
                        case 55:
                            int _arg043 = data.readInt();
                            data.enforceNoDataAvail();
                            thawDisplayRotation(_arg043);
                            reply.writeNoException();
                            return true;
                        case 56:
                            int _arg044 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result19 = isDisplayRotationFrozen(_arg044);
                            reply.writeNoException();
                            reply.writeBoolean(_result19);
                            return true;
                        case 57:
                            int _arg045 = data.readInt();
                            int _arg121 = data.readInt();
                            data.enforceNoDataAvail();
                            setFixedToUserRotation(_arg045, _arg121);
                            reply.writeNoException();
                            return true;
                        case 58:
                            int _arg046 = data.readInt();
                            boolean _arg122 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setIgnoreOrientationRequest(_arg046, _arg122);
                            reply.writeNoException();
                            return true;
                        case 59:
                            Bitmap _result20 = screenshotWallpaper();
                            reply.writeNoException();
                            reply.writeTypedObject(_result20, 1);
                            return true;
                        case 60:
                            int _arg047 = data.readInt();
                            data.enforceNoDataAvail();
                            SurfaceControl _result21 = mirrorWallpaperSurface(_arg047);
                            reply.writeNoException();
                            reply.writeTypedObject(_result21, 1);
                            return true;
                        case 61:
                            IWallpaperVisibilityListener _arg048 = IWallpaperVisibilityListener.Stub.asInterface(data.readStrongBinder());
                            int _arg123 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result22 = registerWallpaperVisibilityListener(_arg048, _arg123);
                            reply.writeNoException();
                            reply.writeBoolean(_result22);
                            return true;
                        case 62:
                            IWallpaperVisibilityListener _arg049 = IWallpaperVisibilityListener.Stub.asInterface(data.readStrongBinder());
                            int _arg124 = data.readInt();
                            data.enforceNoDataAvail();
                            unregisterWallpaperVisibilityListener(_arg049, _arg124);
                            reply.writeNoException();
                            return true;
                        case 63:
                            ISystemGestureExclusionListener _arg050 = ISystemGestureExclusionListener.Stub.asInterface(data.readStrongBinder());
                            int _arg125 = data.readInt();
                            data.enforceNoDataAvail();
                            registerSystemGestureExclusionListener(_arg050, _arg125);
                            reply.writeNoException();
                            return true;
                        case 64:
                            ISystemGestureExclusionListener _arg051 = ISystemGestureExclusionListener.Stub.asInterface(data.readStrongBinder());
                            int _arg126 = data.readInt();
                            data.enforceNoDataAvail();
                            unregisterSystemGestureExclusionListener(_arg051, _arg126);
                            reply.writeNoException();
                            return true;
                        case 65:
                            IAssistDataReceiver _arg052 = IAssistDataReceiver.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            boolean _result23 = requestAssistScreenshot(_arg052);
                            reply.writeNoException();
                            reply.writeBoolean(_result23);
                            return true;
                        case 66:
                            int _arg053 = data.readInt();
                            data.enforceNoDataAvail();
                            hideTransientBars(_arg053);
                            return true;
                        case 67:
                            boolean _arg054 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setRecentsVisibility(_arg054);
                            return true;
                        case 68:
                            int _arg055 = data.readInt();
                            Rect[] _arg127 = (Rect[]) data.createTypedArray(Rect.CREATOR);
                            data.enforceNoDataAvail();
                            updateStaticPrivacyIndicatorBounds(_arg055, _arg127);
                            return true;
                        case 69:
                            boolean _arg056 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setNavBarVirtualKeyHapticFeedbackEnabled(_arg056);
                            reply.writeNoException();
                            return true;
                        case 70:
                            int _arg057 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result24 = hasNavigationBar(_arg057);
                            reply.writeNoException();
                            reply.writeBoolean(_result24);
                            return true;
                        case 71:
                            int _arg058 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result25 = getNavBarPosition(_arg058);
                            reply.writeNoException();
                            reply.writeInt(_result25);
                            return true;
                        case 72:
                            Bundle _arg059 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            data.enforceNoDataAvail();
                            lockNow(_arg059);
                            reply.writeNoException();
                            return true;
                        case 73:
                            boolean _result26 = isSafeModeEnabled();
                            reply.writeNoException();
                            reply.writeBoolean(_result26);
                            return true;
                        case 74:
                            enableScreenIfNeeded();
                            reply.writeNoException();
                            return true;
                        case 75:
                            IBinder _arg060 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            boolean _result27 = clearWindowContentFrameStats(_arg060);
                            reply.writeNoException();
                            reply.writeBoolean(_result27);
                            return true;
                        case 76:
                            IBinder _arg061 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            WindowContentFrameStats _result28 = getWindowContentFrameStats(_arg061);
                            reply.writeNoException();
                            reply.writeTypedObject(_result28, 1);
                            return true;
                        case 77:
                            int _result29 = getDockedStackSide();
                            reply.writeNoException();
                            reply.writeInt(_result29);
                            return true;
                        case 78:
                            Rect _arg062 = (Rect) data.readTypedObject(Rect.CREATOR);
                            data.enforceNoDataAvail();
                            setDockedTaskDividerTouchRegion(_arg062);
                            reply.writeNoException();
                            return true;
                        case 79:
                            int _arg063 = data.readInt();
                            IPinnedTaskListener _arg128 = IPinnedTaskListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerPinnedTaskListener(_arg063, _arg128);
                            reply.writeNoException();
                            return true;
                        case 80:
                            IResultReceiver _arg064 = IResultReceiver.Stub.asInterface(data.readStrongBinder());
                            int _arg129 = data.readInt();
                            data.enforceNoDataAvail();
                            requestAppKeyboardShortcuts(_arg064, _arg129);
                            reply.writeNoException();
                            return true;
                        case 81:
                            int _arg065 = data.readInt();
                            Rect _arg130 = new Rect();
                            data.enforceNoDataAvail();
                            getStableInsets(_arg065, _arg130);
                            reply.writeNoException();
                            reply.writeTypedObject(_arg130, 1);
                            return true;
                        case 82:
                            long _arg066 = data.readLong();
                            IShortcutService _arg131 = IShortcutService.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerShortcutKey(_arg066, _arg131);
                            reply.writeNoException();
                            return true;
                        case 83:
                            IBinder _arg067 = data.readStrongBinder();
                            String _arg132 = data.readString();
                            int _arg28 = data.readInt();
                            InputChannel _arg33 = new InputChannel();
                            data.enforceNoDataAvail();
                            createInputConsumer(_arg067, _arg132, _arg28, _arg33);
                            reply.writeNoException();
                            reply.writeTypedObject(_arg33, 1);
                            return true;
                        case 84:
                            String _arg068 = data.readString();
                            int _arg133 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result30 = destroyInputConsumer(_arg068, _arg133);
                            reply.writeNoException();
                            reply.writeBoolean(_result30);
                            return true;
                        case 85:
                            Region _result31 = getCurrentImeTouchRegion();
                            reply.writeNoException();
                            reply.writeTypedObject(_result31, 1);
                            return true;
                        case 86:
                            IDisplayFoldListener _arg069 = IDisplayFoldListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerDisplayFoldListener(_arg069);
                            reply.writeNoException();
                            return true;
                        case 87:
                            IDisplayFoldListener _arg070 = IDisplayFoldListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterDisplayFoldListener(_arg070);
                            reply.writeNoException();
                            return true;
                        case 88:
                            IDisplayWindowListener _arg071 = IDisplayWindowListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            int[] _result32 = registerDisplayWindowListener(_arg071);
                            reply.writeNoException();
                            reply.writeIntArray(_result32);
                            return true;
                        case 89:
                            IDisplayWindowListener _arg072 = IDisplayWindowListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterDisplayWindowListener(_arg072);
                            reply.writeNoException();
                            return true;
                        case 90:
                            startWindowTrace();
                            reply.writeNoException();
                            return true;
                        case 91:
                            stopWindowTrace();
                            reply.writeNoException();
                            return true;
                        case 92:
                            saveWindowTraceToFile();
                            reply.writeNoException();
                            return true;
                        case 93:
                            boolean _result33 = isWindowTraceEnabled();
                            reply.writeNoException();
                            reply.writeBoolean(_result33);
                            return true;
                        case 94:
                            int _arg073 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result34 = getWindowingMode(_arg073);
                            reply.writeNoException();
                            reply.writeInt(_result34);
                            return true;
                        case 95:
                            int _arg074 = data.readInt();
                            int _arg134 = data.readInt();
                            data.enforceNoDataAvail();
                            setWindowingMode(_arg074, _arg134);
                            reply.writeNoException();
                            return true;
                        case 96:
                            int _arg075 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result35 = getRemoveContentMode(_arg075);
                            reply.writeNoException();
                            reply.writeInt(_result35);
                            return true;
                        case 97:
                            int _arg076 = data.readInt();
                            int _arg135 = data.readInt();
                            data.enforceNoDataAvail();
                            setRemoveContentMode(_arg076, _arg135);
                            reply.writeNoException();
                            return true;
                        case 98:
                            int _arg077 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result36 = shouldShowWithInsecureKeyguard(_arg077);
                            reply.writeNoException();
                            reply.writeBoolean(_result36);
                            return true;
                        case 99:
                            int _arg078 = data.readInt();
                            boolean _arg136 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setShouldShowWithInsecureKeyguard(_arg078, _arg136);
                            reply.writeNoException();
                            return true;
                        case 100:
                            int _arg079 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result37 = shouldShowSystemDecors(_arg079);
                            reply.writeNoException();
                            reply.writeBoolean(_result37);
                            return true;
                        case 101:
                            int _arg080 = data.readInt();
                            boolean _arg137 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setShouldShowSystemDecors(_arg080, _arg137);
                            reply.writeNoException();
                            return true;
                        case 102:
                            int _arg081 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result38 = getDisplayImePolicy(_arg081);
                            reply.writeNoException();
                            reply.writeInt(_result38);
                            return true;
                        case 103:
                            int _arg082 = data.readInt();
                            int _arg138 = data.readInt();
                            data.enforceNoDataAvail();
                            setDisplayImePolicy(_arg082, _arg138);
                            reply.writeNoException();
                            return true;
                        case 104:
                            boolean _arg083 = data.readBoolean();
                            data.enforceNoDataAvail();
                            syncInputTransactions(_arg083);
                            reply.writeNoException();
                            return true;
                        case 105:
                            boolean _result39 = isLayerTracing();
                            reply.writeNoException();
                            reply.writeBoolean(_result39);
                            return true;
                        case 106:
                            boolean _arg084 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setLayerTracing(_arg084);
                            reply.writeNoException();
                            return true;
                        case 107:
                            int _arg085 = data.readInt();
                            SurfaceControl _arg139 = new SurfaceControl();
                            data.enforceNoDataAvail();
                            boolean _result40 = mirrorDisplay(_arg085, _arg139);
                            reply.writeNoException();
                            reply.writeBoolean(_result40);
                            reply.writeTypedObject(_arg139, 1);
                            return true;
                        case 108:
                            int _arg086 = data.readInt();
                            IDisplayWindowInsetsController _arg140 = IDisplayWindowInsetsController.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            setDisplayWindowInsetsController(_arg086, _arg140);
                            reply.writeNoException();
                            return true;
                        case 109:
                            int _arg087 = data.readInt();
                            InsetsVisibilities _arg141 = (InsetsVisibilities) data.readTypedObject(InsetsVisibilities.CREATOR);
                            data.enforceNoDataAvail();
                            updateDisplayWindowRequestedVisibilities(_arg087, _arg141);
                            reply.writeNoException();
                            return true;
                        case 110:
                            WindowManager.LayoutParams _arg088 = (WindowManager.LayoutParams) data.readTypedObject(WindowManager.LayoutParams.CREATOR);
                            int _arg142 = data.readInt();
                            InsetsState _arg29 = new InsetsState();
                            data.enforceNoDataAvail();
                            boolean _result41 = getWindowInsets(_arg088, _arg142, _arg29);
                            reply.writeNoException();
                            reply.writeBoolean(_result41);
                            reply.writeTypedObject(_arg29, 1);
                            return true;
                        case 111:
                            int _arg089 = data.readInt();
                            String _arg143 = data.readString();
                            data.enforceNoDataAvail();
                            List<DisplayInfo> _result42 = getPossibleDisplayInfo(_arg089, _arg143);
                            reply.writeNoException();
                            reply.writeTypedList(_result42);
                            return true;
                        case 112:
                            showGlobalActions();
                            reply.writeNoException();
                            return true;
                        case 113:
                            int _arg090 = data.readInt();
                            data.enforceNoDataAvail();
                            setLayerTracingFlags(_arg090);
                            reply.writeNoException();
                            return true;
                        case 114:
                            int _arg091 = data.readInt();
                            IBinder _arg144 = data.readStrongBinder();
                            int _arg210 = data.readInt();
                            IScrollCaptureResponseListener _arg34 = IScrollCaptureResponseListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            requestScrollCapture(_arg091, _arg144, _arg210, _arg34);
                            reply.writeNoException();
                            return true;
                        case 115:
                            IBinder _arg092 = data.readStrongBinder();
                            int _arg145 = data.readInt();
                            data.enforceNoDataAvail();
                            holdLock(_arg092, _arg145);
                            reply.writeNoException();
                            return true;
                        case 116:
                            String[] _result43 = getSupportedDisplayHashAlgorithms();
                            reply.writeNoException();
                            reply.writeStringArray(_result43);
                            return true;
                        case 117:
                            DisplayHash _arg093 = (DisplayHash) data.readTypedObject(DisplayHash.CREATOR);
                            data.enforceNoDataAvail();
                            VerifiedDisplayHash _result44 = verifyDisplayHash(_arg093);
                            reply.writeNoException();
                            reply.writeTypedObject(_result44, 1);
                            return true;
                        case 118:
                            boolean _arg094 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setDisplayHashThrottlingEnabled(_arg094);
                            reply.writeNoException();
                            return true;
                        case 119:
                            IBinder _arg095 = data.readStrongBinder();
                            int _arg146 = data.readInt();
                            int _arg211 = data.readInt();
                            Bundle _arg35 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            data.enforceNoDataAvail();
                            Configuration _result45 = attachWindowContextToDisplayArea(_arg095, _arg146, _arg211, _arg35);
                            reply.writeNoException();
                            reply.writeTypedObject(_result45, 1);
                            return true;
                        case 120:
                            IBinder _arg096 = data.readStrongBinder();
                            IBinder _arg147 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            attachWindowContextToWindowToken(_arg096, _arg147);
                            reply.writeNoException();
                            return true;
                        case 121:
                            IBinder _arg097 = data.readStrongBinder();
                            int _arg148 = data.readInt();
                            data.enforceNoDataAvail();
                            Configuration _result46 = attachToDisplayContent(_arg097, _arg148);
                            reply.writeNoException();
                            reply.writeTypedObject(_result46, 1);
                            return true;
                        case 122:
                            IBinder _arg098 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            detachWindowContextFromWindowContainer(_arg098);
                            reply.writeNoException();
                            return true;
                        case 123:
                            ICrossWindowBlurEnabledListener _arg099 = ICrossWindowBlurEnabledListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            boolean _result47 = registerCrossWindowBlurEnabledListener(_arg099);
                            reply.writeNoException();
                            reply.writeBoolean(_result47);
                            return true;
                        case 124:
                            ICrossWindowBlurEnabledListener _arg0100 = ICrossWindowBlurEnabledListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterCrossWindowBlurEnabledListener(_arg0100);
                            reply.writeNoException();
                            return true;
                        case 125:
                            boolean _result48 = isTaskSnapshotSupported();
                            reply.writeNoException();
                            reply.writeBoolean(_result48);
                            return true;
                        case 126:
                            int _result49 = getImeDisplayId();
                            reply.writeNoException();
                            reply.writeInt(_result49);
                            return true;
                        case 127:
                            boolean _arg0101 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setTaskSnapshotEnabled(_arg0101);
                            reply.writeNoException();
                            return true;
                        case 128:
                            TaskTransitionSpec _arg0102 = (TaskTransitionSpec) data.readTypedObject(TaskTransitionSpec.CREATOR);
                            data.enforceNoDataAvail();
                            setTaskTransitionSpec(_arg0102);
                            reply.writeNoException();
                            return true;
                        case 129:
                            clearTaskTransitionSpec();
                            reply.writeNoException();
                            return true;
                        case 130:
                            int _arg0103 = data.readInt();
                            ITaskFpsCallback _arg149 = ITaskFpsCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerTaskFpsCallback(_arg0103, _arg149);
                            reply.writeNoException();
                            return true;
                        case 131:
                            ITaskFpsCallback _arg0104 = ITaskFpsCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterTaskFpsCallback(_arg0104);
                            reply.writeNoException();
                            return true;
                        case 132:
                            int _arg0105 = data.readInt();
                            data.enforceNoDataAvail();
                            Bitmap _result50 = snapshotTaskForRecents(_arg0105);
                            reply.writeNoException();
                            reply.writeTypedObject(_result50, 1);
                            return true;
                        case 133:
                            boolean _arg0106 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setRecentsAppBehindSystemBars(_arg0106);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IWindowManager {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.view.IWindowManager
            public boolean startViewServer(int port) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(port);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean stopViewServer() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isViewServerRunning() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public IWindowSession openSession(IWindowSessionCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    IWindowSession _result = IWindowSession.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean useBLAST() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void getInitialDisplaySize(int displayId, Point size) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        size.readFromParcel(_reply);
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void getBaseDisplaySize(int displayId, Point size) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        size.readFromParcel(_reply);
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setForcedDisplaySize(int displayId, int width, int height) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(width);
                    _data.writeInt(height);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void clearForcedDisplaySize(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getInitialDisplayDensity(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getBaseDisplayDensity(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setForcedDisplayDensityForUser(int displayId, int density, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(density);
                    _data.writeInt(userId);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void clearForcedDisplayDensityForUser(int displayId, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(userId);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setForcedDisplayScalingMode(int displayId, int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(mode);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setEventDispatching(boolean enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enabled);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isWindowToken(IBinder binder) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(binder);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void addWindowToken(IBinder token, int type, int displayId, Bundle options) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeInt(type);
                    _data.writeInt(displayId);
                    _data.writeTypedObject(options, 0);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void removeWindowToken(IBinder token, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeInt(displayId);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setDisplayWindowRotationController(IDisplayWindowRotationController controller) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(controller);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public SurfaceControl addShellRoot(int displayId, IWindow client, int shellRootLayer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeStrongInterface(client);
                    _data.writeInt(shellRootLayer);
                    this.mRemote.transact(20, _data, _reply, 0);
                    _reply.readException();
                    SurfaceControl _result = (SurfaceControl) _reply.readTypedObject(SurfaceControl.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setShellRootAccessibilityWindow(int displayId, int shellRootLayer, IWindow target) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(shellRootLayer);
                    _data.writeStrongInterface(target);
                    this.mRemote.transact(21, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void overridePendingAppTransitionMultiThumbFuture(IAppTransitionAnimationSpecsFuture specsFuture, IRemoteCallback startedCallback, boolean scaleUp, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(specsFuture);
                    _data.writeStrongInterface(startedCallback);
                    _data.writeBoolean(scaleUp);
                    _data.writeInt(displayId);
                    this.mRemote.transact(22, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void overridePendingAppTransitionRemote(RemoteAnimationAdapter remoteAnimationAdapter, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(remoteAnimationAdapter, 0);
                    _data.writeInt(displayId);
                    this.mRemote.transact(23, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void endProlongedAnimations() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(24, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void startFreezingScreen(int exitAnim, int enterAnim) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(exitAnim);
                    _data.writeInt(enterAnim);
                    this.mRemote.transact(25, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void stopFreezingScreen() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(26, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void disableKeyguard(IBinder token, String tag, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeString(tag);
                    _data.writeInt(userId);
                    this.mRemote.transact(27, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void reenableKeyguard(IBinder token, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeInt(userId);
                    this.mRemote.transact(28, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void exitKeyguardSecurely(IOnKeyguardExitResult callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(29, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isKeyguardLocked() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isKeyguardSecure(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    this.mRemote.transact(31, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void dismissKeyguard(IKeyguardDismissCallback callback, CharSequence message) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    if (message != null) {
                        _data.writeInt(1);
                        TextUtils.writeToParcel(message, _data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(32, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void addKeyguardLockedStateListener(IKeyguardLockedStateListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(33, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void removeKeyguardLockedStateListener(IKeyguardLockedStateListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(34, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setSwitchingUser(boolean switching) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(switching);
                    this.mRemote.transact(35, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void closeSystemDialogs(String reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(reason);
                    this.mRemote.transact(36, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public float getAnimationScale(int which) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(which);
                    this.mRemote.transact(37, _data, _reply, 0);
                    _reply.readException();
                    float _result = _reply.readFloat();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public float[] getAnimationScales() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(38, _data, _reply, 0);
                    _reply.readException();
                    float[] _result = _reply.createFloatArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setAnimationScale(int which, float scale) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(which);
                    _data.writeFloat(scale);
                    this.mRemote.transact(39, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setAnimationScales(float[] scales) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeFloatArray(scales);
                    this.mRemote.transact(40, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public float getCurrentAnimatorScale() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(41, _data, _reply, 0);
                    _reply.readException();
                    float _result = _reply.readFloat();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setInTouchMode(boolean showFocus) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(showFocus);
                    this.mRemote.transact(42, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void showStrictModeViolation(boolean on) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(on);
                    this.mRemote.transact(43, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setStrictModeVisualIndicatorPreference(String enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(enabled);
                    this.mRemote.transact(44, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void refreshScreenCaptureDisabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(45, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void updateRotation(boolean alwaysSendConfiguration, boolean forceRelayout) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(alwaysSendConfiguration);
                    _data.writeBoolean(forceRelayout);
                    this.mRemote.transact(46, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getDefaultDisplayRotation() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(47, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int watchRotation(IRotationWatcher watcher, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(watcher);
                    _data.writeInt(displayId);
                    this.mRemote.transact(48, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void removeRotationWatcher(IRotationWatcher watcher) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(watcher);
                    this.mRemote.transact(49, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getPreferredOptionsPanelGravity(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(50, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void freezeRotation(int rotation) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(rotation);
                    this.mRemote.transact(51, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void thawRotation() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(52, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isRotationFrozen() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(53, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void freezeDisplayRotation(int displayId, int rotation) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(rotation);
                    this.mRemote.transact(54, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void thawDisplayRotation(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(55, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isDisplayRotationFrozen(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(56, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setFixedToUserRotation(int displayId, int fixedToUserRotation) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(fixedToUserRotation);
                    this.mRemote.transact(57, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setIgnoreOrientationRequest(int displayId, boolean ignoreOrientationRequest) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeBoolean(ignoreOrientationRequest);
                    this.mRemote.transact(58, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public Bitmap screenshotWallpaper() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(59, _data, _reply, 0);
                    _reply.readException();
                    Bitmap _result = (Bitmap) _reply.readTypedObject(Bitmap.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public SurfaceControl mirrorWallpaperSurface(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(60, _data, _reply, 0);
                    _reply.readException();
                    SurfaceControl _result = (SurfaceControl) _reply.readTypedObject(SurfaceControl.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean registerWallpaperVisibilityListener(IWallpaperVisibilityListener listener, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    _data.writeInt(displayId);
                    this.mRemote.transact(61, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void unregisterWallpaperVisibilityListener(IWallpaperVisibilityListener listener, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    _data.writeInt(displayId);
                    this.mRemote.transact(62, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void registerSystemGestureExclusionListener(ISystemGestureExclusionListener listener, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    _data.writeInt(displayId);
                    this.mRemote.transact(63, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void unregisterSystemGestureExclusionListener(ISystemGestureExclusionListener listener, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    _data.writeInt(displayId);
                    this.mRemote.transact(64, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean requestAssistScreenshot(IAssistDataReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(receiver);
                    this.mRemote.transact(65, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void hideTransientBars(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(66, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setRecentsVisibility(boolean visible) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(visible);
                    this.mRemote.transact(67, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void updateStaticPrivacyIndicatorBounds(int displayId, Rect[] staticBounds) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeTypedArray(staticBounds, 0);
                    this.mRemote.transact(68, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setNavBarVirtualKeyHapticFeedbackEnabled(boolean enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enabled);
                    this.mRemote.transact(69, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean hasNavigationBar(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(70, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getNavBarPosition(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(71, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void lockNow(Bundle options) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(options, 0);
                    this.mRemote.transact(72, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isSafeModeEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(73, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void enableScreenIfNeeded() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(74, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean clearWindowContentFrameStats(IBinder token) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    this.mRemote.transact(75, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public WindowContentFrameStats getWindowContentFrameStats(IBinder token) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    this.mRemote.transact(76, _data, _reply, 0);
                    _reply.readException();
                    WindowContentFrameStats _result = (WindowContentFrameStats) _reply.readTypedObject(WindowContentFrameStats.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getDockedStackSide() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(77, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setDockedTaskDividerTouchRegion(Rect touchableRegion) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(touchableRegion, 0);
                    this.mRemote.transact(78, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void registerPinnedTaskListener(int displayId, IPinnedTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(79, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void requestAppKeyboardShortcuts(IResultReceiver receiver, int deviceId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(receiver);
                    _data.writeInt(deviceId);
                    this.mRemote.transact(80, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void getStableInsets(int displayId, Rect outInsets) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(81, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        outInsets.readFromParcel(_reply);
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void registerShortcutKey(long shortcutCode, IShortcutService keySubscriber) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeLong(shortcutCode);
                    _data.writeStrongInterface(keySubscriber);
                    this.mRemote.transact(82, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void createInputConsumer(IBinder token, String name, int displayId, InputChannel inputChannel) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeString(name);
                    _data.writeInt(displayId);
                    this.mRemote.transact(83, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        inputChannel.readFromParcel(_reply);
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean destroyInputConsumer(String name, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(displayId);
                    this.mRemote.transact(84, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public Region getCurrentImeTouchRegion() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(85, _data, _reply, 0);
                    _reply.readException();
                    Region _result = (Region) _reply.readTypedObject(Region.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void registerDisplayFoldListener(IDisplayFoldListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(86, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void unregisterDisplayFoldListener(IDisplayFoldListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(87, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int[] registerDisplayWindowListener(IDisplayWindowListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(88, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void unregisterDisplayWindowListener(IDisplayWindowListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(89, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void startWindowTrace() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(90, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void stopWindowTrace() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(91, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void saveWindowTraceToFile() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(92, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isWindowTraceEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(93, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getWindowingMode(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(94, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setWindowingMode(int displayId, int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(mode);
                    this.mRemote.transact(95, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getRemoveContentMode(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(96, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setRemoveContentMode(int displayId, int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(mode);
                    this.mRemote.transact(97, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean shouldShowWithInsecureKeyguard(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(98, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setShouldShowWithInsecureKeyguard(int displayId, boolean shouldShow) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeBoolean(shouldShow);
                    this.mRemote.transact(99, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean shouldShowSystemDecors(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(100, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setShouldShowSystemDecors(int displayId, boolean shouldShow) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeBoolean(shouldShow);
                    this.mRemote.transact(101, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getDisplayImePolicy(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(102, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setDisplayImePolicy(int displayId, int imePolicy) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeInt(imePolicy);
                    this.mRemote.transact(103, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void syncInputTransactions(boolean waitForAnimations) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(waitForAnimations);
                    this.mRemote.transact(104, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isLayerTracing() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(105, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setLayerTracing(boolean enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enabled);
                    this.mRemote.transact(106, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean mirrorDisplay(int displayId, SurfaceControl outSurfaceControl) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(107, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    if (_reply.readInt() != 0) {
                        outSurfaceControl.readFromParcel(_reply);
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setDisplayWindowInsetsController(int displayId, IDisplayWindowInsetsController displayWindowInsetsController) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeStrongInterface(displayWindowInsetsController);
                    this.mRemote.transact(108, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void updateDisplayWindowRequestedVisibilities(int displayId, InsetsVisibilities vis) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeTypedObject(vis, 0);
                    this.mRemote.transact(109, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean getWindowInsets(WindowManager.LayoutParams attrs, int displayId, InsetsState outInsetsState) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attrs, 0);
                    _data.writeInt(displayId);
                    this.mRemote.transact(110, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    if (_reply.readInt() != 0) {
                        outInsetsState.readFromParcel(_reply);
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public List<DisplayInfo> getPossibleDisplayInfo(int displayId, String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeString(packageName);
                    this.mRemote.transact(111, _data, _reply, 0);
                    _reply.readException();
                    List<DisplayInfo> _result = _reply.createTypedArrayList(DisplayInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void showGlobalActions() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(112, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setLayerTracingFlags(int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(flags);
                    this.mRemote.transact(113, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void requestScrollCapture(int displayId, IBinder behindClient, int taskId, IScrollCaptureResponseListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeStrongBinder(behindClient);
                    _data.writeInt(taskId);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(114, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void holdLock(IBinder token, int durationMs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeInt(durationMs);
                    this.mRemote.transact(115, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public String[] getSupportedDisplayHashAlgorithms() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(116, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public VerifiedDisplayHash verifyDisplayHash(DisplayHash displayHash) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(displayHash, 0);
                    this.mRemote.transact(117, _data, _reply, 0);
                    _reply.readException();
                    VerifiedDisplayHash _result = (VerifiedDisplayHash) _reply.readTypedObject(VerifiedDisplayHash.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setDisplayHashThrottlingEnabled(boolean enable) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enable);
                    this.mRemote.transact(118, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public Configuration attachWindowContextToDisplayArea(IBinder clientToken, int type, int displayId, Bundle options) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(clientToken);
                    _data.writeInt(type);
                    _data.writeInt(displayId);
                    _data.writeTypedObject(options, 0);
                    this.mRemote.transact(119, _data, _reply, 0);
                    _reply.readException();
                    Configuration _result = (Configuration) _reply.readTypedObject(Configuration.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void attachWindowContextToWindowToken(IBinder clientToken, IBinder token) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(clientToken);
                    _data.writeStrongBinder(token);
                    this.mRemote.transact(120, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public Configuration attachToDisplayContent(IBinder clientToken, int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(clientToken);
                    _data.writeInt(displayId);
                    this.mRemote.transact(121, _data, _reply, 0);
                    _reply.readException();
                    Configuration _result = (Configuration) _reply.readTypedObject(Configuration.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void detachWindowContextFromWindowContainer(IBinder clientToken) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(clientToken);
                    this.mRemote.transact(122, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean registerCrossWindowBlurEnabledListener(ICrossWindowBlurEnabledListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(123, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void unregisterCrossWindowBlurEnabledListener(ICrossWindowBlurEnabledListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(124, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public boolean isTaskSnapshotSupported() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(125, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public int getImeDisplayId() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(126, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setTaskSnapshotEnabled(boolean enabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enabled);
                    this.mRemote.transact(127, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setTaskTransitionSpec(TaskTransitionSpec spec) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(spec, 0);
                    this.mRemote.transact(128, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void clearTaskTransitionSpec() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(129, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void registerTaskFpsCallback(int taskId, ITaskFpsCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(taskId);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(130, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void unregisterTaskFpsCallback(ITaskFpsCallback listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(131, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public Bitmap snapshotTaskForRecents(int taskId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(taskId);
                    this.mRemote.transact(132, _data, _reply, 0);
                    _reply.readException();
                    Bitmap _result = (Bitmap) _reply.readTypedObject(Bitmap.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.IWindowManager
            public void setRecentsAppBehindSystemBars(boolean behindSystemBars) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(behindSystemBars);
                    this.mRemote.transact(133, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 132;
        }
    }
}
