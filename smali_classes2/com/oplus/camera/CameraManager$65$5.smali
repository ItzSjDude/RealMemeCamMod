.class Lcom/oplus/camera/CameraManager$65$5;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$65;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$65;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$65;)V
    .locals 0

    .line 20957
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$65$5;->a:Lcom/oplus/camera/CameraManager$65;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 20960
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$5;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$5;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    .line 20961
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$5;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    .line 20962
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 20968
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$5;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20969
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$5;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/f;->p()V

    .line 20972
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65$5;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->V(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->h()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "CameraManager"

    const-string v0, "cameraContract.watchControlVideoShutter, return"

    .line 20963
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
