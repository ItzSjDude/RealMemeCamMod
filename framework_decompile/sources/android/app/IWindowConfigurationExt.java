package android.app;

/* loaded from: classes.dex */
public interface IWindowConfigurationExt {
    public static final int WINDOWING_MODE_BRACKET = 115;
    public static final int WINDOWING_MODE_COMPACTWINDOW = 120;
    public static final int WINDOWING_MODE_ZOOM = 100;

    default boolean isWindowingZoomMode(int windowMode) {
        return windowMode == 100;
    }

    default boolean isWindowingComactMode(int windowMode) {
        return windowMode == 120;
    }

    default int getWindowingComactMode() {
        return -1;
    }

    default boolean isWindowingBracketMode(int windowMode) {
        return windowMode == 115;
    }
}
