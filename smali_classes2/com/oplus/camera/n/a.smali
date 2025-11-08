.class public Lcom/oplus/camera/n/a;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "PortraitCapMode.java"


# instance fields
.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:F

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->g:Z

    const/4 p2, 0x1

    .line 95
    iput-boolean p2, p0, Lcom/oplus/camera/n/a;->h:Z

    .line 96
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->i:Z

    .line 97
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->j:Z

    .line 98
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->k:Z

    .line 99
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->l:Z

    const/4 p2, -0x1

    .line 100
    iput p2, p0, Lcom/oplus/camera/n/a;->m:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 101
    iput p2, p0, Lcom/oplus/camera/n/a;->n:F

    .line 103
    sget p2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    iput p2, p0, Lcom/oplus/camera/n/a;->o:I

    .line 104
    iput p1, p0, Lcom/oplus/camera/n/a;->p:I

    const-string p2, ""

    .line 105
    iput-object p2, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    .line 106
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->r:Z

    .line 107
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->s:Z

    .line 109
    new-instance p1, Lcom/oplus/camera/n/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/n/a$1;-><init>(Lcom/oplus/camera/n/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/n/a;->t:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureResult;)I
    .locals 0

    .line 1283
    sget-object p0, Lcom/oplus/camera/e/b;->ak:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p0}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1285
    instance-of p1, p0, [I

    if-eqz p1, :cond_0

    check-cast p0, [I

    const/4 p1, 0x0

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private a(IZ)V
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/n/a$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/camera/n/a$6;-><init>(Lcom/oplus/camera/n/a;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/n/a;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/n/a;IZ)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/n/a;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/n/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/n/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1449
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1453
    new-instance v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;

    iget-object v1, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/statistics/model/ReminderMsgData;-><init>(Landroid/content/Context;Z)V

    .line 1455
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1

    .line 1456
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 1457
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraId:I

    .line 1463
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCaptureMode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1464
    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCaptureType:I

    .line 1465
    iget v1, p0, Lcom/oplus/camera/n/a;->mOrientation:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mOrientation:I

    .line 1466
    iput-object p3, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mPortraitNewStyleType:Ljava/lang/String;

    .line 1467
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderTypeValue:Ljava/lang/String;

    .line 1468
    iput-object p2, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    .line 1469
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p0, :cond_2

    const-string p0, "front"

    goto :goto_0

    :cond_2
    const-string p0, "rear"

    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mRearOrFront:Ljava/lang/String;

    .line 1470
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/ReminderMsgData;->report()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 994
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    return-void
.end method

.method private a(II)Z
    .locals 1

    .line 1643
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->isMonoIndex(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/n/a;->isMonoIndex(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1644
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/n/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/n/a;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/n/a;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->h:Z

    return p1
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 8

    .line 1667
    iget-object v0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, -0x1

    .line 1671
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x37592faf

    const-string v4, "neon-2020.cube.rgb.bin"

    const/4 v5, 0x2

    const-string v6, "portrait_retention"

    const/4 v7, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0x1816d0d8

    if-eq v2, v3, :cond_2

    const v3, 0xc440f7a

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v2, "portrait_streamer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v7

    :cond_4
    :goto_0
    const-string v2, "default"

    if-eqz v0, :cond_8

    if-eq v0, v7, :cond_7

    if-eq v0, v5, :cond_5

    .line 1688
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 1689
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->b(Z)V

    goto :goto_2

    .line 1683
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    iget-boolean v3, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, p1

    :goto_1
    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->b(Z)V

    goto :goto_2

    .line 1678
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->b(Z)V

    goto :goto_2

    .line 1673
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/preview/a/t;->b(Z)V

    :goto_2
    if-eqz p2, :cond_a

    .line 1693
    iget-object v0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    .line 1694
    invoke-direct {p0, v4, v0, p1}, Lcom/oplus/camera/n/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    const-string v2, "p4_1.cube.rgb.bin"

    .line 1695
    invoke-direct {p0, v2, v0, p1}, Lcom/oplus/camera/n/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    const-string v2, "p4_3.cube.rgb.bin"

    .line 1696
    invoke-direct {p0, v2, v0, p1}, Lcom/oplus/camera/n/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v7

    goto :goto_3

    :cond_a
    move v0, v1

    :goto_3
    if-eqz p2, :cond_b

    .line 1698
    iget-object p2, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    .line 1699
    invoke-direct {p0, v6, p2, p1}, Lcom/oplus/camera/n/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    move v1, v7

    .line 1700
    :cond_b
    iput-object p1, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    .line 1702
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/oplus/camera/n/a;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_c

    .line 1703
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->isNeonEnable()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/oplus/camera/e/d;->C(Z)V

    .line 1704
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_c
    if-eqz v1, :cond_d

    .line 1707
    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p1, :cond_d

    .line 1708
    iget-object p1, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, v7, p1}, Lcom/oplus/camera/n/a;->updateRearAicolorEnable(ZZ)V

    :cond_d
    return v0

    :cond_e
    :goto_4
    return v1
.end method

.method static synthetic b(Lcom/oplus/camera/n/a;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/oplus/camera/n/a;->m:I

    return p0
.end method

.method private b(I)V
    .locals 7

    .line 986
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 990
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/n/a;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->b(I)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1613
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_0

    .line 1614
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v1, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-direct {p0, v1}, Lcom/oplus/camera/n/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ILjava/lang/String;)V

    .line 1615
    iget p1, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/n/a;->a(ZI)V

    .line 1618
    :cond_0
    iput v0, p0, Lcom/oplus/camera/n/a;->p:I

    const/4 p1, -0x1

    .line 1619
    iput p1, p0, Lcom/oplus/camera/n/a;->m:I

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/n/a;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->l:Z

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1721
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1722
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    instance-of v0, v0, Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "key_portrait_new_style_index"

    if-ne v0, v1, :cond_0

    .line 206
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->h()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 207
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->i()I

    move-result v0

    if-ne v1, v0, :cond_0

    const-string v0, "com.oplus.feature.portrait.neon.support"

    .line 208
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.oplus.feature.portrait.neon.front.support"

    .line 209
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "com.oplus.feature.portrait.streamer.support"

    .line 210
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    check-cast p0, Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ComboPreferences;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    check-cast p0, Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ComboPreferences;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(I)V
    .locals 4

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 1289
    iget v2, p0, Lcom/oplus/camera/n/a;->p:I

    const/4 v3, 0x2

    if-eq v3, v2, :cond_0

    .line 1290
    iput v3, p0, Lcom/oplus/camera/n/a;->p:I

    .line 1292
    iget p1, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p1, :cond_1

    .line 1293
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->h()Ljava/lang/String;

    move-result-object p1

    .line 1294
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v2, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-interface {v0, v2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ILjava/lang/String;)V

    .line 1296
    iget p1, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/n/a;->a(ZI)V

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    .line 1298
    iget p1, p0, Lcom/oplus/camera/n/a;->p:I

    if-eq v1, p1, :cond_1

    .line 1299
    iput v1, p0, Lcom/oplus/camera/n/a;->p:I

    .line 1301
    iget p1, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p1, :cond_1

    .line 1302
    iget p1, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->g(I)Ljava/lang/String;

    move-result-object p1

    .line 1303
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v1, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 1305
    iget v0, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/n/a;->a(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/n/a;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbPaused:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/n/a;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v1, Lcom/oplus/camera/n/a$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/n/a$2;-><init>(Lcom/oplus/camera/n/a;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a$b;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/n/a;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->a(Z)V

    return-void
.end method

.method private d(I)Z
    .locals 1

    .line 1596
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->isMonoIndex(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e()Z
    .locals 0

    .line 1412
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p0, :cond_0

    const-string p0, "com.oplus.back.pure.3rd.bokeh.preview.support"

    .line 1413
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

.method private e(I)Z
    .locals 0

    .line 1604
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    .line 1605
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->m()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->n()I

    move-result p0

    :goto_0
    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/n/a;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbPaused:Z

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private f()Z
    .locals 2

    const-string v0, "pref_portrait_half_body_key"

    .line 1523
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1524
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

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

.method private f(I)Z
    .locals 0

    .line 1609
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->o()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private g(I)Ljava/lang/String;
    .locals 0

    .line 1623
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->h()I

    move-result p0

    if-ne p1, p0, :cond_0

    const-string p0, "p4_1.cube.rgb.bin"

    return-object p0

    .line 1625
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->i()I

    move-result p0

    if-ne p1, p0, :cond_1

    const-string p0, "p4_3.cube.rgb.bin"

    return-object p0

    :cond_1
    const-string p0, "default"

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/n/a;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    return-object p0
.end method

.method private g()Z
    .locals 2

    const-string v0, "pref_portrait_half_body_remosaic_key"

    .line 1531
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1532
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

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

.method static synthetic h(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 0

    const-string p0, "default"

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/n/a;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/n/a;->t:Landroid/os/Handler;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 1715
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    const-string v2, "key_portrait_new_style_index"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/n/a;->o:I

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic k(Lcom/oplus/camera/n/a;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbPaused:Z

    return p0
.end method

.method static synthetic l(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic m(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/n/a;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->l:Z

    return p0
.end method


# virtual methods
.method public a()F
    .locals 0

    const-string p0, "com.oplus.portrait.zoom.value.default"

    .line 1745
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1753
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    const-string v0, "pref_portrait_half_body_key"

    .line 1754
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1755
    iput-boolean v3, p0, Lcom/oplus/camera/n/a;->mbForbidPreferenceChange:Z

    .line 1756
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1758
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 1759
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const-string v1, "off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    :goto_0
    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(F)V

    .line 1763
    :cond_1
    iput-boolean v2, p0, Lcom/oplus/camera/n/a;->mbForbidPreferenceChange:Z

    :cond_2
    const-string v0, "pref_portrait_half_body_remosaic_key"

    .line 1766
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1767
    iput-boolean v3, p0, Lcom/oplus/camera/n/a;->mbForbidPreferenceChange:Z

    .line 1768
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1769
    iput-boolean v2, p0, Lcom/oplus/camera/n/a;->mbForbidPreferenceChange:Z

    :cond_3
    return-void
.end method

.method public declared-synchronized a(ZI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "PortraitCapMode"

    .line 1637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsShelterByIndex, isShelter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    sget-object v0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/n/a;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/oplus/camera/n/a;->g(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(I)Z
    .locals 0

    .line 1600
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->l()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Z
    .locals 1

    .line 1749
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->a()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cameraIdChanged(I)V
    .locals 2

    const-string v0, "PortraitCapMode"

    const-string v1, "onCameraIdChanged"

    .line 731
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget v0, p0, Lcom/oplus/camera/n/a;->p:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/n/a;->o:I

    .line 735
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->isMonoIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 733
    :goto_0
    invoke-direct {p0, v0}, Lcom/oplus/camera/n/a;->b(Z)V

    .line 736
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->i()V

    const-string v0, ""

    .line 737
    iput-object v0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    .line 739
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->cameraIdChanged(I)V

    return-void
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 5

    .line 1054
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->changeModeAllViewWhenAnimation(IZ)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/16 v3, 0x12

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_5

    .line 1059
    iput-boolean v2, p0, Lcom/oplus/camera/n/a;->h:Z

    .line 1061
    iget-object v3, p0, Lcom/oplus/camera/n/a;->t:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 1062
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1065
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    goto :goto_0

    .line 1078
    :cond_2
    iput-boolean p2, p0, Lcom/oplus/camera/n/a;->h:Z

    if-eqz p2, :cond_3

    .line 1081
    iget-object v3, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v3

    if-ne v3, v0, :cond_5

    .line 1082
    iget-object v3, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    goto :goto_0

    .line 1085
    :cond_3
    iget-object v3, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v1, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    goto :goto_0

    .line 1071
    :cond_4
    iget-boolean v3, p0, Lcom/oplus/camera/n/a;->i:Z

    if-eqz v3, :cond_5

    .line 1072
    invoke-direct {p0, v2, v2}, Lcom/oplus/camera/n/a;->a(IZ)V

    :cond_5
    :goto_0
    if-eq v0, p1, :cond_7

    const/4 v0, 0x7

    if-eq v0, p1, :cond_7

    const/16 v0, 0x8

    if-eq v0, p1, :cond_7

    const/16 v0, 0x9

    if-eq v0, p1, :cond_7

    if-nez p2, :cond_7

    const/4 p2, 0x3

    if-eq p2, p1, :cond_7

    .line 1100
    iput-boolean v2, p0, Lcom/oplus/camera/n/a;->h:Z

    .line 1102
    iget-object p1, p0, Lcom/oplus/camera/n/a;->t:Landroid/os/Handler;

    if-eqz p1, :cond_6

    .line 1103
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1106
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_7
    return-void
.end method

.method protected disableBokehHDR(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z
    .locals 4

    .line 1648
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "PortraitCapMode"

    const-string p1, "disableBokehHDR, decisionResult null"

    .line 1650
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    monitor-exit v0

    return v1

    :cond_0
    const-string v2, "key_support_bokeh_hdr"

    .line 1655
    invoke-virtual {p0, v2}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1656
    monitor-exit v0

    return v1

    .line 1659
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getDefaultCaptureNumber()I

    move-result p0

    const/4 v2, 0x1

    if-ne v2, p0, :cond_3

    const/16 p0, 0xc

    iget v3, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-eq p0, v3, :cond_2

    const/16 p0, 0xd

    iget v3, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-eq p0, v3, :cond_2

    const/16 p0, 0x1e

    iget p1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-ne p0, p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 1663
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBlurMenuKeyByMode()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_portrait_blur_menu"

    return-object p0
.end method

.method protected getBlurValue()F
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCurrFilterIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/n/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getBlurIndex()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getBlurValue(I)F

    move-result p0

    return p0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 1

    .line 1737
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCurrFilterType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "portrait_streamer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "streamerPortrait"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "portrait"

    return-object p0
.end method

.method public getCanAddMenuOption(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_photo_ratio_key"

    .line 1045
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1049
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getCanAddMenuOption(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getCaptureStreamNum()I
    .locals 1

    const-string v0, "pref_dual_camera"

    .line 165
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureStreamNum()I

    move-result p0

    return p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 1

    .line 842
    sget-object v0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_PORTRAIT_CUSTOM_BEAUTY:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getCurrentKeys([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCaptureNumber()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->isNeonEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->isStreamerEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 144
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCaptureNumber()I

    move-result p0

    return p0
.end method

.method protected getDefaultCommonBeautyValue()I
    .locals 2

    .line 890
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->isFaceBeautyDefaultOff()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 894
    :cond_0
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p0, :cond_2

    const-string p0, "com.oplus.bokeh.beauty.open.default"

    .line 895
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/16 p0, 0x28

    return p0
.end method

.method public getDefaultZoomValue(Lcom/oplus/camera/e/h;)F
    .locals 2

    .line 1551
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getOperatingMode()I

    move-result v0

    const v1, 0x8010

    if-ne v1, v0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 1556
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/h;->b(Lcom/oplus/camera/af;)F

    move-result p0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getEffectMenuKeyByMode()Ljava/lang/String;
    .locals 1

    .line 1474
    iget p0, p0, Lcom/oplus/camera/n/a;->mCameraEntryType:I

    const-string v0, "pref_portrait_new_style_menu"

    invoke-static {v0, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnvironmentTipsThreshold()I
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.feature.front.dark.tips.threshold"

    .line 135
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "com.oplus.feature.back.dark.tips.threshold"

    .line 136
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getExpectedFrameRate()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_portrait_facebeauty_level_menu"

    return-object p0
.end method

.method protected getFaceBeautyModeIndex()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_portrait_new_style_menu"

    .line 1216
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "key_portrait_new_style_index"

    return-object p0

    .line 1220
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object p0

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

    const-string v0, "pref_portrait_new_style_menu"

    .line 1198
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->b(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1202
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFilterNameIdList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFilterNoneIndex()I
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    .line 175
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->q()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->p()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getFilterRedpotKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "neon-2020.cube.rgb.bin"

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    .line 343
    invoke-static {p0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "portrait_filter_neon_new"

    .line 344
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

.method public getFilterType(I)Ljava/lang/String;
    .locals 1

    .line 1225
    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getFilterTypeList(I)Ljava/util/List;

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

    const-string v0, "pref_portrait_new_style_menu"

    .line 1207
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->i:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1211
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getMakeupKeys()[Ljava/lang/String;
    .locals 1

    .line 847
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getCurrentKeys(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMakeupOpenState()I
    .locals 1

    .line 861
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 865
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupOpenState()I

    move-result p0

    return p0
.end method

.method protected getMakeupTypeKey()Ljava/lang/String;
    .locals 2

    .line 852
    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraEntryType:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    const-string v1, "pref_portrait_makeup_type"

    if-eqz v0, :cond_0

    .line 853
    iget p0, p0, Lcom/oplus/camera/n/a;->mCameraEntryType:I

    invoke-static {v1, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getOperatingMode()I
    .locals 1

    const-string v0, "pref_dual_camera"

    .line 220
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/n/a;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x8011

    return p0

    :cond_1
    :goto_0
    const p0, 0x8010

    return p0

    :cond_2
    const-string p0, "com.oplus.portrait.single_blur_operating"

    .line 228
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x8026

    goto :goto_1

    :cond_3
    const p0, 0x8001

    :goto_1
    return p0
.end method

.method protected getPhotoRatio()Ljava/lang/String;
    .locals 1

    .line 1445
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1002da

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 5

    const-string v0, "pref_dual_camera"

    .line 412
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "PortraitCapMode"

    if-nez v0, :cond_2

    const/16 v0, 0x100

    .line 413
    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "com.oplus.portrait.front.max.size.support"

    .line 416
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 417
    invoke-static {v0, v2, v3}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const-string v4, "8000000"

    .line 419
    invoke-static {v0, v4, v3}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 427
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPictureSize, width: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 433
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    const-string v2, "x"

    if-eqz v0, :cond_4

    const-string p0, "com.oplus.front.portrait.normal.picturesize"

    .line 434
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPictureSize, front size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0

    :cond_4
    const-string v0, "type_still_capture_yuv_main"

    .line 442
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/n/a;->getSurfaceSize(Ljava/lang/String;Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPictureSize, use surfaceSize, rear size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_5
    const-string p0, "com.oplus.tunning.back.portrait.normal.picturesize"

    .line 451
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 454
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPictureSize, rear size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    const-string v0, "pref_dual_camera"

    .line 382
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oplus.single.camera.use.commom.portrait.previewsize"

    .line 383
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 387
    :cond_0
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p0, :cond_1

    const-string p0, "com.oplus.front.portrait.previewsize"

    .line 388
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "com.oplus.rear.portrait.previewsize"

    .line 389
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;
    .locals 3

    const-string v0, "type_sub_preview_frame"

    .line 394
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_3

    const p2, 0x20203859

    .line 395
    invoke-virtual {p1, p2}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v0

    .line 396
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    invoke-static {p1, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "full"

    .line 397
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-string p1, "16_9"

    .line 398
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide p0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    goto :goto_0

    :cond_1
    const-string p1, "square"

    .line 399
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 402
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewSize, depth size list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PortraitCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {v0, p0, p1, p2}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 407
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewStreamNum()I
    .locals 1

    const-string v0, "pref_dual_camera"

    .line 152
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    .line 160
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewStreamNum()I

    move-result p0

    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 3

    .line 782
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 784
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 785
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 786
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result p0

    const/16 v1, 0x1d

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x17

    .line 789
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x1a

    .line 787
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 7

    .line 483
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0x1e

    const/4 v3, 0x3

    const/16 v4, 0x22

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "key_support_decrease_brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_auto_night_scence_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "key_remosaic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "key_support_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "func_face_slender_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_portrait_half_body_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "key_dark_environment_tips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "func_mode_panel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "func_face_blur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_front_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "pref_portrait_new_style_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "pref_portrait_blur_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "func_bokeh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "key_support_bokeh_hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "pref_dual_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "func_face_beauty_custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "func_face_beauty_common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "func_cache_click_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "func_face_beauty_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "pref_setting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_1c
    const-string v0, "pref_support_post_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1d
    const-string v0, "func_torch_soft_light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_1e
    const-string v0, "key_filter_menu_updated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto :goto_1

    :sswitch_1f
    const-string v0, "pref_save_jpg_after_pause_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_20
    const-string v0, "pref_portrait_half_body_remosaic_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_21
    const-string v0, "key_support_show_dim_hint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_22
    const-string v0, "pref_support_raw_post_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto :goto_1

    :sswitch_23
    const-string v0, "key_support_mode_change_vibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 666
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 660
    :pswitch_0
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->s:Z

    return p0

    :pswitch_1
    const-string p1, "pref_camera_flashmode_key"

    .line 654
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.oplus.feature.screen.bright.portrait.support"

    .line 655
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    .line 657
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    move v5, v6

    :cond_2
    :goto_2
    return v5

    .line 650
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v1, "aps_algo_raw2yuv"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 651
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->isStreamerOpen()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :cond_4
    :goto_3
    return v5

    .line 647
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_4
    const-string p1, "com.oplus.feature.torch.softlight.support"

    .line 643
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v5, v6

    :goto_4
    return v5

    :pswitch_5
    const-string p1, "func_torch_soft_light"

    .line 637
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "com.oplus.feature.screen.bright.portrait.support"

    .line 638
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    .line 640
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    move v5, v6

    :cond_7
    :goto_5
    return v5

    .line 631
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCurrFilterIndex()I

    move-result p1

    const-string v0, "func_bokeh"

    .line 632
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "func_face_blur"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 633
    :cond_8
    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 634
    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->e(I)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_6

    :cond_9
    move v5, v6

    :goto_6
    return v5

    .line 627
    :pswitch_7
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/n/a;->getSingleBlurAlgoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "pref_dual_camera"

    .line 628
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_7

    :cond_a
    move v5, v6

    :goto_7
    return v5

    .line 621
    :pswitch_8
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v1, "aps_algo_bokeh"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 622
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v1, "aps_algo_front_bokeh"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    const-string p1, "pref_dual_camera"

    .line 624
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_8

    :cond_c
    move v5, v6

    :goto_8
    return v5

    .line 614
    :pswitch_9
    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p1, :cond_d

    const-string p1, "com.oplus.feature.custom.makeup.front.support"

    .line 615
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "com.oplus.feature.makeup.low.performance"

    .line 616
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 618
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_9

    :cond_d
    move v5, v6

    :goto_9
    return v5

    :pswitch_a
    const-string p1, "func_face_beauty_process"

    .line 609
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p0, :cond_f

    const-string p0, "com.oplus.feature.face.beauty.custom.menu.support"

    .line 611
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_a

    :cond_e
    move v5, v6

    :cond_f
    :goto_a
    return v5

    .line 604
    :pswitch_b
    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p1, :cond_10

    const-string p1, "func_face_beauty_process"

    .line 605
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "com.oplus.feature.face.beauty.custom.menu.support"

    .line 606
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_b

    :cond_10
    move v5, v6

    :goto_b
    return v5

    :pswitch_c
    const-string p1, "func_face_beauty_process"

    .line 598
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p0, :cond_12

    const-string p0, "com.oplus.facebeauty.version"

    .line 600
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v1, :cond_11

    goto :goto_c

    :cond_11
    move v5, v6

    :cond_12
    :goto_c
    return v5

    .line 593
    :pswitch_d
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v1, "aps_algo_face_beauty"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "pref_dual_camera"

    .line 594
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "com.oplus.bokeh.beauty.support"

    .line 595
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_d

    :cond_13
    move v5, v6

    :cond_14
    :goto_d
    return v5

    .line 583
    :pswitch_e
    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p1, :cond_15

    const-string p1, "com.oplus.feature.front.camera.auto.zoom.support"

    .line 584
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 586
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_15

    return v5

    :cond_15
    return v6

    :pswitch_f
    const-string p1, "pref_portrait_half_body_key"

    .line 578
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "pref_portrait_half_body_remosaic_key"

    .line 579
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "pref_front_zoom_key"

    .line 580
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_e

    :cond_16
    move v5, v6

    :cond_17
    :goto_e
    return v5

    :pswitch_10
    const-string p1, "com.oplus.portrait.half.body.remosaic.support"

    .line 574
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p0, :cond_18

    goto :goto_f

    :cond_18
    move v5, v6

    :goto_f
    return v5

    :pswitch_11
    const-string p1, "com.oplus.portrait.half.body.support"

    .line 570
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p0, :cond_19

    goto :goto_10

    :cond_19
    move v5, v6

    :goto_10
    return v5

    .line 562
    :pswitch_12
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez p1, :cond_1a

    return v6

    :cond_1a
    const-string p1, "com.oplus.feature.auto.night.scence.support"

    .line 566
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 567
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_11

    :cond_1b
    move v5, v6

    :goto_11
    return v5

    .line 559
    :pswitch_13
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_12

    :cond_1c
    move v5, v6

    :goto_12
    return v5

    .line 551
    :pswitch_14
    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz p1, :cond_1d

    .line 552
    invoke-static {}, Lcom/oplus/camera/e/a;->e()Z

    move-result p0

    return p0

    .line 554
    :cond_1d
    invoke-static {}, Lcom/oplus/camera/e/a;->d()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 555
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCurrFilterIndex()I

    move-result p0

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->l()I

    move-result p1

    if-eq p0, p1, :cond_1e

    goto :goto_13

    :cond_1e
    move v5, v6

    :goto_13
    return v5

    :pswitch_15
    const-string p1, "com.oplus.support.night.gesture_shutter"

    .line 547
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p0, :cond_20

    .line 548
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_14

    :cond_1f
    move v5, v6

    :cond_20
    :goto_14
    return v5

    .line 544
    :pswitch_16
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    return p0

    .line 539
    :pswitch_17
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "com.oplus.feature.postprocess.savejpeg.support"

    .line 540
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 541
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_15

    :cond_21
    move v5, v6

    :goto_15
    return v5

    .line 532
    :pswitch_18
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_22

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_22

    return v5

    :cond_22
    return v6

    .line 527
    :pswitch_19
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v1, "aps_algo_filter"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    const-string p1, "pref_portrait_new_style_menu"

    .line 528
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "pref_dual_camera"

    .line 529
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_16

    :cond_23
    move v5, v6

    :goto_16
    return v5

    :pswitch_1a
    const-string p1, "com.oplus.decrease.brightness.support"

    .line 523
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez p0, :cond_24

    goto :goto_17

    :cond_24
    move v5, v6

    :goto_17
    return v5

    .line 519
    :pswitch_1b
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v0, "aps_algo_filter"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "com.oplus.feature.portrait.new.style.support"

    .line 520
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_18

    :cond_25
    move v5, v6

    :goto_18
    return v5

    :pswitch_1c
    const-string p1, "pref_portrait_new_style_menu"

    .line 515
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "pref_filter_menu"

    .line 516
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_19

    :cond_26
    move v5, v6

    :cond_27
    :goto_19
    return v5

    .line 511
    :pswitch_1d
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v1, "aps_algo_single_aicolor"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    const-string p1, "portrait_retention"

    .line 512
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_1a

    :cond_28
    move v5, v6

    :goto_1a
    return v5

    .line 498
    :pswitch_1e
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "com.oplus.cache.click.capture.support"

    .line 499
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 501
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v0, v0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v3, v0, :cond_2a

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v0, v0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v2, v0, :cond_2a

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget p0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v4, p0, :cond_29

    goto :goto_1b

    :cond_29
    move v5, v6

    .line 506
    :cond_2a
    :goto_1b
    monitor-exit p1

    return v5

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1f
    return v6

    :pswitch_20
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x768ef054 -> :sswitch_23
        -0x74ade66d -> :sswitch_22
        -0x7336bb70 -> :sswitch_21
        -0x709156ea -> :sswitch_20
        -0x68904d91 -> :sswitch_1f
        -0x686eea9e -> :sswitch_1e
        -0x61c4af01 -> :sswitch_1d
        -0x5f5094a8 -> :sswitch_1c
        -0x5efa20f1 -> :sswitch_1b
        -0x541be82c -> :sswitch_1a
        -0x500c4e2d -> :sswitch_19
        -0x4f05d6eb -> :sswitch_18
        -0x4322f869 -> :sswitch_17
        -0x423965f9 -> :sswitch_16
        -0x41e20473 -> :sswitch_15
        -0x2d1ad7d4 -> :sswitch_14
        -0x2a6ff1b8 -> :sswitch_13
        -0x27f68a5a -> :sswitch_12
        -0x244d55d1 -> :sswitch_11
        -0x1fa329cc -> :sswitch_10
        -0xb0f5f67 -> :sswitch_f
        -0x953b61c -> :sswitch_e
        -0x861d1b -> :sswitch_d
        0x140b168f -> :sswitch_c
        0x20a8fd4e -> :sswitch_b
        0x26d830c3 -> :sswitch_a
        0x29bef9ad -> :sswitch_9
        0x2d7e88c6 -> :sswitch_8
        0x4a67fef8 -> :sswitch_7
        0x51f99d59 -> :sswitch_6
        0x5303d65d -> :sswitch_5
        0x5666c336 -> :sswitch_4
        0x65b53143 -> :sswitch_3
        0x74ed85e4 -> :sswitch_2
        0x77894042 -> :sswitch_1
        0x7e1951aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_20
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
    .locals 1

    .line 712
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 714
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_setting_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "pref_portrait_blur_menu"

    .line 718
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 719
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCurrFilterIndex()I

    move-result p1

    const-string v0, "func_bokeh"

    .line 720
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "func_face_blur"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCurrFilterIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/n/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 722
    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->e(I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.oplus.portrait.blur.level.enable"

    .line 723
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 726
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 715
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected getSupportShowCustomAll()Z
    .locals 1

    const-string v0, "com.oplus.feature.makeup.low.performance"

    .line 870
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 871
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 875
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportShowCustomAll()Z

    move-result p0

    return p0
.end method

.method public getZSLMode()Z
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/16 v0, 0x1e

    iget v1, p0, Lcom/oplus/camera/n/a;->mApsDecisionFeatureType:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0x22

    iget v1, p0, Lcom/oplus/camera/n/a;->mApsDecisionFeatureType:I

    if-ne v0, v1, :cond_3

    .line 703
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/n/a;->mCameraId:I

    const-string v2, "aps_algo_single_portrait"

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 706
    :cond_3
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZSLMode()Z

    move-result p0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 2

    .line 1515
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    const-string v1, "pref_portrait_half_body_key"

    .line 1516
    invoke-virtual {p0, v1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->j(Z)V

    const-string v1, "pref_portrait_half_body_remosaic_key"

    .line 1517
    invoke-virtual {p0, v1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->k(Z)V

    return-object v0
.end method

.method protected hideViewWhileResume()V
    .locals 0

    return-void
.end method

.method public isBackPortraitCameraSwitching()Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->j:Z

    return p0
.end method

.method protected isBlurOpen()Z
    .locals 1

    const-string v0, "func_bokeh"

    .line 473
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "func_face_blur"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

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

.method protected isFaceBeautyOrMakeupOpen()Z
    .locals 1

    const-string v0, "com.oplus.bokeh.beauty.support"

    .line 880
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_dual_camera"

    .line 881
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 885
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceBeautyOrMakeupOpen()Z

    move-result p0

    return p0
.end method

.method public isFilterOpen(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "portrait_retention"

    .line 671
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "portrait_streamer"

    .line 672
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    const-string v0, "neon-2020.cube.rgb.bin"

    .line 673
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->isFilterOpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMonoIndex(I)Z
    .locals 0

    .line 1592
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->h()I

    move-result p0

    if-eq p1, p0, :cond_1

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->i()I

    move-result p0

    if-ne p1, p0, :cond_0

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

.method public isNeonEnable()Z
    .locals 1

    .line 1727
    iget-object p0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    const-string v0, "neon-2020.cube.rgb.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isStreamerEnable()Z
    .locals 1

    .line 1732
    iget-object p0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    const-string v0, "portrait_streamer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isStreamerOpen()Z
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->a(I)Z

    move-result p0

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needConfigPhysicalStream(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "type_main_preview_frame"

    .line 1564
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "pref_dual_camera"

    const-string v3, "com.oplus.qualcomm.physical.id.support"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 1565
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return v4

    .line 1569
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1570
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1571
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    return v1

    :cond_3
    const-string v0, "type_sub_preview_frame"

    .line 1574
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1575
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1576
    invoke-virtual {p0, v2}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    return v1

    :cond_5
    const-string v0, "type_still_capture_yuv_main"

    .line 1579
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "type_still_capture_yuv_sub"

    .line 1580
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "type_tuning_data_yuv"

    .line 1581
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 1587
    :cond_6
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needConfigPhysicalStream(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1582
    :cond_7
    :goto_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1583
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1584
    :cond_8
    invoke-virtual {p0, v2}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v1, v4

    :goto_3
    return v1
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "type_sub_preview_frame"

    .line 1417
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pref_dual_camera"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    .line 1418
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1419
    invoke-virtual {p0, v1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1420
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->e()Z

    move-result p0

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    const-string v0, "type_preview_frame"

    .line 1423
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "func_face_blur"

    .line 1424
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "pref_camera_gesture_shutter_key"

    .line 1425
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2

    :cond_4
    const-string v0, "type_still_capture_yuv_sub"

    .line 1428
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1429
    invoke-virtual {p0, v1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "type_still_capture_jpeg"

    .line 1432
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1433
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsCapture()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_6
    const-string v0, "type_capture"

    .line 1436
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v3

    .line 1440
    :cond_7
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 1

    const-string p1, "PortraitCapMode"

    const-string p2, "onAfterPictureTaken"

    .line 1028
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1031
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getZSLMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1032
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->n()V

    .line 1035
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 1038
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 1039
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->resetAeLockAfterCaptured()V

    .line 1040
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->resetAwbLockAfterCaptured()V

    return-void
.end method

.method public onAfterSnapping()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 1

    .line 936
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    .line 938
    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->r:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 942
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->s:Z

    const/4 p1, 0x1

    .line 943
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->r:Z

    const/4 p1, -0x1

    .line 944
    iput p1, p0, Lcom/oplus/camera/n/a;->m:I

    .line 946
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/n/a$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/n/a$4;-><init>(Lcom/oplus/camera/n/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 0

    const-string p1, "PortraitCapMode"

    const-string p2, "onBeforePictureTaken"

    .line 1019
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-boolean p0, p0, Lcom/oplus/camera/n/a;->mbPaused:Z

    if-eqz p0, :cond_0

    :cond_0
    return-void
.end method

.method protected onBeforePreview()V
    .locals 5

    const-string v0, "PortraitCapMode"

    const-string v1, "onBeforePreview"

    .line 798
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    const-string v2, "portrait_streamer"

    .line 801
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1001d8

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCurrFilterIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/n/a;->f(I)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/n/a;->updateRearAicolorEnable(ZZ)V

    .line 807
    iput-boolean v2, p0, Lcom/oplus/camera/n/a;->r:Z

    .line 809
    iget-boolean v1, p0, Lcom/oplus/camera/n/a;->j:Z

    if-eqz v1, :cond_1

    .line 810
    iput-boolean v2, p0, Lcom/oplus/camera/n/a;->j:Z

    .line 811
    iget v1, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/n/a;->getFilterType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;Z)Z

    :cond_1
    const-string v1, "func_face_beauty_process"

    .line 814
    invoke-virtual {p0, v1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 815
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getFaceBeautyCurrIndex()I

    move-result v1

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBeforePreview, level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/n/a;->updateFaceBeautyLevel(IZ)V

    .line 820
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCustomBeautyValues()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->updateCustomBeautyValues([I)V

    .line 822
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_3

    .line 823
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    .line 824
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCustomBeautyValues()[I

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->a([I)V

    goto :goto_0

    .line 827
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/n/a;->updateFaceBeautyLevel(IZ)V

    .line 829
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_3

    .line 830
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 3

    const-string v0, "PortraitCapMode"

    const-string v1, "onBeforeSnapping"

    .line 903
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 906
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 907
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/n/a$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/n/a$3;-><init>(Lcom/oplus/camera/n/a;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/16 v0, 0x8

    .line 924
    iget-object v2, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, v2, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v0, v2, :cond_1

    const/16 v0, 0x1e

    iget-object v2, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, v2, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v0, v2, :cond_1

    const/16 v0, 0x22

    iget-object p1, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget p1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v0, p1, :cond_2

    .line 927
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 928
    iput-boolean v1, p0, Lcom/oplus/camera/n/a;->mbResetAwbLockAfterCaptured:Z

    :cond_2
    return v1
.end method

.method public onCameraPermissionGranted()V
    .locals 0

    .line 198
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->c()V

    .line 199
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->c()V

    .line 200
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->i()V

    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 3

    const-string p1, "PortraitCapMode"

    const-string v0, "onDeInitCameraMode"

    .line 293
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->s:Z

    .line 296
    invoke-virtual {p0, p1, p1}, Lcom/oplus/camera/n/a;->updateFaceBeautyLevel(IZ)V

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1001d8

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/n/a;->t:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_4

    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->U()V

    .line 313
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->k:Z

    if-eqz v0, :cond_3

    const-string v0, "on"

    .line 314
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "off"

    .line 316
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    .line 320
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 324
    iput v0, p0, Lcom/oplus/camera/n/a;->n:F

    const/4 v0, 0x2

    .line 325
    iget v2, p0, Lcom/oplus/camera/n/a;->p:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/n/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move p1, v1

    :cond_6
    invoke-direct {p0, p1}, Lcom/oplus/camera/n/a;->b(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const-string p0, "PortraitCapMode"

    const-string v0, "onDestroy"

    .line 777
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onFilterItemChange(I)V
    .locals 5

    .line 1126
    iget v0, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/n/a;->a(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1127
    iput-boolean v1, p0, Lcom/oplus/camera/n/a;->j:Z

    goto :goto_0

    .line 1129
    :cond_0
    iput-boolean v2, p0, Lcom/oplus/camera/n/a;->j:Z

    .line 1132
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_2

    .line 1133
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getFilterType(I)Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getFilterRedpotKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1137
    iget-object v4, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(I)V

    .line 1138
    iget-object v4, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1141
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/n/a;->s:Z

    .line 1144
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onFilterItemChange(I)V

    .line 1146
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->s:Z

    if-eqz v0, :cond_3

    .line 1147
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->j:Z

    iput-boolean v0, p0, Lcom/oplus/camera/n/a;->s:Z

    .line 1148
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->updateBlurValue()V

    .line 1150
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/oplus/camera/n/a$5;

    invoke-direct {v3, p0}, Lcom/oplus/camera/n/a$5;-><init>(Lcom/oplus/camera/n/a;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1158
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->mbFrontCamera:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/oplus/camera/n/a;->o:I

    if-eq v0, p1, :cond_6

    .line 1159
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->j:Z

    if-eqz v0, :cond_5

    .line 1160
    iput-boolean v2, p0, Lcom/oplus/camera/n/a;->h:Z

    .line 1161
    invoke-direct {p0, v1}, Lcom/oplus/camera/n/a;->a(Z)V

    .line 1162
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->X()V

    const/4 v0, 0x2

    .line 1163
    iget v3, p0, Lcom/oplus/camera/n/a;->p:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/n/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/n/a;->b(Z)V

    .line 1166
    :cond_5
    iput p1, p0, Lcom/oplus/camera/n/a;->o:I

    :cond_6
    return-void
.end method

.method protected onFilterMenuClicked()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 355
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 356
    iget-object v2, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    const-string v4, "pref_portrait_new_style_menu"

    invoke-interface {v2, v4, v3, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;ZII)V

    .line 357
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "portrait_filter_reddot_show"

    .line 358
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 359
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1399
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    .line 1400
    check-cast p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 1407
    :cond_1
    iget p0, p0, Lcom/oplus/camera/n/a;->m:I

    iput p0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mBokehCode:I

    return-object p1
.end method

.method public onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_camera_photo_ratio_key"

    .line 684
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 685
    invoke-static {v0, p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 686
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string p2, "standard"

    .line 688
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 689
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 695
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onHomeKeyClick()V
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1541
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    .line 1542
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 1544
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onInitCameraMode()V
    .locals 3

    const-string v0, "PortraitCapMode"

    const-string v1, "onInitCameraMode"

    .line 240
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/oplus/camera/n/a;->r:Z

    .line 243
    iput-boolean v0, p0, Lcom/oplus/camera/n/a;->s:Z

    const-string v1, ""

    .line 244
    iput-object v1, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    .line 246
    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v2, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1000fd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;)V

    const-string v0, "pref_dual_camera"

    .line 252
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/n/a;->i:Z

    .line 253
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/n/a;->k:Z

    .line 255
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->c()V

    .line 256
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->c()V

    .line 257
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->i()V

    .line 258
    iget v0, p0, Lcom/oplus/camera/n/a;->mOrientation:I

    invoke-static {v0}, Lco/polarr/renderer/PolarrRender;->updateGlobalScreenOrientation(I)V

    .line 260
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->k:Z

    if-eqz v0, :cond_1

    const-string v0, "on"

    .line 261
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "off"

    .line 263
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    .line 266
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->d()V

    return-void
.end method

.method public onMenuOptionAdded(Ljava/lang/String;)V
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMenuOptionAdded, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PortraitCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_portrait_new_style_menu"

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->ad()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0708be

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 334
    iget-object v1, p0, Lcom/oplus/camera/n/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 335
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;ZII)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "PortraitCapMode"

    const-string v1, "onPause"

    .line 744
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/oplus/camera/n/a;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 747
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->U()V

    :cond_2
    const-string v0, ""

    .line 758
    iput-object v0, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    .line 759
    iput-boolean v1, p0, Lcom/oplus/camera/n/a;->r:Z

    .line 760
    iput-boolean v1, p0, Lcom/oplus/camera/n/a;->h:Z

    .line 761
    iput-boolean v1, p0, Lcom/oplus/camera/n/a;->j:Z

    .line 762
    iput-boolean v1, p0, Lcom/oplus/camera/n/a;->s:Z

    .line 763
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->y()V

    const/4 v0, 0x2

    .line 764
    iget v2, p0, Lcom/oplus/camera/n/a;->p:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/oplus/camera/n/a;->o:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/n/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lcom/oplus/camera/n/a;->b(Z)V

    .line 766
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->at()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 767
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->k:Z

    if-eqz v0, :cond_4

    const-string v0, "on"

    .line 768
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "off"

    .line 770
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 5

    .line 1235
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    const-string v0, "PortraitCapMode"

    if-nez p1, :cond_0

    .line 1238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewCaptureResult, invalid previewResult: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1243
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    .line 1245
    iget-boolean v2, p0, Lcom/oplus/camera/n/a;->h:Z

    if-eqz v2, :cond_4

    const-string v2, "pref_dual_camera"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x2

    .line 1248
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1249
    invoke-direct {p0, v1}, Lcom/oplus/camera/n/a;->a(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    goto :goto_0

    .line 1251
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1252
    invoke-direct {p0, v1}, Lcom/oplus/camera/n/a;->a(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    goto :goto_0

    .line 1254
    :cond_2
    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_BOKEN_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v3}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1255
    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_BOKEN_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v2}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    move p1, v2

    .line 1259
    :goto_0
    iget v2, p0, Lcom/oplus/camera/n/a;->m:I

    if-eq v2, p1, :cond_4

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewCaptureResult, bokehState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/n/a;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iput p1, p0, Lcom/oplus/camera/n/a;->m:I

    .line 1263
    iget p1, p0, Lcom/oplus/camera/n/a;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/n/a;->a(IZ)V

    .line 1267
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/camera/e/b;->ae:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 1270
    aget v1, p1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_5

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 1271
    aget p1, p1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/oplus/camera/n/a;->n:F

    .line 1275
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    const-string v0, "portrait_retention"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    const-string v0, "portrait_streamer"

    .line 1276
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/n/a;->q:Ljava/lang/String;

    const-string v0, "neon-2020.cube.rgb.bin"

    .line 1277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1278
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->processFaceCount()V

    :cond_7
    return-void
.end method

.method protected onResume(Z)V
    .locals 1

    const-string p1, "PortraitCapMode"

    const-string v0, "onResume"

    .line 365
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pref_dual_camera"

    .line 367
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/n/a;->h:Z

    .line 368
    iget p1, p0, Lcom/oplus/camera/n/a;->mOrientation:I

    invoke-static {p1}, Lco/polarr/renderer/PolarrRender;->updateGlobalScreenOrientation(I)V

    .line 369
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->i()V

    .line 371
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->T()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 372
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->k:Z

    if-eqz p1, :cond_1

    const-string p1, "on"

    .line 373
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "off"

    .line 375
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_portrait_half_body_key"

    .line 1484
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->mbForbidPreferenceChange:Z

    if-nez v0, :cond_1

    .line 1485
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_0

    .line 1486
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->au()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "pref_portrait_half_body_remosaic_key"

    .line 1492
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->mbForbidPreferenceChange:Z

    if-nez v0, :cond_3

    .line 1493
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_2

    .line 1494
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->av()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "pref_camera_id_key"

    .line 1500
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1501
    iget-boolean p1, p0, Lcom/oplus/camera/n/a;->k:Z

    if-eqz p1, :cond_4

    const-string p1, "on"

    .line 1502
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "off"

    .line 1504
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1510
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 0

    .line 1009
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onShutterCallback(ZZ)V

    if-eqz p2, :cond_0

    .line 1012
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1013
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->h()V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1808
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1810
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    .line 1814
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStop()V
    .locals 1

    const-string p0, "PortraitCapMode"

    const-string v0, "onStop"

    .line 679
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 3

    .line 970
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    const-string v1, "button_color_inside_none"

    const/16 v2, 0x17

    if-eqz p1, :cond_1

    .line 973
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 974
    :goto_0
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 975
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 977
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0xb

    .line 978
    :goto_1
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 979
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 982
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/n/a;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method public resetMetadataBokehCode()V
    .locals 1

    .line 1114
    iget v0, p0, Lcom/oplus/camera/n/a;->mCameraEntryType:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 1115
    iput v0, p0, Lcom/oplus/camera/n/a;->m:I

    :cond_0
    return-void
.end method

.method public resetMonoFilter()V
    .locals 0

    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 2

    .line 1781
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    const-string v0, "pref_dual_camera"

    .line 1783
    invoke-virtual {p0, v0}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1784
    invoke-direct {p0}, Lcom/oplus/camera/n/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/n/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1787
    :cond_0
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PORTAIT_BODY_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "full_body"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    goto :goto_1

    .line 1785
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PORTAIT_BODY_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "half_body"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_2
    :goto_1
    const-string v0, "com.oplus.portrait.single_blur_operating"

    .line 1791
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1794
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PORTAIT_BOKEH_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "single_bokeh"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 1797
    :cond_3
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PORTRAIT_STREAMER_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 1798
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->isStreamerOpen()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "on"

    goto :goto_2

    :cond_4
    const-string p0, "off"

    .line 1797
    :goto_2
    invoke-virtual {p1, v0, p0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setOrientation(I)V

    .line 182
    invoke-static {p1}, Lco/polarr/renderer/PolarrRender;->updateGlobalScreenOrientation(I)V

    return-void
.end method

.method protected updateFilterParam(I)V
    .locals 3

    .line 1172
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const-string v1, "PortraitCapMode"

    if-eqz v0, :cond_4

    .line 1173
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->isVividEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq p1, v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->forceCloseVividEffect()V

    .line 1177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->getFilterType(I)Ljava/lang/String;

    move-result-object p1

    .line 1179
    iget-boolean v0, p0, Lcom/oplus/camera/n/a;->j:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1180
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/n/a;->a(Ljava/lang/String;Z)Z

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    .line 1184
    iget-object v0, p0, Lcom/oplus/camera/n/a;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/n/a;->isFilterOpen(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1, v2}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;ZZ)V

    .line 1185
    iget-object p1, p0, Lcom/oplus/camera/n/a;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PORTRAIT_NEON_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/n/a;->isNeonEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "on"

    goto :goto_0

    :cond_2
    const-string p0, "off"

    :goto_0
    invoke-interface {p1, v0, p0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p0, "updateFilterParam, mOneCamera is null ! "

    .line 1188
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1191
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFilterParam, mPreviewEffectProcess: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/n/a;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPreferences: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/n/a;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateHintView()V
    .locals 2

    .line 1230
    iget v0, p0, Lcom/oplus/camera/n/a;->m:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/n/a;->a(IZ)V

    return-void
.end method
