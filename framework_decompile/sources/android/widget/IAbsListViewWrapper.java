package android.widget;

/* loaded from: classes4.dex */
public interface IAbsListViewWrapper {
    default IAbsListviewExt getExtImpl() {
        return new IAbsListviewExt() { // from class: android.widget.IAbsListViewWrapper.1
        };
    }

    default Runnable getFlingRunnable() {
        return null;
    }

    default void setFlingRunnable() {
    }

    default void startSpringback() {
    }

    default OverScroller getOverScroller() {
        return null;
    }
}
