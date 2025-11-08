.class public Lcom/oplus/camera/capmode/v;
.super Lcom/oplus/camera/capmode/d;
.source "UltraHighResolutionMode.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 204
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/v;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 205
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v2, 0x4

    .line 206
    iput v2, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 207
    iget v2, p0, Lcom/oplus/camera/capmode/v;->mCameraId:I

    invoke-static {p1, v2}, Lcom/oplus/camera/ui/preview/a/j;->b(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 209
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/v;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 211
    iget-object p1, p0, Lcom/oplus/camera/capmode/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 212
    iget p0, p0, Lcom/oplus/camera/capmode/v;->mOrientation:I

    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 214
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method


# virtual methods
.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "ultraHD"

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_filter_menu"

    .line 151
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "key_ultra_high_resolution_filter_index"

    return-object p0

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    .line 58
    invoke-static {}, Lcom/oplus/camera/util/Util;->av()Z

    move-result p0

    return p0
.end method

.method public getHeicCodecFormat()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getHintTextId()I
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/capmode/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/oplus/camera/capmode/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    const-string v2, "pref_switch_camera_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f10042f

    .line 280
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_0
    const-string v1, "camera_ultra_wide"

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    iget-object p0, p0, Lcom/oplus/camera/capmode/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->n()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    const p0, 0x7f100434

    .line 283
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_1
    const p0, 0x7f100435

    .line 285
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_2
    const-string p0, "camera_tele"

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f100432

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method protected getPhotoRatio()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object p0, p0, Lcom/oplus/camera/capmode/v;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1002da

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    const/16 p0, 0x100

    .line 244
    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 5

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "pref_filter_menu"

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_suppport_multi_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "key_high_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "key_support_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_switch_camera_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_camera_pi_ai_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_qr_code_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "pref_front_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "pref_fuji_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "key_support_grand_tour_fitlers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "pref_slogan_owner_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_11
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_12
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_13
    const-string v0, "pref_setting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_14
    const-string v0, "pref_super_clear_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_15
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_16
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_17
    const-string v0, "pref_tele_small_preview_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_18
    const-string v0, "func_ais_snapshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v4, "com.oplus.feature.ultra.high.resolution.full.zoom.support"

    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 113
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 110
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/v;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/v;->mCameraId:I

    const-string v0, "aps_algo_filter"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 104
    :pswitch_2
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/v;->mbFrontCamera:Z

    if-nez p1, :cond_1

    .line 105
    invoke-static {}, Lcom/oplus/camera/e/a;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 106
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 107
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    return v2

    .line 101
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/v;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/v;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 97
    :pswitch_4
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.oplus.ultra.high.resolution.switch.camera.support"

    .line 98
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move v2, v3

    :goto_3
    return v2

    .line 93
    :pswitch_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->av()Z

    move-result p0

    return p0

    :pswitch_6
    return v2

    :pswitch_7
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d80482d -> :sswitch_18
        -0x7bb8f589 -> :sswitch_17
        -0x5f048920 -> :sswitch_16
        -0x5efa20f1 -> :sswitch_15
        -0x566a0cd3 -> :sswitch_14
        -0x541be82c -> :sswitch_13
        -0x4c684fe0 -> :sswitch_12
        -0x43b4b28f -> :sswitch_11
        -0x41bfebb2 -> :sswitch_10
        -0x40c9f939 -> :sswitch_f
        -0xdae10b4 -> :sswitch_e
        -0x5f8f68b -> :sswitch_d
        -0xca2c0f -> :sswitch_c
        -0x861d1b -> :sswitch_b
        0x2537249 -> :sswitch_a
        0x67d194f -> :sswitch_9
        0xb8585f9 -> :sswitch_8
        0x1073c1f2 -> :sswitch_7
        0x2de4b514 -> :sswitch_6
        0x51f99d59 -> :sswitch_5
        0x55733c3f -> :sswitch_4
        0x5f579904 -> :sswitch_3
        0x601dc156 -> :sswitch_2
        0x74ed85e4 -> :sswitch_1
        0x7e1951aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
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

    const-string v0, "pref_camera_timer_shutter_key"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "pref_switch_camera_key"

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "pref_subsetting_key"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "pref_macro_switch"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 141
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getUltraPictureSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 2

    .line 249
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 251
    invoke-static {p0, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getZSLMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/v;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    return-object p0

    .line 264
    :cond_0
    new-instance v0, Lcom/oplus/camera/af;

    invoke-direct {v0}, Lcom/oplus/camera/af;-><init>()V

    .line 265
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/v;->isCaptureModeType()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->a(Z)V

    const/4 v1, 0x0

    .line 266
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->b(Z)V

    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->s(Z)V

    const-string v1, "pref_switch_camera_key"

    .line 268
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->h(Z)V

    return-object v0
.end method

.method public isFirstTipsEnable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isNightAlgoCaptureTriggered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSalientObjectDetectionEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUltraHighResolutionOpened()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 1

    .line 297
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onAfterStartPreview(Z)V

    .line 299
    iget-object p1, p0, Lcom/oplus/camera/capmode/v;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/oplus/camera/capmode/v;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->v(Z)V

    .line 301
    iget-object p0, p0, Lcom/oplus/camera/capmode/v;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    .line 327
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p1

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/v;->mbCheckTakeAnimateDelay:Z

    return p1
.end method

.method public onFilterItemChange(I)V
    .locals 0

    .line 188
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onFilterItemChange(I)V

    .line 190
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/v;->a(I)V

    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 3

    .line 225
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v1, "pref_filter_process_key"

    .line 233
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/v;->getCurrFilterIndex()I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/capmode/v;->mCameraId:I

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/j;->b(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mFilterType:Ljava/lang/String;

    .line 237
    :cond_2
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

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    iget p1, p0, Lcom/oplus/camera/capmode/v;->mCameraId:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/capmode/v;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 172
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

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 183
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected onInitCameraMode()V
    .locals 3

    .line 195
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/v;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/capmode/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "off"

    const-string v2, "pref_camera_flashmode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/v;->updateFlashState(Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onInitCameraMode()V

    return-void
.end method

.method public updateInversePositionRatio(Z)V
    .locals 2

    .line 218
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/capmode/v;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->setPositionRatio(Landroid/content/Context;FZ)V

    return-void
.end method
