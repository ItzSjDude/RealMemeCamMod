.class public Lcom/oplus/camera/capmode/u;
.super Lcom/oplus/camera/capmode/d;
.source "SuperTextMode.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    return-void
.end method


# virtual methods
.method public getCameraFeature()Ljava/lang/String;
    .locals 2

    .line 161
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/u;->mbDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_0
    iget v0, p0, Lcom/oplus/camera/capmode/u;->mCameraId:I

    const-string v1, "superText"

    invoke-static {v1, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCameraFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/u;->isSatOpen()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.oplus.sat.use.hal"

    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "commonSatHal"

    return-object p0

    :cond_2
    const-string p0, "common"

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "superText"

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const-string p0, "com.oplus.feature.super.text.scanner.support"

    .line 34
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x80a6

    return p0

    :cond_0
    const p0, 0x8001

    return p0
.end method

.method public getPreferredScreenMode(I)Lcom/oplus/camera/screen/f$a;
    .locals 0

    .line 212
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    if-nez p0, :cond_0

    .line 213
    sget-object p0, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    return-object p0

    :cond_0
    const/16 p0, 0x10e

    if-ne p0, p1, :cond_1

    .line 217
    sget-object p0, Lcom/oplus/camera/screen/f$a;->full90:Lcom/oplus/camera/screen/f$a;

    return-object p0

    :cond_1
    const/16 p0, 0x5a

    if-ne p0, p1, :cond_2

    .line 219
    sget-object p0, Lcom/oplus/camera/screen/f$a;->full270:Lcom/oplus/camera/screen/f$a;

    return-object p0

    .line 221
    :cond_2
    sget-object p0, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    return-object p0
.end method

.method public getRearEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    const-string v0, "button_shape_ring_none"

    .line 104
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_suppport_multi_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_macro_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "key_high_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_face_detection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "func_out_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_qr_code_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "pref_front_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "pref_fuji_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "func_out_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "func_out_preview_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "key_support_grand_tour_fitlers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_14
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_15
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_16
    const-string v0, "pref_setting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_17
    const-string v0, "key_support_insensor_zoom_20x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_18
    const-string v0, "pref_super_clear_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_19
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_1a
    const-string v0, "key_show_pull_down_tip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_1b
    const-string v0, "pref_tele_small_preview_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "com.oplus.feature.auto.micro"

    .line 119
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 116
    :pswitch_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_3
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f589 -> :sswitch_1b
        -0x717ea7aa -> :sswitch_1a
        -0x5efa20f1 -> :sswitch_19
        -0x566a0cd3 -> :sswitch_18
        -0x545357a2 -> :sswitch_17
        -0x541be82c -> :sswitch_16
        -0x4c684fe0 -> :sswitch_15
        -0x43b4b28f -> :sswitch_14
        -0x40c9f939 -> :sswitch_13
        -0x30f7a71d -> :sswitch_12
        -0x289e651d -> :sswitch_11
        -0xdae10b4 -> :sswitch_10
        -0xc607924 -> :sswitch_f
        -0xb0f5f67 -> :sswitch_e
        -0x5f8f68b -> :sswitch_d
        -0xca2c0f -> :sswitch_c
        -0x861d1b -> :sswitch_b
        0x2537249 -> :sswitch_a
        0x67d194f -> :sswitch_9
        0x27866a5a -> :sswitch_8
        0x3f50f6f7 -> :sswitch_7
        0x408542df -> :sswitch_6
        0x55733c3f -> :sswitch_5
        0x590e13a3 -> :sswitch_4
        0x5f579904 -> :sswitch_3
        0x601dc156 -> :sswitch_2
        0x65b53143 -> :sswitch_1
        0x75ca6ab5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
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

    const-string v0, "pref_camera_flashmode_key"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_photo_ratio_key"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_setting_key"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_subsetting_key"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/u;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "pref_macro_switch"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/u;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 76
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
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

.method public isSuperTextOpen()Z
    .locals 1

    const-string v0, "func_super_text"

    .line 98
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/u;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/capmode/u;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    .line 227
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p1

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/u;->mbCheckTakeAnimateDelay:Z

    return p1
.end method

.method protected onInitCameraMode()V
    .locals 2

    const-string v0, "SuperTextMode"

    const-string v1, "onInitCameraMode"

    .line 81
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/capmode/u;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ac()V

    .line 84
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onInitCameraMode()V

    return-void
.end method

.method public setPIEnable(IZ)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/capmode/u;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPIEnable, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperTextMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12

    if-ne v0, p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/oplus/camera/capmode/u;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, p2}, Lcom/oplus/camera/e/d;->B(Z)V

    .line 201
    iget-object p0, p0, Lcom/oplus/camera/capmode/u;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_1
    return-void
.end method
