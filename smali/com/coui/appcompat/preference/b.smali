.class public Lcom/coui/appcompat/preference/b;
.super Landroidx/preference/a;
.source "COUIEditTextPreferenceDialogFragment.java"


# instance fields
.field private a:Lcom/coui/appcompat/widget/COUIEditText;

.field private b:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/preference/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/preference/b;)Lcom/coui/appcompat/dialog/panel/b;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coui/appcompat/preference/b;->b:Lcom/coui/appcompat/dialog/panel/b;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/coui/appcompat/preference/b;
    .locals 3

    .line 57
    new-instance v0, Lcom/coui/appcompat/preference/b;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/b;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 59
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/b;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/preference/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    iget-object p0, p0, Lcom/coui/appcompat/preference/b;->b:Lcom/coui/appcompat/dialog/panel/b;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 83
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    .line 84
    new-instance v0, Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/b;->b:Lcom/coui/appcompat/dialog/panel/b;

    .line 85
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    const v0, 0x1020003

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIEditText;

    iput-object v0, p0, Lcom/coui/appcompat/preference/b;->a:Lcom/coui/appcompat/widget/COUIEditText;

    .line 89
    sget v0, Lcoui/support/appcompat/R$id;->normal_bottom_sheet_toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 90
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->b()Landroidx/preference/DialogPreference;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->b()Landroidx/preference/DialogPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/DialogPreference;->a()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    instance-of v3, v1, Lcom/coui/appcompat/preference/COUIEditTextPreference;

    if-eqz v3, :cond_0

    .line 95
    check-cast v1, Lcom/coui/appcompat/preference/COUIEditTextPreference;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 98
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Lcom/coui/appcompat/preference/COUIEditTextPreference;->o()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 106
    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/preference/b;->a:Lcom/coui/appcompat/widget/COUIEditText;

    new-instance v3, Lcom/coui/appcompat/preference/b$1;

    invoke-direct {v3, p0, v0}, Lcom/coui/appcompat/preference/b$1;-><init>(Lcom/coui/appcompat/preference/b;Z)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/widget/COUIEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p1, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->b()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/b;->a(Landroid/view/View;)V

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->b()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->b()Landroidx/preference/DialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->e()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->b()Landroidx/preference/DialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->b()Landroidx/preference/DialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v5, v2

    goto :goto_2

    :cond_3
    move-object v5, v2

    move-object v7, v5

    .line 131
    :goto_2
    iget-object v0, p0, Lcom/coui/appcompat/preference/b;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/panel/b;->setContentView(Landroid/view/View;)V

    .line 132
    iget-object v3, p0, Lcom/coui/appcompat/preference/b;->b:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v4, 0x0

    new-instance v6, Lcom/coui/appcompat/preference/b$2;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/preference/b$2;-><init>(Lcom/coui/appcompat/preference/b;)V

    new-instance v8, Lcom/coui/appcompat/preference/b$3;

    invoke-direct {v8, p0}, Lcom/coui/appcompat/preference/b$3;-><init>(Lcom/coui/appcompat/preference/b;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/coui/appcompat/dialog/panel/b;->a(ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_4
    iget-object p0, p0, Lcom/coui/appcompat/preference/b;->b:Lcom/coui/appcompat/dialog/panel/b;

    return-object p0
.end method

.method public onResume()V
    .locals 2

    .line 156
    invoke-super {p0}, Landroidx/preference/a;->onResume()V

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/preference/b;->a:Lcom/coui/appcompat/widget/COUIEditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setFocusable(Z)V

    .line 159
    iget-object v0, p0, Lcom/coui/appcompat/preference/b;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIEditText;->requestFocus()Z

    .line 160
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x5

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroidx/preference/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    iget-object p0, p0, Lcom/coui/appcompat/preference/b;->a:Lcom/coui/appcompat/widget/COUIEditText;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 169
    invoke-super {p0}, Landroidx/preference/a;->onStart()V

    .line 170
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->b()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/b;->dismiss()V

    :cond_0
    return-void
.end method
