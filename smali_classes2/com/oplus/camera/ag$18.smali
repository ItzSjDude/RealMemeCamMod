.class Lcom/oplus/camera/ag$18;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/oplus/camera/ag$18;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1020
    iget-object p1, p0, Lcom/oplus/camera/ag$18;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c(Z)V

    .line 1021
    iget-object p1, p0, Lcom/oplus/camera/ag$18;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->e(Z)V

    .line 1022
    iget-object p1, p0, Lcom/oplus/camera/ag$18;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b(Z)V

    .line 1023
    iget-object p1, p0, Lcom/oplus/camera/ag$18;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setIsHighlight(Z)V

    .line 1024
    iget-object p1, p0, Lcom/oplus/camera/ag$18;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->r(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/ag$18;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->s(Lcom/oplus/camera/ag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object p1, p0, Lcom/oplus/camera/ag$18;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->w(Lcom/oplus/camera/ag;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1027
    iget-object p0, p0, Lcom/oplus/camera/ag$18;->a:Lcom/oplus/camera/ag;

    invoke-static {p0, v0}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
