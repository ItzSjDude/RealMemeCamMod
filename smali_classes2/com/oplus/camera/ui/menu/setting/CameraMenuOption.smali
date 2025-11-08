.class public Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
.super Ljava/lang/Object;
.source "CameraMenuOption.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;
.implements Lcom/oplus/camera/ui/menu/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;,
        Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/e;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Landroid/view/animation/AnimationSet;

.field private F:Landroid/view/animation/AnimationSet;

.field private G:F

.field private H:Lcom/a/a/f;

.field private I:Lcom/a/a/f;

.field private J:Z

.field private K:Z

.field public a:Lcom/oplus/camera/ComboPreferences;

.field public b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

.field public c:Landroid/view/ViewGroup;

.field public d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:I

.field protected k:Landroid/content/Context;

.field protected l:Lcom/oplus/camera/ui/menu/setting/i;

.field protected m:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

.field protected n:Lcom/oplus/camera/ui/CameraUIListener;

.field protected o:I

.field protected p:Lcom/oplus/camera/ui/menu/b;

.field protected q:Z

.field private final r:Landroid/view/animation/PathInterpolator;

.field private final s:Landroid/view/animation/PathInterpolator;

.field private final t:Landroid/view/animation/PathInterpolator;

.field private u:Z

.field private v:Z

.field private w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/menu/b;Lcom/oplus/camera/ui/menu/setting/i;Lcom/oplus/camera/ui/CameraUIListener;ILjava/lang/String;)V
    .locals 5

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->r:Landroid/view/animation/PathInterpolator;

    .line 102
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->s:Landroid/view/animation/PathInterpolator;

    .line 103
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->t:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    .line 106
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    .line 107
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d:Z

    .line 109
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    .line 110
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f:Z

    const/4 v2, 0x1

    .line 111
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->g:Z

    .line 112
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->h:Z

    .line 113
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i:Z

    .line 114
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->u:Z

    .line 115
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j:I

    .line 116
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    .line 117
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    .line 118
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

    .line 119
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 120
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    .line 121
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    .line 122
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q:Z

    .line 124
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v:Z

    .line 125
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    .line 126
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->x:I

    .line 127
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->y:I

    .line 128
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->z:I

    .line 129
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->A:I

    .line 130
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    .line 132
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D:I

    .line 133
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E:Landroid/view/animation/AnimationSet;

    .line 134
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F:Landroid/view/animation/AnimationSet;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 135
    iput v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G:F

    .line 136
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H:Lcom/a/a/f;

    .line 137
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->I:Lcom/a/a/f;

    .line 138
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J:Z

    .line 139
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->K:Z

    .line 144
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    .line 145
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    .line 146
    iput-object p4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    if-eqz p3, :cond_1

    .line 149
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    .line 150
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p1, p5}, Lcom/oplus/camera/ui/menu/b;->setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V

    .line 152
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-static {p1}, Lcom/oplus/camera/ui/e;->a(Lcom/oplus/camera/ui/menu/b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "CameraMenuOption, getOptionKey: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/b;->getOptionKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMenuOption"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p0, p7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l(Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07075c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->z:I

    .line 163
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07075d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->A:I

    .line 164
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b2a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D:I

    .line 165
    iput-object p5, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 166
    iput p6, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j:I

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 13

    .line 1622
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "pref_video_size_key"

    .line 1623
    invoke-static {v1, p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1622
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1625
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    const v3, 0x7f10049c

    .line 1630
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_fps_key"

    .line 1629
    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->g(I)Z

    move-result v2

    .line 1633
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v4}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1634
    invoke-interface {v4, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, ""

    const-string v6, "pref_lasted_video_size"

    .line 1635
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v6, "pref_lasted_video_save_status"

    const/4 v7, 0x0

    .line 1636
    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "key_ai_enhancement_off_video_size"

    .line 1637
    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "video_size_4kuhd"

    .line 1639
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "pref_none_sat_ultra_wide_angle_key"

    const-string v11, "pref_lasted_video_fps"

    const-string v12, "off"

    if-eqz v9, :cond_3

    .line 1640
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v2, v11, v5}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1643
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const/16 v9, 0x3c

    .line 1644
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1645
    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1646
    invoke-interface {v4, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1647
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const/4 v2, 0x0

    .line 1650
    invoke-virtual {p0, p1, v2, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v2, :cond_2

    .line 1652
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->s()F

    move-result v2

    sget v9, Lcom/oplus/camera/ag;->a:F

    invoke-static {v2, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.oplus.feature.wide.angle.open.default"

    .line 1653
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "on"

    .line 1654
    invoke-interface {v4, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1656
    :cond_2
    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const-string v2, "pref_video_blur_menu_state"

    .line 1659
    invoke-interface {v4, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_video_blur_menu_index"

    .line 1660
    invoke-interface {v4, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_video_blur_menu"

    .line 1661
    invoke-interface {v4, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 1663
    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1665
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v2, :cond_4

    .line 1666
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->r()V

    .line 1670
    :cond_4
    :goto_1
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "pref_video_super_eis_key"

    .line 1671
    invoke-interface {v4, v2, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_super_eis_wide_key"

    .line 1672
    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v2, "com.oplus.feature.ultra.night.video.support"

    .line 1675
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "video_size_1080p"

    .line 1676
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "key_ultra_night_video"

    .line 1677
    invoke-interface {v4, v2, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1680
    :cond_6
    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->a(ILjava/lang/String;)Z

    move-result p1

    const/16 v2, 0x1e

    if-nez p1, :cond_7

    .line 1681
    invoke-interface {v4, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1682
    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1684
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1685
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    const/16 p1, 0x78

    .line 1689
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "com.oplus.feature.video.4k.120fps.support"

    .line 1690
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1691
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1692
    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1696
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    if-eqz p1, :cond_a

    .line 1697
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/oplus/camera/ui/menu/setting/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    :cond_a
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1701
    invoke-virtual {p0, v1, p2, v7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/view/View;FFFFD)V
    .locals 12

    move-object v0, p1

    move v1, p2

    float-to-double v7, v1

    move v1, p3

    float-to-double v9, v1

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v1, p6

    .line 1504
    invoke-static/range {v1 .. v10}, Lcom/a/a/l;->a(DDDDD)D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v2, p4

    float-to-double v8, v2

    move/from16 v2, p5

    float-to-double v10, v2

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v2, p6

    .line 1506
    invoke-static/range {v2 .. v11}, Lcom/a/a/l;->a(DDDDD)D

    move-result-wide v2

    double-to-float v2, v2

    if-eqz v0, :cond_1

    .line 1510
    instance-of v3, v0, Lcom/oplus/camera/ui/menu/i;

    if-eqz v3, :cond_0

    .line 1511
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object v4, v0

    check-cast v4, Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/i;->getPivotYScaleValue()F

    move-result v4

    mul-float/2addr v3, v4

    .line 1512
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1515
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1516
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1518
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1519
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Landroid/view/View;FFFFD)V
    .locals 0

    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/View;FFFFD)V

    return-void
.end method

.method private synthetic a([Ljava/lang/Object;)V
    .locals 1

    .line 1345
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    const v0, 0x7f08022d

    .line 1346
    invoke-static {p0, v0}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1345
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->K:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->u:Z

    return p1
.end method

.method private ah()V
    .locals 7

    .line 979
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F:Landroid/view/animation/AnimationSet;

    .line 981
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    .line 982
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 983
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x96

    .line 984
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 985
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 987
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D:I

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-direct {v0, v1, v1, v6, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 988
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 989
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 990
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const/4 v1, 0x1

    .line 991
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 992
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 993
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 994
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$2;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private ai()V
    .locals 5

    .line 1013
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 1014
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E:Landroid/view/animation/AnimationSet;

    .line 1015
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xfa

    .line 1016
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1017
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1018
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1019
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D:I

    int-to-float v1, v1

    sub-float v1, v2, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    .line 1020
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1021
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    .line 1022
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 1023
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 1024
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private aj()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 1533
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 1535
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H:Lcom/a/a/f;

    return-void
.end method

.method private ak()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 1539
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 1541
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->I:Lcom/a/a/f;

    return-void
.end method

.method private b(ILjava/lang/String;)V
    .locals 3

    .line 1705
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->o(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_slow_video_size_key"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1707
    invoke-interface {p0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1709
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "video_size_1080p"

    .line 1710
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "pref_slow_video_rear_fps_key"

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.oplus.slow.video.1080p.default.value"

    .line 1712
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    .line 1711
    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const-string p1, "video_size_720p"

    .line 1713
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.oplus.slow.video.720p.default.value"

    .line 1715
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    .line 1714
    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1719
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 1462
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->I:Lcom/a/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1463
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->I:Lcom/a/a/f;

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H:Lcom/a/a/f;

    if-nez v0, :cond_1

    .line 1467
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->aj()V

    .line 1470
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H:Lcom/a/a/f;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$3;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 1477
    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method private synthetic b([Ljava/lang/Object;)V
    .locals 0

    .line 1344
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v:Z

    return p1
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H:Lcom/a/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1482
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H:Lcom/a/a/f;

    .line 1485
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->I:Lcom/a/a/f;

    if-nez v0, :cond_1

    .line 1486
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ak()V

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->I:Lcom/a/a/f;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$4;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 1500
    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method private synthetic c([Ljava/lang/Object;)V
    .locals 1

    .line 340
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    const v0, 0x7f08022d

    .line 341
    invoke-static {p0, v0}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 340
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1526
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1527
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1528
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(F)V

    :cond_0
    return-void
.end method

.method private synthetic d([Ljava/lang/Object;)V
    .locals 0

    .line 339
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(I)V

    return-void
.end method

.method public static synthetic lambda$-0L38qLLrCJsKmDCdwHbKVqY99k(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$0o8ITDEAaqoMbsfgTPMocVN-G5Q(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$Gb8I-JFr70QtFYpJLtBDodvj-jQ(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$U-iLBZn4BP4aQ9rJbPuE6YE_QkY(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 1101
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method public B()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public C()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public D()Z
    .locals 0

    .line 1119
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v:Z

    return p0
.end method

.method public E()V
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v:Z

    if-eqz p0, :cond_0

    .line 1134
    invoke-virtual {v0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public F()I
    .locals 0

    .line 1145
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->y:I

    return p0
.end method

.method public G()I
    .locals 1

    .line 1299
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method public H()Z
    .locals 1

    .line 1307
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1308
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public I()I
    .locals 1

    .line 1315
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a()I

    move-result p0

    return p0

    .line 1317
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1318
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public J()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public K()F
    .locals 0

    .line 1332
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G:F

    return p0
.end method

.method public L()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public M()V
    .locals 0

    return-void
.end method

.method protected N()Ljava/lang/String;
    .locals 0

    .line 1554
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    if-eqz p0, :cond_0

    .line 1555
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOptionTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public O()I
    .locals 0

    .line 1562
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOptionType()I

    move-result p0

    return p0
.end method

.method protected P()V
    .locals 2

    .line 1615
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    .line 1616
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->aR()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    .line 1617
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aR()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Q()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1747
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1751
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public R()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1764
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1765
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    .line 1766
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    const v1, 0x7f0805b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 1773
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public S()Z
    .locals 1

    .line 1781
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public T()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1787
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    if-eqz p0, :cond_0

    .line 1788
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOptionExpandIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public U()Ljava/lang/String;
    .locals 2

    .line 1809
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    .line 1810
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/e;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public V()Ljava/lang/String;
    .locals 2

    .line 1818
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/e;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public W()I
    .locals 2

    .line 1826
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/e;->b()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public X()I
    .locals 0

    .line 1842
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 1843
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Y()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/e;",
            ">;"
        }
    .end annotation

    .line 1850
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Z()Z
    .locals 0

    .line 1854
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOptionOnOff()Z

    move-result p0

    return p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 1546
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    if-eqz p0, :cond_0

    .line 1547
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOptionKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(F)V
    .locals 2

    .line 1076
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1077
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->X()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/16 p1, 0x8

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationLayoutTranslationToX, startPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "endPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    .line 1149
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    return-void

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-nez v0, :cond_1

    .line 1158
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    .line 1159
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1160
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {v0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1163
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v:Z

    if-eqz v0, :cond_2

    .line 1164
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 1166
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v:Z

    .line 1167
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a(II)V

    .line 1168
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->setDuration(J)V

    .line 1169
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1170
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(III)V
    .locals 3

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layoutWithAnimationSet, startPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "endPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    .line 1176
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    return-void

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-nez v0, :cond_2

    .line 1188
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    .line 1189
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1190
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {v0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1193
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v:Z

    if-eqz v0, :cond_3

    .line 1194
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 1196
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v:Z

    .line 1197
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a(II)V

    .line 1198
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->setDuration(J)V

    .line 1200
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v0, 0xfa

    const/4 p2, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p3, :cond_4

    .line 1204
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, p2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1205
    invoke-virtual {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0

    .line 1207
    :cond_4
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1208
    invoke-virtual {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1211
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1212
    invoke-virtual {p1, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1213
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1214
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 1215
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 1113
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p0, :cond_0

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .line 1451
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1452
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->K:Z

    .line 1453
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Landroid/view/View;)V

    .line 1456
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne v0, p2, :cond_2

    .line 1457
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1086
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1088
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c:Landroid/view/ViewGroup;

    .line 1089
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1091
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addItemViewToParent, Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMenuOption"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;)V
    .locals 0

    .line 1082
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)V
    .locals 4

    .line 269
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    if-eqz p1, :cond_6

    .line 270
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2, v1}, Lcom/oplus/camera/ui/menu/setting/i;->a(Ljava/lang/String;ZZ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemSelected, key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", return"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMenuOption"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-interface {p1, v0, v3, p2}, Lcom/oplus/camera/ui/menu/setting/i;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 281
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p2

    .line 284
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    if-eq p1, p2, :cond_2

    .line 287
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i(I)V

    .line 288
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->r()V

    .line 290
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/oplus/camera/ui/menu/setting/i;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 295
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_3

    .line 296
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/b;->getOptionSingleIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setOptionItemIcon(Landroid/graphics/Bitmap;)V

    .line 297
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ac()I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 301
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    if-eqz v1, :cond_5

    .line 305
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p()V

    .line 308
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/menu/setting/i;->a(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPopUpWindowBegin, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", option key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 858
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->g(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/oplus/camera/ui/menu/e;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidePopUpWindowBegin, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", option key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOption"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 874
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 875
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    const/4 p1, 0x3

    .line 878
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 879
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 880
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c(Z)V

    goto :goto_0

    .line 881
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result p1

    if-ne v0, p1, :cond_5

    const/4 p1, 0x2

    .line 882
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    .line 883
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q()V

    .line 884
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 886
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-eqz p1, :cond_4

    .line 887
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 888
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E()V

    .line 891
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->x:I

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(II)V

    goto :goto_0

    .line 892
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result p1

    if-eqz p1, :cond_5

    .line 893
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E()V

    .line 894
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->x:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->g:Z

    return-void
.end method

.method public a(ZII)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 215
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H:Lcom/a/a/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/a/f;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->k()Lcom/a/a/f;

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->j()Lcom/a/a/f;

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 227
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 230
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 231
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 236
    :cond_3
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q:Z

    .line 238
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p0, :cond_6

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    goto :goto_4

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 243
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 246
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 247
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move p2, v3

    .line 249
    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 250
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 255
    :cond_5
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q:Z

    .line 257
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p0, :cond_6

    .line 258
    invoke-virtual {p0, v3, v2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    :cond_6
    :goto_4
    return-void
.end method

.method public a(ZZI)V
    .locals 0

    return-void
.end method

.method public a(ZZJ)V
    .locals 0

    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-nez p2, :cond_0

    .line 1730
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    const v1, 0x7f10049c

    .line 1731
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_video_fps_key"

    .line 1730
    invoke-virtual {p2, v1, v0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 1735
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    const-string p3, "pref_video_size_key"

    .line 1736
    invoke-static {p3, p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1735
    invoke-virtual {p0, p3, p1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string p0, "video_size_4kuhd"

    .line 1739
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x3c

    .line 1740
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.oplus.feature.video.4k60fps.ultrawide.support"

    .line 1741
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 546
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    move p1, v0

    .line 547
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/e;

    .line 549
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 550
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 721
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 722
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(Ljava/lang/String;)V

    .line 724
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/oplus/camera/ui/menu/setting/i;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 725
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f:Z

    .line 726
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Z)V

    .line 727
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Ljava/lang/String;)V

    .line 728
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/setting/i;->getMenuPanelEnable()Z

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-interface {p2}, Lcom/oplus/camera/ui/menu/setting/i;->getMenuPanelAshed()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    .line 731
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    .line 737
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->u()V

    return v0

    :cond_2
    if-eqz p1, :cond_4

    .line 740
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result p2

    if-nez p2, :cond_4

    .line 741
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(Ljava/lang/String;)V

    if-nez p3, :cond_3

    .line 744
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->u()V

    return v0

    :cond_4
    return v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 604
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableMenuOption, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", keyValue: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraMenuOption"

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->s()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 607
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    .line 608
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    .line 609
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q:Z

    if-nez p3, :cond_1

    .line 612
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->h:Z

    .line 613
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->R()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->S()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 620
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 621
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 561
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 562
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_4

    .line 563
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m()V

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q()V

    .line 569
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->X()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    .line 570
    invoke-virtual {p0, v0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    goto :goto_0

    .line 571
    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/setting/i;->getMenuPanelEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 572
    invoke-virtual {p0, p3, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    .line 575
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->X()I

    move-result p1

    if-gtz p1, :cond_3

    const/16 p1, 0x8

    .line 576
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_1

    .line 578
    :cond_3
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 581
    :cond_4
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q()V

    :goto_1
    return p3

    :cond_5
    return v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 658
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMenuOptionItems, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraMenuOption"

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 661
    array-length p1, p2

    if-lez p1, :cond_2

    .line 662
    array-length p1, p2

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    .line 663
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 666
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz v3, :cond_0

    .line 667
    new-instance v3, Lcom/oplus/camera/ui/menu/setting/j;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    iget v7, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oplus/camera/ui/menu/setting/j;-><init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;I)V

    .line 669
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/j;->b()V

    .line 670
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->h(I)Lcom/oplus/camera/ui/menu/e;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 673
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/e;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/oplus/camera/ui/menu/setting/j;->h(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/oplus/camera/ui/menu/setting/j;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 675
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v4, v3, v2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_2

    .line 682
    iget p2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    .line 683
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->N()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setTitleName(Ljava/lang/String;)V

    .line 684
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
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

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1972
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 1976
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1977
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    .line 1979
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1980
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 1981
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1985
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-nez p1, :cond_5

    move v2, p1

    move p1, v0

    .line 1988
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 1989
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    .line 1995
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1996
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    .line 1997
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l(Ljava/lang/String;)V

    goto :goto_3

    .line 1973
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1974
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_3
    if-lez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public aa()Z
    .locals 0

    .line 1858
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getImageTitleMode()Z

    move-result p0

    return p0
.end method

.method public ab()Z
    .locals 1

    .line 1862
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    if-eqz p0, :cond_0

    .line 1863
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getImageTitleColorChangeable()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "CameraMenuOption"

    const-string v0, "getImageTitleColorChangeable, mCameraMenuOptionInfo is null"

    .line 1865
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public ac()I
    .locals 0

    .line 1872
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getGroupType()I

    move-result p0

    return p0
.end method

.method public ad()I
    .locals 0

    .line 1898
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    return p0
.end method

.method public ae()I
    .locals 2

    .line 2043
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected af()Landroid/graphics/Bitmap;
    .locals 0

    .line 2065
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOffAnimationIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected ag()Landroid/graphics/Bitmap;
    .locals 0

    .line 2069
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOnAnimationIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q()V

    .line 171
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->s()Z

    .line 172
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c()V

    .line 174
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    .line 175
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resetLayout left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    .line 1037
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1038
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    .line 1039
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 1036
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viewVisibilityWithAnimationSet, visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "isScale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraMenuOption"

    .line 1220
    invoke-static {v4, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 1229
    :cond_0
    iget-boolean v4, v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->u:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 1230
    iput-boolean v5, v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->u:Z

    return-void

    :cond_1
    const/4 v4, 0x4

    const/16 v6, 0x8

    if-ne v6, v1, :cond_2

    .line 1234
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v4, v7, :cond_3

    :cond_2
    if-ne v4, v1, :cond_4

    .line 1235
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v6, v4, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eqz v1, :cond_5

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "pref_subsetting_key"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of v4, v3, Lcom/oplus/camera/ui/menu/i;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lcom/oplus/camera/ui/menu/i;

    .line 1242
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/i;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1243
    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/i;->e()V

    .line 1246
    :cond_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0xfa

    if-nez v1, :cond_6

    .line 1253
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1254
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1255
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->K()F

    move-result v17

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    .line 1258
    :cond_6
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1259
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1260
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->K()F

    move-result v17

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_0
    const-wide/16 v9, 0x1f4

    if-eqz v2, :cond_7

    .line 1265
    invoke-virtual {v1, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_1

    .line 1267
    :cond_7
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1270
    :goto_1
    invoke-virtual {v5, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1271
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1272
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->t:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-nez v2, :cond_8

    .line 1275
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->K()F

    move-result v15

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_2

    :cond_8
    move-object v2, v5

    .line 1279
    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1280
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1282
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1283
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b(ZZ)V
    .locals 4

    .line 1044
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1045
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1046
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1047
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x3

    .line 1049
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v3

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1051
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result p1

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_1

    .line 1052
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    .line 1053
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q()V

    .line 1054
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->x:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(I)V

    .line 1058
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 633
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableMenuOption, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", keyValue: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraMenuOption"

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->s()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 636
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    .line 637
    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    .line 638
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q:Z

    if-nez p3, :cond_1

    .line 641
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->h:Z

    .line 642
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 645
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->R()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->S()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 649
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return v1
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 787
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 788
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f:Z

    .line 790
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    .line 791
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 792
    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    goto :goto_0

    .line 794
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    .line 798
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->v()V

    return p1

    :cond_2
    return v0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 695
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMenuOptionItems, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mOptionItemList: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", remove keys: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraMenuOption"

    .line 696
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 699
    array-length p1, p2

    if-lez p1, :cond_2

    .line 700
    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    .line 701
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 704
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(I)V

    .line 706
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public c()V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d:Z

    if-nez v0, :cond_0

    .line 180
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/g;->a(Lcom/oplus/camera/ui/menu/f;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1123
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 1125
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a(I)V

    .line 1128
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->cancel()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 901
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 902
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 904
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 905
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(F)V

    :cond_0
    const/4 v0, 0x3

    .line 908
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 909
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 911
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    .line 912
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->x:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(I)V

    .line 916
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 917
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->r()V

    goto :goto_1

    .line 919
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q()V

    .line 922
    :goto_1
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1569
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    .line 1570
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1571
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->h:Z

    .line 1573
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1575
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setOptionValue fail! index: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMenuOption"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMenu, option key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    .line 960
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 964
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ah()V

    :cond_0
    if-eqz p1, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p1, 0x1

    .line 969
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->u:Z

    .line 970
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 972
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 p1, 0x0

    .line 975
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->K:Z

    return-void
.end method

.method public c(ZZ)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->g()V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E()V

    :cond_1
    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(ZZ)V

    .line 194
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/g;->b(Lcom/oplus/camera/ui/menu/f;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setItemState, state( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->y:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    .line 756
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 757
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/b;->getIconsId()I

    move-result v0

    .line 759
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    .line 763
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addContainMenuOption, lazy load key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iconsId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraMenuOption"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 768
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 770
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/e;

    .line 771
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 772
    invoke-virtual {p0, p1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Lcom/oplus/camera/ui/menu/e;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    const/4 p1, 0x1

    .line 779
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J:Z

    :cond_4
    :goto_1
    return-void
.end method

.method protected d(Ljava/lang/String;Z)V
    .locals 3

    .line 1582
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    .line 1583
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1586
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_slow_video_size_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1587
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Z)V

    .line 1588
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(ILjava/lang/String;)V

    .line 1589
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->P()V

    return-void

    .line 1593
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_size_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1594
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Z)V

    .line 1595
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ILjava/lang/String;)V

    .line 1596
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->P()V

    return-void

    .line 1600
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/setting/i;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1601
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/b;->getOptionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1602
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f(Z)V

    .line 1603
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1604
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->P()V

    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m()V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1293
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->G()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    .line 1294
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(IZ)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1340
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j:I

    .line 1342
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_0

    .line 1343
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraMenuOption$0o8ITDEAaqoMbsfgTPMocVN-G5Q;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraMenuOption$0o8ITDEAaqoMbsfgTPMocVN-G5Q;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraMenuOption$Gb8I-JFr70QtFYpJLtBDodvj-jQ;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraMenuOption$Gb8I-JFr70QtFYpJLtBDodvj-jQ;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/screen/b/a;->e(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 835
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->e:Z

    if-nez v0, :cond_1

    .line 836
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q()V

    .line 842
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_1

    .line 843
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    :cond_1
    return-void
.end method

.method protected f(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1608
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p1, :cond_0

    .line 1609
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->aR()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    .line 1610
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->aR()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOptionKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1797
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 1799
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 1801
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 926
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideMenu, option key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remove: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", itemView: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", show: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOption"

    .line 926
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->F()I

    move-result p1

    if-nez p1, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 933
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    .line 934
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ai()V

    .line 935
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E:Landroid/view/animation/AnimationSet;

    new-instance v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$1;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 954
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 955
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->E:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected g(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1723
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    const-string p1, "pref_none_sat_ultra_wide_angle_key"

    const-string v0, "off"

    .line 1724
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h(I)Lcom/oplus/camera/ui/menu/e;
    .locals 1

    .line 1834
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1835
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public h()Z
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 0

    .line 317
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->f:Z

    return p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 3

    .line 1876
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1878
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    if-eq v0, v1, :cond_0

    .line 1879
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    .line 1880
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    .line 1881
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->h:Z

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOptionValueNoToPreferences, key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mOptionValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j(Ljava/lang/String;)I
    .locals 2

    .line 1904
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1905
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1908
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1911
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    const-string p0, "CameraMenuOption"

    const-string p1, "removeOptionItem, the remain item is 0, Error"

    .line 1914
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1918
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1919
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ae()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1920
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    .line 1921
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->c(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1923
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 0

    .line 321
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->g:Z

    return p0
.end method

.method public k(Ljava/lang/String;)I
    .locals 4

    .line 1933
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    .line 1934
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1935
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    if-nez p1, :cond_0

    move v0, p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1943
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1954
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1956
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    const-string p0, "CameraMenuOption"

    const-string p1, "addOptionItem, the remain item is 0, Error"

    .line 1959
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1963
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method public k()V
    .locals 3

    .line 335
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l()V

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraMenuOption$U-iLBZn4BP4aQ9rJbPuE6YE_QkY;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraMenuOption$U-iLBZn4BP4aQ9rJbPuE6YE_QkY;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraMenuOption$-0L38qLLrCJsKmDCdwHbKVqY99k;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$CameraMenuOption$-0L38qLLrCJsKmDCdwHbKVqY99k;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/screen/b/a;->e(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V

    .line 343
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/setting/i;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(IZ)V

    .line 345
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/b;->getOptionSingleIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setOptionItemIcon(Landroid/graphics/Bitmap;)V

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 11

    const-string v0, "CameraMenuOption"

    const-string v1, "initializeOptionItems"

    .line 351
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->Z()Z

    move-result v0

    if-nez v0, :cond_8

    .line 354
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->X()I

    move-result v0

    if-lez v0, :cond_8

    .line 357
    new-instance v1, Lcom/oplus/camera/ui/menu/d;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/ui/menu/d;-><init>(Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    .line 358
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setId(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    .line 361
    new-instance v6, Lcom/oplus/camera/ui/menu/setting/j;

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    iget-object v8, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    iget-object v9, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    iget v10, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/oplus/camera/ui/menu/setting/j;-><init>(Lcom/oplus/camera/ComboPreferences;Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;I)V

    .line 363
    invoke-virtual {v6}, Lcom/oplus/camera/ui/menu/setting/j;->b()V

    .line 365
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->h(I)Lcom/oplus/camera/ui/menu/e;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ac()I

    move-result v8

    if-ne v8, v4, :cond_1

    .line 369
    invoke-virtual {v7}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "full"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    const v4, 0x7f0805b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3, v1}, Lcom/oplus/camera/ui/menu/setting/j;->b(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 373
    :cond_0
    invoke-virtual {v7}, Lcom/oplus/camera/ui/menu/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3, v1}, Lcom/oplus/camera/ui/menu/setting/j;->b(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ac()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 377
    invoke-virtual {v7}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    const-string v7, "%d"

    .line 376
    invoke-static {v4, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/oplus/camera/ui/menu/setting/j;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 379
    :cond_2
    invoke-virtual {v7}, Lcom/oplus/camera/ui/menu/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/oplus/camera/ui/menu/setting/j;->h(Ljava/lang/String;)V

    .line 383
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v3, v6}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 386
    :cond_4
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->N()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setTitleName(Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/menu/b;->getOptionSingleIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setOptionItemIcon(Landroid/graphics/Bitmap;)V

    .line 388
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget v6, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v2, v6}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    .line 389
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v2, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setOptionItemListListener(Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;)V

    .line 390
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v2

    if-ne v5, v2, :cond_5

    .line 391
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/oplus/camera/screen/b/a;->a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V

    goto :goto_2

    .line 392
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v2

    if-ne v4, v2, :cond_6

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    .line 393
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v2

    if-ne v5, v2, :cond_6

    .line 394
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    .line 395
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07054b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 394
    invoke-virtual {v0, v2, v1, v3}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(Landroid/view/View;II)V

    goto :goto_2

    .line 396
    :cond_6
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v2

    if-ne v3, v2, :cond_7

    .line 397
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->i()V

    .line 398
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->n:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/oplus/camera/screen/b/a;->a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V

    goto :goto_2

    .line 400
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(Landroid/view/View;II)V

    .line 403
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    .line 2004
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/setting/i;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    .line 2006
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    .line 2007
    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    if-gez p1, :cond_2

    .line 2008
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->h:Z

    if-nez p1, :cond_1

    .line 2009
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    .line 2011
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 2012
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/e;

    if-eqz p1, :cond_1

    .line 2014
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/e;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2015
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/e;->a(Z)V

    .line 2020
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    if-gez p1, :cond_5

    .line 2021
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->ae()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    .line 2023
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 2024
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    goto :goto_1

    .line 2028
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 2030
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 2036
    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    if-eq v0, p1, :cond_5

    .line 2037
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 2031
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    .line 2033
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 2034
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->B:Ljava/lang/String;

    :cond_5
    :goto_1
    return-void
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2051
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2055
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/b;->getOptionDefaultValue()Ljava/lang/String;

    move-result-object p1

    .line 2057
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/e;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 2061
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->h()V

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    const/4 v0, 0x1

    .line 417
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(ZZ)V

    .line 418
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Z)V

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/b;->release()V

    .line 422
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->p:Lcom/oplus/camera/ui/menu/b;

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 426
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/e;

    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/e;->g()V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 434
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->C:Ljava/util/ArrayList;

    .line 437
    :cond_3
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oplus/camera/ui/menu/setting/i;

    .line 438
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/g;->b(Lcom/oplus/camera/ui/menu/f;)V

    .line 439
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m()V

    .line 441
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 442
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-eqz v0, :cond_5

    .line 446
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->cancel()V

    .line 447
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->w:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    .line 450
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->A()V

    .line 451
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->k:Landroid/content/Context;

    return-void
.end method

.method public o()V
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz p0, :cond_0

    .line 456
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/g;->a(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->e()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 496
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->X()I

    move-result v0

    if-lez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->R()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->S()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 502
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->h(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->J()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public r()V
    .locals 0

    .line 510
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q()V

    return-void
.end method

.method protected s()Z
    .locals 1

    .line 592
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->X()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t()Z
    .locals 0

    .line 596
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->q:Z

    return p0
.end method

.method protected u()V
    .locals 0

    return-void
.end method

.method protected v()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public x()I
    .locals 0

    .line 1029
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->x:I

    return p0
.end method

.method public y()V
    .locals 0

    return-void
.end method

.method protected z()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
