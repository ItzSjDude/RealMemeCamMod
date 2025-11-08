.class Lcom/oplus/camera/CameraManager$46;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/e/d$c;


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

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 2

    .line 10269
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10270
    iput-wide v0, p0, Lcom/oplus/camera/CameraManager$46;->b:J

    .line 10271
    iput-wide v0, p0, Lcom/oplus/camera/CameraManager$46;->c:J

    .line 10272
    iput-wide v0, p0, Lcom/oplus/camera/CameraManager$46;->d:J

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureResult;J)V
    .locals 4

    if-eqz p1, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 10753
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10755
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cQ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10759
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/b;->Y:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    .line 10761
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    .line 10762
    check-cast p1, [I

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    .line 10765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/CameraManager$46;->b:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2, p3}, Lcom/oplus/camera/f/a;->a(JJ)V

    .line 10769
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/CameraManager$46;->b:J

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lcom/oplus/camera/aps/util/CameraApsResult;)V
    .locals 18

    move-object/from16 v0, p0

    .line 10572
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->p()Z

    move-result v1

    .line 10573
    iget-object v2, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->ay()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 10574
    :goto_0
    iget-object v5, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/aa;->j()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v5}, Lcom/oplus/camera/CameraManager;->n()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    return-void

    .line 10580
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    const-string v6, "CameraManager"

    if-nez v5, :cond_3

    const-string v0, "onPreviewImageBufferReceived, hardwareBuffer is null"

    .line 10583
    invoke-static {v6, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10588
    :cond_3
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v7

    .line 10589
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v5

    .line 10593
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 10594
    iget-object v12, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v12}, Lcom/oplus/camera/CameraManager;->by(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v12

    sub-long v12, v10, v12

    const/16 v14, 0x21

    const/16 v15, 0x4c

    const-wide/16 v16, 0x3e8

    cmp-long v16, v12, v16

    if-lez v16, :cond_4

    const-wide/16 v12, 0x0

    .line 10602
    :cond_4
    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8, v12, v13}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;J)J

    .line 10603
    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8, v12, v13}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;J)J

    .line 10604
    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8, v12, v13}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;J)J

    .line 10605
    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8, v10, v11}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;J)J

    .line 10607
    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8}, Lcom/oplus/camera/CameraManager;->bz(Lcom/oplus/camera/CameraManager;)Ljava/nio/ByteBuffer;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8}, Lcom/oplus/camera/CameraManager;->bA(Lcom/oplus/camera/CameraManager;)I

    move-result v8

    if-ne v7, v8, :cond_5

    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8}, Lcom/oplus/camera/CameraManager;->bB(Lcom/oplus/camera/CameraManager;)I

    move-result v8

    if-eq v5, v8, :cond_6

    .line 10608
    :cond_5
    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8, v7}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;I)I

    .line 10609
    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8, v5}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;I)I

    .line 10610
    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    mul-int v9, v7, v5

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10613
    :cond_6
    iget-object v8, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8}, Lcom/oplus/camera/CameraManager;->bz(Lcom/oplus/camera/CameraManager;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10614
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    iget-object v9, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v9}, Lcom/oplus/camera/CameraManager;->bz(Lcom/oplus/camera/CameraManager;)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/16 v10, 0x11

    invoke-static {v8, v9, v10}, Lcom/oplus/camera/util/Util;->nativeGetYuvDataWithoutPadding(Landroid/hardware/HardwareBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v0, "onPreviewImageBufferReceived, nativeGetYuvDataWithoutPadding failed"

    .line 10618
    invoke-static {v6, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v2, :cond_8

    .line 10623
    iget-object v2, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bC(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v8

    int-to-long v10, v14

    cmp-long v2, v8, v10

    if-ltz v2, :cond_8

    .line 10624
    iget-object v2, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bC(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v8

    sub-long/2addr v8, v10

    invoke-static {v2, v8, v9}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;J)J

    .line 10625
    iget-object v2, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bz(Lcom/oplus/camera/CameraManager;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 10626
    iget-object v6, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->bD(Lcom/oplus/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v6

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    if-eqz v1, :cond_9

    .line 10629
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10630
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bE(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v1

    int-to-long v8, v15

    cmp-long v1, v1, v8

    if-ltz v1, :cond_9

    const-string v1, "com.oplus.gesture.detect.in.aps"

    .line 10631
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 10632
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bE(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-static {v1, v10, v11}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;J)J

    .line 10633
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bz(Lcom/oplus/camera/CameraManager;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 10634
    iget-object v2, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bD(Lcom/oplus/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    if-eqz v3, :cond_a

    .line 10637
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bF(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v1

    const-wide/16 v3, 0xfa

    cmp-long v1, v1, v3

    if-ltz v1, :cond_a

    .line 10638
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bz(Lcom/oplus/camera/CameraManager;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 10639
    iget-object v2, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bF(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-static {v2, v8, v9}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;J)J

    .line 10640
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bD(Lcom/oplus/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v7, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 10641
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 10382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/oplus/camera/perf/FluencyPerformance;->a(JJ)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 9

    .line 10281
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    const-string p2, "func_ais_snapshot"

    invoke-virtual {p1, p2}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aZ(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10283
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    sget-object p2, Lcom/oplus/camera/e/b;->f:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 10284
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p2

    sget-object v0, Lcom/oplus/camera/e/b;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v0, p3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    .line 10285
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/e/b;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1, p3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    .line 10287
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 10291
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v1

    aget p1, p1, v2

    aget p2, p2, v2

    aget v0, v0, v2

    invoke-virtual {v1, p1, p2, v0}, Lcom/oplus/camera/b;->a(III)V

    .line 10295
    :cond_0
    :try_start_0
    sget-object p1, Lcom/oplus/camera/e/b;->X:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [I

    .line 10296
    sget-object p1, Lcom/oplus/camera/e/b;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    .line 10297
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 10298
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 10299
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;Z)Z

    .line 10301
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 10302
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/o;->a(II[III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10305
    :catch_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;I)V
    .locals 3

    .line 10313
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aZ(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    const-string v0, "CameraManager"

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10314
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10315
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->j()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 10322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPreviewCaptureResult, result is null."

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10327
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    invoke-direct {p0, p3, v1, v2}, Lcom/oplus/camera/CameraManager$46;->a(Landroid/hardware/camera2/CaptureResult;J)V

    .line 10329
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    if-ne p1, p4, :cond_2

    .line 10331
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, p3}, Lcom/oplus/camera/CameraManager;->a(Landroid/hardware/camera2/CaptureResult;)V

    .line 10335
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const/4 p4, -0x1

    invoke-virtual {p1, p4}, Lcom/oplus/camera/capmode/ModeManager;->l(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 10337
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10343
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPreviewCaptureResult, mbCaptureModeChanging: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mbSwitchingCamera: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10344
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10343
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10349
    :cond_5
    invoke-static {p2, p3}, Lcom/oplus/camera/util/AndroidTestHelper;->onPreviewCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 10351
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/t;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 10355
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 10356
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/oplus/camera/capmode/ModeManager;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_7
    return-void

    .line 10316
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPreviewCaptureResult, mOneCamera: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 10373
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aZ(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10377
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;ILjava/lang/String;)V
    .locals 4

    .line 10685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFirstCaptureResultArrived, cameraRole: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", captureMode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10687
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "CameraManager"

    const-string p1, "onPause, the first frame come, so return"

    .line 10688
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10693
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bw(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 10694
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result p1

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10695
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v1}, Lcom/oplus/camera/CameraManager;->u(Lcom/oplus/camera/CameraManager;Z)Z

    .line 10698
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 10699
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/aa;->k()V

    .line 10700
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bG(Lcom/oplus/camera/CameraManager;)V

    .line 10701
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/aa;->e(Z)V

    .line 10704
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10705
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->cM()V

    :cond_4
    if-ne v1, p2, :cond_5

    .line 10709
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bH(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 10710
    :try_start_0
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3, v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;I)I

    .line 10711
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10716
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bI(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v2, 0x64

    .line 10720
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    const/4 v3, 0x5

    invoke-static {p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 10721
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 10722
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10723
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p3

    int-to-long v2, v2

    invoke-virtual {p3, p1, v2, v3}, Lcom/oplus/camera/w/b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10725
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 10726
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bo(Lcom/oplus/camera/CameraManager;)V

    .line 10728
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v1, p2, :cond_7

    .line 10730
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/preview/h;->l(Z)V

    goto :goto_1

    .line 10732
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/preview/h;->m(Z)V

    .line 10736
    :cond_8
    :goto_1
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result p1

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10737
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 10738
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/h;->m()V

    .line 10741
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    const-string p2, "pref_camera_gradienter_key"

    invoke-virtual {p1, p2}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10742
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    const-string p2, "pref_camera_gradienter_key"

    const-string p3, "off"

    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 10743
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->bJ(Lcom/oplus/camera/CameraManager;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/oplus/camera/ui/d;->a(ZI)V

    .line 10746
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 10747
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->dT()V

    :cond_b
    return-void
.end method

.method public a(Landroid/media/Image;)V
    .locals 0

    .line 10400
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/media/Image;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/aps/util/CameraApsResult;)V
    .locals 6

    .line 10648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/CameraManager$46;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oplus/camera/CameraManager$46;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/camera/f/a;->b(JJ)V

    .line 10650
    iget v0, p1, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsLastVideoFrame:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-wide/16 v2, 0x0

    .line 10651
    iput-wide v2, p0, Lcom/oplus/camera/CameraManager$46;->c:J

    .line 10652
    iput-wide v2, p0, Lcom/oplus/camera/CameraManager$46;->d:J

    goto :goto_0

    .line 10654
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/CameraManager$46;->c:J

    .line 10655
    iget-wide v2, p0, Lcom/oplus/camera/CameraManager$46;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/CameraManager$46;->d:J

    .line 10658
    :goto_0
    iget v0, p1, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsMotionDetected:I

    const-string v2, "CameraManager"

    if-ne v1, v0, :cond_1

    const-string v0, "onVideoReceived,  motionDetectedFrame Come."

    .line 10659
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10661
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10662
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cF()V

    .line 10666
    :cond_1
    iget v0, p1, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsStartInterpolationFrame:I

    if-ne v1, v0, :cond_2

    const-string v0, "onVideoReceived, interpolationFrame Come."

    .line 10667
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10669
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10670
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cE()V

    .line 10674
    :cond_2
    iget p1, p1, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsLastVideoFrame:I

    if-ne v1, p1, :cond_3

    const-string p1, "onVideoReceived, lastVideoFrameCome"

    .line 10675
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10677
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10678
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cD()V

    :cond_3
    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 10387
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_REQUEST_FORMAT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10392
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10393
    new-instance v0, Lcom/oplus/camera/aps/util/CameraApsDecision;

    invoke-direct {v0, p1}, Lcom/oplus/camera/aps/util/CameraApsDecision;-><init>(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 10394
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/media/Image;)Ljava/util/Map;
    .locals 4
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

    .line 10405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10407
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aH()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10408
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10409
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/h;->b()Ljava/util/Set;

    move-result-object v1

    .line 10410
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 10409
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip_process"

    .line 10408
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10411
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10412
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/h;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "can_not_drop"

    .line 10411
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10414
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->bn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10415
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10416
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/h;->a()Ljava/util/Set;

    move-result-object p1

    const-string v1, "frames_can_not_skip"

    .line 10415
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10420
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10421
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/util/Map;)V

    :cond_2
    return-object v0
.end method

.method public b(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 12

    .line 10429
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bt(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    const-string v1, "CameraManager"

    if-eqz v0, :cond_0

    const-string p0, "onPreviewReceived, need to stop preview"

    .line 10430
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10432
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->close()V

    return-void

    .line 10436
    :cond_0
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_CAMERA_RESULT_REF_TIMESTAMP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 10437
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v2, -0x1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    .line 10439
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10440
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    sget-object v0, Lcom/oplus/camera/ui/preview/h;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/ui/d;->a(IJJ)V

    :cond_1
    const/4 v0, 0x0

    .line 10444
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->KEY_CAMERA_RESULT_APS_INIT_FINISH:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v3}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/camera/CameraManager;->m(Lcom/oplus/camera/CameraManager;Z)Z

    .line 10446
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10447
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    .line 10450
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 10451
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, p0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "rear_main"

    .line 10454
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10455
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_IMAGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, p0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/Image;

    invoke-virtual {v0, p0, v3}, Lcom/oplus/camera/ui/preview/h;->a(Landroid/media/Image;I)V

    goto :goto_0

    :cond_3
    const-string v1, "front_main"

    .line 10457
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "front_wide"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 10458
    :cond_4
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_IMAGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, p0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/Image;

    const/4 p1, 0x2

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/ui/preview/h;->a(Landroid/media/Image;I)V

    :cond_5
    :goto_0
    return-void

    .line 10467
    :cond_6
    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v2}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    const-string p0, "onPreviewReceived, preview frame is not processed by aps, so return."

    .line 10468
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10473
    :cond_7
    new-instance v2, Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-direct {v2, p1}, Lcom/oplus/camera/aps/util/CameraApsResult;-><init>(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 10474
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    .line 10476
    invoke-virtual {v2}, Lcom/oplus/camera/aps/util/CameraApsResult;->isValid()Z

    move-result v5

    if-nez v5, :cond_8

    const-string p0, "onPreviewReceived, get null buffer."

    .line 10477
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10482
    :cond_8
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 10483
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v2}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v6

    iget v7, v2, Lcom/oplus/camera/aps/util/CameraApsResult;->mWidth:I

    iget v8, v2, Lcom/oplus/camera/aps/util/CameraApsResult;->mHeight:I

    iget-object v9, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10484
    invoke-static {v9}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070bdb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v10, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10485
    invoke-static {v10}, Lcom/oplus/camera/CameraManager;->bu(Lcom/oplus/camera/CameraManager;)I

    move-result v10

    iget-object v11, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v11}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oplus/camera/ui/d;->e()Z

    move-result v11

    .line 10483
    invoke-static/range {v6 .. v11}, Lcom/oplus/camera/ui/control/e;->a(Landroid/hardware/HardwareBuffer;IIIIZ)Lcom/oplus/camera/ui/control/e;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ui/control/e;)Lcom/oplus/camera/ui/control/e;

    .line 10488
    :cond_9
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v5

    const-string v6, "func_scale_preview"

    invoke-virtual {v5, v6}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 10489
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/ui/d;->bG()Landroid/util/Size;

    move-result-object v5

    .line 10491
    sget-object v6, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CROP_RIGHT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v6}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CROP_LEFT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v7}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 10492
    sget-object v7, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CROP_BOTTOM:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v7}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CROP_TOP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v8}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 10493
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cropH: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", cropW: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-lez v9, :cond_a

    cmpl-float v8, v6, v8

    if-lez v8, :cond_a

    .line 10496
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    div-float/2addr v8, v7

    .line 10497
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v6

    .line 10499
    iget-object v6, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object v6

    invoke-interface {v6, v8}, Lcom/oplus/camera/ui/preview/a/t;->d(F)V

    .line 10500
    iget-object v6, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/oplus/camera/ui/preview/a/t;->e(F)V

    .line 10504
    :cond_a
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->aZ(Lcom/oplus/camera/CameraManager;)Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v5

    if-eqz v5, :cond_17

    if-eqz v0, :cond_16

    .line 10506
    invoke-direct {p0, v2}, Lcom/oplus/camera/CameraManager$46;->b(Lcom/oplus/camera/aps/util/CameraApsResult;)V

    .line 10508
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->bv(Lcom/oplus/camera/CameraManager;)Z

    move-result v5

    xor-int/2addr v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/aps/util/CameraApsResult;Z)V

    .line 10522
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bv(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_d

    .line 10523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreviewReceived, first frame received, frameNumber: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_b

    .line 10524
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_b
    const-string v4, "null"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10523
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraStartupPerformance.receivedFirstFrameFromAPS"

    .line 10526
    invoke-static {v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 10528
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4, v3}, Lcom/oplus/camera/CameraManager;->p(Lcom/oplus/camera/CameraManager;Z)Z

    .line 10530
    invoke-static {v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 10532
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 10533
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v4

    if-nez v4, :cond_c

    move v4, v3

    goto :goto_2

    :cond_c
    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/d;->ax(Z)V

    if-eqz v0, :cond_d

    .line 10536
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->m()V

    .line 10541
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bw(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 10542
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v3}, Lcom/oplus/camera/CameraManager;->u(Lcom/oplus/camera/CameraManager;Z)Z

    .line 10545
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10546
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10547
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10548
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10549
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4

    .line 10557
    :cond_f
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 10558
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    .line 10559
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getLongPressState()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getIsVolumeDownState()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3

    :cond_10
    move v3, v5

    .line 10558
    :cond_11
    :goto_3
    invoke-virtual {v0, p1, v3}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;Z)V

    .line 10562
    :cond_12
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 10563
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 10566
    :cond_13
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 10567
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bx(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aB()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->a(ZZ)V

    :cond_14
    return-void

    .line 10550
    :cond_15
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewReceived, mbPaused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbCaptureModeChanging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10551
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSwitchingCamera: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSizeChanging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    .line 10552
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", cameraState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$46;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10550
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const-string p0, "onPreviewReceived, cameraScreenNail is null"

    .line 10510
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10512
    invoke-virtual {v2}, Lcom/oplus/camera/aps/util/CameraApsResult;->closeImageBuffer()V

    return-void

    :cond_17
    const-string p0, "onPreviewReceived, mCameraUIManager is null"

    .line 10516
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10518
    invoke-virtual {v2}, Lcom/oplus/camera/aps/util/CameraApsResult;->closeImageBuffer()V

    return-void
.end method
