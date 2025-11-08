.class public Lcom/oplus/camera/capmode/p;
.super Lcom/oplus/camera/capmode/w;
.source "MicroscopeVideoMode.java"


# instance fields
.field private g:Lcom/oplus/camera/capmode/s;

.field private h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/w;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 43
    new-instance p1, Lcom/oplus/camera/capmode/s;

    invoke-direct {p1}, Lcom/oplus/camera/capmode/s;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/capmode/p;->g:Lcom/oplus/camera/capmode/s;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/oplus/camera/capmode/p;->h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    .line 45
    iput-object p1, p0, Lcom/oplus/camera/capmode/p;->i:Landroid/view/View$OnClickListener;

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/p;->j:Z

    .line 47
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/p;->k:Z

    .line 48
    iput p2, p0, Lcom/oplus/camera/capmode/p;->l:I

    .line 49
    iput p2, p0, Lcom/oplus/camera/capmode/p;->m:I

    .line 50
    iput-object p1, p0, Lcom/oplus/camera/capmode/p;->n:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/p;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/oplus/camera/capmode/p;->l:I

    return p1
.end method

.method private a()V
    .locals 5

    .line 417
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/p;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "key_microscope_guide_show_need"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/capmode/p;->h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget p0, p0, Lcom/oplus/camera/capmode/p;->l:I

    invoke-interface {v0, v2, v1, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    goto :goto_2

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->i:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    goto :goto_2

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v2, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    iget v4, p0, Lcom/oplus/camera/capmode/p;->m:I

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_2

    move-object v1, v2

    goto :goto_0

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 429
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/p;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 442
    new-instance v1, Lcom/oplus/camera/capmode/p$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/p$3;-><init>(Lcom/oplus/camera/capmode/p;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/p;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/p;->j:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/p;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/p;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/p;)Lcom/oplus/camera/ui/MicroscopeHintView$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/p;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/oplus/camera/capmode/p;->l:I

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/capmode/p;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->i:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/capmode/p;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->n:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public beforeStartRecording()V
    .locals 8

    .line 361
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeStartRecording()V

    .line 362
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x5

    const-string v2, "button_color_inside_red"

    const-string v3, "button_shape_ring_none"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 365
    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 366
    iget-object v2, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f1001f5

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 368
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/oplus/camera/capmode/p;->mCameraId:I

    iget v3, p0, Lcom/oplus/camera/capmode/p;->mOrientation:I

    invoke-virtual {p0, v2, v3}, Lcom/oplus/camera/capmode/p;->getJpegOrientation(II)I

    move-result v2

    .line 371
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/p;->getOrientationRectify()I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    .line 370
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget v2, p0, Lcom/oplus/camera/capmode/p;->l:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    .line 378
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->i:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0, v3, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    return-void
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "microscopeVideo"

    return-object p0
.end method

.method public getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;

    move-result-object p0

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/oplus/camera/e/c;->ac:Z

    return-object p0
.end method

.method public getEffectMenuKeyByMode()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_video_filter_menu"

    return-object p0
.end method

.method public getFilterCategory()Lcom/oplus/camera/ui/preview/a/l$a;
    .locals 0

    .line 341
    sget-object p0, Lcom/oplus/camera/ui/preview/a/l$a;->Anc:Lcom/oplus/camera/ui/preview/a/l$a;

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_filter_anc_index"

    return-object p0
.end method

.method protected getFilterNameIdList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 346
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/i;->d:Ljava/util/List;

    return-object p0
.end method

.method public getFilterTitleTexId()I
    .locals 0

    const p0, 0x7f100158

    return p0
.end method

.method protected getFilterTypeList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->f:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    return-object p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 0

    const-string p0, "torch"

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getNeedReduceBitRate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x800b

    return p0
.end method

.method public getOrientationRectify()I
    .locals 0

    const/16 p0, 0xb4

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/p;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 310
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/p;->getVideoSizeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/p;->getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 298
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    const-string v0, "button_shape_ring_none"

    .line 299
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 2

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_video_super_eis_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_high_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_face_detection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "func_enhancement_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_6
    const-string v0, "key_support_video_high_fps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_8
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_b
    const-string v0, "key_support_show_soloop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_c
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_super_clear_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_e
    const-string v0, "func_ultra_night_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    return v1

    .line 147
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/p;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/p;->mCameraId:I

    const-string v0, "aps_algo_filter"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bca5f3a -> :sswitch_e
        -0x566a0cd3 -> :sswitch_d
        -0x43b4b28f -> :sswitch_c
        -0x33b697ce -> :sswitch_b
        -0x185952aa -> :sswitch_a
        -0xb0f5f67 -> :sswitch_9
        -0x5f8f68b -> :sswitch_8
        0x2537249 -> :sswitch_7
        0x52dec60 -> :sswitch_6
        0x2dffb2cd -> :sswitch_5
        0x3f50f6f7 -> :sswitch_4
        0x408542df -> :sswitch_3
        0x55733c3f -> :sswitch_2
        0x65dfb4cb -> :sswitch_1
        0x74ed85e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_video_filter_menu"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/p;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 1

    const-string v0, "com.oplus.microscope.video.previewsize"

    .line 320
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 326
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getVideoSizeType()Ljava/lang/String;
    .locals 0

    const-string p0, "com.oplus.microscope.video.size"

    .line 315
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 1

    .line 275
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->A(Z)V

    const-string v0, "com.oplus.microscope.zoom.scale.value"

    .line 277
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->c(I)V

    return-object p0
.end method

.method public isMicroscopeMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isUseMediaCodec()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "type_main_preview_frame"

    .line 289
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    .line 290
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public onAfterStartPreview(Z)V
    .locals 0

    .line 174
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onAfterStartPreview(Z)V

    .line 176
    invoke-direct {p0}, Lcom/oplus/camera/capmode/p;->a()V

    return-void
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 7

    .line 119
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    .line 121
    iget-boolean p2, p2, Lcom/oplus/camera/e/c;->ac:Z

    if-eqz p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-wide v1, p1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mIdentity:J

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/oplus/camera/util/Util;->a(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 123
    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/capmode/a;->a(JLjava/lang/String;ZZZ)V

    :cond_0
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 3

    .line 252
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onDeInitCameraMode(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/p;->j:Z

    .line 254
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/p;->k:Z

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget v2, p0, Lcom/oplus/camera/capmode/p;->l:I

    invoke-interface {v0, v1, p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    .line 257
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->i:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1, p1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/p;->sendBoradCastNotifyMicroscopeState(Z)V

    .line 259
    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->g:Lcom/oplus/camera/capmode/s;

    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/capmode/s;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 4

    .line 181
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onInitCameraMode()V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/p;->j:Z

    const-string v1, "com.oplus.feature.micro.guide.anim.type"

    .line 183
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/capmode/p;->m:I

    .line 185
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/p;->sendBoradCastNotifyMicroscopeState(Z)V

    .line 186
    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->g:Lcom/oplus/camera/capmode/s;

    iget-object v2, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/capmode/p;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/capmode/s;->a(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V

    .line 188
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/camera/capmode/p;->n:Landroid/widget/TextView;

    .line 189
    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWillNotDraw(Z)V

    .line 190
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->n:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    .line 192
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07076e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/capmode/p;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v0, Lcom/oplus/camera/capmode/p$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/p$1;-><init>(Lcom/oplus/camera/capmode/p;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/p;->i:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v0, Lcom/oplus/camera/capmode/p$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/p$2;-><init>(Lcom/oplus/camera/capmode/p;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/p;->h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onMoreModeHidden(I)V
    .locals 0

    .line 411
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onMoreModeHidden(I)V

    .line 413
    invoke-direct {p0}, Lcom/oplus/camera/capmode/p;->a()V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 4

    .line 403
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onMoreModeShown()V

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget v2, p0, Lcom/oplus/camera/capmode/p;->l:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    .line 406
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->i:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0, v3, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 239
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onPause()V

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->g:Lcom/oplus/camera/capmode/s;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/s;->a(Landroid/content/Context;)V

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget p0, p0, Lcom/oplus/camera/capmode/p;->l:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    return-void
.end method

.method protected onResume(Z)V
    .locals 1

    .line 246
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onResume(Z)V

    .line 247
    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->g:Lcom/oplus/camera/capmode/s;

    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-virtual {p1, v0, p0}, Lcom/oplus/camera/capmode/s;->a(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onStopVideoRecording(Z)V
    .locals 4

    .line 383
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    .line 384
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const/4 v0, 0x1

    const/4 v1, 0x6

    const-string v2, "button_color_inside_red"

    const-string v3, "button_shape_ring_none"

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 387
    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 388
    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1001f5

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 390
    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_microscope_guide_show_need"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->h:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget p0, p0, Lcom/oplus/camera/capmode/p;->l:I

    invoke-interface {p1, v1, v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->i:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    :goto_0
    return-void
.end method

.method public onTouchFocus()V
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1001ef

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 265
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onTouchFocus()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 130
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->setOrientation(I)V

    .line 132
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result p1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 133
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/oplus/camera/capmode/p;->mCameraId:I

    iget v2, p0, Lcom/oplus/camera/capmode/p;->mOrientation:I

    .line 136
    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/capmode/p;->getJpegOrientation(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/p;->getOrientationRectify()I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 135
    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/oplus/camera/capmode/p;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/e/d;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 139
    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public withinSatMainRange(F)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
