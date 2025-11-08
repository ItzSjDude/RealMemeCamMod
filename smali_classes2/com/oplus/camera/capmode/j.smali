.class public Lcom/oplus/camera/capmode/j;
.super Lcom/oplus/camera/capmode/d;
.source "HighDefinitionMode.java"


# instance fields
.field private g:Lcom/oplus/camera/professional/r;

.field private h:Lcom/oplus/camera/professional/s;

.field private i:Ljava/util/ArrayList;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    .line 59
    iput-object p1, p0, Lcom/oplus/camera/capmode/j;->i:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/j;->j:Z

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHighpictureProMode, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighDefinitionMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->y(I)V

    .line 543
    iget-object p1, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/oplus/camera/e/d;->a(JZ)V

    .line 544
    iget-object p1, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, -0x1

    invoke-interface {p1, v0, v2}, Lcom/oplus/camera/e/d;->b(IZ)V

    .line 545
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method private a(IZ)V
    .locals 4

    .line 198
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isProModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    return-void

    .line 207
    :cond_1
    new-instance v0, Lcom/oplus/camera/professional/s;

    iget-object v1, p0, Lcom/oplus/camera/capmode/j;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/professional/s;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    const-string v1, "pref_high_picture_pro_mode_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/s;->a(Ljava/lang/String;)V

    .line 211
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/s;->a(IZ)V

    return-void
.end method

.method private a()Z
    .locals 1

    const-string v0, "com.oplus.ultra.wide.high.picturesize"

    .line 115
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isNoneSatUltraWideAngleOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/j;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/j;)I
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getDefaultAFMode()I

    move-result p0

    return p0
.end method

.method private b(IZ)V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProMenuVisibility visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighDefinitionMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->c()V

    .line 225
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/r;->a(IZ)V

    return-void
.end method

.method private b()Z
    .locals 3

    const-string v0, "pref_high_picture_pro_mode_key"

    .line 176
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/j;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 181
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/j;)Lcom/oplus/camera/professional/s;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 242
    new-instance v0, Lcom/oplus/camera/professional/j;

    iget-object v1, p0, Lcom/oplus/camera/capmode/j;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->getCameraMode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/professional/j;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    new-instance v1, Lcom/oplus/camera/capmode/j$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/j$1;-><init>(Lcom/oplus/camera/capmode/j;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r;->a(Lcom/oplus/camera/professional/r$b;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_restore_high_picture_pro_params"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 533
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->n()V

    .line 534
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()V
    .locals 7

    const-string v0, "pref_high_picture_pro_mode_key"

    .line 550
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v1, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100310

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100310

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :goto_0
    return-void
.end method

.method private f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    .line 567
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/j;->i:Ljava/util/ArrayList;

    .line 568
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->i:Ljava/util/ArrayList;

    const v1, 0x7f10031c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->i:Ljava/util/ArrayList;

    const v1, 0x7f100317

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->i:Ljava/util/ArrayList;

    const v1, 0x7f100312

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->i:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 457
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->forceClosePIEffect()V

    const-string v0, "pref_camera_pi_mode_key"

    const-string v1, "pref_camera_pi_ai_mode_key"

    if-eqz p1, :cond_1

    .line 460
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "off"

    if-eqz p1, :cond_0

    .line 461
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 467
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public allowSwitchCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 2

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeModeAllView animationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighDefinitionMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->changeModeAllViewWhenAnimation(IZ)V

    const/4 v0, 0x3

    if-ne v0, p1, :cond_6

    const-string p1, "pref_high_picture_pro_mode_key"

    .line 832
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 833
    iget-object p1, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 834
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/j;->mbInCapturing:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 835
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/professional/r;->b(Z)V

    :cond_1
    const/4 p1, 0x1

    const/16 v1, 0x8

    if-eqz p2, :cond_4

    .line 839
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 840
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    move v1, v0

    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/capmode/j;->b(IZ)V

    .line 843
    :cond_3
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/j;->j:Z

    if-nez p1, :cond_6

    .line 844
    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/capmode/j;->a(IZ)V

    goto :goto_1

    .line 847
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 848
    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/capmode/j;->b(IZ)V

    .line 851
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/j;->a(IZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public checkoutTimerSnapShotState()V
    .locals 1

    .line 647
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->checkoutTimerSnapShotState()V

    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/j;->j:Z

    return-void
.end method

.method public displayScreenHintIconInSwitchOn()V
    .locals 1

    .line 595
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->displayScreenHintIconInSwitchOn()V

    :cond_0
    return-void
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 0

    const-string p0, "highDefinition"

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "highDefinition"

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    .line 822
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getOperatingMode()I

    move-result p0

    return p0
.end method

.method protected getPhotoRatio()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1002da

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "com.oplus.ultra.wide.fullsize"

    .line 122
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "com.oplus.high.picturesize.heif"

    .line 126
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "com.oplus.high.picturesize"

    .line 133
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 6

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "high_resolution_cancel_snapshot"

    const-string v3, "key_support_update_thumbnail_user_picture"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_macro_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "func_mode_panel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_qr_code_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_c
    const-string v0, "pref_high_picture_pro_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_d
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_e
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_f
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_10
    const-string v0, "key_support_insensor_zoom_20x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_11
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_12
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 433
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 424
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 425
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 426
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 427
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    return v4

    .line 418
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 419
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_2

    .line 421
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/r;->d(I)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    move v4, v5

    :goto_3
    return v4

    .line 413
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isSupportNoneSat()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 415
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move v4, v5

    :goto_4
    return v4

    .line 410
    :pswitch_3
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :pswitch_4
    const-string p1, "com.oplus.highpicture.pro.support"

    .line 406
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/j;->mbFrontCamera:Z

    if-nez p0, :cond_4

    goto :goto_5

    :cond_4
    move v4, v5

    :goto_5
    return v4

    :pswitch_5
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x64edfd1c -> :sswitch_12
        -0x5f048920 -> :sswitch_11
        -0x545357a2 -> :sswitch_10
        -0x4c684fe0 -> :sswitch_f
        -0x3f608456 -> :sswitch_e
        -0x289e651d -> :sswitch_d
        -0x13b3fbe9 -> :sswitch_c
        -0xdae10b4 -> :sswitch_b
        -0xd09a2ed -> :sswitch_a
        -0x5f8f68b -> :sswitch_9
        0x2537249 -> :sswitch_8
        0x67d194f -> :sswitch_7
        0xb8585f9 -> :sswitch_6
        0x1e7c3c3e -> :sswitch_5
        0x26d830c3 -> :sswitch_4
        0x590e13a3 -> :sswitch_3
        0x5f579904 -> :sswitch_2
        0x65b53143 -> :sswitch_1
        0x74ed85e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_timer_shutter_key"

    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_setting_key"

    .line 439
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_high_picture_pro_mode_key"

    .line 440
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_subsetting_key"

    .line 444
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 448
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZSLMode()Z
    .locals 2

    .line 812
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 813
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 817
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZSLMode()Z

    move-result p0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 3

    .line 577
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    const-string v1, "com.oplus.ultra.wide.high.picturesize"

    .line 579
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "com.oplus.feature.high.definition.zoom.support"

    if-eqz v1, :cond_0

    .line 580
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isNoneSatUltraWideAngleOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 582
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->a(F)V

    .line 585
    :cond_0
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 586
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->l(Z)V

    .line 587
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->n(Z)V

    :cond_1
    return-object v0
.end method

.method protected isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_pi_ai_mode_key"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_pi_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 477
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFrontTorchEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHighPictureSize()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedResetAutoFocus()Z
    .locals 0

    .line 858
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isNeedResetNoneSatWide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowProPanelMenu()Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 4

    .line 713
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0, p1, p2, v1}, Lcom/oplus/camera/professional/r;->a([BZZ)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    const-string v2, "pref_high_picture_pro_mode_key"

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isShowProPanelMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/professional/s;->a(IZ)V

    .line 722
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->n()V

    .line 724
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->e()V

    .line 727
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onAfterPictureTaken([BZ)V

    return-void
.end method

.method public onAfterSnapping()Z
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->v()Z

    .line 708
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onAfterSnapping()Z

    move-result p0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 2

    const-string v0, "HighDefinitionMode"

    const-string v1, "onAfterStartPreview"

    .line 741
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isProModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->u()V

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isShowProPanelMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/s;->c()V

    .line 752
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->z(Z)V

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    const-string v0, "com.oplus.high.picturesize.ultra.resolution.mode.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 758
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->v(Z)V

    .line 759
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 762
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->c()Z

    move-result p0

    return p0

    .line 642
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePreview()V
    .locals 2

    const-string v0, "HighDefinitionMode"

    const-string v1, "onBeforePreview"

    .line 664
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_high_picture_pro_mode_key"

    .line 666
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/j;->a(I)V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/j;->mbCapModeInit:Z

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r;->c(Z)V

    .line 672
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->e()V

    .line 675
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBeforePreview()V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 5

    .line 680
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isProModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/r;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100310

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 690
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->f()Ljava/util/List;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-interface {v0, v2, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/util/List;J)V

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    .line 695
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/s;->a(IZ)V

    .line 699
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p0

    return p0
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HighDefinitionMode"

    const-string v1, "onDeInitCameraMode"

    .line 767
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isProModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100310

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 771
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 773
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->g()V

    .line 775
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/r;->a(Lcom/oplus/camera/professional/r$b;)V

    .line 776
    iput-object v2, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    :cond_0
    const-string v0, "pref_high_picture_pro_mode_key"

    .line 779
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/j;->a(I)V

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_2

    .line 784
    invoke-virtual {v0}, Lcom/oplus/camera/professional/s;->a()V

    .line 785
    iput-object v2, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    .line 789
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onDeInitCameraMode(Ljava/lang/String;)V

    return-void
.end method

.method public onHomeKeyClick()V
    .locals 0

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 5

    const-string v0, "HighDefinitionMode"

    const-string v1, "onInitCameraMode"

    .line 143
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onInitCameraMode()V

    .line 146
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->restoreProPreference()V

    .line 148
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isProModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 150
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/j;->a(I)V

    .line 151
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/capmode/j;->b(IZ)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/j;->a(I)V

    .line 156
    :goto_0
    new-instance v0, Lcom/oplus/camera/professional/s;

    iget-object v2, p0, Lcom/oplus/camera/capmode/j;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v4, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {v0, v2, v3, v4}, Lcom/oplus/camera/professional/s;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    const-string v2, "pref_high_picture_pro_mode_key"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/s;->a(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/j;->a(IZ)V

    .line 160
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->z(Z)V

    :cond_2
    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 2

    const-string v0, "HighDefinitionMode"

    const-string v1, "onMoreModeHidden"

    .line 621
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isProModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 625
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/capmode/j;->b(IZ)V

    .line 626
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->e()V

    :cond_0
    const-string v0, "pref_high_picture_pro_mode_key"

    .line 629
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isShowProPanelMenu()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/j;->a(IZ)V

    .line 633
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onMoreModeHidden(I)V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 3

    const-string v0, "HighDefinitionMode"

    const-string v1, "onMoreModeShown"

    .line 606
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isProModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/capmode/j;->b(IZ)V

    .line 613
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/capmode/j;->a(IZ)V

    .line 616
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onMoreModeShown()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "HighDefinitionMode"

    const-string v1, "onPause"

    .line 794
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isProModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100310

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 798
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 800
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->m()V

    .line 802
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 803
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/j;->a(I)V

    .line 807
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onPause()V

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 1

    .line 362
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 364
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/j;->mbCapModeInit:Z

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_1
    return-void
.end method

.method protected onResume(Z)V
    .locals 2

    const-string v0, "HighDefinitionMode"

    const-string v1, "onResume"

    .line 166
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onResume(Z)V

    .line 170
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->e()V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "pref_high_picture_pro_mode_key"

    .line 485
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged isProModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HighDefinitionMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->c()V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v1, :cond_1

    .line 493
    invoke-virtual {v1}, Lcom/oplus/camera/professional/r;->g()V

    .line 494
    iget-object v1, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/r;->a(Lcom/oplus/camera/professional/r$b;)V

    .line 495
    iput-object v2, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    .line 498
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/j;->a(Z)V

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    .line 499
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/capmode/j;->b(IZ)V

    .line 500
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->d()V

    .line 501
    iget-object v2, p0, Lcom/oplus/camera/capmode/j;->h:Lcom/oplus/camera/professional/s;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/professional/s;->a(Z)V

    .line 502
    iget-object v2, p0, Lcom/oplus/camera/capmode/j;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->aH()V

    .line 503
    iget-object v2, p0, Lcom/oplus/camera/capmode/j;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->z(Z)V

    .line 505
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/j;->a(I)V

    .line 506
    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->e()V

    if-nez v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_4

    .line 510
    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->n()V

    goto :goto_2

    :cond_3
    const-string v0, "pref_ultra_wide_high_picture_size_key"

    .line 513
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.oplus.ultra.wide.high.picturesize"

    .line 514
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "off"

    .line 516
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    .line 515
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 516
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 519
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_5

    .line 520
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/professional/r;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 523
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 736
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 0

    .line 653
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onTimeSnapShotEnd(Z)V

    .line 654
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/j;->j:Z

    return-void
.end method

.method public onUltraWideAngleOpened()V
    .locals 0

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/capmode/j;->g:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/r;->a(I)V

    .line 234
    :cond_0
    iget v0, p0, Lcom/oplus/camera/capmode/j;->mOrientation:I

    if-ne v0, p1, :cond_1

    return-void

    .line 238
    :cond_1
    iput p1, p0, Lcom/oplus/camera/capmode/j;->mOrientation:I

    return-void
.end method
