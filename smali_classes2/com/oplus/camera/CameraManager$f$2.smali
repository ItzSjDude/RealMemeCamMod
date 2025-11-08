.class Lcom/oplus/camera/CameraManager$f$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$f;)V
    .locals 0

    .line 9704
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 9707
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CameraManager"

    const-string v1, "closeFrontFlash"

    .line 9711
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9713
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cM()V

    .line 9715
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9716
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9717
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9718
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cH()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9719
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->z(I)V

    .line 9722
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$f$2;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bk()V

    :cond_2
    :goto_0
    return-void
.end method
