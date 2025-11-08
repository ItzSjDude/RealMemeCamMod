.class Lcom/coui/appcompat/preference/d$2;
.super Ljava/lang/Object;
.source "COUIMultiSelectListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/d;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/c$a;

.field final synthetic b:Lcom/coui/appcompat/preference/d;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/d;Lcom/coui/appcompat/dialog/panel/c$a;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/coui/appcompat/preference/d$2;->b:Lcom/coui/appcompat/preference/d;

    iput-object p2, p0, Lcom/coui/appcompat/preference/d$2;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/coui/appcompat/preference/d$2;->b:Lcom/coui/appcompat/preference/d;

    iget-object v0, p0, Lcom/coui/appcompat/preference/d$2;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/c$a;->a()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/preference/d;->onClick(Landroid/content/DialogInterface;I)V

    .line 81
    iget-object p1, p0, Lcom/coui/appcompat/preference/d$2;->b:Lcom/coui/appcompat/preference/d;

    invoke-static {p1}, Lcom/coui/appcompat/preference/d;->a(Lcom/coui/appcompat/preference/d;)Lcom/coui/appcompat/dialog/panel/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p0, p0, Lcom/coui/appcompat/preference/d$2;->b:Lcom/coui/appcompat/preference/d;

    invoke-static {p0}, Lcom/coui/appcompat/preference/d;->a(Lcom/coui/appcompat/preference/d;)Lcom/coui/appcompat/dialog/panel/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/c;->a()V

    :cond_0
    return-void
.end method
