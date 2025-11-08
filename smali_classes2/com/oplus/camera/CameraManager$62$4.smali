.class Lcom/oplus/camera/CameraManager$62$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$62;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$62;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$62;)V
    .locals 0

    .line 19993
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 19996
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->w(Z)V

    .line 19998
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19999
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 20000
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 20002
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20003
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->g()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$62$4;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    .line 20004
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bS(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    .line 20003
    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/b;Z)V

    :cond_0
    return-void
.end method
