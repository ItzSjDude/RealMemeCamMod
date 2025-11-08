.class public Lcom/oplus/camera/capmode/o;
.super Lcom/oplus/camera/capmode/d;
.source "MicroscopeCaptureMode.java"


# instance fields
.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Lcom/oplus/camera/capmode/s;

.field private l:Lcom/oplus/camera/ui/MicroscopeHintView$a;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/o;->g:Z

    .line 40
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/o;->h:Z

    .line 41
    iput p1, p0, Lcom/oplus/camera/capmode/o;->i:I

    .line 42
    iput p1, p0, Lcom/oplus/camera/capmode/o;->j:I

    .line 44
    new-instance p1, Lcom/oplus/camera/capmode/s;

    invoke-direct {p1}, Lcom/oplus/camera/capmode/s;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/capmode/o;->k:Lcom/oplus/camera/capmode/s;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/oplus/camera/capmode/o;->l:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/capmode/o;->m:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/oplus/camera/capmode/o;->n:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/o;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/oplus/camera/capmode/o;->i:I

    return p1
.end method

.method private a()V
    .locals 5

    .line 336
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/o;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "key_microscope_guide_show_need"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/capmode/o;->l:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget p0, p0, Lcom/oplus/camera/capmode/o;->i:I

    invoke-interface {v0, v2, v1, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    goto :goto_2

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/o;->m:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    goto :goto_2

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v2, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    iget v4, p0, Lcom/oplus/camera/capmode/o;->j:I

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_2

    move-object v1, v2

    goto :goto_0

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/o;->n:Landroid/widget/TextView;

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

    .line 360
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/oplus/camera/capmode/o$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/o$3;-><init>(Lcom/oplus/camera/capmode/o;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/o;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/o;->g:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/o;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/o;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/o;)Lcom/oplus/camera/ui/MicroscopeHintView$a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/capmode/o;->l:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/o;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/oplus/camera/capmode/o;->i:I

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/capmode/o;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/capmode/o;->m:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/capmode/o;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/capmode/o;->n:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "microscope"

    return-object p0
.end method

.method public getFilterCategory()Lcom/oplus/camera/ui/preview/a/l$a;
    .locals 0

    .line 292
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

    .line 297
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

    .line 302
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

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    const-string p0, "com.oplus.feature.micro.picture.size.ratio"

    .line 280
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "standard"

    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    const/16 p0, 0x100

    .line 287
    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 273
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    const-string v0, "button_shape_ring_none"

    .line 274
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 4

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pref_filter_process_key"

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_suppport_multi_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_macro_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "key_high_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_face_detection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_qr_code_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_front_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "pref_fuji_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_f
    const-string v0, "key_support_grand_tour_fitlers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_10
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_11
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_12
    const-string v0, "pref_setting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_13
    const-string v0, "pref_super_clear_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_14
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_15
    const-string v0, "support_focus_out_of_range"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_16
    const-string v0, "pref_tele_small_preview_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :pswitch_0
    return v1

    :pswitch_1
    return v3

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/o;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/o;->mCameraId:I

    const-string v0, "aps_algo_filter"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 150
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f589 -> :sswitch_16
        -0x616206e3 -> :sswitch_15
        -0x5f048920 -> :sswitch_14
        -0x566a0cd3 -> :sswitch_13
        -0x541be82c -> :sswitch_12
        -0x4c684fe0 -> :sswitch_11
        -0x43b4b28f -> :sswitch_10
        -0x40c9f939 -> :sswitch_f
        -0xdae10b4 -> :sswitch_e
        -0xb0f5f67 -> :sswitch_d
        -0x5f8f68b -> :sswitch_c
        -0xca2c0f -> :sswitch_b
        -0x861d1b -> :sswitch_a
        0x2537249 -> :sswitch_9
        0x67d194f -> :sswitch_8
        0xb8585f9 -> :sswitch_7
        0x3f50f6f7 -> :sswitch_6
        0x408542df -> :sswitch_5
        0x55733c3f -> :sswitch_4
        0x590e13a3 -> :sswitch_3
        0x601dc156 -> :sswitch_2
        0x74ed85e4 -> :sswitch_1
        0x75ca6ab5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_video_filter_menu"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_filter_menu"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/o;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 1

    .line 259
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->A(Z)V

    const-string v0, "com.oplus.microscope.zoom.scale.value"

    .line 261
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->c(I)V

    return-object p0
.end method

.method public isFirstTipsEnable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMicroscopeMode()Z
    .locals 0

    const/4 p0, 0x1

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

.method public needSurface(Ljava/lang/String;)Z
    .locals 2

    const-string p0, "type_preview_frame"

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    .line 61
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result p1

    if-ne p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    const-string p0, "type_still_capture_yuv_main"

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const-string p0, "type_capture"

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public onAfterStartPreview(Z)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onAfterStartPreview(Z)V

    .line 157
    invoke-direct {p0}, Lcom/oplus/camera/capmode/o;->a()V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    .line 381
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p1

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/o;->mbCheckTakeAnimateDelay:Z

    return p1
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 3

    .line 233
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onDeInitCameraMode(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 234
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/o;->g:Z

    .line 235
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/o;->h:Z

    .line 236
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->l:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget v2, p0, Lcom/oplus/camera/capmode/o;->i:I

    invoke-interface {v0, v1, p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->m:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/o;->sendBoradCastNotifyMicroscopeState(Z)V

    .line 240
    iget-object p1, p0, Lcom/oplus/camera/capmode/o;->k:Lcom/oplus/camera/capmode/s;

    iget-object p0, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/capmode/s;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 4

    .line 162
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onInitCameraMode()V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/o;->g:Z

    const-string v1, "com.oplus.feature.micro.guide.anim.type"

    .line 164
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/capmode/o;->j:I

    .line 166
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/o;->sendBoradCastNotifyMicroscopeState(Z)V

    .line 167
    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->k:Lcom/oplus/camera/capmode/s;

    iget-object v2, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/capmode/o;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/capmode/s;->a(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V

    .line 169
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/camera/capmode/o;->n:Landroid/widget/TextView;

    .line 170
    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWillNotDraw(Z)V

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->n:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    .line 173
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07076e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/capmode/o;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v0, Lcom/oplus/camera/capmode/o$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/o$1;-><init>(Lcom/oplus/camera/capmode/o;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/o;->m:Landroid/view/View$OnClickListener;

    .line 190
    new-instance v0, Lcom/oplus/camera/capmode/o$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/o$2;-><init>(Lcom/oplus/camera/capmode/o;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/o;->l:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onMoreModeHidden(I)V
    .locals 0

    .line 330
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onMoreModeHidden(I)V

    .line 332
    invoke-direct {p0}, Lcom/oplus/camera/capmode/o;->a()V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 4

    .line 322
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onMoreModeShown()V

    .line 324
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->l:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget v2, p0, Lcom/oplus/camera/capmode/o;->i:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    .line 325
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/o;->m:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 220
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onPause()V

    .line 221
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->k:Lcom/oplus/camera/capmode/s;

    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/s;->a(Landroid/content/Context;)V

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->l:Lcom/oplus/camera/ui/MicroscopeHintView$a;

    iget p0, p0, Lcom/oplus/camera/capmode/o;->i:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    return-void
.end method

.method protected onResume(Z)V
    .locals 1

    .line 227
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onResume(Z)V

    .line 228
    iget-object p1, p0, Lcom/oplus/camera/capmode/o;->k:Lcom/oplus/camera/capmode/s;

    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/oplus/camera/capmode/o;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-virtual {p1, v0, p0}, Lcom/oplus/camera/capmode/s;->a(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V

    return-void
.end method

.method public onTouchFocus()V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aQ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1001ef

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 249
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onTouchFocus()V

    return-void
.end method

.method public withinSatMainRange(F)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
