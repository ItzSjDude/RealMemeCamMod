.class Lcom/oplus/camera/CameraManager$69;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->dc()V
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

    .line 21367
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 21370
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "CameraManager"

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    .line 21371
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    const-string v2, "func_iot_capture"

    .line 21372
    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 21378
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    .line 21379
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    .line 21380
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bR()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    .line 21381
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    .line 21382
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    .line 21383
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dK(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    .line 21384
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 21390
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21391
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/f;->p()V

    .line 21394
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cP()V

    .line 21396
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->k()Z

    move-result v0

    const-string v2, "earphone"

    if-eqz v0, :cond_4

    .line 21397
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 21398
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->V(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->h()V

    goto/16 :goto_1

    .line 21399
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21400
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->U()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    .line 21401
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    .line 21402
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    goto :goto_0

    .line 21408
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->z(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    .line 21410
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "3"

    .line 21414
    :cond_6
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->di(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/i;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->di(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/control/i;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string p0, "doIotCapture, TimerSnap is running, return"

    .line 21415
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21420
    :cond_7
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 21421
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;Z)V

    goto :goto_1

    .line 21403
    :cond_8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doIotCapture, mCameraState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$69;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", so return"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    const-string p0, "doIotCapture, return"

    .line 21385
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_3
    const-string p0, "doIotCapture, do not support"

    .line 21373
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
