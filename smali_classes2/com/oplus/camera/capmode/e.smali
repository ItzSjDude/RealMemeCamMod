.class public Lcom/oplus/camera/capmode/e;
.super Lcom/oplus/camera/capmode/w;
.source "CommonVideoMode.java"


# instance fields
.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/oplus/camera/util/a;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/w;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->g:Z

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->h:Z

    .line 88
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->i:Z

    .line 89
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->j:Z

    .line 90
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->k:Z

    const/4 p2, -0x1

    .line 91
    iput p2, p0, Lcom/oplus/camera/capmode/e;->l:I

    .line 92
    iput p1, p0, Lcom/oplus/camera/capmode/e;->m:I

    const/4 p2, 0x0

    .line 93
    iput-object p2, p0, Lcom/oplus/camera/capmode/e;->n:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 94
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->o:Z

    .line 95
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->p:Z

    .line 96
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->q:Z

    const/16 p3, 0x78

    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, p3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/capmode/e;->r:Landroid/util/Range;

    const/16 p3, 0x3c

    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, p3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/capmode/e;->s:Landroid/util/Range;

    const/16 p3, 0x1e

    .line 100
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, p3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p4

    iput-object p4, p0, Lcom/oplus/camera/capmode/e;->t:Landroid/util/Range;

    const/16 p4, 0x14

    .line 101
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4, p3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/capmode/e;->u:Landroid/util/Range;

    .line 103
    iput-object p2, p0, Lcom/oplus/camera/capmode/e;->v:Lcom/oplus/camera/util/a;

    .line 105
    sget p2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    iput p2, p0, Lcom/oplus/camera/capmode/e;->w:I

    const-string p2, ""

    .line 107
    iput-object p2, p0, Lcom/oplus/camera/capmode/e;->x:Ljava/lang/String;

    .line 108
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->y:Z

    const-string p1, "func_enhancement_video"

    .line 114
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    new-instance p1, Lcom/oplus/camera/util/a;

    invoke-direct {p1}, Lcom/oplus/camera/util/a;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/capmode/e;->v:Lcom/oplus/camera/util/a;

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p1, :cond_2

    const-string p1, "pref_video_blur_menu"

    .line 119
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "func_video_blur_process"

    .line 120
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->setVideoBlurEffect(Z)V

    :cond_2
    return-void
.end method

.method private A()Z
    .locals 2

    .line 3503
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k60fps()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.video.4k60fps.ultrawide.support"

    .line 3504
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    const-string v1, "off"

    .line 3505
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private B()Z
    .locals 2

    .line 3509
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.video.8k30fps.ultrawide.support"

    .line 3510
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    const-string v1, "off"

    .line 3511
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private C()Z
    .locals 0

    .line 3515
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k60fps()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.feature.video.4k60fps.ultrawide.support"

    .line 3516
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private D()V
    .locals 7

    const-string v0, "CommonVideoMode"

    const-string v1, "onHighFpsStateChange"

    .line 3520
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 3523
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3524
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 3525
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 3526
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3527
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1004c4

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 3528
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3529
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f1004c4

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private E()V
    .locals 1

    const/4 v0, 0x1

    .line 3847
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/e;->g(Z)V

    return-void
.end method

.method private F()V
    .locals 2

    const-string v0, "CommonVideoMode"

    const-string v1, "resetCurrentVideoBlurPreference"

    .line 3873
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3875
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_video_blur_menu_state"

    .line 3876
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_video_blur_menu_index"

    .line 3877
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_video_blur_menu"

    .line 3878
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3879
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private G()V
    .locals 7

    .line 3948
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 3949
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3950
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_video_fps_key"

    const-string v3, "30"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3951
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f1000b0

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 3952
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f1005b9

    const/16 v4, 0xaf0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 3953
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v0

    .line 3952
    invoke-interface {v2, v3, v4, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II[Ljava/lang/Object;)V

    return-void
.end method

.method private H()Z
    .locals 1

    const-string v0, "pref_video_blur_menu_state"

    .line 4220
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_blur_menu_index"

    .line 4221
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

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

.method private I()V
    .locals 4

    .line 4258
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_blur_menu_state"

    .line 4259
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_video_blur_menu_index"

    .line 4260
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_video_blur_menu"

    .line 4261
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 4263
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->setBlurIndex(I)V

    .line 4264
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->setVideoBlurEffect(Z)V

    .line 4265
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100296

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 4266
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 4267
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    return-void
.end method

.method private J()V
    .locals 2

    .line 4271
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 4273
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 4274
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->J()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4275
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->supportBeautyButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4276
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4277
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->P()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4278
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    :cond_2
    return-void
.end method

.method private K()V
    .locals 3

    .line 4412
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->showBeautyButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4413
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isPanelMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4414
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 4416
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private L()Z
    .locals 1

    const-string v0, "func_enhancement_video"

    .line 4688
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.feature.ai.enhancement.video3.support"

    .line 4689
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private M()Z
    .locals 0

    const-string p0, "com.oplus.feature.ai.enhancement.video.filter.mutex.support"

    .line 4693
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private N()Z
    .locals 2

    .line 4831
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 4832
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result p0

    const-string v1, "video_size_1080p"

    .line 4834
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private O()Z
    .locals 8

    .line 4838
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 4839
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v1

    const-string v2, "com.oplus.feature.ai.enhancement.video.front.resolution"

    .line 4840
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.feature.ai.enhancement.video.rear.resolution"

    .line 4842
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4845
    iget-boolean v4, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1e

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 4848
    invoke-static {v2, v0}, Lcom/oplus/camera/util/Util;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    return v5

    .line 4849
    :cond_1
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    array-length v2, v3

    if-lez v2, :cond_3

    .line 4852
    invoke-static {v3, v0}, Lcom/oplus/camera/util/Util;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-ne v7, v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    return v5

    :cond_3
    const-string v2, "func_enhancement_video"

    .line 4853
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    const-string v2, "video_size_1080p"

    if-eqz p0, :cond_5

    .line 4854
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-ne v7, v1, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    return v5

    :cond_5
    if-ne v7, v1, :cond_6

    .line 4857
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "video_size_720p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :cond_7
    :goto_3
    return v5
.end method

.method private P()Z
    .locals 0

    const-string p0, "com.oplus.feature.wide.video.only720p.support"

    .line 4870
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private Q()Z
    .locals 2

    .line 4874
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_camera_line_video"

    const-string v1, "off"

    .line 4875
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "grid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private R()Z
    .locals 2

    const-string v0, "com.oplus.feature.explorer.support"

    .line 4914
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "key_explorer_chip_state"

    .line 4915
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private S()V
    .locals 4

    .line 5004
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5005
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_photo_codec_backup_key"

    const-string v3, "JPEG"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5007
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_video_codec_backup_key"

    const-string v3, "H264"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "pref_photo_codec_key"

    .line 5009
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_video_codec_key"

    .line 5010
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5011
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private T()Z
    .locals 1

    const-string v0, "com.oplus.sat.support.preversion"

    .line 5015
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5016
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5017
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private U()Z
    .locals 1

    const-string v0, "com.oplus.feature.video.blur.1080p.support"

    .line 5041
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez p0, :cond_0

    const-string p0, "com.oplus.feature.video.blur.1080p.disable.rear"

    .line 5043
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private V()V
    .locals 6

    .line 5060
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    return-void

    .line 5064
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mVideoSizeType:Ljava/lang/String;

    .line 5065
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_video_fps_key"

    const-string v3, "30"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5067
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/e;->getRecordingMaxDuration(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5068
    div-int/lit8 v2, v2, 0x3c

    if-gtz v2, :cond_1

    return-void

    .line 5074
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/e;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    .line 5080
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v1, 0xaf0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5081
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 5080
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(III[Ljava/lang/Object;)V

    return-void
.end method

.method private W()Z
    .locals 2

    const-string v0, "func_video_super_eis_process"

    .line 5147
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5151
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5152
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k120fps()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5153
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.oplus.low.fps.video.preview.process.by.aps"

    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic X()V
    .locals 1

    .line 4135
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 4136
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "key_ai_enhancement_video"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic Y()V
    .locals 3

    .line 3866
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterCurrName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;I)V

    .line 3867
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getEffectMenuKeyByMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic Z()V
    .locals 0

    .line 1780
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->n:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->y()V

    return-void
.end method

.method private declared-synchronized a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x1

    .line 1667
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1669
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1670
    sget-object v1, Lcom/oplus/camera/e/b;->V:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1671
    sget-object v3, Lcom/oplus/camera/e/b;->bp:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    if-eqz v1, :cond_3

    .line 1673
    array-length v3, v1

    if-lez v3, :cond_3

    if-eqz p1, :cond_3

    array-length v3, p1

    if-lez v3, :cond_3

    .line 1677
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->v:Lcom/oplus/camera/util/a;

    aget v1, v1, v2

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/util/a;->a(FF)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->v:Lcom/oplus/camera/util/a;

    aget v1, v1, v2

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/util/a;->b(FF)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1684
    :cond_1
    iget v0, p0, Lcom/oplus/camera/capmode/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/capmode/e;->m:I

    const/16 v0, 0x1e

    .line 1686
    iget v1, p0, Lcom/oplus/camera/capmode/e;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_2

    .line 1687
    monitor-exit p0

    return-void

    .line 1690
    :cond_2
    :try_start_1
    iput v2, p0, Lcom/oplus/camera/capmode/e;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1693
    :try_start_2
    sget-object v0, Lcom/oplus/camera/e/b;->an:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 1701
    monitor-exit p0

    return-void

    .line 1704
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1705
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/e;->b(I)V

    goto :goto_1

    .line 1706
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1707
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1708
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoFlashTorchOpen()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1709
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1710
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->R()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1711
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/e;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1713
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 1695
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1696
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 935
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3c

    if-ne v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 936
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyCurrIndex()I

    move-result v3

    const-string v4, "com.oplus.feature.facebeauty.support.videosize"

    .line 937
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "video_size_4kuhd"

    .line 939
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "video_size_1080p"

    if-nez v5, :cond_7

    if-eqz v4, :cond_1

    .line 940
    invoke-static {v4, p1}, Lcom/oplus/camera/util/Util;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_1
    if-nez v0, :cond_7

    .line 942
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-nez v0, :cond_4

    .line 943
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->k()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 944
    :cond_3
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 945
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result p2

    if-nez p2, :cond_7

    .line 946
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "com.oplus.feature.ai.enhancement.video.facebeauty.mutex.support"

    .line 947
    invoke-static {p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const-string p2, "func_face_beauty_common"

    .line 968
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-boolean p2, p0, Lcom/oplus/camera/capmode/e;->j:Z

    if-nez p2, :cond_b

    .line 969
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getFaceBeautyItemDefaultValue(I)I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 971
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getBackUpFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 972
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getBackUpFaceBeautyKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getFaceBeautyItemDefaultValue(I)I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 975
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getBackUpFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eq v3, p2, :cond_b

    .line 978
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 980
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    goto :goto_2

    .line 948
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrMakeupIndex()I

    move-result p2

    if-eqz p2, :cond_8

    .line 949
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getMakeupTypeKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    if-eqz v3, :cond_b

    .line 953
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 955
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getBackUpFaceBeautyKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    .line 956
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 957
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getBackUpFaceBeautyKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 960
    :cond_9
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "pref_face_beauty_close_by_resolution"

    .line 961
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 964
    :cond_a
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 966
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    move p2, v2

    goto :goto_2

    :cond_b
    move p2, v3

    .line 984
    :goto_2
    invoke-virtual {p0, p2, v2}, Lcom/oplus/camera/capmode/e;->updateFaceBeautyLevel(IZ)V

    .line 985
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCustomBeautyValues()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->updateCustomBeautyValues([I)V

    .line 987
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_c

    .line 988
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p2}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    .line 989
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCustomBeautyValues()[I

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/preview/a/t;->a([I)V

    .line 992
    :cond_c
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 993
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isMakeupOpen()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "com.oplus.feature.makeup.low.performance"

    .line 994
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 995
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getMakeupTypeKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_d
    return-void
.end method

.method private a(Z)V
    .locals 11

    .line 691
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    const-string v1, "off"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.feature.videoblur.ultrawide.support"

    .line 698
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_2

    .line 706
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_2
    const-string v0, "com.oplus.feature.front.eis.wide.force.support"

    .line 710
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    goto :goto_0

    .line 717
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v0

    :goto_0
    const-string v4, "pref_video_super_eis_key"

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 722
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_5

    .line 728
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 732
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.oplus.feature.custom.beauty.front.video.support"

    .line 734
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "pref_video_size_key"

    const-string v7, "video_size_720p"

    if-eqz v5, :cond_a

    .line 735
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyCurrIndex()I

    move-result v5

    .line 737
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCustomBeautyKeys()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/e;->getFaceBeautyItemDefaultValue(I)I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_6

    const v9, -0x186a0

    if-eq v8, v9, :cond_6

    const/16 v8, 0x66

    goto :goto_1

    :cond_6
    move v8, v3

    .line 743
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v9

    if-nez v9, :cond_7

    iget-boolean v9, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v9, :cond_e

    if-eq v5, v8, :cond_e

    :cond_7
    if-eqz p1, :cond_8

    .line 747
    iget-object v5, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v5, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 750
    :cond_8
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 751
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v5, v2

    move-object v0, v7

    goto :goto_2

    :cond_9
    move v5, v3

    :goto_2
    if-eqz p1, :cond_f

    .line 757
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    goto :goto_5

    .line 760
    :cond_a
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz p1, :cond_b

    .line 762
    iget-object v5, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v5, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 765
    :cond_b
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v3

    goto :goto_4

    .line 768
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 771
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->p:Z

    if-eqz v0, :cond_d

    move v5, v3

    goto :goto_3

    :cond_d
    move v5, v2

    :goto_3
    move-object v0, v7

    :goto_4
    if-eqz p1, :cond_f

    .line 779
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    goto :goto_5

    :cond_e
    move v5, v3

    .line 783
    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v8

    if-eqz v8, :cond_11

    if-eqz p1, :cond_10

    .line 785
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 788
    :cond_10
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "key_video_hdr"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 789
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v8, v9}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    if-eqz p1, :cond_11

    .line 792
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 796
    :cond_11
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v8

    if-eqz v8, :cond_13

    if-eqz p1, :cond_12

    .line 798
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 801
    :cond_12
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "key_ultra_night_video"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 802
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v8, v9}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    if-eqz p1, :cond_13

    .line 805
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 809
    :cond_13
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v8

    if-eqz v8, :cond_15

    if-eqz p1, :cond_14

    .line 811
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 814
    :cond_14
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "key_ai_enhancement_video"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 815
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v8, v9}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    .line 818
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_15
    const-string v8, "func_face_beauty_custom"

    .line 822
    invoke-virtual {p0, v8}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 823
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 824
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 825
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v8

    if-nez v8, :cond_17

    .line 826
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v8

    if-eqz v8, :cond_17

    iget-boolean v8, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v8, :cond_17

    if-eqz p1, :cond_16

    .line 829
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 832
    :cond_16
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 833
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_17

    .line 836
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 840
    :cond_17
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v1

    const/16 v4, 0x3c

    if-eq v4, v1, :cond_19

    const/16 v4, 0x78

    if-ne v4, v1, :cond_18

    goto :goto_6

    :cond_18
    move v1, v3

    goto :goto_7

    :cond_19
    :goto_6
    move v1, v2

    .line 843
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkVideoBlurCondition, executeBeforePreview: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", videoSizeType: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", isHighFps: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "CommonVideoMode"

    invoke-static {v8, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "video_size_8k"

    .line 846
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "video_size_1080p"

    if-nez v4, :cond_1a

    const-string v4, "video_size_4kuhd"

    .line 847
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 848
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->U()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1a
    if-eqz p1, :cond_1b

    .line 850
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 853
    :cond_1b
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->U()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v7, v8

    :cond_1c
    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 854
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_1d

    .line 858
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_1d
    move v5, v2

    :cond_1e
    if-eqz v1, :cond_1f

    .line 864
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/e;->f(Z)V

    .line 865
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->D()V

    goto :goto_8

    :cond_1f
    move v2, v5

    :goto_8
    if-eqz v2, :cond_20

    .line 869
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->G()V

    :cond_20
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 1

    .line 4671
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 4672
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4675
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/a/a;->a(Z)V

    .line 4676
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 6

    .line 1257
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1261
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1262
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_should_reopen_ai_enhancement_video"

    .line 1263
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_1

    .line 1264
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->O()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1265
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p2

    if-nez p2, :cond_7

    .line 1266
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isMakeupOpen()Z

    move-result p2

    if-nez p2, :cond_7

    .line 1267
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->r()Z

    move-result p2

    if-nez p2, :cond_7

    .line 1268
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->M()Z

    move-result p2

    if-nez p2, :cond_7

    .line 1269
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->aA()Z

    move-result p2

    if-nez p1, :cond_4

    .line 1272
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1275
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_ai_enhancement_off_video_size"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkReopenAiEnhancementVideo, reopen ai enhancement video, change video size to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", oldForceChangeRecSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isListenPreference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-string v4, "pref_video_size_key"

    .line 1284
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1285
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    const-string v0, "key_ai_enhancement_video"

    const-string v1, "on"

    .line 1288
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1289
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p1, :cond_6

    .line 1292
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_6
    const-string p1, "pref_camera_mode_key"

    .line 1295
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1296
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/oplus/camera/capmode/-$$Lambda$e$yaZT1FNQDWUHmfyxxRfDU6qBnkg;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/-$$Lambda$e$yaZT1FNQDWUHmfyxxRfDU6qBnkg;-><init>(Lcom/oplus/camera/capmode/e;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 553
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic aa()V
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 1298
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "key_ai_enhancement_video"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic ab()V
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 1246
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "key_ai_enhancement_video"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic ac()V
    .locals 0

    .line 1199
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->av()V

    return-void
.end method

.method private synthetic ad()V
    .locals 2

    .line 1067
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "pref_video_blur_menu"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic ae()V
    .locals 2

    .line 1053
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    return-void
.end method

.method private b(I)V
    .locals 4

    .line 1716
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result v0

    .line 1717
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->o:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1718
    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/e;->o:Z

    if-eqz v1, :cond_1

    .line 1721
    iput v3, p0, Lcom/oplus/camera/capmode/e;->mAiEnhanceSceneChangeCount:I

    .line 1722
    iput p1, p0, Lcom/oplus/camera/capmode/e;->mAiEnhanceSceneStart:I

    .line 1725
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->o:Z

    if-eqz v0, :cond_2

    .line 1726
    iput p1, p0, Lcom/oplus/camera/capmode/e;->mAiEnhanceSceneEnd:I

    .line 1729
    :cond_2
    iget v0, p0, Lcom/oplus/camera/capmode/e;->l:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aU()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 1734
    iget v0, p0, Lcom/oplus/camera/capmode/e;->mAiEnhanceSceneChangeCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/oplus/camera/capmode/e;->mAiEnhanceSceneChangeCount:I

    .line 1737
    :cond_4
    iput p1, p0, Lcom/oplus/camera/capmode/e;->l:I

    if-eq p1, v2, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 1749
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v3}, Lcom/oplus/camera/capmode/a;->e(I)V

    goto :goto_1

    .line 1745
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/16 p1, 0xc

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/a;->e(I)V

    goto :goto_1

    .line 1741
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/16 p1, 0x1a

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/a;->e(I)V

    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1000
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterIndex()I

    move-result p2

    .line 1001
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/e;->getFilterType(I)Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3c

    if-ne v3, v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "oplus_video_filter_portrait_retention"

    .line 1003
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "oplus_video_filter_neon"

    .line 1004
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "video_size_4kuhd"

    .line 1006
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "video_size_8k"

    .line 1007
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v1, :cond_6

    .line 1009
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_6

    .line 1010
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->y()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1011
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->M()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1012
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1013
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result v1

    if-ne p2, v1, :cond_6

    :cond_3
    if-eqz v3, :cond_4

    const-string v1, "video_size_720p"

    .line 1014
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    .line 1016
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "video_size_1080p"

    .line 1017
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->U()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 1024
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p1, v3}, Lcom/oplus/camera/ui/preview/a/t;->l(Z)V

    .line 1025
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/preview/a/t;->m(Z)V

    goto :goto_2

    .line 1018
    :cond_6
    :goto_1
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/e;->g(Z)V

    .line 1019
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result p2

    .line 1020
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->updateFilterParam(I)V

    .line 1021
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/preview/a/t;->l(Z)V

    .line 1022
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/preview/a/t;->m(Z)V

    .line 1028
    :goto_2
    iput p2, p0, Lcom/oplus/camera/capmode/e;->w:I

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_video_super_eis_key"

    .line 434
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_video_filter_menu"

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 436
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_video_hdr"

    .line 440
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "func_hdr"

    .line 441
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "key_ultra_night_video"

    .line 444
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "func_ultra_night_video"

    .line 445
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "key_ai_enhancement_video"

    .line 448
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "func_enhancement_video"

    .line 449
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const-string p0, "pref_video_blur_menu_state"

    .line 454
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 437
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Z)Z
    .locals 2

    .line 2256
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v0, :cond_5

    .line 2257
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2258
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2259
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2260
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    const-string v0, "com.oplus.track.focus.ultra.wide.support"

    .line 2263
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2264
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_5

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2266
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result p1

    const v0, 0x3f8ccccd    # 1.1f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2267
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "com.oplus.video.4k.track.focus.support"

    .line 2268
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2269
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_2
    const-string p1, "com.oplus.video.ai.enhancement.track.focus.support"

    .line 2270
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2271
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    const-string p1, "com.oplus.video.60fps.track.focus.support"

    .line 2272
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x3c

    .line 2273
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v0

    if-eq p1, v0, :cond_5

    :cond_4
    const/16 p1, 0x78

    .line 2274
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 2275
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2276
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "com.oplus.track.focus.support"

    .line 2277
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(I)V
    .locals 5

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    return-void

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_ai_enhancement_guide_reminder_times"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 1768
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->X()Z

    move-result v1

    goto :goto_0

    .line 1764
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->Y()Z

    move-result v1

    :goto_0
    const/4 p1, 0x3

    if-ge v0, p1, :cond_4

    if-eqz v1, :cond_4

    .line 1773
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/2addr v0, v3

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1776
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->n:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-nez p1, :cond_3

    .line 1777
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "key_ai_enhancement_video"

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/e;->n:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 1780
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/camera/capmode/-$$Lambda$e$rCkeR65Z_BZgQ08SL0xwqstoGeY;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/-$$Lambda$e$rCkeR65Z_BZgQ08SL0xwqstoGeY;-><init>(Lcom/oplus/camera/capmode/e;)V

    const-wide/16 v1, 0xaa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "video_size_4kuhd"

    .line 1122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez p1, :cond_1

    .line 1126
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_10bits_heic_encode_key"

    const-string v1, "off"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1127
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->S()V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1032
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1033
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aA()Z

    move-result v0

    .line 1034
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1036
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1037
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/e;->g(Z)V

    goto :goto_0

    .line 1039
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->F()V

    .line 1042
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3, v0}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1043
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.feature.custom.beauty.front.video.support"

    .line 1044
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string v3, "video_size_4kuhd"

    .line 1046
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "video_size_8k"

    .line 1047
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x3c

    .line 1048
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-eq v3, p2, :cond_2

    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_3

    const-string p2, "video_size_1080p"

    .line 1050
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1051
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->U()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    .line 1052
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/oplus/camera/capmode/-$$Lambda$e$RHRPrx8S3p1xoEnpyhV_gc04HgQ;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/-$$Lambda$e$RHRPrx8S3p1xoEnpyhV_gc04HgQ;-><init>(Lcom/oplus/camera/capmode/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1058
    :cond_3
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/e;->y:Z

    .line 1059
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v1

    .line 1061
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 1062
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1063
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->F()V

    .line 1064
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->setVideoBlurEffect(Z)V

    .line 1066
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_7

    .line 1067
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/oplus/camera/capmode/-$$Lambda$e$7P5GG-dmuxPNxGowCyLuZrfySVY;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/-$$Lambda$e$7P5GG-dmuxPNxGowCyLuZrfySVY;-><init>(Lcom/oplus/camera/capmode/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 1069
    :cond_6
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p2, :cond_7

    .line 1070
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->setVideoBlurEffect(Z)V

    if-eqz p1, :cond_7

    .line 1073
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getBlurValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/preview/a/t;->b(F)V

    .line 1077
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isMakeupOpen()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1078
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string p2, "pref_makeup_last_close_index"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_9

    .line 1082
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oplus_video_filter_neon"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1083
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->o()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1084
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->m()V

    .line 1086
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string p2, "pref_face_beauty_close_by_resolution"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1087
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1088
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1090
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result p2

    if-nez p2, :cond_8

    .line 1091
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x66

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1093
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p2, :cond_8

    .line 1094
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    .line 1095
    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCustomBeautyValues()[I

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/oplus/camera/ui/preview/a/t;->a([I)V

    .line 1099
    :cond_8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    return-void
.end method

.method private c(Z)V
    .locals 6

    .line 2665
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_old_video_status_for_special"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2666
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    if-eqz v0, :cond_3

    .line 2669
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_old_video_size"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2670
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoFps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_old_video_fps"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2671
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2672
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, ""

    .line 2674
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "pref_video_fps_key"

    .line 2675
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2678
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_video_size_key"

    .line 2679
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2682
    :cond_2
    invoke-interface {p0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2683
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2684
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "video_size_8k"

    .line 3920
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3921
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1004eb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "video_size_4kuhd"

    .line 3922
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3923
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1004e7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "video_size_1080p"

    .line 3924
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const v0, 0x7f1004e5

    if-eqz p0, :cond_2

    .line 3925
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "video_size_720p"

    .line 3926
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3927
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1004ea

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3929
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(I)V
    .locals 7

    .line 2411
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_12

    .line 2412
    iget v0, p0, Lcom/oplus/camera/capmode/e;->w:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2416
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getFilterType(I)Ljava/lang/String;

    move-result-object v0

    .line 2417
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getFilterRedpotKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f1005b9

    if-eqz v2, :cond_1

    .line 2420
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2424
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(I)V

    .line 2425
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2428
    :cond_2
    iget v1, p0, Lcom/oplus/camera/capmode/e;->w:I

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result v4

    const/4 v5, 0x1

    if-eq v1, v4, :cond_3

    move v1, v5

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2429
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result v4

    if-eq p1, v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-eq v1, v4, :cond_5

    .line 2432
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->g()V

    .line 2435
    :cond_5
    iget v1, p0, Lcom/oplus/camera/capmode/e;->w:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getFilterType(I)Ljava/lang/String;

    move-result-object v1

    .line 2436
    iput p1, p0, Lcom/oplus/camera/capmode/e;->w:I

    const-string p1, "oplus_video_filter_portrait_retention"

    .line 2437
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2438
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v2

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/e;->p:Z

    const-string v4, "oplus_video_filter_neon"

    .line 2439
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2440
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_5

    :cond_9
    :goto_4
    move v1, v5

    :goto_5
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/e;->q:Z

    .line 2442
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->q:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2443
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aO()V

    .line 2446
    :cond_a
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->p:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->q:Z

    if-eqz v1, :cond_11

    .line 2447
    :cond_b
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->p:Z

    if-nez v1, :cond_d

    const-string v1, "func_sat_camera"

    .line 2448
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->q:Z

    if-eqz v1, :cond_e

    const-string v1, "com.oplus.feature.video.blur.1080p.support"

    .line 2449
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_e

    .line 2451
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->av()V

    goto :goto_6

    .line 2453
    :cond_e
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->updateTrackEnable()V

    .line 2456
    :goto_6
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2458
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2459
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100296

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2460
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->q:Z

    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/e;->d(Z)V

    goto :goto_7

    .line 2461
    :cond_f
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2462
    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/capmode/e;->updateVideoBlurEnable(ZZ)V

    .line 2463
    invoke-virtual {p0, v5, v5}, Lcom/oplus/camera/capmode/e;->updateVideoNeonEnable(ZZ)V

    .line 2464
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->p:Z

    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/e;->e(Z)V

    goto :goto_7

    .line 2466
    :cond_10
    invoke-virtual {p0, v5, v2}, Lcom/oplus/camera/capmode/e;->updateVideoNeonEnable(ZZ)V

    .line 2467
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->p:Z

    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/e;->c(Z)V

    .line 2471
    :cond_11
    :goto_7
    iput-object v0, p0, Lcom/oplus/camera/capmode/e;->x:Ljava/lang/String;

    .line 2473
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v1, p1}, Lcom/oplus/camera/ui/preview/a/t;->l(Z)V

    .line 2474
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/t;->m(Z)V

    :cond_12
    return-void
.end method

.method private d(Z)V
    .locals 13

    .line 2689
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 2690
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_video_fps_key"

    const-string v3, "30"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2691
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v3

    .line 2692
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "video_size_720p"

    .line 2694
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "pref_old_video_size"

    const-string v9, "pref_old_video_fps"

    const-string v10, "pref_old_video_status_for_special"

    const/16 v11, 0x1e

    const/4 v12, 0x0

    if-eqz v6, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v11, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    .line 2706
    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, ""

    .line 2707
    invoke-interface {v4, v9, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2708
    invoke-interface {v4, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2709
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    if-nez v3, :cond_2

    .line 2695
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->y()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2696
    invoke-interface {v4, v10, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2697
    invoke-interface {v4, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2698
    invoke-interface {v4, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string p1, "pref_video_size_key"

    .line 2701
    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2702
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2703
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2704
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->G()V

    .line 2712
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2713
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    const-string v1, "off"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    if-eqz v3, :cond_5

    .line 2717
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_video_blur_menu_state"

    invoke-interface {p1, v0, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2720
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v7, v12}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1106
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->y:Z

    if-nez v0, :cond_2

    const-string v0, "video_size_4kuhd"

    .line 1107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video_size_8k"

    .line 1108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1109
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1112
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1113
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video_size_1080p"

    .line 1114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1115
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->U()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.oplus.feature.custom.beauty.front.video.support"

    .line 1116
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1117
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/16 p0, 0x3c

    .line 1118
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x78

    .line 3934
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3935
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1004bf

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x3c

    .line 3936
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3937
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1004c5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x1e

    .line 3938
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const v0, 0x7f1004c3

    if-eqz p0, :cond_2

    .line 3939
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0x18

    .line 3940
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3941
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1004c1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3943
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1310
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    const-string v1, "off"

    const-string v2, "pref_video_super_eis_key"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1311
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->y()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "video_size_1080p"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1312
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1313
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1314
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v4}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "com.oplus.feature.video.eis.fps"

    .line 1321
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v5, "com.oplus.feature.video.super.eis.wide.60fps.support"

    .line 1323
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v5

    .line 1324
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISProOpen()Z

    move-result v6

    .line 1325
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v7

    .line 1333
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->m(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x3c

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 1334
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, p1, :cond_4

    :cond_2
    if-eqz v6, :cond_3

    if-nez v5, :cond_3

    .line 1335
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p1, :cond_4

    :cond_3
    if-nez v6, :cond_5

    if-eqz v7, :cond_5

    .line 1336
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 1337
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1338
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1339
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pref_super_eis_wide_key"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1340
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v4}, Lcom/oplus/camera/capmode/a;->c(Z)V

    if-eqz v6, :cond_5

    const-string p1, "CommonVideoMode"

    const-string p2, "setSuperEisBeforePreview, reopen camera"

    .line 1344
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->W()V

    :cond_5
    return-void
.end method

.method private e(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 2724
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    .line 2725
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_video_fps_key"

    const-string v4, "30"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2726
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v4

    .line 2727
    iget-object v5, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2729
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "pref_old_video_fps"

    const/4 v8, 0x1

    const-string v9, "pref_old_video_status_for_special"

    const-string v10, "pref_video_size_key"

    const/16 v11, 0x1e

    const-string v12, "pref_old_video_size"

    const-string v13, "video_size_1080p"

    const-string v14, "video_size_720p"

    const/4 v15, 0x0

    if-ne v6, v11, :cond_2

    const-string v6, "video_size_4kuhd"

    .line 2730
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2731
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->U()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2745
    invoke-interface {v5, v9, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, ""

    .line 2746
    invoke-interface {v5, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2747
    invoke-interface {v5, v12, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2748
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 2749
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->U()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    .line 2750
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2751
    invoke-interface {v5, v10, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2752
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    if-nez v4, :cond_3

    .line 2732
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2733
    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2734
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2735
    invoke-interface {v5, v12, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2739
    :cond_3
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->U()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v14, v13

    .line 2738
    :cond_4
    invoke-interface {v5, v10, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2741
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2742
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2743
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->G()V

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 2756
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v8}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 2757
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->F()V

    .line 2758
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v15}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 2759
    invoke-virtual {v0, v15}, Lcom/oplus/camera/capmode/e;->setVideoBlurEffect(Z)V

    .line 2760
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_video_blur_menu"

    invoke-interface {v1, v2, v15}, Lcom/oplus/camera/ui/CameraUIInterface;->d(Ljava/lang/String;Z)V

    .line 2763
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->n()V

    .line 2764
    iput-boolean v15, v0, Lcom/oplus/camera/capmode/e;->mbFlashTemporaryDisabled:Z

    const-string v1, "func_sat_camera"

    .line 2765
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/capmode/e;->a(Z)V

    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string p0, "video_size_8k"

    .line 5085
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    .line 5086
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0e0008

    return p0

    .line 5088
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    .line 5089
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0e0007

    return p0

    :cond_1
    const-string p0, "video_size_4kuhd"

    .line 5091
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x78

    .line 5092
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0e0006

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private f()Ljava/lang/String;
    .locals 0

    .line 186
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    const-string p0, "pref_sound_types_key_front"

    goto :goto_0

    :cond_0
    const-string p0, "pref_sound_types_key_rear"

    :goto_0
    return-object p0
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key_ai_enhancement_video"

    .line 4248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4249
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    const-string v1, "off"

    .line 4250
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.oplus.feature.wide.angle.open.default"

    .line 4251
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4252
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->an()V

    :cond_0
    return-void
.end method

.method private f(Z)V
    .locals 5

    .line 3600
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_video_fps_key"

    const-string v2, "30"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFpsToDefault, nowVideoFPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", executeBeforePreview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CommonVideoMode"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3606
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3609
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3610
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3611
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_1

    .line 3614
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 12

    .line 458
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isDoubleExposureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->i()Z

    move-result v0

    .line 463
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "pref_lasted_video_save_status"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreSpecialEffectStatus, isAnySwitchOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isSavedStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v6, 0x1

    const-string v7, "pref_lasted_video_codec"

    const-string v8, "pref_lasted_video_size"

    const-string v9, "pref_lasted_video_fps"

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 470
    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoFps()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoCodec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, v7, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "restoreSpecialEffectStatus, save status"

    .line 476
    invoke-static {v5, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 478
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 483
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoCodec()Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "pref_video_codec_key"

    .line 486
    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 489
    :cond_2
    invoke-interface {v4, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 493
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 494
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v6}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "30"

    invoke-interface {v0, v9, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    iget-object v6, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoFps()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "pref_video_fps_key"

    invoke-interface {v6, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 501
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v7

    .line 503
    invoke-direct {p0, v0, v3, v6, v7}, Lcom/oplus/camera/capmode/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSpecialEffectStatus, read status, videoSizeAndFpsSame: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", VideoFps: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", VideoSize: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_6

    .line 510
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 511
    invoke-interface {v4, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    const-string v0, "pref_video_size_key"

    .line 514
    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    :cond_6
    invoke-interface {v4, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 518
    invoke-interface {v4, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 525
    :cond_7
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->D()V

    :cond_8
    :goto_0
    return-void
.end method

.method private g(Z)V
    .locals 5

    .line 3851
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3853
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3854
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3855
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3856
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/capmode/e;->w:I

    .line 3857
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/preview/a/t;->l(Z)V

    .line 3858
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/preview/a/t;->m(Z)V

    if-eqz v0, :cond_2

    .line 3860
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    .line 3861
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aO()V

    .line 3864
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 3865
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/camera/capmode/-$$Lambda$e$oXjXFYFTGkKnkaoBTBphO8jVpaE;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/-$$Lambda$e$oXjXFYFTGkKnkaoBTBphO8jVpaE;-><init>(Lcom/oplus/camera/capmode/e;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    .line 4682
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 4684
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private h()V
    .locals 3

    .line 531
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 533
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_video_blur_menu"

    const-string v2, "off"

    .line 536
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 547
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 548
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_3
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    .line 5025
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_3

    const-string v0, "oplus_video_filter_portrait_retention"

    .line 5026
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oplus_video_filter_neon"

    .line 5027
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5030
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 5028
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 5033
    :goto_1
    iput-object p1, p0, Lcom/oplus/camera/capmode/e;->x:Ljava/lang/String;

    .line 5035
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const-string v1, "func_filter_vignette"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "oplus_video_filter_olympus"

    .line 5036
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 5035
    :goto_2
    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->c(Z)V

    :cond_3
    return-void
.end method

.method private i()Z
    .locals 5

    .line 557
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterIndex()I

    move-result v0

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "CommonVideoMode"

    if-eqz v0, :cond_1

    const-string p0, "checkSpecialEffectSwitch, filter is open"

    .line 560
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v0, "func_face_beauty_process"

    .line 571
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbPaused:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyCurrIndex()I

    move-result v0

    if-nez v0, :cond_3

    .line 573
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/e;->h:Z

    .line 576
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->h:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyCurrIndex()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    const-string p0, "checkSpecialEffectSwitch, face beauty is open"

    .line 579
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_6
    const-string v0, "pref_video_blur_menu"

    .line 585
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 586
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_video_blur_menu_state"

    .line 587
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v3

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_3
    if-eqz v0, :cond_a

    const-string p0, "checkSpecialEffectSwitch, blur is open"

    .line 590
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_a
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 596
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 597
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "checkSpecialEffectSwitch, NoneSatUltraWideAngle is Open"

    .line 598
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 604
    :cond_b
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "checkSpecialEffectSwitch, 3hdr is open"

    .line 605
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 610
    :cond_c
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "checkSpecialEffectSwitch, night video is open."

    .line 611
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 616
    :cond_d
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "checkSpecialEffectSwitch, ai enhancement video is open."

    .line 617
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_e
    return v2

    :cond_f
    :goto_4
    const-string p0, "checkSpecialEffectSwitch, super EIS is open"

    .line 566
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private j()Z
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "pref_lasted_video_fps"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_lasted_video_size"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 629
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k()Z
    .locals 1

    .line 931
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private l()V
    .locals 5

    .line 1132
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1133
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isCommonFaceBeautyOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_10bits_heic_encode_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1140
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->S()V

    .line 1142
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f100070

    aput v4, v2, v3

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 1146
    :cond_1
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/e;->j:Z

    :cond_2
    return-void
.end method

.method public static synthetic lambda$6rBNUu5_cT-43Nogc2lmUdsd7ZI(Lcom/oplus/camera/capmode/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->X()V

    return-void
.end method

.method public static synthetic lambda$7P5GG-dmuxPNxGowCyLuZrfySVY(Lcom/oplus/camera/capmode/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->ad()V

    return-void
.end method

.method public static synthetic lambda$NypIVyXfQqtaV0d7wYKVEWO2nwc(Lcom/oplus/camera/capmode/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->ac()V

    return-void
.end method

.method public static synthetic lambda$RHRPrx8S3p1xoEnpyhV_gc04HgQ(Lcom/oplus/camera/capmode/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->ae()V

    return-void
.end method

.method public static synthetic lambda$kYjIE-HADn5ZuZiVCfq_NcldSoE(Lcom/oplus/camera/capmode/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->ab()V

    return-void
.end method

.method public static synthetic lambda$oXjXFYFTGkKnkaoBTBphO8jVpaE(Lcom/oplus/camera/capmode/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->Y()V

    return-void
.end method

.method public static synthetic lambda$rCkeR65Z_BZgQ08SL0xwqstoGeY(Lcom/oplus/camera/capmode/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->Z()V

    return-void
.end method

.method public static synthetic lambda$yaZT1FNQDWUHmfyxxRfDU6qBnkg(Lcom/oplus/camera/capmode/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->aa()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 1191
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_makeup_last_close_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1197
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->u(I)V

    .line 1199
    new-instance v0, Lcom/oplus/camera/capmode/-$$Lambda$e$NypIVyXfQqtaV0d7wYKVEWO2nwc;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/-$$Lambda$e$NypIVyXfQqtaV0d7wYKVEWO2nwc;-><init>(Lcom/oplus/camera/capmode/e;)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 1205
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isMakeupOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrMakeupIndex()I

    move-result v1

    const-string v2, "pref_makeup_last_close_index"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 1207
    invoke-super {p0, v0, v0}, Lcom/oplus/camera/capmode/w;->onMakeupTypeChanged(IZ)V

    .line 1208
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->u(I)V

    .line 1209
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->av()V

    :cond_0
    return-void
.end method

.method private o()Z
    .locals 1

    .line 1214
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private p()V
    .locals 3

    .line 1222
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->checkVideoHdrPreCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1224
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_video_hdr"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1225
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 1230
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1232
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_ultra_night_video"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1233
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_0
    return-void
.end method

.method private r()Z
    .locals 0

    .line 1306
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private s()Z
    .locals 2

    const-string v0, "func_enhancement_video"

    .line 1660
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.front.ai.video.scene.support"

    .line 1661
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oplus.feature.ai.enhancement.front.video.support"

    .line 1662
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private t()I
    .locals 2

    .line 2394
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "30"

    if-eqz v0, :cond_0

    .line 2395
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_video_fps_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2398
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private u()V
    .locals 6

    const-string v0, "pref_10bits_heic_encode_key"

    .line 2622
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->j:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2623
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->v()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2624
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2625
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 2628
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "on"

    .line 2629
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_photo_codec_key"

    const-string v2, "HEIF"

    .line 2630
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_video_codec_key"

    const-string v2, "H265"

    .line 2631
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2632
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2633
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100070

    const v2, 0x7f0805e9

    const v3, 0x7f0604ff

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    .line 2637
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2638
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v4}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_1
    const-string p0, "CommonVideoMode"

    const-string v0, "checkAndRestore10bit"

    .line 2641
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private v()Z
    .locals 1

    .line 2646
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

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

.method private w()V
    .locals 4

    const-string v0, "com.oplus.feature.wide.angle.open.default"

    .line 2650
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->k:Z

    if-eqz v0, :cond_2

    .line 2652
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->C()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "func_enhancement_video"

    .line 2653
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.ai.enhancement.video.sat.support"

    .line 2654
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2655
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2656
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 2657
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    const-string v3, "on"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2658
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 2661
    :cond_2
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/e;->k:Z

    return-void
.end method

.method private x()Z
    .locals 2

    .line 2976
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "key_ai_enhancement_closed_by_video_size_fps"

    .line 2977
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private y()Z
    .locals 2

    .line 2991
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    const-string v1, "com.oplus.feature.front.eis.wide.force.support"

    .line 2992
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2995
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private z()Z
    .locals 1

    .line 3300
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

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
.method public a()V
    .locals 13

    .line 4299
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    .line 4300
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    .line 4301
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_video_fps_key"

    const-string v4, "30"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraNightVideoChanged, isUltraNightVideoOpen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", videoSizeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", videoFps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4306
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 4307
    iget-object v5, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/oplus/camera/capmode/a;->c(Z)V

    if-nez v0, :cond_0

    .line 4311
    iget-object v5, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1005b9

    invoke-interface {v5, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_0
    const-string v5, "off"

    const/4 v7, 0x0

    if-eqz v0, :cond_a

    .line 4315
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4316
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->I()V

    .line 4317
    iget-object v8, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v9, 0x7f100296

    invoke-interface {v8, v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 4320
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4321
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4324
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4325
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 4328
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v8

    const-string v9, "pref_video_super_eis_key"

    if-eqz v8, :cond_4

    .line 4329
    invoke-interface {v4, v9, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    const-string v8, "func_video_super_eis_wide"

    .line 4332
    invoke-virtual {p0, v8}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "pref_super_eis_wide_key"

    .line 4333
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5
    const-string v8, "func_hdr"

    .line 4336
    invoke-virtual {p0, v8}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v8

    const-string v10, "key_video_hdr"

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4337
    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    const-string v8, "video_size_1080p"

    .line 4340
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "pref_video_size_key"

    if-nez v11, :cond_7

    .line 4341
    invoke-interface {v4, v12, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v11, v6

    goto :goto_0

    :cond_7
    move v11, v7

    .line 4345
    :goto_0
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4346
    invoke-interface {v4, v12, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v11, v6

    .line 4350
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1e

    if-eq v2, v1, :cond_9

    .line 4351
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v11, v6

    .line 4355
    :cond_9
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4357
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v9}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 4358
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v10}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 4359
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_video_blur_menu"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move v11, v7

    .line 4362
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v7}, Lcom/oplus/camera/capmode/a;->c(Z)V

    const-string v1, "com.oplus.feature.wide.angle.open.default"

    const-string v2, "on"

    const v3, 0x7f100489

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    if-eqz v0, :cond_10

    .line 4366
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4367
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 4368
    :cond_b
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4369
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 4370
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getZoomValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->a(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4371
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4374
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4375
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->s(Z)V

    goto :goto_3

    .line 4377
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "pref_video_filter_menu"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 4380
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4381
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v6, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 4384
    :cond_e
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecordStopped()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->check3HDRPreCondition()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4385
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v7, v6, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 4386
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f0805e9

    const v2, 0x7f0604ff

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    .line 4390
    :cond_f
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100086

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 4391
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    goto :goto_4

    .line 4394
    :cond_10
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v6, v6, [I

    aput v3, v6, v7

    invoke-interface {v0, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 4396
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4397
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4398
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->an()V

    .line 4401
    :cond_11
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_12
    :goto_4
    if-eqz v11, :cond_13

    .line 4406
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->G()V

    :cond_13
    return-void
.end method

.method public a(I)Z
    .locals 9

    .line 2602
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_video_fps_key"

    const-string v2, "30"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2603
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3c

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2604
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v3

    .line 2605
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getFilterType(I)Ljava/lang/String;

    move-result-object v4

    .line 2606
    iget v5, p0, Lcom/oplus/camera/capmode/e;->w:I

    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/e;->getFilterType(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "video_size_4kuhd"

    .line 2607
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "com.oplus.feature.video.4k30fps.filter.support"

    .line 2608
    invoke-static {v6}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "oplus_video_filter_portrait_retention"

    .line 2609
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2610
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v1

    :goto_2
    const-string v8, "oplus_video_filter_neon"

    .line 2611
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2612
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v1

    :goto_4
    if-nez v7, :cond_6

    if-eqz v4, :cond_5

    const-string v4, "func_sat_camera"

    .line 2615
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    sget v4, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq p1, v4, :cond_7

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2617
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz v3, :cond_7

    :cond_6
    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    return v1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 4985
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "video_size_8k"

    .line 4986
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public afterStartRecording()V
    .locals 5

    .line 3283
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->afterStartRecording()V

    .line 3285
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3286
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3287
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3291
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoSuperEisWideOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.feature.video.eis.af.auto.lock"

    .line 3292
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3293
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x1

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 3294
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x0

    .line 3293
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3295
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_1
    return-void
.end method

.method public afterStopRecording()V
    .locals 5

    .line 3351
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k60fps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3352
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->k(Z)V

    :cond_0
    const-string v0, "com.oplus.feature.video.eis.af.auto.lock"

    .line 3355
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3356
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x3

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 3357
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x1

    .line 3356
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3358
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3361
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->afterStopRecording()V

    return-void
.end method

.method public b()V
    .locals 8

    .line 4423
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result v0

    .line 4424
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    .line 4425
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_video_fps_key"

    const-string v4, "30"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on10bitChanged, is10bitOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", videoSizeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", videoFps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CommonVideoMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4430
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 4433
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v4

    const-string v5, "off"

    const-string v6, "pref_video_blur_menu"

    if-eqz v4, :cond_0

    .line 4434
    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4435
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f100296

    invoke-interface {v4, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 4438
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4439
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 4442
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4443
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string v4, "video_size_4kuhd"

    .line 4446
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "video_size_1080p"

    .line 4447
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4450
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v7, "pref_video_size_key"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4454
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4455
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 4456
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "pref_video_super_eis_key"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4459
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4461
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_8

    .line 4465
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4466
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "pref_video_filter_menu"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 4469
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    .line 4470
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/e;->onFaceBeautyItemChange(I)V

    .line 4471
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    :cond_8
    return-void
.end method

.method public beforeConfig()V
    .locals 1

    const-string v0, "func_enhancement_video"

    .line 5048
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5049
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->checkAiEnhancementVideoState()V

    .line 5052
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5055
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->g()V

    :cond_1
    return-void
.end method

.method public beforeStartRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 3244
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->beforeStartRecording(Z)V

    return-void
.end method

.method public beforeStartRecording(Z)V
    .locals 5

    .line 3249
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_ring_none"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3252
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/b;->b(Z)V

    .line 3253
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    const-string v0, "pref_inertial_zoom_key"

    .line 3255
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3256
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ab()V

    .line 3258
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3259
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->j(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "func_video_super_eis_wide"

    .line 3261
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3262
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 3265
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeStartRecording()V

    .line 3267
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    .line 3268
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    .line 3269
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3270
    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/capmode/e;->getJpegOrientation(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3269
    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3273
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3276
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->V()V

    .line 3278
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->beforeStartRecording(Z)V

    return-void
.end method

.method public beforeSwitchCamera()V
    .locals 2

    .line 640
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->g()V

    .line 641
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeSwitchCamera()V

    .line 643
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->i:Z

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->U()V

    .line 647
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->M()V

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100087

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 652
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100086

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 653
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->h()V

    .line 654
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->u()V

    .line 655
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->w()V

    return-void
.end method

.method public beforeSwitchToMode(Z)V
    .locals 0

    .line 634
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->beforeSwitchToMode(Z)V

    const/4 p1, 0x1

    .line 635
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->enableVideoRecordingSound(Z)V

    return-void
.end method

.method public c()V
    .locals 22

    move-object/from16 v0, p0

    .line 4478
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v1

    .line 4479
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v2

    .line 4480
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v3

    .line 4481
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->A()Z

    move-result v4

    .line 4482
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->B()Z

    move-result v5

    .line 4483
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isVideoSuperEisWideOpen()Z

    move-result v6

    .line 4485
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAiEnhancementVideoChanged, isAiEnhancementVideoOpen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", videoSizeType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", videoFps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CommonVideoMode"

    invoke-static {v8, v7}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4488
    iget-object v7, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 4489
    iget-object v9, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v9}, Lcom/oplus/camera/capmode/a;->aA()Z

    move-result v9

    .line 4490
    iget-object v10, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 4491
    iget-boolean v10, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    const-string v12, "pref_video_fps_key"

    const-string v14, "key_ai_enhancement_closed_by_video_size_fps"

    const-string v15, "key_ai_enhancement_video"

    const-string v11, "pref_video_size_key"

    if-nez v1, :cond_4

    .line 4495
    iget-object v13, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    move/from16 v16, v6

    const v6, 0x7f1005b9

    invoke-interface {v13, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 4497
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4498
    invoke-direct {v0, v15}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v6

    .line 4499
    iget-object v13, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v15

    const-string v15, "key_ai_enhancement_on_video_size"

    move/from16 v18, v5

    const/4 v5, 0x0

    .line 4500
    invoke-interface {v13, v15, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v6, :cond_0

    if-eqz v13, :cond_0

    const-string v5, "key_ai_enhancement_off_video_size"

    .line 4503
    invoke-interface {v7, v5, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4506
    :cond_0
    invoke-direct {v0, v11}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4507
    invoke-direct {v0, v12}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 4508
    :goto_1
    invoke-interface {v7, v14, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x1

    xor-int/2addr v6, v5

    const-string v5, "key_should_reopen_ai_enhancement_video"

    .line 4510
    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4511
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_3
    move/from16 v18, v5

    move-object/from16 v17, v15

    goto :goto_2

    :cond_4
    move/from16 v18, v5

    move/from16 v16, v6

    move-object/from16 v17, v15

    .line 4514
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 4515
    invoke-interface {v7, v14, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    :goto_2
    const-string v5, "com.oplus.feature.ai.enhancement.video.sat.support"

    const-string v6, "off"

    if-eqz v1, :cond_15

    const/4 v13, -0x1

    .line 4520
    iput v13, v0, Lcom/oplus/camera/capmode/e;->l:I

    .line 4522
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v13

    if-nez v13, :cond_7

    iget-object v13, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v13}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 4523
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->I()V

    .line 4526
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->M()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 4527
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 4530
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v13

    const-string v14, "pref_video_super_eis_key"

    if-eqz v13, :cond_a

    const-string v13, "com.oplus.feature.front.super.eis.ai.enhance.coexist"

    .line 4531
    invoke-static {v13}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    if-nez v10, :cond_a

    .line 4533
    :cond_9
    invoke-interface {v7, v14, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4534
    iget-object v10, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v10}, Lcom/oplus/camera/capmode/a;->an()V

    :cond_a
    const-string v10, "func_video_super_eis_wide"

    .line 4537
    invoke-virtual {v0, v10}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "pref_super_eis_wide_key"

    const/4 v13, 0x0

    .line 4538
    invoke-interface {v7, v10, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_b
    const-string v10, "com.oplus.feature.ai.enhancement.video.front.resolution"

    .line 4541
    invoke-static {v10}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v13, "com.oplus.feature.ai.enhancement.video.rear.resolution"

    .line 4543
    invoke-static {v13}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const-string v15, "video_size_4kuhd"

    .line 4545
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    move/from16 v19, v4

    iget-boolean v4, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v4, :cond_c

    .line 4546
    invoke-static {v10, v2}, Lcom/oplus/camera/util/Util;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_3

    .line 4547
    :cond_c
    invoke-static {v13, v2}, Lcom/oplus/camera/util/Util;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    :goto_3
    move-object/from16 v20, v6

    const/4 v4, 0x1

    goto :goto_4

    :cond_d
    move/from16 v19, v4

    :cond_e
    move-object/from16 v20, v6

    const/4 v4, 0x0

    .line 4549
    :goto_4
    iget-boolean v6, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    move/from16 v21, v1

    const-string v1, "video_size_1080p"

    if-nez v6, :cond_f

    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "onAiEnhancementVideoChanged, don\'t need to change video size under sat"

    .line 4550
    invoke-static {v8, v6}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 4551
    :cond_f
    iget-boolean v6, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v6, :cond_10

    if-eqz v10, :cond_10

    .line 4553
    invoke-static {v10, v2}, Lcom/oplus/camera/util/Util;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const/4 v6, 0x0

    .line 4554
    aget-object v8, v10, v6

    invoke-interface {v7, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_10
    const/4 v6, 0x0

    .line 4556
    iget-boolean v8, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v8, :cond_11

    if-eqz v13, :cond_11

    .line 4558
    invoke-static {v13, v2}, Lcom/oplus/camera/util/Util;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 4559
    aget-object v8, v13, v6

    invoke-interface {v7, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    .line 4561
    :cond_11
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 4562
    invoke-interface {v7, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_5
    const/4 v6, 0x1

    goto :goto_7

    :cond_12
    :goto_6
    const/4 v6, 0x0

    :goto_7
    const/16 v8, 0x1e

    if-eq v8, v3, :cond_13

    const/16 v3, 0x1e

    .line 4567
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v6, 0x1

    :cond_13
    const-string v3, "func_enhancement_video"

    .line 4571
    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4572
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v4, :cond_14

    .line 4574
    invoke-interface {v7, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v13, 0x1

    goto :goto_8

    :cond_14
    move v13, v6

    .line 4578
    :goto_8
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4580
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->u()V

    .line 4582
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v14}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 4583
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "key_video_hdr"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 4584
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_video_blur_menu"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    const-string v1, "pref_zoom_key"

    .line 4586
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 4587
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    goto :goto_9

    :cond_15
    move/from16 v21, v1

    move/from16 v19, v4

    move-object/from16 v20, v6

    const/4 v13, 0x0

    .line 4591
    :cond_16
    :goto_9
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v9}, Lcom/oplus/camera/capmode/a;->c(Z)V

    const-string v1, "on"

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    if-eqz v21, :cond_20

    .line 4595
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4597
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v4, v20

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4598
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4599
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->an()V

    goto :goto_a

    :cond_17
    move-object/from16 v4, v20

    .line 4601
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v19, :cond_18

    if-eqz v18, :cond_18

    .line 4604
    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 4605
    :cond_18
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_a

    :cond_19
    const-string v3, "com.oplus.feature.wide.angle.open.default"

    .line 4606
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4607
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getZoomValue()F

    move-result v3

    sget v4, Lcom/oplus/camera/ag;->a:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v16, :cond_1b

    .line 4608
    :cond_1a
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4611
    :cond_1b
    :goto_a
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4612
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->s(Z)V

    goto :goto_b

    .line 4614
    :cond_1c
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_video_filter_menu"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 4617
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4618
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object/from16 v3, v17

    .line 4619
    invoke-direct {v0, v3}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_c

    :cond_1d
    const/4 v1, 0x0

    .line 4621
    :goto_c
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v2

    if-eqz v2, :cond_1e

    if-nez v1, :cond_1e

    .line 4622
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v2, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZZ)V

    .line 4625
    :cond_1e
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4626
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->H()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/capmode/e;->y:Z

    .line 4628
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-boolean v1, v0, Lcom/oplus/camera/capmode/e;->y:Z

    if-nez v1, :cond_1f

    .line 4629
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v3, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    :cond_1f
    const v5, 0x7f100087

    .line 4634
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100086

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 4635
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1000b0

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 4636
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1000af

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    const-string v1, "pref_camera_mode_key"

    .line 4638
    invoke-direct {v0, v1}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 4639
    iget-object v4, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_d

    :cond_20
    move-object/from16 v3, v17

    move-object/from16 v4, v20

    .line 4642
    iget-object v5, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5}, Lcom/oplus/camera/ui/CameraUIInterface;->l()Ljava/lang/String;

    move-result-object v5

    .line 4644
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, v0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    const v7, 0x7f100296

    .line 4645
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    :cond_21
    const v7, 0x7f100086

    .line 4648
    iget-object v5, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4649
    iget-object v6, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_22
    const-string v3, "com.oplus.feature.ai.enhancement.video.zoom.support"

    .line 4653
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    .line 4654
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4655
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->C()Z

    move-result v1

    if-nez v1, :cond_23

    .line 4656
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result v1

    if-nez v1, :cond_23

    .line 4657
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_23
    :goto_d
    if-eqz v13, :cond_24

    .line 4662
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->G()V

    :cond_24
    return-void
.end method

.method public cameraIdChanged(I)V
    .locals 1

    const-string v0, ""

    .line 660
    iput-object v0, p0, Lcom/oplus/camera/capmode/e;->x:Ljava/lang/String;

    .line 662
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->cameraIdChanged(I)V

    return-void
.end method

.method public check3HDRPreCondition()Z
    .locals 2

    .line 3366
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 3367
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result p0

    const-string v1, "video_size_1080p"

    .line 3369
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkAiEnhancementVideoState()V
    .locals 3

    .line 1239
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1241
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_ai_enhancement_video"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1242
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 1244
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$e$kYjIE-HADn5ZuZiVCfq_NcldSoE;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$e$kYjIE-HADn5ZuZiVCfq_NcldSoE;-><init>(Lcom/oplus/camera/capmode/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 1252
    iput v0, p0, Lcom/oplus/camera/capmode/e;->l:I

    :cond_1
    return-void
.end method

.method public checkFunction()V
    .locals 5

    const-string v0, "CommonVideoMode"

    const-string v1, "checkFunction"

    .line 1454
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1457
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const-string v3, "pref_video_size_key"

    .line 1458
    invoke-static {v3, v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1457
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1459
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_video_fps_key"

    const-string v4, "30"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFunction, videoSizeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", videoFps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "func_video_blur_process"

    .line 1463
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1464
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/capmode/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "func_face_beauty_process"

    .line 1467
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1468
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/capmode/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "pref_filter_process_key"

    .line 1471
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1472
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/capmode/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v3, "pref_video_super_eis_key"

    .line 1475
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1476
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/capmode/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "func_hdr"

    .line 1479
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1480
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->p()V

    :cond_4
    const-string v2, "func_ultra_night_video"

    .line 1483
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1484
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->q()V

    :cond_5
    const-string v2, "func_enhancement_video"

    .line 1487
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1488
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBeforePreview, ai enhancement on video size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_ai_enhancement_on_video_size"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    const-string v0, "pref_10bits_heic_encode_key"

    .line 1495
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1496
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/e;->c(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->b()V

    :cond_7
    return-void
.end method

.method protected checkPreviewResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z
    .locals 1

    .line 5139
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->W()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 5143
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->checkPreviewResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z

    move-result p0

    return p0
.end method

.method public checkVideoHdrPreCondition()Z
    .locals 3

    .line 4814
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 4815
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result p0

    const-string v1, "com.oplus.feature.video.3hdr.support"

    .line 4819
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "video_size_4kuhd"

    .line 4820
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v1, "com.oplus.feature.video.live.hdr.except.8k.support"

    .line 4821
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "video_size_8k"

    .line 4822
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const-string v1, "video_size_1080p"

    .line 4824
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0x1e

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public d()V
    .locals 12

    .line 4697
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    .line 4698
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    .line 4699
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_video_fps_key"

    const-string v4, "30"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVideoHdrModeChanged, isVideHdrOpen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", videoSizeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", videoFps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4704
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 4705
    iget-object v5, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/oplus/camera/capmode/a;->c(Z)V

    if-nez v0, :cond_0

    .line 4709
    iget-object v5, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1005b9

    invoke-interface {v5, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_0
    const-string v5, "off"

    const/4 v7, 0x0

    if-eqz v0, :cond_d

    const-string v8, "com.oplus.feature.video.3hdr.support"

    .line 4713
    invoke-static {v8}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4714
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoCodec()Ljava/lang/String;

    move-result-object v9

    const-string v10, "H265"

    .line 4716
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "pref_video_codec_key"

    .line 4717
    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4721
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4722
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->I()V

    .line 4725
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4726
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4729
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4730
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 4733
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "pref_video_super_eis_key"

    .line 4734
    invoke-interface {v4, v9, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4735
    iget-object v10, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v10, v9}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_5
    const-string v9, "func_video_super_eis_wide"

    .line 4738
    invoke-virtual {p0, v9}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "pref_super_eis_wide_key"

    .line 4739
    invoke-interface {v4, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4742
    :cond_6
    invoke-static {v8}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "pref_video_size_key"

    if-eqz v8, :cond_7

    const-string v8, "video_size_4kuhd"

    .line 4743
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 4744
    invoke-interface {v4, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    move v1, v6

    goto :goto_1

    :cond_7
    const-string v8, "com.oplus.feature.video.live.hdr.support"

    .line 4747
    invoke-static {v8}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "video_size_1080p"

    .line 4748
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v11, "com.oplus.feature.video.live.hdr.except.8k.support"

    .line 4750
    invoke-static {v11}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v10, "video_size_8k"

    .line 4751
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v10, v1, 0x1

    :cond_8
    if-nez v10, :cond_9

    .line 4755
    invoke-interface {v4, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_9
    move v1, v7

    .line 4760
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v8, 0x1e

    if-eq v8, v2, :cond_a

    .line 4761
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v1, v6

    :cond_a
    const-string v2, "func_ultra_night_video"

    .line 4765
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "key_ultra_night_video"

    .line 4766
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4767
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_b
    const-string v2, "func_enhancement_video"

    .line 4770
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "key_ai_enhancement_video"

    .line 4771
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4772
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 4775
    :cond_c
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_d
    move v1, v7

    .line 4779
    :goto_2
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v7}, Lcom/oplus/camera/capmode/a;->c(Z)V

    const v2, 0x7f1004c9

    if-eqz v0, :cond_12

    .line 4782
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4783
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4786
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "filter"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4787
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->s(Z)V

    goto :goto_3

    .line 4789
    :cond_f
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v3, "pref_video_filter_menu"

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 4792
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4793
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v6, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 4796
    :cond_10
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->checkVideoHdrPreCondition()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecordStopped()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4797
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v7, v6, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 4798
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f0805e9

    const v4, 0x7f0604ff

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    .line 4802
    :cond_11
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    goto :goto_4

    .line 4804
    :cond_12
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v3, v6, [I

    aput v2, v3, v7

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    :goto_4
    if-eqz v1, :cond_13

    .line 4808
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->G()V

    :cond_13
    return-void
.end method

.method public disableRedDotHintOnModes()V
    .locals 5

    .line 920
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "video_mode_reddot_show"

    .line 921
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v1, v1, [I

    const v3, 0x7f100272

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b([I)V

    .line 923
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 924
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 925
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 926
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public displayAllIcon(ZZ)V
    .locals 0

    .line 3404
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoFlashTorchOpen()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3405
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public displayFixedUpModeHint()V
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->displayFixedUpModeHint()V

    .line 204
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "CommonVideoMode"

    const-string v0, "displayFixedUpModeHint"

    .line 208
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public displayScreenHintIconInSwitchOn()V
    .locals 9

    .line 3374
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    const v1, 0x7f0604ff

    const v2, 0x7f0805e9

    const v3, 0x7f1004c9

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->checkVideoHdrPreCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecordStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3375
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v5, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 3376
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p0, v3, v2, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 3379
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    const v6, 0x7f100489

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecordStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->check3HDRPreCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3380
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v5, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 3381
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p0, v6, v2, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 3384
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result v0

    const v7, 0x7f100070

    if-eqz v0, :cond_2

    .line 3385
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v5, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 3386
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v8, v5, [I

    aput v3, v8, v4

    invoke-interface {v0, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 3387
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v3, v5, [I

    aput v6, v3, v4

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 3389
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3390
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p0, v7, v2, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 3395
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v5, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 3396
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 3397
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 3398
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v0, v5, [I

    aput v7, v0, v4

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected doAfterStartPreview()V
    .locals 3

    .line 909
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->doAfterStartPreview()V

    .line 911
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    const-string v2, "off"

    .line 913
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f1005c9

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 4977
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 4978
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected exclusiveInverse()Z
    .locals 0

    .line 3239
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p0

    return p0
.end method

.method protected getBackUpFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_video_facebeauty_level_menu_backup"

    return-object p0
.end method

.method protected getBubbleOffsetX(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    .line 1609
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1610
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v3, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/app/Activity;I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1613
    aget p0, v1, v0

    return p0

    :cond_0
    const/16 v1, 0x13

    if-ne v1, p1, :cond_1

    .line 1619
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07010e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method protected getBubbleOffsetY(I)I
    .locals 4

    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 1629
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v3, v0}, Lcom/oplus/camera/capmode/a;->a(Landroid/app/Activity;I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1632
    aget p0, v0, v2

    return p0

    :cond_0
    const/16 v0, 0x13

    if-ne v0, p1, :cond_1

    .line 1638
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07010f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    .line 1641
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070a51

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 4

    .line 4938
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4942
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const-string v1, "commonDummy"

    const-string v2, "commonVideoDummy"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSatOpen()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4943
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->needApsToProcessVideoWatermark()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4944
    iget p0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    invoke-static {v2, p0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCameraFeature(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v1, v2

    :cond_3
    return-object v1

    .line 4946
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4947
    iget v0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const-string v3, "videoRetention"

    invoke-static {v3, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCameraFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v3

    .line 4952
    :cond_5
    iget p0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    invoke-static {v2, p0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCameraFeature(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v1, v2

    :cond_6
    return-object v1

    .line 4955
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4956
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoSuperEisWideOpen()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "superEISProVideo"

    goto :goto_0

    :cond_8
    const-string p0, "superEISVideo"

    :goto_0
    return-object p0

    .line 4957
    :cond_9
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.oplus.sat.use.hal"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "commonVideoSatHal"

    return-object p0

    .line 4959
    :cond_a
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "liveHDR"

    return-object p0

    .line 4961
    :cond_b
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "ultraNight"

    return-object p0

    .line 4963
    :cond_c
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "aiEnhancement"

    return-object p0

    .line 4967
    :cond_d
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getCameraFeature()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "commonVideo"

    return-object p0
.end method

.method public getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;
    .locals 0

    .line 1353
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;

    move-result-object p1

    const-string p2, "type_still_capture_yuv_main"

    .line 1354
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/e;->needSurface(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1355
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.force.4k.video.snapshot.by.aps"

    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

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
    iput-boolean p0, p1, Lcom/oplus/camera/e/c;->ac:Z

    return-object p1
.end method

.method public getDefaultCaptureNumber()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDefaultHDRValue()Ljava/lang/String;
    .locals 1

    .line 4288
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1004ca

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    return-object p0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .locals 1

    .line 3421
    iget p0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const-string v0, "pref_video_size_key"

    invoke-static {v0, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEffectMenuKeyByMode()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_video_filter_menu"

    return-object p0
.end method

.method public getEnvironmentTipsThreshold()I
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.feature.front.dark.tips.threshold"

    .line 128
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "com.oplus.feature.back.dark.tips.threshold"

    .line 129
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_video_facebeauty_level_menu"

    return-object p0
.end method

.method public getFilterNoneIndex()I
    .locals 0

    .line 672
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    .line 673
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->t()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->r()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getFilterRedpotKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "oplus_video_filter_neon"

    .line 3778
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    .line 3779
    invoke-static {p0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "video_filter_neon_show"

    .line 3780
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFilterTitleTexId()I
    .locals 0

    const p0, 0x7f1001c9

    return p0
.end method

.method protected getFrontDefaultCommonBeautyValue()I
    .locals 1

    const-string v0, "com.oplus.video.front.facebeauty.level"

    .line 3033
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 3035
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getFrontDefaultCommonBeautyValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHDRKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_video_hdr"

    return-object p0
.end method

.method public getHeicCodecFormat()Ljava/lang/String;
    .locals 2

    .line 3331
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3332
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3333
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3337
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "heic_10bits"

    return-object p0

    :cond_1
    const-string p0, "CommonVideoMode"

    const-string v0, "getHeicCodecFormat return null"

    .line 3340
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method protected getHighBrightnessValue()F
    .locals 0

    .line 1651
    sget-object p0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/e;->getVideoBrightness()F

    move-result p0

    return p0
.end method

.method protected getHintTextId()I
    .locals 3

    .line 3807
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    const-string v0, "com.oplus.isUWFixedFocus"

    .line 3808
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3809
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->n()F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3811
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3813
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const p0, 0x7f1006d6

    .line 3816
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    const p0, 0x7f1006d5

    return p0

    :cond_4
    return v1
.end method

.method protected getMakeupKeys()[Ljava/lang/String;
    .locals 1

    .line 3040
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->e:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getCurrentKeys(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMakeupTypeKey()Ljava/lang/String;
    .locals 2

    .line 3045
    iget v0, p0, Lcom/oplus/camera/capmode/e;->mCameraEntryType:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    const-string v1, "pref_common_video_makeup_type"

    if-eqz v0, :cond_0

    .line 3046
    iget p0, p0, Lcom/oplus/camera/capmode/e;->mCameraEntryType:I

    invoke-static {v1, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getOperatingMode()I
    .locals 5

    .line 234
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    const v1, 0x8021

    const/16 v2, 0x3c

    const-string v3, "key_support_video_high_fps"

    if-nez v0, :cond_0

    const-string v0, "key_support_fovc"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x830b

    .line 237
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v4

    if-ne v2, v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x800b

    .line 243
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v0, v1

    :cond_2
    const-string v1, "func_video_super_eis_process"

    .line 248
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v0, :cond_3

    const v0, 0x802b

    goto :goto_1

    :cond_3
    const v0, 0x8028

    .line 253
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "com.oplus.feature.video.3hdr.support"

    .line 254
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x400

    goto :goto_2

    :cond_5
    const-string v1, "com.oplus.feature.video.live.hdr.support"

    .line 256
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x80a1

    :cond_6
    :goto_2
    const-string v1, "func_ultra_night_video"

    .line 261
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v1, :cond_7

    .line 263
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x80a2

    :cond_7
    const-string v1, "func_enhancement_video"

    .line 267
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x80a7

    :cond_8
    const-string v1, "com.oplus.video.watermark.hal.support"

    .line 271
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSloganOpen()Z

    move-result p0

    if-eqz p0, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    return v0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 4

    .line 280
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->readProfile()V

    .line 281
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCameraFeature()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oplus/camera/capmode/BaseMode$a;->INPUT:Lcom/oplus/camera/capmode/BaseMode$a;

    const-string v3, "type_main_preview_frame"

    invoke-virtual {p0, v1, v3, v2}, Lcom/oplus/camera/capmode/e;->getSizeFromConfig(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/capmode/BaseMode$a;)Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getPreviewSurfaceSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoSuperEisWideOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p0, "com.oplus.feature.video.eis.surface.size"

    .line 290
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getRealCaptureRate()Ljava/lang/Double;
    .locals 2

    .line 1515
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k120fps()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    .line 1516
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1517
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 1518
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 1521
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method protected getRecordingMaxDuration(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 5101
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    const/4 v0, -0x1

    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "com.oplus.video.max.duration.value"

    .line 5105
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5108
    array-length v1, p0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    array-length v1, p0

    rem-int/2addr v1, v2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5114
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 5115
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p0, v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x2

    .line 5117
    :try_start_0
    aget-object p1, p0, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 5119
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getRecordingMaxDuration, parse int error value:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonVideoMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1961
    iget-boolean v2, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    .line 1963
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "pref_video_super_eis_key"

    const-string v5, "key_support_super_eis_wide_menu"

    const-string v6, "func_video_super_eis_process"

    const-string v7, "pref_zoom_key"

    const-string v8, "pref_front_zoom_key"

    const-string v9, "pref_camera_torch_mode_key"

    const-string v10, "pref_camera_videoflashmode_key"

    const-string v11, "func_torch_soft_light"

    const-string v12, "func_video_super_eis_wide"

    const-string v13, "func_enhancement_video"

    const-string v14, "func_face_beauty_process"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "pref_camera_tap_shutter_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "key_support_no_face_forbid_beauty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "pref_expand_popbar_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "pref_filter_process_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x25

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "pref_support_capture_preview"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "pref_video_size_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "key_suppport_multi_focus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2d

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "pref_sound_types_key_front"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "pref_video_eis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x27

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "pref_video_blur_menu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x23

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "func_hdr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "key_support_makeup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "func_face_slender_process"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "pref_time_lapse_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "pref_track_focus_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2c

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "key_zoom_wide_angle_open_default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2f

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "key_support_video_recorder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x26

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "key_dark_environment_tips"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x28

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "func_mode_panel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2b

    goto/16 :goto_1

    :sswitch_19
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2a

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "func_blur_not_support_explorer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "func_sat_camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x24

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "key_support_video_high_fps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_1d
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x29

    goto/16 :goto_1

    :sswitch_1e
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "func_video_blur_process"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x22

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "pref_camera_gesture_shutter_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "pref_subsetting_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_22
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "pref_sound_types_key_rear"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "func_video_retention"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "func_face_beauty_custom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "func_face_beauty_common"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1a

    goto :goto_1

    :sswitch_27
    const-string v3, "pref_inertial_zoom_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto :goto_1

    :sswitch_28
    const-string v3, "pref_10bits_heic_encode_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2e

    goto :goto_1

    :sswitch_29
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto :goto_1

    :sswitch_2a
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    goto :goto_1

    :sswitch_2b
    const-string v3, "func_ultra_night_video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto :goto_1

    :sswitch_2c
    const-string v3, "key_show_pull_down_tip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto :goto_1

    :sswitch_2d
    const-string v3, "pref_video_noise_filter_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2e
    const-string v3, "key_support_show_dim_hint"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_2f
    const-string v3, "key_support_mode_change_vibrate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v17, "com.oplus.feature.custom.beauty.front.video.support"

    const-string v15, "video_size_1080p"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_26

    :pswitch_0
    const-string v1, "com.oplus.feature.wide.angle.open.default"

    .line 2245
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v0, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    :goto_2
    return v16

    :pswitch_1
    const-string v1, "com.oplus.10bits.heic.encode.support"

    .line 2240
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.oplus.feature.video.10bit.support"

    .line 2241
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v0, :cond_2

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    :goto_3
    return v16

    .line 2237
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    const/16 v16, 0x1

    goto :goto_4

    :cond_3
    const/16 v16, 0x0

    :goto_4
    return v16

    :pswitch_3
    const/4 v1, 0x0

    .line 2234
    invoke-direct {v0, v1}, Lcom/oplus/camera/capmode/e;->b(Z)Z

    move-result v0

    return v0

    :pswitch_4
    if-eqz v2, :cond_4

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_5

    :cond_4
    invoke-static {}, Lcom/oplus/camera/e/a;->g()Z

    move-result v1

    :goto_5
    const-string v2, "com.oplus.feature.video.resolution.limit.ultrawide.support"

    .line 2214
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 2215
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ge v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    .line 2218
    :goto_6
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2219
    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2220
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isSupportNoneSat()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "com.oplus.video.ultrawide.support"

    .line 2221
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_a

    :cond_6
    const-string v2, "com.oplus.feature.ultra.night.video.wide.angle.support"

    .line 2223
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2224
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2225
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    const-string v1, "com.oplus.feature.videoblur.ultrawide.support"

    .line 2227
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    const-string v1, "com.oplus.feature.video.4k60fps.ultrawide.support"

    .line 2228
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x3c

    .line 2229
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 2230
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_size_4kuhd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2231
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.oplus.feature.video.8k30fps.ultrawide.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const/16 v16, 0x1

    goto :goto_7

    :cond_b
    const/16 v16, 0x0

    :goto_7
    return v16

    .line 2184
    :pswitch_5
    invoke-virtual {v0, v8}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    return v1

    .line 2188
    :cond_c
    iget-boolean v1, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v1, :cond_e

    .line 2189
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isSupportNoneSat()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    const/4 v1, 0x0

    return v1

    :cond_e
    const/4 v1, 0x0

    .line 2193
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.oplus.feature.ultra.night.video.zoom.support"

    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 2197
    :cond_f
    invoke-virtual {v0, v6}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2198
    invoke-virtual {v0, v12}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_10
    const-string v1, "com.oplus.feature.video.live.hdr.sat.support"

    .line 2200
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "com.oplus.feature.video.live.hdr.support"

    .line 2201
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2202
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v1

    if-nez v1, :cond_15

    .line 2203
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const-string v1, "com.oplus.feature.ultra.night.video.wide.angle.support"

    .line 2204
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "com.oplus.feature.ai.enhancement.video.sat.support"

    .line 2205
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "com.oplus.feature.ai.enhancement.video.zoom.support"

    .line 2206
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_13
    const/16 v1, 0x78

    .line 2207
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getVideoFps()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "com.oplus.feature.video.8k30fps.ultrawide.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    const/16 v16, 0x1

    goto :goto_8

    :cond_15
    const/16 v16, 0x0

    :goto_8
    return v16

    .line 2174
    :pswitch_6
    iget-boolean v1, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v1, :cond_16

    const-string v1, "com.oplus.feature.front.camera.auto.zoom.support"

    .line 2175
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_16

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2177
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0

    .line 2171
    :pswitch_7
    invoke-virtual {v0, v5}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v16, 0x1

    goto :goto_9

    :cond_17
    const/16 v16, 0x0

    :goto_9
    return v16

    :pswitch_8
    const-string v1, "com.oplus.feature.video.super.eis.wide.support"

    .line 2165
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_18

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2167
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez v2, :cond_18

    const/16 v16, 0x1

    goto :goto_a

    :cond_18
    const/16 v16, 0x0

    :goto_a
    return v16

    .line 2162
    :pswitch_9
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v16, 0x1

    goto :goto_b

    :cond_19
    const/16 v16, 0x0

    :goto_b
    return v16

    .line 2156
    :pswitch_a
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1b

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2157
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz v2, :cond_1a

    const-string v0, "com.oplus.feature.front.eis.support"

    .line 2158
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_c

    :cond_1a
    const-string v0, "com.oplus.feature.video.super.eis.support"

    .line 2159
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_c
    const/16 v16, 0x1

    goto :goto_d

    :cond_1b
    const/16 v16, 0x0

    :goto_d
    return v16

    :pswitch_b
    const-string v1, "com.oplus.feature.video.sat.support"

    .line 2147
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez v2, :cond_1d

    .line 2149
    invoke-static {}, Lcom/oplus/camera/e/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1d

    .line 2151
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "com.oplus.feature.ai.enhancement.video.sat.support"

    .line 2152
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2153
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v16, 0x1

    goto :goto_e

    :cond_1d
    const/16 v16, 0x0

    :goto_e
    return v16

    .line 2141
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const-string v3, "aps_algo_video_blur"

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2143
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/e;->g:Z

    if-eqz v0, :cond_1e

    const/16 v16, 0x1

    goto :goto_f

    :cond_1e
    const/16 v16, 0x0

    :goto_f
    return v16

    :pswitch_d
    const-string v0, "oplus.software.video.surround_record_support"

    .line 2137
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_e
    const-string v0, "com.oplus.feature.torch.softlight.support"

    .line 2134
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz v2, :cond_1f

    const/16 v16, 0x1

    goto :goto_10

    :cond_1f
    const/16 v16, 0x0

    :goto_10
    return v16

    .line 2129
    :pswitch_f
    invoke-virtual {v0, v11}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz v2, :cond_20

    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    .line 2130
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "com.oplus.feature.screen.bright.video.support"

    .line 2131
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_11

    :cond_20
    const/16 v16, 0x0

    goto :goto_12

    :cond_21
    :goto_11
    const/16 v16, 0x1

    :goto_12
    return v16

    .line 2102
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_23

    .line 2105
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v2, :cond_22

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2106
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2107
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "com.oplus.feature.video.front.1080p.60fps.support"

    .line 2108
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v16, 0x1

    goto :goto_13

    :cond_22
    const/16 v16, 0x0

    :goto_13
    return v16

    :cond_23
    const-string v2, "video_size_720p"

    .line 2113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "com.oplus.feature.video.720p.60fps.support"

    .line 2114
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v15

    goto :goto_14

    .line 2115
    :cond_24
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "com.oplus.feature.video.1080p.60fps.support"

    .line 2116
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v15

    goto :goto_14

    :cond_25
    const-string v2, "video_size_4kuhd"

    .line 2117
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "com.oplus.feature.video.4k.60fps.support"

    .line 2118
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "com.oplus.feature.video.4k.120fps.support"

    .line 2119
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    const/4 v15, 0x1

    goto :goto_14

    :cond_27
    const/4 v15, 0x0

    .line 2122
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportFunction, sizeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportHps: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonVideoMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_28

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2125
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz v15, :cond_28

    const/16 v16, 0x1

    goto :goto_15

    :cond_28
    const/16 v16, 0x0

    :goto_15
    return v16

    :pswitch_11
    if-nez v2, :cond_42

    const-string v2, "com.oplus.feature.video.eis.support"

    .line 2093
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mVideoSizeType:Ljava/lang/String;

    const-string v3, "video_size_720p"

    .line 2094
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mVideoSizeType:Ljava/lang/String;

    .line 2095
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_29
    const/4 v3, 0x1

    return v3

    :pswitch_12
    const/4 v3, 0x1

    xor-int/lit8 v0, v2, 0x1

    return v0

    .line 2083
    :pswitch_13
    iget-boolean v1, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v1, :cond_2a

    const-string v1, "com.oplus.feature.custom.makeup.front.support"

    .line 2084
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_2a

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2086
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v16, 0x1

    goto :goto_16

    :cond_2a
    const/16 v16, 0x0

    :goto_16
    return v16

    .line 2076
    :pswitch_14
    invoke-static/range {v17 .. v17}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2077
    invoke-virtual {v0, v14}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez v2, :cond_2b

    const/16 v16, 0x1

    goto :goto_17

    :cond_2b
    const/16 v16, 0x0

    :goto_17
    return v16

    .line 2080
    :cond_2c
    invoke-virtual {v0, v14}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2069
    :pswitch_15
    invoke-static/range {v17 .. v17}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2070
    invoke-virtual {v0, v14}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz v2, :cond_2d

    const/16 v16, 0x1

    goto :goto_18

    :cond_2d
    const/16 v16, 0x0

    :goto_18
    return v16

    .line 2066
    :pswitch_16
    invoke-virtual {v0, v14}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2062
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const-string v3, "aps_algo_face_beauty"

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_2e

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2063
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v16, 0x1

    goto :goto_19

    :cond_2e
    const/16 v16, 0x0

    :goto_19
    return v16

    .line 2058
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const-string v3, "aps_algo_filter"

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_2f

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2059
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v16, 0x1

    goto :goto_1a

    :cond_2f
    const/16 v16, 0x0

    :goto_1a
    return v16

    .line 2046
    :pswitch_19
    invoke-virtual {v0, v7}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    if-nez v2, :cond_31

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_31

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2049
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2051
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "com.oplus.feature.ai.enhancement.video.zoom.support"

    .line 2052
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 2053
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2054
    :cond_30
    invoke-virtual {v0, v12}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "com.oplus.video.inertial.zoom.support"

    .line 2055
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v16, 0x1

    goto :goto_1b

    :cond_31
    const/16 v16, 0x0

    :goto_1b
    return v16

    .line 2040
    :pswitch_1a
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_33

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2041
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v2, :cond_32

    const-string v0, "com.oplus.feature.ai.enhancement.front.video.support"

    .line 2042
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_1c

    :cond_32
    const-string v0, "com.oplus.feature.ai.enhancement.video.support"

    .line 2043
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    :goto_1c
    const/16 v16, 0x1

    goto :goto_1d

    :cond_33
    const/16 v16, 0x0

    :goto_1d
    return v16

    :pswitch_1b
    const-string v1, "com.oplus.feature.ultra.night.video.support"

    .line 2034
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    if-nez v2, :cond_34

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_34

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2037
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v16, 0x1

    goto :goto_1e

    :cond_34
    const/16 v16, 0x0

    :goto_1e
    return v16

    .line 2024
    :pswitch_1c
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez v1, :cond_35

    const/4 v1, 0x0

    return v1

    .line 2028
    :cond_35
    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aE()Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object v0

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->KEY_EXPLORER_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->getConfigureParameterRange(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v1, "on"

    .line 2031
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v16, 0x1

    goto :goto_1f

    :cond_36
    const/16 v16, 0x0

    :goto_1f
    return v16

    .line 2016
    :pswitch_1d
    invoke-virtual {v0, v13}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "com.oplus.feature.video.3hdr.support"

    .line 2017
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "com.oplus.feature.video.live.hdr.support"

    .line 2018
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_37
    if-nez v2, :cond_38

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_38

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2021
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v16, 0x1

    goto :goto_20

    :cond_38
    const/16 v16, 0x0

    :goto_20
    return v16

    .line 2011
    :pswitch_1e
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2012
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2013
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_21

    :cond_39
    const/16 v16, 0x0

    goto :goto_22

    :cond_3a
    :goto_21
    const/16 v16, 0x1

    :goto_22
    return v16

    .line 2004
    :pswitch_1f
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    return v0

    :cond_3b
    const/4 v0, 0x1

    xor-int/2addr v0, v2

    return v0

    :pswitch_20
    const-string v0, "com.oplus.video.retention.support"

    .line 2001
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1995
    :pswitch_21
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1996
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1997
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_3c

    if-nez v2, :cond_3c

    const/16 v16, 0x1

    goto :goto_23

    :cond_3c
    const/16 v16, 0x0

    :goto_23
    return v16

    .line 1992
    :pswitch_22
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_3d

    iget-object v0, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v16, 0x1

    goto :goto_24

    :cond_3d
    const/16 v16, 0x0

    :goto_24
    return v16

    .line 1989
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v0

    return v0

    .line 1981
    :pswitch_24
    invoke-virtual {v0, v13}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1982
    invoke-virtual {v0, v10}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1983
    :cond_3e
    invoke-virtual {v0, v9}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 1984
    :cond_3f
    invoke-virtual {v0, v13}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1985
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v1

    if-nez v1, :cond_41

    .line 1986
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isVideoFlashTorchOpen()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_40
    const/16 v16, 0x1

    goto :goto_25

    :cond_41
    const/16 v16, 0x0

    :goto_25
    return v16

    :pswitch_25
    const/4 v0, 0x0

    return v0

    .line 1972
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isSubMenuEnable()Z

    move-result v0

    return v0

    :pswitch_27
    const/4 v0, 0x1

    return v0

    .line 2252
    :cond_42
    :goto_26
    invoke-super/range {p0 .. p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x768ef054 -> :sswitch_2f
        -0x7336bb70 -> :sswitch_2e
        -0x72854fc3 -> :sswitch_2d
        -0x717ea7aa -> :sswitch_2c
        -0x6bca5f3a -> :sswitch_2b
        -0x61c4af01 -> :sswitch_2a
        -0x500c4e2d -> :sswitch_29
        -0x4c684fe0 -> :sswitch_28
        -0x48d5427c -> :sswitch_27
        -0x423965f9 -> :sswitch_26
        -0x41e20473 -> :sswitch_25
        -0x3219bf21 -> :sswitch_24
        -0x264a55aa -> :sswitch_23
        -0x185952aa -> :sswitch_22
        -0xdae10b4 -> :sswitch_21
        -0xb0f5f67 -> :sswitch_20
        -0x9b1a6ca -> :sswitch_1f
        -0x953b61c -> :sswitch_1e
        -0x861d1b -> :sswitch_1d
        0x52dec60 -> :sswitch_1c
        0xb8585f9 -> :sswitch_1b
        0xf8b09b8 -> :sswitch_1a
        0x140b168f -> :sswitch_19
        0x1e7c3c3e -> :sswitch_18
        0x26d830c3 -> :sswitch_17
        0x286b43e6 -> :sswitch_16
        0x29bef9ad -> :sswitch_15
        0x2dffb2cd -> :sswitch_14
        0x383e0c7c -> :sswitch_13
        0x39f89c52 -> :sswitch_12
        0x3be29f98 -> :sswitch_11
        0x3c835268 -> :sswitch_10
        0x3f50f6f7 -> :sswitch_f
        0x4a67fef8 -> :sswitch_e
        0x51f99d59 -> :sswitch_d
        0x5245e2fb -> :sswitch_c
        0x57360957 -> :sswitch_b
        0x573e5b47 -> :sswitch_a
        0x5a4fa36f -> :sswitch_9
        0x5c5ca3b7 -> :sswitch_8
        0x601dc156 -> :sswitch_7
        0x62669e01 -> :sswitch_6
        0x65b53143 -> :sswitch_5
        0x65dfb4cb -> :sswitch_4
        0x74ed85e4 -> :sswitch_3
        0x78e7e46b -> :sswitch_2
        0x7b875213 -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 3

    .line 2282
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_setting_key"

    .line 2284
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2288
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "func_enhancement_video"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "key_ai_enhancement_video"

    .line 2289
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "key_disable_ai_enhancement_video"

    .line 2293
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "pref_subsetting_key"

    .line 2298
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2299
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "pref_video_size_key"

    .line 2302
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2304
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 2308
    :cond_4
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_video_size_key"

    .line 2313
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_video_fps_key"

    .line 2317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2318
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez p0, :cond_3

    const-string p0, "com.oplus.feature.video.720p.60fps.support"

    .line 2319
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.oplus.feature.video.1080p.60fps.support"

    .line 2320
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.oplus.feature.video.4k.60fps.support"

    .line 2321
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.oplus.feature.video.4k.120fps.support"

    .line 2322
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    const-string p0, "com.oplus.feature.video.front.1080p.60fps.support"

    .line 2324
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2328
    :cond_4
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportSubMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getTrackHalAlgoSize()Landroid/util/Size;
    .locals 2

    .line 3220
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    const-string v1, "type_video_frame"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/capmode/e;->getSurfaceSize(Ljava/lang/String;Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFps()I
    .locals 1

    const-string v0, "key_support_video_high_fps"

    .line 2403
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2404
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "30"

    .line 2407
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoFpsRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "key_support_video_high_fps"

    .line 3005
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.oplus.feature.video.dynamic.fps.range.support"

    if-nez v0, :cond_0

    .line 3006
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3010
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k120fps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3011
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->r:Landroid/util/Range;

    return-object p0

    .line 3012
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3013
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3014
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/e/b;->z:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3017
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 p0, 0x0

    .line 3018
    aget p0, v0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0

    .line 3022
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->s:Landroid/util/Range;

    return-object p0

    .line 3023
    :cond_3
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.oplus.video.fixed.fps.in.4k"

    .line 3024
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3025
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->u:Landroid/util/Range;

    return-object p0

    .line 3027
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->t:Landroid/util/Range;

    return-object p0
.end method

.method protected getVideoFrameRate()I
    .locals 1

    .line 1504
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k120fps()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x78

    return p0

    .line 1506
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x3c

    return p0

    :cond_1
    const/16 p0, 0x1e

    return p0
.end method

.method protected getVideoOrientation(I)I
    .locals 4

    .line 2342
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    const/4 v0, 0x0

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 6

    .line 1900
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    .line 1901
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "com.oplus.feature.ultra.night.video.wide.angle.support"

    .line 1902
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1901
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->o(Z)V

    const-string v1, "key_zoom_wide_angle_open_default"

    .line 1903
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->F(Z)V

    .line 1905
    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    const-string v4, "com.oplus.ultra.wide.4K.or.60fps.support"

    .line 1907
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.oplus.ultrawide.support"

    .line 1908
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1909
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1910
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video_size_4kuhd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    and-int/2addr v1, v2

    .line 1913
    :cond_4
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->f(Z)V

    const-string v1, "func_video_super_eis_wide"

    .line 1914
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->H(Z)V

    .line 1916
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_size_1080p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoFps()I

    move-result v2

    if-ne v1, v2, :cond_5

    const-string v1, "com.oplus.second.zoom.point.specific.value"

    .line 1918
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v1

    .line 1917
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->b(F)V

    .line 1921
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_size_8k"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->I(Z)V

    .line 1923
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->E(Z)V

    .line 1924
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->D(Z)V

    return-object v0
.end method

.method public hideBubble(Ljava/lang/String;)V
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "key_bubble_type_ai_enhancement_video"

    .line 392
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 393
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x7

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_1
    return-void
.end method

.method public is4k()Z
    .locals 2

    .line 4972
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    .line 4973
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_video_size_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video_size_4kuhd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public is4k120fps()Z
    .locals 4

    .line 3482
    iget v0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return v2

    .line 3487
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "video_size_4kuhd"

    .line 3489
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.feature.video.4k.120fps.support"

    .line 3490
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x78

    .line 3491
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result p0

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public is4k60fps()Z
    .locals 1

    .line 3499
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAiEnhancementVideoOpen()Z
    .locals 2

    const-string v0, "func_enhancement_video"

    .line 4905
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 4906
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    .line 4907
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_ai_enhancement_video"

    .line 4906
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAntibandingEnable()Z
    .locals 1

    .line 5000
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isBlurOpen()Z
    .locals 2

    const-string v0, "func_video_blur_process"

    .line 2499
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_video_blur_menu_state"

    .line 2500
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCommonVideoMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFilterOpen(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "oplus_video_filter_portrait_retention"

    .line 3800
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "oplus_video_filter_neon"

    .line 3801
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3802
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->isFilterOpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirstTipsEnable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "key_drawer_layout_anchor"

    .line 2480
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2481
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFlashState()Z
    .locals 0

    .line 3411
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoFlashTorchOpen()Z

    move-result p0

    return p0
.end method

.method public isHDRState()Z
    .locals 0

    .line 4921
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result p0

    return p0
.end method

.method protected isHFR()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isHighFps()Z
    .locals 5

    .line 3451
    iget v0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const-string v1, "com.oplus.feature.video.front.1080p.60fps.support"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 3452
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const/16 v0, 0x1e

    .line 3457
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v4

    if-ne v0, v4, :cond_1

    return v3

    .line 3461
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "video_size_720p"

    .line 3463
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.oplus.feature.video.720p.60fps.support"

    .line 3464
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    const-string v4, "video_size_1080p"

    .line 3465
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.oplus.feature.video.1080p.60fps.support"

    .line 3466
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3467
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "video_size_4kuhd"

    .line 3468
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.oplus.feature.video.4k.60fps.support"

    .line 3469
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const/16 v0, 0x3c

    .line 3471
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result p0

    if-ne v0, p0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    .line 3472
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isHighFps, isHighFps: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommonVideoMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    return v3
.end method

.method protected isQualcommEndOfStreamNeed()Z
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.end.video.eis.stream.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->T()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 217
    :cond_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->k()[B

    move-result-object p0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQualcommEndOfStreamNeed, endOfStreamValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CommonVideoMode"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 224
    array-length p0, p0

    if-lez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected isRearSuperEISOpen()Z
    .locals 1

    .line 1218
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isSalientObjectDetectionEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSatOpen()Z
    .locals 6

    const-string v0, "func_sat_camera"

    .line 3636
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3640
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 3644
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "com.oplus.feature.video.live.hdr.sat.support"

    .line 3648
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3649
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3650
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->checkVideoHdrPreCondition()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 3654
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->N()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "com.oplus.feature.ai.enhancement.video.sat.support"

    .line 3658
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3659
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3660
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->N()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 3664
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 3665
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_video_fps_key"

    const-string v4, "30"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3666
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3c

    const/4 v4, 0x1

    if-ne v2, v3, :cond_6

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez p0, :cond_6

    move p0, v4

    goto :goto_0

    :cond_6
    move p0, v1

    :goto_0
    const-string v2, "com.oplus.feature.video.sat.mask"

    .line 3669
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v3

    and-int/2addr v3, v4

    if-nez v3, :cond_7

    if-eqz p0, :cond_7

    return v1

    .line 3674
    :cond_7
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    const-string v5, "video_size_4kuhd"

    if-nez v3, :cond_8

    .line 3675
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v1

    .line 3679
    :cond_8
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_9

    if-eqz p0, :cond_9

    .line 3681
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v1

    .line 3685
    :cond_9
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_a

    const-string p0, "video_size_8k"

    .line 3686
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_a
    return v4

    :cond_b
    :goto_1
    return v1
.end method

.method public isShowFaceBeautyMenu()Z
    .locals 4

    .line 1949
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1953
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "off"

    const-string v3, "pref_video_super_eis_key"

    .line 1954
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "key_ultra_night_video"

    .line 1955
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "key_video_hdr"

    .line 1956
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected isShowUltraWide()Z
    .locals 3

    .line 2505
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.ai.enhancement.video.zoom.support"

    .line 2506
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2510
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.feature.videoblur.ultrawide.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2514
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2515
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public isSubMenuEnable()Z
    .locals 1

    const-string v0, "func_ultra_night_video"

    .line 1940
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "func_enhancement_video"

    .line 1941
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_size_key"

    .line 1942
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportSubMenu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_fps_key"

    .line 1943
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportSubMenu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_torch_mode_key"

    .line 1944
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

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

.method protected isSuperEISOpen()Z
    .locals 2

    const-string v0, "pref_video_super_eis_key"

    .line 3628
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3632
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isSuperEISProOpen()Z
    .locals 2

    const-string v0, "key_support_super_eis_wide_menu"

    .line 3620
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3624
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_super_eis_wide_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public isUltraNightVideoOpen()Z
    .locals 2

    const-string v0, "func_ultra_night_video"

    .line 4896
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 4897
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "key_ultra_night_video"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isUseMediaCodec()Z
    .locals 3

    .line 1840
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1841
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1842
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1843
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oplus.feature.default.video.frame.record.support"

    .line 1846
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1847
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.video.wide.only.mediacodec.support"

    .line 1848
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1849
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1850
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const-string v1, "preview"

    const-string v2, "preview_rectify"

    invoke-static {v0, p0, v1, v2}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportPreviewAlgo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isUseMediaRecorderNotUseAPS()Z
    .locals 10

    .line 1856
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCameraFeature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1857
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    const-string v0, "pref_watermark_function_key"

    .line 1862
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    .line 1863
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.video.watermark.hal.support"

    .line 1864
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1865
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUseMediaCodec()Z

    move-result p0

    xor-int/2addr p0, v9

    return p0

    .line 1868
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->needApsToProcessVideoWatermark()Z

    move-result p0

    xor-int/2addr p0, v9

    return p0

    :cond_2
    const-string v0, "com.oplus.aps.support.video.super.eis"

    .line 1871
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v9

    .line 1875
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoSuperEisWideOpen()Z

    move-result p0

    if-nez p0, :cond_4

    move v8, v9

    :cond_4
    return v8

    :cond_5
    const-string v0, "commonVideoSatHal"

    .line 1878
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "4kVideo"

    .line 1879
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "liveHDR"

    .line 1880
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ultraNight"

    .line 1881
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "commonVideo"

    .line 1882
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    if-eq v9, v0, :cond_8

    :cond_6
    const-string v0, "fastVideo"

    .line 1884
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    if-ne v9, v0, :cond_7

    goto :goto_1

    :cond_7
    move v6, v8

    goto :goto_2

    :cond_8
    :goto_1
    move v6, v9

    :goto_2
    const-string v0, "slowVideo"

    .line 1886
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    if-nez v0, :cond_9

    move v7, v9

    goto :goto_3

    :cond_9
    move v7, v8

    .line 1889
    :goto_3
    iget v2, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1890
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->needApsToProcessVideoWatermark()Z

    move-result v5

    .line 1889
    invoke-static/range {v1 .. v7}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getPreviewConfig(Ljava/lang/String;ILandroid/util/Size;Landroid/util/Size;ZZZ)Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1892
    iget-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-eqz p0, :cond_b

    if-eqz v0, :cond_b

    .line 1894
    iget-boolean p0, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mbEnable:Z

    if-nez p0, :cond_c

    :cond_b
    move v8, v9

    :cond_c
    return v8
.end method

.method public isVideo10BitOpen()Z
    .locals 4

    const-string v0, "pref_10bits_heic_encode_key"

    .line 4925
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x78

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4926
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4927
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4928
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoFps()I

    move-result p0

    if-eq v2, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 4930
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.feature.video.3hdr.10bit.support"

    .line 4931
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4932
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoFps()I

    move-result p0

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public isVideoHdrOpen()Z
    .locals 1

    const-string v0, "func_hdr"

    .line 4862
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4863
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getHDRKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getHDRModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVideoHighFps()Z
    .locals 0

    .line 3426
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result p0

    return p0
.end method

.method protected isVideoNeonOpen()Z
    .locals 1

    .line 2494
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "oplus_video_filter_neon"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isVideoRetentionOpen()Z
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "oplus_video_filter_portrait_retention"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoSuperEisWideOpen()Z
    .locals 2

    const-string v0, "func_video_super_eis_wide"

    .line 2985
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_super_eis_wide_key"

    .line 2987
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public needClearFocusView()Z
    .locals 0

    .line 4667
    iget p0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected needSetMakeupToAlgo()Z
    .locals 1

    .line 4244
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->needSetMakeupToAlgo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->o()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "type_still_capture_jpeg"

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p0, "com.oplus.feature.video.live.hdr.support"

    .line 299
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    .line 302
    :cond_0
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsCapture()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    const-string v0, "type_still_capture_yuv_main"

    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x2

    .line 307
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result p1

    if-nez p1, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideo10BitOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 309
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "com.oplus.stream.support.preversion"

    .line 310
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1

    :cond_5
    const-string v0, "type_video_frame"

    .line 313
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "com.oplus.aps.support.video.super.eis"

    .line 317
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 318
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 319
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 320
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_6
    const-string p1, "pref_watermark_function_key"

    .line 321
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSloganOpen()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :cond_8
    :goto_1
    return v1

    :cond_9
    const-string v0, "type_sub_preview_frame"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "type_third_preview_frame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 330
    :cond_a
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    :goto_2
    const/4 p1, 0x3

    .line 325
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 326
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSatOpen()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "com.oplus.sat.use.hal"

    .line 327
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_3

    :cond_c
    move v1, v2

    :goto_3
    return v1
.end method

.method public needUploadOplusStatistics(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_face_detection_key"

    .line 1931
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1935
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onAfterSnapping()Z
    .locals 0

    .line 3234
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result p0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 3

    .line 1526
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onAfterStartPreview(Z)V

    const/4 p1, 0x0

    .line 1528
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->i:Z

    .line 1529
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->J()V

    .line 1531
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->u(Z)V

    .line 1535
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isOpenFrontTorch()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.feature.screen.bright.video.support"

    .line 1536
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1537
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->I()V

    .line 1540
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1542
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1546
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->showBeautyButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1547
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    goto :goto_0

    .line 1549
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k(ZZ)V

    .line 1552
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->showMenuLeftButton()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1553
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->i(ZZ)V

    goto :goto_1

    .line 1555
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->h(ZZ)V

    :goto_1
    const-string p1, "com.oplus.feature.video.super.eis.wide.tips"

    .line 1558
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez p1, :cond_5

    .line 1560
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "func_video_super_eis_wide"

    .line 1561
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "key_support_super_eis_wide_menu"

    .line 1562
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "com.oplus.feature.video.super.eis.wide.open.default"

    .line 1563
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string p1, "key_first_super_eis_wide_tip"

    .line 1564
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1565
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    const v0, 0x7f090434

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1568
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getBubbleOffsetX(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getBubbleOffsetY(I)I

    move-result p0

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    :cond_5
    return-void
.end method

.method protected onBeforePreview()V
    .locals 5

    .line 1420
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 1424
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    const-string v1, "on"

    if-nez v0, :cond_3

    const-string v0, "com.oplus.track.focus.support"

    .line 1425
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1426
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/e;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    const v4, 0x7f100148

    .line 1428
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_track_focus_key"

    .line 1427
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1429
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2, v0}, Lcom/oplus/camera/e/d;->o(Z)V

    :cond_2
    const-string v0, "com.oplus.video.retention.support"

    .line 1432
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    .line 1433
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->D(Z)V

    :cond_3
    const-string v0, "func_video_blur_process"

    .line 1437
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_4

    .line 1438
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BLUR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_4
    const-string v0, "func_face_beauty_process"

    .line 1441
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_6

    .line 1442
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyCurrIndex()I

    move-result v0

    .line 1443
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2, v0}, Lcom/oplus/camera/e/d;->h(I)V

    .line 1444
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->FACE_BEAUTY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "off"

    :goto_1
    invoke-interface {v2, v3, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1449
    :cond_6
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBeforePreview()V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 0

    .line 3215
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result p0

    return p0
.end method

.method public onCameraIdChangedAnimationEnd()V
    .locals 1

    .line 667
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "pref_video_size_key"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 7

    .line 1362
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    .line 1364
    iget-boolean p2, p2, Lcom/oplus/camera/e/c;->ac:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p2, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-wide v1, p1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mIdentity:J

    .line 1367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/oplus/camera/util/Util;->a(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1366
    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/capmode/a;->a(JLjava/lang/String;ZZZ)V

    :cond_0
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 2

    .line 899
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onDeInitCameraMode(Ljava/lang/String;)V

    .line 901
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_0

    .line 902
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f1004c4

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 903
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const v1, 0x7f100070

    aput v1, p1, v0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    :cond_0
    return-void
.end method

.method public onEffectMenuPopDown(Z)V
    .locals 2

    const-string v0, "CommonVideoMode"

    const-string v1, "onEffectMenuPopDown"

    .line 3431
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 3434
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->D()V

    .line 3438
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->g()V

    return-void
.end method

.method public onFaceBeautyItemChange(I)V
    .locals 3

    .line 3064
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 3068
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyCurrIndex()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 3070
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3071
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3072
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 3077
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_face_beauty_close_by_resolution"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3080
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onFaceBeautyItemChange(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFaceBeautyItemValueChange(IIZ)V
    .locals 0

    .line 3443
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/w;->onFaceBeautyItemValueChange(IIZ)V

    const-string p1, "CommonVideoMode"

    const-string p2, "onFaceBeautyItemValueChange"

    .line 3445
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->D()V

    return-void
.end method

.method public onFaceBeautyMenuClick()Z
    .locals 7

    .line 3085
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3089
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    const-string v2, "off"

    if-eqz v0, :cond_1

    .line 3090
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "key_video_hdr"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3091
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 3094
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v0

    const-string v3, "pref_video_super_eis_key"

    if-eqz v0, :cond_2

    .line 3095
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3098
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 3099
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "pref_10bits_heic_encode_key"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3100
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->S()V

    .line 3101
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v5, v1, [I

    const v6, 0x7f100070

    aput v6, v5, v4

    invoke-interface {v0, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 3102
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/e;->j:Z

    :cond_3
    const-string v0, "func_ultra_night_video"

    .line 3105
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3106
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "key_ultra_night_video"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3107
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 3110
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3111
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v0, "com.oplus.feature.custom.beauty.front.video.support"

    .line 3114
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3115
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3116
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3117
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v0, :cond_6

    .line 3119
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3120
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->F()V

    .line 3121
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 3122
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v3, "pref_video_blur_menu"

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 3125
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->A()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3126
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3129
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.feature.ai.enhancement.video.facebeauty.mutex.support"

    .line 3130
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3131
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "key_ai_enhancement_video"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3132
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 3135
    :cond_9
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    .line 3136
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v3

    if-eq v2, v3, :cond_a

    const/16 v2, 0x78

    .line 3137
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->t()I

    move-result v3

    if-ne v2, v3, :cond_b

    :cond_a
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_0

    :cond_b
    move v2, v4

    .line 3140
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFaceBeautyMenuClick, videoSizeType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isHighFps: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.oplus.feature.facebeauty.support.videosize"

    .line 3145
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v5, "video_size_1080p"

    .line 3147
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "pref_video_size_key"

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3148
    :cond_c
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/e;->h:Z

    .line 3149
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->g()V

    .line 3151
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "video_size_720p"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3152
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->G()V

    .line 3154
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 3155
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Z)V

    .line 3156
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->v(Z)V

    :goto_1
    move v0, v4

    goto :goto_4

    :cond_d
    if-eqz v3, :cond_e

    .line 3159
    invoke-static {v3, v0}, Lcom/oplus/camera/util/Util;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    if-eqz v2, :cond_14

    .line 3160
    :cond_f
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/e;->h:Z

    if-eqz v3, :cond_10

    .line 3162
    invoke-static {v3, v0}, Lcom/oplus/camera/util/Util;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_2

    :cond_10
    move v0, v4

    .line 3164
    :goto_2
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->g()V

    if-eqz v2, :cond_11

    .line 3168
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/e;->f(Z)V

    .line 3169
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->D()V

    move v2, v1

    goto :goto_3

    :cond_11
    move v2, v4

    :goto_3
    if-eqz v0, :cond_12

    .line 3174
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    aget-object v2, v3, v4

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v2, v1

    :cond_12
    if-eqz v2, :cond_13

    .line 3179
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->G()V

    .line 3182
    :cond_13
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 3183
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Z)V

    .line 3184
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->v(Z)V

    goto :goto_1

    :cond_14
    move v0, v1

    :goto_4
    const-string v2, "func_face_beauty_common"

    .line 3189
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3190
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyCurrIndex()I

    move-result v2

    .line 3192
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCustomBeautyKeys()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/e;->getFaceBeautyItemDefaultValue(I)I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_15

    const v5, -0x186a0

    if-eq v3, v5, :cond_15

    const/16 v5, 0x66

    goto :goto_5

    :cond_15
    move v5, v4

    :goto_5
    if-eq v2, v5, :cond_16

    .line 3199
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    .line 3200
    invoke-virtual {p0, v4, v3, v1}, Lcom/oplus/camera/capmode/e;->onFaceBeautyItemValueChange(IIZ)V

    .line 3201
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/e;->onFaceBeautyItemChange(I)V

    :cond_16
    return v0
.end method

.method public onFaceBeautyMenuClose()V
    .locals 0

    .line 3210
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->u()V

    return-void
.end method

.method public onFilterItemChange(I)V
    .locals 7

    .line 2525
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->a(I)Z

    move-result v0

    invoke-super {p0, p1, v0}, Lcom/oplus/camera/capmode/w;->onFilterItemChange(IZ)V

    .line 2527
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/e;->d(I)V

    .line 2529
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterIndex()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_12

    .line 2530
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "key_video_hdr"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2532
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 2535
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v0

    const-string v3, "pref_video_super_eis_key"

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2536
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2539
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2540
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "key_ultra_night_video"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2541
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 2544
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->M()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2545
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "key_ai_enhancement_video"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2546
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_4
    const-string v0, "func_face_beauty_custom"

    .line 2549
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2550
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v0, :cond_5

    .line 2552
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2553
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2554
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->F()V

    .line 2555
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v4, "pref_video_blur_menu"

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 2556
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2559
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 2560
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_video_fps_key"

    const-string v5, "30"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2561
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3c

    const/4 v6, 0x0

    if-eq v4, v5, :cond_6

    .line 2562
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_7

    :cond_6
    iget-boolean v3, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_0

    :cond_7
    move v3, v6

    .line 2565
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFilterItemChange, index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", videoSizeType: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isHighFps: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CommonVideoMode"

    invoke-static {v4, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "video_size_4kuhd"

    .line 2568
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v4, "com.oplus.feature.video.4k60fps.ultrawide.support"

    .line 2570
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p1, :cond_8

    if-nez v3, :cond_9

    .line 2573
    :cond_8
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2574
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 2575
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2576
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v6}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_a
    if-eqz v3, :cond_d

    .line 2579
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterIndex()I

    move-result v0

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq v0, v1, :cond_d

    if-nez p1, :cond_c

    .line 2580
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    move v2, v6

    :cond_c
    :goto_1
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/e;->f(Z)V

    .line 2581
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->D()V

    :cond_d
    const-string v0, "com.oplus.feature.video.4k30fps.filter.support"

    .line 2584
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 2586
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p1, :cond_e

    if-eqz v0, :cond_f

    :cond_e
    if-nez v3, :cond_f

    .line 2587
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2588
    :cond_f
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterIndex()I

    move-result v0

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq v0, v1, :cond_13

    if-nez p1, :cond_10

    .line 2589
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2590
    :cond_10
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_video_size_key"

    const-string v1, "video_size_1080p"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2593
    :cond_11
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->G()V

    goto :goto_2

    .line 2596
    :cond_12
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->u()V

    .line 2597
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->x()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/e;->a(ZZ)V

    :cond_13
    :goto_2
    return-void
.end method

.method protected onFilterMenuClicked()V
    .locals 5

    .line 3789
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3790
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 3791
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 3792
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    const-string v4, "pref_video_filter_menu"

    invoke-interface {v2, v4, v3, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;ZII)V

    .line 3793
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "video_filter_reddot_show"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3794
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 3

    .line 4882
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    if-eqz v0, :cond_0

    .line 4883
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    .line 4884
    iget v1, p0, Lcom/oplus/camera/capmode/e;->mDcsLux:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mLux:Ljava/lang/String;

    .line 4885
    iget v1, p0, Lcom/oplus/camera/capmode/e;->mDcsCCT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCct:Ljava/lang/String;

    .line 4886
    iget v1, p0, Lcom/oplus/camera/capmode/e;->mDcsIso:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIso:Ljava/lang/String;

    .line 4887
    iget-wide v1, p0, Lcom/oplus/camera/capmode/e;->mDcsExp:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mExp:Ljava/lang/String;

    .line 4888
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->Q()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsAssistantLine:Ljava/lang/String;

    move-object p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method public onHDRModeChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_video_hdr"

    .line 4292
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4293
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->d()V

    .line 4294
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->K()V

    :cond_0
    return-void
.end method

.method protected onInitCameraMode()V
    .locals 4

    .line 875
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onInitCameraMode()V

    const-string v0, ""

    .line 877
    iput-object v0, p0, Lcom/oplus/camera/capmode/e;->x:Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    instance-of v0, v0, Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.video.color_extraction.support"

    .line 880
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "key_video_filter_index"

    if-nez v0, :cond_1

    const-string v0, "com.oplus.video.neon.support"

    .line 881
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.video.only.blur.support"

    .line 882
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->d:Ljava/util/List;

    .line 883
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v2, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v2, v2, Lcom/oplus/camera/ui/preview/a/i;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 884
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    check-cast v0, Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ComboPreferences;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    check-cast v0, Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ComboPreferences;->d(Ljava/lang/String;)V

    .line 891
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f100070

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 894
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->g()V

    return-void
.end method

.method protected onMakeupTypeChanged(IZ)V
    .locals 3

    .line 1152
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onMakeupTypeChanged(IZ)V

    const-string v0, "pref_makeup_last_close_index"

    if-eqz p1, :cond_1

    .line 1154
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1155
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1158
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v1, "pref_video_super_eis_key"

    const-string v2, "off"

    .line 1161
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1162
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isMakeupOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1166
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x0

    .line 1167
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1169
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/j;->a(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterIndex()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1170
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->onFilterItemChange(I)V

    .line 1173
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.oplus.feature.makeup.low.performance"

    .line 1174
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pref_video_size_key"

    const-string v1, "video_size_720p"

    .line 1175
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    if-eqz p2, :cond_4

    const-string p2, "pref_face_beauty_close_by_resolution"

    .line 1179
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1182
    :cond_4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1184
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1185
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->I()V

    :cond_5
    return-void
.end method

.method public onMenuOptionAdded(Ljava/lang/String;)V
    .locals 3

    const-string v0, "pref_video_filter_menu"

    .line 3769
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->ae()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3770
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0708be

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 3771
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 3772
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;ZII)V

    :cond_0
    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 1

    .line 1575
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onMoreModeHidden(I)V

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    .line 1579
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->showNextTip()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 417
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onPause()V

    const-string v0, ""

    .line 419
    iput-object v0, p0, Lcom/oplus/camera/capmode/e;->x:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    const-string v2, "pref_video_blur_menu"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_video_blur_menu_state"

    .line 423
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->g()V

    :cond_1
    const/4 v0, -0x1

    .line 430
    iput v0, p0, Lcom/oplus/camera/capmode/e;->l:I

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 4

    if-eqz p1, :cond_8

    .line 1796
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v0, 0xa

    .line 1802
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1804
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1805
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/e;->a(Landroid/hardware/camera2/CaptureResult;)V

    .line 1808
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    if-eqz v0, :cond_3

    const-string v0, "com.oplus.feature.eis.pro.low.light.hint.support"

    .line 1812
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1813
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoSuperEisWideOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/capmode/e;->mFlashTrigger:I

    if-ne v1, v0, :cond_3

    .line 1815
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->u()V

    .line 1819
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/e/b;->ar:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_4

    .line 1822
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_4

    .line 1823
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->b([I)V

    .line 1826
    :cond_4
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Lcom/oplus/camera/e/b;->as:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 1829
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_5

    .line 1830
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->c([I)V

    .line 1833
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->x:Ljava/lang/String;

    const-string v0, "oplus_video_filter_portrait_retention"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1834
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->processFaceCount()V

    :cond_7
    return-void

    .line 1797
    :cond_8
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, invalid previewResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonVideoMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivePreviewCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 1786
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onReceivePreviewCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 1787
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1789
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->W()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1790
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/e;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_1
    return-void
.end method

.method protected onResume(Z)V
    .locals 7

    .line 335
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onResume(Z)V

    .line 336
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    iget v0, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    const-string v1, "pref_video_size_key"

    .line 337
    invoke-static {v1, v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->y()Z

    move-result v0

    const-string v1, "video_size_1080p"

    const-string v2, "off"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "pref_video_super_eis_key"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 343
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v4}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->A()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->B()Z

    move-result v0

    if-nez v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "pref_video_fps_key"

    const-string v6, "30"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    const-string v5, "com.oplus.feature.video.resolution.limit.ultrawide.support"

    .line 350
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    .line 352
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getResolutionBySizeType(Ljava/lang/String;)I

    move-result v6

    if-ge v5, v6, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    const-string v6, "video_size_4kuhd"

    .line 354
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v0, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->P()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 356
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 357
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 358
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v4}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 359
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/e;->mbFlashTemporaryDisabled:Z

    :cond_4
    const-string p1, "func_hdr"

    .line 363
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 364
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->p()V

    :cond_5
    const-string p1, "func_ultra_night_video"

    .line 367
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 368
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->q()V

    :cond_6
    const-string p1, "func_enhancement_video"

    .line 371
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 372
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->checkAiEnhancementVideoState()V

    :cond_7
    const-string p1, "pref_10bits_heic_encode_key"

    .line 375
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 376
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->b()V

    .line 379
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->R()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 380
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_ai_enhancement_video"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 383
    :cond_9
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->J()V

    return-void
.end method

.method protected onResumeFromSetting()V
    .locals 1

    .line 3825
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onResumeFromSetting()V

    .line 3827
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3828
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3829
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/e;->j:Z

    goto :goto_0

    .line 3830
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is10bitsHeicEncodeEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3831
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/e;->j:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 13

    .line 3958
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string v0, "pref_video_super_eis_key"

    .line 3960
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "CommonVideoMode"

    const-string v3, "pref_super_eis_wide_key"

    const-string v4, "pref_makeup_last_close_index"

    const-string v5, "on"

    const-string v6, "off"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_6

    .line 3961
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 3963
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3966
    invoke-interface {p1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3967
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->l()V

    .line 3969
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 3970
    :cond_0
    iget-boolean v9, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v9, :cond_2

    .line 3971
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v9

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    .line 3972
    invoke-static {v9}, Lcom/oplus/camera/ui/preview/a/j;->a(Z)I

    move-result v9

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterIndex()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 3973
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 3976
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSharedPreferenceChanged, lastMakeupIndex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2

    .line 3979
    iget-object v10, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v10, v9}, Lcom/oplus/camera/ui/CameraUIInterface;->u(I)V

    .line 3980
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 3983
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->o()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isMakeupOpen()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3984
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrMakeupIndex()I

    move-result v9

    .line 3986
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSharedPreferenceChanged, currentMakeupIndex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2

    .line 3989
    iget-object v10, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v4, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3990
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->u(I)V

    .line 3994
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3996
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v10, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v10}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v10

    invoke-interface {v9, v7, v10, v8, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZZ)V

    .line 3997
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    goto :goto_1

    .line 3998
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->supportBeautyButton()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3999
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 4002
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->supportMenuLeftButton()Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v1, :cond_5

    .line 4003
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v1, :cond_5

    .line 4004
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v7, v7, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    .line 4005
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->h(ZZ)V

    goto :goto_2

    .line 4007
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->i(ZZ)V

    :cond_6
    :goto_2
    const-string v1, "key_video_filter_index"

    .line 4012
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz p1, :cond_7

    .line 4014
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result v9

    invoke-interface {p1, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getFilterNoneIndex()I

    move-result v1

    .line 4015
    :goto_3
    invoke-static {v7}, Lcom/oplus/camera/ui/preview/a/j;->a(Z)I

    move-result v9

    .line 4017
    iget v10, p0, Lcom/oplus/camera/capmode/e;->w:I

    if-ne v9, v10, :cond_8

    if-eq v9, v1, :cond_8

    .line 4019
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4020
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->o()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "key_support_makeup"

    .line 4021
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "onSharedPreferenceChanged, need to force reopen makeup "

    .line 4022
    invoke-static {v2, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4024
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->aS()V

    .line 4025
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->m()V

    .line 4029
    :cond_8
    invoke-direct {p0, p2}, Lcom/oplus/camera/capmode/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4030
    invoke-direct {p0, p2}, Lcom/oplus/camera/capmode/e;->f(Ljava/lang/String;)V

    .line 4031
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->g()V

    :cond_9
    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    .line 4034
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->aA()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4035
    iput-boolean v7, p0, Lcom/oplus/camera/capmode/e;->i:Z

    :cond_a
    const-string v2, "key_ultra_night_video"

    .line 4038
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4039
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->a()V

    .line 4040
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->K()V

    :cond_b
    const-string v2, "key_ai_enhancement_video"

    .line 4043
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 4044
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->c()V

    :cond_c
    const-string v9, "key_explorer_chip_state"

    .line 4047
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 4048
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    :cond_d
    const-string v9, "key_disable_ai_enhancement_video"

    .line 4051
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 4052
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f10059b

    const/16 v11, 0x7d0

    new-array v12, v8, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11, v12}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II[Ljava/lang/Object;)V

    :cond_e
    const-string v9, "pref_camera_torch_mode_key"

    .line 4055
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 4056
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isOpenFrontTorch()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, "com.oplus.feature.screen.bright.video.support"

    .line 4057
    invoke-static {v10}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 4058
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->I()V

    :cond_f
    const-string v10, "pref_video_blur_menu"

    .line 4062
    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 4063
    iget-object v10, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    move v10, v7

    goto :goto_4

    :cond_10
    move v10, v8

    .line 4064
    :goto_4
    iget-object v11, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v11, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v10, :cond_11

    .line 4068
    invoke-virtual {p0, v8, v8}, Lcom/oplus/camera/capmode/e;->updateVideoNeonEnable(ZZ)V

    .line 4069
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->n()V

    goto :goto_5

    :cond_11
    if-eqz v4, :cond_12

    .line 4071
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getCurrFilterType()Ljava/lang/String;

    move-result-object v4

    const-string v11, "oplus_video_filter_neon"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 4072
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->o()Z

    move-result v4

    if-nez v4, :cond_12

    .line 4073
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result v4

    if-nez v4, :cond_12

    .line 4074
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->av()V

    .line 4077
    :cond_12
    :goto_5
    invoke-virtual {p0, v7, v10}, Lcom/oplus/camera/capmode/e;->updateVideoBlurEnable(ZZ)V

    .line 4079
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isOpenFrontTorch()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "com.oplus.feature.screen.bright.video.support"

    .line 4080
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4081
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4082
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, v9}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_13
    const-string v4, "pref_10bits_heic_encode_key"

    .line 4086
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 4087
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->b()V

    :cond_14
    const-string v4, "pref_video_blur_menu"

    .line 4090
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4091
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->l()V

    .line 4093
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v4

    if-nez v4, :cond_15

    .line 4094
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->u()V

    :cond_15
    const-string v4, "pref_video_filter_menu"

    .line 4098
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4099
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->l()V

    .line 4101
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v4

    if-nez v4, :cond_16

    .line 4102
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->u()V

    :cond_16
    const-string v4, "pref_camera_id_key"

    .line 4106
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4107
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pref_camera_id_key"

    invoke-interface {v4, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4108
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_17

    iget v9, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v9, v4, :cond_17

    .line 4109
    iput-boolean v7, p0, Lcom/oplus/camera/capmode/e;->k:Z

    :cond_17
    const-string v4, "pref_video_size_key"

    .line 4113
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    .line 4114
    invoke-interface {v9, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 4115
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4117
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 4118
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 4119
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v9

    if-nez v9, :cond_18

    .line 4120
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_18
    const-string v9, "pref_video_blur_menu_state"

    .line 4124
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v9, "func_sat_camera"

    .line 4125
    invoke-virtual {p0, v9}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 4126
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->updateTrackEnable()V

    .line 4129
    :cond_19
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v9}, Lcom/oplus/camera/capmode/a;->aA()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 4130
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 4131
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 4132
    invoke-direct {p0, v8}, Lcom/oplus/camera/capmode/e;->a(Z)V

    .line 4133
    iget-object v9, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4134
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    new-instance v9, Lcom/oplus/camera/capmode/-$$Lambda$e$6rBNUu5_cT-43Nogc2lmUdsd7ZI;

    invoke-direct {v9, p0}, Lcom/oplus/camera/capmode/-$$Lambda$e$6rBNUu5_cT-43Nogc2lmUdsd7ZI;-><init>(Lcom/oplus/camera/capmode/e;)V

    invoke-virtual {v2, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 4141
    :cond_1a
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->H()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4142
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->x()Z

    move-result v2

    invoke-direct {p0, v7, v2}, Lcom/oplus/camera/capmode/e;->a(ZZ)V

    .line 4148
    :cond_1b
    :goto_6
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "key_ai_enhancement_closed_by_video_size_fps"

    const-string v10, "pref_video_fps_key"

    if-eqz v2, :cond_1f

    .line 4149
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->l()V

    .line 4151
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4152
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->u()V

    :cond_1c
    const-string v2, "com.oplus.feature.video.8k.24fps.support"

    .line 4155
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mVideoSizeType:Ljava/lang/String;

    const-string v11, "video_size_8k"

    .line 4156
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->e()Z

    move-result v2

    if-nez v2, :cond_1d

    const/16 v2, 0x18

    .line 4157
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v11, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "30"

    .line 4158
    invoke-interface {v11, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4157
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4159
    invoke-direct {p0, v7}, Lcom/oplus/camera/capmode/e;->f(Z)V

    .line 4162
    :cond_1d
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    .line 4163
    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 4164
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4165
    invoke-direct {p0, v4}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v11

    .line 4164
    invoke-interface {v2, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4165
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4168
    :cond_1e
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {p0, v4}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4169
    invoke-direct {p0, v8, v7}, Lcom/oplus/camera/capmode/e;->a(ZZ)V

    .line 4173
    :cond_1f
    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4174
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    .line 4175
    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_20

    .line 4176
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4177
    invoke-direct {p0, v10}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v11

    .line 4176
    invoke-interface {v2, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4177
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4180
    :cond_20
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-direct {p0, v10}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4181
    invoke-direct {p0, v8, v7}, Lcom/oplus/camera/capmode/e;->a(ZZ)V

    .line 4185
    :cond_21
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v2, :cond_23

    .line 4187
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v4, "func_out_preview"

    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->R(Z)V

    .line 4188
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k60fps()Z

    move-result v4

    xor-int/2addr v4, v7

    invoke-interface {v2, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->P(Z)V

    .line 4191
    :cond_23
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 4192
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz p1, :cond_25

    .line 4194
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 4195
    invoke-interface {p1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4196
    :cond_24
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->l()V

    goto :goto_7

    .line 4198
    :cond_25
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->u()V

    .line 4202
    :cond_26
    :goto_7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4203
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->L()Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    const-string v0, ""

    .line 4205
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 4206
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->x()Z

    move-result p1

    invoke-direct {p0, v8, p1}, Lcom/oplus/camera/capmode/e;->a(ZZ)V

    :cond_27
    const-string p1, "pref_subsetting_key"

    .line 4210
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string p2, "pref_subsetting_key"

    .line 4211
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "key_bubble_type_ai_enhancement_video"

    .line 4212
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 4213
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p2, 0x7

    invoke-interface {p1, p2, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 4216
    :cond_28
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->J()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_camera_statement_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_bubble_type_ai_enhancement_video"

    .line 409
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_0
    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onStopVideoRecording(Z)V
    .locals 5

    .line 3305
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isDoubleExposureOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "key_quick_video"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3306
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v2, 0x6

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_ring_none"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3309
    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 3312
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3313
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const-string v0, "pref_inertial_zoom_key"

    .line 3316
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3317
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->k(Z)V

    .line 3319
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3320
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aa()V

    goto :goto_0

    :cond_2
    const-string v0, "func_video_super_eis_wide"

    .line 3322
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3323
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 3326
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    return-void
.end method

.method public onSuperEISChange()V
    .locals 19

    move-object/from16 v0, p0

    .line 2770
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v1

    .line 2771
    iget-boolean v2, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    const-string v3, "com.oplus.feature.front.eis.wide.force.support"

    .line 2772
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    .line 2774
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v4

    .line 2775
    iget-object v5, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_video_fps_key"

    const-string v7, "30"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2776
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->y()Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x1e

    goto :goto_0

    :cond_0
    const-string v7, "com.oplus.feature.video.eis.fps"

    .line 2777
    invoke-static {v7}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v7

    .line 2778
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x3c

    const/4 v12, 0x1

    if-ne v9, v10, :cond_1

    iget-boolean v9, v0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v9, :cond_1

    move v9, v12

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 2781
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onSuperEISChange, isOpen: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", videoSizeType: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", isHighFps: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", videoEisFps: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CommonVideoMode"

    invoke-static {v10, v9}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    iget-object v9, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 2785
    iget-object v10, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v10, v12}, Lcom/oplus/camera/capmode/a;->c(Z)V

    if-nez v1, :cond_2

    .line 2788
    iget-boolean v10, v0, Lcom/oplus/camera/capmode/e;->h:Z

    if-nez v10, :cond_2

    .line 2790
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v10

    if-nez v10, :cond_2

    .line 2791
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v10

    if-nez v10, :cond_2

    .line 2792
    iget-object v10, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v13, 0x7f1005b9

    invoke-interface {v10, v13}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_2
    const-string v10, "pref_lasted_video_size"

    const-string v13, "pref_video_size_key"

    const-string v14, "off"

    if-eqz v1, :cond_13

    const-string v15, "func_enhancement_video"

    const-string v8, "key_ai_enhancement_video"

    if-eqz v2, :cond_3

    const-string v16, "com.oplus.feature.front.super.eis.ai.enhance.coexist"

    .line 2797
    invoke-static/range {v16 .. v16}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 2798
    invoke-virtual {v0, v15}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2799
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2800
    invoke-interface {v9, v8, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2801
    iget-object v5, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    const-string v11, "video_size_1080p"

    if-nez v2, :cond_c

    const-string v12, "func_hdr"

    .line 2803
    invoke-virtual {v0, v12}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2804
    iget-object v12, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    move/from16 v17, v1

    const-string v1, "key_video_hdr"

    invoke-interface {v12, v1, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2805
    iget-object v12, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v12, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move/from16 v17, v1

    .line 2808
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2809
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->F()V

    .line 2810
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    move/from16 v18, v2

    const/4 v2, 0x1

    const/4 v12, 0x0

    invoke-interface {v1, v2, v2, v2, v12}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    .line 2811
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    goto :goto_3

    :cond_5
    move/from16 v18, v2

    :goto_3
    const-string v1, "func_ultra_night_video"

    .line 2814
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "key_ultra_night_video"

    .line 2815
    invoke-interface {v9, v1, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2816
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 2819
    :cond_6
    invoke-virtual {v0, v15}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2820
    invoke-interface {v9, v8, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2821
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 2824
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2825
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 2828
    :cond_8
    invoke-static {v4}, Lcom/oplus/camera/util/Util;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2829
    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 2833
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v7, :cond_a

    .line 2834
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v11, 0x1

    goto :goto_5

    :cond_a
    move v11, v1

    :goto_5
    const-string v1, "func_video_super_eis_wide"

    .line 2838
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "com.oplus.feature.video.super.eis.wide.open.default"

    .line 2841
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "pref_super_eis_wide_key"

    .line 2840
    invoke-interface {v9, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2844
    :cond_b
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_8

    :cond_c
    move/from16 v17, v1

    move/from16 v18, v2

    if-eqz v3, :cond_11

    .line 2848
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2849
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->F()V

    .line 2852
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2853
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2856
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2857
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 2860
    :cond_f
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2861
    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2862
    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2865
    :cond_10
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7

    :cond_11
    const-string v1, "func_face_beauty_custom"

    .line 2866
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2867
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2868
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isFilterEffectOpen()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2869
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isFaceBeautyOrMakeupOpen()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2870
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->F()V

    .line 2871
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100296

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2872
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_video_blur_menu"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 2873
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v5, v2, v5, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    .line 2874
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->E()V

    goto :goto_7

    :cond_12
    if-eqz v18, :cond_14

    .line 2876
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1e

    if-eq v2, v1, :cond_14

    .line 2877
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v11, 0x1

    goto :goto_8

    :cond_13
    :goto_6
    move/from16 v17, v1

    move/from16 v18, v2

    :cond_14
    :goto_7
    const/4 v11, 0x0

    :goto_8
    if-eqz v3, :cond_15

    if-eqz v18, :cond_15

    if-nez v17, :cond_15

    .line 2886
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2888
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2889
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2890
    invoke-interface {v9, v13, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2894
    :cond_15
    iget-object v1, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    const-string v1, "pref_video_super_eis_key"

    const-string v4, "key_first_change_eis"

    if-eqz v17, :cond_1c

    .line 2897
    iget-object v5, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "filter"

    if-nez v18, :cond_19

    .line 2900
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {v3, v4, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2901
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_none_sat_tele_angle_key"

    invoke-interface {v3, v4, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2903
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2904
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->s(Z)V

    .line 2905
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 2906
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v3}, Lcom/oplus/camera/capmode/a;->d(Z)V

    goto :goto_9

    .line 2908
    :cond_16
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v3, "pref_video_filter_menu"

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 2911
    :goto_9
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2912
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v4, v4, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZZ)V

    goto :goto_a

    :cond_17
    const/4 v3, 0x0

    .line 2915
    :goto_a
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2916
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->M()V

    .line 2919
    :cond_18
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    .line 2921
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_videoflashmode_key"

    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2927
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->isVideoSuperEisWideOpen()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2928
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "com.oplus.feature.flash.full.zoom.support"

    .line 2929
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2930
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_camera_videoflashmode_key"

    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_c

    :cond_19
    if-eqz v3, :cond_1e

    .line 2935
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->M()V

    .line 2936
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    .line 2938
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2939
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v5, 0x1

    invoke-interface {v3, v5, v4, v5, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    goto :goto_b

    :cond_1a
    const/4 v5, 0x1

    .line 2942
    :goto_b
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2943
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v5, v5, v5, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZZ)V

    .line 2946
    :cond_1b
    iget-object v3, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2947
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->s(Z)V

    goto :goto_c

    :cond_1c
    const/4 v5, 0x1

    .line 2951
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->N()V

    .line 2953
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "com.oplus.feature.wide.angle.open.default"

    .line 2954
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2955
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->an()V

    .line 2959
    :cond_1d
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1e
    :goto_c
    if-eqz v11, :cond_1f

    .line 2963
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->G()V

    :cond_1f
    const-string v2, "func_sat_camera"

    .line 2966
    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2967
    iget-object v2, v0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    :cond_20
    if-nez v17, :cond_21

    .line 2970
    invoke-direct {v0, v1}, Lcom/oplus/camera/capmode/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2971
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/e;->x()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/capmode/e;->a(ZZ)V

    :cond_21
    return-void
.end method

.method protected onSwitchCameraButtonClick()V
    .locals 2

    .line 399
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onSwitchCameraButtonClick()V

    const-string v0, "key_bubble_type_ai_enhancement_video"

    .line 401
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_0
    return-void
.end method

.method protected onTopSubMenuCollapse()V
    .locals 1

    .line 3837
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbModePreInit:Z

    if-eqz v0, :cond_0

    .line 3838
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->D()V

    .line 3840
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3841
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    const-string v0, "camera_mode_changed"

    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUltraWideAngleOpened()V
    .locals 7

    .line 3700
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    const-string v1, "off"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 3701
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3702
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_video_super_eis_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3703
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3706
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3707
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3708
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "key_video_hdr"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3709
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3712
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.feature.videoblur.ultrawide.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3713
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3714
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->F()V

    .line 3715
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3718
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3719
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3720
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 3721
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_4
    const-string v0, "com.oplus.feature.ai.enhancement.video.zoom.support"

    .line 3724
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3725
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.oplus.feature.ultra.night.video.wide.angle.support"

    .line 3726
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3727
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3728
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "key_ai_enhancement_video"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3729
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 3732
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 3733
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_video_fps_key"

    const-string v5, "30"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3734
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x3c

    if-ne v1, v4, :cond_6

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v2

    .line 3736
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->P()Z

    move-result v4

    .line 3738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUltraWideAngleOpened, videoSizeType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isHighFps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isWideVideoOnly720P: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CommonVideoMode"

    invoke-static {v6, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.oplus.feature.video.4k60fps.ultrawide.support"

    .line 3741
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "video_size_4kuhd"

    if-eqz v5, :cond_7

    .line 3742
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v1, :cond_8

    .line 3744
    :cond_7
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    return-void

    .line 3748
    :cond_9
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "video_size_1080p"

    if-nez v5, :cond_a

    .line 3749
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v4, :cond_c

    .line 3750
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->c(Z)V

    const-string v0, "pref_video_size_key"

    if-eqz v4, :cond_b

    .line 3753
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "video_size_720p"

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 3755
    :cond_b
    iget-object v4, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3758
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_c
    if-eqz v1, :cond_d

    .line 3761
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3762
    invoke-direct {p0, v3}, Lcom/oplus/camera/capmode/e;->f(Z)V

    .line 3763
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->D()V

    :cond_d
    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 4

    .line 1373
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    const-string v0, "CommonVideoMode"

    const-string v1, "setConfigureParameter"

    .line 1375
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    const-string v1, "on"

    if-nez v0, :cond_0

    const-string v0, "key_support_fovc"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FOVC_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 1381
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isUltraNightVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1382
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_NIGHT_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v2, "ultra_night_video"

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_1
    const-string v0, "func_video_super_eis_process"

    .line 1385
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1386
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_STABILIZATION_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    iget-boolean v2, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-eqz v2, :cond_2

    const-string v2, "super_stabilization_front"

    goto :goto_0

    :cond_2
    const-string v2, "super_stabilization"

    :goto_0
    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 1391
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isHighFps()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1392
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FPS:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v2, "video_60fps"

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    goto :goto_1

    .line 1393
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->is4k120fps()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1394
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FPS:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v2, "video_120fps"

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    goto :goto_1

    .line 1396
    :cond_5
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FPS:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v2, "video_30fps"

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 1399
    :goto_1
    new-instance v0, Landroid/util/Size;

    iget-object v2, p0, Lcom/oplus/camera/capmode/e;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setVideoSize(Landroid/util/Size;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 1401
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideo10BitOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1402
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_10BIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 1405
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoHdrOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1406
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_3HDR_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_7
    const-string v0, "func_enhancement_video"

    .line 1409
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isAiEnhancementVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1410
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->AI_NIGHT_VIDEO_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_8
    const-string v0, "func_blur_not_support_explorer"

    .line 1413
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isBlurOpen()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1414
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BLUR:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, p0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_9
    return-void
.end method

.method protected setFocusTrackingLocation(FF)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_around"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/oplus/camera/util/Util;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/x;->b(FF)V

    :cond_0
    return-void
.end method

.method protected setFocusTrackingState(Z)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_around"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/oplus/camera/util/Util;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/x;->g(Z)V

    :cond_0
    return-void
.end method

.method protected setFocusingSoundVolume(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getZoomValue()F

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/capmode/x;->a(IF)V

    :cond_0
    return-void
.end method

.method public setOpenFaceBeautyMenu(Z)V
    .locals 0

    .line 1656
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->h:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 678
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->setOrientation(I)V

    .line 680
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result p1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 681
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_0

    .line 683
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/oplus/camera/capmode/e;->mCameraId:I

    iget v2, p0, Lcom/oplus/camera/capmode/e;->mOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/capmode/e;->getJpegOrientation(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 684
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 685
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/e/d;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 686
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method protected setVideoBlurOpen(Z)V
    .locals 2

    .line 2333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoBlurOpen, open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/e;->g:Z

    return-void
.end method

.method protected setVideoSoundValue(F)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_around"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "focusing"

    goto :goto_1

    :cond_1
    const-string p1, "panorama"

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v0, :cond_2

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public showBeautyButton()Z
    .locals 1

    .line 4236
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->showBeautyButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v0, :cond_0

    .line 4237
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4238
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4239
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showMenuLeftButton()Z
    .locals 1

    .line 4226
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->showMenuLeftButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFrontCamera:Z

    if-nez v0, :cond_0

    .line 4227
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isSuperEISOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4228
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 4229
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->J()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4230
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4231
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showNextTip()V
    .locals 4

    .line 1585
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->showNextTip()V

    .line 1587
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1588
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1589
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->S()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_permission_dialog_displayed"

    .line 1591
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CommonVideoMode"

    const-string v0, "showNextTip, return"

    .line 1592
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "func_enhancement_video"

    .line 1597
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_bubble_type_ai_enhancement_video"

    .line 1598
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/e;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1599
    iget-object v0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 1600
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getBubbleOffsetX(I)I

    move-result v3

    .line 1601
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/e;->getBubbleOffsetY(I)I

    move-result p0

    .line 1599
    invoke-interface {v0, v1, v2, v3, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    :cond_1
    return-void
.end method

.method protected showRecordingTimeUI()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->showRecordingTimeUI()V

    return-void
.end method

.method public supportBeautyButton()Z
    .locals 1

    .line 5130
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isRearSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5134
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->supportBeautyButton()Z

    move-result p0

    return p0
.end method

.method public switchSuperEISWide(Z)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3889
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x13

    invoke-interface {v1, v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 3892
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_super_eis_wide_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3894
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_camera_videoflashmode_key"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 3897
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.oplus.feature.flash.full.zoom.support"

    .line 3898
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3899
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v4, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 3900
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const-string v1, "com.oplus.feature.video.super.eis.wide.60fps.support"

    .line 3903
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.oplus.feature.video.eis.fps"

    .line 3904
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3c

    if-ne v2, v1, :cond_4

    .line 3905
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_video_fps_key"

    const-string v5, "30"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3906
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 3909
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3910
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->G()V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    if-nez v0, :cond_4

    .line 3912
    iget-object p1, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3916
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->M()V

    return-void
.end method

.method protected switchVideoBlur(ZZ)V
    .locals 5

    .line 3535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchVideoBlur, isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", changeByClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CommonVideoMode"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3538
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1005b9

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 3540
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3541
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, p2, v0, p2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    :cond_0
    const-string v1, "func_sat_camera"

    .line 3545
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.oplus.feature.videoblur.ultrawide.support"

    .line 3546
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    if-eqz p1, :cond_1

    .line 3547
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getZoomValue()F

    move-result v4

    invoke-interface {v3, v4}, Lcom/oplus/camera/capmode/a;->a(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3548
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "on"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 3550
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3551
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->an()V

    .line 3554
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "off"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    const-string v2, "pref_video_blur_menu_state"

    .line 3558
    invoke-direct {p0, p2, v2}, Lcom/oplus/camera/capmode/e;->a(ZLjava/lang/String;)V

    .line 3560
    iget-object v3, p0, Lcom/oplus/camera/capmode/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v2, 0x0

    .line 3562
    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/capmode/e;->a(ZLjava/lang/String;)V

    .line 3564
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoNeonOpen()Z

    move-result v2

    if-eqz p1, :cond_5

    .line 3566
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVideoRetentionOpen()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    .line 3567
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/capmode/e;->E()V

    .line 3570
    :cond_5
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    .line 3572
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFlashTemporaryDisabled:Z

    .line 3573
    invoke-direct {p0, p2}, Lcom/oplus/camera/capmode/e;->a(Z)V

    :cond_6
    if-eqz v2, :cond_9

    .line 3577
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->setVideoBlurEffect(Z)V

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    .line 3581
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/e;->mbFlashTemporaryDisabled:Z

    .line 3582
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/e;->a(Z)V

    .line 3585
    :cond_8
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->setVideoBlurEffect(Z)V

    if-eqz p1, :cond_9

    .line 3587
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_9

    .line 3588
    iget-object v1, p0, Lcom/oplus/camera/capmode/e;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->getBlurValue()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/preview/a/t;->b(F)V

    :cond_9
    :goto_1
    if-eqz p1, :cond_a

    .line 3593
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/capmode/e;->updateVideoNeonEnable(ZZ)V

    .line 3596
    :cond_a
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/capmode/e;->updateVideoBlurEnable(ZZ)V

    return-void
.end method

.method protected updateFilterParam(I)V
    .locals 1

    .line 3225
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->isVividEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq p1, v0, :cond_0

    .line 3226
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/e;->forceCloseVividEffect()V

    .line 3229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/e;->getFilterType(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/e;->h(Ljava/lang/String;)V

    return-void
.end method

.method public updateInversePositionRatio(Z)V
    .locals 2

    .line 1646
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/capmode/e;->mActivity:Landroid/app/Activity;

    const v1, 0x3f5eb852    # 0.87f

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->setPositionRatio(Landroid/content/Context;FZ)V

    return-void
.end method
