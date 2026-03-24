package android.service.wallpaper;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.service.wallpaper.WallpaperService;
import android.view.Display;
import android.view.IWindowSession;
import android.view.WindowManager;
import com.android.internal.view.BaseIWindow;

/* loaded from: classes3.dex */
public interface IEngineExt {
    default boolean reportEngineShown(WallpaperService.IWallpaperEngineWrapper engineWrapper, boolean waitForEngineShown) {
        return false;
    }

    default void reportFinishDrawing(Handler handler, IWindowSession windowSession, BaseIWindow window) {
    }

    default void onCommand(String action, int x, int y, int z, Bundle extras, boolean resultRequested) {
    }

    default void setWallpaperService(WallpaperService wallpaperService) {
    }

    default boolean initLayoutForInvalidMaxBounds(Rect maxBounds, WindowManager.LayoutParams layout, Display display, int myWidth, int myHeight) {
        return false;
    }
}
