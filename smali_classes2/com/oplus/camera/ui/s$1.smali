.class Lcom/oplus/camera/ui/s$1;
.super Ljava/lang/Object;
.source "PageGuideDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/s;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Window;

.field final synthetic b:Lcom/oplus/camera/ui/s;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/s;Landroid/view/Window;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/oplus/camera/ui/s$1;->b:Lcom/oplus/camera/ui/s;

    iput-object p2, p0, Lcom/oplus/camera/ui/s$1;->a:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/ui/s$1;->a:Landroid/view/Window;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/ui/s$1;->b:Lcom/oplus/camera/ui/s;

    iget-object v1, p0, Lcom/oplus/camera/ui/s$1;->a:Landroid/view/Window;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/s;->a(Lcom/oplus/camera/ui/s;Landroid/view/Window;)V

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/ui/s$1;->b:Lcom/oplus/camera/ui/s;

    invoke-static {v0}, Lcom/oplus/camera/ui/s;->a(Lcom/oplus/camera/ui/s;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/oplus/camera/ui/s$1;->b:Lcom/oplus/camera/ui/s;

    invoke-static {p0}, Lcom/oplus/camera/ui/s;->a(Lcom/oplus/camera/ui/s;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
