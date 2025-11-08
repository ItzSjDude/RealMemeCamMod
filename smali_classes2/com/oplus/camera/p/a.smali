.class public Lcom/oplus/camera/p/a;
.super Lcom/oplus/camera/capmode/d;
.source "QuickCaptureMode.java"


# instance fields
.field private g:Z

.field private h:Lcom/oplus/camera/p/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    .line 46
    new-instance v0, Lcom/oplus/camera/p/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oplus/camera/p/b;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    iput-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    return-void
.end method

.method private a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 490
    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_VIDEO_EIS:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 491
    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_VIDEO_EIS:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 493
    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v0, p1, :cond_2

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/p/a;->getCurrFilterIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/a;->isMonoIndex(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic b()V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->mbFrontCamera:Z

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {v0}, Lcom/oplus/camera/p/b;->k()V

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/p/a;->isGoogleLensEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 509
    invoke-virtual {p0, v0}, Lcom/oplus/camera/p/a;->showGoogleLensIcon(Z)V

    :cond_1
    return-void
.end method

.method private b(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 1

    .line 498
    iget-object p1, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p1}, Lcom/oplus/camera/p/b;->g()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/p/b;->b(I)V

    .line 500
    iget-object p1, p0, Lcom/oplus/camera/p/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->n()V

    .line 502
    iget-object p1, p0, Lcom/oplus/camera/p/a;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/oplus/camera/p/a;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/p/-$$Lambda$a$y08pV8OfKtc7tprLBj-eUbj-R_U;

    invoke-direct {v0, p0}, Lcom/oplus/camera/p/-$$Lambda$a$y08pV8OfKtc7tprLBj-eUbj-R_U;-><init>(Lcom/oplus/camera/p/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$y08pV8OfKtc7tprLBj-eUbj-R_U(Lcom/oplus/camera/p/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/p/a;->b()V

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 485
    new-instance p0, Lcom/oplus/camera/ui/control/b;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/control/b;-><init>(I)V

    return-object p0
.end method

.method public afterStopRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    .line 240
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->afterStopRecording()V

    return-void
.end method

.method public beforeStartRecording()V
    .locals 4

    .line 469
    iget-object v0, p0, Lcom/oplus/camera/p/a;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/oplus/camera/p/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/p/a;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/oplus/camera/p/a;->mCameraId:I

    iget-object v3, p0, Lcom/oplus/camera/p/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 472
    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/oplus/camera/p/a;->getJpegOrientation(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 471
    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 475
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/p/a;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_1
    return-void
.end method

.method public cameraIdChanged(I)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/p/b;->cameraIdChanged(I)V

    .line 421
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->cameraIdChanged(I)V

    return-void
.end method

.method protected canShowResumeButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public forceStopVideoRecording(Z)V
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/oplus/camera/p/a;->isGoogleLensEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, v0}, Lcom/oplus/camera/p/a;->showGoogleLensIcon(Z)V

    .line 310
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->forceStopVideoRecording(Z)V

    return-void
.end method

.method public getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;
    .locals 0

    .line 461
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;

    move-result-object p1

    .line 462
    iget-boolean p0, p0, Lcom/oplus/camera/p/a;->g:Z

    iput-boolean p0, p1, Lcom/oplus/camera/e/c;->ac:Z

    return-object p1
.end method

.method public getDefaultCaptureNumber()I
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->getDefaultCaptureNumber()I

    move-result p0

    return p0

    .line 374
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getDefaultCaptureNumber()I

    move-result p0

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getQuickVideoRecording()Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Lcom/oplus/camera/p/a;->g:Z

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 4

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "key_quick_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "support_focus_out_of_range"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 114
    :pswitch_0
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_5

    .line 115
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 106
    :pswitch_1
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_5

    return v2

    .line 97
    :pswitch_2
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string p1, "com.oplus.video.watermark.support"

    .line 101
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/oplus/camera/p/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/p/a;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 86
    :pswitch_3
    iget-object p1, p0, Lcom/oplus/camera/p/a;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/p/a;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_4

    const-string p1, "com.oplus.quick.video.support"

    .line 88
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 89
    iget-object p1, p0, Lcom/oplus/camera/p/a;->mActivity:Landroid/app/Activity;

    const v0, 0x7f10035a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/p/a;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_long_process_choice_key"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/p/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/p/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1

    :cond_4
    :pswitch_4
    return v2

    .line 124
    :cond_5
    :goto_4
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x616206e3 -> :sswitch_6
        -0x5efa20f1 -> :sswitch_5
        -0x43b4b28f -> :sswitch_4
        -0x289e651d -> :sswitch_3
        -0xb0f5f67 -> :sswitch_2
        0x61c11dc9 -> :sswitch_1
        0x65b53143 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 0

    .line 129
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getVideoFps()I
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->getVideoFps()I

    move-result p0

    return p0

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getVideoFps()I

    move-result p0

    return p0
.end method

.method public isAISceneOpen()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 365
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result p0

    return p0
.end method

.method public isGoogleLensEnable()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHalVideoRecording()Z
    .locals 1

    .line 389
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->g()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isHideHeadLine()Z
    .locals 1

    .line 394
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->g()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getLongPressState()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isQuickVideoInRestriction()Z
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->l()Z

    move-result p0

    return p0
.end method

.method public isVideoModeType()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoModeType()Z

    move-result p0

    return p0

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->isVideoModeType()Z

    move-result p0

    return p0
.end method

.method public isVideoRecordStarted()Z
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecordStarted()Z

    move-result p0

    return p0
.end method

.method public isVideoRecordStarting()Z
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecordStarting()Z

    move-result p0

    return p0
.end method

.method public isVideoRecordStopped()Z
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecordStopped()Z

    move-result p0

    return p0
.end method

.method public isVideoRecordStopping()Z
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecordStopping()Z

    move-result p0

    return p0
.end method

.method public isVideoRecording()Z
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecording()Z

    move-result p0

    return p0
.end method

.method public needApsToProcessVideoWatermark()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->isVideoRecording()Z

    move-result p0

    return p0

    .line 318
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->needApsToProcessVideoWatermark()Z

    move-result p0

    return p0
.end method

.method public needDelayFaceDetection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/p/b;->onAfterPictureTaken([BZ)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onAfterPictureTaken([BZ)V

    :goto_0
    return-void
.end method

.method public onAfterStartPreview(Z)V
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 444
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->onAfterStartPreview(Z)V

    goto :goto_0

    .line 446
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onAfterStartPreview(Z)V

    :goto_0
    return-void
.end method

.method public onApsPreviewCaptureCompleted(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;Z)V
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->mbFrontCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/oplus/camera/p/a;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/oplus/camera/p/a;->g:Z

    const/4 p1, 0x0

    .line 272
    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLongPressState(Z)V

    .line 273
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->f()V

    goto :goto_0

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 275
    invoke-direct {p0, p1}, Lcom/oplus/camera/p/a;->b(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    .line 406
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->onBackPressed()Z

    move-result p0

    return p0

    .line 408
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/p/b;->onBeforePictureTaken([BZ)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onBeforePictureTaken([BZ)V

    :goto_0
    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p0

    return p0

    .line 435
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p1

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lcom/oplus/camera/p/a;->mbCheckTakeAnimateDelay:Z

    return p1
.end method

.method protected onBinauralRecordStateChanged(Z)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->onBinauralRecordStateChanged(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    .line 262
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->onPause()V

    goto :goto_0

    .line 264
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onPause()V

    :goto_0
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 9

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/p/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oplus.camera.video"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 156
    iget-object v3, p0, Lcom/oplus/camera/p/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f1001ee

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/p/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aC()V

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/p/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 160
    iget-object p0, p0, Lcom/oplus/camera/p/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    const-string p0, "QuickCaptureMode"

    const-string v0, "onShutterButtonLongClick, Can\'t start recording video due to high temperature, so return"

    .line 162
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/p/a;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/p/a;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/oplus/camera/p/a;->a()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    .line 169
    iget-object v3, p0, Lcom/oplus/camera/p/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 170
    iget-object v1, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {v1}, Lcom/oplus/camera/p/b;->j()V

    .line 171
    iget-object v1, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/p/b;->a(Landroid/util/Size;)V

    .line 173
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 174
    iput-boolean v2, p0, Lcom/oplus/camera/p/a;->g:Z

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {v0}, Lcom/oplus/camera/p/b;->f()V

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/p/a;->isGoogleLensEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p0, v2}, Lcom/oplus/camera/p/a;->hideGoogleLensIcon(Z)V

    :cond_2
    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/p/b;->onShutterCallback(ZZ)V

    goto :goto_0

    .line 347
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onShutterCallback(ZZ)V

    :goto_0
    return-void
.end method

.method public onVideoRecordingPause()Z
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->onVideoRecordingPause()Z

    move-result p0

    return p0
.end method

.method public onVideoRecordingResume()Z
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->onVideoRecordingResume()Z

    move-result p0

    return p0
.end method

.method public onVideoTemperatureThresholdChanged(I)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    if-eqz p0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->onVideoTemperatureThresholdChanged(I)V

    :cond_0
    return-void
.end method

.method public onZoomChanged()V
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0}, Lcom/oplus/camera/p/b;->onZoomChanged()V

    goto :goto_0

    .line 383
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onZoomChanged()V

    :goto_0
    return-void
.end method

.method protected resetAfterPictureTaken(ZZ)V
    .locals 2

    .line 57
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->resetAfterPictureTaken(ZZ)V

    .line 59
    iget-boolean p2, p0, Lcom/oplus/camera/p/a;->mbCaptureRawTimeDone:Z

    if-nez p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/p/a;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/p/a;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/oplus/camera/p/a;->mActivity:Landroid/app/Activity;

    const p2, 0x7f10035a

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/oplus/camera/p/a;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_long_process_choice_key"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_quick_video"

    .line 67
    invoke-virtual {p0, v0}, Lcom/oplus/camera/p/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "pref_burst_shot_key"

    .line 69
    invoke-virtual {p0, v0}, Lcom/oplus/camera/p/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/p/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/p/a;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAfterPictureTaken, defaultValue: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", choiceValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", longClickable: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickCaptureMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public resetFiltersList()V
    .locals 0

    .line 192
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->resetFiltersList()V

    return-void
.end method

.method public setCameraId(I)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/p/b;->setCameraId(I)V

    .line 427
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->setCameraId(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/p/b;->setOrientation(I)V

    .line 415
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->setOrientation(I)V

    return-void
.end method

.method protected setQuickVideoBeforeLockTime(Z)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->setQuickVideoBeforeLockTime(Z)V

    return-void
.end method

.method protected stopQuickVideoRecording()V
    .locals 2

    const-string v0, "QuickCaptureMode"

    const-string v1, "stopQuickVideoRecording"

    .line 211
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setIsQuickVideoStartedByShutterButtonLongClick(Z)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {v0}, Lcom/oplus/camera/p/b;->h()V

    .line 218
    iput-boolean v1, p0, Lcom/oplus/camera/p/a;->g:Z

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {v0}, Lcom/oplus/camera/p/b;->k()V

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/p/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    .line 222
    invoke-virtual {p0}, Lcom/oplus/camera/p/a;->isGoogleLensEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p0, v0}, Lcom/oplus/camera/p/a;->showGoogleLensIcon(Z)V

    :cond_1
    return-void
.end method

.method public updateGrandTourCityFiltersPosition(Ljava/lang/String;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->updateGrandTourCityFiltersPosition(Ljava/lang/String;)V

    return-void
.end method

.method public updateOneCamera(Lcom/oplus/camera/e/d;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->updateOneCamera(Lcom/oplus/camera/e/d;)V

    .line 52
    iget-object p0, p0, Lcom/oplus/camera/p/a;->h:Lcom/oplus/camera/p/b;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p/b;->updateOneCamera(Lcom/oplus/camera/e/d;)V

    return-void
.end method

.method public withinSatMainAndWideRange(F)Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/oplus/camera/p/a;->g:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 455
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->withinSatMainAndWideRange(F)Z

    move-result p0

    return p0
.end method
