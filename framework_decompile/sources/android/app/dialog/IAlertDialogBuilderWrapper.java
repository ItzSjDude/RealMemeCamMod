package android.app.dialog;

import android.app.AlertDialog;

/* loaded from: classes.dex */
public interface IAlertDialogBuilderWrapper {
    default IAlertParamsExt getAlertParamsExt(AlertDialog.Builder builder) {
        return new IAlertParamsExt() { // from class: android.app.dialog.IAlertDialogBuilderWrapper.1
        };
    }

    default void setDialogType(AlertDialog.Builder builder, int dialogType) {
    }

    default void setSummaries(AlertDialog.Builder builder, CharSequence[] items, CharSequence[] summaryItems) {
    }

    default void setMessageNeedScroll(AlertDialog.Builder builder, boolean messageNeedScroll) {
    }
}
