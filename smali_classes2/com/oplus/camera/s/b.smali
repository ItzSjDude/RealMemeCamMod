.class public Lcom/oplus/camera/s/b;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "StarVideoMode.java"

# interfaces
.implements Lcom/oplus/camera/s/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/s/b$a;
    }
.end annotation


# instance fields
.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;

.field private i:Lcom/oplus/camera/s/c;

.field private j:Lcom/oplus/camera/s/a;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Lcom/oplus/camera/e/c;

.field private t:Lcom/oplus/camera/aps/util/CameraApsDecision;

.field private u:Lcom/oplus/camera/e/d$a;

.field private v:Landroid/animation/ValueAnimator;

.field private w:Lcom/oplus/camera/s/b$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/oplus/camera/s/b;->g:Landroid/os/HandlerThread;

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    .line 71
    iput-object p1, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    const/4 p2, 0x0

    .line 73
    iput p2, p0, Lcom/oplus/camera/s/b;->k:I

    .line 74
    iput p2, p0, Lcom/oplus/camera/s/b;->l:I

    .line 75
    iput p2, p0, Lcom/oplus/camera/s/b;->m:I

    const/4 p3, 0x3

    .line 76
    iput p3, p0, Lcom/oplus/camera/s/b;->n:I

    .line 77
    iput p2, p0, Lcom/oplus/camera/s/b;->o:I

    const-wide/16 p3, 0x0

    .line 78
    iput-wide p3, p0, Lcom/oplus/camera/s/b;->p:J

    .line 79
    iput-boolean p2, p0, Lcom/oplus/camera/s/b;->q:Z

    const/4 p2, 0x1

    .line 80
    iput-boolean p2, p0, Lcom/oplus/camera/s/b;->r:Z

    .line 81
    iput-object p1, p0, Lcom/oplus/camera/s/b;->s:Lcom/oplus/camera/e/c;

    .line 82
    iput-object p1, p0, Lcom/oplus/camera/s/b;->t:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 83
    iput-object p1, p0, Lcom/oplus/camera/s/b;->u:Lcom/oplus/camera/e/d$a;

    .line 85
    iput-object p1, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    .line 86
    iput-object p1, p0, Lcom/oplus/camera/s/b;->w:Lcom/oplus/camera/s/b$a;

    .line 91
    new-instance p1, Lcom/oplus/camera/s/a;

    iget-object p2, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    .line 92
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object p4, p0, Lcom/oplus/camera/s/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-boolean v0, p0, Lcom/oplus/camera/s/b;->mbDisplayOnLock:Z

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/oplus/camera/s/a;-><init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Z)V

    iput-object p1, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    return-void
.end method

.method private a()I
    .locals 0

    .line 205
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCaptureNumber()I

    move-result p0

    return p0
.end method

.method private a(I)V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNightMode, nightMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->o(I)V

    .line 514
    iget-object p0, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 707
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->o()V

    const/16 v0, 0x14

    .line 710
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 711
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 713
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    .line 712
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 716
    iget-object v4, p0, Lcom/oplus/camera/s/b;->w:Lcom/oplus/camera/s/b$a;

    sub-float v5, v2, v3

    invoke-virtual {v4, v2, v5, v3}, Lcom/oplus/camera/s/b$a;->a(FFF)V

    .line 717
    new-instance v3, Lcom/oplus/camera/s/-$$Lambda$b$nvMrzFli23kqCKZu5cLj4ndSgOI;

    invoke-direct {v3, p0}, Lcom/oplus/camera/s/-$$Lambda$b$nvMrzFli23kqCKZu5cLj4ndSgOI;-><init>(Lcom/oplus/camera/s/b;)V

    invoke-virtual {p1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 720
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setScreenBrightness, brightness: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currBrightness: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", winParams.screenBrightness: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StarVideoMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/s/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/s/b;Landroid/app/Activity;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oplus/camera/s/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/s/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->m()V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 209
    iget v0, p0, Lcom/oplus/camera/s/b;->l:I

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->a()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c()V
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBurstCaptureMessage, mNightScene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/s/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget v0, p0, Lcom/oplus/camera/s/b;->o:I

    if-lez v0, :cond_0

    .line 216
    invoke-direct {p0, v0}, Lcom/oplus/camera/s/b;->a(I)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/s/b;->s:Lcom/oplus/camera/e/c;

    if-eqz v0, :cond_1

    .line 220
    iget v1, p0, Lcom/oplus/camera/s/b;->k:I

    iget-object v2, p0, Lcom/oplus/camera/s/b;->u:Lcom/oplus/camera/e/d$a;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oplus/camera/s/b;->burstCapture(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/s/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->n()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/s/b;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, v1}, Lcom/oplus/camera/s/a;->a(Lcom/oplus/camera/s/a$a;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 326
    iget-object v0, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 327
    iput-object v1, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    .line 328
    iput-object v1, p0, Lcom/oplus/camera/s/b;->w:Lcom/oplus/camera/s/b$a;

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/s/b;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 333
    iput-object v1, p0, Lcom/oplus/camera/s/b;->g:Landroid/os/HandlerThread;

    .line 334
    iput-object v1, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    if-eqz v0, :cond_3

    .line 338
    invoke-virtual {v0}, Lcom/oplus/camera/s/c;->c()V

    .line 339
    iput-object v1, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    .line 342
    :cond_3
    iput-object v1, p0, Lcom/oplus/camera/s/b;->s:Lcom/oplus/camera/e/c;

    .line 343
    iput-object v1, p0, Lcom/oplus/camera/s/b;->t:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 344
    iput-object v1, p0, Lcom/oplus/camera/s/b;->u:Lcom/oplus/camera/e/d$a;

    return-void
.end method

.method private e()J
    .locals 5

    .line 518
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_star_video_record_total_time_key"

    const v2, 0x5265c0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 520
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oplus/camera/s/b;->p:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    sub-long/2addr v3, v1

    return-wide v3
.end method

.method static synthetic e(Lcom/oplus/camera/s/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->l()V

    return-void
.end method

.method private f()Z
    .locals 1

    .line 526
    iget p0, p0, Lcom/oplus/camera/s/b;->n:I

    const/4 v0, 0x4

    if-eq v0, p0, :cond_1

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private g()V
    .locals 2

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trySendRepeatBurstCaptureMessage, mbLastCaptureRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/s/b;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-boolean v0, p0, Lcom/oplus/camera/s/b;->mbPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/s/b;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 533
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    const-string v0, "StarVideoMode"

    const-string v1, "showLowBatteryHint"

    .line 540
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-boolean v0, p0, Lcom/oplus/camera/s/b;->mbPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/s/-$$Lambda$b$Xh3agHb2Sjf4kafQpkcof-fEllA;

    invoke-direct {v1, p0}, Lcom/oplus/camera/s/-$$Lambda$b$Xh3agHb2Sjf4kafQpkcof-fEllA;-><init>(Lcom/oplus/camera/s/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private i()Z
    .locals 5

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording, mRecordingStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/s/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-boolean v0, Lcom/oplus/camera/Camera;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->h()V

    return v1

    .line 561
    :cond_0
    iget v0, p0, Lcom/oplus/camera/s/b;->n:I

    const/4 v2, 0x3

    if-ne v2, v0, :cond_2

    const/4 v0, 0x2

    .line 562
    iput v0, p0, Lcom/oplus/camera/s/b;->n:I

    .line 563
    iput-boolean v1, p0, Lcom/oplus/camera/s/b;->q:Z

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oplus/camera/s/b;->p:J

    .line 566
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 567
    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 570
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/s/-$$Lambda$b$w2qMR0wF2lRpy_tOeZzvdkKELCs;

    invoke-direct {v1, p0}, Lcom/oplus/camera/s/-$$Lambda$b$w2qMR0wF2lRpy_tOeZzvdkKELCs;-><init>(Lcom/oplus/camera/s/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 575
    iget-object p0, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return v4

    :cond_2
    return v1
.end method

.method private j()V
    .locals 4

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRecording, mRecordingStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/s/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 587
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->h()V

    .line 592
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 593
    invoke-direct {p0, v0}, Lcom/oplus/camera/s/b;->a(I)V

    .line 594
    iget-object v1, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 595
    iget-object v1, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->W()V

    const/4 v1, 0x4

    .line 596
    iput v1, p0, Lcom/oplus/camera/s/b;->n:I

    .line 597
    iput v0, p0, Lcom/oplus/camera/s/b;->m:I

    .line 599
    iget-object p0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 600
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private k()I
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    if-eqz p0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/oplus/camera/s/a;->d()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private l()V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/s/-$$Lambda$b$SNHXqi_txSIfZTijn-dGCXqn_FM;

    invoke-direct {v1, p0}, Lcom/oplus/camera/s/-$$Lambda$b$SNHXqi_txSIfZTijn-dGCXqn_FM;-><init>(Lcom/oplus/camera/s/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 626
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const/4 v0, 0x5

    const-wide/16 v1, 0x3e8

    .line 627
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public static synthetic lambda$SNHXqi_txSIfZTijn-dGCXqn_FM(Lcom/oplus/camera/s/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->s()V

    return-void
.end method

.method public static synthetic lambda$Xh3agHb2Sjf4kafQpkcof-fEllA(Lcom/oplus/camera/s/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->u()V

    return-void
.end method

.method public static synthetic lambda$cT-GDOLTyx2QYL1oE3VQ4oYivYc(Lcom/oplus/camera/s/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->q()V

    return-void
.end method

.method public static synthetic lambda$nvMrzFli23kqCKZu5cLj4ndSgOI(Lcom/oplus/camera/s/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->p()V

    return-void
.end method

.method public static synthetic lambda$tipzS2N5gYMnDZaKP9KuzGXeOXM(Lcom/oplus/camera/s/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->r()V

    return-void
.end method

.method public static synthetic lambda$w2qMR0wF2lRpy_tOeZzvdkKELCs(Lcom/oplus/camera/s/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->t()V

    return-void
.end method

.method private m()V
    .locals 5

    const-string v0, "StarVideoMode"

    const-string v1, "onStartRecordingMsg, E"

    .line 632
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-boolean v1, p0, Lcom/oplus/camera/s/b;->mbPaused:Z

    if-nez v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/s/a;->a(Lcom/oplus/camera/s/a$a;)V

    .line 636
    iget-object v1, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    invoke-virtual {v1}, Lcom/oplus/camera/s/a;->a()V

    .line 637
    iget-object v1, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    invoke-virtual {v1}, Lcom/oplus/camera/s/c;->b()V

    .line 639
    iget-object v1, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object v1, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 641
    iget-object v1, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    iget-object v1, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v1, 0x1

    .line 644
    iput v1, p0, Lcom/oplus/camera/s/b;->n:I

    :cond_0
    const-string p0, "onStartRecordingMsg, X"

    .line 647
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 13

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopRecordingMsg, E, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/s/b;->mbPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "StarVideoMode"

    invoke-static {v10, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const/4 v11, 0x5

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    const/4 v1, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 661
    invoke-virtual {v0, v2}, Lcom/oplus/camera/s/a;->a(Lcom/oplus/camera/s/a$a;)V

    .line 662
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->k()I

    move-result v0

    if-lt v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v12

    .line 663
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/s/a;->a(Z)V

    goto :goto_1

    :cond_2
    move v0, v12

    .line 666
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    .line 667
    iget-object v2, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/oplus/camera/s/-$$Lambda$b$tipzS2N5gYMnDZaKP9KuzGXeOXM;

    invoke-direct {v3, p0}, Lcom/oplus/camera/s/-$$Lambda$b$tipzS2N5gYMnDZaKP9KuzGXeOXM;-><init>(Lcom/oplus/camera/s/b;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 670
    :cond_3
    iget-boolean v2, p0, Lcom/oplus/camera/s/b;->mbPaused:Z

    if-nez v2, :cond_5

    .line 671
    iget-object v2, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/oplus/camera/s/-$$Lambda$b$cT-GDOLTyx2QYL1oE3VQ4oYivYc;

    invoke-direct {v3, p0}, Lcom/oplus/camera/s/-$$Lambda$b$cT-GDOLTyx2QYL1oE3VQ4oYivYc;-><init>(Lcom/oplus/camera/s/b;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 678
    iget-object v2, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    if-eqz v2, :cond_4

    .line 679
    invoke-virtual {p0}, Lcom/oplus/camera/s/b;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oplus/camera/s/b;->isPanelMode()Z

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/oplus/camera/s/c;->a(ZLcom/oplus/camera/ui/control/b;ZZ)V

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 682
    invoke-virtual/range {v0 .. v9}, Lcom/oplus/camera/s/b;->pictureTakenCallback([BIILjava/lang/String;ZZJI)V

    .line 685
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_6

    .line 686
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v11}, Lcom/oplus/camera/capmode/a;->c(I)V

    :cond_6
    const/4 v0, 0x3

    .line 689
    iput v0, p0, Lcom/oplus/camera/s/b;->n:I

    .line 690
    iput v12, p0, Lcom/oplus/camera/s/b;->l:I

    const-string v0, "onStopRecordingMsg, X"

    .line 692
    invoke-static {v10, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Lcom/oplus/camera/s/b$a;

    iget-object v1, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 698
    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->V()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/camera/s/b$a;-><init>(Lcom/oplus/camera/s/b;Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oplus/camera/s/b;->w:Lcom/oplus/camera/s/b$a;

    const/4 v0, 0x2

    .line 699
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    .line 700
    iget-object v0, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 701
    iget-object v0, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oplus/camera/s/b;->w:Lcom/oplus/camera/s/b$a;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic p()V
    .locals 0

    .line 717
    iget-object p0, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic q()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aJ()V

    .line 674
    iget-object p0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->U()V

    :cond_0
    return-void
.end method

.method private synthetic r()V
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/oplus/camera/s/b;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method private synthetic s()V
    .locals 6

    .line 616
    iget-object v0, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    if-eqz v0, :cond_1

    .line 617
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 618
    iget-object p0, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/s/c;->a(Z)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->k()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/camera/s/b;->p:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/s/c;->a(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic t()V
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aI()V

    return-void
.end method

.method private synthetic u()V
    .locals 7

    .line 544
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lcom/oplus/camera/s/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1003f1

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected burstCapture(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
    .locals 6

    .line 226
    iget v0, p0, Lcom/oplus/camera/s/b;->l:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/s/b;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iput-object v2, p0, Lcom/oplus/camera/s/b;->t:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 229
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iput v1, p0, Lcom/oplus/camera/s/b;->m:I

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 229
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 234
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x4268

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oplus/camera/s/b;->q:Z

    .line 235
    iget-boolean v0, p0, Lcom/oplus/camera/s/b;->q:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/oplus/camera/s/b;->l:I

    add-int/2addr v0, v2

    :goto_2
    iput v0, p2, Lcom/oplus/camera/e/c;->af:I

    .line 236
    iput-boolean v2, p2, Lcom/oplus/camera/e/c;->ae:Z

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/BaseMode;->burstCapture(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    .line 240
    iput p1, p0, Lcom/oplus/camera/s/b;->k:I

    .line 241
    iget-object p1, p0, Lcom/oplus/camera/s/b;->t:Lcom/oplus/camera/aps/util/CameraApsDecision;

    invoke-super {p0, p1, v1}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/s/b;->s:Lcom/oplus/camera/e/c;

    .line 242
    iput-object p3, p0, Lcom/oplus/camera/s/b;->u:Lcom/oplus/camera/e/d$a;

    .line 243
    iput v1, p0, Lcom/oplus/camera/s/b;->mCaptureStartedCallbackNum:I

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "burstCapture, mReceivedImageNum: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/camera/s/b;->l:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mbLastCaptureRequest: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/s/b;->q:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StarVideoMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public consumeBackEventOnPictureTaken()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "starVideo"

    return-object p0
.end method

.method public getDefaultCaptureNumber()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x80a8

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/oplus/camera/s/a;->b()Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 425
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_4
    const-string v0, "pref_camera_pi_ai_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_7
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "pref_continuous_focus_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "pref_support_raw_post_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 392
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p0, "com.oplus.night.starry.zoom.support"

    .line 386
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74ade66d -> :sswitch_9
        -0x6ce3461c -> :sswitch_8
        -0x64edfd1c -> :sswitch_7
        -0x5efa20f1 -> :sswitch_6
        -0x289e651d -> :sswitch_5
        0x1073c1f2 -> :sswitch_4
        0x140b168f -> :sswitch_3
        0x5f579904 -> :sswitch_2
        0x65b53143 -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_setting_key"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 1

    .line 412
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->p(Z)V

    .line 414
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->y(Z)V

    return-object p0
.end method

.method protected interruptCaptureFailedEvent()Z
    .locals 2

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interruptCaptureFailedEvent, mFailedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/s/b;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget v0, p0, Lcom/oplus/camera/s/b;->m:I

    const/16 v1, 0x14

    if-ge v1, v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    goto :goto_0

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    iget v0, p0, Lcom/oplus/camera/s/b;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/s/b;->m:I

    .line 441
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->g()V

    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedShowMenuOnTimeSnapShotEnd()Z
    .locals 0

    .line 821
    sget-boolean p0, Lcom/oplus/camera/Camera;->l:Z

    return p0
.end method

.method protected isStarVideoOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isStarryMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_capture"

    .line 767
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 771
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 0

    return-void
.end method

.method public onAfterSnapping()Z
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 270
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onAfterSnapping()Z

    move-result p0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->as()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/s/b;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->m()F

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/e/d;->a(FZ)V

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    invoke-virtual {v0}, Lcom/oplus/camera/s/c;->a()V

    .line 179
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed, mRecordingStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/s/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget v0, p0, Lcom/oplus/camera/s/b;->n:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    const/4 p0, 0x1

    return p0

    .line 316
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePreview()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    iget p0, p0, Lcom/oplus/camera/s/b;->mCameraId:I

    invoke-virtual {v0, p0}, Lcom/oplus/camera/s/a;->a(I)V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 0

    .line 251
    invoke-virtual {p0}, Lcom/oplus/camera/s/b;->getNightStateDecision()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/s/b;->o:I

    .line 253
    iget p1, p0, Lcom/oplus/camera/s/b;->o:I

    if-lez p1, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcom/oplus/camera/s/b;->a(I)V

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->i()Z

    move-result p0

    return p0
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 5

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCompleted, requestTag.mFrameFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/oplus/camera/e/c;->af:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    iget v2, p2, Lcom/oplus/camera/e/c;->af:I

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->f(I)V

    :cond_0
    const-string v0, "com.oplus.star.video.verify.frame"

    .line 478
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v2, Lcom/oplus/camera/e/b;->bE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 481
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p2, Lcom/oplus/camera/e/c;->af:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/oplus/camera/s/b;->r:Z

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureCompleted, resultFrame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requestFrame: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/oplus/camera/e/c;->af:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "onCaptureCompleted, do not have CameraMetadataKey.KEY_STAR_MODE_FRAME_FLAG"

    .line 485
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureFailed, mFailedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/s/b;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget v0, p0, Lcom/oplus/camera/s/b;->m:I

    const/16 v1, 0x14

    if-ge v1, v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    .line 499
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 501
    iget p1, p0, Lcom/oplus/camera/s/b;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/camera/s/b;->m:I

    .line 502
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 1

    const-string p1, "StarVideoMode"

    const-string v0, "onDeInitCameraMode"

    .line 349
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/oplus/camera/s/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/oplus/camera/s/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f10031d

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 355
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p1, v0}, Lcom/oplus/camera/s/c;->c(Z)V

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->d()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "StarVideoMode"

    const-string v1, "onDestroy"

    .line 364
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Object;II)V
    .locals 1

    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError, what: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "StarVideoMode"

    invoke-static {p3, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x44c

    if-eq p2, p1, :cond_0

    const/16 p1, 0x44d

    if-ne p2, p1, :cond_1

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/s/b;->isVideoRecordStopped()Z

    move-result p1

    if-nez p1, :cond_1

    .line 749
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    :cond_1
    return-void
.end method

.method public onException(I)V
    .locals 2

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onException, exceptionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/oplus/camera/s/b;->isVideoRecordStopped()Z

    move-result p1

    if-nez p1, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    :cond_0
    return-void
.end method

.method public onImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 4

    const-string v0, "StarVideoMode"

    if-nez p1, :cond_0

    const-string p0, "onImageReceived, image is null"

    .line 452
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 457
    :cond_0
    iget v1, p0, Lcom/oplus/camera/s/b;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/s/b;->l:I

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageReceived, mReceivedImageNum: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/s/b;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbShouldEncode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/s/b;->r:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/s/b;->r:Z

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/oplus/camera/s/b;->j:Lcom/oplus/camera/s/a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/s/a;->a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    .line 465
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->g()V

    return v2
.end method

.method public onInfo(Ljava/lang/Object;II)V
    .locals 0

    const-string p1, "StarVideoMode"

    const-string p3, "onInfo"

    .line 727
    invoke-static {p1, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x320

    if-ne p2, p1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/oplus/camera/s/b;->isVideoRecordStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 731
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x321

    if-eq p2, p1, :cond_1

    const/16 p1, 0x322

    if-ne p2, p1, :cond_2

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/s/b;->isVideoRecordStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 736
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onInitCameraMode()V
    .locals 4

    const-string v0, "StarVideoMode"

    const-string v1, "onInitCameraMode"

    .line 113
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/oplus/camera/s/c;

    iget-object v1, p0, Lcom/oplus/camera/s/b;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/s/b;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/s/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/s/c;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object v0, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    .line 117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StarVideoHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/s/b;->g:Landroid/os/HandlerThread;

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/s/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance v0, Lcom/oplus/camera/s/b$1;

    iget-object v1, p0, Lcom/oplus/camera/s/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/s/b$1;-><init>(Lcom/oplus/camera/s/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "StarVideoMode"

    const-string v1, "onPause"

    .line 275
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/s/c;->c(Z)V

    .line 279
    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object v0, p0, Lcom/oplus/camera/s/b;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->U()V

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/s/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10031d

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_0
    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/oplus/camera/s/b;->u:Lcom/oplus/camera/e/d$a;

    .line 292
    iput-object v0, p0, Lcom/oplus/camera/s/b;->t:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 293
    iput-object v0, p0, Lcom/oplus/camera/s/b;->s:Lcom/oplus/camera/e/c;

    return-void
.end method

.method public onPictureCallback([BIIIZI)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string p0, "StarVideoMode"

    const-string v0, "OnStop"

    .line 298
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 2

    .line 149
    iget v0, p0, Lcom/oplus/camera/s/b;->n:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setLowBatteryState(Z)V
    .locals 0

    .line 189
    iget-boolean p1, p0, Lcom/oplus/camera/s/b;->mbPaused:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/oplus/camera/Camera;->l:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/s/b;->f()Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->h()V

    .line 191
    invoke-direct {p0}, Lcom/oplus/camera/s/b;->j()V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setOrientation(I)V

    .line 199
    iget-object p0, p0, Lcom/oplus/camera/s/b;->i:Lcom/oplus/camera/s/c;

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/oplus/camera/s/c;->a(I)V

    :cond_0
    return-void
.end method

.method protected updateCaptureParam(Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 262
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateCaptureParam(Lcom/oplus/camera/e/c;)V

    .line 263
    iget-object p0, p0, Lcom/oplus/camera/s/b;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->e(Z)V

    return-void
.end method
