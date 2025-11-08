.class Lcom/oplus/camera/CameraManager$26;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->ca()V
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

    .line 6877
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6880
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cI()Z

    move-result v0

    .line 6882
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6884
    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6885
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->bR()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6886
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->x(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gesture"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6887
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->dF()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6888
    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6898
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 6899
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;Z)Z

    .line 6900
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->z(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 6902
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 6903
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v0, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;Z)V

    .line 6906
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;Z)Z

    .line 6907
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/f;->p()V

    return-void

    .line 6889
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new gesture open Hand, isSupportGestureCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isTimerSnapShotRunning: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6890
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isCameraShutterButtonEnabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6891
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bR()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mShutterType: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6892
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->x(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isHeadlineScrolling: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6893
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dF()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSnapShotProgress: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$26;->a:Lcom/oplus/camera/CameraManager;

    .line 6894
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraManager"

    .line 6889
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
