.class Lcom/oplus/camera/CameraManager$58;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 19191
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$58;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 19194
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$58;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->ev()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 19195
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$58;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->J(Z)V

    goto :goto_0

    .line 19196
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$58;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->ex()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19197
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$58;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19198
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$58;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->dQ()V

    .line 19201
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$58;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/d;->D(ZZ)V

    goto :goto_0

    .line 19203
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$58;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 19204
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$58;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/oplus/camera/ui/d;->b(ZZZZ)V

    :goto_0
    return-void
.end method
