.class Lcom/coui/appcompat/preference/b$3;
.super Ljava/lang/Object;
.source "COUIEditTextPreferenceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/preference/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/b;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/coui/appcompat/preference/b$3;->a:Lcom/coui/appcompat/preference/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/coui/appcompat/preference/b$3;->a:Lcom/coui/appcompat/preference/b;

    invoke-static {p1}, Lcom/coui/appcompat/preference/b;->a(Lcom/coui/appcompat/preference/b;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/preference/b;->onClick(Landroid/content/DialogInterface;I)V

    .line 145
    iget-object p0, p0, Lcom/coui/appcompat/preference/b$3;->a:Lcom/coui/appcompat/preference/b;

    invoke-static {p0}, Lcom/coui/appcompat/preference/b;->a(Lcom/coui/appcompat/preference/b;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->dismiss()V

    return-void
.end method
