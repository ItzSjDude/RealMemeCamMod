.class public Lcom/oplus/camera/t/e;
.super Lcom/oplus/camera/capmode/d;
.source "StreetMode.java"

# interfaces
.implements Lcom/oplus/camera/t/c$b;
.implements Lcom/oplus/camera/t/g$a;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:[Ljava/lang/String;

.field private m:Lcom/oplus/camera/t/c;

.field private n:Lcom/oplus/camera/t/g;

.field private o:Lcom/oplus/camera/capmode/a;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const-string p1, "1"

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/t/e;->g:Ljava/lang/String;

    const-string p1, "28"

    .line 47
    iput-object p1, p0, Lcom/oplus/camera/t/e;->h:Ljava/lang/String;

    const-string p1, "169"

    .line 48
    iput-object p1, p0, Lcom/oplus/camera/t/e;->i:Ljava/lang/String;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/oplus/camera/t/e;->j:Z

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/oplus/camera/t/e;->k:Z

    const/4 p3, 0x0

    .line 54
    iput-object p3, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    .line 55
    iput-object p3, p0, Lcom/oplus/camera/t/e;->n:Lcom/oplus/camera/t/g;

    .line 56
    iput-object p3, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    .line 57
    iput-boolean p1, p0, Lcom/oplus/camera/t/e;->p:Z

    .line 58
    iput-boolean p1, p0, Lcom/oplus/camera/t/e;->q:Z

    .line 59
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    iput p1, p0, Lcom/oplus/camera/t/e;->r:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 60
    iput p1, p0, Lcom/oplus/camera/t/e;->s:F

    .line 64
    iput-object p2, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    .line 65
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getCurrFilterIndex()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/e;->r:I

    return-void
.end method

.method private a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 12

    .line 741
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v0

    .line 742
    invoke-static {v0}, Lcom/oplus/camera/g/a/e;->a([B)Lcom/oplus/camera/g/a/e;

    move-result-object v1

    .line 743
    iget-wide v2, p0, Lcom/oplus/camera/t/e;->mCaptureDate:J

    const-wide/16 v4, 0xa

    sub-long v10, v2, v4

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v1}, Lcom/oplus/camera/g/a/e;->a()V

    .line 747
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    invoke-virtual {v1, v0, v10, v11}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;J)V

    .line 748
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    invoke-virtual {v1, v0, v10, v11}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;J)V

    .line 749
    invoke-virtual {v1}, Lcom/oplus/camera/g/a/e;->d()V

    .line 750
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :cond_0
    move-object v8, v0

    .line 754
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getFormat()I

    move-result v9

    .line 756
    iget-object p1, p0, Lcom/oplus/camera/t/e;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 757
    iget-object p1, p0, Lcom/oplus/camera/t/e;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/t/e$1;

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/oplus/camera/t/e$1;-><init>(Lcom/oplus/camera/t/e;[BIJ)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private a(IZ)Z
    .locals 0

    const/4 p0, 0x3

    if-ne p0, p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Z)V
    .locals 1

    .line 325
    iput-boolean p1, p0, Lcom/oplus/camera/t/e;->k:Z

    .line 326
    iget-object p1, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-boolean v0, p0, Lcom/oplus/camera/t/e;->k:Z

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->E(Z)V

    .line 327
    iget-object p1, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v0, p0, Lcom/oplus/camera/t/e;->l:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a([Ljava/lang/String;)V

    .line 328
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method private l()Z
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/oplus/camera/t/e;->n:Lcom/oplus/camera/t/g;

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/oplus/camera/t/g;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private m()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {v0}, Lcom/oplus/camera/t/c;->i()V

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, v0}, Lcom/oplus/camera/t/e;->b(Z)V

    return-void
.end method

.method private n()V
    .locals 7

    const-string v0, "com.oplus.edge.filter.line.size"

    .line 453
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/t/e;->g:Ljava/lang/String;

    const-string v0, "com.oplus.edge.filter.color"

    .line 455
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 457
    array-length v5, v0

    if-ne v1, v5, :cond_0

    .line 458
    aget v5, v0, v4

    aget v6, v0, v3

    aget v0, v0, v2

    invoke-static {v5, v6, v0}, Lcom/oplus/camera/util/Util;->b(III)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    array-length v5, v0

    if-ne v5, v2, :cond_0

    .line 461
    aget-object v5, v0, v4

    iput-object v5, p0, Lcom/oplus/camera/t/e;->h:Ljava/lang/String;

    .line 462
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/oplus/camera/t/e;->i:Ljava/lang/String;

    .line 466
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/t/e;->g:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/oplus/camera/t/e;->h:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/oplus/camera/t/e;->i:Ljava/lang/String;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/oplus/camera/t/e;->l:[Ljava/lang/String;

    return-void
.end method

.method private o()V
    .locals 7

    .line 470
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->T()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100254

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 478
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100254

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 13

    .line 483
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_raw_control_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100307

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v7, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v8, 0x7f100305

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getZSLMode()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->m(Z)V

    .line 493
    iget-object v0, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "pref_zoom_key"

    .line 494
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 496
    iget-object v0, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->d(Z)V

    goto :goto_1

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1, v3, v2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 501
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aH()V

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 507
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->s()V

    .line 508
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method private r()V
    .locals 1

    .line 638
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0901ae

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 641
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_raw_control_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-string v1, "raw"

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 782
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-string v1, "none"

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 568
    invoke-direct {p0, v0}, Lcom/oplus/camera/t/e;->b(Z)V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 580
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/e;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(F)Z
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 401
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 1

    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 573
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 574
    invoke-direct {p0, v0}, Lcom/oplus/camera/t/e;->b(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 587
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 588
    invoke-direct {p0, v0}, Lcom/oplus/camera/t/e;->b(Z)V

    :cond_0
    return-void
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 0

    .line 654
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->changeModeAllViewWhenAnimation(IZ)V

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/t/e;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 657
    iput-boolean p1, p0, Lcom/oplus/camera/t/e;->p:Z

    .line 658
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->m()V

    :cond_0
    return-void
.end method

.method public closeImageReader()V
    .locals 1

    const/4 v0, 0x1

    .line 769
    iput-boolean v0, p0, Lcom/oplus/camera/t/e;->j:Z

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 594
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 595
    invoke-direct {p0, v0}, Lcom/oplus/camera/t/e;->b(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p1}, Lcom/oplus/camera/t/c;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->i()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 0

    const-string p0, "com.oplus.feature.raw.zoom.mutex.support"

    .line 512
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public f()V
    .locals 1

    const-string v0, "pref_street_fix_focus_control_key"

    .line 516
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isPanelMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/t/c;->b(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, p0, Lcom/oplus/camera/t/e;->q:Z

    .line 788
    iget-object v0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/c;->f(Z)V

    .line 789
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->j()V

    return-void
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "street"

    return-object p0
.end method

.method public getCurrFilterIndex()I
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.oplus.street.filter.type.default"

    .line 188
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    iget v2, p0, Lcom/oplus/camera/t/e;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/t/e;->getFilterTypeList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 191
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 195
    iget v2, p0, Lcom/oplus/camera/t/e;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/t/e;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/util/Util;->a(III)I

    move-result p0

    return p0
.end method

.method public getDefaultAFMode()I
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getIsCapturingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->p()I

    move-result p0

    return p0

    .line 527
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getDefaultAFMode()I

    move-result p0

    return p0
.end method

.method public getEffectMenuKeyByMode()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_street_filter_menu"

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_street_filter_index"

    return-object p0
.end method

.method protected getFilterNameIdList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_street_filter_menu"

    .line 436
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/i;->f:Ljava/util/List;

    return-object p0

    .line 440
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getFilterNameIdList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getFilterType(I)Ljava/lang/String;
    .locals 1

    .line 431
    iget v0, p0, Lcom/oplus/camera/t/e;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getFilterTypeList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_street_filter_menu"

    .line 422
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->n:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 426
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHalMemory()J
    .locals 2

    const-string p0, "com.oplus.hal.memory.street"

    .line 449
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x80a9

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 3

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_raw_control_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_street_long_exposure_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_6
    const-string v0, "func_google_lens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "key_support_update_thumbnail_user_picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_9
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_a
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "support_focus_out_of_range"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_c
    const-string v0, "pref_street_fix_focus_control_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_street_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 182
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p0, "com.oplus.feature.street.long.exposure.support"

    .line 176
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    const-string p1, "pref_filter_process_key"

    .line 173
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    const-string p0, "com.oplus.feature.street.lock.focus.support"

    .line 170
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 167
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isRawRequestTag()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/t/e;->l()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :cond_2
    :goto_2
    return v1

    .line 156
    :pswitch_4
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isRawRequestTag()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 160
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 164
    :cond_4
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 149
    :pswitch_5
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isRawOpen()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.oplus.feature.street.track.ui.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 153
    :cond_5
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    :goto_3
    return v2

    .line 146
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isRawOpen()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    return v1

    :pswitch_7
    const-string p0, "com.oplus.feature.street.raw.support"

    .line 143
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_8
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x76ed1cda -> :sswitch_d
        -0x75a0dcb4 -> :sswitch_c
        -0x616206e3 -> :sswitch_b
        -0x4c684fe0 -> :sswitch_a
        -0x3f608456 -> :sswitch_9
        -0x289e651d -> :sswitch_8
        -0x5f8f68b -> :sswitch_7
        0x2537249 -> :sswitch_6
        0xef9abb4 -> :sswitch_5
        0x140b168f -> :sswitch_4
        0x3f66a8ca -> :sswitch_3
        0x5f579904 -> :sswitch_2
        0x65b53143 -> :sswitch_1
        0x7e1951aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
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
    .locals 5

    .line 104
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "pref_raw_control_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "pref_street_fix_focus_control_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "pref_street_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 123
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 117
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "com.oplus.feature.street.raw.support"

    .line 114
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const-string p0, "com.oplus.feature.street.lock.focus.support"

    .line 111
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x76ed1cda -> :sswitch_3
        -0x75a0dcb4 -> :sswitch_2
        -0x3f608456 -> :sswitch_1
        0x3f66a8ca -> :sswitch_0
    .end sparse-switch
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 2

    .line 406
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    const/4 v1, 0x1

    .line 408
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->d(Z)V

    .line 409
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isRawOpen()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->K(Z)V

    return-object v0
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x0

    .line 799
    iput-boolean v0, p0, Lcom/oplus/camera/t/e;->q:Z

    .line 800
    iget-object v1, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/t/c;->f(Z)V

    .line 802
    iget-object v1, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isPanelMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/t/c;->e(Z)V

    .line 804
    iget-object v1, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {v1}, Lcom/oplus/camera/t/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->u()V

    goto :goto_0

    .line 807
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/c;->d(Z)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public isAfFixFocuse()Z
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->p()Z

    move-result p0

    return p0
.end method

.method protected isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_raw_control_key"

    .line 370
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "pref_street_fix_focus_control_key"

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getZoomValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/e;->a(F)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isNoneSatUltraWideAngleOpen()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 381
    :cond_4
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFixFocusOpen()Z
    .locals 2

    const-string v0, "pref_street_fix_focus_control_key"

    .line 349
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    .line 350
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

.method protected isHideHeadLine()Z
    .locals 0

    .line 860
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->o()Z

    move-result p0

    return p0
.end method

.method public isRawOpen()Z
    .locals 2

    const-string v0, "pref_raw_control_key"

    .line 343
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    .line 344
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

.method public isRawRequestTag()Z
    .locals 0

    .line 365
    iget-boolean p0, p0, Lcom/oplus/camera/t/e;->mbRawRequestTag:Z

    return p0
.end method

.method public isShowFixFocusMenu()Z
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {v0}, Lcom/oplus/camera/t/c;->o()Z

    move-result v0

    .line 603
    iget-object p0, p0, Lcom/oplus/camera/t/e;->n:Lcom/oplus/camera/t/g;

    if-eqz p0, :cond_2

    if-nez v0, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/oplus/camera/t/g;->a()Z

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
    move v0, p0

    :cond_2
    return v0
.end method

.method public isStreetOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAutoFocus()Z
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->f()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public j()Z
    .locals 6

    .line 836
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getZoomValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->a(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 843
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100595

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 837
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100595

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public k()Z
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 852
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100595

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_still_capture_raw"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "pref_raw_control_key"

    .line 356
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.disable.raw"

    .line 357
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 360
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 2

    const-string v0, "StreetMode"

    const-string v1, "onAfterPictureTaken"

    .line 260
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-boolean v0, p0, Lcom/oplus/camera/t/e;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isRawRequestTag()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/oplus/camera/t/e;->j:Z

    return-void

    .line 267
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onAfterPictureTaken([BZ)V

    return-void
.end method

.method public onAfterStartPreview(Z)V
    .locals 0

    .line 675
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onAfterStartPreview(Z)V

    .line 676
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->f()V

    .line 677
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getZoomValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/e;->s:F

    .line 678
    iget-object p1, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p1}, Lcom/oplus/camera/t/c;->q()V

    .line 679
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->s()V

    .line 681
    iget-object p0, p0, Lcom/oplus/camera/t/e;->n:Lcom/oplus/camera/t/g;

    if-eqz p0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/oplus/camera/t/g;->c()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 612
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isShowFixFocusMenu()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->m()V

    return v1

    .line 617
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/t/e;->j:Z

    if-nez v0, :cond_1

    return v1

    .line 621
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 2

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/oplus/camera/t/e;->mbCheckTakeAnimateDelay:Z

    .line 224
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->setRawRequestTag(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isRawOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 227
    invoke-virtual {p0, v1}, Lcom/oplus/camera/t/e;->setRawRequestTag(Z)V

    .line 228
    iput-boolean v0, p0, Lcom/oplus/camera/t/e;->j:Z

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->s()V

    .line 232
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p0

    return p0
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onDeInitCameraMode(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->p()V

    const-string p1, "key_bubble_street_rocker_shutter"

    .line 90
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/e;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v0, 0x14

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p1}, Lcom/oplus/camera/t/c;->i()V

    .line 95
    iget-object p1, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p1}, Lcom/oplus/camera/t/c;->e()V

    .line 97
    iget-object p0, p0, Lcom/oplus/camera/t/e;->n:Lcom/oplus/camera/t/g;

    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/oplus/camera/t/g;->d()V

    :cond_1
    return-void
.end method

.method public onEffectMenuPopDown(Z)V
    .locals 0

    .line 553
    iget-object p1, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->isPanelMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/t/c;->e(Z)V

    return-void
.end method

.method public onEffectMenuPopUp()V
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->n()V

    return-void
.end method

.method protected onFilterMenuClicked()V
    .locals 0

    .line 543
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onFilterMenuClicked()V

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 7

    .line 70
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onInitCameraMode()V

    .line 71
    new-instance v6, Lcom/oplus/camera/t/c;

    iget-object v1, p0, Lcom/oplus/camera/t/e;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    iget-object v5, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/t/c;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/capmode/a;ZLcom/oplus/camera/e/d;)V

    iput-object v6, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    .line 72
    iget-object v0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/t/c;->a(Lcom/oplus/camera/t/c$b;)V

    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 74
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/oplus/camera/t/g;

    iget-object v1, p0, Lcom/oplus/camera/t/e;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    iget-object v4, p0, Lcom/oplus/camera/t/e;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/t/g;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/e/d;)V

    iput-object v0, p0, Lcom/oplus/camera/t/e;->n:Lcom/oplus/camera/t/g;

    .line 76
    iget-object v0, p0, Lcom/oplus/camera/t/e;->n:Lcom/oplus/camera/t/g;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/t/g;->a(Lcom/oplus/camera/t/g$a;)V

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->n()V

    .line 80
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->o()V

    .line 81
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->f()V

    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->o()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 282
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onPause()V

    .line 284
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->p()V

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/oplus/camera/t/e;->k:Z

    .line 287
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->t()V

    :cond_0
    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 1

    .line 237
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 243
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 244
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/c;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRawImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/e;->a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    return-void
.end method

.method protected onResume(Z)V
    .locals 0

    .line 631
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->f()V

    .line 632
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onResume(Z)V

    .line 633
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->r()V

    return-void
.end method

.method public onSessionConfigured()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {v0}, Lcom/oplus/camera/t/c;->q()V

    const/4 v0, 0x0

    .line 648
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->setBurstShotCapturing(Z)V

    .line 649
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onSessionConfigured()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    const-string v0, "pref_subsetting_key"

    .line 294
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "off"

    const-string v3, "on"

    if-eqz v1, :cond_0

    .line 295
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->p()V

    return-void

    :cond_0
    const-string v0, "pref_raw_control_key"

    .line 298
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->q()V

    return-void

    :cond_1
    const-string v0, "pref_street_fix_focus_control_key"

    .line 301
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/t/e;->p:Z

    if-nez v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->f()V

    return-void

    :cond_2
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 304
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->p()V

    .line 307
    invoke-direct {p0}, Lcom/oplus/camera/t/e;->m()V

    return-void

    :cond_3
    const-string v0, "pref_street_long_exposure_menu"

    .line 309
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object p1, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 311
    iget-object p1, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p1}, Lcom/oplus/camera/t/c;->i()V

    .line 312
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 p1, 0x1b

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->v(I)V

    return-void

    .line 316
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/d;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/c;->a(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method protected onStopTakePicture()Z
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 533
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    return v1

    .line 537
    :cond_0
    iput-boolean v1, p0, Lcom/oplus/camera/t/e;->mbInCapturing:Z

    const/4 p0, 0x1

    return p0
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 668
    iput-boolean v0, p0, Lcom/oplus/camera/t/e;->p:Z

    .line 669
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->f()V

    .line 670
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->onTimeSnapShotEnd(Z)V

    return-void
.end method

.method public onZoomChanged()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/t/e;->o:Lcom/oplus/camera/capmode/a;

    iget v1, p0, Lcom/oplus/camera/t/e;->s:F

    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getZoomValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {v0}, Lcom/oplus/camera/t/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getZoomValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_street_fix_focus_control_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getZoomValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/t/e;->s:F

    .line 397
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->onZoomChanged()V

    return-void
.end method

.method public onZoomMenuCollapsed()V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->s()V

    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->r()V

    return-void
.end method

.method protected restoreEffectAfterBurstShot()V
    .locals 1

    .line 709
    iget v0, p0, Lcom/oplus/camera/t/e;->r:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->onFilterItemChange(I)V

    .line 710
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->updateEffectMenuNames()V

    .line 711
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "pref_filter_menu"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    return-void
.end method

.method protected saveAndClearEffectBeforeBurstShot()V
    .locals 1

    .line 701
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->getCurrFilterIndex()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/t/e;->r:I

    .line 702
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->onFilterItemChange(I)V

    .line 703
    invoke-virtual {p0}, Lcom/oplus/camera/t/e;->updateEffectMenuNames()V

    .line 704
    iget-object p0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "pref_filter_menu"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 688
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/d;->setOrientation(I)V

    .line 690
    iget-object p0, p0, Lcom/oplus/camera/t/e;->m:Lcom/oplus/camera/t/c;

    if-eqz p0, :cond_0

    .line 691
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/c;->c(I)V

    :cond_0
    return-void
.end method

.method public showNextTip()V
    .locals 4

    .line 716
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->showNextTip()V

    .line 718
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 719
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 720
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->S()Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/t/e;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_permission_dialog_displayed"

    .line 722
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "StreetMode"

    const-string v0, "showNextTip, return"

    .line 723
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "key_bubble_street_rocker_shutter"

    .line 728
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    .line 730
    iget-object v1, p0, Lcom/oplus/camera/t/e;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getBubbleOffsetX(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/e;->getBubbleOffsetY(I)I

    move-result p0

    invoke-interface {v1, v2, v0, v3, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    :cond_1
    return-void
.end method

.method public supportBeautyButton()Z
    .locals 1

    .line 827
    iget-boolean v0, p0, Lcom/oplus/camera/t/e;->q:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 831
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->supportBeautyButton()Z

    move-result p0

    return p0
.end method

.method public supportMenuLeftButton()Z
    .locals 1

    .line 818
    iget-boolean v0, p0, Lcom/oplus/camera/t/e;->q:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 822
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/d;->supportMenuLeftButton()Z

    move-result p0

    return p0
.end method
