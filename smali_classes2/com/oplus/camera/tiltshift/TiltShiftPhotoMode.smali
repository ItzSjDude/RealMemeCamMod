.class public Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;
.super Lcom/oplus/camera/capmode/d;
.source "TiltShiftPhotoMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiltShiftPhotoMode"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    return-void
.end method

.method private getApsCaptureMode()Ljava/lang/String;
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "tiltShift"

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_tilt_shift_filter_index"

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

    const-string v0, "key_photo_mode_filter"

    .line 178
    invoke-virtual {p0, v0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->o:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->b(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 182
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

    const-string v0, "key_photo_mode_filter"

    .line 187
    invoke-virtual {p0, v0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->o:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 4

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "func_tilt_shift"

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_macro_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "key_high_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_camera_pi_ai_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "key_photo_mode_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v0, "pref_tilt_shift_blur_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_a
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_c
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_d
    const-string v0, "func_face_beauty_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_e
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_f
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    return v3

    .line 113
    :pswitch_1
    invoke-direct {p0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getApsCaptureMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 109
    :pswitch_2
    invoke-direct {p0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getApsCaptureMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mCameraId:I

    const-string v1, "aps_algo_hdr"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mCameraId:I

    const-string v0, "aps_algo_merge_hdr"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :cond_2
    :goto_2
    return v2

    .line 106
    :pswitch_3
    invoke-direct {p0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getApsCaptureMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mCameraId:I

    const-string v0, "aps_algo_filter"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_4
    const-string p0, "com.oplus.feature.tilt.shift.fastvideo.support"

    .line 103
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_5
    return v3

    .line 81
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->isTiltShiftOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 76
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 70
    :pswitch_8
    invoke-direct {p0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getApsCaptureMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mCameraId:I

    const-string v1, "aps_algo_tilt_shift"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.oplus.feature.tilt.shift.photo.support"

    .line 71
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 73
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2

    .line 119
    :cond_4
    :goto_4
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64edfd1c -> :sswitch_f
        -0x5efa20f1 -> :sswitch_e
        -0x500c4e2d -> :sswitch_d
        -0x4c684fe0 -> :sswitch_c
        -0x4c0c0f25 -> :sswitch_b
        -0x3f608456 -> :sswitch_a
        -0x3940422c -> :sswitch_9
        -0x2257ced9 -> :sswitch_8
        -0xdae10b4 -> :sswitch_7
        -0x5f8f68b -> :sswitch_6
        0x2537249 -> :sswitch_5
        0x1073c1f2 -> :sswitch_4
        0x55733c3f -> :sswitch_3
        0x590e13a3 -> :sswitch_2
        0x5f579904 -> :sswitch_1
        0x74ed85e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_setting_key"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_photo_ratio_key"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "pref_subsetting_key"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_macro_switch"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method protected isBlurOpen()Z
    .locals 1

    const-string v0, "func_tilt_shift"

    .line 200
    invoke-virtual {p0, v0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getSupportFunction(Ljava/lang/String;)Z

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

    .line 124
    invoke-virtual {p0, v0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isTiltShiftSupportBeauty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onBeforePreview()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBeforePreview()V

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->TILT_SHIFT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->isTiltShiftOpen()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    .line 171
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p1

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mbCheckTakeAnimateDelay:Z

    return p1
.end method

.method protected updateCaptureParam(Lcom/oplus/camera/e/c;)V
    .locals 7

    .line 145
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->updateCaptureParam(Lcom/oplus/camera/e/c;)V

    .line 147
    iget-object p1, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aM()Lcom/oplus/camera/tiltshift/TiltShiftParam;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 151
    new-array v1, v0, [F

    invoke-virtual {p1}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->getCenterX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->getCenterY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p1}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->isCircle()Z

    move-result v2

    xor-int/2addr v2, v4

    .line 153
    invoke-virtual {p1}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->getPreviewSize()Landroid/util/Size;

    move-result-object v5

    .line 154
    new-array v0, v0, [I

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    aput v6, v0, v3

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v3

    aput v3, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "previewSize"

    .line 157
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->getTiltShiftBlurIndex()I

    move-result v0

    const-string v4, "blurValue"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "centerPosition"

    .line 160
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->getInnerDistance()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearDistance"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->getAngle()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v0, "rotateAngle"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->TILT_SHIFT_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, p1, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
