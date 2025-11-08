.class public Lcom/oplus/camera/h/a;
.super Lcom/oplus/camera/capmode/w;
.source "FastVideoMode.java"


# static fields
.field private static final HYPER_LAPSE_RATE:I = 0x3

.field private static final RECORDING_DEFAULT_MIN_TIME:I = 0x3e8

.field private static final RECORDING_MIN_TIME:I = 0x5dc

.field private static final RECORDING_MIN_TIME_RATIO:I = 0xf

.field private static final SPEED_VALUE_10X:Ljava/lang/String; = "10"

.field private static final SPEED_VALUE_120X:Ljava/lang/String; = "120"

.field private static final SPEED_VALUE_480X:Ljava/lang/String; = "480"

.field private static final SPEED_VALUE_60X:Ljava/lang/String; = "60"

.field private static final SPEED_VALUE_960X:Ljava/lang/String; = "960"

.field private static final SPEED_VALUE_DEFAULT:Ljava/lang/String; = "10"

.field private static final TAG:Ljava/lang/String; = "FastVideoMode"


# instance fields
.field private mCaptureRate:D

.field private mConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFrameTime:J

.field private mRealVideoTimeRatio:F

.field private mRecordingMinTime:I

.field private mSpeedValue:Ljava/lang/String;

.field private mVideoSizeType:Ljava/lang/String;

.field private mbAfterInitCameraMode:Z

.field private mbHyperLapseOpen:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/w;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    const-string p1, "video_size_1080p"

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/h/a;->mVideoSizeType:Ljava/lang/String;

    .line 69
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/h/a;->mConfigs:Ljava/util/HashMap;

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    .line 70
    iput-wide p1, p0, Lcom/oplus/camera/h/a;->mCaptureRate:D

    const-wide/16 p1, -0x1

    .line 72
    iput-wide p1, p0, Lcom/oplus/camera/h/a;->mCurrentFrameTime:J

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    const/16 p2, 0x5dc

    .line 74
    iput p2, p0, Lcom/oplus/camera/h/a;->mRecordingMinTime:I

    .line 75
    iput-boolean p1, p0, Lcom/oplus/camera/h/a;->mbAfterInitCameraMode:Z

    return-void
.end method

.method private hideHyperLapseView()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->h(Z)V

    .line 537
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f1004cf

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    return-void
.end method

.method private hideTimeLapseSpeedHint()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10046e

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100470

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10046d

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10046f

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 235
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100471

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    return-void
.end method

.method private isSupportNoneSatUltraWideSupport()Z
    .locals 1

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 795
    invoke-virtual {p0, v0}, Lcom/oplus/camera/h/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseUltraWide()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private setFastValueToParameter()V
    .locals 4

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFastValueToParameter, mSpeedValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FastVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v0

    .line 311
    iput-wide v2, p0, Lcom/oplus/camera/h/a;->mCaptureRate:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v2, v2

    .line 312
    iput v2, p0, Lcom/oplus/camera/h/a;->mRealVideoTimeRatio:F

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 314
    iput v0, p0, Lcom/oplus/camera/h/a;->mRecordingMinTime:I

    .line 316
    iget v0, p0, Lcom/oplus/camera/h/a;->mRecordingMinTime:I

    const/16 v1, 0x5dc

    if-le v1, v0, :cond_0

    .line 317
    iput v1, p0, Lcom/oplus/camera/h/a;->mRecordingMinTime:I

    :cond_0
    return-void
.end method

.method private updateTimeLapseSpeedHint(ZLjava/lang/String;)V
    .locals 10

    .line 482
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x61f

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x6ba

    if-eq v1, v2, :cond_3

    const v2, 0xbe2f

    if-eq v1, v2, :cond_2

    const v2, 0xca2c

    if-eq v1, v2, :cond_1

    const v2, 0xdcb3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "960"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "480"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_1

    :cond_2
    const-string v1, "120"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_1

    :cond_3
    const-string v1, "60"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    goto :goto_1

    :cond_4
    const-string v1, "10"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v8

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    :goto_2
    move v5, v8

    goto :goto_3

    :cond_6
    const v8, 0x7f100471

    goto :goto_2

    :cond_7
    const v8, 0x7f10046f

    goto :goto_2

    :cond_8
    const v8, 0x7f10046d

    goto :goto_2

    :cond_9
    const v8, 0x7f100470

    goto :goto_2

    :cond_a
    const v8, 0x7f10046e

    goto :goto_2

    :goto_3
    if-eqz p1, :cond_c

    .line 502
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbAfterInitCameraMode:Z

    if-eqz v0, :cond_c

    .line 503
    :cond_b
    iget-object v4, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 504
    iput-boolean v3, p0, Lcom/oplus/camera/h/a;->mbAfterInitCameraMode:Z

    goto :goto_4

    .line 506
    :cond_c
    invoke-direct {p0}, Lcom/oplus/camera/h/a;->hideTimeLapseSpeedHint()V

    :goto_4
    return-void
.end method


# virtual methods
.method public beforeStartRecording()V
    .locals 7

    .line 675
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2, v3, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 679
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v4, 0x5

    const-string v5, "button_color_inside_red"

    const-string v6, "button_shape_dial_rotate"

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 683
    iget-object v3, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 685
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isTiltShiftOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/h/a;->updateTimeLapseSpeedHint(ZLjava/lang/String;)V

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_camera_time_lapse_rate_key"

    const-string v3, "10"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    .line 690
    invoke-direct {p0}, Lcom/oplus/camera/h/a;->setFastValueToParameter()V

    .line 692
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-nez v0, :cond_2

    const-string v0, "com.oplus.feature.fast.video.lock.af.4.fps.support"

    .line 693
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->n()V

    .line 697
    :cond_2
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeStartRecording()V

    .line 699
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_4

    .line 700
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    .line 701
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lcom/oplus/camera/h/a;->mCameraId:I

    iget-object v4, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 702
    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/h/a;->getJpegOrientation(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 701
    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 705
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_4
    return-void
.end method

.method public beforeSwitchCamera()V
    .locals 1

    .line 280
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeSwitchCamera()V

    .line 281
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    return-void
.end method

.method public displayAllIcon(ZZ)V
    .locals 0

    .line 663
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isVideoFlashTorchOpen()Z

    move-result p1

    if-nez p1, :cond_0

    .line 664
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public displayScreenHintIconInSwitchOn()V
    .locals 2

    .line 656
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isVideoFlashTorchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 1

    .line 728
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 732
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v0, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseUltraWideOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "hyperlapseProVideo"

    return-object p0

    :cond_1
    const-string p0, "hyperlapseVideo"

    return-object p0

    .line 740
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.oplus.sat.use.hal"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "commonVideoSatHal"

    return-object p0

    .line 744
    :cond_3
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getCameraFeature()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "fastVideo"

    return-object p0
.end method

.method public getCanAddMenuOption(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_video_size_key"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_camera_videoflashmode_key"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 125
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getCanAddMenuOption(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getHyperLapseRate()I
    .locals 0

    .line 352
    iget-boolean p0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNeedReduceBitRate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOperatingMode()I
    .locals 2

    .line 632
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez v0, :cond_0

    const-string v0, "key_support_fovc"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/h/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x830c

    goto :goto_0

    :cond_0
    const v0, 0x800c

    .line 636
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v1, :cond_1

    const v0, 0x80a5

    :cond_1
    const-string v1, "com.oplus.video.watermark.hal.support"

    .line 640
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isSloganOpen()Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/lit16 v0, v0, 0x400

    :cond_2
    return v0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 608
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {p0, v0}, Lcom/oplus/camera/h/a;->getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 615
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getRealCaptureRate()Ljava/lang/Double;
    .locals 2

    .line 359
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/oplus/camera/h/a;->mCaptureRate:D

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getRealVideoTimeRatio()Ljava/lang/Float;
    .locals 2

    .line 338
    iget p0, p0, Lcom/oplus/camera/h/a;->mRealVideoTimeRatio:F

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRealVideoTimeRatio, ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FastVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method protected getRecordingMinTime(Z)I
    .locals 1

    const/16 v0, 0x5dc

    if-eqz p1, :cond_0

    return v0

    .line 842
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oplus/camera/h/a;->mRecordingMinTime:I

    :goto_0
    return v0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 649
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    const-string v0, "button_shape_dial_rotate"

    .line 650
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_video_hyper_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_fast_video_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_video_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_video_eis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "key_zoom_wide_angle_open_default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "func_video_hyper_lapse_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_8
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_9
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v0, "pref_support_recording_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_c
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_e
    const-string v0, "pref_camera_time_lapse_rate_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_f
    const-string v0, "pref_video_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_10
    const-string v0, "pref_slow_video_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 210
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "com.oplus.feature.timelapse.rate.support"

    .line 201
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 203
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_1
    const-string p1, "com.oplus.feature.wide.angle.open.default"

    .line 197
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    return v1

    .line 192
    :pswitch_2
    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez p1, :cond_3

    const-string p1, "com.oplus.feature.hyper.lapse.support"

    .line 193
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 194
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move v1, v2

    :goto_4
    return v1

    .line 188
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isSupportNoneSat()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_5

    :cond_4
    move v1, v2

    :goto_5
    return v1

    :pswitch_4
    const-string p1, "com.oplus.feature.fast.video.sat.support"

    .line 181
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez p1, :cond_5

    .line 183
    invoke-static {}, Lcom/oplus/camera/e/a;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 184
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-nez p0, :cond_5

    goto :goto_6

    :cond_5
    move v1, v2

    :goto_6
    return v1

    .line 176
    :pswitch_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez p0, :cond_6

    const-string p0, "com.oplus.feature.video.eis.support"

    .line 178
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_7

    :cond_6
    move v1, v2

    :goto_7
    return v1

    .line 170
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isVideoRecording()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz p1, :cond_8

    .line 172
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseUltraWide()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 173
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isSupportHyperLapseZoomChange()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    move v1, v2

    :cond_8
    :goto_8
    return v1

    .line 167
    :pswitch_7
    iget-boolean p0, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez p0, :cond_9

    const-string p0, "com.oplus.feature.fast.video.resolution.switch"

    .line 168
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    return v1

    :pswitch_8
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x572b61b9 -> :sswitch_10
        -0x1e969cb5 -> :sswitch_f
        -0x1cab2b7a -> :sswitch_e
        -0x185952aa -> :sswitch_d
        -0xb0f5f67 -> :sswitch_c
        0x739636c -> :sswitch_b
        0xb8585f9 -> :sswitch_a
        0x140b168f -> :sswitch_9
        0x1e7c3c3e -> :sswitch_8
        0x3656454b -> :sswitch_7
        0x3be29f98 -> :sswitch_6
        0x3f50f6f7 -> :sswitch_5
        0x5a4fa36f -> :sswitch_4
        0x62669e01 -> :sswitch_3
        0x62dace8c -> :sswitch_2
        0x69bbb15a -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_video_hyper_lapse_key"

    .line 386
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Lcom/oplus/camera/h/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "pref_camera_time_lapse_rate_key"

    .line 390
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p0, p1}, Lcom/oplus/camera/h/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "pref_fast_video_size_key"

    .line 394
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p0, p1}, Lcom/oplus/camera/h/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 398
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSurfaceSize(Ljava/lang/String;Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 542
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->getCameraFeature()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/capmode/BaseMode$a;->INPUT:Lcom/oplus/camera/capmode/BaseMode$a;

    invoke-virtual {p0, v0, p1, v1}, Lcom/oplus/camera/h/a;->getSizeFromConfig(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/capmode/BaseMode$a;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "FastVideoMode"

    const-string v0, "getSurfaceSize, getVideoPipelineSize failed!"

    .line 548
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_1
    invoke-super {p0, p2}, Lcom/oplus/camera/capmode/w;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getTimeLapseSpeed()Ljava/lang/Double;
    .locals 2

    .line 364
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getVideoFps()I
    .locals 0

    .line 603
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->getVideoFrameRate()I

    move-result p0

    return p0
.end method

.method public getVideoFpsRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string p0, "com.oplus.feature.fast.video.lock.af.4.fps.support"

    .line 801
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    const/16 v0, 0x1e

    .line 804
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoSizeType()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_fast_video_size_key"

    .line 589
    invoke-virtual {p0, v0}, Lcom/oplus/camera/h/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    instance-of v1, v1, Lcom/oplus/camera/ComboPreferences;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    check-cast v1, Lcom/oplus/camera/ComboPreferences;

    .line 592
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    .line 591
    invoke-virtual {v1, v0, p0}, Lcom/oplus/camera/ComboPreferences;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 598
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mVideoSizeType:Ljava/lang/String;

    return-object p0
.end method

.method protected getVideoTime()J
    .locals 4

    .line 779
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 781
    iget-wide v2, p0, Lcom/oplus/camera/h/a;->mRecordingTotalTime:J

    :goto_0
    long-to-double v2, v2

    div-double/2addr v2, v0

    double-to-int p0, v2

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 783
    iget-wide v2, p0, Lcom/oplus/camera/h/a;->mCaptureRate:D

    div-double/2addr v0, v2

    .line 784
    iget-wide v2, p0, Lcom/oplus/camera/h/a;->mRecordingTotalTime:J

    goto :goto_0
.end method

.method public getZSLMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 3

    .line 755
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    .line 756
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->r(Z)V

    .line 757
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isNoneSatUltraWideAngleOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->c(Z)V

    .line 759
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isNoneSatUltraWideAngleOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-static {}, Lcom/oplus/camera/e/a;->h()I

    move-result v2

    .line 760
    invoke-static {v1, v2}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v1

    .line 761
    invoke-virtual {v1}, Lcom/oplus/camera/e/h;->e()F

    move-result v1

    .line 760
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->a(F)V

    .line 764
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/h/a;->isSupportNoneSatUltraWideSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->f(Z)V

    const/4 v1, 0x0

    .line 765
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->g(Z)V

    const-string v1, "key_zoom_wide_angle_open_default"

    .line 766
    invoke-virtual {p0, v1}, Lcom/oplus/camera/h/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->F(Z)V

    const-string p0, "com.oplus.second.zoom.point.specific.value"

    .line 768
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result p0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v1, v1, p0

    if-gez v1, :cond_1

    .line 771
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->b(F)V

    :cond_1
    return-object v0
.end method

.method public isFastVideoMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFlashState()Z
    .locals 0

    .line 670
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isVideoFlashTorchOpen()Z

    move-result p0

    return p0
.end method

.method protected isHyperLapseOpen()Z
    .locals 2

    .line 812
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 814
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/h/a;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1004cc

    .line 816
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_video_hyper_lapse_key"

    .line 815
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHyperLapseUltraWideOpen()Z
    .locals 2

    .line 790
    invoke-direct {p0}, Lcom/oplus/camera/h/a;->isSupportNoneSatUltraWideSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "key_hyper_lapse_zoom_ultra_wide_open"

    .line 791
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isNeedAudioEncode()Z
    .locals 0

    .line 403
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isVideoTimeLapseTiltShiftOpen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isNoneSatUltraWideAngleOpen()Z
    .locals 2

    .line 298
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseUltraWide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    const-string v1, "key_hyper_lapse_zoom_ultra_wide_open"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 304
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->isNoneSatUltraWideAngleOpen()Z

    move-result p0

    return p0
.end method

.method protected isQualcommEndOfStreamNeed()Z
    .locals 3

    .line 557
    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.end.video.eis.stream.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 559
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->k()[B

    move-result-object p0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQualcommEndOfStreamNeed, endOfStreamValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FastVideoMode"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 566
    array-length p0, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isUseMediaCodec()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 409
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isVideoTimeLapseTiltShiftOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isUseMediaRecorderNotUseAPS()Z
    .locals 1

    .line 574
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->needApsToProcessVideoWatermark()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez v0, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isSatOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.oplus.sat.use.hal"

    .line 579
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public needConfigPhysicalStream(Ljava/lang/String;)Z
    .locals 1

    .line 749
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.sat.use.hal"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 750
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->needConfigPhysicalStream(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected needShowVideoTime()Z
    .locals 0

    .line 834
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseOpen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "type_sub_preview_frame"

    .line 369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    const-string v0, "type_third_preview_frame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "type_video_frame"

    .line 376
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-nez p1, :cond_2

    const-string p1, "pref_watermark_function_key"

    .line 378
    invoke-virtual {p0, p1}, Lcom/oplus/camera/h/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isSloganOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    const-string p0, "type_video"

    .line 381
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    const/4 p1, 0x3

    .line 370
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez p1, :cond_5

    .line 372
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isSatOpen()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "com.oplus.sat.use.hal"

    .line 373
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1
.end method

.method public needUploadOplusStatistics(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_face_detection_key"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 151
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onAfterSnapping()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 8

    .line 512
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onAfterStartPreview(Z)V

    .line 514
    iget-object p1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_camera_time_lapse_rate_key"

    const-string v1, "10"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    .line 516
    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 518
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_bottom_guide_type_fast_video"

    .line 519
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 520
    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h(Z)V

    .line 522
    iget-object p1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1004cf

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZ)V

    goto :goto_0

    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/h/a;->hideHyperLapseView()V

    .line 529
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseUltraWide()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-eqz p1, :cond_1

    .line 530
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "key_hyper_lapse_zoom_ultra_wide_open"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePreview()V
    .locals 5

    const-string v0, "FastVideoMode"

    const-string v1, "onBeforePreview"

    .line 246
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBeforePreview()V

    const-string v1, "com.oplus.feature.fast.video.beauty.support"

    .line 250
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/h/a;->updateFaceBeautyLevel(IZ)V

    .line 253
    iget-object v1, p0, Lcom/oplus/camera/h/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/oplus/camera/h/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    .line 259
    invoke-direct {p0}, Lcom/oplus/camera/h/a;->setFastValueToParameter()V

    .line 260
    invoke-virtual {p0, v2}, Lcom/oplus/camera/h/a;->enableVideoRecordingSound(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->setTiltShiftPreview()V

    .line 263
    iget-boolean v1, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseUltraWideOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget v1, p0, Lcom/oplus/camera/h/a;->mCameraId:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/h/a;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v2, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result v2

    .line 269
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/e/h;->a(Lcom/oplus/camera/af;F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBeforePreview, hyper lapse ultra wide not support zoom value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/camera/e/h;->b(Lcom/oplus/camera/af;)F

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/capmode/a;->c(F)V

    :cond_1
    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 0

    .line 323
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isVideoRecording()Z

    move-result p0

    return p0
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FastVideoMode"

    const-string v1, "onDeInitCameraMode"

    .line 220
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, v0}, Lcom/oplus/camera/h/a;->enableVideoRecordingSound(Z)V

    .line 223
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onDeInitCameraMode(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "key_hyper_lapse_zoom_ultra_wide_open"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    invoke-direct {p0}, Lcom/oplus/camera/h/a;->hideHyperLapseView()V

    .line 227
    invoke-direct {p0}, Lcom/oplus/camera/h/a;->hideTimeLapseSpeedHint()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mConfigs:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/oplus/camera/h/a;->mConfigs:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 1

    .line 288
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    if-eqz v0, :cond_0

    .line 289
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    .line 290
    iget p0, p0, Lcom/oplus/camera/h/a;->mDcsLux:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mLux:Ljava/lang/String;

    move-object p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method protected onInitCameraMode()V
    .locals 3

    const-string v0, "FastVideoMode"

    const-string v1, "onInitCameraMode"

    .line 135
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onInitCameraMode()V

    .line 139
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/h/a;->mOrientation:I

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_camera_time_lapse_rate_key"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/oplus/camera/h/a;->mbAfterInitCameraMode:Z

    return-void
.end method

.method protected onInitializeRecorder(Lcom/oplus/camera/capmode/x;)V
    .locals 0

    .line 870
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onInitializeRecorder(Lcom/oplus/camera/capmode/x;)V

    .line 872
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "set-video-mode=fastvideo"

    .line 873
    invoke-virtual {p1, p0}, Lcom/oplus/camera/capmode/x;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 8

    .line 854
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onMoreModeHidden(I)V

    .line 856
    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/camera/h/a;->mbFrontCamera:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "key_bottom_guide_type_fast_video"

    const/4 v1, 0x1

    .line 858
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 859
    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->h(Z)V

    .line 861
    iget-object p1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1004cf

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZ)V

    :cond_0
    return-void
.end method

.method public onMoreModeShown()V
    .locals 1

    .line 848
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onMoreModeShown()V

    .line 849
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lcom/oplus/camera/h/a;->enableVideoRecordingSound(Z)V

    .line 91
    invoke-direct {p0}, Lcom/oplus/camera/h/a;->isSupportNoneSatUltraWideSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 93
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->at()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_hyper_lapse_zoom_ultra_wide_open"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onPause()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "pref_video_hyper_lapse_key"

    .line 415
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "key_hyper_lapse_zoom_ultra_wide_open"

    const-string v6, "key_bottom_guide_type_fast_video"

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 416
    iget-object v2, v0, Lcom/oplus/camera/h/a;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1004cc

    .line 417
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/h/a;->isSupportNoneSatUltraWideSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 423
    :cond_0
    iget-boolean v1, v0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, v0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v7, v7, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 426
    iget-object v1, v0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 427
    iget-object v8, v0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v9, 0x7f100326

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 429
    iget-object v14, v0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v15, 0x7f1004cf

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v14 .. v21}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZ)V

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/h/a;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fastVideo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v8, v0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v9, 0x7f100325

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 437
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/h/a;->hideHyperLapseView()V

    const-string v1, "com.oplus.feature.wide.angle.open.default"

    .line 439
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    iget-object v1, v0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->an()V

    .line 444
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_4

    .line 445
    iget-object v1, v0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->av()V

    .line 448
    :cond_4
    iget-boolean v1, v0, Lcom/oplus/camera/h/a;->mbHyperLapseOpen:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/oplus/camera/h/a;->mbPaused:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/oplus/camera/h/a;->mPreferences:Landroid/content/SharedPreferences;

    .line 450
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    iget-object v0, v0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->k(I)V

    :cond_5
    return-void

    :cond_6
    const-string v3, "pref_camera_time_lapse_rate_key"

    .line 457
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "10"

    .line 458
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    .line 459
    iget-object v3, v0, Lcom/oplus/camera/h/a;->mSpeedValue:Ljava/lang/String;

    invoke-direct {v0, v7, v3}, Lcom/oplus/camera/h/a;->updateTimeLapseSpeedHint(ZLjava/lang/String;)V

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/h/a;->setFastValueToParameter()V

    .line 463
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/h/a;->isSupportNoneSatUltraWideSupport()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 464
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v3, :cond_8

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/h/a;->isVideoRecording()Z

    move-result v3

    if-nez v3, :cond_8

    .line 467
    iget-object v0, v0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->au()V

    return-void

    .line 471
    :cond_8
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 472
    iget-object v4, v0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v5, 0x7f1004cf

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZ)V

    .line 476
    :cond_9
    invoke-super/range {p0 .. p2}, Lcom/oplus/camera/capmode/w;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStopVideoRecording(Z)V
    .locals 4

    .line 711
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    .line 713
    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/oplus/camera/h/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    :cond_0
    const-wide/16 v1, -0x1

    .line 717
    iput-wide v1, p0, Lcom/oplus/camera/h/a;->mCurrentFrameTime:J

    .line 719
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x6

    const-string v2, "button_color_inside_red"

    const-string v3, "button_shape_dial_rotate"

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 723
    iget-object p0, p0, Lcom/oplus/camera/h/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 2

    .line 821
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    .line 823
    invoke-virtual {p0}, Lcom/oplus/camera/h/a;->isHyperLapseOpen()Z

    move-result p0

    const-string v0, "off"

    if-eqz p0, :cond_0

    .line 824
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->HYPER_LAPSE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "hyper_lapse"

    invoke-virtual {p1, p0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 825
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FOVC_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    goto :goto_0

    .line 827
    :cond_0
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->HYPER_LAPSE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 828
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FOVC_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v0, "on"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/oplus/camera/h/a;->mOrientation:I

    return-void
.end method

.method protected supportBinauralRecord()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
