.class Lcom/oplus/camera/CameraManager$65$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$65;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/CameraManager$65;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$65;Ljava/lang/String;)V
    .locals 0

    .line 20908
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$65$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 20911
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20912
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/f;->p()V

    .line 20915
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "CameraManager"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    .line 20916
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    .line 20917
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bR()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 20923
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->U()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    .line 20924
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    .line 20925
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 20931
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->a:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 20932
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65$4;->a:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;Z)V

    return-void

    .line 20936
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    xor-int/2addr p0, v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;ZZZ)V

    return-void

    .line 20926
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraContract.watchCapture, mCameraState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65$4;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", so return"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string p0, "cameraContract.watchCapture, return"

    .line 20918
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
