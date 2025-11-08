.class public Lcom/oplus/camera/ui/menu/setting/o;
.super Ljava/lang/Object;
.source "CameraSettingUI.java"

# interfaces
.implements Lcom/oplus/camera/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/setting/o$b;,
        Lcom/oplus/camera/ui/menu/setting/o$a;
    }
.end annotation


# instance fields
.field public g:Landroid/app/Activity;

.field public h:Lcom/oplus/camera/ComboPreferences;

.field public i:Lcom/oplus/camera/ui/CameraUIListener;

.field public j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

.field public k:Lcom/oplus/camera/ui/menu/h;

.field public l:I

.field protected m:Z

.field protected n:Lcom/oplus/camera/ui/menu/setting/o$a;

.field private o:Lcom/oplus/camera/ui/menu/setting/o$b;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/view/animation/PathInterpolator;

.field private v:Landroid/view/animation/PathInterpolator;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/CameraUIListener;Z)V
    .locals 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->h:Lcom/oplus/camera/ComboPreferences;

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 64
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->l:I

    .line 67
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->m:Z

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->o:Lcom/oplus/camera/ui/menu/setting/o$b;

    .line 71
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->p:Z

    .line 72
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    .line 74
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->s:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->t:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->u:Landroid/view/animation/PathInterpolator;

    .line 77
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->v:Landroid/view/animation/PathInterpolator;

    .line 78
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->w:I

    .line 96
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    .line 97
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/o;->h:Lcom/oplus/camera/ComboPreferences;

    .line 98
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 99
    iput-boolean p4, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    return-void
.end method

.method private a(IZZ)V
    .locals 3

    const-string v0, "CameraSettingUI"

    const-string v1, "updateSupportedOptionItems"

    .line 682
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->p:Z

    if-eqz v1, :cond_3

    .line 685
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->m()V

    .line 687
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 688
    invoke-static {v0, p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 692
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const-string v1, "pref_platform_slow_video_fps_key"

    .line 697
    invoke-static {v1, p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 696
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const-string v1, "pref_camera_torch_mode_key"

    .line 701
    invoke-static {v1, p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 700
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 702
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    .line 703
    invoke-static {v1, p1}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    const-string v1, "pref_video_size_key"

    .line 702
    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 704
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 706
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const-string v1, "pref_video_fps_key"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    if-eqz p2, :cond_2

    .line 708
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    if-nez p1, :cond_2

    if-nez p3, :cond_2

    .line 709
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setVisibility(I)V

    .line 710
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setAlpha(F)V

    .line 713
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget p2, p0, Lcom/oplus/camera/ui/menu/setting/o;->s:I

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setOrientation(I)V

    .line 714
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->y()V

    :cond_3
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 733
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 734
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/entry/b;->J()I

    move-result v2

    invoke-static {v2}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    new-instance v2, Lcom/oplus/camera/ui/menu/h;

    const v5, 0x7f130006

    invoke-direct {v2, p1, v5, v4}, Lcom/oplus/camera/ui/menu/h;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    goto :goto_0

    .line 738
    :cond_0
    new-instance v2, Lcom/oplus/camera/ui/menu/h;

    const v5, 0x7f130005

    invoke-direct {v2, p1, v5, v4}, Lcom/oplus/camera/ui/menu/h;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    goto :goto_0

    .line 741
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/entry/b;->J()I

    move-result v2

    invoke-static {v2}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 742
    new-instance v2, Lcom/oplus/camera/ui/menu/h;

    const v5, 0x7f130001

    invoke-direct {v2, p1, v5, v3}, Lcom/oplus/camera/ui/menu/h;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    goto :goto_0

    .line 745
    :cond_2
    new-instance v2, Lcom/oplus/camera/ui/menu/h;

    const/high16 v5, 0x7f130000

    invoke-direct {v2, p1, v5, v3}, Lcom/oplus/camera/ui/menu/h;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    .line 749
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    const-string v5, "pref_switch_camera_key"

    .line 750
    invoke-virtual {v2, v5}, Lcom/oplus/camera/ui/menu/h;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/b;

    move-result-object v2

    const-string v5, "com.oplus.professional.switch.camera.type"

    .line 751
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    .line 754
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 755
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0300a7

    .line 756
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_7

    .line 759
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 761
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 762
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/camera/ui/menu/e;

    .line 763
    invoke-virtual {v7}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v8, 0x2

    .line 766
    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/lit8 v8, v5, 0x4

    if-nez v8, :cond_4

    .line 768
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    const/4 v8, 0x3

    .line 769
    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_5

    .line 771
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 772
    :cond_5
    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    and-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_6

    .line 774
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 775
    :cond_6
    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_3

    .line 777
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_7
    const-string v2, "com.oplus.feature.torch.softlight.support"

    .line 784
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 785
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    const-string v2, "pref_camera_torch_mode_key"

    .line 786
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/h;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/b;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 789
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 792
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/e;

    .line 793
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f1001bf

    .line 794
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/e;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 801
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "parseCameraMenuConfig, use time: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettingUI"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/o;Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/o;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 133
    new-array v0, v0, [I

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 135
    aget v1, v0, p0

    const/4 v2, 0x1

    .line 136
    aget v0, v0, v2

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    if-lt p3, v0, :cond_1

    if-gt p3, p1, :cond_1

    if-lt p2, v1, :cond_1

    if-gt p2, v3, :cond_1

    return v2

    :cond_1
    return p0
.end method

.method private b()V
    .locals 0

    .line 990
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i()V

    :cond_0
    return-void
.end method

.method private j(Ljava/lang/String;)Z
    .locals 0

    .line 513
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pref_subsetting_key"

    .line 514
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "pref_setting_key"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTranslationY(F)V

    .line 120
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public B()Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    return-object p0
.end method

.method public C()V
    .locals 2

    .line 148
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/o$b;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/o$b;-><init>(Lcom/oplus/camera/ui/menu/setting/o;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->o:Lcom/oplus/camera/ui/menu/setting/o$b;

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->o:Lcom/oplus/camera/ui/menu/setting/o$b;

    const-string v1, "ParseXmlThread"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/o$b;->setName(Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->o:Lcom/oplus/camera/ui/menu/setting/o$b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/o$b;->start()V

    return-void
.end method

.method public D()Z
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->j()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public E()V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b()V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->k()V

    :cond_0
    return-void
.end method

.method public G()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->l()V

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->s:I

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public H()F
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getAlpha()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public I()Z
    .locals 1

    .line 378
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CameraSettingUI"

    const-string v0, "isCameraSettingMenuVisible, mCameraSettingMenu not visible"

    .line 380
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public J()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMenuList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public K()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->t:Ljava/util/ArrayList;

    return-object p0
.end method

.method public L()Z
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMenuPanelEnable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public M()V
    .locals 0

    .line 676
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->d()V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 0

    .line 719
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f()V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->g()V

    :cond_0
    return-void
.end method

.method public P()I
    .locals 0

    .line 889
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result p0

    return p0
.end method

.method public Q()V
    .locals 0

    .line 996
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h()V

    :cond_0
    return-void
.end method

.method public a()V
    .locals 9

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeCameraSettingMenu, mPreferenceOptionGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CameraSettingUI.initializeCameraSettingMenu"

    .line 641
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    if-eqz v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    const v2, 0x7f090299

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 645
    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    const/4 v1, 0x2

    .line 647
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    if-ne v1, v2, :cond_0

    .line 648
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setInverseColor(Z)V

    .line 651
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/o;->h:Lcom/oplus/camera/ComboPreferences;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    iget v7, p0, Lcom/oplus/camera/ui/menu/setting/o;->l:I

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ui/menu/h;IZ)V

    .line 654
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_2

    .line 655
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aV()V

    .line 658
    :cond_2
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(FZJ)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 312
    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 313
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 314
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 315
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(IFF)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v4, p2

    .line 341
    invoke-static {v4, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    move/from16 v5, p3

    invoke-static {v5, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move/from16 v5, p3

    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    const-wide/16 v6, 0x190

    move-wide v10, v6

    goto :goto_2

    :cond_2
    move-wide v10, v2

    :goto_2
    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x96

    move-wide v13, v1

    goto :goto_3

    :cond_3
    move-wide v13, v2

    .line 346
    :goto_3
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/setting/o;->u:Landroid/view/animation/PathInterpolator;

    const-wide/16 v7, 0x190

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/setting/o;->v:Landroid/view/animation/PathInterpolator;

    const/4 v12, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v2 .. v14}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IFFLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;JLandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_4

    .line 349
    :cond_4
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object v6, v0, Lcom/oplus/camera/ui/menu/setting/o;->u:Landroid/view/animation/PathInterpolator;

    const-wide/16 v7, 0xfa

    iget-object v9, v0, Lcom/oplus/camera/ui/menu/setting/o;->v:Landroid/view/animation/PathInterpolator;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v2 .. v14}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IFFLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;JLandroid/view/animation/Animation$AnimationListener;J)V

    :goto_4
    return-void
.end method

.method public a(IZZZ)V
    .locals 1

    .line 257
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/o;->o:Lcom/oplus/camera/ui/menu/setting/o$b;

    if-eqz p2, :cond_0

    .line 259
    :try_start_0
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/o$b;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 261
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p2, 0x1

    .line 265
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/o;->p:Z

    .line 267
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-nez p2, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/o;->a()V

    .line 271
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p2, :cond_2

    const-string v0, "key_filter_menu_updated"

    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/o;->r()V

    .line 275
    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lcom/oplus/camera/ui/menu/setting/o;->a(IZZ)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/o$a;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 586
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7

    .line 917
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 918
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 938
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 939
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ZII)V
    .locals 0

    .line 911
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 912
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;ZII)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 0

    .line 905
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 906
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 580
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ZFFLandroid/animation/TimeInterpolator;JLandroid/animation/TimeInterpolator;JJ)V
    .locals 13

    move-object v0, p0

    .line 357
    iget-object v0, v0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 v10, 0x0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v11, p10

    invoke-static/range {v0 .. v12}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ZFFLandroid/animation/TimeInterpolator;JLandroid/animation/TimeInterpolator;JLandroid/animation/Animator$AnimatorListener;J)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCameraSettingMenu(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 529
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_2

    .line 496
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    .line 497
    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/setting/o$a;->dg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_setting_key"

    .line 498
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->t:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const-string p0, "pref_video_fps_key"

    .line 499
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.oplus.feature.video.720p.60fps.support"

    .line 500
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(F)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 305
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oplus/camera/ui/menu/setting/o;->a(FZJ)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->l:I

    .line 227
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p1, :cond_0

    .line 228
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->l:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setSizeRatioType(I)V

    :cond_0
    return-void
.end method

.method public b(IZZZ)V
    .locals 0

    .line 410
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/menu/setting/o;->a(IZZZ)V

    const/4 p1, 0x1

    .line 411
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/o;->f(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 574
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .line 893
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 894
    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 591
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c(ZZ)V

    :cond_0
    return-void
.end method

.method public b(ZZI)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(ZZI)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 107
    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/camera/ui/menu/setting/o;->a(Landroid/view/View;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CameraSettingUI"

    const-string p1, "needTouchEvent, mCameraSettingMenu is show and dispatchTouchEvent"

    .line 109
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->t:Ljava/util/ArrayList;

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 508
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/o;->j(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(I)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    if-nez p0, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 0

    .line 899
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 900
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 0

    .line 956
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 957
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 540
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 541
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setVisibility(I)V

    .line 542
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public c(ZZ)V
    .locals 2

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetMenuState, resetVisibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resetLayout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 560
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->g(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a()V

    .line 288
    invoke-static {}, Lcom/oplus/camera/util/Util;->R()I

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    const/4 v1, 0x3

    .line 290
    invoke-static {p0, v1}, Lcom/oplus/camera/ui/c;->a(Landroid/content/Context;I)I

    move-result p0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 289
    invoke-static {v0, p0, v1, v2, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/ui/menu/setting/o;->a(IFF)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/setting/o$a;->dg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_2

    .line 608
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->h(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public d(ZZ)V
    .locals 2

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSettingBarBg, halfOpaque: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_2

    .line 857
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bh()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    const/16 p2, 0xc8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 863
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    const/4 v1, 0x1

    .line 864
    invoke-static {p0, v1}, Lcom/oplus/camera/ui/c;->a(Landroid/content/Context;I)I

    move-result p0

    .line 863
    invoke-static {p1, p0, p2, v0, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 868
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    .line 869
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 868
    invoke-static {p1, p0, p2, v0, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 613
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 614
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 246
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setCameraMenuLayout(Z)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->s:I

    .line 396
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 397
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 620
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 416
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setInitState(Z)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;
    .locals 2

    .line 662
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_1

    .line 663
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 664
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const-string p0, "CameraSettingUI"

    const-string p1, "getSettingMenu, mCameraSettingMenu has not initialize"

    .line 669
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public g()V
    .locals 3

    const-string v0, "CameraSettingUI"

    const-string v1, "onPause"

    .line 164
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->p:Z

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->m:Z

    .line 168
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/o;->e(Z)V

    .line 170
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e()V

    .line 172
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->clearAnimation()V

    .line 174
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v1, :cond_0

    const-string v2, "key_setting_support"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setAlpha(F)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setInitState(Z)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->h:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_subsetting_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/o;->f(Ljava/lang/String;)V

    .line 187
    :cond_2
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->f()V

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 981
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/o;->w:I

    .line 982
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/o;->Q()V

    .line 984
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 985
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/o;->b()V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 6

    .line 805
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_filter_menu"

    .line 810
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/h;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 813
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/b;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 816
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/e;

    .line 817
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/e;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f08051d

    if-eqz p1, :cond_2

    const v2, 0x7f080420

    goto :goto_1

    .line 822
    :cond_2
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/o;->h:Lcom/oplus/camera/ComboPreferences;

    const/4 v4, 0x0

    const-string v5, "pref_recommended_menu_filter_icon_clicked_key"

    .line 823
    invoke-virtual {v3, v5, v4}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v4, "key_support_grand_tour_fitlers"

    .line 824
    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v2, 0x7f080518

    .line 828
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/e;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 829
    :cond_4
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/e;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 830
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    if-eqz p1, :cond_5

    const v3, 0x7f08041f

    goto :goto_2

    :cond_5
    const v3, 0x7f08051f

    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/e;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "CameraSettingUI"

    const-string v1, "onDestroy"

    .line 191
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->o:Lcom/oplus/camera/ui/menu/setting/o$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/o$b;->a()V

    .line 196
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->o:Lcom/oplus/camera/ui/menu/setting/o$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->o()V

    .line 204
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/h;->a()V

    .line 209
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->k:Lcom/oplus/camera/ui/menu/h;

    .line 212
    :cond_2
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    .line 213
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 923
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 924
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-nez v0, :cond_0

    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 883
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/16 p1, 0xc8

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "CameraSettingUI"

    const-string v1, "onResumeMessage"

    .line 154
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->m:Z

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->c()V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    .line 929
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 930
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->f(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public m()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 548
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setVisibility(I)V

    .line 549
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 5

    .line 433
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 434
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/o;->J()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettingMenu, mbCameraOpened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettingUI"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 438
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->p:Z

    if-eqz v1, :cond_9

    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 440
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 441
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/o;->d(Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/oplus/camera/ui/CameraUIListener;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 445
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/ui/menu/setting/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/oplus/camera/ui/menu/setting/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/o;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_3
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 454
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/o;->d(Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/oplus/camera/ui/CameraUIListener;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 457
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/ui/menu/setting/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/oplus/camera/ui/menu/setting/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_5
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/setting/o;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/o;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :cond_6
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->q:Z

    if-eqz v0, :cond_9

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "pref_subsetting_key"

    const-string v2, "pref_setting_key"

    if-eqz v0, :cond_8

    .line 472
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    invoke-static {v1, v3}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/setting/o$a;->n(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    .line 475
    invoke-static {v2, v1}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 476
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    invoke-static {v2, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/setting/o$a;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    invoke-static {v2, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/setting/o$a;->n(Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    invoke-static {v2, v3}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/menu/setting/o$a;->n(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_9

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    .line 485
    invoke-static {v1, v2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIListener;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 486
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result v0

    if-nez v0, :cond_9

    .line 487
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/o;->r:I

    invoke-static {v1, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/menu/setting/o$a;->m(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
