.class public Lcom/oplus/camera/ui/menu/setting/h;
.super Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
.source "CameraMenuOptionFirstLevel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/oplus/camera/u$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field private r:Lcom/oplus/camera/ui/menu/i;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Lcom/oplus/camera/ui/widget/c;

.field private w:Ljava/lang/String;

.field private x:Lcom/oplus/camera/ui/menu/b;

.field private y:Z

.field private z:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/menu/b;Lcom/oplus/camera/ui/menu/setting/i;Lcom/oplus/camera/ui/CameraUIListener;ILjava/lang/String;Z)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;-><init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/menu/b;Lcom/oplus/camera/ui/menu/setting/i;Lcom/oplus/camera/ui/CameraUIListener;ILjava/lang/String;)V

    const/4 p2, 0x0

    .line 57
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    .line 58
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    const/4 p4, 0x0

    .line 59
    iput-boolean p4, p0, Lcom/oplus/camera/ui/menu/setting/h;->t:Z

    .line 60
    iput-boolean p4, p0, Lcom/oplus/camera/ui/menu/setting/h;->u:Z

    .line 61
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    .line 62
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->w:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->x:Lcom/oplus/camera/ui/menu/b;

    .line 64
    iput-boolean p4, p0, Lcom/oplus/camera/ui/menu/setting/h;->y:Z

    .line 65
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->z:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 66
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->A:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->B:Ljava/lang/String;

    .line 68
    iput-boolean p4, p0, Lcom/oplus/camera/ui/menu/setting/h;->C:Z

    .line 74
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/setting/h;->x:Lcom/oplus/camera/ui/menu/b;

    .line 75
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->a:Lcom/oplus/camera/ComboPreferences;

    .line 76
    iput-boolean p8, p0, Lcom/oplus/camera/ui/menu/setting/h;->t:Z

    .line 77
    iput-boolean p4, p0, Lcom/oplus/camera/ui/menu/setting/h;->u:Z

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/h;->ak()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/h;)Lcom/oplus/camera/ui/menu/i;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/h;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->y:Z

    return p1
.end method

.method private synthetic a(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p2, "CameraMenuOptionFirstLevel"

    const-string p3, "onTouch"

    .line 251
    invoke-static {p2, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->w()V

    .line 255
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->a:Lcom/oplus/camera/ComboPreferences;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 256
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 257
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return p3
.end method

.method private ai()V
    .locals 8

    .line 139
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_high_resolution_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "CameraMenuOptionFirstLevel"

    const-string v1, "initDynamicIcons"

    .line 141
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.oplus.super.resolution.picturesize"

    .line 143
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 149
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v0

    const-string v3, "com.oplus.high.picturesize.name"

    .line 148
    invoke-static {v3, v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    if-lez v0, :cond_0

    int-to-double v3, v0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/h;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 151
    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v3

    const-string v4, "com.oplus.high.picturesize"

    invoke-static {v4, v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v3

    .line 150
    invoke-static {v0, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v3

    :goto_0
    const-wide/16 v5, 0x0

    cmpl-double v0, v5, v3

    if-nez v0, :cond_1

    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    const v5, 0x7f1002dc

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->w:Ljava/lang/String;

    double-to-int v0, v3

    const-string v5, "com.oplus.ultra.wide.high.supported.picturesize"

    .line 160
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 161
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/h;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 162
    invoke-interface {v7}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v7

    .line 161
    invoke-static {v5, v7}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v5

    .line 163
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    const/16 v3, 0x2c

    if-ne v3, v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030046

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/16 v3, 0x30

    const v4, 0x7f030047

    if-ne v3, v0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/16 v3, 0x32

    if-ne v3, v0, :cond_7

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030048

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_2

    :cond_7
    const/16 v3, 0x40

    if-ne v3, v0, :cond_8

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030049

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f03004a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_2

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_c

    .line 184
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 185
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->ah()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->ah()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 186
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->ah()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/menu/e;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/menu/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 190
    :cond_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_c
    return-void
.end method

.method private aj()V
    .locals 2

    .line 423
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->R()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->S()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/setting/h;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private ak()V
    .locals 4

    .line 719
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "pref_filter_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "key_slow_video_frame_seek_bar_menu_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "pref_video_hyper_lapse_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "pref_video_super_eis_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "key_multicamera_type_menu_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "pref_macro_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "pref_video_blur_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "pref_raw_control_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "pref_pro_histogram_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "pref_super_raw_control_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "key_video_hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "pref_camera_pi_ai_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "pref_camera_pi_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "key_ultra_night_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "pref_high_resolution_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "pref_camera_torch_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "pref_subsetting_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "pref_intelligent_high_frame_selected_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "pref_camera_time_lapse_rate_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "pref_portrait_new_style_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "pref_portrait_blur_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "pref_camera_ai_high_pixel_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "pref_camera_hdr_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "key_ai_enhancement_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1a
    const-string v1, "key_disable_ai_enhancement_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_1b
    const-string v1, "pref_video_filter_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_1c
    const-string v1, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_1d
    const-string v1, "pref_setting_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_1e
    const-string v1, "pref_parameter_saving"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_1f
    const-string v1, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_20
    const-string v1, "pref_platform_slow_video_fps_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_21
    const-string v1, "pref_night_filter_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f10036e

    const v2, 0x7f1000e6

    const v3, 0x7f10035b

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    .line 853
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 849
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 845
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10036d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 841
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100363

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 837
    :pswitch_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 833
    :pswitch_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 829
    :pswitch_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 825
    :pswitch_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 821
    :pswitch_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 817
    :pswitch_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 813
    :pswitch_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 809
    :pswitch_a
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 805
    :pswitch_b
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 801
    :pswitch_c
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 797
    :pswitch_d
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 793
    :pswitch_e
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 789
    :pswitch_f
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10041e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 785
    :pswitch_10
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 781
    :pswitch_11
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 777
    :pswitch_12
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 773
    :pswitch_13
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 769
    :pswitch_14
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 765
    :pswitch_15
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 761
    :pswitch_16
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10041c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 757
    :pswitch_17
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    const v1, 0x7f100373

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto/16 :goto_2

    .line 753
    :pswitch_18
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto :goto_2

    .line 749
    :pswitch_19
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto :goto_2

    .line 745
    :pswitch_1a
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100488

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto :goto_2

    .line 741
    :pswitch_1b
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto :goto_2

    .line 737
    :pswitch_1c
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10036c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto :goto_2

    .line 733
    :pswitch_1d
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto :goto_2

    .line 729
    :pswitch_1e
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    goto :goto_2

    .line 725
    :pswitch_1f
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100366

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7211cafd -> :sswitch_21
        -0x63a6c449 -> :sswitch_20
        -0x5f048920 -> :sswitch_1f
        -0x5e9d1914 -> :sswitch_1e
        -0x541be82c -> :sswitch_1d
        -0x4f05d6eb -> :sswitch_1c
        -0x487d971a -> :sswitch_1b
        -0x48467df8 -> :sswitch_1a
        -0x4239f6ef -> :sswitch_19
        -0x3f608456 -> :sswitch_18
        -0x3a3d343e -> :sswitch_17
        -0x244d55d1 -> :sswitch_16
        -0x1fa329cc -> :sswitch_15
        -0x1cab2b7a -> :sswitch_14
        -0x185952aa -> :sswitch_13
        -0xde943da -> :sswitch_12
        -0xdae10b4 -> :sswitch_11
        -0x953b61c -> :sswitch_10
        0x166286d -> :sswitch_f
        0x4e78ba1 -> :sswitch_e
        0xbbf8ecb -> :sswitch_d
        0x1073c1f2 -> :sswitch_c
        0x10ab8f52 -> :sswitch_b
        0x2f7f1d06 -> :sswitch_a
        0x32ceb7d6 -> :sswitch_9
        0x3f66a8ca -> :sswitch_8
        0x57360957 -> :sswitch_7
        0x590e13a3 -> :sswitch_6
        0x62d41c23 -> :sswitch_5
        0x65dfb4cb -> :sswitch_4
        0x69bbb15a -> :sswitch_3
        0x741b369e -> :sswitch_2
        0x75ca6ab5 -> :sswitch_1
        0x7e1951aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/h;)Lcom/oplus/camera/ui/widget/c;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    return-object p0
.end method

.method public static synthetic lambda$MJSc_ua70o1_bsxwP2T3O9fdz2s(Lcom/oplus/camera/ui/menu/setting/h;Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/h;->a(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private o(Ljava/lang/String;)V
    .locals 5

    .line 594
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v0

    const-string v1, "off"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v4, v0, :cond_2

    .line 595
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->j:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->j:I

    if-ne v2, p1, :cond_1

    .line 598
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0, v3, v3, v3}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(ZZI)V

    goto :goto_0

    .line 600
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0, v2, v3, v3}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(ZZI)V

    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->j:I

    if-eq p1, v0, :cond_3

    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->j:I

    if-ne v2, p1, :cond_4

    .line 606
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0, v3, v3, v3}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(ZZI)V

    goto :goto_0

    .line 608
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0, v2, v3, v3}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(ZZI)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->i()V

    .line 678
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->A()V

    const/4 v0, 0x0

    .line 679
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/h;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public B()I
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->getViewWidth()I

    move-result p0

    return p0

    .line 626
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result p0

    return p0
.end method

.method public C()I
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->getViewHeight()I

    move-result p0

    return p0

    .line 635
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result p0

    return p0
.end method

.method public J()Landroid/view/View;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    return-object p0
.end method

.method public K()F
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->getPivotYScaleValue()F

    move-result p0

    return p0
.end method

.method public L()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->getShadowOn()Z

    move-result p0

    return p0

    .line 367
    :cond_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->u:Z

    return p0
.end method

.method public M()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->j()V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)V
    .locals 1

    .line 867
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyDown - keyCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraMenuOptionFirstLevel"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    const/16 p2, 0x19

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->w()V

    .line 875
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->a:Lcom/oplus/camera/ComboPreferences;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->A:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 876
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 877
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->A:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 878
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 881
    :cond_1
    invoke-static {}, Lcom/oplus/camera/u;->a()Lcom/oplus/camera/u;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/camera/u;->b(Lcom/oplus/camera/u$a;)V

    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/i;->a(IZ)V

    .line 671
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->e()V

    .line 658
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setProgress(F)V

    .line 661
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/i;->a(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->z:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->z:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 394
    :cond_0
    check-cast p1, Lcom/oplus/camera/ui/menu/i;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 892
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 894
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTouchEvent, view: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMenuOptionFirstLevel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 615
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/ViewGroup;)V

    .line 617
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/i;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/oplus/camera/ui/menu/e;)V
    .locals 1

    .line 118
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_setting_key"

    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_subsetting_key"

    .line 121
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_flashmode_key"

    .line 122
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_raw_control_key"

    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_videoflashmode_key"

    .line 124
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_super_raw_control_key"

    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_street_fix_focus_control_key"

    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_pi_ai_mode_key"

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 128
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/menu/i;->setItemText(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/h;->aj()V

    :cond_1
    const-string p2, "pref_macro_switch"

    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    const p2, 0x7f0600a2

    .line 134
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 133
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/i;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    if-eqz p2, :cond_2

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->B:Ljava/lang/String;

    .line 234
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->w()V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_2

    .line 243
    new-instance v0, Lcom/oplus/camera/ui/widget/c;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/c;->a(Z)V

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/c;->setFocusable(Z)V

    .line 246
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/widget/c;->a(Ljava/lang/CharSequence;)V

    .line 247
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->A:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->B:Ljava/lang/String;

    .line 249
    invoke-static {}, Lcom/oplus/camera/u;->a()Lcom/oplus/camera/u;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/oplus/camera/u;->a(Lcom/oplus/camera/u$a;)V

    .line 250
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    new-instance v0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$h$MJSc_ua70o1_bsxwP2T3O9fdz2s;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$h$MJSc_ua70o1_bsxwP2T3O9fdz2s;-><init>(Lcom/oplus/camera/ui/menu/setting/h;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/widget/c;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 264
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/c;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->D()Z

    move-result p1

    if-nez p1, :cond_2

    .line 267
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    invoke-virtual {p1, p3, p4}, Lcom/oplus/camera/ui/widget/c;->a(II)V

    .line 268
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/i;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/ui/menu/setting/h$2;

    invoke-direct {p2, p0, p5}, Lcom/oplus/camera/ui/menu/setting/h$2;-><init>(Lcom/oplus/camera/ui/menu/setting/h;I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 283
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->invalidate()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showMenuOptionTipsBubble, exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMenuOptionFirstLevel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(ZII)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/i;->a(ZII)V

    :cond_0
    return-void
.end method

.method public a(ZZI)V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 350
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/i;->a(ZZI)V

    :cond_0
    return-void
.end method

.method public ah()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/e;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->x:Lcom/oplus/camera/ui/menu/b;

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()V
    .locals 9

    .line 83
    new-instance v8, Lcom/oplus/camera/ui/menu/i;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/h;->n:Lcom/oplus/camera/ui/CameraUIListener;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/menu/setting/h;->t:Z

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->ag()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 84
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->S()Z

    move-result v5

    iget-boolean v6, p0, Lcom/oplus/camera/ui/menu/setting/h;->u:Z

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/h;->a:Lcom/oplus/camera/ComboPreferences;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/i;-><init>(Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;ZLandroid/graphics/Bitmap;ZZLcom/oplus/camera/ComboPreferences;)V

    iput-object v8, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    .line 85
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/i;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/i;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->j:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setSizeRatioType(I)V

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setMenuName(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->Q()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setForceDarkAllowed(Z)V

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->x:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/b;->getSwitchIconNeedAnim()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setSwitchIconNeedAnim(Z)V

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->af()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setOffAnimIcon(Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->x:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/b;->getLottieIconNeedAnim()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setLottieIconNeedAnim(Z)V

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setKey(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/h$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/h$1;-><init>(Lcom/oplus/camera/ui/menu/setting/h;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->z:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->z:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 108
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 414
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/h;->aj()V

    .line 415
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->a:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "off"

    const-string v1, "pref_subsetting_key"

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 417
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->u:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setDrawShadow(Z)V

    :cond_1
    return-void
.end method

.method public c(ZZ)V
    .locals 7

    .line 292
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_4

    .line 293
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_subsetting_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    .line 296
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->i:Z

    goto :goto_3

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->Y()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 302
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 303
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/menu/e;

    .line 305
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/e;->b()I

    move-result v0

    .line 307
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    move-object v6, v2

    move v2, v0

    move-object v0, v6

    goto :goto_2

    .line 308
    :cond_1
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    .line 309
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/e;->b()I

    move-result v0

    .line 310
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->i:Z

    .line 317
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/h$3;

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/ui/menu/setting/h$3;-><init>(Lcom/oplus/camera/ui/menu/setting/h;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, p2, v2, v1}, Lcom/oplus/camera/util/b;->a(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;ILandroid/animation/Animator$AnimatorListener;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->t:Z

    if-eqz p0, :cond_0

    .line 861
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/i;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz p0, :cond_0

    .line 357
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/i;->setShadowOn(Z)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/c;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()V
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz p0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 692
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(I)V

    .line 694
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz p1, :cond_0

    .line 695
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->j:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/i;->setSizeRatioType(I)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz p0, :cond_0

    .line 641
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/i;->setItemText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)I
    .locals 3

    .line 702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->x:Lcom/oplus/camera/ui/menu/b;

    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->x:Lcom/oplus/camera/ui/menu/b;

    .line 705
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 709
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/h;->x:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 710
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/h;->x:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 503
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->l:Lcom/oplus/camera/ui/menu/setting/i;

    if-eqz p1, :cond_11

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick, Key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOptionFirstLevel"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->J()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 510
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->f:Z

    if-eqz p1, :cond_1

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick, mbMenuItemRemoved: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->f:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 516
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-nez p1, :cond_2

    .line 517
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->k()V

    .line 520
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->n:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v1, "pref_subsetting_key"

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 521
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result p1

    if-ne v2, p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 522
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bS()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 523
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 524
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bR()V

    .line 527
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 528
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->a:Lcom/oplus/camera/ComboPreferences;

    const-string v4, "off"

    invoke-virtual {p1, v1, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 531
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/h;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x5

    .line 533
    iget v6, p0, Lcom/oplus/camera/ui/menu/setting/h;->j:I

    if-ne v5, v6, :cond_5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 534
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p1, v3, v3, v3}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(ZZI)V

    goto :goto_0

    .line 536
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p1, v2, v3, v3}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(ZZI)V

    .line 541
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3, v3}, Lcom/oplus/camera/ui/menu/setting/i;->a(Ljava/lang/String;ZZ)Z

    move-result p1

    .line 542
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_high_resolution_key"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 543
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/h;->w:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->U()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 542
    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/menu/i;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p1, :cond_8

    .line 546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick, onMenuButtonClick(Key): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " return false."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/menu/setting/h;->a(F)V

    return-void

    .line 552
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->ac()I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_9

    return-void

    .line 556
    :cond_9
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->Z()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->X()I

    move-result p1

    if-ne v0, p1, :cond_a

    goto :goto_2

    .line 582
    :cond_a
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->h()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 583
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->p()V

    goto :goto_4

    .line 585
    :cond_b
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->o()V

    goto :goto_4

    .line 557
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->X()I

    move-result p1

    .line 559
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 560
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    .line 563
    :cond_d
    iget v5, p0, Lcom/oplus/camera/ui/menu/setting/h;->o:I

    if-lt p1, v0, :cond_e

    sub-int/2addr p1, v2

    if-ge v5, p1, :cond_f

    add-int/lit8 v3, v5, 0x1

    goto :goto_3

    :cond_e
    move v3, v5

    .line 573
    :cond_f
    :goto_3
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/h;->i(I)V

    .line 575
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 576
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_slow_video_frame_seek_bar_menu_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 577
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_multicamera_type_menu_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 578
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 579
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->r()V

    .line 589
    :cond_10
    :goto_4
    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/menu/setting/h;->a(F)V

    :cond_11
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch, view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbSubMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOptionFirstLevel"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->t:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 902
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 904
    instance-of v2, p1, Lcom/oplus/camera/ui/menu/i;

    if-eqz v2, :cond_0

    const v0, 0x7f0903d8

    .line 905
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 908
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 926
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->C:Z

    if-eqz v0, :cond_4

    .line 927
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->C:Z

    return v1

    .line 910
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 912
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 914
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 918
    :cond_3
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/setting/h;->C:Z

    return v1

    .line 939
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return v1
.end method

.method public q()V
    .locals 6

    .line 432
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->L()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->u:Z

    .line 433
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/h;->ai()V

    .line 435
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->X()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_3

    .line 436
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->R()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/h;->aj()V

    .line 438
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/h;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->T()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->F()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 440
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/h;->h(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->T()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->S()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/oplus/camera/ui/menu/setting/h;->a(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->R()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/h;->h(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/h;->aj()V

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 446
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/h;->h(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0, v3, v2}, Lcom/oplus/camera/ui/menu/setting/h;->a(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/oplus/camera/ui/menu/setting/h;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 453
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_7

    .line 454
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_subsetting_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->i:Z

    if-nez v0, :cond_5

    .line 455
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->Q()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/menu/i;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->invalidate()V

    .line 459
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_high_resolution_key"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 460
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/h;->w:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/h;->s:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->U()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/menu/i;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 463
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->ab()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 464
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->ad()I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/h;->d(Z)V

    :cond_9
    return-void
.end method

.method public r()V
    .locals 4

    .line 470
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->W()I

    move-result v0

    if-gtz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->q()V

    return-void

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    new-instance v3, Lcom/oplus/camera/ui/menu/setting/h$4;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/menu/setting/h$4;-><init>(Lcom/oplus/camera/ui/menu/setting/h;)V

    invoke-static {v1, v2, v0, v3}, Lcom/oplus/camera/util/b;->a(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected u()V
    .locals 1

    .line 197
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->u()V

    .line 199
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->l:Lcom/oplus/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/setting/i;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected v()V
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v()V

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->l:Lcom/oplus/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/h;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/setting/i;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/c;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->v:Lcom/oplus/camera/ui/widget/c;

    :cond_1
    return-void
.end method

.method public y()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    if-eqz v0, :cond_0

    const v1, 0x7f0f000e

    .line 648
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/i;->setAnimation(I)V

    .line 649
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/h;->r:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->a()V

    :cond_0
    return-void
.end method

.method public z()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
