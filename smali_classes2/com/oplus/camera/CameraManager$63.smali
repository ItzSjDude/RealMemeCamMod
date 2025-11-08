.class Lcom/oplus/camera/CameraManager$63;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/CameraControlButtonListener;


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

    .line 20027
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 20030
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CameraManager"

    const-string v0, "onCameraDoneButtonClick, failed, mWriteThirdImageLock blocked"

    .line 20031
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20036
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->Q()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 20115
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20116
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->A(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 20041
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->m(Lcom/oplus/camera/CameraManager;)[B

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 20045
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    const-string v1, "CameraManager"

    if-nez v0, :cond_1

    const-string p0, "onCameraRetakeButtonClick, failed, mWriteThirdImageLock blocked"

    .line 20046
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20051
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cl()V

    .line 20052
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 20054
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    const-string v2, "pref_camera_hdr_mode_key"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20055
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 20058
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 20059
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aT(Lcom/oplus/camera/CameraManager;)V

    .line 20060
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;Z)V

    .line 20061
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 20063
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20064
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20065
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20066
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->o()V

    .line 20068
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->p()I

    move-result v0

    .line 20070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraRetakeButtonClick, focusMode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v0, :cond_3

    .line 20073
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x4

    .line 20074
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    .line 20073
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 20075
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 20078
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20079
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/o;->c()V

    .line 20082
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aF()V

    :cond_5
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 20127
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 20132
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/oplus/camera/Storage;->w:I

    if-eqz p0, :cond_1

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 20088
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->o(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 20366
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "key_short_video"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20367
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 20369
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getIsReachBorder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20370
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getIsVolumeDownState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20371
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->w()V

    .line 20372
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->w()V

    .line 20373
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setVolumeDownState(Z)V

    return-void

    .line 20377
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v2, "key_quick_video"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20378
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 20380
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getIsReachBorder()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20381
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getIsVolumeDownState()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20382
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->y()V

    .line 20383
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->w()V

    .line 20384
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bv()V

    .line 20385
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setVolumeDownState(Z)V

    .line 20388
    :cond_3
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getMoveStatus()Z

    move-result p1

    if-nez p1, :cond_4

    .line 20389
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLongPressState(Z)V

    .line 20392
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->bo()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20393
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/d;->x(Z)V

    .line 20396
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    .line 20398
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v0

    const-string v2, "CameraManager"

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20399
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20400
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20401
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_6

    goto :goto_0

    .line 20412
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->ar()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "onCameraShutterButtonLongClickReleased, waiting receive first burst picture, so return"

    .line 20413
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20415
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->e(Z)V

    return-void

    :cond_7
    const-string p1, "onCameraShutterButtonLongClickReleased"

    .line 20419
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20421
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/CameraManager;->n(Z)V

    .line 20422
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->C()V

    .line 20424
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/e/d;->t()I

    move-result p1

    if-eqz p1, :cond_9

    .line 20427
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cr(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    sget v1, Lcom/oplus/camera/util/Util;->d:I

    if-ge v0, v1, :cond_8

    .line 20428
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cr(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-lt v0, p1, :cond_9

    .line 20429
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->dG(Lcom/oplus/camera/CameraManager;)V

    .line 20433
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->g()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bS(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/b;Z)V

    return-void

    .line 20403
    :cond_a
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraShutterButtonLongClickReleased, isTimerSnapShotRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoRecording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20404
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20405
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20406
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", supportBurstShot: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20403
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 20093
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aL()V

    .line 20094
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cm()V

    .line 20095
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->ab(Z)V

    .line 20096
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aT(Lcom/oplus/camera/CameraManager;)V

    .line 20098
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const-string v1, "pref_camera_videoflashmode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20099
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aO()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 20104
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->O(Lcom/oplus/camera/CameraManager;Z)Z

    .line 20105
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aN()V

    return-void
.end method

.method public f()V
    .locals 0

    .line 20110
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dh()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 20122
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->y(Z)V

    return-void
.end method

.method public h()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "onCameraShutterButtonClick"

    .line 20139
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20142
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    const-string v2, "key_quick_video"

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20143
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->aW()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraShutterButtonClick, isHalVideoRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aW()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20149
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;Z)Z

    .line 20151
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20152
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->T()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20153
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->U()V

    .line 20156
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->J()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20157
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->cx()V

    .line 20161
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/b;->e()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 20183
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v2}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;Z)Z

    goto :goto_1

    .line 20162
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/o;->M()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20163
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v2}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;Z)Z

    const-string p0, "onCameraShutterButtonClick, wait AF so return"

    .line 20165
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v1, "onCameraShutterButtonClick, normal snapshot"

    .line 20170
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "captureX onCameraShutterButtonClick"

    .line 20172
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 20174
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->dF(Lcom/oplus/camera/CameraManager;)V

    .line 20175
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;Z)Z

    .line 20177
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20178
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/CameraManager;->t(Z)V

    .line 20181
    :cond_6
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public i()V
    .locals 13

    .line 20189
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->a(I)Z

    move-result v0

    .line 20191
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v2

    const-string v3, "CameraManager"

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20192
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20193
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result v2

    if-nez v2, :cond_16

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20195
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20196
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20197
    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 20209
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20210
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->U()V

    .line 20213
    :cond_1
    sget v0, Lcom/oplus/camera/Storage;->w:I

    if-eqz v0, :cond_2

    const-string v0, "onCameraShutterButtonLongClick, sStorageStatus is failed, so return"

    .line 20214
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20216
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->t()V

    return-void

    .line 20220
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v2, "key_short_video"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 20221
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bh()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 20225
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 20226
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->v(Z)V

    .line 20227
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->x()V

    .line 20228
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->v()V

    .line 20230
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getIsVolumeDownState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20231
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLongPressState(Z)V

    .line 20232
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setQuickRecordState(Z)V

    .line 20235
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20236
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/CameraManager;->t(Z)V

    :cond_5
    return-void

    .line 20242
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v4, "key_quick_video"

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20243
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cc()V

    .line 20245
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20246
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 20249
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->x()V

    .line 20251
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getIsVolumeDownState()Z

    move-result p0

    if-nez p0, :cond_8

    .line 20252
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setIsQuickVideoStartedByShutterButtonLongClick(Z)V

    .line 20253
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLongPressState(Z)V

    .line 20254
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setQuickRecordState(Z)V

    :cond_8
    return-void

    .line 20259
    :cond_9
    invoke-static {v2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setQuickRecordState(Z)V

    .line 20262
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v4, "pref_burst_shot_key"

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    .line 20263
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oplus/camera/capmode/ModeManager;->f(Z)Z

    move-result v4

    .line 20265
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v7}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/camera/capmode/ModeManager;->Q()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/oplus/camera/m/b;->a(Landroid/app/Activity;J)Z

    move-result v5

    const-string v6, "disable_code"

    if-nez v5, :cond_a

    const-string v0, "checkReadyToCapture, memory or storage is not enough"

    .line 20266
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20268
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->P()V

    .line 20269
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    const-string v0, "memory_capture"

    invoke-static {p0, v6, v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20273
    :cond_a
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/m/b;->f()Z

    move-result v5

    if-nez v5, :cond_15

    if-eqz v0, :cond_15

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20275
    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20276
    invoke-virtual {v5}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20277
    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20278
    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result v5

    if-nez v5, :cond_15

    if-eqz v4, :cond_b

    goto/16 :goto_0

    .line 20292
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bZ()Ljava/lang/String;

    move-result-object v0

    const-string v4, "heic_10bits"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 20293
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v7

    const v8, 0x7f100071

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/oplus/camera/ui/d;->a(IIZZZ)V

    .line 20295
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    const-string v0, "10bit_unsupport_continuous"

    invoke-static {p0, v6, v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "onCameraShutterButtonLongClick, 10 bit heif does not support continuous shot"

    .line 20297
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v0, "onCameraShutterButtonLongClick"

    .line 20301
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 20303
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 20304
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->p(Z)V

    .line 20307
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->v(Z)V

    .line 20308
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->e(Z)V

    .line 20309
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;I)I

    .line 20310
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->q(Lcom/oplus/camera/CameraManager;I)I

    .line 20312
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v4, "pref_filter_process_key"

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 20313
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->s(Z)V

    .line 20314
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->c(Z)V

    .line 20317
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 20318
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->v(Z)V

    .line 20319
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 20322
    :cond_f
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->B(Z)V

    .line 20324
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aP(Lcom/oplus/camera/CameraManager;)V

    .line 20326
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/aps/service/ApsService;->getCameraPictureCallback()Lcom/oplus/ocs/camera/CameraPictureCallback;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraPictureCallback;)V

    .line 20328
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v0

    if-nez v0, :cond_10

    .line 20329
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    new-instance v4, Lcom/oplus/camera/aps/service/CaptureRequestParam;

    invoke-direct {v4}, Lcom/oplus/camera/aps/service/CaptureRequestParam;-><init>()V

    invoke-static {v0, v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/aps/service/CaptureRequestParam;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    .line 20332
    :cond_10
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 20333
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/aps/service/ApsService;->setHeicCodecOpen(Z)V

    .line 20336
    :cond_11
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->u()Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "onCameraShutterButtonLongClick, burstShotCapture return false!"

    .line 20337
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20339
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 20340
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/oplus/camera/CameraManager$63$1;

    invoke-direct {v3, p0}, Lcom/oplus/camera/CameraManager$63$1;-><init>(Lcom/oplus/camera/CameraManager$63;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20353
    :cond_12
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->n(Z)V

    .line 20354
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/CameraManager;->j(I)V

    return-void

    .line 20359
    :cond_13
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 20360
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/CameraManager;->t(Z)V

    :cond_14
    return-void

    .line 20280
    :cond_15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraShutterButtonLongClick, checkQueueLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20281
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/m/b;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBurstShotSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbBurstShot: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20283
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSnapShotProgress: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20284
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbCaptureModeChanging: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20285
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSizeChanging: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20286
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", stopTakePicture: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20280
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20198
    :cond_16
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraShutterButtonLongClick, isTimerSnapShotRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isVideoRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20199
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCapturingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20200
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSoundLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbPaused: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20202
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSwitchingCamera: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20203
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPreviewStopped: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20204
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->U()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20198
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 7

    .line 20438
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 20441
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20442
    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v3

    const-string v6, "timelapsePro"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20443
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->de(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20444
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20445
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->cU()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20446
    invoke-virtual {v3, v5}, Lcom/oplus/camera/CameraManager;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20447
    invoke-virtual {v3, v4}, Lcom/oplus/camera/CameraManager;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20448
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ag;->q()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20449
    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 20464
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 20465
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->x(Lcom/oplus/camera/CameraManager;I)I

    .line 20466
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->v(Z)V

    .line 20467
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aP()V

    .line 20468
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v2}, Lcom/oplus/camera/CameraManager;->Q(Lcom/oplus/camera/CameraManager;Z)Z

    return-void

    .line 20451
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraVideoShutterButtonClick, mbPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPreviewStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20452
    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20453
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->de(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCaptureModeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20454
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isEffectMenuScrolling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20455
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/d;->cU()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isStartSoundLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20456
    invoke-virtual {v2, v5}, Lcom/oplus/camera/CameraManager;->a(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isStopSoundLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20457
    invoke-virtual {v2, v4}, Lcom/oplus/camera/CameraManager;->a(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBlurAnimRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20458
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isRingerModeReady:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraManager"

    .line 20451
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "onSwitchCameraButtonDown"

    .line 20579
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CameraStartupPerformance.onSwitchCameraButtonDown"

    .line 20581
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 20583
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aL(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$g;

    move-result-object v1

    if-nez v1, :cond_0

    .line 20584
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    new-instance v2, Lcom/oplus/camera/CameraManager$g;

    invoke-direct {v2, v1}, Lcom/oplus/camera/CameraManager$g;-><init>(Lcom/oplus/camera/CameraManager;)V

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$g;)Lcom/oplus/camera/CameraManager$g;

    .line 20587
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->dc()V

    .line 20589
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20590
    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20591
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20592
    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20593
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->dI(Lcom/oplus/camera/CameraManager;)V

    .line 20594
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->S()V

    .line 20597
    :cond_1
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onSwitchCameraButtonUp"

    .line 20602
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20604
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->dd()V

    return-void
.end method

.method public m()Z
    .locals 4

    .line 20609
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "CameraManager"

    const-string v0, "onVideoRecordingPause, preview not started."

    .line 20610
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 20615
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 20616
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20618
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20619
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20620
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20621
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/d;->c()V

    :cond_1
    if-eqz v0, :cond_2

    .line 20624
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20625
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object p0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3}, Lcom/oplus/camera/watch/b$b;->a(IJ)V

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public n()Z
    .locals 4

    .line 20636
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "CameraManager"

    const-string v0, "onVideoRecordingResume, preview not started."

    .line 20637
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 20642
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20643
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20645
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20646
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object p0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3}, Lcom/oplus/camera/watch/b$b;->a(IJ)V

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public onCameraVideoSnapshotButtonClick()V
    .locals 2

    .line 20473
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;ZZ)V

    return-void
.end method

.method public onSwitchCameraButtonClick()V
    .locals 6

    .line 20478
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    const-string v1, "pref_support_switch_camera"

    const-string v2, "CameraManager"

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20479
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20480
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20481
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->e()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20482
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20483
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    sget-object v3, Lcom/oplus/camera/d$a;->CAMERA:Lcom/oplus/camera/d$a;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/d$a;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20484
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cU()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20485
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bi()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20486
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20487
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->de(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20488
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20489
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bh()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20490
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aG()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20491
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 20510
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dH(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onSwitchCameraButtonClick, interruptSwitchCameraClickEvent"

    .line 20511
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "onSwitchCameraButtonClick"

    .line 20516
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20518
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/h;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "multi video intercept onSwitchCameraButtonClick"

    .line 20519
    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20521
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/preview/h;->k(Z)V

    .line 20522
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aH(Lcom/oplus/camera/CameraManager;)V

    .line 20525
    :cond_2
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    const-string v1, "com.oplus.feature.front.camera.auto.zoom.support"

    .line 20527
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20528
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cc(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/m;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 20529
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->aw()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20530
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ag;->b(Z)Z

    .line 20533
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cc(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/m;->b()V

    goto :goto_0

    .line 20534
    :cond_4
    invoke-static {}, Lcom/oplus/camera/e/a;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20535
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->aw()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20536
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ag;->b(Z)Z

    .line 20540
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result v1

    if-nez v1, :cond_8

    .line 20541
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->R()I

    move-result v1

    if-nez v1, :cond_6

    .line 20545
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/d;->i(Ljava/lang/String;)V

    move v3, v2

    goto :goto_1

    .line 20549
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100109

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/d;->i(Ljava/lang/String;)V

    .line 20553
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/s;->c()Z

    move-result v1

    if-nez v1, :cond_7

    .line 20554
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;Z)Z

    .line 20557
    :cond_7
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 20558
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20559
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20562
    :cond_8
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 20563
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->bz()V

    .line 20566
    :cond_9
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;I)V

    .line 20568
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->cN()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bs(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$e;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result v1

    if-nez v1, :cond_a

    .line 20569
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bs(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$e;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/e/d$e;->b()V

    .line 20572
    :cond_a
    invoke-static {v2}, Lcom/oplus/camera/util/AndroidTestHelper;->onButtonReadyToClick(Z)V

    .line 20574
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void

    .line 20492
    :cond_b
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchCameraButtonClick, isPreviewStarted: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbCaptureModeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20493
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTimerSnapShotRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20494
    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAnimationRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20495
    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->e()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingCamera: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20496
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAllowSwitch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20497
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    sget-object v4, Lcom/oplus/camera/d$a;->CAMERA:Lcom/oplus/camera/d$a;

    invoke-virtual {v3, v4}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/d$a;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHeadLineAnimationRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20498
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->bi()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isEffectMenuScrolling: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20499
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->cU()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbFrameAvailable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20500
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbInitialized: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20501
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->de(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", support switch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20502
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isStickerMenuOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20503
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->bh()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoRecording(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20504
    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aE()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBlurAnimRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    .line 20505
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20492
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
