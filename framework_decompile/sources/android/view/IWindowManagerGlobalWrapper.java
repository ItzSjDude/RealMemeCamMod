package android.view;

/* loaded from: classes3.dex */
public interface IWindowManagerGlobalWrapper {
    default boolean trimMemoryIfAllowed(int level) {
        return false;
    }
}
