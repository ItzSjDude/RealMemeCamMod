.class public Lcom/oplus/camera/p/b;
.super Lcom/oplus/camera/capmode/e;
.source "QuickVideoMode.java"


# instance fields
.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/app/Activity;

.field private l:Z

.field private m:J

.field private n:Z

.field private final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/oplus/camera/p/b;->g:I

    const-string p3, "off"

    .line 38
    iput-object p3, p0, Lcom/oplus/camera/p/b;->h:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/oplus/camera/p/b;->i:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/oplus/camera/p/b;->j:Ljava/lang/String;

    const/4 p3, 0x0

    .line 41
    iput-object p3, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    .line 42
    iput-boolean p2, p0, Lcom/oplus/camera/p/b;->l:Z

    const-wide/16 p3, 0x0

    .line 43
    iput-wide p3, p0, Lcom/oplus/camera/p/b;->m:J

    .line 44
    iput-boolean p2, p0, Lcom/oplus/camera/p/b;->n:Z

    .line 72
    new-instance p2, Lcom/oplus/camera/p/-$$Lambda$b$w7uqxdhNf0vfzEdb5qD5evRz1tI;

    invoke-direct {p2, p0}, Lcom/oplus/camera/p/-$$Lambda$b$w7uqxdhNf0vfzEdb5qD5evRz1tI;-><init>(Lcom/oplus/camera/p/b;)V

    iput-object p2, p0, Lcom/oplus/camera/p/b;->o:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    return-void
.end method

.method private b(Landroid/util/Size;)V
    .locals 3

    const-string v0, "QuickVideoMode"

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/camera/p/b;->m()Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/p/b;->mProfile:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 305
    iput-object v2, p0, Lcom/oplus/camera/p/b;->mProfile:Landroid/media/CamcorderProfile;

    const-string v2, "initProfile, CamcorderProfile.get fail! "

    .line 307
    invoke-static {v0, v2, v1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 312
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initProfile, record width: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/p/b;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", record height: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/p/b;->mProfile:Landroid/media/CamcorderProfile;

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 2

    const-string v0, "com.oplus.feature.quick.video.ois.config.support"

    .line 446
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object p0, p0, Lcom/oplus/camera/p/b;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$w7uqxdhNf0vfzEdb5qD5evRz1tI(Lcom/oplus/camera/p/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/p/b;->n()V

    return-void
.end method

.method private m()Landroid/media/CamcorderProfile;
    .locals 2

    .line 323
    :try_start_0
    iget v0, p0, Lcom/oplus/camera/p/b;->mCameraId:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget p0, p0, Lcom/oplus/camera/p/b;->mCameraId:I

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    goto :goto_0

    .line 326
    :cond_0
    iget p0, p0, Lcom/oplus/camera/p/b;->mCameraId:I

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 329
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "QuickVideoMode"

    const-string v0, "get CamcorderProfile fail"

    .line 331
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private synthetic n()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->onVideoShutterButtonClick()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Size;)V
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/oplus/camera/p/b;->b(I)V

    .line 104
    invoke-direct {p0, p1}, Lcom/oplus/camera/p/b;->b(Landroid/util/Size;)V

    .line 105
    iget-object p0, p0, Lcom/oplus/camera/p/b;->mWaitRecordStarted:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->close()V

    return-void
.end method

.method protected b(I)V
    .locals 3

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalQuickVideoState state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0, p1}, Lcom/oplus/camera/p/b;->c(I)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->setHalStatus(I)V

    .line 439
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->B(Z)V

    .line 440
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->QUICK_VIDEO_RECORD_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-ne v1, p1, :cond_1

    const-string p1, "on"

    goto :goto_1

    :cond_1
    const-string p1, "off"

    :goto_1
    invoke-interface {v0, v2, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 442
    iget-object p0, p0, Lcom/oplus/camera/p/b;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method protected f()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecordStopped()Z

    move-result v0

    const-string v1, "QuickVideoMode"

    if-nez v0, :cond_0

    const-string p0, "mMediaRecorderState is not RECORD_STOPPED, so return"

    .line 78
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "startQuickVideoRecording"

    .line 83
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    const/high16 v1, -0x40800000    # -1.0f

    const-string v2, "key_cur_temperature"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/p/b;->mRecordingStartTemperature:F

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/p/b;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/p/b;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 92
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/oplus/camera/p/b;->mbDisplayOnLock:Z

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->K(Z)V

    goto :goto_0

    .line 96
    :cond_1
    iput-boolean v1, p0, Lcom/oplus/camera/p/b;->mbDisplayOnLock:Z

    .line 99
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/p/b;->mbDisplayOnLock:Z

    invoke-virtual {p0, v0}, Lcom/oplus/camera/p/b;->setDisplayOnLock(Z)V

    return-void
.end method

.method public forceStopVideoRecording(Z)V
    .locals 0

    .line 202
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->forceStopVideoRecording(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->k()V

    return-void
.end method

.method public g()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/p/b;->g:I

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 5

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7336bb70

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x48d5427c

    if-eq v0, v1, :cond_1

    const v1, 0x61c11dc9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_quick_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v0, "pref_inertial_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "key_support_show_dim_hint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_4

    .line 163
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    const-string p1, "pref_camera_videoflashmode_key"

    .line 156
    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRetentionOpen()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    const-string p1, "pref_camera_torch_mode_key"

    .line 157
    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :cond_7
    :goto_2
    return v3

    .line 145
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_a

    const-string p1, "com.oplus.quick.video.support"

    .line 147
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 148
    iget-object p1, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    const v0, 0x7f10035a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_long_process_choice_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v3, v4

    :goto_3
    return v3

    :cond_a
    return v4
.end method

.method protected h()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecordStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mWaitRecordStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecordStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/p/b;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string v0, "QuickVideoMode"

    const-string v1, "stopQuickRecording"

    .line 133
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->onVideoShutterButtonClick()V

    return-void
.end method

.method public i()Lcom/oplus/camera/ui/control/b;
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "button_shape_ring_none"

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    const v2, 0x7f1003ca

    .line 283
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "pref_camera_timer_shutter_key"

    .line 282
    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "10"

    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "button_shape_countdown_ten_seconds"

    goto :goto_0

    :cond_0
    const-string v0, "3"

    .line 287
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v1, "button_shape_countdown_three_seconds"

    .line 294
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p0

    const/4 v0, 0x0

    const-string v2, "button_color_inside_none"

    if-eqz p0, :cond_2

    new-instance p0, Lcom/oplus/camera/ui/control/b;

    const/16 v3, 0x17

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 295
    :cond_2
    new-instance p0, Lcom/oplus/camera/ui/control/b;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-object p0
.end method

.method public isCommonVideoMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isUseMediaCodec()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public j()V
    .locals 7

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/oplus/camera/p/b;->n:Z

    .line 344
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 345
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->aD()V

    .line 346
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->L(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->showRecordingTimeUI()V

    .line 348
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->L()V

    .line 350
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_camera_pi_ai_mode_key"

    const-string v4, "off"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    iput-object v5, p0, Lcom/oplus/camera/p/b;->h:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oplus/camera/p/b;->mCameraId:I

    const-string v6, "pref_camera_hdr_mode_key"

    .line 356
    invoke-static {v6, v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/p/b;->j:Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0, v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 360
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->ab()V

    .line 361
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100479

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 362
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Z)V

    .line 363
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    .line 364
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100480

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 363
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "func_torch_soft_light"

    .line 367
    invoke-virtual {p0, v1}, Lcom/oplus/camera/p/b;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 368
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    iput-object v0, p0, Lcom/oplus/camera/p/b;->i:Ljava/lang/String;

    .line 370
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3, v3}, Lcom/oplus/camera/ui/inverse/e;->setInverseColor(Landroid/content/Context;ZZ)V

    .line 371
    iget-object p0, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    return-void
.end method

.method public k()V
    .locals 11

    .line 376
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/p/b;->h:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "off"

    if-eqz v0, :cond_1

    .line 381
    iput-object v2, p0, Lcom/oplus/camera/p/b;->h:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_camera_pi_ai_mode_key"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->w()V

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->N()V

    const/4 v0, 0x0

    .line 387
    invoke-static {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setIsQuickVideoStartedByShutterButtonLongClick(Z)V

    .line 388
    invoke-static {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLongPressState(Z)V

    .line 389
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->aa()I

    .line 391
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->j()I

    move-result v3

    const/16 v4, 0x12

    if-ne v4, v3, :cond_2

    .line 392
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->m(I)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->T()V

    .line 397
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/p/b;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 398
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/p/b;->j:Ljava/lang/String;

    const-string v5, "pref_camera_hdr_mode_key"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    iput-object v2, p0, Lcom/oplus/camera/p/b;->j:Ljava/lang/String;

    .line 402
    :cond_3
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_high_picture_size"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/oplus/camera/p/b;->mCameraId:I

    .line 403
    invoke-static {v3}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 404
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->getDisplayHighPictureSize()D

    move-result-wide v5

    .line 405
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1002dc

    const v8, 0x7f0805e9

    const v9, 0x7f0604ff

    new-array v10, v4, [Ljava/lang/Object;

    .line 407
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v10, v0

    .line 405
    invoke-interface {v3, v7, v8, v9, v10}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    .line 410
    :cond_4
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->aC()V

    .line 411
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 412
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->stopShutterButtonProgress()V

    .line 414
    iget-object v3, p0, Lcom/oplus/camera/p/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/oplus/camera/p/b;->i:Ljava/lang/String;

    const-string v5, "auto"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, "func_torch_soft_light"

    .line 415
    invoke-virtual {p0, v3}, Lcom/oplus/camera/p/b;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 416
    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v3

    invoke-static {v3}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 417
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/p/b;->i:Ljava/lang/String;

    const-string v6, "pref_camera_torch_mode_key"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    sget-object v3, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v5, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    iget-object v6, p0, Lcom/oplus/camera/p/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v5, v1, v0}, Lcom/oplus/camera/ui/inverse/e;->setInverseColor(Landroid/content/Context;ZZ)V

    .line 419
    iput-object v2, p0, Lcom/oplus/camera/p/b;->i:Ljava/lang/String;

    .line 422
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 423
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v4, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->m(ZZ)V

    .line 426
    :cond_7
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v4, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 427
    iput-boolean v0, p0, Lcom/oplus/camera/p/b;->n:Z

    :cond_8
    :goto_1
    return-void
.end method

.method public l()Z
    .locals 0

    .line 431
    iget-boolean p0, p0, Lcom/oplus/camera/p/b;->n:Z

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 0

    .line 225
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/e;->onAfterPictureTaken([BZ)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->k()V

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aC()V

    .line 197
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 0

    .line 220
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/e;->onBeforePictureTaken([BZ)V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p0

    return p0
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 250
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    if-eqz v1, :cond_0

    .line 251
    move-object v1, p1

    check-cast v1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "com.oplus.quick.video.support"

    .line 258
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "quickVideo"

    .line 259
    iput-object v0, v1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCaptureMode:Ljava/lang/String;

    .line 260
    iput-object v0, v1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoMode:Ljava/lang/String;

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    iget-boolean v0, p0, Lcom/oplus/camera/p/b;->l:Z

    if-eqz v0, :cond_3

    .line 265
    iget-wide v2, p0, Lcom/oplus/camera/p/b;->mRecordingTotalTime:J

    iget-wide v4, p0, Lcom/oplus/camera/p/b;->m:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mLockingTime:J

    .line 266
    iput-wide v4, v1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mHoldingTime:J

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/oplus/camera/p/b;->l:Z

    goto :goto_1

    .line 269
    :cond_3
    iget-wide v2, p0, Lcom/oplus/camera/p/b;->mRecordingTotalTime:J

    iput-wide v2, v1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mHoldingTime:J

    .line 273
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    return-object p1
.end method

.method protected onPause()V
    .locals 0

    .line 188
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onPause()V

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->k()V

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 0

    .line 230
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/e;->onShutterCallback(ZZ)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onVideoTemperatureThresholdChanged(I)V
    .locals 9

    .line 168
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecording()Z

    move-result v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoTemperatureThresholdChanged, isVideoRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", thresholdLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickVideoMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 174
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const-string p1, "onVideoTemperatureThresholdChanged, stop quick video recording because of high temperature"

    .line 176
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f100407

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 180
    iget-object p1, p0, Lcom/oplus/camera/p/b;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->d(I)V

    const-string p1, "count_down_to_stop"

    .line 181
    iput-object p1, p0, Lcom/oplus/camera/p/b;->mEndType:Ljava/lang/String;

    const-string p1, "disable_code"

    const-string v0, "temp_stop_all_video"

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/p/b;->reportReminderToDcs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHalStatus(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/oplus/camera/p/b;->g:I

    return-void
.end method

.method protected setQuickVideoBeforeLockTime(Z)V
    .locals 2

    .line 242
    iget-wide v0, p0, Lcom/oplus/camera/p/b;->mRecordingTotalTime:J

    iput-wide v0, p0, Lcom/oplus/camera/p/b;->m:J

    .line 243
    iput-boolean p1, p0, Lcom/oplus/camera/p/b;->l:Z

    return-void
.end method

.method protected setVideoRecordState(I)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->setVideoRecordState(I)V

    return-void
.end method

.method protected showRecordingTimeUI()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->getRealVideoTimeRatio()Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/p/b;->k:Landroid/app/Activity;

    .line 209
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070a1e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 210
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->needShowVideoTime()Z

    move-result p0

    const/4 v3, 0x1

    .line 208
    invoke-interface {v0, v1, v2, p0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/Float;IZZ)V

    return-void
.end method

.method protected startShutterButtonProgress()V
    .locals 0

    .line 215
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->startShutterButtonProgress()V

    return-void
.end method

.method protected stopShutterButtonProgress()V
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->i()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/oplus/camera/p/b;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 237
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->stopShutterButtonProgress()V

    return-void
.end method
