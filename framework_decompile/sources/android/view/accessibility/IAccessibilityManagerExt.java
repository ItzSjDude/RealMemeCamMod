package android.view.accessibility;

/* loaded from: classes2.dex */
public interface IAccessibilityManagerExt {
    default boolean getDirectEnabledState() {
        return false;
    }

    default void setDirectEnabledState(int stateFlags) {
    }

    default boolean directEnable(boolean managerEnable) {
        return false;
    }
}
