.class public Lcom/oplus/camera/capmode/r;
.super Lcom/oplus/camera/capmode/d;
.source "NightMode.java"


# instance fields
.field private g:J

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/oplus/camera/professional/n;

.field private u:I

.field private v:I

.field private final w:Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 63
    iput-wide p1, p0, Lcom/oplus/camera/capmode/r;->g:J

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/oplus/camera/capmode/r;->h:I

    .line 65
    iput p1, p0, Lcom/oplus/camera/capmode/r;->i:I

    .line 66
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/r;->j:Z

    .line 67
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/r;->k:Z

    .line 68
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/r;->l:Z

    .line 69
    iput p1, p0, Lcom/oplus/camera/capmode/r;->m:I

    .line 70
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/r;->n:Z

    .line 71
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/r;->o:Z

    .line 72
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/r;->p:Z

    .line 73
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/r;->q:Z

    .line 74
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/r;->r:Z

    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/r;->s:Z

    const/4 p2, 0x0

    .line 77
    iput-object p2, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    .line 78
    iput p1, p0, Lcom/oplus/camera/capmode/r;->u:I

    const/16 p1, 0xbb8

    .line 79
    iput p1, p0, Lcom/oplus/camera/capmode/r;->v:I

    .line 81
    new-instance p1, Lcom/oplus/camera/capmode/r$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/capmode/r$1;-><init>(Lcom/oplus/camera/capmode/r;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/r;->w:Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;

    const-string p1, "com.oplus.night.tripod.ram.threshold"

    .line 95
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/capmode/r;->u:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/r;)I
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getDefaultAFMode()I

    move-result p0

    return p0
.end method

.method private a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 459
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/r;->b(Landroid/hardware/camera2/CaptureResult;)J

    move-result-wide v0

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEstimatedCaptureTime, estimatedCountDownTime: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NightMode"

    invoke-static {v2, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 463
    iput-wide v2, p0, Lcom/oplus/camera/capmode/r;->mNightCaptureTotalTime:J

    return-void

    :cond_0
    const-wide/32 v2, 0xf4240

    .line 468
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/capmode/r;->mNightCaptureTotalTime:J

    .line 469
    iget-wide v0, p0, Lcom/oplus/camera/capmode/r;->mNightCaptureTotalTime:J

    long-to-float p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/capmode/r;->mNightCaptureTotalTime:J

    return-void
.end method

.method private a(Z)V
    .locals 8

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10032a

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 218
    iget-object v2, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_0

    const p0, 0x7f10032c

    goto :goto_0

    :cond_0
    const p0, 0x7f10032b

    :goto_0
    move v3, p0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 1279
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 1284
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "off"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 1285
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private b(Landroid/hardware/camera2/CaptureResult;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 477
    :cond_0
    sget-object p0, Lcom/oplus/camera/e/b;->bh:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p0}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    .line 483
    :cond_1
    check-cast p0, [J

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method private b()Landroid/util/Size;
    .locals 5

    const-string v0, "com.oplus.back.night.low.memory.raw.picturesize"

    .line 178
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->g(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide v3, 0x100000000L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    return-object v0

    .line 186
    :cond_0
    invoke-static {}, Lcom/oplus/camera/e/a;->h()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/capmode/r;->mCameraId:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/r;->getProperCameraId(I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string p0, "com.oplus.back.night.raw.picturesize"

    .line 187
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {}, Lcom/oplus/camera/e/a;->i()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/capmode/r;->mCameraId:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/r;->getProperCameraId(I)I

    move-result p0

    if-ne v0, p0, :cond_2

    const-string p0, "com.oplus.front.night.raw.picturesize"

    .line 189
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_4

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/util/Size;

    :cond_4
    :goto_1
    return-object v2
.end method

.method private b(Z)V
    .locals 2

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShakeDetectEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1027
    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->w:Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;

    invoke-virtual {p1, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->registerOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->start()V

    goto :goto_0

    .line 1029
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->w:Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;

    invoke-virtual {p1, v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->unregisterOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensetime/utils/ShakeDetectorUtils;->stop()V

    .line 1030
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p1, 0x7f10032a

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 224
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100324

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    return-void
.end method

.method private d()V
    .locals 7

    .line 228
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f10032f

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->q:Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 236
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbPaused:Z

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10032f

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->q:Z

    :cond_0
    return-void
.end method

.method private f()V
    .locals 8

    .line 243
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100289

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 244
    iget-object v2, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100289

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 249
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100289

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->j:Z

    .line 254
    iput v0, p0, Lcom/oplus/camera/capmode/r;->i:I

    .line 255
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->q:Z

    return-void
.end method

.method private i()V
    .locals 4

    .line 347
    iget-wide v0, p0, Lcom/oplus/camera/capmode/r;->mNightCaptureTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    iget-wide v1, p0, Lcom/oplus/camera/capmode/r;->mNightCaptureTotalTime:J

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/p;->a(J)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->updateNightCaptureShutter()V

    return-void
.end method

.method private j()Z
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    .line 626
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    const v1, 0x7f10028a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string v1, "pref_night_starburst_mode"

    .line 625
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 628
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private k()V
    .locals 2

    .line 1035
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    const-string v0, "pref_night_pro_mode_key"

    .line 1050
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1054
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_1

    .line 1055
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->q()V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 2

    const-string v0, "pref_night_pro_mode_key"

    .line 1060
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getZoomValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->a(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1065
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1066
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_2

    .line 1067
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->p()V

    :cond_2
    return-void
.end method

.method private n()V
    .locals 3

    const-string v0, "pref_night_tripod_mode_key"

    .line 1072
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "off"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1084
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 1233
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->m(ZZ)V

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isFilterEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1239
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->onFilterItemChange(I)V

    :cond_1
    return-void
.end method

.method private p()V
    .locals 7

    .line 1244
    new-instance v6, Lcom/oplus/camera/professional/n;

    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getCameraMode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/professional/n;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Ljava/lang/String;Lcom/oplus/camera/e/d;)V

    iput-object v6, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    .line 1245
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    new-instance v1, Lcom/oplus/camera/capmode/r$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/r$2;-><init>(Lcom/oplus/camera/capmode/r;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/n;->a(Lcom/oplus/camera/professional/n$a;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 4

    .line 1292
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "pref_night_pro_mode_key"

    .line 1296
    invoke-direct {p0, v3}, Lcom/oplus/camera/capmode/r;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 2

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeModeAllView animationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->changeModeAllViewWhenAnimation(IZ)V

    .line 1428
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_0

    .line 1429
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/n;->a(IZ)V

    :cond_0
    return-void
.end method

.method public checkIfLockAutoExposure()V
    .locals 3

    .line 898
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbResetAeLockAfterCaptured:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 902
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 903
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/r;->mbResetAeLockAfterCaptured:Z

    :cond_0
    return-void
.end method

.method public displayScreenHintIconInSwitchOn()V
    .locals 4

    .line 593
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    .line 594
    invoke-static {}, Lcom/oplus/camera/util/Util;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_torch_mode_key"

    .line 595
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->displayScreenHintIconInSwitchOn()V

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->is10bitsHeicEncodeEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbStopSteadyTips:Z

    if-eqz v0, :cond_1

    .line 599
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100070

    const v1, 0x7f0805e9

    const v2, 0x7f0604ff

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "night"

    return-object p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 0

    .line 919
    sget-object p0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_NIGHT_CUSTOM_BEAUTY:[Ljava/lang/String;

    return-object p0
.end method

.method public getEffectMenuKeyByMode()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_night_filter_menu"

    return-object p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_night_facebeauty_level_menu"

    return-object p0
.end method

.method protected getFaceBeautyModeIndex()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_night_filter_index"

    return-object p0
.end method

.method protected getFilterNameIdList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_night_filter_menu"

    .line 1171
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/i;->f:Ljava/util/List;

    return-object p0

    .line 1175
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getFilterNameIdList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getFilterTypeList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_night_filter_menu"

    .line 1180
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->k:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/i;->e:Ljava/util/List;

    return-object p0

    .line 1184
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    .line 828
    invoke-static {}, Lcom/oplus/camera/util/Util;->au()Z

    move-result p0

    return p0
.end method

.method protected getMakeupKeys()[Ljava/lang/String;
    .locals 1

    .line 924
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->f:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getCurrentKeys(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMakeupTypeKey()Ljava/lang/String;
    .locals 2

    .line 929
    iget v0, p0, Lcom/oplus/camera/capmode/r;->mCameraEntryType:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    const-string v1, "pref_night_makeup_type"

    if-eqz v0, :cond_0

    .line 930
    iget p0, p0, Lcom/oplus/camera/capmode/r;->mCameraEntryType:I

    invoke-static {v1, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x8019

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 16

    move-object/from16 v0, p0

    .line 121
    iget-object v1, v0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, v0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1002be

    .line 122
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_photo_ratio_key"

    .line 121
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/r;->needDeleteTheSizeByRatio(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "standard"

    if-eqz v2, :cond_0

    move-object v1, v3

    .line 128
    :cond_0
    invoke-static {}, Lcom/oplus/camera/e/a;->h()I

    move-result v2

    iget v4, v0, Lcom/oplus/camera/capmode/r;->mCameraId:I

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/r;->getProperCameraId(I)I

    move-result v4

    const-wide v5, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-string v9, "full"

    const-string v10, "16_9"

    const-string v11, "square"

    const-string v12, "standard_high"

    if-ne v2, v4, :cond_5

    const/16 v2, 0x100

    move-object/from16 v4, p1

    .line 129
    invoke-virtual {v4, v2}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v2

    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/r;->b()Landroid/util/Size;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 133
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPictureSize, nightCropSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", sizeList: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "NightMode"

    invoke-static {v14, v13}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 137
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide v0

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 142
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 141
    invoke-static {v2, v0, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;DII)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 143
    :cond_2
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 145
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 144
    invoke-static {v2, v7, v8, v0, v1}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;DII)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 146
    :cond_3
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 147
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 148
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 147
    invoke-static {v2, v5, v6, v0, v1}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;DII)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 138
    :cond_4
    :goto_0
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 139
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    .line 138
    invoke-static {v2, v3, v4, v0, v1}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;DII)Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_5
    move-object/from16 v4, p1

    .line 151
    invoke-static {}, Lcom/oplus/camera/e/a;->i()I

    move-result v2

    iget v13, v0, Lcom/oplus/camera/capmode/r;->mCameraId:I

    invoke-virtual {v0, v13}, Lcom/oplus/camera/capmode/r;->getProperCameraId(I)I

    move-result v13

    if-ne v2, v13, :cond_c

    const-string v2, "com.oplus.front.night.yuv.picturesize"

    .line 152
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    .line 155
    invoke-super/range {p0 .. p1}, Lcom/oplus/camera/capmode/d;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 158
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x4

    const/4 v13, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v7

    goto :goto_2

    :sswitch_2
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v15

    goto :goto_2

    :sswitch_3
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v13

    goto :goto_2

    :sswitch_4
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v8

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_b

    if-eq v1, v8, :cond_b

    if-eq v1, v7, :cond_a

    if-eq v1, v13, :cond_9

    if-eq v1, v15, :cond_8

    goto :goto_3

    .line 170
    :cond_8
    invoke-static {v2, v5, v6}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_9
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 167
    invoke-static {v2, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 164
    :cond_a
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_b
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 161
    invoke-static {v2, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 174
    :cond_c
    :goto_3
    invoke-super/range {p0 .. p1}, Lcom/oplus/camera/capmode/d;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x76cada1c -> :sswitch_4
        -0x3553a6e3 -> :sswitch_3
        0x171c9f -> :sswitch_2
        0x30228f -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch
.end method

.method public getRearEnable()Z
    .locals 0

    const-string p0, "com.oplus.feature.suppernight.support"

    .line 823
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 2

    .line 411
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 413
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result p0

    if-ne v1, p0, :cond_0

    const/16 p0, 0x20

    .line 414
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 5

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "pref_camera_flashmode_key"

    const-string v2, "pref_night_tripod_mode_key"

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_support_night_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_support_no_face_forbid_beauty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_expand_popbar_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "func_aps_bracketmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_headline_control_by_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "key_suppport_multi_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "func_super_text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_auto_night_scence_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "key_high_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "key_support_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_heif_support_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "pref_camera_gradienter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "func_mode_panel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "key_support_share_edit_thumb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "pref_night_pro_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "pref_camera_pi_ai_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "pref_camera_pi_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "pref_qr_code_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "pref_fuji_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "pref_face_rectify_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "key_beauty3d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "pref_night_starburst_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "key_support_grand_tour_fitlers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "key_bubble_type_zoom_ultra_wide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "key_night_tripod_zoom_hide_ultra_wide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "key_support_insensor_zoom_20x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "key_need_intercept_touch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "pref_super_clear_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "pref_camera_vivid_effect_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "pref_support_post_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "support_focus_out_of_range"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_2b
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_1

    :sswitch_2c
    const-string v0, "key_show_pull_down_tip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_2d
    const-string v0, "pref_night_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_1

    :sswitch_2e
    const-string v0, "key_support_show_dim_hint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto :goto_1

    :sswitch_2f
    const-string v0, "pref_support_raw_post_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_30
    const-string v0, "key_support_mode_change_vibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_31
    const-string v0, "pref_tele_small_preview_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_32
    const-string v0, "func_ais_snapshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    .line 786
    :pswitch_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/p;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    return v3

    :pswitch_1
    const-string p1, "com.oplus.support.night.gesture_shutter"

    .line 782
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-nez p0, :cond_3

    .line 783
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move v3, v4

    :cond_3
    :goto_3
    return v3

    :pswitch_2
    const-string p1, "com.oplus.10bits.heic.encode.support"

    .line 777
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 778
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 779
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    return v3

    .line 770
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    return v4

    .line 763
    :pswitch_4
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-nez p0, :cond_5

    return v4

    .line 767
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->f()Z

    move-result p0

    return p0

    .line 760
    :pswitch_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    .line 757
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isNightProModeSupport()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    return v3

    .line 751
    :pswitch_7
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-eqz p1, :cond_7

    const-string p1, "com.oplus.feature.custom.makeup.front.support"

    .line 752
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 754
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    move v3, v4

    :goto_6
    return v3

    :pswitch_8
    const-string p1, "com.oplus.night.tripod.zoom.hide.ultra.wide.support"

    .line 746
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 747
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 748
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_7

    :cond_8
    move v3, v4

    :goto_7
    return v3

    :pswitch_9
    const-string p1, "pref_camera_torch_mode_key"

    .line 742
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 743
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_8

    :cond_9
    move v3, v4

    :cond_a
    :goto_8
    return v3

    :pswitch_a
    const-string p1, "pref_filter_process_key"

    .line 739
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 736
    :pswitch_b
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p0

    return p0

    :pswitch_c
    const-string p0, "com.oplus.feature.auto.night.scence.support"

    .line 733
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_d
    const-string p1, "com.oplus.night.starburst.support"

    .line 729
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-nez p0, :cond_b

    goto :goto_9

    :cond_b
    move v3, v4

    :goto_9
    return v3

    :pswitch_e
    const-string p1, "com.oplus.night.tripod.support"

    .line 724
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-nez p1, :cond_c

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->l:Z

    if-eqz p0, :cond_c

    goto :goto_a

    :cond_c
    move v3, v4

    :goto_a
    return v3

    .line 721
    :pswitch_f
    invoke-static {}, Lcom/oplus/camera/util/Util;->au()Z

    move-result p0

    return p0

    .line 713
    :pswitch_10
    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 714
    :cond_d
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isFilterEffectOpen()Z

    move-result p0

    if-eqz p0, :cond_f

    :cond_e
    return v4

    :cond_f
    return v3

    .line 710
    :pswitch_11
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->mbCaptureRawTimeDone:Z

    return p0

    :pswitch_12
    return v4

    :pswitch_13
    return v3

    .line 792
    :cond_10
    :goto_b
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7d80482d -> :sswitch_32
        -0x7bb8f589 -> :sswitch_31
        -0x768ef054 -> :sswitch_30
        -0x74ade66d -> :sswitch_2f
        -0x7336bb70 -> :sswitch_2e
        -0x7211cafd -> :sswitch_2d
        -0x717ea7aa -> :sswitch_2c
        -0x64edfd1c -> :sswitch_2b
        -0x616206e3 -> :sswitch_2a
        -0x5f5094a8 -> :sswitch_29
        -0x5d1e6b30 -> :sswitch_28
        -0x566a0cd3 -> :sswitch_27
        -0x557a4647 -> :sswitch_26
        -0x545357a2 -> :sswitch_25
        -0x532f14eb -> :sswitch_24
        -0x4c8257a0 -> :sswitch_23
        -0x4c684fe0 -> :sswitch_22
        -0x43b4b28f -> :sswitch_21
        -0x40c9f939 -> :sswitch_20
        -0x3f608456 -> :sswitch_1f
        -0x3f4be729 -> :sswitch_1e
        -0x3f33ca13 -> :sswitch_1d
        -0x3959800e -> :sswitch_1c
        -0xdae10b4 -> :sswitch_1b
        -0xb0f5f67 -> :sswitch_1a
        -0x5f8f68b -> :sswitch_19
        -0xca2c0f -> :sswitch_18
        0x2537249 -> :sswitch_17
        0x67d194f -> :sswitch_16
        0xb8585f9 -> :sswitch_15
        0xbbf8ecb -> :sswitch_14
        0x1073c1f2 -> :sswitch_13
        0x147dcf78 -> :sswitch_12
        0x260d3011 -> :sswitch_11
        0x26d830c3 -> :sswitch_10
        0x36963465 -> :sswitch_f
        0x3cbb423b -> :sswitch_e
        0x3df76ea6 -> :sswitch_d
        0x51f99d59 -> :sswitch_c
        0x55733c3f -> :sswitch_b
        0x5666c336 -> :sswitch_a
        0x583e93cc -> :sswitch_9
        0x5f579904 -> :sswitch_8
        0x601dc156 -> :sswitch_7
        0x631eadda -> :sswitch_6
        0x753c8535 -> :sswitch_5
        0x75ca6ab5 -> :sswitch_4
        0x78e7e46b -> :sswitch_3
        0x7b875213 -> :sswitch_2
        0x7d1ae3bc -> :sswitch_1
        0x7e1951aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_hdr_mode_key"

    .line 833
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_macro_switch"

    .line 837
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "pref_camera_timer_shutter_key"

    .line 841
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_setting_key"

    .line 842
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camera_photo_ratio_key"

    .line 843
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "pref_subsetting_key"

    .line 847
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 848
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 851
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTouchEnable(ZII)Z
    .locals 1

    .line 1225
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1229
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/d;->getTouchEnable(ZII)Z

    move-result p0

    return p0
.end method

.method public getZSLMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomBarOffset()I
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0706fc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 1360
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZoomBarOffset()I

    move-result p0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 2

    .line 1125
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    const-string v1, "com.oplus.night_insensor_zoom.point.2x.support"

    .line 1126
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->v(Z)V

    const-string v1, "pref_night_pro_mode_key"

    .line 1128
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result p0

    .line 1131
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->p(Z)V

    .line 1132
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->w(Z)V

    :cond_0
    const-string p0, "com.oplus.night.mode.max.zoom.support"

    .line 1135
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 1136
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->x(Z)V

    :cond_1
    const-string p0, "com.oplus.second.zoom.point.specific.value"

    .line 1140
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result p0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v1, v1, p0

    if-gez v1, :cond_2

    .line 1143
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->b(F)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 1145
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->b(F)V

    :goto_0
    return-object v0
.end method

.method protected isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_night_tripod_mode_key"

    .line 938
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "com.oplus.night.tripod.zoom.hide.ultra.wide.support"

    .line 939
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 940
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "pref_none_sat_ultra_wide_angle_key"

    .line 941
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isNoneSatUltraWideAngleOpen()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    return v1
.end method

.method public isFirstTipsEnable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isHideUICapture()Z
    .locals 1

    .line 636
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodNight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isNightAlgoCaptureTriggered()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/capmode/r;->mNightAlgoTriggeredStep:I

    if-nez v0, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getIsCapturingState()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isInNightProMode()Z
    .locals 0

    .line 1380
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result p0

    return p0
.end method

.method protected isInNightProProcess()Z
    .locals 4

    .line 1371
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/capmode/r;->mNightCaptureTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isInNightProcess()Z
    .locals 0

    .line 889
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getNightStateDecision()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isInProMode()Z
    .locals 0

    .line 1384
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result p0

    return p0
.end method

.method public isNeedProgressBarInCapture()Z
    .locals 1

    .line 1338
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1342
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->isNeedProgressBarInCapture()Z

    move-result p0

    return p0
.end method

.method public isNeedResetAutoFocus()Z
    .locals 0

    .line 1440
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isNightProSoundPlayed()Z
    .locals 0

    .line 1376
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->r:Z

    return p0
.end method

.method protected isSalientObjectDetectionEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowProPanelMenu()Z
    .locals 0

    .line 1304
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->d()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowSceneNightTips()Z
    .locals 0

    .line 950
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->mbShowSteadyTips:Z

    return p0
.end method

.method public isShowZoomMenu()Z
    .locals 1

    .line 1445
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->f()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 1449
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->isShowZoomMenu()Z

    move-result p0

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuperNightShutterCountDownOpen()Z
    .locals 1

    const-string v0, "com.oplus.night.mode.shutter.countdown.support"

    .line 1463
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->mbNightShutterCountDown:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isTripodModeOpened()Z
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mPreferences:Landroid/content/SharedPreferences;

    .line 615
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    const v1, 0x7f10028e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string v1, "pref_night_tripod_mode_key"

    .line 614
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 617
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public needDelayCloseForCapture()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->needDelayCloseForCapture()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public needDeleteTheSizeByRatio(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.oplus.night.mode.delete.rectanglesize"

    .line 199
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "16_9"

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 204
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->needDeleteTheSizeByRatio(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 3

    .line 797
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-nez v0, :cond_2

    const-string v0, "type_still_capture_yuv_main"

    .line 798
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "com.oplus.yuv.night.support"

    if-eqz v0, :cond_0

    .line 799
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "type_still_capture_yuv_sub"

    .line 800
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type_still_capture_yuv_third"

    .line 801
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type_tuning_data_yuv"

    .line 802
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type_tuning_data_raw"

    .line 803
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const-string v0, "type_reprocess_data_yuv"

    .line 809
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "com.oplus.supernight.reprocess.extra.yuv"

    .line 810
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->mbFrontCamera:Z

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    const-string v0, "type_tele_small_preview"

    .line 814
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 818
    :cond_5
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 3

    .line 368
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->n()V

    .line 370
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aJ()V

    :cond_0
    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->s:Z

    const/4 v1, 0x0

    .line 374
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->mbEnableUILater:Z

    .line 376
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/r;->b(Z)V

    .line 380
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onAfterPictureTaken([BZ)V

    .line 382
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/oplus/camera/professional/n;->a([BZZ)V

    :cond_2
    const-string p1, "pref_night_pro_mode_key"

    .line 386
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 387
    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget p2, p0, Lcom/oplus/camera/capmode/r;->mCameraId:I

    .line 388
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/r;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/r;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p2

    .line 387
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->c(Landroid/util/Size;)Z

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    .line 390
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->l()V

    :cond_3
    return-void
.end method

.method public onAfterSnapping()Z
    .locals 3

    const-string v0, "NightMode"

    const-string v1, "onAfterSnapping"

    .line 1153
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1157
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 1158
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/r;->r:Z

    .line 1161
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onAfterSnapping()Z

    move-result p0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 1

    .line 1089
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->l()V

    .line 1091
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->i()V

    .line 1095
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 870
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePreview()V
    .locals 1

    .line 260
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBeforePreview()V

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->k:Z

    .line 263
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->n:Z

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 266
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->mbCapModeInit:Z

    invoke-virtual {v0, p0}, Lcom/oplus/camera/professional/n;->a(Z)V

    :cond_0
    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 5

    .line 310
    iget-object v0, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v0, v0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->k(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/camera/capmode/r;->g:J

    const/4 v1, 0x0

    .line 312
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->r:Z

    .line 313
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->s:Z

    .line 314
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->e()V

    .line 315
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/r;->b(Z)V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBeforeSnapping, rawCaptureNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getNightStateDecision: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getNightStateDecision()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mAvailMemory: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oplus/camera/capmode/r;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NightMode"

    .line 317
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/oplus/camera/capmode/r;->mbSceneNight:Z

    invoke-virtual {v0, p1, v2}, Lcom/oplus/camera/professional/n;->a(Lcom/oplus/camera/e/c;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 324
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p1

    .line 325
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->mbCheckTakeAnimateDelay:Z

    .line 327
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 330
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/n;->r()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/util/List;J)V

    .line 334
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->i()V

    goto :goto_1

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isSuperNightShutterCountDownOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    iget v0, p0, Lcom/oplus/camera/capmode/r;->v:I

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/oplus/camera/capmode/r;->mNightCaptureTotalTime:J

    .line 337
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->mbCaptureRawTimeDone:Z

    .line 338
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->i()V

    .line 341
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->onProcessCapturePictureRequest()V

    return p1
.end method

.method public onCancleCapturePictureRequest()V
    .locals 0

    .line 1481
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onCancleCapturePictureRequest()V

    .line 1483
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->t()V

    :cond_0
    return-void
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 1107
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    .line 1109
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->i()V

    return-void
.end method

.method public onCaptureSequenceCompleted()V
    .locals 2

    .line 1114
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onCaptureSequenceCompleted()V

    .line 1116
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget-boolean v0, v0, Lcom/oplus/camera/e/c;->Y:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oplus/camera/e/c$a;->CAPTURE_RAW:Lcom/oplus/camera/e/c$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    .line 1117
    invoke-virtual {v1}, Lcom/oplus/camera/e/c;->a()Lcom/oplus/camera/e/c$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "com.oplus.yuv.night.support"

    .line 1118
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->resetAwbLockAfterCaptured()V

    :cond_1
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NightMode"

    const-string v1, "onDeInitCameraMode()"

    .line 272
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->c()V

    .line 275
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->e()V

    .line 276
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->h()V

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/r;->b(Z)V

    .line 279
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->b()V

    :cond_0
    const-string v0, "com.oplus.night.mode.delete.rectanglesize"

    .line 283
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "16_9"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 288
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onDeInitCameraMode(Ljava/lang/String;)V

    return-void
.end method

.method public onEffectMenuPopDown(Z)V
    .locals 1

    .line 1205
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_0

    const/4 p1, 0x3

    const/4 v0, 0x1

    .line 1206
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/n;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onEffectMenuPopUp()V
    .locals 2

    .line 1198
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1199
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/n;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onFilterItemChange(I)V
    .locals 1

    .line 1212
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onFilterItemChange(I)V

    .line 1214
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq v0, p1, :cond_0

    .line 1215
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->n()V

    :cond_0
    return-void
.end method

.method protected onFilterMenuClicked()V
    .locals 1

    .line 1189
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onFilterMenuClicked()V

    .line 1191
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->p()V

    :cond_0
    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    .line 646
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 647
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "on"

    goto :goto_1

    :cond_2
    const-string v1, "off"

    :goto_1
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mIsTripodMode:Ljava/lang/String;

    const-string v1, "pref_support_night_process"

    .line 656
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 657
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/r;->k:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    .line 658
    iput v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mNightState:I

    goto :goto_2

    .line 660
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getNightStateDecision()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mNightState:I

    .line 664
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    return-object p1
.end method

.method public onGetNearMeOnClickData()V
    .locals 0

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 3

    .line 551
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onInitCameraMode()V

    .line 553
    iget v0, p0, Lcom/oplus/camera/capmode/r;->m:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->aD()I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/oplus/camera/capmode/r;->m:I

    .line 554
    iget v0, p0, Lcom/oplus/camera/capmode/r;->m:I

    iget v1, p0, Lcom/oplus/camera/capmode/r;->u:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->l:Z

    .line 556
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isNightProModeSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->restoreProPreference()V

    .line 558
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->p()V

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_4

    .line 562
    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->h()V

    .line 563
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/n;->e(Z)V

    .line 566
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 567
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/r;->b(Z)V

    :cond_5
    const-string v0, "com.oplus.night.mode.delete.rectanglesize"

    .line 570
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_6

    .line 572
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "16_9"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "pref_support_night_process"

    .line 875
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 879
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onLongPress(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onMoreModeHidden(I)V
    .locals 2

    const-string v0, "NightMode"

    const-string v1, "onMoreModeHidden"

    .line 1400
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 1403
    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->m()V

    .line 1406
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onMoreModeHidden(I)V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 2

    const-string v0, "NightMode"

    const-string v1, "onMoreModeShown"

    .line 1389
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->l()V

    .line 1395
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onMoreModeShown()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 293
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onPause()V

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->s:Z

    .line 296
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->h()V

    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/r;->b(Z)V

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/p;->b()V

    .line 303
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->c()V

    :cond_1
    return-void
.end method

.method public onPictureCallback([BIIIZI)V
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureCallback, data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isInNightProProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mbCaptureRawTimeDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/r;->mbCaptureRawTimeDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbCaptureRawTimeDone:Z

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->stopNightCountdownTime()V

    .line 363
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/capmode/d;->onPictureCallback([BIIIZI)V

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 3

    .line 422
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    if-eqz p1, :cond_5

    .line 424
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 432
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbInCapturing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/r;->a(Landroid/hardware/camera2/CaptureResult;)V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_2

    .line 437
    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/n;->a(Landroid/hardware/camera2/CaptureResult;)V

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v0

    .line 442
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/r;->mbInCapturing:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 443
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/camera/e/b;->ad:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 445
    array-length v0, p1

    if-lez v0, :cond_4

    .line 446
    iget v0, p0, Lcom/oplus/camera/capmode/r;->h:I

    const/4 v1, 0x0

    aget p1, p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/capmode/r;->h:I

    .line 447
    iget p1, p0, Lcom/oplus/camera/capmode/r;->i:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/camera/capmode/r;->i:I

    .line 449
    iget p1, p0, Lcom/oplus/camera/capmode/r;->i:I

    const/16 v2, 0xa

    if-ne p1, v2, :cond_4

    .line 450
    iget p1, p0, Lcom/oplus/camera/capmode/r;->h:I

    const/4 v2, 0x6

    if-lt p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->j:Z

    .line 451
    iput v1, p0, Lcom/oplus/camera/capmode/r;->h:I

    .line 452
    iput v1, p0, Lcom/oplus/camera/capmode/r;->i:I

    :cond_4
    return-void

    .line 425
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, invalid previewResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NightMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewDecisionResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 5

    .line 488
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onPreviewDecisionResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    .line 490
    iget-object p1, p0, Lcom/oplus/camera/capmode/r;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter p1

    .line 491
    :try_start_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object v0, v0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 493
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object v0, v0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v3, "aps_algo_darksight"

    .line 494
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/oplus/camera/capmode/r;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v4, v4, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->k:Z

    const-string v1, "aps_algo_ai_night"

    .line 496
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->n:Z

    const-string v1, "aps_algo_supernight"

    .line 497
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->o:Z

    const-string v1, "aps_algo_portrait_supernight"

    .line 498
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->p:Z

    goto :goto_2

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    iget-object v3, p0, Lcom/oplus/camera/capmode/r;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v3, v3, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v0, v3, :cond_4

    const/16 v0, 0xe

    iget-object v3, p0, Lcom/oplus/camera/capmode/r;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v3, v3, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v0, v3, :cond_4

    const/16 v0, 0x1d

    iget-object v3, p0, Lcom/oplus/camera/capmode/r;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v3, v3, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->k:Z

    .line 506
    :cond_5
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 509
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/capmode/r;->mCameraId:I

    const-string v1, "aps_algo_darksight"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 510
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->e()V

    return-void

    .line 515
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/capmode/r;->mCameraId:I

    const-string v1, "aps_algo_ainr"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 516
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/capmode/r;->mCameraId:I

    const-string v1, "aps_algo_aihdr"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 517
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->e()V

    return-void

    .line 523
    :cond_7
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/r;->k:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/r;->mbCaptureRawTimeDone:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/r;->s:Z

    if-eqz p1, :cond_8

    .line 524
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->d()V

    goto :goto_3

    .line 526
    :cond_8
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->e()V

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 506
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onProcessCapturePictureRequest()V
    .locals 0

    .line 1490
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onProcessCapturePictureRequest()V

    .line 1492
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_0

    .line 1493
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->u()V

    :cond_0
    return-void
.end method

.method protected onResume(Z)V
    .locals 3

    const-string v0, "NightMode"

    const-string v1, "onResume"

    .line 532
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbStopSteadyTips:Z

    .line 535
    iget v1, p0, Lcom/oplus/camera/capmode/r;->m:I

    if-gtz v1, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->aD()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/oplus/camera/capmode/r;->m:I

    .line 536
    iget v1, p0, Lcom/oplus/camera/capmode/r;->m:I

    iget v2, p0, Lcom/oplus/camera/capmode/r;->u:I

    if-gt v1, v2, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/r;->l:Z

    .line 538
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/r;->b(Z)V

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_4

    .line 543
    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/n;->b(Z)V

    .line 546
    :cond_4
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onResume(Z)V

    return-void
.end method

.method public onSendCapturePictureRequest()V
    .locals 0

    .line 1472
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onSendCapturePictureRequest()V

    .line 1474
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_0

    .line 1475
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->s()V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const-string v0, "pref_night_tripod_mode_key"

    .line 960
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 961
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->m()V

    .line 964
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->TRIPOD_MODE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 965
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 967
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v0

    .line 969
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/r;->a(Z)V

    .line 971
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/r;->b(Z)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "pref_night_pro_mode_key"

    .line 972
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 973
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result v0

    .line 974
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isNoneSatUltraWideAngleOpen()Z

    move-result v2

    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSharedPreferenceChanged isProModeOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NightMode"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->k()V

    .line 979
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->n()V

    if-eqz v0, :cond_1

    .line 982
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->o()V

    .line 983
    iget-object v4, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, v3, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->k(ZZ)V

    .line 984
    iget-object v4, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v1, v1, [I

    const v5, 0x7f100070

    aput v5, v1, v3

    invoke-interface {v4, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    goto :goto_0

    .line 986
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v3, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 989
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v1, :cond_2

    .line 990
    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/n;->c(Z)V

    :cond_2
    if-nez v2, :cond_8

    .line 994
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->l()V

    goto :goto_2

    :cond_3
    const-string v0, "pref_night_starburst_mode"

    .line 996
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 997
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 998
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->j()Z

    move-result v0

    .line 1000
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->STARBURST_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1001
    iget-object v1, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    if-eqz v0, :cond_4

    .line 1005
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->f()V

    goto :goto_2

    .line 1007
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->g()V

    goto :goto_2

    :cond_5
    const-string v0, "pref_camera_id_key"

    .line 1009
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1010
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v3

    .line 1013
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_8

    .line 1014
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/n;->d(Z)V

    goto :goto_2

    .line 1016
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_8

    .line 1017
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/professional/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1020
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 1

    .line 1100
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->r:Z

    if-nez v0, :cond_1

    .line 1101
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onShutterCallback(ZZ)V

    :cond_1
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/n;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1046
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStop()V
    .locals 1

    const-string p0, "NightMode"

    const-string v0, "OnStop"

    .line 588
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onZoomChanged()V
    .locals 0

    .line 1365
    invoke-direct {p0}, Lcom/oplus/camera/capmode/r;->m()V

    .line 1366
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->displayScreenHintIconInSwitchOn()V

    return-void
.end method

.method public onZoomMenuCollapsed()V
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->n()V

    .line 1317
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onZoomMenuCollapsed()V

    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->o()V

    .line 1326
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onZoomMenuExpand()V

    return-void
.end method

.method protected resetAfterPictureTaken(ZZ)V
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/r;->mbCaptureRawTimeDone:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "NightMode"

    const-string p1, "resetAfterPictureTaken, CaptureRawTime not end"

    .line 397
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/oplus/camera/professional/n;->g()V

    .line 406
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->resetAfterPictureTaken(ZZ)V

    return-void
.end method

.method protected restoreAllViews(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1499
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/capmode/r;->restoreAllViews(ZZZ)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz v0, :cond_0

    .line 1348
    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/n;->a(I)V

    .line 1351
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->setOrientation(I)V

    return-void
.end method

.method public showBeautyButton()Z
    .locals 2

    .line 1411
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1415
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isTripodModeOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/p;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1419
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->showBeautyButton()Z

    move-result p0

    return p0
.end method

.method public supportBeautyButton()Z
    .locals 1

    .line 1454
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1458
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->supportBeautyButton()Z

    move-result p0

    return p0
.end method

.method public updateControlPanelBgColor(I)V
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->t:Lcom/oplus/camera/professional/n;

    if-eqz p0, :cond_0

    .line 1332
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/n;->b(I)V

    :cond_0
    return-void
.end method

.method public updateRatioType()V
    .locals 2

    .line 578
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->updateRatioType()V

    const-string v0, "com.oplus.night.mode.delete.rectanglesize"

    .line 580
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/r;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 582
    iget-object p0, p0, Lcom/oplus/camera/capmode/r;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "16_9"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
