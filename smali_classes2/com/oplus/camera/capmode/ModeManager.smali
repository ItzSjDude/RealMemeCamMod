.class public Lcom/oplus/camera/capmode/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/oplus/camera/capmode/BaseMode;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/capmode/BaseMode;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/oplus/camera/e/d;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/app/Activity;

.field private k:Lcom/oplus/camera/capmode/a;

.field private l:Lcom/oplus/camera/ui/CameraUIInterface;

.field private m:Lcom/oplus/camera/ui/preview/a/t;

.field private mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    .line 93
    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->c:Lcom/oplus/camera/capmode/BaseMode;

    .line 94
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    .line 95
    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->e:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/ModeManager;->f:Z

    .line 98
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/ModeManager;->g:Z

    .line 99
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/ModeManager;->h:Z

    const-string v1, "common"

    .line 101
    iput-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->i:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    .line 104
    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    .line 105
    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 106
    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    .line 109
    iput-object p1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    return-void
.end method

.method private D(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1239
    invoke-direct {p0}, Lcom/oplus/camera/capmode/ModeManager;->dS()V

    :cond_0
    return-void
.end method

.method private dR()Lcom/oplus/camera/capmode/BaseMode;
    .locals 4

    const-string v0, "com.oplus.quick.video.support"

    .line 253
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Lcom/oplus/camera/p/a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/oplus/camera/p/a;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    return-object v0

    .line 257
    :cond_0
    new-instance v0, Lcom/oplus/camera/capmode/d;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/oplus/camera/capmode/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    return-object v0
.end method

.method private dS()V
    .locals 2

    .line 1231
    iget v0, p0, Lcom/oplus/camera/capmode/ModeManager;->b:I

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v1, v1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/ModeManager;->b:I

    .line 1233
    iget v0, p0, Lcom/oplus/camera/capmode/ModeManager;->b:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    .line 3199
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3200
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->startLoadVideo(Z)V

    :cond_0
    return-void
.end method

.method public A()Z
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isQuickVideoInRestriction()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public B(Z)V
    .locals 0

    .line 3219
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3220
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setVideoBlurEffect(Z)V

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->canShowResumeButton()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public C()V
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->disableBurstShot()V

    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 3277
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3278
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setOpenFaceBeautyMenu(Z)V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->beforeStartRecording()V

    const/4 v0, 0x0

    .line 586
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->D(Z)V

    return-void
.end method

.method public E()V
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->afterStartRecording()V

    return-void
.end method

.method public F()V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->afterStopRecording()V

    const/4 v0, 0x1

    .line 595
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->D(Z)V

    return-void
.end method

.method public G()V
    .locals 0

    .line 613
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->beforeSwitchCamera()V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 0

    .line 628
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onZoomMenuCollapsing()V

    :cond_0
    return-void
.end method

.method public I()V
    .locals 0

    .line 634
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onZoomMenuCollapsed()V

    :cond_0
    return-void
.end method

.method public J()V
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onZoomMenuExpand()V

    :cond_0
    return-void
.end method

.method public K()Z
    .locals 0

    .line 678
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAnyModeAnimationRunning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public L()Z
    .locals 0

    .line 686
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isBackPortraitCameraSwitching()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public M()V
    .locals 0

    .line 706
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onEffectSurfaceCreated()V

    :cond_0
    return-void
.end method

.method public N()Z
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->hasEffectSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public O()V
    .locals 2

    const-string v0, "ModeManager"

    const-string v1, "displayScreenHint"

    .line 740
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->updateHintView()V

    .line 744
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->displayFixedUpModeHint()V

    .line 745
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->displayScreenHintIconInSwitchOn()V

    .line 746
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->clearFocusOutOfRange()V

    :cond_0
    return-void
.end method

.method public P()V
    .locals 0

    .line 751
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->showLowMemory()V

    :cond_0
    return-void
.end method

.method public Q()J
    .locals 2

    .line 757
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMinimumCaptureMemory()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x3200000

    return-wide v0
.end method

.method public R()I
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultAFMode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public S()Ljava/lang/String;
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    return-object p0
.end method

.method public T()Z
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFrontTorchEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public U()I
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewDispalyWidth()I

    move-result p0

    return p0
.end method

.method public V()Z
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInCapturePreparing()Z

    move-result p0

    return p0
.end method

.method public W()Z
    .locals 1

    .line 837
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getIsCapturingState()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "ModeManager"

    const-string v0, "getIsCapturingState, camera has been destroyed"

    .line 841
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public X()Z
    .locals 0

    .line 847
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getIsBurstShotCapturing()Z

    move-result p0

    return p0
.end method

.method public Y()V
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onShareMenuExpand()V

    :cond_0
    return-void
.end method

.method public Z()V
    .locals 0

    .line 889
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkoutTimerSnapShotState()V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 2854
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2855
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSurfaceSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public a(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    const/4 v0, 0x0

    .line 807
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/oplus/camera/e/h;D)Landroid/util/Size;
    .locals 0

    .line 2564
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2565
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;
    .locals 1

    const-string v0, "getPreviewSize"

    .line 811
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 813
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 815
    :goto_0
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 2349
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2350
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->getSurfaceSize(Ljava/lang/String;Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/oplus/camera/capmode/BaseMode;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 122
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/capmode/BaseMode;

    return-object p0

    :cond_0
    const-string p0, "ModeManager"

    const-string p1, "getModeByName, error, mBaseModeMap is null."

    .line 125
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 0

    .line 941
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 942
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public a(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 0

    .line 949
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 950
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->getAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->b(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->b(Z)Ljava/lang/String;

    move-result-object p0

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEnabledModeForCameraId, modeName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Switch to mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ModeManager"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    return-object p2
.end method

.method public a(F)V
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 653
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onZoomAlphaChanged(F)V

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 3118
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3119
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->setFocusTrackingLocation(FF)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 489
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 523
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onThermalLevelChange(II)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 0

    .line 2289
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2290
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/BaseMode;->onMakeupValueChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public a(IIZI)V
    .locals 0

    .line 3036
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3037
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;->reportIntelligentDragViewMoveToDcs(IIZI)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 1292
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1293
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->setPIEnable(IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1597
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 2796
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2797
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onReceivePreviewCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/oplus/camera/aps/service/ApsService;)V
    .locals 1

    monitor-enter p0

    .line 3056
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_0

    .line 3057
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setApsService(Lcom/oplus/camera/aps/service/ApsService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3059
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/oplus/camera/aps/service/ThumbnailItem;)V
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onThumbnailUpdated(Lcom/oplus/camera/aps/service/ThumbnailItem;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 0

    .line 2363
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2364
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewDecisionResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    .line 115
    iput-object p2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 116
    iput-object p3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    .line 117
    invoke-static {}, Lcom/oplus/camera/i/b;->a()Lcom/oplus/camera/i/b;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/i/b;->a(Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V
    .locals 0

    .line 3193
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3194
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onVideoLoadedDone(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/e/d;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/oplus/camera/capmode/ModeManager;->e:Lcom/oplus/camera/e/d;

    .line 460
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 461
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateOneCamera(Lcom/oplus/camera/e/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/tiltshift/TiltShiftParam;)V
    .locals 0

    .line 1699
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1700
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setTiltShiftParams(Lcom/oplus/camera/tiltshift/TiltShiftParam;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/u/a;)V
    .locals 0

    .line 2706
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2707
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setPreviewDetectResult(Lcom/oplus/camera/u/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/p;)V
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 701
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->createEffectTextures(Lcom/oplus/camera/ui/preview/a/p;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 0

    .line 2048
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2049
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 0

    .line 3249
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3250
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onRawImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;Z)V
    .locals 0

    .line 694
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 695
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onApsPreviewCaptureCompleted(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 1

    .line 3124
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 p0, 0x1

    .line 3129
    invoke-virtual {v0, p2, p0, p4}, Lcom/oplus/camera/capmode/BaseMode;->operateSpecificViewCallBack(Ljava/lang/Object;ZZ)V

    goto :goto_0

    .line 3131
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 3134
    invoke-virtual {p0, p2, p1, p4}, Lcom/oplus/camera/capmode/BaseMode;->operateSpecificViewCallBack(Ljava/lang/Object;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 2842
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2843
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->updateFlashState(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3403
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3404
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->generateImageInfo(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onBinauralRecordStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 0

    .line 3090
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3091
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onYuvDataReceviced([B)V

    :cond_0
    return-void
.end method

.method public a([BIIIZI)V
    .locals 7

    .line 1984
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->c:Lcom/oplus/camera/capmode/BaseMode;

    if-ne v0, p0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1985
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/capmode/BaseMode;->onPictureCallback([BIIIZI)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isPanelMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(ILandroid/view/MotionEvent;)Z
    .locals 0

    .line 1948
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1949
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->performSlide(ILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/media/Image;)Z
    .locals 0

    .line 1976
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1977
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewFrameReceived(Landroid/media/Image;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 385
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized a(Lcom/oplus/camera/d$a;)Z
    .locals 1

    monitor-enter p0

    .line 765
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/ModeManager;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    .line 767
    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->isAllowSwitch(Lcom/oplus/camera/d$a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 765
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ZII)Z
    .locals 0

    .line 2966
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/BaseMode;->getTouchEnable(ZII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(ZZ)Z
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->checkSensorMask(ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aA()Z
    .locals 0

    .line 1623
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1624
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAISceneOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aB()Z
    .locals 0

    .line 1631
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1632
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isPIAISceneOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aC()Z
    .locals 0

    .line 1639
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1640
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVividEffectOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aD()Z
    .locals 0

    .line 1647
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1648
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFlashState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aE()Z
    .locals 0

    .line 1655
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1656
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedAPSProcess()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aF()V
    .locals 0

    .line 1669
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1670
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetMetadataBokehCode()V

    :cond_0
    return-void
.end method

.method public aG()V
    .locals 0

    .line 1675
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1676
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->hideFirstBeautyTipView()V

    :cond_0
    return-void
.end method

.method public aH()V
    .locals 0

    .line 1681
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1682
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->hideStreetRockerShutterTipView()V

    :cond_0
    return-void
.end method

.method public aI()V
    .locals 0

    .line 1687
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1688
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onShowBubble()V

    :cond_0
    return-void
.end method

.method public aJ()Z
    .locals 0

    .line 1705
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1706
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isTiltShiftOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aK()Z
    .locals 0

    .line 1713
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1714
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isTiltShiftSupportBeauty()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aL()V
    .locals 0

    .line 1749
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1750
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->deleteCurrentVideo()V

    :cond_0
    return-void
.end method

.method public aM()Z
    .locals 0

    .line 1755
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1756
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needDelayFaceDetection()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aN()V
    .locals 0

    .line 1763
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1764
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->startPlayVideoActivity()V

    :cond_0
    return-void
.end method

.method public aO()V
    .locals 0

    .line 1769
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1770
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onVideoRetakeButtonClick()V

    :cond_0
    return-void
.end method

.method public aP()V
    .locals 0

    .line 1775
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1776
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onVideoShutterButtonClick()V

    :cond_0
    return-void
.end method

.method public aQ()V
    .locals 0

    .line 1781
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1782
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onScreenOffWhenLocked()V

    :cond_0
    return-void
.end method

.method public aR()Z
    .locals 0

    .line 1787
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1788
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onVideoRecordingPause()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aS()Z
    .locals 0

    .line 1795
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1796
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onVideoRecordingResume()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aT()Z
    .locals 0

    .line 1803
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1804
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRecordStarting()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aU()Z
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1812
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRecordStarted()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aV()Z
    .locals 0

    .line 1819
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1820
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aW()Z
    .locals 0

    .line 1827
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1828
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHalVideoRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aX()Z
    .locals 0

    .line 1835
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1836
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->showMenuLeftButton()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aY()Z
    .locals 0

    .line 1843
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->showBeautyButton()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aZ()Z
    .locals 0

    .line 1851
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1852
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRecordStopped()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public aa()Z
    .locals 0

    .line 901
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->supportBeautyButton()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ab()Z
    .locals 0

    .line 917
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSupportShowFilterMenu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ac()Z
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getScreenTorchModeState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ad()Ljava/lang/String;
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFullPictureSizeType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "full"

    return-object p0
.end method

.method public ae()V
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->closeImageReader()V

    :cond_0
    return-void
.end method

.method public af()Z
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMicroscopeMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ag()Z
    .locals 0

    .line 1160
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1161
    instance-of p0, p0, Lcom/oplus/camera/capmode/h;

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ah()V
    .locals 0

    .line 1182
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->pause()V

    :cond_0
    return-void
.end method

.method public ai()V
    .locals 0

    .line 1188
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1189
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->stop()V

    :cond_0
    return-void
.end method

.method public aj()V
    .locals 0

    .line 1194
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1195
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->beforePause()V

    :cond_0
    return-void
.end method

.method public ak()Ljava/lang/String;
    .locals 0

    .line 1200
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1201
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getTimeLapse()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public al()V
    .locals 4

    .line 1208
    monitor-enter p0

    .line 1209
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1211
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1212
    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v2, :cond_0

    .line 1215
    invoke-virtual {v2}, Lcom/oplus/camera/capmode/BaseMode;->destroy()V

    goto :goto_0

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 1220
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/ModeManager;->f:Z

    .line 1221
    iput-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    .line 1222
    iput-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    .line 1223
    iput-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->c:Lcom/oplus/camera/capmode/BaseMode;

    .line 1225
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    iput-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    return-void

    :catchall_0
    move-exception v0

    .line 1225
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public am()Z
    .locals 0

    .line 1244
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowProgressBarForOtherApp()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public an()Z
    .locals 0

    .line 1252
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getIsShowPostCaptureAlert()Z

    move-result p0

    return p0
.end method

.method public ao()Z
    .locals 0

    .line 1256
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1257
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedProgressBarInCapture()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ap()Z
    .locals 0

    .line 1264
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedShowMenuOnTimeSnapShotEnd()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public aq()Z
    .locals 0

    .line 1272
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1273
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedSetRecordingMargin()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ar()I
    .locals 0

    .line 1280
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1281
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getReceiveBustShotNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public as()V
    .locals 0

    .line 1288
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCameraIdChangedAnimationEnd()V

    return-void
.end method

.method public at()V
    .locals 0

    .line 1298
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetFiltersList()V

    :cond_0
    return-void
.end method

.method public au()V
    .locals 0

    .line 1310
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1311
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateAISceneMode()V

    :cond_0
    return-void
.end method

.method public av()V
    .locals 0

    .line 1316
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1317
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updatePIMode()V

    :cond_0
    return-void
.end method

.method public declared-synchronized aw()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "initBaseModeMap"

    .line 1328
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, "ModeManager"

    const-string v1, "initBaseModeMap, mBaseModeMap is null!"

    .line 1331
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "ModeManager"

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBaseModeMap, mBaseModeList Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "commonVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    .line 1340
    new-instance v0, Lcom/oplus/camera/capmode/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1342
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1346
    invoke-direct {p0}, Lcom/oplus/camera/capmode/ModeManager;->dR()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v0

    .line 1347
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "com.oplus.feature.portrait.support"

    .line 1350
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "portrait"

    .line 1351
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1352
    new-instance v0, Lcom/oplus/camera/n/a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/n/a;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1354
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1358
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "commonVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1359
    new-instance v0, Lcom/oplus/camera/capmode/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1361
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "panorama"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1365
    new-instance v0, Lcom/oplus/camera/panorama/f;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/panorama/f;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1367
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "fastVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1371
    new-instance v0, Lcom/oplus/camera/h/a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/h/a;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1373
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "slowVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "com.oplus.feature.slow.video.support"

    .line 1377
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1378
    new-instance v0, Lcom/oplus/camera/r/g;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/r/g;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1380
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "multiCamera"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "com.oplus.multi.video.mode.support"

    .line 1384
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1385
    new-instance v0, Lcom/oplus/camera/capmode/q;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/q;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1387
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "movie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "com.oplus.feature.movie.mode.support"

    .line 1391
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1392
    new-instance v0, Lcom/oplus/camera/filmvideomode/s;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/filmvideomode/s;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1394
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "professional"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1398
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1399
    new-instance v0, Lcom/oplus/camera/professional/v;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/professional/v;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1401
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1403
    :cond_a
    new-instance v0, Lcom/oplus/camera/professional/h;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/professional/h;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1405
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_0
    const-string v0, "com.oplus.app.feature.sticker.support"

    .line 1409
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "sticker"

    .line 1410
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 1411
    new-instance v0, Lcom/oplus/camera/capmode/t;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/t;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1413
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v0, "com.oplus.feature.suppernight.support"

    .line 1416
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1417
    new-instance v0, Lcom/oplus/camera/capmode/r;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/r;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1419
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "com.oplus.feature.macro.mode.support"

    .line 1423
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1424
    new-instance v0, Lcom/oplus/camera/capmode/n;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/n;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1426
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "superText"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1430
    new-instance v0, Lcom/oplus/camera/capmode/u;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/u;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1432
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string v0, "com.oplus.feature.id.photo.support"

    .line 1435
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "idPhoto"

    .line 1436
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    .line 1437
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1438
    invoke-static {}, Lcom/oplus/camera/l/c;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1439
    new-instance v0, Lcom/oplus/camera/capmode/l;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/l;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1441
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v0, "com.oplus.feature.fish.eye.support"

    .line 1444
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "fishEye"

    .line 1445
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1446
    new-instance v0, Lcom/oplus/camera/capmode/h;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/h;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1448
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    :cond_11
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "ultraHD"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1452
    new-instance v0, Lcom/oplus/camera/capmode/v;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/v;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1454
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v0, "com.oplus.feature.high.pixel.support"

    .line 1457
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "highPixel"

    .line 1458
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1459
    new-instance v0, Lcom/oplus/camera/capmode/k;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/k;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1461
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const-string v0, "com.oplus.feature.high.definition.support"

    .line 1464
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "highDefinition"

    .line 1465
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 1466
    new-instance v0, Lcom/oplus/camera/capmode/j;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/j;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1468
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    :cond_14
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "groupshot"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1472
    new-instance v0, Lcom/oplus/camera/capmode/i;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/i;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1474
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :cond_15
    invoke-static {}, Lcom/oplus/camera/aps/config/CameraConfig;->isSupportMicroscope()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "microscope"

    .line 1478
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1479
    new-instance v0, Lcom/oplus/camera/capmode/o;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/o;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1481
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    :cond_16
    invoke-static {}, Lcom/oplus/camera/aps/config/CameraConfig;->isSupportMicroscope()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "microscopeVideo"

    .line 1485
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 1486
    new-instance v0, Lcom/oplus/camera/capmode/p;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/p;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1488
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v0, "com.oplus.feature.doubleexposure.support"

    .line 1491
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "double_exposure"

    .line 1492
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1493
    new-instance v0, Lcom/oplus/camera/capmode/g;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/g;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1495
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string v0, "com.oplus.starry.support"

    .line 1498
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "starry"

    .line 1499
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    .line 1500
    new-instance v0, Lcom/oplus/camera/s/d;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/s/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1502
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v0, "com.oplus.starry.support"

    .line 1505
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "com.oplus.star.video.support"

    .line 1506
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "starVideo"

    .line 1507
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1508
    new-instance v0, Lcom/oplus/camera/s/b;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/s/b;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1510
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v0, "com.oplus.feature.xpan.mode.support"

    .line 1513
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "xpan"

    .line 1514
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 1515
    new-instance v0, Lcom/oplus/camera/capmode/y;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/y;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1517
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    const-string v0, "com.oplus.feature.tilt.shift.photo.support"

    .line 1520
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "tiltShift"

    .line 1521
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1522
    new-instance v0, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1524
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const-string v0, "com.oplus.feature.tilt.shift.fastvideo.support"

    .line 1527
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "tiltShiftFastVideo"

    .line 1528
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 1529
    new-instance v0, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1531
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string v0, "com.oplus.feature.timelapse.pro.support"

    .line 1534
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "timelapsePro"

    .line 1535
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 1536
    new-instance v0, Lcom/oplus/camera/timelapsepro/h;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/timelapsepro/h;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1538
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    const-string v0, "com.oplus.feature.street.mode.support"

    .line 1541
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "street"

    .line 1542
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 1543
    new-instance v0, Lcom/oplus/camera/t/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/t/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1545
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const-string v0, "com.oplus.long.exposure.support"

    .line 1548
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1549
    new-instance v0, Lcom/oplus/camera/capmode/m;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/capmode/m;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1551
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    const-string v0, "com.oplus.3d.photo.support"

    .line 1554
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    const-string v1, "3dPhoto"

    .line 1555
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    .line 1556
    new-instance v0, Lcom/oplus/camera/photo3d/c;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/photo3d/c;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1558
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_1
    const/4 v0, 0x1

    .line 1563
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/ModeManager;->f:Z

    const-string v0, "initBaseModeMap"

    .line 1565
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string v0, "ModeManager"

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBaseModeMap X, mBaseModeList Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1568
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ax()V
    .locals 0

    .line 1591
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1592
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onUiModeChanged()V

    :cond_0
    return-void
.end method

.method public ay()Z
    .locals 0

    .line 1601
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1602
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAnimojiOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public az()Z
    .locals 0

    .line 1609
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1610
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHistogramOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewFrameSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 529
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onVideoTemperatureThresholdChanged(I)V

    :cond_0
    return-void
.end method

.method public b(IIZ)V
    .locals 0

    .line 2311
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2312
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/BaseMode;->onFaceBeautyItemValueChange(IIZ)V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 0

    .line 1663
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1664
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->changeModeAllViewWhenAnimation(IZ)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->hideBubble(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->operateViewWhenMultiFinger(Z)V

    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 0

    .line 734
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 735
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->displayAllIcon(ZZ)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHideUICapture()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(F)Z
    .locals 0

    .line 2676
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2677
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->withinSatMainRange(F)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized b(ILjava/lang/String;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :try_start_0
    const-string p1, "ModeManager"

    const-string p2, "getPluginEnabled ,mode-string or mPlugins is null,so return"

    .line 1572
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    monitor-exit p0

    return v0

    .line 1577
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1578
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/capmode/BaseMode;

    .line 1580
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1581
    invoke-virtual {p2}, Lcom/oplus/camera/capmode/BaseMode;->getFrontEnable()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 1583
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/oplus/camera/capmode/BaseMode;->getRearEnable()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 1587
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public b(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 0

    .line 3255
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3256
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->consumeImage(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bA()Ljava/lang/String;
    .locals 0

    .line 2158
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2159
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getPhotoRatio()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bB()I
    .locals 0

    .line 2166
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2167
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getVideoFps()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bC()I
    .locals 0

    .line 2190
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2191
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyCurrIndex()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bD()Z
    .locals 0

    .line 2206
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2207
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMakeupOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bE()I
    .locals 0

    .line 2214
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2215
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomBarOffset()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bF()I
    .locals 0

    .line 2222
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2223
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyMenuType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bG()V
    .locals 0

    .line 2237
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2238
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetFaceBeautyValues()V

    :cond_0
    return-void
.end method

.method public bH()I
    .locals 0

    .line 2251
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2252
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCommonBeautyValue()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x28

    return p0
.end method

.method public bI()[I
    .locals 0

    .line 2259
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2260
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCustomBeautyValues()[I

    move-result-object p0

    return-object p0

    .line 2262
    :cond_0
    sget-object p0, Lcom/oplus/camera/d;->a:[I

    return-object p0
.end method

.method public bJ()[I
    .locals 0

    .line 2267
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2268
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultMakeupValues()[I

    move-result-object p0

    return-object p0

    .line 2271
    :cond_0
    sget-object p0, Lcom/oplus/camera/ui/preview/a/g;->a:[I

    return-object p0
.end method

.method public bK()I
    .locals 0

    .line 2295
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2296
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrMakeupIndex()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bL()Z
    .locals 0

    .line 2303
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2304
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportShowCustomAll()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bM()Z
    .locals 0

    .line 2317
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2318
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onFaceBeautyMenuClick()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bN()Z
    .locals 0

    .line 2325
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2326
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHighPictureSize()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bO()Z
    .locals 0

    .line 2333
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2334
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isUltraWideHighPictureSize()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bP()D
    .locals 2

    .line 2341
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2342
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDisplayHighPictureSize()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public bQ()I
    .locals 0

    .line 2369
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2370
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurIndex()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x3c

    return p0
.end method

.method public bR()Z
    .locals 0

    .line 2389
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2390
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isBlurOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bS()Z
    .locals 0

    .line 2397
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2398
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowUltraWide()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bT()V
    .locals 0

    .line 2405
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2406
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onFilterMenuClicked()V

    :cond_0
    return-void
.end method

.method public bU()Z
    .locals 0

    .line 2419
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2420
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoNeonOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bV()V
    .locals 0

    .line 2433
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2434
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->setCapturePreviewDataStateIdle()V

    :cond_0
    return-void
.end method

.method public bW()Z
    .locals 0

    .line 2443
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2444
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSuperTextOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bX()Z
    .locals 0

    .line 2451
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2452
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isIdPhotoOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bY()Z
    .locals 0

    .line 2459
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2460
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFaceView()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bZ()Ljava/lang/String;
    .locals 0

    .line 2467
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2468
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public ba()Z
    .locals 0

    .line 1859
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1860
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRecordStopping()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bb()Z
    .locals 0

    .line 1878
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1879
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoHighFps()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bc()Z
    .locals 0

    .line 1886
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1887
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is4k()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bd()Lcom/oplus/camera/statistics/CameraStatisticsUtil$MakerNote;
    .locals 0

    .line 1902
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1903
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakerNote()Lcom/oplus/camera/statistics/CameraStatisticsUtil$MakerNote;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public be()J
    .locals 2

    .line 1910
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getResumePauseRecordingTotalTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public bf()V
    .locals 0

    .line 1920
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1921
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onEffectMenuPopUp()V

    :cond_0
    return-void
.end method

.method public bg()Z
    .locals 0

    .line 1932
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1933
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->showEffectMenu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bh()Z
    .locals 0

    .line 1940
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1941
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isStickerMenuOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bi()Z
    .locals 0

    .line 1956
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1957
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateViewByEnterCameraType()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bj()V
    .locals 0

    .line 1964
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1965
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->startScreenTorch()V

    :cond_0
    return-void
.end method

.method public bk()V
    .locals 0

    .line 1970
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1971
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->stopScreenTorch()V

    :cond_0
    return-void
.end method

.method public bl()Z
    .locals 0

    .line 2016
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2017
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needSatCrossAnimation()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bm()Z
    .locals 0

    .line 2024
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2025
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needClearFocusView()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bn()Z
    .locals 0

    .line 2032
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2033
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZSLMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bo()V
    .locals 0

    .line 2054
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2055
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onSessionConfigured()V

    :cond_0
    return-void
.end method

.method public bp()Z
    .locals 0

    .line 2060
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2061
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHFR()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bq()Z
    .locals 0

    .line 2082
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2083
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowBeauty3D()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public br()Z
    .locals 0

    .line 2090
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2091
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowAnimojiMenu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bs()Z
    .locals 0

    .line 2098
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2099
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowProPanelMenu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bt()Z
    .locals 0

    .line 2106
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2107
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->supportMenuLeftButton()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bu()Z
    .locals 0

    .line 2114
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2115
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->canShowTimeLapseProButtons()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bv()V
    .locals 0

    .line 2122
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2123
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onZoomChanged()V

    :cond_0
    return-void
.end method

.method public bw()I
    .locals 0

    .line 2128
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2129
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBeauty3Dstatus()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bx()Z
    .locals 0

    .line 2136
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2137
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowingGuideView()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public by()I
    .locals 0

    .line 2144
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2145
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShortcutFaceBeautyIndex()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bz()V
    .locals 0

    .line 2152
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2153
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onSwitchCameraButtonClick()V

    :cond_0
    return-void
.end method

.method public c(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public c(I)V
    .locals 2

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraId, cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget v0, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 602
    invoke-static {v0, p1}, Lcom/oplus/camera/perf/SwitchCameraPerformance;->setSwitchCameraId(II)V

    .line 605
    :cond_0
    iput p1, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    .line 607
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_1

    .line 608
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setCameraId(I)V

    :cond_1
    return-void
.end method

.method public c(IZ)V
    .locals 0

    .line 2283
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2284
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onMakeupTypeChanged(IZ)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 445
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->afterStartPreview(Z)V

    :cond_0
    return-void
.end method

.method public c(ZZ)V
    .locals 0

    .line 2383
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2384
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->switchVideoBlur(ZZ)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHideHeadLine()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(F)Z
    .locals 0

    .line 2684
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2685
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->withinSatMainAndWideRange(F)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onLongPress(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 0

    .line 3389
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 6

    .line 263
    iget v0, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->b(ILjava/lang/String;)Z

    move-result v0

    const-string v1, "ModeManager"

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode fail, the mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not enabled at cameraId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->b(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "common"

    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    .line 270
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/oplus/camera/capmode/ModeManager;->dR()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v0

    .line 272
    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "commonVideo"

    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    .line 274
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 275
    new-instance v0, Lcom/oplus/camera/capmode/e;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v4, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v5, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/oplus/camera/capmode/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 277
    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/capmode/BaseMode;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentMode, cannot find cap mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 289
    :cond_2
    iget v3, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/BaseMode;->setCameraId(I)V

    .line 290
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->updateFilterNoneIndex()V

    .line 292
    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v3, :cond_5

    .line 293
    invoke-virtual {v3}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentMode fail, the mode not change: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 299
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 300
    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->i:Ljava/lang/String;

    .line 303
    :cond_4
    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v2, p1}, Lcom/oplus/camera/capmode/BaseMode;->deInitCameraMode(Ljava/lang/String;)V

    .line 306
    :cond_5
    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    .line 307
    iget-object p1, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->e:Lcom/oplus/camera/e/d;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/capmode/BaseMode;->updateOneCamera(Lcom/oplus/camera/e/d;)V

    .line 308
    iget-object p1, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->initCameraMode()V

    .line 309
    iget-object p1, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean v2, p0, Lcom/oplus/camera/capmode/ModeManager;->g:Z

    invoke-virtual {p1, v2}, Lcom/oplus/camera/capmode/BaseMode;->setLowBatteryState(Z)V

    .line 310
    iget-object p1, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/ModeManager;->h:Z

    invoke-virtual {p1, p0}, Lcom/oplus/camera/capmode/BaseMode;->setDisplayOnLock(Z)V

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setCurrentMode, mCurrentMode mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cA()V
    .locals 0

    .line 2742
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2743
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onHomeKeyClick()V

    :cond_0
    return-void
.end method

.method public cB()V
    .locals 0

    .line 2748
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2749
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCameraPermissionGranted()V

    :cond_0
    return-void
.end method

.method public cC()Z
    .locals 0

    .line 2766
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isQrCodeOpened()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cD()V
    .locals 0

    .line 2770
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2771
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->stopRecordingFrame()V

    :cond_0
    return-void
.end method

.method public cE()V
    .locals 0

    .line 2776
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2777
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onFrameInterpolationStarted()V

    :cond_0
    return-void
.end method

.method public cF()V
    .locals 0

    .line 2782
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2783
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onMotionDetected()V

    :cond_0
    return-void
.end method

.method public cG()Lcom/oplus/camera/ui/control/e$c;
    .locals 0

    .line 2788
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2789
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getAfterStoreRunnable()Lcom/oplus/camera/ui/control/e$c;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public cH()Z
    .locals 0

    .line 2802
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2803
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowSceneNightTips()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cI()Z
    .locals 0

    .line 2810
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2811
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportGestureCapture()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public cJ()Z
    .locals 0

    .line 2818
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2819
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isUltraNightVideoOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cK()Z
    .locals 0

    .line 2826
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2827
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAiEnhancementVideoOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cL()Z
    .locals 0

    .line 2834
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2835
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSuperEISOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cM()V
    .locals 0

    .line 2862
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2863
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->clearApsDecisionResult()V

    :cond_0
    return-void
.end method

.method public cN()Z
    .locals 0

    .line 2876
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2877
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSupportSelectPhotoRatio()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cO()Z
    .locals 0

    .line 2892
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2893
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSlowVideoMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cP()Z
    .locals 0

    .line 2900
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    instance-of p0, p0, Lcom/oplus/camera/capmode/y;

    return p0
.end method

.method public cQ()Z
    .locals 0

    .line 2904
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2905
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMultiVideoMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cR()Z
    .locals 0

    .line 2912
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2913
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedTransAnimWhenRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cS()Z
    .locals 0

    .line 2920
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isStarryMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cT()Z
    .locals 0

    .line 2924
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->consumeBackEventOnPictureTaken()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cU()Ljava/lang/String;
    .locals 0

    .line 2944
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2945
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getGuideLineType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public cV()F
    .locals 0

    .line 2958
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewXScale()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public cW()Z
    .locals 0

    .line 2962
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isCropX()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cX()I
    .locals 0

    .line 2970
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getEntryGalleryAnim()I

    move-result p0

    return p0
.end method

.method public cY()Z
    .locals 0

    .line 2974
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is10bitsHeicEncodeEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cZ()Z
    .locals 0

    .line 2978
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needLutTexture()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ca()Z
    .locals 0

    .line 2483
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2484
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInNightProcess()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cb()Z
    .locals 0

    .line 2491
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2492
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isCountDownStarted()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cc()Z
    .locals 0

    .line 2499
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2500
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isLongExposureSceneMenuOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cd()Z
    .locals 0

    .line 2507
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2508
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ce()Z
    .locals 2

    .line 2516
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2517
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoHDR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHDRSceneModeInAuto()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public cf()Z
    .locals 0

    .line 2524
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2525
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSuperClearPortraitEnable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cg()Z
    .locals 0

    .line 2532
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2533
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isUltraHighResolutionOpened()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ch()Z
    .locals 0

    .line 2540
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2541
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFilterEffectOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ci()Lcom/oplus/camera/ui/preview/a/l$a;
    .locals 0

    .line 2548
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2549
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterCategory()Lcom/oplus/camera/ui/preview/a/l$a;

    move-result-object p0

    return-object p0

    .line 2552
    :cond_0
    sget-object p0, Lcom/oplus/camera/ui/preview/a/l$a;->Polarr:Lcom/oplus/camera/ui/preview/a/l$a;

    return-object p0
.end method

.method public cj()I
    .locals 0

    .line 2556
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2557
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getImageFormat()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x100

    return p0
.end method

.method public ck()V
    .locals 0

    .line 2580
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2581
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onUltraWideAngleOpened()V

    :cond_0
    return-void
.end method

.method public cl()V
    .locals 0

    .line 2586
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2587
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onTeleAngleOpened()V

    :cond_0
    return-void
.end method

.method public cm()V
    .locals 0

    .line 2592
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2593
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onSuperEISChange()V

    :cond_0
    return-void
.end method

.method public cn()Z
    .locals 0

    .line 2614
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2615
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHyperLapseUltraWideOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public co()Z
    .locals 0

    .line 2622
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2623
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNoneSatTeleAngleOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cp()I
    .locals 0

    .line 2630
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2631
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHintTextId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public cq()V
    .locals 0

    .line 2638
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2639
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onResumeFromSetting()V

    :cond_0
    return-void
.end method

.method public cr()V
    .locals 0

    .line 2644
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2645
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onTopSubMenuCollapse()V

    :cond_0
    return-void
.end method

.method public cs()V
    .locals 0

    .line 2650
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2651
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onTopSubMenuExpand()V

    :cond_0
    return-void
.end method

.method public ct()V
    .locals 0

    .line 2656
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2657
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateRatioType()V

    :cond_0
    return-void
.end method

.method public cu()Lcom/oplus/camera/af;
    .locals 0

    .line 2668
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2669
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    return-object p0

    .line 2672
    :cond_0
    new-instance p0, Lcom/oplus/camera/af;

    invoke-direct {p0}, Lcom/oplus/camera/af;-><init>()V

    return-object p0
.end method

.method public cv()Z
    .locals 0

    .line 2692
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2693
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoSuperEisWideOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cw()V
    .locals 0

    .line 2700
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2701
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetCaptureButton()V

    :cond_0
    return-void
.end method

.method public cx()Z
    .locals 0

    .line 2720
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2721
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isTrackFocusOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cy()V
    .locals 0

    .line 2728
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2729
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateTrackEnable()V

    :cond_0
    return-void
.end method

.method public cz()Z
    .locals 0

    .line 2734
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2735
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceRectifyOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(F)V
    .locals 0

    .line 3100
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3101
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setVideoSoundValue(F)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 3

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraIdChanged, cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 622
    iput p1, p0, Lcom/oplus/camera/capmode/ModeManager;->a:I

    .line 623
    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->cameraIdChanged(I)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isModeBarSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2040
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2041
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 473
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(Z)Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->c:Lcom/oplus/camera/capmode/BaseMode;

    .line 506
    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->capture(Z)Z

    move-result p0

    return p0
.end method

.method public dA()I
    .locals 0

    .line 3295
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getAssistViewLayoutType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dB()V
    .locals 0

    .line 3299
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3300
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->beforeModeChanged()V

    :cond_0
    return-void
.end method

.method public dC()Z
    .locals 0

    .line 3305
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3306
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowFixFocusMenu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dD()Z
    .locals 0

    .line 3313
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3314
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAfFixFocuse()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dE()Z
    .locals 0

    .line 3321
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3322
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSupportAutoFocus()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public dF()Z
    .locals 0

    .line 3329
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3330
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isStreetOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dG()Z
    .locals 2

    .line 3341
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3342
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public dH()Z
    .locals 0

    .line 3349
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3350
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkVideoHdrPreCondition()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dI()Z
    .locals 0

    .line 3357
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3358
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->check3HDRPreCondition()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dJ()Z
    .locals 0

    .line 3365
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3366
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoHdrOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dK()I
    .locals 0

    .line 3373
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3374
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultBlurValue()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x3c

    return p0
.end method

.method public dL()Z
    .locals 0

    .line 3381
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3382
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInProMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dM()I
    .locals 0

    .line 3393
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getExpectedFrameRate()I

    move-result p0

    return p0
.end method

.method public dN()V
    .locals 0

    .line 3397
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3398
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onSendCapturePictureRequest()V

    :cond_0
    return-void
.end method

.method public dO()V
    .locals 0

    .line 3409
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3410
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCancleCapturePictureRequest()V

    :cond_0
    return-void
.end method

.method public dP()Lcom/oplus/camera/ui/q;
    .locals 0

    .line 3415
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewOutlineProvider()Lcom/oplus/camera/ui/q;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public dQ()V
    .locals 0

    .line 3435
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3436
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onMenuBackButtonClick()V

    :cond_0
    return-void
.end method

.method public da()Z
    .locals 0

    .line 2982
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needShow10bitHint()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public db()V
    .locals 0

    .line 2986
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2987
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeShown()V

    :cond_0
    return-void
.end method

.method public dc()J
    .locals 2

    .line 2998
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2999
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureDate()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public dd()Z
    .locals 0

    .line 3006
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3007
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSupportLensSwicth()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public de()I
    .locals 0

    .line 3014
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3015
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureIso()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public df()J
    .locals 2

    .line 3022
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3023
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureExposureTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public dg()V
    .locals 0

    .line 3050
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3051
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onFaceBeautyMenuClose()V

    :cond_0
    return-void
.end method

.method public dh()V
    .locals 0

    .line 3070
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3071
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->revertOp()V

    :cond_0
    return-void
.end method

.method public di()Z
    .locals 0

    .line 3082
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3083
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isDoubleExposureOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dj()Z
    .locals 0

    .line 3096
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMirrorEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dk()V
    .locals 0

    .line 3106
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3107
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkAiEnhancementVideoState()V

    :cond_0
    return-void
.end method

.method public dl()Ljava/lang/String;
    .locals 0

    .line 3154
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3155
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "default"

    return-object p0
.end method

.method public dm()Ljava/lang/String;
    .locals 0

    .line 3162
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "key_filter_index"

    :goto_0
    return-object p0
.end method

.method public dn()Ljava/lang/String;
    .locals 0

    .line 3166
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getEffectMenuKeyByMode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pref_filter_menu"

    :goto_0
    return-object p0
.end method

.method public do()Ljava/lang/String;
    .locals 0

    .line 3170
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurMenuKeyByMode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pref_video_blur_menu"

    :goto_0
    return-object p0
.end method

.method public dp()Z
    .locals 0

    .line 3174
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3175
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needPostProcessAfterStopRecord()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dq()Z
    .locals 0

    .line 3182
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is4k60fps()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.feature.video.4k60fps.ultrawide.support"

    .line 3183
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

.method public dr()Z
    .locals 0

    .line 3211
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3212
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->shouldHideBlur()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public ds()Z
    .locals 0

    .line 3225
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3226
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isBottomGuideEntryViewShown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dt()V
    .locals 0

    .line 3233
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3234
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateEffectMenuNames()V

    :cond_0
    return-void
.end method

.method public du()V
    .locals 0

    .line 3239
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3240
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->stopVideoRestoreUIWithControlUI()V

    :cond_0
    return-void
.end method

.method public dv()J
    .locals 2

    .line 3245
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureMergeIdentity()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public dw()V
    .locals 0

    .line 3263
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3264
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->beforeConfig()V

    :cond_0
    return-void
.end method

.method public dx()Z
    .locals 0

    .line 3269
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3270
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedResetAutoFocus()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public dy()Z
    .locals 0

    .line 3283
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowZoomMenu()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dz()Z
    .locals 0

    .line 3291
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFocus()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()I
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getOperatingMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e(I)V
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 647
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onZoomTransitionChanged(I)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 571
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setQuickVideoBeforeLockTime(Z)V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 3427
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3428
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->isInSlideModeChangeAreaForFull(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 481
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportSubMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->isPanelMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "common"

    return-object p0

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->i:Ljava/lang/String;

    return-object p0
.end method

.method public f(I)V
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 659
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateControlPanelBgColor(I)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 721
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onEffectMenuChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f(Z)Z
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->stopTakePicture(Z)Z

    move-result p0

    return p0
.end method

.method public g()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 187
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ModeManager"

    const-string v0, "getShutterButtonInfo, mCurrentMode is null.."

    .line 190
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public g(I)V
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 665
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onFilterItemChange(I)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setBurstShotCapturing(Z)V

    return-void
.end method

.method public g(Ljava/lang/String;)Z
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 772
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getAddMenuOptionEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 869
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 870
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->showPictureSizeHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 855
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 856
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setAllowSwitchMode(Z)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isCaptureModeType()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public h(I)Z
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 671
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onEffectItemClick(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(I)V
    .locals 0

    .line 1322
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAISceneClosed(I)V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 896
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onTimeSnapShotEnd(Z)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isCommonVideoMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    .line 881
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 882
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNoneSatUltraWideAngleOpen()Z
    .locals 0

    .line 2606
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2607
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNoneSatUltraWideAngleOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSatOpen()Z
    .locals 0

    .line 2572
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2573
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSatOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j(I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1894
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1895
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getVideoThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public j(Z)V
    .locals 0

    .line 1176
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1177
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->resume(Z)V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedMetaDataWhenPause()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 0

    .line 909
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 910
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public k(I)V
    .locals 0

    .line 1914
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1915
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setSysBrightness(I)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 4

    .line 963
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "starVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "highDefinition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "idPhoto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "microscope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "panorama"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "3dPhoto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "professional"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "slowVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "microscopeVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "movie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "macro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "xpan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "longExposure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "fastVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "superText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "ultraHD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "tiltShift"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "highPixel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "multiCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "fishEye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_1

    :sswitch_16
    const-string v0, "street"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1c

    goto :goto_1

    :sswitch_17
    const-string v0, "starry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto :goto_1

    :sswitch_18
    const-string v0, "tiltShiftFastVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto :goto_1

    :sswitch_19
    const-string v0, "double_exposure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto :goto_1

    :sswitch_1a
    const-string v0, "timelapsePro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    goto :goto_1

    :sswitch_1b
    const-string v0, "common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1c
    const-string v0, "groupshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto :goto_1

    :sswitch_1d
    const-string v0, "sticker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1e
    const-string v0, "commonVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1145
    :pswitch_0
    new-instance p1, Lcom/oplus/camera/photo3d/c;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/photo3d/c;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1146
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1139
    :pswitch_1
    new-instance p1, Lcom/oplus/camera/capmode/m;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/m;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1141
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1134
    :pswitch_2
    new-instance p1, Lcom/oplus/camera/t/e;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/t/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1135
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1129
    :pswitch_3
    new-instance p1, Lcom/oplus/camera/timelapsepro/h;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/timelapsepro/h;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1130
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1123
    :pswitch_4
    new-instance p1, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/tiltshift/TiltShiftFastVideoMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1125
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1117
    :pswitch_5
    new-instance p1, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/tiltshift/TiltShiftPhotoMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1119
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1111
    :pswitch_6
    new-instance p1, Lcom/oplus/camera/capmode/y;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/y;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1113
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1105
    :pswitch_7
    new-instance p1, Lcom/oplus/camera/s/b;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/s/b;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1107
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1099
    :pswitch_8
    new-instance p1, Lcom/oplus/camera/s/d;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/s/d;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1101
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1093
    :pswitch_9
    new-instance p1, Lcom/oplus/camera/capmode/g;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/g;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1095
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1087
    :pswitch_a
    new-instance p1, Lcom/oplus/camera/capmode/p;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/p;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1089
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1081
    :pswitch_b
    new-instance p1, Lcom/oplus/camera/capmode/o;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/o;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1083
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1075
    :pswitch_c
    new-instance p1, Lcom/oplus/camera/capmode/i;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/i;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1077
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1069
    :pswitch_d
    new-instance p1, Lcom/oplus/camera/capmode/q;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/q;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1071
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1063
    :pswitch_e
    new-instance p1, Lcom/oplus/camera/capmode/j;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/j;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1065
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1057
    :pswitch_f
    new-instance p1, Lcom/oplus/camera/capmode/k;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/k;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1059
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1051
    :pswitch_10
    new-instance p1, Lcom/oplus/camera/capmode/v;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/v;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1053
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1045
    :pswitch_11
    new-instance p1, Lcom/oplus/camera/capmode/h;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/h;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1047
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1039
    :pswitch_12
    new-instance p1, Lcom/oplus/camera/capmode/l;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/l;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1041
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1033
    :pswitch_13
    new-instance p1, Lcom/oplus/camera/capmode/u;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/u;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1035
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1028
    :pswitch_14
    new-instance p1, Lcom/oplus/camera/filmvideomode/s;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/filmvideomode/s;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1029
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1022
    :pswitch_15
    new-instance p1, Lcom/oplus/camera/r/g;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/r/g;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1024
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1016
    :pswitch_16
    new-instance p1, Lcom/oplus/camera/h/a;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/h/a;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1018
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1011
    :pswitch_17
    new-instance p1, Lcom/oplus/camera/capmode/r;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/r;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1012
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1006
    :pswitch_18
    new-instance p1, Lcom/oplus/camera/capmode/t;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/t;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1007
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1000
    :pswitch_19
    new-instance p1, Lcom/oplus/camera/n/a;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/n/a;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 1002
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 995
    :pswitch_1a
    new-instance p1, Lcom/oplus/camera/capmode/n;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/n;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 996
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 982
    :pswitch_1b
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-nez p1, :cond_1

    .line 983
    new-instance p1, Lcom/oplus/camera/professional/v;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/professional/v;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 985
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 987
    :cond_1
    new-instance p1, Lcom/oplus/camera/professional/h;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/professional/h;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 989
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 976
    :pswitch_1c
    new-instance p1, Lcom/oplus/camera/panorama/f;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/panorama/f;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 978
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 970
    :pswitch_1d
    new-instance p1, Lcom/oplus/camera/capmode/e;

    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->k:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->l:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/ModeManager;->m:Lcom/oplus/camera/ui/preview/a/t;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oplus/camera/capmode/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 972
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 965
    :pswitch_1e
    invoke-direct {p0}, Lcom/oplus/camera/capmode/ModeManager;->dR()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object p1

    .line 966
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x733d8ab0 -> :sswitch_1e
        -0x70aaf6c3 -> :sswitch_1d
        -0x58568607 -> :sswitch_1c
        -0x50c0d615 -> :sswitch_1b
        -0x4b90eff3 -> :sswitch_1a
        -0x3f2f124b -> :sswitch_19
        -0x358924c6 -> :sswitch_18
        -0x353237e7 -> :sswitch_17
        -0x352aaffd -> :sswitch_16
        -0x3292a347 -> :sswitch_15
        -0x2bdb0a42 -> :sswitch_14
        -0x2a24c5fc -> :sswitch_13
        -0x19cca83b -> :sswitch_12
        -0x13e39a58 -> :sswitch_11
        -0x13d70cb8 -> :sswitch_10
        -0x21dda81 -> :sswitch_f
        -0x1bf945d -> :sswitch_e
        0x383d25 -> :sswitch_d
        0x62d9bcc -> :sswitch_c
        0x6343f30 -> :sswitch_b
        0x63f6418 -> :sswitch_a
        0x136c544b -> :sswitch_9
        0x2b77bb9b -> :sswitch_8
        0x2d8e52fa -> :sswitch_7
        0x34289e27 -> :sswitch_6
        0x391aba21 -> :sswitch_5
        0x3fc6a675 -> :sswitch_4
        0x51de9a10 -> :sswitch_3
        0x61ab39d7 -> :sswitch_2
        0x6594cc95 -> :sswitch_1
        0x7f784149 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public k(Z)V
    .locals 0

    .line 1617
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1618
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateInversePositionRatio(Z)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoModeType()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1304
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1305
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateGrandTourCityFiltersPosition(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1721
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/ModeManager;->h:Z

    .line 1723
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1724
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setDisplayOnLock(Z)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public l(I)Z
    .locals 2

    .line 2004
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2008
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_1

    .line 2009
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needPreviewMeta(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public m()V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->hideViewWhileResume()V

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 2068
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2069
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setBeauty3DState(I)V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1693
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1694
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onHDRModeChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1729
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1730
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->forceStopVideoRecording(Z)V

    :cond_0
    return-void
.end method

.method public n(I)I
    .locals 0

    .line 2074
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2075
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getBeauty3DScanIconType(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public n(Z)V
    .locals 0

    .line 1735
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/ModeManager;->g:Z

    .line 1737
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1738
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setLowBatteryState(Z)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)Z
    .locals 0

    .line 1996
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1997
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public o(I)I
    .locals 0

    .line 2182
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2183
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSwitchAnimTime(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public o(Z)V
    .locals 0

    .line 1743
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1744
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->doReturnToCaller(Z)V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isZoomFaceRectifySupported()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public o(Ljava/lang/String;)Z
    .locals 0

    .line 2598
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2599
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public p()V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onTouchFocus()V

    :cond_0
    return-void
.end method

.method public p(I)V
    .locals 0

    .line 2231
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2232
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onFaceBeautyItemChange(I)V

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .line 2754
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2755
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMenuOptionAdded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1872
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1873
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setPreburstShotCapture(Z)V

    :cond_0
    return-void
.end method

.method public q(I)I
    .locals 0

    .line 2243
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2244
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyItemValue(I)I

    move-result p0

    return p0

    :cond_0
    const p0, -0x186a0

    return p0
.end method

.method public q()Ljava/lang/String;
    .locals 0

    const-string p0, "common"

    return-object p0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 2760
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2761
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMenuOptionRemoved(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 1926
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1927
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onEffectMenuPopDown(Z)V

    :cond_0
    return-void
.end method

.method public r(I)I
    .locals 0

    .line 2275
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2276
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupItemValue(I)I

    move-result p0

    return p0

    .line 2279
    :cond_0
    sget-object p0, Lcom/oplus/camera/ui/preview/a/g;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public r()V
    .locals 3

    const-string v0, "onBeforePreview"

    .line 432
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v1, :cond_0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeforePreview, capMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModeManager"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->beforePreview()V

    .line 440
    :cond_0
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1990
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 1991
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setPictureHasSuperTextResult(Z)V

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 0

    .line 2357
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2358
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setFocusingSoundVolume(I)V

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 2427
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2428
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setVideoBlurOpen(Z)V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHyperLapseOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public t()V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onUpdateCameraSettingMenu()V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 2377
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2378
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setBlurIndex(I)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 2439
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setCachePreviewStart(Z)V

    return-void
.end method

.method public u(I)V
    .locals 0

    .line 2992
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2993
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeHidden(I)V

    :cond_0
    return-void
.end method

.method public u(Z)V
    .locals 0

    .line 2662
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2663
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->switchSuperEISWide(Z)V

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_0

    .line 495
    iput-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->c:Lcom/oplus/camera/capmode/BaseMode;

    .line 497
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->burstShotCapture()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public v()V
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->startShortVideoRecording()V

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 0

    .line 3030
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3031
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onSlowVideoFrameChange(I)V

    :cond_0
    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 2848
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2849
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setFlashTemporaryDisabled(Z)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->stopShortVideoRecording()V

    :cond_0
    return-void
.end method

.method public w(I)V
    .locals 0

    .line 3205
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3206
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onModeShownTips(I)V

    :cond_0
    return-void
.end method

.method public w(Z)V
    .locals 3

    .line 2928
    monitor-enter p0

    .line 2929
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2930
    iget-object v0, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2932
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2933
    iget-object v1, p0, Lcom/oplus/camera/capmode/ModeManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v1, :cond_0

    .line 2936
    invoke-virtual {v1, p1}, Lcom/oplus/camera/capmode/BaseMode;->restoreDefaultMode(Z)V

    goto :goto_0

    .line 2940
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public x()V
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onShutterButtonLongClick()V

    :cond_0
    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 2952
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 2953
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setNeedCapture(Z)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->stopQuickVideoRecording()V

    :cond_0
    return-void
.end method

.method public y(Z)V
    .locals 0

    .line 3076
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3077
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->cancelOp(Z)V

    :cond_0
    return-void
.end method

.method public z(Z)V
    .locals 0

    .line 3112
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 3113
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setFocusTrackingState(Z)V

    :cond_0
    return-void
.end method

.method public z()Z
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/oplus/camera/capmode/ModeManager;->mCurrentMode:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz p0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getQuickVideoRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
