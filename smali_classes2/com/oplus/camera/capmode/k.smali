.class public Lcom/oplus/camera/capmode/k;
.super Lcom/oplus/camera/capmode/d;
.source "HighPixelMode.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/capmode/k;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/k;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/k;->mActivity:Landroid/app/Activity;

    const v1, 0x7f10008b

    .line 242
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_ai_high_pixel_key"

    .line 241
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


# virtual methods
.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "highPixel"

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHighPictureSizeHint()I
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/oplus/camera/capmode/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f100077

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getHighPictureSizeHint()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/k;->mbDestroyed:Z

    if-nez v0, :cond_0

    const-string v0, "key_high_picture_size"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/k;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget p0, p0, Lcom/oplus/camera/capmode/k;->mCameraId:I

    const-string p1, "com.oplus.high.picturesize"

    invoke-static {p1, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 212
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_suppport_multi_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "key_support_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_camera_pi_ai_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_ultra_wide_high_picture_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_qr_code_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "pref_front_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_fuji_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "high_resolution_cancel_snapshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "pref_face_rectify_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "pref_camera_ai_high_pixel_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "key_support_grand_tour_fitlers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "pref_slogan_owner_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_15
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_16
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_17
    const-string v0, "pref_setting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_18
    const-string v0, "pref_super_clear_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_19
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_1a
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_1b
    const-string v0, "pref_tele_small_preview_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_1c
    const-string v0, "func_ais_snapshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 99
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 93
    :pswitch_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/k;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    const-string p1, "com.oplus.face.rectify.support"

    .line 89
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/oplus/camera/capmode/k;->a()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    .line 86
    :pswitch_2
    invoke-direct {p0}, Lcom/oplus/camera/capmode/k;->a()Z

    move-result p0

    return p0

    :pswitch_3
    return v1

    :pswitch_4
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7d80482d -> :sswitch_1c
        -0x7bb8f589 -> :sswitch_1b
        -0x5f048920 -> :sswitch_1a
        -0x5efa20f1 -> :sswitch_19
        -0x566a0cd3 -> :sswitch_18
        -0x541be82c -> :sswitch_17
        -0x4c684fe0 -> :sswitch_16
        -0x43b4b28f -> :sswitch_15
        -0x41bfebb2 -> :sswitch_14
        -0x40c9f939 -> :sswitch_13
        -0x3a3d343e -> :sswitch_12
        -0x3959800e -> :sswitch_11
        -0xdae10b4 -> :sswitch_10
        -0xd09a2ed -> :sswitch_f
        -0x5f8f68b -> :sswitch_e
        -0xca2c0f -> :sswitch_d
        -0x861d1b -> :sswitch_c
        0x2537249 -> :sswitch_b
        0x67d194f -> :sswitch_a
        0x807bae2 -> :sswitch_9
        0xb8585f9 -> :sswitch_8
        0x1073c1f2 -> :sswitch_7
        0x140b168f -> :sswitch_6
        0x1e7c3c3e -> :sswitch_5
        0x51f99d59 -> :sswitch_4
        0x5f579904 -> :sswitch_3
        0x601dc156 -> :sswitch_2
        0x74ed85e4 -> :sswitch_1
        0x7e1951aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_camera_ai_high_pixel_key"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_camera_high_resolution_key"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "pref_camera_timer_shutter_key"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "pref_switch_camera_key"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const-string v0, "pref_subsetting_key"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const-string v0, "pref_macro_switch"

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 133
    :cond_5
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZSLMode()Z
    .locals 1

    .line 237
    invoke-direct {p0}, Lcom/oplus/camera/capmode/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZSLMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighPictureSize()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUltraWideHighPictureSize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 2

    .line 199
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onAfterStartPreview(Z)V

    .line 201
    invoke-direct {p0}, Lcom/oplus/camera/capmode/k;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p0, p0, Lcom/oplus/camera/capmode/k;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p1, 0x7f100078

    const/16 v0, 0xaf0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    .line 259
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 260
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/k;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "50M"

    goto :goto_1

    :cond_2
    const-string v1, "off"

    :goto_1
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mAiHighPixel:Ljava/lang/String;

    .line 268
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    return-object p1
.end method

.method public onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_camera_flashmode_key"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    iget p1, p0, Lcom/oplus/camera/capmode/k;->mCameraId:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/capmode/k;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "on"

    .line 157
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 166
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected onInitCameraMode()V
    .locals 3

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/k;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oplus/camera/capmode/k;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "off"

    const-string v2, "pref_camera_flashmode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/k;->updateFlashState(Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onInitCameraMode()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "pref_camera_ai_high_pixel_key"

    .line 171
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/oplus/camera/capmode/k;->mActivity:Landroid/app/Activity;

    const v2, 0x7f10008b

    .line 173
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/capmode/k;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1002dc

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/k;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100078

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/capmode/k;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100077

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 184
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 2

    .line 227
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/capmode/k;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/k;->mActivity:Landroid/app/Activity;

    const v1, 0x7f10008b

    .line 230
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_ai_high_pixel_key"

    .line 229
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 231
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->AI_HIGH_PIXEL_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v0, p0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    return-void
.end method

.method public shouldShowSteadyTips()Z
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/oplus/camera/capmode/k;->a()Z

    move-result p0

    return p0
.end method
