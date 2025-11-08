.class Lcom/oplus/camera/e/e$4;
.super Lcom/oplus/ocs/camera/CameraPreviewCallback;
.source "OneCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/e/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/e;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraPreviewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public generateImageInfo(Landroid/media/Image;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    iget-object p0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d$c;->b(Landroid/media/Image;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onHalPreviewCollected(J)V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/e/d$c;->a(J)V

    return-void
.end method

.method public onPreviewCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    const-string v2, "52pv_PreviewCaptureProgressed"

    const-string v3, "CameraPreviewCallback.onPreviewCaptureProgressed"

    invoke-static {v3, v2, v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 524
    iget-object p0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/oplus/camera/e/d$c;->a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 526
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreviewFrameReceived(Landroid/media/Image;)V
    .locals 6

    .line 510
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraPreviewCallback.onPreviewFrameReceived size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "60pv_PreviewFrameReceived"

    invoke-static {v0, v5, v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 513
    iget-object p0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d$c;->a(Landroid/media/Image;)V

    .line 515
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreviewMetaReceived(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 10

    const-string v0, "front_wide"

    const-string v1, "front_main"

    const-string v2, "55pv_PreviewMetaReceived"

    const-string v3, "CameraPreviewCallback.onPreviewMetaReceived"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 414
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x1

    :goto_0
    invoke-static {v3, v2, v6, v7}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 416
    sget-object v6, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v6}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 417
    iget-object v7, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v7}, Lcom/oplus/camera/e/e;->d(Lcom/oplus/camera/e/e;)I

    move-result v7

    invoke-static {v7}, Lcom/oplus/camera/e/a;->c(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    move v7, v4

    goto :goto_1

    :cond_3
    move v7, v4

    move-object v6, v5

    .line 421
    :goto_1
    iget-object v8, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v8}, Lcom/oplus/camera/e/e;->h(Lcom/oplus/camera/e/e;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v8}, Lcom/oplus/camera/e/e;->i(Lcom/oplus/camera/e/e;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_4
    if-eqz p1, :cond_8

    const-string v8, "CameraStartupPerformance.onFirstFrameArrived"

    .line 422
    invoke-static {v8}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 424
    iget-object v9, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v9}, Lcom/oplus/camera/e/e;->d(Lcom/oplus/camera/e/e;)I

    move-result v9

    invoke-static {v9}, Lcom/oplus/camera/e/a;->c(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 425
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 426
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0, v4}, Lcom/oplus/camera/e/e;->c(Lcom/oplus/camera/e/e;Z)Z

    goto :goto_2

    .line 428
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0, v4}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/camera/e/e;Z)Z

    .line 431
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraPreviewCallback, onPreviewMetaReceived, first frame arrive, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewRequestHash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    .line 432
    invoke-static {v1}, Lcom/oplus/camera/e/e;->j(Lcom/oplus/camera/e/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    .line 431
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->k(Lcom/oplus/camera/e/e;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 436
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 437
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    iget-object v1, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v1}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    invoke-interface {v1, v4, v7, v0}, Lcom/oplus/camera/e/d$c;->a(Landroid/hardware/camera2/CaptureResult;ILjava/lang/String;)V

    .line 442
    :cond_7
    invoke-static {v8}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 445
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 446
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d$c;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_9
    if-eqz p1, :cond_10

    .line 450
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 451
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d$c;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 455
    :cond_a
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 456
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 458
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 459
    iget-object v1, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/camera/e/e;I)I

    .line 462
    :cond_b
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 464
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 465
    iget-object v1, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e/e;->c(Lcom/oplus/camera/e/e;I)I

    .line 469
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->m(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/c/a;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 470
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->m(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/c/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-virtual {v0, v5, v5, v1}, Lcom/oplus/camera/c/a;->a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 473
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->n(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/a/a;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 474
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->n(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-virtual {v0, v5, v5, v1}, Lcom/oplus/camera/e/a/a;->a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 477
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 478
    iget-object p0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-interface {p0, v5, v5, p1, v7}, Lcom/oplus/camera/e/d$c;->a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;I)V

    .line 482
    :cond_f
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public onPreviewReceived(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 489
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_IMAGE_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    const-string v2, "58pv_PreviewReceived TS"

    const-string v3, "CameraPreviewCallback.onPreviewReceived"

    invoke-static {v3, v2, v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 491
    iget-object p0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d$c;->b(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 493
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onVideoReceived(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 4

    .line 499
    iget-object v0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "60pv_VideoReceived"

    const-string v3, "CameraPreviewCallback.onVideoReceived"

    invoke-static {v3, v2, v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 502
    iget-object p0, p0, Lcom/oplus/camera/e/e$4;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;

    move-result-object p0

    new-instance v0, Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-direct {v0, p1}, Lcom/oplus/camera/aps/util/CameraApsResult;-><init>(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d$c;->a(Lcom/oplus/camera/aps/util/CameraApsResult;)V

    .line 504
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
