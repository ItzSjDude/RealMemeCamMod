.class Lcom/oplus/camera/ui/v$1;
.super Ljava/lang/Object;
.source "StatementDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/v;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/v;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/oplus/camera/ui/v$1;->a:Lcom/oplus/camera/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/ui/v$1;->a:Lcom/oplus/camera/ui/v;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/v;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
