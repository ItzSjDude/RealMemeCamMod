package android.inputmethodservice;

import android.app.Dialog;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.inputmethodservice.InputMethodService;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import java.util.List;

/* loaded from: classes2.dex */
public interface IInputMethodServiceExt {
    default void hookOnComputeRaise(InputMethodService.Insets insets, Dialog dialog) {
    }

    default boolean hookHideImmediately(int flags, SoftInputWindow mWindow) {
        return false;
    }

    default void hookOnColorChange(Uri uri) {
    }

    default void hookOnCreate(ContentObserver mSettingObserver, Context context) {
    }

    default void hookOnDestroy() {
    }

    default int hookUpdatedFlag() {
        return 0;
    }

    default void configDebug(String[] args) {
    }

    default void updateExclusionRects(List<Rect> exclusionRects) {
    }

    default boolean isFoldDisplayOpen() {
        return false;
    }

    default void onEditorInfoUpdate(EditorInfo editorInfo) {
    }

    default void logDebug(String msg) {
    }

    default void logDebugIme(String msg) {
    }

    default void logMethodCallers(String msg) {
    }

    default void updateNavigationBarOnShown(View navigationBarFrame) {
    }

    default int updateNavButtonFlags(int navButtonFlags) {
        return navButtonFlags;
    }

    default void updateExtractViewStyle(View extractView) {
    }

    default void appPrivateCommand(String action, Bundle data) {
    }
}
