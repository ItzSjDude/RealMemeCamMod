package android.widget;

/* loaded from: classes4.dex */
public interface IEditorWrapper {

    public interface ISelectionModifierCursorControllerWrapper {
        default void setMinTouchOffset(int offset) {
        }

        default void setMaxTouchOffset(int offset) {
        }
    }

    default IEditorExt getEditorExt() {
        return null;
    }

    default TextView getTextView() {
        return null;
    }

    default long getShowCursor() {
        return 0L;
    }

    default void setShowCursor(long showCursor) {
    }

    default void suspendBlink() {
    }

    default void resumeBlink() {
    }
}
