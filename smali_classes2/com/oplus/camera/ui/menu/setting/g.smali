.class public Lcom/oplus/camera/ui/menu/setting/g;
.super Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
.source "CameraMenuOptionDrawerItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/e;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Landroid/widget/PopupWindow;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Landroid/view/View;

.field private w:Lcom/oplus/camera/ui/menu/OplusTextView;

.field private x:Landroid/content/Context;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/menu/b;Lcom/oplus/camera/ui/menu/setting/i;Lcom/oplus/camera/ui/CameraUIListener;ILjava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;-><init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/menu/b;Lcom/oplus/camera/ui/menu/setting/i;Lcom/oplus/camera/ui/CameraUIListener;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->s:Landroid/widget/PopupWindow;

    .line 71
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->t:Ljava/lang/String;

    const/4 p3, -0x1

    .line 72
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/g;->u:I

    .line 73
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->z:Z

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/g;->aj()V

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->d:Z

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/menu/e;IZ)I
    .locals 7

    .line 178
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 179
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 181
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070400

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 182
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 183
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800015

    .line 184
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    mul-int v2, p2, v1

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    .line 185
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 186
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 187
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0703fd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 188
    invoke-virtual {v0, v3, v4, v3, v4}, Lcom/oplus/camera/ui/RotateImageView;->setPadding(IIII)V

    .line 189
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v4, 0x7f0803c6

    invoke-static {v3, v4}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setTag(Ljava/lang/Object;)V

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_1

    .line 201
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_0
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/2addr v2, v1

    return v2
.end method

.method private a(ILjava/lang/String;)V
    .locals 10

    .line 1056
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->a:Lcom/oplus/camera/ComboPreferences;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v2, 0x7f10049c

    .line 1057
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_fps_key"

    .line 1056
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1063
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/g;->g(I)Z

    move-result v0

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processVideoFpsChange, fpsType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CameraMenuOptionDrawerItem"

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1068
    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, ""

    const-string v4, "pref_lasted_video_fps"

    .line 1069
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0x3c

    .line 1071
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1073
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x1e

    const-string v7, "off"

    if-eq v6, v5, :cond_1

    const-string v5, "key_ultra_night_video"

    .line 1074
    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v5, "pref_none_sat_ultra_wide_angle_key"

    if-eqz v4, :cond_4

    .line 1078
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->a:Lcom/oplus/camera/ComboPreferences;

    const-string v8, "pref_lasted_video_size"

    invoke-virtual {v0, v8, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    invoke-interface {v1, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1083
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    const/4 v0, 0x0

    .line 1086
    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/setting/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 1087
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->s()F

    move-result v0

    sget v3, Lcom/oplus/camera/ag;->a:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.oplus.feature.wide.angle.open.default"

    .line 1088
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "on"

    .line 1089
    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1091
    :cond_3
    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const-string v0, "pref_video_blur_menu_state"

    .line 1094
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_video_blur_menu_index"

    .line 1095
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_video_blur_menu"

    .line 1096
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 1098
    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1099
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->r()V

    .line 1102
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    const-string v0, "pref_video_super_eis_key"

    const-string v3, "pref_super_eis_wide_key"

    const/4 v5, 0x0

    if-eqz p1, :cond_6

    .line 1103
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1104
    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1105
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    const-string p1, "com.oplus.feature.video.super.eis.wide.60fps.support"

    .line 1108
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v4, :cond_a

    .line 1110
    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1111
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 1115
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1, v3, v5}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v6, "com.oplus.feature.video.eis.fps"

    .line 1116
    invoke-static {v6}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v6

    if-eqz p1, :cond_8

    if-nez v4, :cond_9

    :cond_8
    if-nez p1, :cond_a

    .line 1121
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v6, :cond_a

    .line 1122
    :cond_9
    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1123
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1127
    :cond_a
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1128
    invoke-virtual {p0, v2, p2, v5}, Lcom/oplus/camera/ui/menu/setting/g;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    :goto_3
    return-void
.end method

.method private ah()Z
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->a:Lcom/oplus/camera/ComboPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_video_fps_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/g;->a:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "pref_video_super_eis_key"

    const-string v2, "off"

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "com.oplus.feature.video.eis.fps.setting.suppot"

    .line 466
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private ai()V
    .locals 10

    .line 595
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 596
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 597
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070400

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 598
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 600
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 601
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v8, 0x800015

    .line 608
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    mul-int v8, v6, v0

    mul-int/2addr v6, v2

    add-int/2addr v8, v6

    add-int/2addr v8, v3

    .line 609
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 610
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0703fc

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 611
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0703fd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 612
    invoke-virtual {v5, v6, v8, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 613
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private aj()V
    .locals 6

    .line 882
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "pref_filter_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "pref_video_hyper_lapse_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "pref_video_super_eis_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "pref_fast_video_size_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "pref_video_size_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "pref_macro_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "pref_video_blur_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "pref_raw_control_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "pref_super_raw_control_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "key_video_hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "pref_camera_pi_ai_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "pref_camera_pi_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "key_ultra_night_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "pref_high_resolution_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "pref_camera_torch_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "pref_subsetting_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "pref_portrait_new_style_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "pref_portrait_blur_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "pref_video_fps_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "pref_camera_ai_high_pixel_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_16
    const-string v1, "pref_camera_hdr_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_17
    const-string v1, "key_ai_enhancement_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_18
    const-string v1, "key_disable_ai_enhancement_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_19
    const-string v1, "pref_video_filter_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_1a
    const-string v1, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_1b
    const-string v1, "pref_setting_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1c
    const-string v1, "pref_slow_video_size_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_1d
    const-string v1, "pref_camera_high_resolution_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_1e
    const-string v1, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f10036e

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    .line 1005
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 1001
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 997
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 979
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 980
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v0

    const-string v1, "com.oplus.high.picturesize.name"

    .line 979
    invoke-static {v1, v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    if-lez v0, :cond_1

    int-to-double v0, v0

    goto :goto_2

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 983
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v1

    const-string v4, "com.oplus.high.picturesize"

    invoke-static {v4, v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v1

    .line 982
    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v0

    .line 985
    :goto_2
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1002dc

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 974
    :pswitch_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 970
    :pswitch_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 966
    :pswitch_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 962
    :pswitch_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 958
    :pswitch_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 952
    :pswitch_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 948
    :pswitch_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 944
    :pswitch_a
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10041e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 940
    :pswitch_b
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 936
    :pswitch_c
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 932
    :pswitch_d
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 928
    :pswitch_e
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 924
    :pswitch_f
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 920
    :pswitch_10
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10041c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 916
    :pswitch_11
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v1, 0x7f100373

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto :goto_3

    .line 912
    :pswitch_12
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100364

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto :goto_3

    .line 908
    :pswitch_13
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto :goto_3

    .line 904
    :pswitch_14
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto :goto_3

    .line 900
    :pswitch_15
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100488

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto :goto_3

    .line 896
    :pswitch_16
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto :goto_3

    .line 892
    :pswitch_17
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    goto :goto_3

    .line 888
    :pswitch_18
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    .line 1009
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMenuName, mMenuName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraMenuOptionDrawerItem"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f048920 -> :sswitch_1e
        -0x5c5df3f5 -> :sswitch_1d
        -0x572b61b9 -> :sswitch_1c
        -0x541be82c -> :sswitch_1b
        -0x4f05d6eb -> :sswitch_1a
        -0x487d971a -> :sswitch_19
        -0x48467df8 -> :sswitch_18
        -0x4239f6ef -> :sswitch_17
        -0x3f608456 -> :sswitch_16
        -0x3a3d343e -> :sswitch_15
        -0x2518b6d7 -> :sswitch_14
        -0x244d55d1 -> :sswitch_13
        -0x1fa329cc -> :sswitch_12
        -0x185952aa -> :sswitch_11
        -0xdae10b4 -> :sswitch_10
        -0x953b61c -> :sswitch_f
        0x166286d -> :sswitch_e
        0x4e78ba1 -> :sswitch_d
        0xbbf8ecb -> :sswitch_c
        0x1073c1f2 -> :sswitch_b
        0x10ab8f52 -> :sswitch_a
        0x2f7f1d06 -> :sswitch_9
        0x3f66a8ca -> :sswitch_8
        0x57360957 -> :sswitch_7
        0x590e13a3 -> :sswitch_6
        0x62669e01 -> :sswitch_5
        0x62dace8c -> :sswitch_4
        0x65dfb4cb -> :sswitch_3
        0x69bbb15a -> :sswitch_2
        0x75ca6ab5 -> :sswitch_1
        0x7e1951aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/e;
    .locals 3

    const/4 v0, 0x0

    .line 515
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 516
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/e;

    if-nez v1, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private p(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/e;
    .locals 3

    const/4 v0, 0x0

    .line 531
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 532
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->h(I)Lcom/oplus/camera/ui/menu/e;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected A()V
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 871
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->A()V

    const/4 v0, 0x0

    .line 872
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public B()I
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    .line 826
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B()I

    move-result p0

    return p0
.end method

.method public C()I
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x2

    .line 834
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->O()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 835
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07040e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 836
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070417

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0

    .line 842
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C()I

    move-result p0

    return p0
.end method

.method public J()Landroid/view/View;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    return-object p0
.end method

.method public a(F)V
    .locals 2

    const/4 v0, 0x0

    .line 332
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 3

    .line 857
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    const/4 v0, 0x0

    .line 859
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 862
    instance-of v2, v1, Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v2, :cond_0

    .line 863
    check-cast v1, Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 852
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setImageIcon, icon: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMenuOptionDrawerItem"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 817
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/e;)V
    .locals 2

    .line 506
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k(Ljava/lang/String;)I

    move-result v0

    .line 508
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->z()I

    move-result v1

    if-nez v1, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/camera/ui/menu/setting/g;->a(Lcom/oplus/camera/ui/menu/e;IZ)I

    .line 510
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ai()V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)V
    .locals 0

    .line 1018
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/oplus/camera/ui/menu/e;)V
    .locals 4

    .line 214
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "full"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v3, 0x7f0805b2

    .line 221
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1133
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_1

    .line 1134
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    .line 1135
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->B()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 1136
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->ao()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1137
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->J()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 1138
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->H()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 1139
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->H()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "rear"

    .line 1140
    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 1141
    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildTopMenuEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1142
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    if-eqz p2, :cond_1

    .line 295
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->s:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->w()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZII)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->aY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 252
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_video_fps_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->n(Ljava/lang/String;)V

    .line 262
    :cond_2
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->q:Z

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_5

    .line 265
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/g;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    goto :goto_2

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 272
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move p2, v1

    .line 274
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 280
    :cond_4
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->q:Z

    .line 282
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_5

    .line 283
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/g;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    .line 725
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMenuOptionItems, key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOptionDrawerItem"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 728
    array-length p1, p2

    if-lez p1, :cond_1

    .line 729
    :goto_0
    array-length p1, p2

    if-ge v1, p1, :cond_0

    .line 730
    aget-object p1, p2, v1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/g;->k(Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_1

    .line 734
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->m()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_video_size_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 478
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result p1

    const-string p2, "video_size_4kuhd"

    invoke-static {p2, p1}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/String;I)Z

    move-result p1

    .line 480
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/menu/e;

    .line 481
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSupportedItems, key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enable 4k: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraMenuOptionDrawerItem"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v3, p1}, Lcom/oplus/camera/ui/menu/e;->a(Z)V

    move-object v2, v3

    :cond_1
    if-nez p1, :cond_2

    .line 491
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/g;->j(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 492
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->Y()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 493
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/g;->a(Lcom/oplus/camera/ui/menu/e;)V

    :cond_3
    :goto_0
    return v1

    .line 497
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_video_fps_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 498
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/g;->n(Ljava/lang/String;)V

    return v1

    .line 502
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 11

    const-string v0, "CameraMenuOptionDrawerItem"

    const-string v1, "initCameraMenuOptionView"

    .line 90
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v1, 0x7f0c00f3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    const v1, 0x7f0903f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/OplusTextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setMatchParent(Z)V

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 102
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->O()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    move v3, v0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 104
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/g;->h(I)Lcom/oplus/camera/ui/menu/e;

    move-result-object v3

    invoke-direct {p0, v3, v0, v2}, Lcom/oplus/camera/ui/menu/setting/g;->a(Lcom/oplus/camera/ui/menu/e;IZ)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    goto/16 :goto_3

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->O()I

    move-result v0

    const v3, 0x800015

    if-ne v1, v0, :cond_5

    move v0, v2

    move v4, v0

    .line 108
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 109
    new-instance v4, Lcom/oplus/camera/ui/menu/OplusTextView;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oplus/camera/ui/menu/OplusTextView;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    .line 111
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070407

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 110
    invoke-virtual {v4, v2, v5}, Lcom/oplus/camera/ui/menu/OplusTextView;->setTextSize(IF)V

    .line 112
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070409

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 113
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070406

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 114
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070408

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 115
    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07041b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 116
    iget-object v9, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070423

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 117
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    mul-int v6, v0, v5

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    .line 119
    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v7, 0x11

    .line 120
    invoke-virtual {v4, v7}, Lcom/oplus/camera/ui/menu/OplusTextView;->setGravity(I)V

    .line 121
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070422

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/oplus/camera/ui/menu/OplusTextView;->setMaxWidth(I)V

    .line 122
    invoke-virtual {v4, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setSingleLine(Z)V

    .line 123
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Lcom/oplus/camera/ui/menu/OplusTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v7, 0x6

    .line 124
    invoke-virtual {v4, v7}, Lcom/oplus/camera/ui/menu/OplusTextView;->setMarqueeRepeatLimit(I)V

    .line 125
    invoke-virtual {v4, v9, v2, v9, v2}, Lcom/oplus/camera/ui/menu/OplusTextView;->setPadding(IIII)V

    if-nez v0, :cond_2

    const v7, 0x7f1003d1

    goto :goto_2

    :cond_2
    const v7, 0x7f1003d0

    .line 126
    :goto_2
    invoke-virtual {v4, v7}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(I)V

    .line 127
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v8, 0x7f060420

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/oplus/camera/ui/menu/OplusTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    sget-object v7, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v7, v8, v4}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 129
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v7

    sub-int/2addr v7, v0

    sub-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/menu/setting/g;->h(I)Lcom/oplus/camera/ui/menu/e;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 132
    invoke-virtual {v7}, Lcom/oplus/camera/ui/menu/e;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    add-int/2addr v5, v6

    .line 136
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v4, p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto/16 :goto_1

    :cond_4
    move v1, v4

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x2

    .line 140
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->O()I

    move-result v4

    if-ne v0, v4, :cond_8

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 142
    new-instance v2, Lcom/oplus/camera/ui/inverse/InverseImageView;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/oplus/camera/ui/inverse/InverseImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08022b

    .line 143
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 144
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07079f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 145
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 146
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07041c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 147
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 148
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const v3, 0x7f0803cf

    .line 150
    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setImageResource(I)V

    .line 151
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result v3

    if-ne v1, v3, :cond_6

    const/high16 v3, 0x43340000    # 180.0f

    .line 154
    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setRotation(F)V

    .line 157
    :cond_6
    instance-of v3, v0, Lcom/oplus/camera/ui/menu/RippleLayout;

    if-eqz v3, :cond_7

    .line 158
    move-object v3, v0

    check-cast v3, Lcom/oplus/camera/ui/menu/RippleLayout;

    invoke-virtual {v3, v1}, Lcom/oplus/camera/ui/menu/RippleLayout;->setNeedForbidEvent(Z)V

    :cond_7
    add-int v1, v6, v4

    .line 162
    invoke-virtual {v0, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 164
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070417

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    .line 165
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07040d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 166
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v3, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 168
    invoke-virtual {v2, p0}, Lcom/oplus/camera/ui/inverse/InverseImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_8
    move v1, v2

    .line 171
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 173
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b()V

    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 2

    .line 1032
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_video_fps_key"

    .line 1034
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 1037
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v1, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v0

    .line 1041
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/g;->f(Z)V

    .line 1042
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/menu/setting/g;->a(ILjava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->P()V

    goto :goto_0

    :cond_1
    const-string v1, "pref_macro_switch"

    .line 1044
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1045
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->a:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_last_macro_switch"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1049
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1051
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 878
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(I)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 847
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOptionItemText, text: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMenuOptionDrawerItem"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)I
    .locals 5

    .line 548
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 552
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 555
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOptionItem, itemValue: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not found in current option items."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMenuOptionDrawerItem"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->z()I

    move-result v1

    if-nez v1, :cond_7

    .line 564
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/e;

    .line 565
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 566
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/e;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_6

    .line 572
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 573
    check-cast v2, Lcom/oplus/camera/ui/RotateImageView;

    .line 575
    invoke-virtual {v2}, Lcom/oplus/camera/ui/RotateImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 576
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_6

    .line 584
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 588
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ai()V

    :cond_7
    return v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 7

    .line 618
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->a:Lcom/oplus/camera/ComboPreferences;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 620
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v0

    const-string v1, "pref_video_size_key"

    invoke-static {v1, v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x78

    .line 623
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/setting/g;->p(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/e;

    move-result-object v1

    .line 625
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v2

    invoke-static {v2}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_5

    .line 627
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->j(Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v2, "com.oplus.feature.video.4k.120fps.support"

    .line 631
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 632
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->j(Ljava/lang/String;)I

    goto :goto_1

    .line 634
    :cond_2
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "video_size_4kuhd"

    .line 635
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v1, :cond_4

    .line 638
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/e;->a(Z)V

    goto :goto_1

    .line 641
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->o(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 644
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->a(Lcom/oplus/camera/ui/menu/e;)V

    .line 645
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/e;->a(Z)V

    :cond_5
    :goto_1
    const/16 v0, 0x18

    .line 653
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/setting/g;->p(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/e;

    move-result-object v1

    const-string v2, "com.oplus.feature.video.8k.24fps.support"

    .line 655
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x1e

    .line 656
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/menu/setting/g;->p(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/e;

    move-result-object v5

    const-string v6, "video_size_8k"

    .line 658
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v1, :cond_6

    .line 660
    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/menu/e;->a(Z)V

    goto :goto_2

    .line 663
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->o(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/e;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 666
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->a(Lcom/oplus/camera/ui/menu/e;)V

    .line 667
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 668
    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/menu/e;->a(Z)V

    :cond_7
    :goto_2
    if-eqz v5, :cond_d

    .line 673
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 674
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->j(Ljava/lang/String;)I

    goto :goto_3

    .line 681
    :cond_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/setting/g;->o(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/e;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 684
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/g;->a(Lcom/oplus/camera/ui/menu/e;)V

    .line 685
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 686
    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/menu/e;->a(Z)V

    :cond_a
    if-eqz v1, :cond_d

    .line 690
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 691
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->j(Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_d

    .line 699
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->j(Ljava/lang/String;)I

    .line 703
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v0

    invoke-static {v0, p1}, Lcom/oplus/camera/util/Util;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 704
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ah()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    move v4, v3

    .line 706
    :goto_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v0

    if-ge v3, v0, :cond_11

    .line 707
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/g;->h(I)Lcom/oplus/camera/ui/menu/e;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    const/16 v1, 0x3c

    .line 713
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_10

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoFpsItemsAvailability, video resolution value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enable 60fps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraMenuOptionDrawerItem"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/menu/e;->a(Z)V

    .line 718
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->q()V

    :cond_10
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 746
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->l:Lcom/oplus/camera/ui/menu/setting/i;

    if-eqz v0, :cond_b

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick, Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraMenuOptionDrawerItem"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-nez v0, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->k()V

    .line 757
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ac()I

    move-result v0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    return-void

    .line 761
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->Z()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    .line 762
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v0

    .line 764
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 765
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    .line 768
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v6

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v6, p1

    add-int/lit8 p1, v6, -0x1

    .line 770
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->O()I

    move-result v6

    if-ne v3, v6, :cond_5

    .line 771
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->o:I

    if-gt v3, v0, :cond_5

    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    move p1, v4

    .line 783
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ad()I

    move-result v3

    if-eq v3, p1, :cond_6

    .line 784
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/g;->i(I)V

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick, length: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", index: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 794
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->q()V

    goto :goto_1

    :cond_6
    const-string p0, "onClick, cancel, index unchanged"

    .line 786
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 797
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->h()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 798
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->p()V

    goto :goto_1

    .line 800
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->o()V

    .line 804
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v4, v5}, Lcom/oplus/camera/ui/menu/setting/i;->a(Ljava/lang/String;ZZ)Z

    move-result p1

    .line 806
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_high_resolution_key"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 807
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/g;->t:Ljava/lang/String;

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->U()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", menuOptionClickResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 811
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/g;->a(F)V

    :cond_b
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1148
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public q()V
    .locals 11

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMenuOptionView, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ad()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOptionDrawerItem"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v0

    const-string v2, "pref_camera_high_resolution_key"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_13

    .line 342
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->R()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 343
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->aa()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 345
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.oplus.super.resolution.picturesize"

    .line 347
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 352
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v0

    const-string v5, "com.oplus.high.picturesize.name"

    .line 351
    invoke-static {v5, v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    if-lez v0, :cond_0

    int-to-double v5, v0

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 355
    invoke-interface {v5}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v5

    const-string v6, "com.oplus.high.picturesize"

    .line 354
    invoke-static {v6, v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v5

    .line 353
    invoke-static {v0, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v5

    :goto_0
    double-to-float v0, v5

    const/4 v7, 0x0

    .line 356
    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v7, 0x7f1002dc

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->t:Ljava/lang/String;

    double-to-int v0, v5

    .line 358
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->u:I

    goto :goto_1

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v5, 0x7f100369

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->t:Ljava/lang/String;

    .line 364
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->w:Lcom/oplus/camera/ui/menu/OplusTextView;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->t:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->O()I

    move-result v0

    if-nez v0, :cond_c

    move v0, v3

    .line 368
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 369
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    .line 371
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    return-void

    .line 375
    :cond_4
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/RotateImageView;

    .line 377
    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_5

    return-void

    :cond_5
    const/4 v5, -0x1

    .line 381
    iget v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->u:I

    if-eq v5, v6, :cond_6

    .line 382
    invoke-virtual {v1, v6}, Lcom/oplus/camera/ui/RotateImageView;->setHighResolutionType(I)V

    .line 388
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ad()I

    move-result v5

    const v6, 0x7f0600a2

    if-ne v0, v5, :cond_8

    .line 389
    iget-boolean v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->z:Z

    const v7, 0x7f060071

    if-eqz v5, :cond_7

    .line 390
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 391
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    goto :goto_3

    .line 393
    :cond_7
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 394
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-static {v6}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v6

    goto :goto_3

    .line 397
    :cond_8
    iget-boolean v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->z:Z

    if-eqz v5, :cond_9

    .line 398
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v6, 0x7f060072

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 399
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v7, 0x7f060068

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    goto :goto_3

    .line 401
    :cond_9
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 402
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v7, 0x7f060096

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 406
    :goto_3
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/g;->h(I)Lcom/oplus/camera/ui/menu/e;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 409
    invoke-virtual {v7}, Lcom/oplus/camera/ui/menu/e;->f()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 410
    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_4

    .line 412
    :cond_a
    invoke-virtual {v1, v3, v3}, Lcom/oplus/camera/ui/RotateImageView;->a(ZZ)V

    .line 414
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    const v7, 0x7f06009a

    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 418
    :cond_b
    :goto_4
    invoke-virtual {v1, v5, v6}, Lcom/oplus/camera/ui/RotateImageView;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 420
    :cond_c
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->O()I

    move-result v0

    if-ne v4, v0, :cond_13

    move v0, v3

    .line 421
    :goto_5
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_13

    .line 422
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->X()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int/2addr v5, v4

    .line 423
    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/setting/g;->h(I)Lcom/oplus/camera/ui/menu/e;

    move-result-object v6

    if-nez v6, :cond_d

    return-void

    .line 429
    :cond_d
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 430
    invoke-virtual {v6}, Lcom/oplus/camera/ui/menu/e;->f()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ad()I

    move-result v8

    const-string v9, "pref_video_size_key"

    if-ne v5, v8, :cond_f

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ah()Z

    move-result v5

    if-nez v5, :cond_f

    .line 433
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 434
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const v6, 0x7f0803c8

    goto :goto_6

    :cond_e
    const v6, 0x7f0803ca

    :goto_6
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 436
    :cond_f
    invoke-virtual {v6}, Lcom/oplus/camera/ui/menu/e;->f()Z

    move-result v5

    const v6, 0x7f0803c9

    const v8, 0x7f0803cb

    if-nez v5, :cond_11

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMenuOptionView, key: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", disabled."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 440
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_7

    :cond_10
    move v6, v8

    :goto_7
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 443
    :cond_11
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 444
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/g;->x:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_8

    :cond_12
    move v6, v8

    :goto_8
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 451
    :cond_13
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 452
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 453
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->v:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 454
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->t:Ljava/lang/String;

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/g;->r:Ljava/lang/String;

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->U()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 457
    :cond_15
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ab()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 458
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->ad()I

    move-result v0

    if-eqz v0, :cond_16

    move v3, v4

    :cond_16
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/g;->d(Z)V

    :cond_17
    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 1023
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->z:Z

    .line 1025
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/g;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->q()V

    :cond_0
    return-void
.end method

.method protected u()V
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->u()V

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->l:Lcom/oplus/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/g;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/setting/i;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/g;->s:Landroid/widget/PopupWindow;

    :cond_1
    return-void
.end method

.method public z()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
