.class public Lcom/oplus/camera/capmode/l;
.super Lcom/oplus/camera/capmode/d;
.source "IdPhotoMode.java"


# instance fields
.field private g:I

.field private h:I

.field private i:J

.field private j:J

.field private k:Z

.field private l:I

.field private m:Landroid/os/Handler;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/oplus/camera/capmode/l;->g:I

    .line 53
    iput p1, p0, Lcom/oplus/camera/capmode/l;->h:I

    const-wide/16 p2, 0x0

    .line 54
    iput-wide p2, p0, Lcom/oplus/camera/capmode/l;->i:J

    .line 55
    iput-wide p2, p0, Lcom/oplus/camera/capmode/l;->j:J

    .line 56
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/l;->k:Z

    .line 57
    iput p1, p0, Lcom/oplus/camera/capmode/l;->l:I

    const/4 p2, 0x0

    .line 58
    iput-object p2, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    .line 59
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/l;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/l;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oplus/camera/capmode/l;->h:I

    return p0
.end method

.method private a(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const-string p1, "no_face"

    goto :goto_0

    :pswitch_2
    const-string p1, "flash_on"

    goto :goto_0

    :pswitch_3
    const-string p1, "more_face"

    .line 390
    :goto_0
    new-instance v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/l;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/statistics/model/ReminderMsgData;-><init>(Landroid/content/Context;Z)V

    .line 392
    iget-object v1, p0, Lcom/oplus/camera/capmode/l;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/oplus/camera/capmode/l;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraId:I

    .line 396
    :cond_0
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    .line 397
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/l;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCaptureMode:Ljava/lang/String;

    .line 398
    iget p1, p0, Lcom/oplus/camera/capmode/l;->mOrientation:I

    iput p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mOrientation:I

    const-string p1, "advice"

    .line 399
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderTypeValue:Ljava/lang/String;

    .line 400
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/l;->mbFrontCamera:Z

    if-eqz p0, :cond_1

    const-string p0, "front"

    goto :goto_1

    :cond_1
    const-string p0, "rear"

    :goto_1
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mRearOrFront:Ljava/lang/String;

    .line 401
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/ReminderMsgData;->report()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001fa
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(IZI)V
    .locals 10

    .line 423
    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/capmode/l;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/capmode/l;->i:J

    .line 425
    iget-wide v0, p0, Lcom/oplus/camera/capmode/l;->i:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/capmode/l;->j:J

    .line 426
    iput p1, p0, Lcom/oplus/camera/capmode/l;->h:I

    .line 427
    iget-object v2, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v3, p1

    move v5, p2

    invoke-interface/range {v2 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZ)V

    :cond_0
    return-void
.end method

.method private a(IZII)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 363
    iput v1, v0, Landroid/os/Message;->what:I

    .line 364
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 365
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 366
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    int-to-long p1, p3

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/l;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/l;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/l;IZI)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/l;->a(IZI)V

    return-void
.end method

.method private a()Z
    .locals 5

    .line 405
    iget v0, p0, Lcom/oplus/camera/capmode/l;->g:I

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f1001fe

    .line 406
    invoke-direct {p0, v0, v4, v3, v2}, Lcom/oplus/camera/capmode/l;->a(IZII)V

    return v1

    :cond_0
    if-le v0, v4, :cond_1

    const v0, 0x7f1001fb

    .line 410
    invoke-direct {p0, v0, v4, v3, v2}, Lcom/oplus/camera/capmode/l;->a(IZII)V

    return v1

    :cond_1
    return v4
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/l;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/l;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/l;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/oplus/camera/capmode/l;->h:I

    return p1
.end method

.method private b()V
    .locals 6

    .line 432
    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 433
    iput v1, v0, Landroid/os/Message;->what:I

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oplus/camera/capmode/l;->i:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    .line 442
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 552
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/l;->mbPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_bottom_guide_type_id_photo"

    .line 554
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 555
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$7r-zgZmBNCoqD1744u2G_LH-TuI(Lcom/oplus/camera/capmode/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/l;->c()V

    return-void
.end method


# virtual methods
.method public beforeSwitchCamera()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->beforeSwitchCamera()V

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/l;->n:Z

    .line 289
    iget v0, p0, Lcom/oplus/camera/capmode/l;->h:I

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/oplus/camera/capmode/l;->b()V

    .line 291
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected checkPreviewResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 606
    iget p0, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 0

    const-string p0, "idPhoto"

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "idPhoto"

    return-object p0
.end method

.method public getCanAddMenuOption(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getCanAddMenuOption(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 0

    .line 118
    sget-object p0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_IDPHOTO_CUSTOM_BEAUTY:[Ljava/lang/String;

    return-object p0
.end method

.method protected getExifCameraMode()Ljava/lang/String;
    .locals 1

    .line 498
    iget p0, p0, Lcom/oplus/camera/capmode/l;->g:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "common"

    return-object p0

    :cond_0
    const-string p0, "idPhoto"

    return-object p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_idphoto_facebeauty_level_menu"

    return-object p0
.end method

.method public getHeicCodecFormat()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x8002

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    const/16 p0, 0x100

    .line 190
    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 191
    invoke-static {p0, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 206
    invoke-super {p0, p1, v0, v1}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;
    .locals 0

    const-wide p2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;
    .locals 2

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 201
    invoke-super {p0, p1, v0, v1}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getRearEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 183
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    const-string v0, "button_shape_ring_none"

    .line 184
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportFaceView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_raw_hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_suppport_multi_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "key_high_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "key_support_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_face_detection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_qr_code_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "pref_fuji_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "func_id_photo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "func_iot_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "key_support_grand_tour_fitlers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "pref_super_clear_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_16
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_17
    const-string v0, "pref_support_post_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_18
    const-string v0, "support_focus_out_of_range"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_19
    const-string v0, "pref_assist_gradienter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_1a
    const-string v0, "key_support_show_dim_hint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1b
    const-string v0, "pref_camera_assistant_line_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_1c
    const-string v0, "pref_tele_small_preview_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_1d
    const-string v0, "func_ais_snapshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 261
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 251
    :pswitch_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 255
    :cond_1
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/l;->mbFrontCamera:Z

    xor-int/2addr p0, v2

    return p0

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7d80482d -> :sswitch_1d
        -0x7bb8f589 -> :sswitch_1c
        -0x7b6c9fed -> :sswitch_1b
        -0x7336bb70 -> :sswitch_1a
        -0x6aa537a9 -> :sswitch_19
        -0x616206e3 -> :sswitch_18
        -0x5f5094a8 -> :sswitch_17
        -0x5efa20f1 -> :sswitch_16
        -0x566a0cd3 -> :sswitch_15
        -0x4c684fe0 -> :sswitch_14
        -0x43b4b28f -> :sswitch_13
        -0x40c9f939 -> :sswitch_12
        -0x289e651d -> :sswitch_11
        -0xf8e6ce6 -> :sswitch_10
        -0xdc7e6d7 -> :sswitch_f
        -0xdae10b4 -> :sswitch_e
        -0xb0f5f67 -> :sswitch_d
        -0x5f8f68b -> :sswitch_c
        -0xca2c0f -> :sswitch_b
        0x2537249 -> :sswitch_a
        0x67d194f -> :sswitch_9
        0x140b168f -> :sswitch_8
        0x3f50f6f7 -> :sswitch_7
        0x408542df -> :sswitch_6
        0x51f99d59 -> :sswitch_5
        0x55733c3f -> :sswitch_4
        0x5f579904 -> :sswitch_3
        0x601dc156 -> :sswitch_2
        0x75ca6ab5 -> :sswitch_1
        0x783e9c7f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_flashmode_key"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/l;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "pref_setting_key"

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "pref_subsetting_key"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/l;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "pref_camera_timer_shutter_key"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "pref_macro_switch"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 168
    :cond_4
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZSLMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFirstTipsEnable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdPhotoOpen()Z
    .locals 1

    const-string v0, "func_id_photo"

    .line 178
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/l;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

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

.method public isSatOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 4

    const-string v0, "IdPhotoMode"

    .line 447
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onAfterPictureTaken([BZ)V

    const/4 p1, 0x0

    .line 448
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/l;->resetAfterPictureTaken(ZZ)V

    .line 450
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/l;->mbPaused:Z

    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/oplus/camera/capmode/l;->a()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 454
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIInterface;->ao()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 457
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oplus.intent.action.galleryfeature"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "feature"

    const-string v3, "aiidphoto"

    .line 458
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    iget-object v2, p0, Lcom/oplus/camera/capmode/l;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "aiidphotouri"

    .line 460
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/l;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 464
    iget-object v1, p0, Lcom/oplus/camera/capmode/l;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    .line 465
    iget-object v3, p0, Lcom/oplus/camera/capmode/l;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 466
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_1

    const v2, 0x7f010090

    goto :goto_0

    :cond_1
    const v2, 0x7f01008c

    .line 464
    :goto_0
    invoke-virtual {v1, v2, p1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/l;->mbDisplayOnLock:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "onAfterPictureTaken, start gallery error!"

    .line 468
    invoke-static {v0, v1, p1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/l;->mbDisplayOnLock:Z

    if-eqz p1, :cond_2

    .line 471
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 475
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onAfterPictureTaken, uri: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 470
    :goto_2
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/l;->mbDisplayOnLock:Z

    if-eqz p2, :cond_3

    .line 471
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 473
    :cond_3
    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method public onAfterSnapping()Z
    .locals 1

    .line 491
    iget v0, p0, Lcom/oplus/camera/capmode/l;->l:I

    iput v0, p0, Lcom/oplus/camera/capmode/l;->g:I

    .line 493
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onAfterSnapping()Z

    move-result p0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 2

    .line 541
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/l;->mbPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onAfterStartPreview(Z)V

    .line 547
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/l;->k:Z

    if-eqz p1, :cond_1

    .line 548
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->j(Z)V

    .line 551
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/-$$Lambda$l$7r-zgZmBNCoqD1744u2G_LH-TuI;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/-$$Lambda$l$7r-zgZmBNCoqD1744u2G_LH-TuI;-><init>(Lcom/oplus/camera/capmode/l;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 560
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    if-eqz p0, :cond_2

    const/4 p1, 0x3

    const-wide/16 v0, 0x1f4

    .line 561
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/l;->getIsCapturingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 615
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    .line 620
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p1

    const/4 v0, 0x0

    .line 621
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/l;->mbCheckTakeAnimateDelay:Z

    return p1
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 4

    .line 567
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onDeInitCameraMode(Ljava/lang/String;)V

    .line 569
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 570
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->e(IZ)V

    .line 571
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(Z)V

    .line 572
    iput v1, p0, Lcom/oplus/camera/capmode/l;->h:I

    const-wide/16 v2, 0x0

    .line 573
    iput-wide v2, p0, Lcom/oplus/camera/capmode/l;->i:J

    .line 574
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/l;->n:Z

    .line 575
    invoke-direct {p0}, Lcom/oplus/camera/capmode/l;->b()V

    .line 577
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected onInitCameraMode()V
    .locals 4

    .line 68
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onInitCameraMode()V

    .line 70
    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f10025a

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b([I)V

    .line 71
    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_bottom_guide_type_id_photo"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/capmode/l;->k:Z

    .line 73
    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/oplus/camera/capmode/l$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/l$1;-><init>(Lcom/oplus/camera/capmode/l;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 0

    .line 600
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onMoreModeHidden(I)V

    .line 601
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(Z)V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(Z)V

    .line 595
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e(IZ)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 279
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onPause()V

    .line 280
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->j(Z)V

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 4

    .line 297
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 299
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/l;->mbPaused:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/capmode/l;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/l;->k:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/l;->n:Z

    if-eqz v0, :cond_9

    .line 301
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/e/b;->Y:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 304
    instance-of v3, v0, [I

    if-eqz v3, :cond_0

    .line 305
    check-cast v0, [I

    aget v0, v0, v2

    iput v0, p0, Lcom/oplus/camera/capmode/l;->mFlashTrigger:I

    .line 307
    iget v0, p0, Lcom/oplus/camera/capmode/l;->mFlashTrigger:I

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/l;->mbAutoFlash:Z

    if-nez v0, :cond_0

    const v0, 0x7f1001fc

    goto :goto_0

    :cond_0
    move v0, v2

    .line 312
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 313
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    if-eqz p1, :cond_1

    .line 314
    array-length p1, p1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iput p1, p0, Lcom/oplus/camera/capmode/l;->l:I

    if-nez v0, :cond_3

    .line 317
    iget p1, p0, Lcom/oplus/camera/capmode/l;->l:I

    if-nez p1, :cond_2

    const v0, 0x7f1001fd

    goto :goto_2

    :cond_2
    if-le p1, v1, :cond_3

    const v0, 0x7f1001fa

    .line 324
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->l()Ljava/lang/String;

    move-result-object p1

    .line 326
    iget-object v3, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->m()I

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_4

    .line 328
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 329
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    .line 332
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p1, 0x3e8

    .line 333
    invoke-direct {p0, v0, v2, p1, v2}, Lcom/oplus/camera/capmode/l;->a(IZII)V

    goto :goto_3

    .line 336
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_6

    .line 338
    invoke-direct {p0}, Lcom/oplus/camera/capmode/l;->b()V

    .line 340
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 341
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    .line 344
    :cond_6
    iput v2, p0, Lcom/oplus/camera/capmode/l;->h:I

    .line 345
    invoke-direct {p0, v0, v2, v2, v2}, Lcom/oplus/camera/capmode/l;->a(IZII)V

    goto :goto_3

    .line 347
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    if-nez v0, :cond_8

    .line 348
    iget p1, p0, Lcom/oplus/camera/capmode/l;->h:I

    if-eqz p1, :cond_8

    .line 349
    invoke-direct {p0}, Lcom/oplus/camera/capmode/l;->b()V

    .line 351
    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 352
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    .line 354
    :cond_8
    iget p1, p0, Lcom/oplus/camera/capmode/l;->h:I

    if-eq p1, v0, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/capmode/l;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 355
    invoke-direct {p0, v0, v2, v2, v2}, Lcom/oplus/camera/capmode/l;->a(IZII)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 266
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string v0, "key_bottom_guide_type_id_photo"

    .line 268
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 269
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/capmode/l;->k:Z

    .line 271
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/l;->k:Z

    if-eqz p1, :cond_0

    .line 272
    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(Z)V

    :cond_0
    return-void
.end method

.method protected updateDimHintView(Z)V
    .locals 0

    return-void
.end method

.method public updateInversePositionRatio(Z)V
    .locals 2

    .line 419
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/capmode/l;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->setPositionRatio(Landroid/content/Context;FZ)V

    return-void
.end method
