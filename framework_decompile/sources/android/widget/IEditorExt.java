package android.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.ColorDrawable;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;

/* loaded from: classes4.dex */
public interface IEditorExt {
    default void setEditorUtils(Editor editor) {
    }

    default boolean[] handleCursorControllersEnabled(boolean insertionControllerEnabled, boolean selectionControllerEnabled) {
        return new boolean[2];
    }

    default boolean needAllSelected() {
        return false;
    }

    default boolean selectAllText(TextView textView) {
        return false;
    }

    default void setFocused(boolean value) {
    }

    default boolean needHook() {
        return false;
    }

    default void setLastOffset(int value) {
    }

    default void startInsertionActionMode(ActionMode textActionMode, int offset, Editor editor) {
    }

    default void layout(int shadowViewWidth, int shadowViewHeight, CharSequence text, TextView shadowView) {
    }

    default void setBackground(ListView suggestionListView, ColorDrawable colorDrawable) {
    }

    default void updateSelectAllItem(Menu menu, TextView textView) {
    }

    default void toHandleItemClicked(int id, TextView textView, Editor editor) {
    }

    default boolean setSearchMenuItem(int index, Intent intent, CharSequence title, ResolveInfo resolveInfo, Menu menu) {
        return false;
    }

    default View.DragShadowBuilder getOplusTextThumbnailBuilder(View textview, String text) {
        return null;
    }

    default boolean refreshCursorRenderTime(Editor editor) {
        return false;
    }

    default int getExtraCursorWidth(Editor editor) {
        return 0;
    }

    default int getExtraLeftOffset(Editor editor) {
        return 0;
    }

    default void handleKeyCodeDelDown(Editor editor, KeyEvent keyEvent) {
    }

    default void handleKeyCodeDelUp(Editor editor, KeyEvent keyEvent) {
    }

    default void editorDetachFromWindow(Editor editor) {
    }

    default void onInitializeReorderActionMenu(Menu menu, Context context, TextView textView) {
    }

    default boolean isOplusReorderActionMenu(Intent intent) {
        return false;
    }

    default void hookFireIntent(TextView textview, Intent intent) {
    }

    default boolean raiseOplusMenuPriority(int order, CharSequence label, Intent intent, ResolveInfo resolveInfo, Menu menu) {
        return false;
    }
}
