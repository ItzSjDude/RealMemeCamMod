.class public Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;
.super Lcom/oplus/camera/h/a;
.source "TiltShiftFastVideoMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiltShiftFastVideoMode"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/h/a;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    return-void
.end method


# virtual methods
.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "tiltShiftFastVideo"

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 7

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "func_tilt_shift"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "pref_video_hyper_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "pref_fast_video_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_2
    const-string v0, "func_video_hyper_lapse_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "pref_tilt_shift_blur_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v6, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 69
    invoke-super {p0, p1}, Lcom/oplus/camera/h/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 66
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    return v5

    :cond_3
    const-string p1, "com.oplus.feature.tilt.shift.fastvideo.support"

    .line 54
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 56
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c0c0f25 -> :sswitch_4
        -0x3940422c -> :sswitch_3
        0x3656454b -> :sswitch_2
        0x62dace8c -> :sswitch_1
        0x69bbb15a -> :sswitch_0
    .end sparse-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_fast_video_size_key"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/h/a;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isShowUltraWide()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isTiltShiftOpen()Z
    .locals 1

    const-string v0, "func_tilt_shift"

    .line 87
    invoke-virtual {p0, v0}, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isVideoTimeLapseTiltShiftOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onInitCameraMode()V
    .locals 3

    const-string v0, "TiltShiftFastVideoMode"

    const-string v1, "onInitCameraMode"

    .line 31
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;->isHyperLapseOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_hyper_lapse_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/h/a;->onInitCameraMode()V

    return-void
.end method

.method protected updateVideoTypeExif(Ljava/io/File;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;->getVideoFileExifTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/g/b;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/g/b;->a(Ljava/io/File;[B)V

    return-void
.end method
