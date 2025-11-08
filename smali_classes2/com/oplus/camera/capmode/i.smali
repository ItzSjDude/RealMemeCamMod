.class public Lcom/oplus/camera/capmode/i;
.super Lcom/oplus/camera/capmode/d;
.source "GroupShotMode.java"

# interfaces
.implements Lcom/oplus/camera/d;


# instance fields
.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/oplus/camera/capmode/i;->g:I

    return-void
.end method


# virtual methods
.method public getCameraFeature()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "groupshot"

    return-object p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 0

    .line 128
    sget-object p0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_GROUPSHOT_CUSTOM_BEAUTY:[Ljava/lang/String;

    return-object p0
.end method

.method protected getDefaultCommonBeautyValue()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_groupshot_facebeauty_level_menu"

    return-object p0
.end method

.method public getFaceBeautyMenuType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getFaceBeautyModeIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x8801

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 64
    iget p0, p0, Lcom/oplus/camera/capmode/i;->mCameraId:I

    const-string p1, "com.oplus.high.picturesize"

    invoke-static {p1, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getRearEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/capmode/i;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/capmode/i;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/i;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1003ca

    .line 137
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_timer_shutter_key"

    .line 136
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "10"

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "button_shape_countdown_ten_seconds"

    goto :goto_0

    :cond_0
    const-string v0, "3"

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "button_shape_countdown_three_seconds"

    goto :goto_0

    :cond_1
    const-string p0, "button_shape_ring_none"

    .line 146
    :goto_0
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "button_color_inside_none"

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_support_night_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_high_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_front_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_fuji_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "key_support_grand_tour_fitlers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_a
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_b
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_c
    const-string v0, "key_support_insensor_zoom_20x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_e
    const-string v0, "support_focus_out_of_range"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_f
    const-string v0, "pref_support_raw_post_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_10
    const-string v0, "pref_tele_small_preview_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_11
    const-string v0, "func_ais_snapshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 202
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d80482d -> :sswitch_11
        -0x7bb8f589 -> :sswitch_10
        -0x74ade66d -> :sswitch_f
        -0x616206e3 -> :sswitch_e
        -0x5f048920 -> :sswitch_d
        -0x545357a2 -> :sswitch_c
        -0x4c684fe0 -> :sswitch_b
        -0x43b4b28f -> :sswitch_a
        -0x40c9f939 -> :sswitch_9
        -0x289e651d -> :sswitch_8
        -0x5f8f68b -> :sswitch_7
        -0xca2c0f -> :sswitch_6
        -0x861d1b -> :sswitch_5
        0x2537249 -> :sswitch_4
        0xb8585f9 -> :sswitch_3
        0x55733c3f -> :sswitch_2
        0x5f579904 -> :sswitch_1
        0x7d1ae3bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_timer_shutter_key"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_setting_key"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "pref_camera_flashmode_key"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_pi_ai_mode_key"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "pref_macro_switch"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 98
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZSLMode()Z
    .locals 2

    .line 217
    iget v0, p0, Lcom/oplus/camera/capmode/i;->g:I

    const/16 v1, 0x14

    if-ne v1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 221
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZSLMode()Z

    move-result p0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 1

    .line 232
    new-instance p0, Lcom/oplus/camera/af;

    invoke-direct {p0}, Lcom/oplus/camera/af;-><init>()V

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->t(Z)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->b(Z)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->h(Z)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->c(Z)V

    .line 237
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->f(Z)V

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->p(Z)V

    return-object p0
.end method

.method public isFirstTipsEnable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedAPSProcess()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isSalientObjectDetectionEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSuperClearPortraitOpen()Z
    .locals 2

    .line 212
    iget-object p0, p0, Lcom/oplus/camera/capmode/i;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_super_clear_portrait"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/oplus/camera/capmode/i;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/i$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/i$1;-><init>(Lcom/oplus/camera/capmode/i;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/i;->mbCheckTakeAnimateDelay:Z

    const/4 p0, 0x1

    return p0
.end method

.method public onPreviewDecisionResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 1

    .line 226
    iget v0, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    iput v0, p0, Lcom/oplus/camera/capmode/i;->g:I

    .line 227
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onPreviewDecisionResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    return-void
.end method

.method protected onResume(Z)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onResume(Z)V

    return-void
.end method
