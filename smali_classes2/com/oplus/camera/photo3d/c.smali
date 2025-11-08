.class public Lcom/oplus/camera/photo3d/c;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "ThreeDPhotoMode.java"


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field private h:Lcom/oplus/camera/photo3d/b;

.field private i:Lcom/oplus/camera/photo3d/ui/g;

.field private j:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pref_3dphoto_facebeauty_level_menu"

    .line 38
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/photo3d/c;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/oplus/camera/photo3d/c;->j:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/c;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->j:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method private a()Z
    .locals 2

    .line 225
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "oplus.camera.video"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/oplus/camera/photo3d/c;)Lcom/oplus/camera/photo3d/ui/g;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    return-object p0
.end method

.method private b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private c()V
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/c;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreeDPhoto"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 382
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/b;->a()V

    .line 383
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/g;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public allowSwitchCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 1

    .line 357
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->changeModeAllViewWhenAnimation(IZ)V

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/c;->getIsCapturingState()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/photo3d/ui/g;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public consumeImage(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/c;->b()Z

    move-result p0

    return p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "3dPhoto"

    return-object p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 0

    .line 179
    sget-object p0, Lcom/oplus/camera/photo3d/c;->g:[Ljava/lang/String;

    return-object p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_3dphoto_facebeauty_level_menu"

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_3d_photo_filter_index"

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHeicCodecFormat()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x8001

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    const-string p0, "com.oplus.3d.photo.video.size"

    .line 83
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 4

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "pref_filter_process_key"

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "func_face_slender_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_heif_support_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_8
    const-string v0, "pref_camera_pi_ai_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_a
    const-string v0, "func_face_beauty_common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v0, "func_face_beauty_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_c
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_e
    const-string v0, "pref_continuous_focus_key"

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

    .line 145
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 139
    :pswitch_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/c;->mbFrontCamera:Z

    if-nez p0, :cond_2

    move v3, v2

    :cond_2
    :goto_2
    return v3

    .line 136
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/c;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/photo3d/c;->mCameraId:I

    const-string v0, "aps_algo_face_beauty"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 131
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/photo3d/c;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 128
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/c;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/photo3d/c;->mCameraId:I

    const-string v0, "aps_algo_filter"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_4
    return v3

    :pswitch_5
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ce3461c -> :sswitch_e
        -0x64edfd1c -> :sswitch_d
        -0x5efa20f1 -> :sswitch_c
        -0x500c4e2d -> :sswitch_b
        -0x423965f9 -> :sswitch_a
        -0x289e651d -> :sswitch_9
        0x1073c1f2 -> :sswitch_8
        0x140b168f -> :sswitch_7
        0x3df76ea6 -> :sswitch_6
        0x4a67fef8 -> :sswitch_5
        0x5f579904 -> :sswitch_4
        0x74ed85e4 -> :sswitch_3
        0x75ca6ab5 -> :sswitch_2
        0x7e1951aa -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_setting_key"

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_flashmode_key"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->e(Z)V

    return-object p0
.end method

.method public isBottomGuideEntryViewShown()Z
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/g;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isHideUICapture()Z
    .locals 0

    .line 338
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/c;->getIsCapturingState()Z

    move-result p0

    return p0
.end method

.method public isNeedShowMenuOnTimeSnapShotEnd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needStoreImage()Z
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/c;->b()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "type_capture"

    .line 184
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "type_still_capture_yuv_main"

    .line 188
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 0

    const-string p0, "ThreeDPhoto"

    const-string p1, "onAfterPictureTaken"

    .line 253
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAfterStartPreview(Z)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/g;->b()V

    return-void
.end method

.method protected onBeforePreview()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/c;->applyBeautyParam()V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 6

    .line 211
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1001e8

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const-string p0, "ThreeDPhoto"

    const-string p1, "onBeforeSnapping, Can\'t capture for high temperature"

    .line 215
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/b;->c()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/photo3d/ui/g;->b(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 5

    .line 281
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    .line 283
    iget-wide v0, p1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mMeshPtr:J

    const-wide/16 v2, 0x0

    cmp-long p2, v2, v0

    const-string v0, "ThreeDPhoto"

    if-nez p2, :cond_0

    const-string p0, "onCaptureCompleted, return for null mesh pointer"

    .line 284
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 289
    :cond_0
    iget-wide v1, p1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mIdentity:J

    iget-object p2, p0, Lcom/oplus/camera/photo3d/c;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-eqz p2, :cond_1

    .line 290
    iget-wide v1, p1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mMeshPtr:J

    invoke-static {v1, v2}, Lcom/oplus/camera/photo3d/PhotoMeshData;->release(J)V

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted, skip process capture: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mIdentity:J

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    if-eqz p0, :cond_2

    .line 297
    iget-wide v0, p1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mMeshPtr:J

    iget-wide p1, p1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mIdentity:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oplus/camera/photo3d/b;->a(JJ)V

    :cond_2
    return-void
.end method

.method public onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V
    .locals 6

    .line 303
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100076

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 1

    .line 272
    iget v0, p0, Lcom/oplus/camera/photo3d/c;->mCaptureStartedCallbackNum:I

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 276
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 1

    const-string p1, "ThreeDPhoto"

    const-string v0, "onDeInitCameraMode"

    .line 409
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/oplus/camera/photo3d/c;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p1, :cond_0

    .line 412
    iget-object p1, p0, Lcom/oplus/camera/photo3d/c;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {p1}, Lcom/oplus/camera/photo3d/b;->b()V

    .line 417
    iput-object v0, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    if-eqz p1, :cond_2

    .line 421
    invoke-virtual {p1}, Lcom/oplus/camera/photo3d/ui/g;->h()V

    .line 422
    iput-object v0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ThreeDPhoto"

    const-string v1, "onDestroy"

    .line 394
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/b;->b()V

    .line 398
    iput-object v1, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/g;->h()V

    .line 403
    iput-object v1, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    :cond_1
    return-void
.end method

.method public onEffectMenuPopDown(Z)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onEffectMenuPopDown(Z)V

    .line 206
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/oplus/camera/photo3d/ui/g;->b(ZZ)V

    return-void
.end method

.method public onEffectMenuPopUp()V
    .locals 1

    .line 197
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onEffectMenuPopUp()V

    .line 199
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/photo3d/ui/g;->c(ZZ)V

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 4

    .line 50
    new-instance v0, Lcom/oplus/camera/photo3d/b;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/c;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/c;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/photo3d/c;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/photo3d/b;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    .line 52
    new-instance v0, Lcom/oplus/camera/photo3d/ui/g;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/c;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/c;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/photo3d/c;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/photo3d/ui/g;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    .line 53
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g$a;)V

    .line 55
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->h:Lcom/oplus/camera/photo3d/b;

    new-instance v1, Lcom/oplus/camera/photo3d/c$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/photo3d/c$1;-><init>(Lcom/oplus/camera/photo3d/c;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/photo3d/b;->a(Lcom/oplus/camera/photo3d/a;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "ThreeDPhoto"

    const-string v1, "onPause"

    .line 371
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/g;->g()V

    .line 374
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/c;->c()V

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 0

    .line 232
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onShutterCallback(ZZ)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 235
    iget-object p1, p0, Lcom/oplus/camera/photo3d/c;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->h()V

    .line 236
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/a;->c(I)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lcom/oplus/camera/photo3d/ui/g;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 315
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStop()V
    .locals 1

    const-string p0, "ThreeDPhoto"

    const-string v0, "onStop"

    .line 389
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onZoomMenuCollapsing()V
    .locals 1

    .line 329
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onZoomMenuCollapsing()V

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/c;->getIsCapturingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/photo3d/ui/g;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 1

    .line 320
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onZoomMenuExpand()V

    .line 322
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/photo3d/ui/g;->c(ZZ)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setOrientation(I)V

    .line 350
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c;->i:Lcom/oplus/camera/photo3d/ui/g;

    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lcom/oplus/camera/photo3d/ui/g;->a(I)V

    :cond_0
    return-void
.end method

.method protected updateCaptureParam(Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 242
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateCaptureParam(Lcom/oplus/camera/e/c;)V

    .line 243
    iget-object p1, p0, Lcom/oplus/camera/photo3d/c;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-direct {p0}, Lcom/oplus/camera/photo3d/c;->b()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/oplus/camera/e/d;->e(Z)V

    return-void
.end method
