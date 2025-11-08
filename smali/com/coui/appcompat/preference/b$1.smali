.class Lcom/coui/appcompat/preference/b$1;
.super Ljava/lang/Object;
.source "COUIEditTextPreferenceDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coui/appcompat/preference/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/b;Z)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/coui/appcompat/preference/b$1;->b:Lcom/coui/appcompat/preference/b;

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/b$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/coui/appcompat/preference/b$1;->b:Lcom/coui/appcompat/preference/b;

    invoke-static {v0}, Lcom/coui/appcompat/preference/b;->a(Lcom/coui/appcompat/preference/b;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->e()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/b$1;->a:Z

    if-nez v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/coui/appcompat/preference/b$1;->b:Lcom/coui/appcompat/preference/b;

    invoke-static {p0}, Lcom/coui/appcompat/preference/b;->a(Lcom/coui/appcompat/preference/b;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->e()Landroid/widget/Button;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
