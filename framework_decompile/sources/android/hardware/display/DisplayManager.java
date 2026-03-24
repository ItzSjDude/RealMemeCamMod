package android.hardware.display;

import android.annotation.SystemApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.VirtualDisplay;
import android.hardware.display.VirtualDisplayConfig;
import android.media.projection.MediaProjection;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Looper;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.view.Display;
import android.view.Surface;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class DisplayManager {
    public static final String ACTION_WIFI_DISPLAY_STATUS_CHANGED = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED";
    private static final boolean DEBUG = false;
    public static final String DISPLAY_CATEGORY_ALL_INCLUDING_DISABLED = "android.hardware.display.category.ALL_INCLUDING_DISABLED";
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
    public static final long EVENT_FLAG_DISPLAY_ADDED = 1;
    public static final long EVENT_FLAG_DISPLAY_BRIGHTNESS = 8;
    public static final long EVENT_FLAG_DISPLAY_CHANGED = 4;
    public static final long EVENT_FLAG_DISPLAY_REMOVED = 2;
    public static final String EXTRA_WIFI_DISPLAY_STATUS = "android.hardware.display.extra.WIFI_DISPLAY_STATUS";
    public static final int MATCH_CONTENT_FRAMERATE_ALWAYS = 2;
    public static final int MATCH_CONTENT_FRAMERATE_NEVER = 0;
    public static final int MATCH_CONTENT_FRAMERATE_SEAMLESSS_ONLY = 1;
    public static final int MATCH_CONTENT_FRAMERATE_UNKNOWN = -1;
    public static final int SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS = 2;
    public static final int SWITCHING_TYPE_NONE = 0;
    public static final int SWITCHING_TYPE_WITHIN_GROUPS = 1;
    private static final String TAG = "DisplayManager";
    public static final int VIRTUAL_DISPLAY_FLAG_ALWAYS_UNLOCKED = 4096;
    public static final int VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR = 16;
    public static final int VIRTUAL_DISPLAY_FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD = 32;
    public static final int VIRTUAL_DISPLAY_FLAG_DESTROY_CONTENT_ON_REMOVAL = 256;
    public static final int VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY = 8;
    public static final int VIRTUAL_DISPLAY_FLAG_OWN_DISPLAY_GROUP = 2048;
    public static final int VIRTUAL_DISPLAY_FLAG_PRESENTATION = 2;
    public static final int VIRTUAL_DISPLAY_FLAG_PUBLIC = 1;
    public static final int VIRTUAL_DISPLAY_FLAG_ROTATES_WITH_CONTENT = 128;
    public static final int VIRTUAL_DISPLAY_FLAG_SECURE = 4;
    public static final int VIRTUAL_DISPLAY_FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS = 512;
    public static final int VIRTUAL_DISPLAY_FLAG_SUPPORTS_TOUCH = 64;
    public static final int VIRTUAL_DISPLAY_FLAG_TOUCH_FEEDBACK_DISABLED = 8192;

    @SystemApi
    public static final int VIRTUAL_DISPLAY_FLAG_TRUSTED = 1024;
    private final Context mContext;
    private final Object mLock = new Object();
    private final SparseArray<Display> mDisplays = new SparseArray<>();
    private final ArrayList<Display> mTempDisplays = new ArrayList<>();
    private final DisplayManagerGlobal mGlobal = DisplayManagerGlobal.getInstance();

    public interface DeviceConfig {
        public static final String KEY_FIXED_REFRESH_RATE_HIGH_AMBIENT_BRIGHTNESS_THRESHOLDS = "fixed_refresh_rate_high_ambient_brightness_thresholds";
        public static final String KEY_FIXED_REFRESH_RATE_HIGH_DISPLAY_BRIGHTNESS_THRESHOLDS = "fixed_refresh_rate_high_display_brightness_thresholds";
        public static final String KEY_FIXED_REFRESH_RATE_LOW_AMBIENT_BRIGHTNESS_THRESHOLDS = "peak_refresh_rate_ambient_thresholds";
        public static final String KEY_FIXED_REFRESH_RATE_LOW_DISPLAY_BRIGHTNESS_THRESHOLDS = "peak_refresh_rate_brightness_thresholds";
        public static final String KEY_HIGH_REFRESH_RATE_BLACKLIST = "high_refresh_rate_blacklist";
        public static final String KEY_PEAK_REFRESH_RATE_DEFAULT = "peak_refresh_rate_default";
        public static final String KEY_REFRESH_RATE_IN_HBM_HDR = "refresh_rate_in_hbm_hdr";
        public static final String KEY_REFRESH_RATE_IN_HBM_SUNLIGHT = "refresh_rate_in_hbm_sunlight";
        public static final String KEY_REFRESH_RATE_IN_HIGH_ZONE = "refresh_rate_in_high_zone";
        public static final String KEY_REFRESH_RATE_IN_LOW_ZONE = "refresh_rate_in_zone";
    }

    public interface DisplayListener {
        void onDisplayAdded(int i);

        void onDisplayChanged(int i);

        void onDisplayRemoved(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface EventsMask {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MatchContentFrameRateType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SwitchingType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface VirtualDisplayFlag {
    }

    public DisplayManager(Context context) {
        this.mContext = context;
    }

    public Display getDisplay(int displayId) {
        Display orCreateDisplayLocked;
        synchronized (this.mLock) {
            orCreateDisplayLocked = getOrCreateDisplayLocked(displayId, false);
        }
        return orCreateDisplayLocked;
    }

    public Display[] getDisplays() {
        return getDisplays(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.Display[] getDisplays(java.lang.String r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 == 0) goto Ld
            java.lang.String r1 = "android.hardware.display.category.ALL_INCLUDING_DISABLED"
            boolean r1 = r7.equals(r1)
            if (r1 == 0) goto Ld
            r1 = r0
            goto Le
        Ld:
            r1 = 0
        Le:
            android.hardware.display.DisplayManagerGlobal r2 = r6.mGlobal
            int[] r2 = r2.getDisplayIds(r1)
            java.lang.Object r3 = r6.mLock
            monitor-enter(r3)
            if (r7 == 0) goto L41
            java.lang.String r4 = "android.hardware.display.category.PRESENTATION"
            boolean r4 = r7.equals(r4)     // Catch: java.lang.Throwable -> L3f
            if (r4 == 0) goto L41
            java.util.ArrayList<android.view.Display> r4 = r6.mTempDisplays     // Catch: java.lang.Throwable -> L3f
            r5 = 3
            r6.addPresentationDisplaysLocked(r4, r2, r5)     // Catch: java.lang.Throwable -> L3f
            java.util.ArrayList<android.view.Display> r4 = r6.mTempDisplays     // Catch: java.lang.Throwable -> L3f
            r5 = 2
            r6.addPresentationDisplaysLocked(r4, r2, r5)     // Catch: java.lang.Throwable -> L3f
            java.util.ArrayList<android.view.Display> r4 = r6.mTempDisplays     // Catch: java.lang.Throwable -> L3f
            r5 = 4
            r6.addPresentationDisplaysLocked(r4, r2, r5)     // Catch: java.lang.Throwable -> L3f
            java.util.ArrayList<android.view.Display> r4 = r6.mTempDisplays     // Catch: java.lang.Throwable -> L3f
            r5 = 5
            r6.addPresentationDisplaysLocked(r4, r2, r5)     // Catch: java.lang.Throwable -> L3f
            java.util.ArrayList<android.view.Display> r4 = r6.mTempDisplays     // Catch: java.lang.Throwable -> L3f
            r6.addPresentationDisplaysLocked(r4, r2, r0)     // Catch: java.lang.Throwable -> L3f
            goto L50
        L3f:
            r0 = move-exception
            goto L65
        L41:
            if (r7 == 0) goto L4b
            java.lang.String r0 = "android.hardware.display.category.ALL_INCLUDING_DISABLED"
            boolean r0 = r0.equals(r7)     // Catch: java.lang.Throwable -> L3f
            if (r0 == 0) goto L50
        L4b:
            java.util.ArrayList<android.view.Display> r0 = r6.mTempDisplays     // Catch: java.lang.Throwable -> L3f
            r6.addAllDisplaysLocked(r0, r2)     // Catch: java.lang.Throwable -> L3f
        L50:
            java.util.ArrayList<android.view.Display> r0 = r6.mTempDisplays     // Catch: java.lang.Throwable -> L3f
            int r4 = r0.size()     // Catch: java.lang.Throwable -> L3f
            android.view.Display[] r4 = new android.view.Display[r4]     // Catch: java.lang.Throwable -> L3f
            java.lang.Object[] r0 = r0.toArray(r4)     // Catch: java.lang.Throwable -> L3f
            android.view.Display[] r0 = (android.view.Display[]) r0     // Catch: java.lang.Throwable -> L3f
            java.util.ArrayList<android.view.Display> r4 = r6.mTempDisplays     // Catch: java.lang.Throwable -> L6c
            r4.clear()     // Catch: java.lang.Throwable -> L6c
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6c
            return r0
        L65:
            java.util.ArrayList<android.view.Display> r4 = r6.mTempDisplays     // Catch: java.lang.Throwable -> L6c
            r4.clear()     // Catch: java.lang.Throwable -> L6c
            throw r0     // Catch: java.lang.Throwable -> L6c
        L6c:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6c
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.hardware.display.DisplayManager.getDisplays(java.lang.String):android.view.Display[]");
    }

    private void addAllDisplaysLocked(ArrayList<Display> displays, int[] displayIds) {
        for (int i : displayIds) {
            Display display = getOrCreateDisplayLocked(i, true);
            if (display != null) {
                displays.add(display);
            }
        }
    }

    private void addPresentationDisplaysLocked(ArrayList<Display> displays, int[] displayIds, int matchType) {
        Display display;
        for (int i = 0; i < displayIds.length; i++) {
            if (displayIds[i] != 0 && (display = getOrCreateDisplayLocked(displayIds[i], true)) != null && (display.getFlags() & 8) != 0 && display.getType() == matchType) {
                displays.add(display);
            }
        }
    }

    private Display getOrCreateDisplayLocked(int displayId, boolean assumeValid) {
        Display display = this.mDisplays.get(displayId);
        if (display != null) {
            if (!assumeValid && !display.isValid()) {
                return null;
            }
            return display;
        }
        Resources resources = this.mContext.getDisplayId() == displayId ? this.mContext.getResources() : null;
        Display display2 = this.mGlobal.getCompatibleDisplay(displayId, resources);
        if (display2 != null) {
            this.mDisplays.put(displayId, display2);
            return display2;
        }
        return display2;
    }

    public void registerDisplayListener(DisplayListener listener, Handler handler) {
        registerDisplayListener(listener, handler, 7L);
    }

    public void registerDisplayListener(DisplayListener listener, Handler handler, long eventsMask) {
        this.mGlobal.registerDisplayListener(listener, handler, eventsMask);
    }

    public void unregisterDisplayListener(DisplayListener listener) {
        this.mGlobal.unregisterDisplayListener(listener);
    }

    public void startWifiDisplayScan() {
        this.mGlobal.startWifiDisplayScan();
    }

    public void stopWifiDisplayScan() {
        this.mGlobal.stopWifiDisplayScan();
    }

    public void connectWifiDisplay(String deviceAddress) {
        this.mGlobal.connectWifiDisplay(deviceAddress);
    }

    public void pauseWifiDisplay() {
        this.mGlobal.pauseWifiDisplay();
    }

    public void resumeWifiDisplay() {
        this.mGlobal.resumeWifiDisplay();
    }

    public void disconnectWifiDisplay() {
        this.mGlobal.disconnectWifiDisplay();
    }

    public void renameWifiDisplay(String deviceAddress, String alias) {
        this.mGlobal.renameWifiDisplay(deviceAddress, alias);
    }

    public void forgetWifiDisplay(String deviceAddress) {
        this.mGlobal.forgetWifiDisplay(deviceAddress);
    }

    public WifiDisplayStatus getWifiDisplayStatus() {
        return this.mGlobal.getWifiDisplayStatus();
    }

    @SystemApi
    public void setSaturationLevel(float level) {
        if (level < 0.0f || level > 1.0f) {
            throw new IllegalArgumentException("Saturation level must be between 0 and 1");
        }
        ColorDisplayManager cdm = (ColorDisplayManager) this.mContext.getSystemService(ColorDisplayManager.class);
        cdm.setSaturationLevel(Math.round(100.0f * level));
    }

    public void setUserDisabledHdrTypes(int[] userDisabledTypes) {
        this.mGlobal.setUserDisabledHdrTypes(userDisabledTypes);
    }

    public void setAreUserDisabledHdrTypesAllowed(boolean areUserDisabledHdrTypesAllowed) {
        this.mGlobal.setAreUserDisabledHdrTypesAllowed(areUserDisabledHdrTypesAllowed);
    }

    public boolean areUserDisabledHdrTypesAllowed() {
        return this.mGlobal.areUserDisabledHdrTypesAllowed();
    }

    public int[] getUserDisabledHdrTypes() {
        return this.mGlobal.getUserDisabledHdrTypes();
    }

    public VirtualDisplay createVirtualDisplay(String name, int width, int height, int densityDpi, Surface surface, int flags) {
        return createVirtualDisplay(name, width, height, densityDpi, surface, flags, null, null);
    }

    public VirtualDisplay createVirtualDisplay(String name, int width, int height, int densityDpi, Surface surface, int flags, VirtualDisplay.Callback callback, Handler handler) {
        VirtualDisplayConfig.Builder builder = new VirtualDisplayConfig.Builder(name, width, height, densityDpi);
        builder.setFlags(flags);
        if (surface != null) {
            builder.setSurface(surface);
        }
        return createVirtualDisplay(null, builder.build(), callback, handler, null);
    }

    public VirtualDisplay createVirtualDisplay(MediaProjection projection, String name, int width, int height, int densityDpi, Surface surface, int flags, VirtualDisplay.Callback callback, Handler handler, String uniqueId) {
        VirtualDisplayConfig.Builder builder = new VirtualDisplayConfig.Builder(name, width, height, densityDpi);
        builder.setFlags(flags);
        if (uniqueId != null) {
            builder.setUniqueId(uniqueId);
        }
        if (surface != null) {
            builder.setSurface(surface);
        }
        return createVirtualDisplay(projection, builder.build(), callback, handler, null);
    }

    public VirtualDisplay createVirtualDisplay(MediaProjection projection, VirtualDisplayConfig virtualDisplayConfig, VirtualDisplay.Callback callback, Handler handler, Context windowContext) {
        Executor executor = null;
        if (callback != null) {
            executor = new HandlerExecutor(Handler.createAsync(handler != null ? handler.getLooper() : Looper.myLooper()));
        }
        return this.mGlobal.createVirtualDisplay(this.mContext, projection, virtualDisplayConfig, callback, executor, windowContext);
    }

    @SystemApi
    public Point getStableDisplaySize() {
        return this.mGlobal.getStableDisplaySize();
    }

    @SystemApi
    public List<BrightnessChangeEvent> getBrightnessEvents() {
        return this.mGlobal.getBrightnessEvents(this.mContext.getOpPackageName());
    }

    @SystemApi
    public List<AmbientBrightnessDayStats> getAmbientBrightnessStats() {
        return this.mGlobal.getAmbientBrightnessStats();
    }

    @SystemApi
    public void setBrightnessConfiguration(BrightnessConfiguration c) {
        setBrightnessConfigurationForUser(c, this.mContext.getUserId(), this.mContext.getPackageName());
    }

    @SystemApi
    public void setBrightnessConfigurationForDisplay(BrightnessConfiguration c, String uniqueId) {
        this.mGlobal.setBrightnessConfigurationForDisplay(c, uniqueId, this.mContext.getUserId(), this.mContext.getPackageName());
    }

    @SystemApi
    public BrightnessConfiguration getBrightnessConfigurationForDisplay(String uniqueId) {
        return this.mGlobal.getBrightnessConfigurationForDisplay(uniqueId, this.mContext.getUserId());
    }

    public void setBrightnessConfigurationForUser(BrightnessConfiguration c, int userId, String packageName) {
        this.mGlobal.setBrightnessConfigurationForUser(c, userId, packageName);
    }

    @SystemApi
    public BrightnessConfiguration getBrightnessConfiguration() {
        return getBrightnessConfigurationForUser(this.mContext.getUserId());
    }

    public BrightnessConfiguration getBrightnessConfigurationForUser(int userId) {
        return this.mGlobal.getBrightnessConfigurationForUser(userId);
    }

    @SystemApi
    public BrightnessConfiguration getDefaultBrightnessConfiguration() {
        return this.mGlobal.getDefaultBrightnessConfiguration();
    }

    public boolean isMinimalPostProcessingRequested(int displayId) {
        return this.mGlobal.isMinimalPostProcessingRequested(displayId);
    }

    public void setTemporaryBrightness(int displayId, float brightness) {
        this.mGlobal.setTemporaryBrightness(displayId, brightness);
    }

    public void setBrightness(int displayId, float brightness) {
        this.mGlobal.setBrightness(displayId, brightness);
    }

    public float getBrightness(int displayId) {
        return this.mGlobal.getBrightness(displayId);
    }

    public void setTemporaryAutoBrightnessAdjustment(float adjustment) {
        this.mGlobal.setTemporaryAutoBrightnessAdjustment(adjustment);
    }

    @SystemApi
    public Pair<float[], float[]> getMinimumBrightnessCurve() {
        return this.mGlobal.getMinimumBrightnessCurve();
    }

    public void setGlobalUserPreferredDisplayMode(Display.Mode mode) {
        Display.Mode preferredMode = new Display.Mode(mode.getPhysicalWidth(), mode.getPhysicalHeight(), mode.getRefreshRate());
        this.mGlobal.setUserPreferredDisplayMode(-1, preferredMode);
    }

    public void clearGlobalUserPreferredDisplayMode() {
        this.mGlobal.setUserPreferredDisplayMode(-1, null);
    }

    public Display.Mode getGlobalUserPreferredDisplayMode() {
        return this.mGlobal.getUserPreferredDisplayMode(-1);
    }

    public void setShouldAlwaysRespectAppRequestedMode(boolean enabled) {
        this.mGlobal.setShouldAlwaysRespectAppRequestedMode(enabled);
    }

    public boolean shouldAlwaysRespectAppRequestedMode() {
        return this.mGlobal.shouldAlwaysRespectAppRequestedMode();
    }

    public void setRefreshRateSwitchingType(int newValue) {
        this.mGlobal.setRefreshRateSwitchingType(newValue);
    }

    public int getMatchContentFrameRateUserPreference() {
        return toMatchContentFrameRateSetting(this.mGlobal.getRefreshRateSwitchingType());
    }

    private int toMatchContentFrameRateSetting(int switchingType) {
        switch (switchingType) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            default:
                Slog.e(TAG, switchingType + " is not a valid value of switching type.");
                return -1;
        }
    }
}
