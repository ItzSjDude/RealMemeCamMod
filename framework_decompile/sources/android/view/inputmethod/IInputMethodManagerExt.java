package android.view.inputmethod;

import android.content.Context;
import android.view.ViewRootImpl;
import com.android.internal.view.IInputContext;

/* loaded from: classes2.dex */
public interface IInputMethodManagerExt {
    default void logDebug(String msg) {
    }

    default void logDebugIme(String msg) {
    }

    default void logMethodCallers(String msg) {
    }

    default int adjustForceFlag(int flags) {
        return flags;
    }

    default boolean configDebug(String[] args) {
        return false;
    }

    default void updateCursorAnchorInfoToSynergy(CursorAnchorInfo cursorAnchorInfo) {
    }

    default void invalidateInputToSynergy(EditorInfo editorInfo, IInputContext inputContext, int sessionId) {
    }

    default void updateCurrentRootView(ViewRootImpl rootView) {
    }

    default void attachInfoToEditorInfo(EditorInfo editorInfo) {
    }

    default void onStartInputResult(boolean success) {
    }

    default void onCallClickBeforeCheckFocus() {
    }

    default void onCallShowBeforeCheckFocus() {
    }

    default int adjustStartInputFlags(int flags) {
        return flags;
    }

    default boolean needForceNewFocus() {
        return false;
    }

    default boolean updateReportToImeController(Context context, int displayId, boolean reportToImeController) {
        return reportToImeController;
    }
}
