.class public Lcom/oplus/camera/ui/menu/setting/n;
.super Ljava/lang/Object;
.source "CameraSettingFactory.java"


# static fields
.field private static a:Lcom/oplus/camera/ui/menu/setting/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/m;

    invoke-direct {v0}, Lcom/oplus/camera/ui/menu/setting/m;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/menu/setting/n;->a:Lcom/oplus/camera/ui/menu/setting/m;

    return-void
.end method

.method public static a(Lcom/oplus/camera/capmode/ModeManager;)Landroid/os/Bundle;
    .locals 3

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pref_camera_countdown_effect_key"

    .line 15
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "pref_camera_tap_shutter_key"

    .line 17
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "pref_lens_dirty_detection_key"

    .line 19
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "pref_camera_gesture_shutter_key"

    .line 21
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bA()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v1

    const-string v2, "key_is_capture_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->k()Z

    move-result v1

    const-string v2, "key_is_video_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_mode_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_ai_scene_key"

    .line 26
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cf()Z

    move-result v1

    const-string v2, "pref_super_clear_portrait"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "pref_face_rectify_key"

    .line 29
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "pref_watermark_function_key"

    .line 32
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->ad()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_full_pic_size_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_raw_key"

    .line 34
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "pref_assist_gradienter"

    .line 35
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "pref_time_lapse_key"

    .line 38
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_high_picture_size"

    .line 40
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bB()I

    move-result v1

    const-string v2, "pref_video_fps_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_support_video_high_fps"

    .line 43
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_support_slow_video_h265"

    .line 45
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "func_video_super_eis_process"

    .line 47
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "pref_video_ratio_key"

    .line 49
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    sget-object v1, Lcom/oplus/camera/ui/menu/setting/n;->a:Lcom/oplus/camera/ui/menu/setting/m;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/camera/ui/menu/setting/m;->a(Lcom/oplus/camera/capmode/ModeManager;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
