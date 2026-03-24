package android.service.wallpaper;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.service.wallpaper.WallpaperService;
import android.util.MergedConfiguration;
import android.view.SurfaceControl;
import android.window.ClientWindowFrames;
import com.android.internal.os.HandlerCaller;

/* loaded from: classes3.dex */
public interface IWallpaperServiceExt {
    public static final String COMMAND_PHYSICAL_DISPLAY_CHANGE = "switchPhysicalDisplay";

    default void registerSetingsContentObserver(Context context) {
    }

    default void unregisterSettingsContentObserver(Context context) {
    }

    default void addEngine(WallpaperService.Engine engine) {
    }

    default void removeEngine(WallpaperService.Engine engine) {
    }

    default void onBind(Intent intent) {
    }

    default void setWallpaperService(WallpaperService service) {
    }

    default void adjustMessageQueue(Handler handler, Message msg) {
    }

    default void onDispatchAppVisibility(boolean visible, boolean debug) {
    }

    default boolean isFromSwitchingUser() {
        return false;
    }

    default void sendWallpaperCommandMsg(HandlerCaller caller, Message msg, WallpaperService.WallpaperCommand command) {
        caller.sendMessage(msg);
    }

    default boolean blockReportResizeForWallpaper(ClientWindowFrames currentWinFrames, ClientWindowFrames newWinFrames, MergedConfiguration currentMergedConfiguration, MergedConfiguration newMergedConfiguration, int currentDisplayId, int newDisplayId, boolean reportDraw, boolean forceLayout, SurfaceControl surfaceControl) {
        return false;
    }
}
