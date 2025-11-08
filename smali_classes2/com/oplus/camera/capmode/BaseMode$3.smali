.class Lcom/oplus/camera/capmode/BaseMode$3;
.super Lcom/oplus/ocs/camera/CameraPictureCallback;
.source "BaseMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/BaseMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraPictureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 10

    .line 425
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->interruptCaptureFailedEvent()Z

    move-result v0

    const-string v1, "BaseMode"

    if-eqz v0, :cond_0

    const-string p0, "onCaptureFailed, interruptCaptureFailedEvent"

    .line 426
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 431
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureFailed(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 436
    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_FAIL_CODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 439
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureFailed, resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v2, v2, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v2, v2, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 442
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v2, v2, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-static {v3}, Lcom/oplus/camera/capmode/BaseMode;->access$400(Lcom/oplus/camera/capmode/BaseMode;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oplus/camera/ui/preview/h;->a(J)V

    :cond_2
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "beforeSnapping, memory is not enough!"

    .line 447
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.oplus.memory.not.enough.hint"

    .line 449
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 450
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->showLowMemory()V

    .line 453
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->resetWhenCaptureFail()V

    .line 454
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    iput-boolean v0, p1, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    .line 459
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/capmode/BaseMode;->setAllowSwitchMode(Z)V

    .line 460
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->setCapturePreviewDataStateIdle()V

    .line 462
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_5

    .line 463
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v2}, Lcom/oplus/camera/capmode/a;->f(Z)V

    .line 466
    :cond_5
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/BaseMode;->getImageFormat()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/capmode/BaseMode;->onPictureCallback([BIIIZI)V

    .line 468
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-nez p1, :cond_6

    .line 469
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/BaseMode$3$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/BaseMode$3$1;-><init>(Lcom/oplus/camera/capmode/BaseMode$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method
