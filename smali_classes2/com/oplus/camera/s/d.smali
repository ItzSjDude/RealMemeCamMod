.class public Lcom/oplus/camera/s/d;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "StarryMode.java"


# static fields
.field private static final g:I

.field private static h:J

.field private static i:I


# instance fields
.field private j:J

.field private k:Lcom/oplus/camera/s/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.oplus.starry.process.time"

    .line 29
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/camera/s/d;->g:I

    const-string v0, "com.oplus.starry.capture.exposuretime"

    .line 31
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/oplus/camera/s/d;->h:J

    const-string v0, "com.oplus.starry.capture.iso"

    .line 33
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/camera/s/d;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const-wide/16 p1, 0x0

    .line 37
    iput-wide p1, p0, Lcom/oplus/camera/s/d;->j:J

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/s/e;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->o(I)V

    .line 185
    iget-object p0, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 274
    invoke-direct {p0, p1}, Lcom/oplus/camera/s/d;->b(Landroid/hardware/camera2/CaptureResult;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 277
    sget-wide v0, Lcom/oplus/camera/s/d;->h:J

    invoke-virtual {p0}, Lcom/oplus/camera/s/d;->getDefaultCaptureNumber()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/s/d;->j:J

    return-void

    :cond_0
    const-wide/32 v2, 0xf4240

    .line 282
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/s/d;->j:J

    return-void
.end method

.method private b(Landroid/hardware/camera2/CaptureResult;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 301
    :cond_0
    sget-object p0, Lcom/oplus/camera/e/b;->bh:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p0}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    .line 307
    :cond_1
    check-cast p0, [J

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method static synthetic b(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/s/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/s/d;)Z
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/oplus/camera/s/d;->isPanelMode()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/s/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/s/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method


# virtual methods
.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "starry"

    return-object p0
.end method

.method public getDefaultCaptureNumber()I
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/s/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/s/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v1, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    if-lez v1, :cond_0

    .line 289
    iget-object p0, p0, Lcom/oplus/camera/s/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget p0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    monitor-exit v0

    return p0

    :cond_0
    const/16 p0, 0xf

    .line 291
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "pref_camera_pi_ai_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_6
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "pref_continuous_focus_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
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

    .line 244
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 237
    :pswitch_0
    invoke-virtual {p0}, Lcom/oplus/camera/s/d;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/s/d;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    const-string p0, "com.oplus.night.starry.zoom.support"

    .line 234
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    const-string p0, "com.oplus.star.video.support"

    .line 231
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_3
    return v1

    :pswitch_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74ade66d -> :sswitch_8
        -0x6ce3461c -> :sswitch_7
        -0x64edfd1c -> :sswitch_6
        -0x5efa20f1 -> :sswitch_5
        -0x289e651d -> :sswitch_4
        0x1073c1f2 -> :sswitch_3
        0x140b168f -> :sswitch_2
        0x5f579904 -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_setting_key"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 255
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

    .line 312
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    const/4 v0, 0x1

    .line 313
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->p(Z)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->y(Z)V

    return-object p0
.end method

.method protected isHideUICapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedShowMenuOnTimeSnapShotEnd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStarryMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needDelayCloseForCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "type_tuning_data_raw"

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "type_tuning_data_yuv"

    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "type_capture"

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 333
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 2

    .line 157
    iget-object p1, p0, Lcom/oplus/camera/s/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aJ()V

    .line 159
    iget-object p1, p0, Lcom/oplus/camera/s/d;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/oplus/camera/s/d$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/s/d$3;-><init>(Lcom/oplus/camera/s/d;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    iget-object p1, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 174
    iget-object p1, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v0, v0}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 175
    iget-object p0, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public onAfterSnapping()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 126
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onAfterSnapping()Z

    move-result p0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v1, p0, Lcom/oplus/camera/s/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->as()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/s/d;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/e/h;->m()F

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(FZ)V

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    iget-object v1, p0, Lcom/oplus/camera/s/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/s/e;->a(I)V

    .line 93
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    return-void
.end method

.method protected onBeforePreview()V
    .locals 1

    const-string p0, "StarryMode"

    const-string v0, "onBeforePreview"

    .line 85
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 4

    const-string p1, "StarryMode"

    const-string v0, "onBeforeSnapping"

    .line 98
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/oplus/camera/s/d;->getNightStateDecision()I

    move-result p1

    if-lez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/oplus/camera/s/d;->getNightStateDecision()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/s/d;->a(I)V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/s/d;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/s/d$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/s/d$2;-><init>(Lcom/oplus/camera/s/d;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    iget-object p1, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    iget-object v0, p0, Lcom/oplus/camera/s/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/s/e;->a(I)V

    .line 112
    iget-object p1, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    iget-wide v0, p0, Lcom/oplus/camera/s/d;->j:J

    sget v2, Lcom/oplus/camera/s/d;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/s/e;->a(J)V

    .line 114
    iget-object p1, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 116
    iget-object p0, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/oplus/camera/e/d;->b(ZZ)V

    :cond_1
    return v0
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 1

    const-string p1, "StarryMode"

    const-string v0, "onDeInitCameraMode"

    .line 202
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    invoke-virtual {p0}, Lcom/oplus/camera/s/e;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "StarryMode"

    const-string v1, "onDestroy"

    .line 209
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/oplus/camera/s/e;->c()V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    :cond_0
    return-void
.end method

.method protected onInitCameraMode()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/oplus/camera/s/e;

    iget-object v1, p0, Lcom/oplus/camera/s/d;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/s/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v3, Lcom/oplus/camera/s/d$1;

    invoke-direct {v3, p0}, Lcom/oplus/camera/s/d$1;-><init>(Lcom/oplus/camera/s/d;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/s/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/s/e$a;)V

    iput-object v0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "StarryMode"

    const-string v1, "onPause"

    .line 190
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    invoke-virtual {p0}, Lcom/oplus/camera/s/e;->a()V

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 1

    .line 260
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    if-eqz p1, :cond_2

    .line 262
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/s/d;->mbInCapturing:Z

    if-nez v0, :cond_1

    .line 269
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/s/d;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_1
    return-void

    .line 263
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, invalid previewResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StarryMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string p0, "StarryMode"

    const-string v0, "OnStop"

    .line 197
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v0, "StarryMode"

    const-string v2, "onStopTakePicture"

    .line 137
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->h()V

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 142
    invoke-direct {p0, v1}, Lcom/oplus/camera/s/d;->a(I)V

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    invoke-virtual {v0}, Lcom/oplus/camera/s/e;->b()V

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/s/d;->k:Lcom/oplus/camera/s/e;

    invoke-virtual {p0}, Lcom/oplus/camera/s/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/s/e;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 145
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->W()V

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/s/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->f(Z)V

    .line 147
    iput-boolean v1, p0, Lcom/oplus/camera/s/d;->mbInCapturing:Z

    return v2

    :cond_0
    return v1
.end method
