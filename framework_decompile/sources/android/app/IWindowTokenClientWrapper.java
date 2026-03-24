package android.app;

/* loaded from: classes.dex */
public interface IWindowTokenClientWrapper {
    default boolean isContextWeakRefRelease() {
        return false;
    }
}
