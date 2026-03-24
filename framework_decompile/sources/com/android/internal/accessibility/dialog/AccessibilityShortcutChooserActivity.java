package com.android.internal.accessibility.dialog;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.android.internal.accessibility.util.AccessibilityUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class AccessibilityShortcutChooserActivity extends Activity {
    private static final String KEY_ACCESSIBILITY_SHORTCUT_MENU_MODE = "accessibility_shortcut_menu_mode";
    private AlertDialog mMenuDialog;
    private AlertDialog mPermissionDialog;
    private ShortcutTargetAdapter mTargetAdapter;
    private final int mShortcutType = 1;
    private final List<AccessibilityTarget> mTargets = new ArrayList();

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        TypedArray theme = getTheme().obtainStyledAttributes(R.styleable.Theme);
        if (!theme.getBoolean(38, false)) {
            requestWindowFeature(1);
        }
        this.mTargets.addAll(AccessibilityTargetHelper.getTargets(this, 1));
        this.mTargetAdapter = new ShortcutTargetAdapter(this.mTargets);
        AlertDialog alertDialogCreateMenuDialog = createMenuDialog();
        this.mMenuDialog = alertDialogCreateMenuDialog;
        alertDialogCreateMenuDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.internal.accessibility.dialog.AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.m6500x3c6bb596(dialogInterface);
            }
        });
        this.mMenuDialog.show();
        if (savedInstanceState != null) {
            int restoreShortcutMenuMode = savedInstanceState.getInt(KEY_ACCESSIBILITY_SHORTCUT_MENU_MODE, 0);
            if (restoreShortcutMenuMode == 1) {
                onEditButtonClicked();
            }
        }
    }

    /* renamed from: lambda$onCreate$0$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity, reason: not valid java name */
    /* synthetic */ void m6500x3c6bb596(DialogInterface dialog) {
        updateDialogListeners();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.mMenuDialog.setOnDismissListener(null);
        this.mMenuDialog.dismiss();
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putInt(KEY_ACCESSIBILITY_SHORTCUT_MENU_MODE, this.mTargetAdapter.getShortcutMenuMode());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTargetSelected(AdapterView<?> parent, View view, int position, long id) {
        AccessibilityTarget target = this.mTargets.get(position);
        target.onSelected();
        this.mMenuDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTargetChecked(AdapterView<?> parent, View view, int position, long id) {
        AccessibilityTarget target = this.mTargets.get(position);
        if ((target instanceof AccessibilityServiceTarget) && !target.isShortcutEnabled()) {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setView(AccessibilityTargetHelper.createEnableDialogContentView(this, (AccessibilityServiceTarget) target, new View.OnClickListener() { // from class: com.android.internal.accessibility.dialog.AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m6501x58a54d53(view2);
                }
            }, new View.OnClickListener() { // from class: com.android.internal.accessibility.dialog.AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m6502x3698b332(view2);
                }
            })).create();
            this.mPermissionDialog = alertDialogCreate;
            alertDialogCreate.show();
        } else {
            target.onCheckedChanged(!target.isShortcutEnabled());
            this.mTargetAdapter.notifyDataSetChanged();
        }
    }

    /* renamed from: lambda$onTargetChecked$1$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity, reason: not valid java name */
    /* synthetic */ void m6501x58a54d53(View v) {
        this.mPermissionDialog.dismiss();
        this.mTargetAdapter.notifyDataSetChanged();
    }

    /* renamed from: lambda$onTargetChecked$2$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity, reason: not valid java name */
    /* synthetic */ void m6502x3698b332(View v) {
        this.mPermissionDialog.dismiss();
    }

    private void onDoneButtonClicked() {
        this.mTargets.clear();
        this.mTargets.addAll(AccessibilityTargetHelper.getTargets(this, 1));
        if (this.mTargets.isEmpty()) {
            this.mMenuDialog.dismiss();
            return;
        }
        this.mTargetAdapter.setShortcutMenuMode(0);
        this.mTargetAdapter.notifyDataSetChanged();
        this.mMenuDialog.getButton(-1).setText(getString(com.android.internal.R.string.edit_accessibility_shortcut_menu_button));
        updateDialogListeners();
    }

    private void onEditButtonClicked() {
        this.mTargets.clear();
        this.mTargets.addAll(AccessibilityTargetHelper.getInstalledTargets(this, 1));
        this.mTargetAdapter.setShortcutMenuMode(1);
        this.mTargetAdapter.notifyDataSetChanged();
        this.mMenuDialog.getButton(-1).setText(getString(com.android.internal.R.string.done_accessibility_shortcut_menu_button));
        updateDialogListeners();
    }

    private void updateDialogListeners() {
        boolean isEditMenuMode = this.mTargetAdapter.getShortcutMenuMode() == 1;
        this.mMenuDialog.setTitle(getString(isEditMenuMode ? com.android.internal.R.string.accessibility_edit_shortcut_menu_volume_title : com.android.internal.R.string.accessibility_select_shortcut_menu_title));
        this.mMenuDialog.getButton(-1).setOnClickListener(isEditMenuMode ? new View.OnClickListener() { // from class: com.android.internal.accessibility.dialog.AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m6503x463f9b9a(view);
            }
        } : new View.OnClickListener() { // from class: com.android.internal.accessibility.dialog.AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m6504x24330179(view);
            }
        });
        this.mMenuDialog.getListView().setOnItemClickListener(isEditMenuMode ? new AdapterView.OnItemClickListener() { // from class: com.android.internal.accessibility.dialog.AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda6
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.onTargetChecked(adapterView, view, i, j);
            }
        } : new AdapterView.OnItemClickListener() { // from class: com.android.internal.accessibility.dialog.AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda7
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.onTargetSelected(adapterView, view, i, j);
            }
        });
    }

    /* renamed from: lambda$updateDialogListeners$3$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity, reason: not valid java name */
    /* synthetic */ void m6503x463f9b9a(View view) {
        onDoneButtonClicked();
    }

    /* renamed from: lambda$updateDialogListeners$4$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity, reason: not valid java name */
    /* synthetic */ void m6504x24330179(View view) {
        onEditButtonClicked();
    }

    private AlertDialog createMenuDialog() {
        String dialogTitle = getString(com.android.internal.R.string.accessibility_select_shortcut_menu_title);
        AlertDialog.Builder builder = new AlertDialog.Builder(this).setTitle(dialogTitle).setAdapter(this.mTargetAdapter, null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.internal.accessibility.dialog.AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m6499x44d03709(dialogInterface);
            }
        });
        if (AccessibilityUtils.isUserSetupCompleted(this)) {
            String positiveButtonText = getString(com.android.internal.R.string.edit_accessibility_shortcut_menu_button);
            builder.setPositiveButton(positiveButtonText, (DialogInterface.OnClickListener) null);
        }
        return builder.create();
    }

    /* renamed from: lambda$createMenuDialog$5$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity, reason: not valid java name */
    /* synthetic */ void m6499x44d03709(DialogInterface dialog) {
        finish();
    }
}
