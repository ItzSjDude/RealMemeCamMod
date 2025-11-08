.class public Lcom/oplus/camera/m;
.super Ljava/lang/Object;
.source "FrontCameraZoomManager.java"


# instance fields
.field private volatile a:I

.field private volatile b:I

.field private volatile c:I

.field private d:I

.field private volatile e:J

.field private f:Landroid/os/ConditionVariable;

.field private volatile g:F

.field private volatile h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/animation/ValueAnimator;

.field private k:Lcom/oplus/camera/ag$a;

.field private l:Lcom/oplus/camera/capmode/a;

.field private m:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/oplus/camera/m;->a:I

    .line 58
    iput v0, p0, Lcom/oplus/camera/m;->b:I

    .line 59
    iput v0, p0, Lcom/oplus/camera/m;->c:I

    const/4 v1, 0x1

    .line 60
    iput v1, p0, Lcom/oplus/camera/m;->d:I

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/oplus/camera/m;->e:J

    .line 62
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/m;->f:Landroid/os/ConditionVariable;

    const v1, 0x3f95c28f    # 1.17f

    .line 64
    iput v1, p0, Lcom/oplus/camera/m;->g:F

    .line 65
    iput-boolean v0, p0, Lcom/oplus/camera/m;->h:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/m;->i:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/m;->j:Landroid/animation/ValueAnimator;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/m;->k:Lcom/oplus/camera/ag$a;

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/m;->l:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/oplus/camera/m;->m:F

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/m;F)F
    .locals 0

    .line 31
    iput p1, p0, Lcom/oplus/camera/m;->g:F

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/m;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/oplus/camera/m;->b:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/m;)Lcom/oplus/camera/ag$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/m;->k:Lcom/oplus/camera/ag$a;

    return-object p0
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 369
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 370
    iget-object p0, p0, Lcom/oplus/camera/m;->k:Lcom/oplus/camera/ag$a;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/ag$a;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/m;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/oplus/camera/m;->h:Z

    return p1
.end method

.method private b(Z)F
    .locals 10

    .line 258
    iget v0, p0, Lcom/oplus/camera/m;->d:I

    const v1, 0x3f95c28f    # 1.17f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto/16 :goto_5

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/m;->i:Ljava/lang/String;

    .line 264
    iget-object v4, p0, Lcom/oplus/camera/m;->k:Lcom/oplus/camera/ag$a;

    invoke-interface {v4}, Lcom/oplus/camera/ag$a;->n()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/m;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 266
    iget-object v4, p0, Lcom/oplus/camera/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/oplus/camera/m;->b()V

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/m;->i:Ljava/lang/String;

    if-nez v0, :cond_2

    return v1

    .line 275
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "idPhoto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v4, "panorama"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "fastVideo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_1

    :sswitch_3
    const-string v4, "multiCamera"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v6

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_b

    if-eq v0, v7, :cond_b

    if-eq v0, v2, :cond_a

    if-eq v0, v3, :cond_a

    .line 290
    iget-boolean v0, p0, Lcom/oplus/camera/m;->h:Z

    if-nez v0, :cond_9

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/m;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x4

    sparse-switch v8, :sswitch_data_1

    goto :goto_2

    :sswitch_4
    const-string v5, "portrait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v5, v7

    goto :goto_3

    :sswitch_5
    const-string v5, "night"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v5, v3

    goto :goto_3

    :sswitch_6
    const-string v8, "common"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :sswitch_7
    const-string v5, "sticker"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v5, v2

    goto :goto_3

    :sswitch_8
    const-string v5, "commonVideo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v5, v9

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v6

    :goto_3
    if-eqz v5, :cond_6

    if-eq v5, v7, :cond_6

    if-eq v5, v2, :cond_6

    if-eq v5, v3, :cond_6

    if-eq v5, v9, :cond_5

    return v1

    :cond_5
    return v4

    .line 299
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/m;->i()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/camera/m;->e()Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    return v1

    :cond_8
    :goto_4
    return v4

    .line 312
    :cond_9
    iget p0, p0, Lcom/oplus/camera/m;->g:F

    return p0

    :cond_a
    return v1

    :cond_b
    return v4

    :cond_c
    :goto_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2bdb0a42 -> :sswitch_3
        -0x21dda81 -> :sswitch_2
        0x3fc6a675 -> :sswitch_1
        0x61ab39d7 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x733d8ab0 -> :sswitch_8
        -0x70aaf6c3 -> :sswitch_7
        -0x50c0d615 -> :sswitch_6
        0x63f6418 -> :sswitch_5
        0x2b77bb9b -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic b(Lcom/oplus/camera/m;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/oplus/camera/m;->a:I

    return p0
.end method

.method private b(F)V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/oplus/camera/m;->k:Lcom/oplus/camera/ag$a;

    const-string v1, "pref_front_zoom_key"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ag$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    iget v0, p0, Lcom/oplus/camera/m;->g:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const-string p0, "FrontCameraZoomManager"

    const-string p1, "startValue == mZoomValue"

    .line 359
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/m;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const/4 v0, 0x2

    .line 365
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    iget v2, p0, Lcom/oplus/camera/m;->g:F

    aput v2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/m;->j:Landroid/animation/ValueAnimator;

    .line 366
    iget-object p1, p0, Lcom/oplus/camera/m;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    iget-object p1, p0, Lcom/oplus/camera/m;->j:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    iget-object p1, p0, Lcom/oplus/camera/m;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/-$$Lambda$m$-VNIbSUZb54EkMk5XQOpGZuugvY;

    invoke-direct {v0, p0}, Lcom/oplus/camera/-$$Lambda$m$-VNIbSUZb54EkMk5XQOpGZuugvY;-><init>(Lcom/oplus/camera/m;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 373
    iget-object p1, p0, Lcom/oplus/camera/m;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/m$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/m$4;-><init>(Lcom/oplus/camera/m;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 388
    invoke-static {}, Lcom/oplus/camera/util/Util;->ay()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/-$$Lambda$m$uPNUy8QN44h0doCdbZxo3BS44-o;

    invoke-direct {v0, p0}, Lcom/oplus/camera/-$$Lambda$m$uPNUy8QN44h0doCdbZxo3BS44-o;-><init>(Lcom/oplus/camera/m;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    iget-object p1, p0, Lcom/oplus/camera/m;->f:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/m;->e:J

    .line 396
    iput v1, p0, Lcom/oplus/camera/m;->b:I

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/m;F)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/oplus/camera/m;->b(F)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/m;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/oplus/camera/m;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/oplus/camera/m;->l:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    .line 432
    new-instance v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;

    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;-><init>(Landroid/content/Context;)V

    .line 433
    iget-object v1, p0, Lcom/oplus/camera/m;->k:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->l()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput v1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureType:I

    .line 434
    iget-object v1, p0, Lcom/oplus/camera/m;->k:Lcom/oplus/camera/ag$a;

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    .line 435
    iget v1, p0, Lcom/oplus/camera/m;->a:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mOrientation:I

    .line 436
    iput p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mZoomType:I

    .line 437
    iget p1, p0, Lcom/oplus/camera/m;->g:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mZoomValue:Ljava/lang/String;

    .line 438
    iget-object p1, p0, Lcom/oplus/camera/m;->l:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result p1

    iput-boolean p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mbVideoRecording:Z

    .line 440
    iget-object p1, p0, Lcom/oplus/camera/m;->l:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 441
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCameraEnterType:Ljava/lang/String;

    goto :goto_0

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/m;->l:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 443
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCameraEnterType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 445
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 448
    :goto_0
    iput v2, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCameraId:I

    const-string p1, "front"

    .line 449
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mRearOrFront:Ljava/lang/String;

    .line 451
    iget-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.oplus.quick.video.support"

    .line 452
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    const-string v1, "common"

    .line 453
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/m;->l:Lcom/oplus/camera/capmode/a;

    .line 454
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ay()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "quickVideo"

    .line 455
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    .line 456
    iput v2, v0, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->mCaptureType:I

    .line 459
    :cond_2
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/ZoomAdjustMsgData;->report()V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/m;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oplus/camera/m;->g()V

    return-void
.end method

.method private c(F)Z
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/m;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/oplus/camera/m;->c:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/m;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/oplus/camera/m;->g:F

    return p0
.end method

.method private e()Z
    .locals 1

    .line 220
    iget p0, p0, Lcom/oplus/camera/m;->c:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/m;)Landroid/os/ConditionVariable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/m;->f:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private f()Z
    .locals 6

    .line 324
    iget v0, p0, Lcom/oplus/camera/m;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/camera/m;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized g()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 337
    :try_start_0
    invoke-direct {p0, v0}, Lcom/oplus/camera/m;->b(Z)F

    move-result v0

    .line 339
    iget v1, p0, Lcom/oplus/camera/m;->g:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 340
    iget v1, p0, Lcom/oplus/camera/m;->g:F

    .line 342
    invoke-direct {p0}, Lcom/oplus/camera/m;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/oplus/camera/m;->h()V

    goto :goto_0

    .line 345
    :cond_0
    iput v0, p0, Lcom/oplus/camera/m;->g:F

    .line 346
    invoke-static {}, Lcom/oplus/camera/util/i;->a()Lcom/oplus/camera/util/i;

    move-result-object v0

    const-string v2, "KEY_DELAY_CHANGE_FRONT_CAMERA_ZOOM"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/util/i;->a(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, v1}, Lcom/oplus/camera/m;->b(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 4

    .line 400
    invoke-static {}, Lcom/oplus/camera/util/i;->a()Lcom/oplus/camera/util/i;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/-$$Lambda$m$59JZ0NHH8sz8S5OulanjXsPPWMA;

    invoke-direct {v1, p0}, Lcom/oplus/camera/-$$Lambda$m$59JZ0NHH8sz8S5OulanjXsPPWMA;-><init>(Lcom/oplus/camera/m;)V

    const-wide/16 v2, 0x3e8

    const-string p0, "KEY_DELAY_CHANGE_FRONT_CAMERA_ZOOM"

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/oplus/camera/util/i;->a(JLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()Z
    .locals 1

    .line 423
    iget v0, p0, Lcom/oplus/camera/m;->a:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oplus/camera/m;->a:I

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic j()V
    .locals 2

    .line 401
    monitor-enter p0

    const/4 v0, 0x1

    .line 402
    :try_start_0
    invoke-direct {p0, v0}, Lcom/oplus/camera/m;->b(Z)F

    move-result v0

    .line 404
    iget v1, p0, Lcom/oplus/camera/m;->g:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 405
    iget v1, p0, Lcom/oplus/camera/m;->g:F

    .line 406
    iput v0, p0, Lcom/oplus/camera/m;->g:F

    .line 407
    invoke-direct {p0, v1}, Lcom/oplus/camera/m;->b(F)V

    .line 409
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic k()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/oplus/camera/m;->k:Lcom/oplus/camera/ag$a;

    iget v1, p0, Lcom/oplus/camera/m;->g:F

    invoke-direct {p0, v1}, Lcom/oplus/camera/m;->c(F)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ag$a;->d(Z)V

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/m;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/m;->e:J

    return-void
.end method

.method public static synthetic lambda$-VNIbSUZb54EkMk5XQOpGZuugvY(Lcom/oplus/camera/m;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/m;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$59JZ0NHH8sz8S5OulanjXsPPWMA(Lcom/oplus/camera/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/m;->j()V

    return-void
.end method

.method public static synthetic lambda$uPNUy8QN44h0doCdbZxo3BS44-o(Lcom/oplus/camera/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/m;->k()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lcom/oplus/camera/m;->b(Z)F

    move-result v0

    .line 76
    iput v0, p0, Lcom/oplus/camera/m;->g:F

    return v0
.end method

.method public a(F)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/oplus/camera/m;->m:F

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 81
    iget v0, p0, Lcom/oplus/camera/m;->a:I

    .line 82
    iput p1, p0, Lcom/oplus/camera/m;->a:I

    .line 84
    iget p1, p0, Lcom/oplus/camera/m;->a:I

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/m;->h:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p1

    new-instance v1, Lcom/oplus/camera/m$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/m$1;-><init>(Lcom/oplus/camera/m;I)V

    const-string p0, "FrontCameraZoomManager"

    invoke-virtual {p1, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILcom/oplus/camera/capmode/a;)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/oplus/camera/m;->d:I

    .line 226
    iput-object p2, p0, Lcom/oplus/camera/m;->l:Lcom/oplus/camera/capmode/a;

    .line 228
    iget p1, p0, Lcom/oplus/camera/m;->d:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/oplus/camera/m;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ag$a;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/oplus/camera/m;->k:Lcom/oplus/camera/ag$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/oplus/camera/m;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/oplus/camera/m;->b()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 181
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/m$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/m$3;-><init>(Lcom/oplus/camera/m;Z)V

    const-string p0, "FrontCameraZoomManager"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public a([Landroid/hardware/camera2/params/Face;)V
    .locals 11

    .line 107
    iget-boolean v0, p0, Lcom/oplus/camera/m;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget v0, p0, Lcom/oplus/camera/m;->c:I

    .line 112
    array-length v1, p1

    iput v1, p0, Lcom/oplus/camera/m;->c:I

    .line 115
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_6

    .line 119
    array-length v1, p1

    const/4 v5, 0x0

    move v6, v3

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v6, v1, :cond_3

    aget-object v9, p1, v6

    .line 120
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    mul-int/2addr v10, v9

    int-to-float v9, v10

    cmpl-float v10, v9, v7

    if-ltz v10, :cond_1

    move v8, v7

    move v7, v9

    goto :goto_1

    :cond_1
    cmpl-float v10, v9, v8

    if-lez v10, :cond_2

    move v8, v9

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    cmpl-float p1, v7, v5

    if-eqz p1, :cond_6

    cmpl-float p1, v8, v5

    if-eqz p1, :cond_6

    .line 131
    iget p1, p0, Lcom/oplus/camera/m;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_4

    div-float p1, v8, v7

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float p1, p1, v1

    if-gez p1, :cond_5

    .line 132
    iget p1, p0, Lcom/oplus/camera/m;->m:F

    div-float/2addr v8, p1

    const p1, 0x3bac7692

    cmpl-float p1, v8, p1

    if-ltz p1, :cond_6

    goto :goto_2

    :cond_4
    div-float p1, v8, v7

    const v1, 0x3daaaaab

    cmpl-float p1, p1, v1

    if-gez p1, :cond_5

    .line 137
    iget p1, p0, Lcom/oplus/camera/m;->m:F

    div-float/2addr v8, p1

    const p1, 0x3bcccccd    # 0.00625f

    cmpl-float p1, v8, p1

    if-ltz p1, :cond_6

    :cond_5
    :goto_2
    move p1, v3

    goto :goto_3

    :cond_6
    move p1, v4

    :goto_3
    if-eqz p1, :cond_7

    .line 146
    iput v4, p0, Lcom/oplus/camera/m;->c:I

    .line 149
    :cond_7
    iget p1, p0, Lcom/oplus/camera/m;->c:I

    if-lt p1, v2, :cond_8

    move p1, v4

    goto :goto_4

    :cond_8
    move p1, v3

    :goto_4
    if-lt v0, v2, :cond_9

    move v3, v4

    :cond_9
    if-eq p1, v3, :cond_b

    .line 152
    iget p1, p0, Lcom/oplus/camera/m;->a:I

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_b

    iget p1, p0, Lcom/oplus/camera/m;->a:I

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_a

    goto :goto_5

    .line 157
    :cond_a
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p1

    new-instance v1, Lcom/oplus/camera/m$2;

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/m$2;-><init>(Lcom/oplus/camera/m;I)V

    const-string p0, "FrontCameraZoomManager"

    invoke-virtual {p1, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/oplus/camera/m;->h:Z

    .line 211
    iput v0, p0, Lcom/oplus/camera/m;->c:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 464
    iput p1, p0, Lcom/oplus/camera/m;->a:I

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput v0, p0, Lcom/oplus/camera/m;->c:I

    return-void
.end method

.method public d()F
    .locals 0

    .line 238
    iget p0, p0, Lcom/oplus/camera/m;->g:F

    return p0
.end method
