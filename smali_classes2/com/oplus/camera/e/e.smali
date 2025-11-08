.class public Lcom/oplus/camera/e/e;
.super Lcom/oplus/camera/e/g;
.source "OneCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/e/e$a;
    }
.end annotation


# instance fields
.field private A:Lcom/oplus/ocs/camera/CameraUnitClient;

.field private B:Lcom/oplus/ocs/camera/CameraDevice;

.field private C:Lcom/oplus/camera/e/d$e;

.field private D:Lcom/oplus/camera/e/h;

.field private E:Lcom/oplus/camera/e/d$d;

.field private F:Lcom/oplus/camera/e/d$a;

.field private G:Lcom/oplus/camera/e/b;

.field private H:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:Landroid/media/ImageWriter;

.field private X:Lcom/oplus/camera/e/c;

.field private Y:Z

.field private Z:Lcom/oplus/camera/e/e$a;

.field private aa:Landroid/os/ConditionVariable;

.field private ab:Landroid/os/ConditionVariable;

.field private ac:Landroid/os/ConditionVariable;

.field private ad:Landroid/os/ConditionVariable;

.field private final ae:Landroid/os/ConditionVariable;

.field private af:Lcom/oplus/camera/v/c;

.field private ag:Z

.field private volatile ah:Z

.field private ai:Lcom/oplus/camera/e/d$c;

.field private aj:I

.field private ak:Lcom/oplus/ocs/camera/CameraPictureCallback;

.field private final al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

.field private final am:Lcom/oplus/camera/c/a;

.field private final an:Lcom/oplus/camera/e/a/a;

.field private final z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 131
    invoke-direct {p0, p1}, Lcom/oplus/camera/e/g;-><init>(I)V

    .line 89
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/e/e;->z:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/oplus/camera/e/e;->A:Lcom/oplus/ocs/camera/CameraUnitClient;

    .line 91
    iput-object p1, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    .line 92
    iput-object p1, p0, Lcom/oplus/camera/e/e;->C:Lcom/oplus/camera/e/d$e;

    .line 93
    iput-object p1, p0, Lcom/oplus/camera/e/e;->D:Lcom/oplus/camera/e/h;

    .line 94
    iput-object p1, p0, Lcom/oplus/camera/e/e;->E:Lcom/oplus/camera/e/d$d;

    .line 95
    iput-object p1, p0, Lcom/oplus/camera/e/e;->F:Lcom/oplus/camera/e/d$a;

    .line 96
    iput-object p1, p0, Lcom/oplus/camera/e/e;->G:Lcom/oplus/camera/e/b;

    .line 97
    iput-object p1, p0, Lcom/oplus/camera/e/e;->H:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/oplus/camera/e/e;->I:Z

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/oplus/camera/e/e;->J:Z

    .line 100
    iput v0, p0, Lcom/oplus/camera/e/e;->K:I

    const-string v2, "off"

    .line 101
    iput-object v2, p0, Lcom/oplus/camera/e/e;->L:Ljava/lang/String;

    .line 102
    iput-boolean v0, p0, Lcom/oplus/camera/e/e;->M:Z

    .line 103
    iput-boolean v0, p0, Lcom/oplus/camera/e/e;->N:Z

    .line 104
    iput-boolean v1, p0, Lcom/oplus/camera/e/e;->O:Z

    .line 105
    iput-boolean v1, p0, Lcom/oplus/camera/e/e;->P:Z

    const/4 v2, 0x4

    .line 106
    iput v2, p0, Lcom/oplus/camera/e/e;->Q:I

    .line 107
    iput v1, p0, Lcom/oplus/camera/e/e;->R:I

    .line 108
    iput v1, p0, Lcom/oplus/camera/e/e;->S:I

    .line 109
    iput v0, p0, Lcom/oplus/camera/e/e;->T:I

    .line 110
    iput v0, p0, Lcom/oplus/camera/e/e;->U:I

    .line 112
    iput v0, p0, Lcom/oplus/camera/e/e;->V:I

    .line 113
    iput-object p1, p0, Lcom/oplus/camera/e/e;->W:Landroid/media/ImageWriter;

    .line 114
    iput-object p1, p0, Lcom/oplus/camera/e/e;->X:Lcom/oplus/camera/e/c;

    .line 115
    iput-boolean v0, p0, Lcom/oplus/camera/e/e;->Y:Z

    .line 116
    new-instance v2, Lcom/oplus/camera/e/e$a;

    invoke-direct {v2, p0, p1}, Lcom/oplus/camera/e/e$a;-><init>(Lcom/oplus/camera/e/e;Lcom/oplus/camera/e/e$1;)V

    iput-object v2, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    .line 117
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/e/e;->aa:Landroid/os/ConditionVariable;

    .line 118
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/e/e;->ab:Landroid/os/ConditionVariable;

    .line 119
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/e/e;->ac:Landroid/os/ConditionVariable;

    .line 120
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/e/e;->ad:Landroid/os/ConditionVariable;

    .line 121
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v2, p0, Lcom/oplus/camera/e/e;->ae:Landroid/os/ConditionVariable;

    .line 122
    iput-object p1, p0, Lcom/oplus/camera/e/e;->af:Lcom/oplus/camera/v/c;

    .line 123
    iput-boolean v0, p0, Lcom/oplus/camera/e/e;->ag:Z

    .line 124
    iput-boolean v0, p0, Lcom/oplus/camera/e/e;->ah:Z

    .line 126
    iput-object p1, p0, Lcom/oplus/camera/e/e;->ai:Lcom/oplus/camera/e/d$c;

    .line 127
    iput v0, p0, Lcom/oplus/camera/e/e;->aj:I

    .line 128
    iput-object p1, p0, Lcom/oplus/camera/e/e;->ak:Lcom/oplus/ocs/camera/CameraPictureCallback;

    .line 407
    new-instance p1, Lcom/oplus/camera/e/e$4;

    invoke-direct {p1, p0}, Lcom/oplus/camera/e/e$4;-><init>(Lcom/oplus/camera/e/e;)V

    iput-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    .line 545
    new-instance p1, Lcom/oplus/camera/e/e$5;

    invoke-direct {p1, p0}, Lcom/oplus/camera/e/e$5;-><init>(Lcom/oplus/camera/e/e;)V

    iput-object p1, p0, Lcom/oplus/camera/e/e;->am:Lcom/oplus/camera/c/a;

    .line 558
    new-instance p1, Lcom/oplus/camera/e/e$6;

    invoke-direct {p1, p0}, Lcom/oplus/camera/e/e$6;-><init>(Lcom/oplus/camera/e/e;)V

    iput-object p1, p0, Lcom/oplus/camera/e/e;->an:Lcom/oplus/camera/e/a/a;

    return-void
.end method

.method private K()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/oplus/camera/e/e;->aa:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 336
    iget-object v0, p0, Lcom/oplus/camera/e/e;->ab:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/e/e;->ac:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/e/e;->ad:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 339
    iget-object p0, p0, Lcom/oplus/camera/e/e;->ae:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private L()V
    .locals 3

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitRecordingFinish, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCloseStreamTaskFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type_video"

    .line 608
    invoke-virtual {p0, v1}, Lcom/oplus/camera/e/e;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneCameraImpl"

    .line 607
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0, v1}, Lcom/oplus/camera/e/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type_video_frame"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/e/e;->ad:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 613
    iget-object v0, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    iget-object v1, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/g$a;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    iget-object v1, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/g$a;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 615
    iget-object v0, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    invoke-virtual {v0}, Lcom/oplus/camera/e/e$a;->run()V

    .line 619
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitRecordingFinish, x, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private M()V
    .locals 2

    .line 685
    invoke-direct {p0}, Lcom/oplus/camera/e/e;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/e/e;->M:Z

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFrontFlash, flash required, but ae not converged, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbAeAfLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/e/e;->M:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/e/e;->C:Lcom/oplus/camera/e/d$e;

    if-eqz p0, :cond_0

    .line 690
    invoke-interface {p0}, Lcom/oplus/camera/e/d$e;->a()V

    :cond_0
    return-void
.end method

.method private N()Z
    .locals 3

    .line 696
    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.torch.softlight.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/e/e;->L:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/e/e;->L:Ljava/lang/String;

    const-string v2, "auto"

    .line 701
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/oplus/camera/e/e;->N:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private O()Z
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/oplus/camera/e/e;->an:Lcom/oplus/camera/e/a/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/e/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkZoomState, isZoomChanging, mCameraRole: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneCameraImpl"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object p0, p0, Lcom/oplus/camera/e/e;->an:Lcom/oplus/camera/e/a/a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/e/a/a;->a(Z)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method private P()V
    .locals 3

    const-string v0, "builderOutputSurfaces"

    .line 1491
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1493
    iget-object v1, p0, Lcom/oplus/camera/e/e;->H:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 1494
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/e/e;->H:Ljava/util/LinkedHashMap;

    .line 1497
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/e/e;->E:Lcom/oplus/camera/e/d$d;

    if-eqz v1, :cond_1

    .line 1498
    iget-object v2, p0, Lcom/oplus/camera/e/e;->H:Ljava/util/LinkedHashMap;

    iget p0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-interface {v1, v2, p0}, Lcom/oplus/camera/e/d$d;->a(Ljava/util/LinkedHashMap;I)V

    .line 1501
    :cond_1
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method private Q()V
    .locals 2

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseResource, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "releaseResource"

    .line 1518
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1520
    iget-object p0, p0, Lcom/oplus/camera/e/e;->H:Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_0

    .line 1521
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1524
    :cond_0
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/e/e;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/oplus/camera/e/e;->aj:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "TT;>;"
        }
    .end annotation

    .line 1510
    new-instance p0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1512
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/e/e;Lcom/oplus/camera/e/c;)Lcom/oplus/camera/e/c;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/e/e;->X:Lcom/oplus/camera/e/c;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/e/e;Lcom/oplus/camera/e/d$a;)Lcom/oplus/camera/e/d$a;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/e/e;->F:Lcom/oplus/camera/e/d$a;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/h;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->D:Lcom/oplus/camera/e/h;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraDevice;)Lcom/oplus/ocs/camera/CameraDevice;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraPreviewCallback;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    return-void
.end method

.method private a(Lcom/oplus/ocs/camera/CameraPreviewCallback;)V
    .locals 4

    .line 2224
    sget-object v0, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "50pv_setRepeatingRequest"

    const-string v3, "setRepeatingRequest"

    invoke-static {v3, v2, v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2226
    iget-object v0, p0, Lcom/oplus/camera/e/e;->H:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2227
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/e/e;->P()V

    .line 2230
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    iget-object v1, p0, Lcom/oplus/camera/e/e;->H:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/oplus/camera/e/e;->q:Lcom/oplus/camera/w/b;

    invoke-virtual {v0, v1, p1, p0}, Lcom/oplus/ocs/camera/CameraDevice;->startPreview(Ljava/util/Map;Lcom/oplus/ocs/camera/CameraPreviewCallback;Landroid/os/Handler;)V

    const-string p0, "launch_request_repeating"

    .line 2232
    invoke-static {p0}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    .line 2234
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V
    .locals 1

    .line 1471
    iget p2, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/e/e;->X:Lcom/oplus/camera/e/c;

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lcom/oplus/camera/e/c;->c:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1478
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    new-instance v0, Lcom/oplus/camera/e/e$3;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/e/e$3;-><init>(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraPreviewCallback;)V

    invoke-virtual {p2, v0}, Lcom/oplus/camera/e/g$a;->a(Ljava/lang/Runnable;)V

    return-void

    .line 1473
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startPreview, illegal state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneCameraImpl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/e/e;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/oplus/camera/e/e;->ag:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/e/e;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/oplus/camera/e/e;->Q:I

    return p1
.end method

.method private b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1377
    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set, illegal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", previewKey: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;->getKeyName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneCameraImpl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1383
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz p0, :cond_1

    .line 1384
    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraDevice;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/e/e;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oplus/camera/e/e;->ag:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/e/e;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/oplus/camera/e/e;->I:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/e/e;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/oplus/camera/e/e;->R:I

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/e/e;)Landroid/os/ConditionVariable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->aa:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private c(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;",
            "TT;)V"
        }
    .end annotation

    .line 1390
    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomTarget, illegal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", previewKey: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;->getKeyName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneCameraImpl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1396
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz p0, :cond_1

    .line 1397
    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraDevice;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/e/e;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/oplus/camera/e/e;->J:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/e/e;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/e/e;->aj:I

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/e/e;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/oplus/camera/e/e;->S:I

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/e/e;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/oplus/camera/e/e;->M:Z

    return p1
.end method

.method static synthetic e(Lcom/oplus/camera/e/e;I)I
    .locals 1

    .line 78
    iget v0, p0, Lcom/oplus/camera/e/e;->U:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/e/e;->U:I

    return v0
.end method

.method static synthetic e(Lcom/oplus/camera/e/e;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/e/e;->K()V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$d;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->E:Lcom/oplus/camera/e/d$d;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/e/e;)Landroid/os/ConditionVariable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->ab:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/e/e;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oplus/camera/e/e;->I:Z

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/e/e;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oplus/camera/e/e;->J:Z

    return p0
.end method

.method static synthetic j(Lcom/oplus/camera/e/e;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/e/e;->K:I

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/e/e;)Landroid/os/ConditionVariable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->ac:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic l(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$c;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->ai:Lcom/oplus/camera/e/d$c;

    return-object p0
.end method

.method static synthetic m(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/c/a;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->am:Lcom/oplus/camera/c/a;

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/a/a;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->an:Lcom/oplus/camera/e/a/a;

    return-object p0
.end method

.method static synthetic o(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$a;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->F:Lcom/oplus/camera/e/d$a;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/e/e;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/e/e;->S:I

    return p0
.end method

.method static synthetic q(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/c;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->X:Lcom/oplus/camera/e/c;

    return-object p0
.end method

.method static synthetic r(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$e;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->C:Lcom/oplus/camera/e/d$e;

    return-object p0
.end method

.method static synthetic s(Lcom/oplus/camera/e/e;)Lcom/oplus/ocs/camera/CameraDevice;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    return-object p0
.end method

.method static synthetic t(Lcom/oplus/camera/e/e;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/e/e;->M()V

    return-void
.end method

.method static synthetic u(Lcom/oplus/camera/e/e;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oplus/camera/e/e;->O()Z

    move-result p0

    return p0
.end method

.method static synthetic v(Lcom/oplus/camera/e/e;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/oplus/camera/e/e;->U:I

    return p0
.end method

.method static synthetic w(Lcom/oplus/camera/e/e;)Lcom/oplus/ocs/camera/CameraPictureCallback;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->ak:Lcom/oplus/ocs/camera/CameraPictureCallback;

    return-object p0
.end method

.method static synthetic x(Lcom/oplus/camera/e/e;)Lcom/oplus/ocs/camera/CameraPreviewCallback;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    return-object p0
.end method

.method static synthetic y(Lcom/oplus/camera/e/e;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/e/e;->H:Ljava/util/LinkedHashMap;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseRecording, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    .line 2329
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDevice;->pauseRecording()V

    :cond_0
    return-void
.end method

.method public A(I)V
    .locals 1

    .line 2394
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_EIS_RECORD_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2395
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    return-void
.end method

.method public A(Z)V
    .locals 2

    .line 2151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrackEnable, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2153
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const-string p1, "com.oplus.sod.enable"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2156
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 2

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeRecording, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    .line 2338
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDevice;->resumeRecording()V

    :cond_0
    return-void
.end method

.method public B(Z)V
    .locals 2

    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMicrospurEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2138
    new-array v0, v0, [I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    aput p1, v0, v1

    const-string p1, "com.oplus.fallback.disableMask"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2140
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x3

    .line 2400
    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e;->B(I)V

    return-void
.end method

.method public C(Z)V
    .locals 2

    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPortraitNeon, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2177
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.portrait.neon"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2179
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public D(Z)V
    .locals 2

    .line 2184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoRetention, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2186
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.video.retention"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2188
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public D()Z
    .locals 0

    .line 357
    iget p0, p0, Lcom/oplus/camera/e/e;->aj:I

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    return p0
.end method

.method protected E()V
    .locals 6

    const-string v0, "CameraSwitchModePerformance.stopRepeating"

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeOldSession, mCameraRole: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDeviceState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OneCameraImpl"

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v4, 0x5

    if-ne v4, v1, :cond_1

    const/4 v1, 0x0

    .line 637
    iput-boolean v1, p0, Lcom/oplus/camera/e/e;->M:Z

    .line 639
    iget-object v4, p0, Lcom/oplus/camera/e/e;->X:Lcom/oplus/camera/e/c;

    if-eqz v4, :cond_0

    .line 640
    iput-boolean v1, v4, Lcom/oplus/camera/e/c;->c:Z

    .line 643
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/e/e;->L()V

    const/4 v4, 0x7

    .line 645
    invoke-virtual {p0, v4}, Lcom/oplus/camera/e/e;->B(I)V

    .line 646
    iget-object v4, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oplus/camera/e/e$a;->a(Z)V

    .line 649
    :try_start_0
    iget-object v4, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v4, :cond_1

    .line 650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeOldSession, begin to stopRepeating, mCameraRole: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 654
    iget-object v4, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    invoke-virtual {v4}, Lcom/oplus/ocs/camera/CameraDevice;->closeSession()V

    .line 656
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 658
    iput v1, p0, Lcom/oplus/camera/e/e;->K:I

    .line 659
    invoke-direct {p0}, Lcom/oplus/camera/e/e;->Q()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/oplus/camera/e/e;->Q()V

    const/4 v0, 0x6

    .line 665
    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e;->B(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public E(Z)V
    .locals 1

    .line 2369
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_EDGE_FILTER_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method protected F()V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/e/e;->E:Lcom/oplus/camera/e/d$d;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/oplus/camera/e/e;->ac:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 675
    iget-object v0, p0, Lcom/oplus/camera/e/e;->E:Lcom/oplus/camera/e/d$d;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d$d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionConfigured, block in, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object p0, p0, Lcom/oplus/camera/e/e;->ac:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    return-void
.end method

.method public F(Z)V
    .locals 0

    .line 2406
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz p0, :cond_0

    .line 2407
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraDevice;->stopPreview(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/hardware/camera2/CaptureResult;III)Landroid/graphics/Bitmap;
    .locals 6

    .line 2363
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/ocs/camera/CameraDevice;->processBitmap(Landroid/graphics/Bitmap;Landroid/hardware/camera2/CaptureResult;III)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfo;
    .locals 2

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCameraDeviceInfo, modeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz p0, :cond_0

    .line 2212
    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraDevice;->getCameraDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(B)V
    .locals 2

    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMovieLogEnable, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MOVIE_LOG_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBokehLevel, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1860
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.bokeh.level"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1862
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(FF)V
    .locals 3

    .line 2379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurTemperature, temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    sget-object v0, Lcom/oplus/camera/e/b;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(FZ)V
    .locals 3

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusDistance, distance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", restartPreview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FOCUS_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 868
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 871
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/graphics/RectF;Landroid/graphics/RectF;Z)V
    .locals 4

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusMode, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", focusMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", afRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aeRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 922
    :cond_1
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FOCUS_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 923
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 922
    invoke-direct {p0, p1, p4}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 928
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 931
    :cond_3
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FOCUS_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const/4 p4, 0x2

    .line 932
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 931
    invoke-direct {p0, p1, p4}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    .line 914
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FOCUS_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 916
    :cond_5
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FOCUS_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 937
    :goto_0
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->AF_REGIONS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 938
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->AE_REGIONS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 940
    invoke-static {}, Lcom/oplus/camera/a;->a()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 941
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 944
    :cond_6
    invoke-static {}, Lcom/oplus/camera/a;->a()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 945
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 948
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    return-void
.end method

.method public a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    new-instance v1, Lcom/oplus/camera/e/e$9;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/oplus/camera/e/e$9;-><init>(Lcom/oplus/camera/e/e;Lcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/g$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(ILcom/oplus/camera/e/d$b;)V
    .locals 7

    const-string v0, "CameraStartupPerformance.openCamera"

    .line 136
    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    const-string v2, "openCameraDevice, mCameraRole: "

    const-string v3, "OneCameraImpl"

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDeviceState: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const-string v1, "openCameraDevice, mDeviceState now is closing, block to device to closed."

    .line 140
    invoke-static {v3, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/oplus/camera/e/e;->aa:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 149
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/e/e;->B(I)V

    .line 150
    iget-object v1, p0, Lcom/oplus/camera/e/e;->aa:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 152
    iget-object v1, p0, Lcom/oplus/camera/e/e;->A:Lcom/oplus/ocs/camera/CameraUnitClient;

    if-nez v1, :cond_2

    .line 153
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/ocs/camera/CameraUnit;->getCameraClient(Landroid/content/Context;)Lcom/oplus/ocs/camera/CameraUnitClient;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/e/e;->A:Lcom/oplus/ocs/camera/CameraUnitClient;

    :cond_2
    const-string v1, "launch_open_camera"

    .line 156
    invoke-static {v1}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openCamera start, mCameraRole: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cameraId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/oplus/camera/e/e;->A:Lcom/oplus/ocs/camera/CameraUnitClient;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->b(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/oplus/camera/e/e$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/oplus/camera/e/e$1;-><init>(Lcom/oplus/camera/e/e;ILcom/oplus/camera/e/d$b;)V

    iget-object p1, p0, Lcom/oplus/camera/e/e;->q:Lcom/oplus/camera/w/b;

    invoke-virtual {v1, v5, v6, p1}, Lcom/oplus/ocs/camera/CameraUnitClient;->openCamera(Ljava/lang/String;Lcom/oplus/ocs/camera/CameraStateCallback;Landroid/os/Handler;)V

    .line 314
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/oplus/camera/e/e;->G:Lcom/oplus/camera/e/b;

    if-nez p1, :cond_3

    .line 317
    new-instance p1, Lcom/oplus/camera/e/b;

    invoke-direct {p1}, Lcom/oplus/camera/e/b;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/e/e;->G:Lcom/oplus/camera/e/b;

    .line 320
    :cond_3
    invoke-virtual {p0, v4}, Lcom/oplus/camera/e/e;->a(Z)V

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", block in mDeviceState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/oplus/camera/e/e;->aa:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    if-eqz p2, :cond_4

    .line 329
    iget p0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-interface {p2, v4, p0}, Lcom/oplus/camera/e/d$b;->a(ZI)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(IZ)V
    .locals 4

    .line 1545
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.mmcamera.professional.support"

    .line 1546
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    new-array v0, v2, [I

    aput v2, v0, v1

    const-string v3, "org.codeaurora.qcamera3.manualWB.partial_mwb_mode"

    invoke-direct {p0, v3, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1549
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {p0, v3, v0}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1550
    new-array v0, v2, [I

    aput p1, v0, v1

    const-string v3, "org.codeaurora.qcamera3.manualWB.color_temperature"

    invoke-direct {p0, v3, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1552
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {p0, v3, v0}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1555
    :cond_0
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->COLOR_TEMPERATURE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    new-array v2, v2, [I

    aput p1, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 1558
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_1
    return-void
.end method

.method public a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V
    .locals 2

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusMode, focusMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", afRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aeRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    .line 894
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 898
    :cond_0
    invoke-static {}, Lcom/oplus/camera/a;->a()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {}, Lcom/oplus/camera/a;->a()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/e/e;->a(ILandroid/graphics/RectF;Landroid/graphics/RectF;Z)V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 1706
    sget-object v0, Lcom/oplus/camera/e/b;->D:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(JZ)V
    .locals 6

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureTime, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exposureTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const-string v1, "com.oplus.mmcamera.professional.support"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1625
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v0, :cond_0

    .line 1626
    iput-boolean v2, p0, Lcom/oplus/camera/e/e;->P:Z

    goto :goto_0

    .line 1628
    :cond_0
    iput-boolean v3, p0, Lcom/oplus/camera/e/e;->P:Z

    .line 1630
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1631
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, v4}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1635
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/e/e;->P:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1636
    iget-boolean v0, p0, Lcom/oplus/camera/e/e;->O:Z

    if-eqz v0, :cond_4

    .line 1637
    sget-object v0, Lcom/oplus/camera/e/b;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v2, [I

    iget v4, p0, Lcom/oplus/camera/e/e;->V:I

    aput v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1638
    sget-object v0, Lcom/oplus/camera/e/b;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v2, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 1640
    :cond_2
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1641
    iget-boolean v0, p0, Lcom/oplus/camera/e/e;->O:Z

    if-eqz v0, :cond_3

    .line 1642
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1643
    sget-object v0, Lcom/oplus/camera/e/b;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1645
    iput v2, p0, Lcom/oplus/camera/e/e;->V:I

    goto :goto_1

    .line 1647
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, v4}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1648
    sget-object v0, Lcom/oplus/camera/e/b;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v2, [I

    const/4 v4, 0x2

    aput v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1652
    :goto_1
    sget-object v0, Lcom/oplus/camera/e/b;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v2, [J

    aput-wide p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1653
    sget-object v0, Lcom/oplus/camera/e/b;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v2, [J

    aput-wide p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1656
    :cond_4
    :goto_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    .line 1659
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v3}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_5
    return-void
.end method

.method protected a(Landroid/hardware/camera2/CameraDevice;Z)V
    .locals 5

    .line 372
    iget p1, p0, Lcom/oplus/camera/e/e;->u:I

    const-string v0, "closeCameraDevice, mCameraRole: "

    const/4 v1, 0x1

    const-string v2, "OneCameraImpl"

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    iget p1, p0, Lcom/oplus/camera/e/e;->u:I

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    iget p1, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v3, 0x7

    if-eq p1, v3, :cond_0

    iget p1, p0, Lcom/oplus/camera/e/e;->u:I

    if-eq p1, v1, :cond_0

    iget p1, p0, Lcom/oplus/camera/e/e;->u:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v3, 0x6

    if-eq p1, v3, :cond_0

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", return for mDeviceState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz p1, :cond_1

    const-string p1, "CameraSwitchModePerformance.closeCameraDevice"

    .line 384
    invoke-static {p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeCameraDevice start, mCameraRole: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", needDelay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Lcom/oplus/camera/e/e;->ae:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    const/4 v3, 0x2

    .line 388
    invoke-virtual {p0, v3}, Lcom/oplus/camera/e/e;->B(I)V

    .line 389
    iget-object v3, p0, Lcom/oplus/camera/e/e;->aa:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    .line 390
    iget-object v3, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    invoke-virtual {v3, v1, p2}, Lcom/oplus/ocs/camera/CameraDevice;->close(ZZ)V

    .line 392
    invoke-virtual {p0, v1}, Lcom/oplus/camera/e/e;->a(Z)V

    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", block in mDeviceState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 396
    iput-object p2, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    .line 397
    iget-object p2, p0, Lcom/oplus/camera/e/e;->aa:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->block()V

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "closeCameraDevice X, mCameraRole: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 403
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->B(I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameter, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 1699
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    .line 1700
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->WATERMARK_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Range;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2006
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoFpsRange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mCameraRole: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneCameraImpl"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object p1, p0, Lcom/oplus/camera/e/e;->D:Lcom/oplus/camera/e/h;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->J()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2009
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/e/d$c;)V
    .locals 2

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRepeatingRequest, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previewCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1464
    iput-object p1, p0, Lcom/oplus/camera/e/e;->ai:Lcom/oplus/camera/e/d$c;

    .line 1467
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    return-void
.end method

.method public a(Lcom/oplus/camera/e/d$e;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/oplus/camera/e/e;->C:Lcom/oplus/camera/e/d$e;

    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/oplus/camera/e/e;->D:Lcom/oplus/camera/e/h;

    return-void
.end method

.method public a(Lcom/oplus/camera/e/i;)V
    .locals 1

    .line 963
    invoke-virtual {p1}, Lcom/oplus/camera/e/i;->a()[I

    move-result-object p1

    const-string v0, "com.oplus.control.ae.region"

    .line 962
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 965
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/v/c;)V
    .locals 0

    .line 2076
    iput-object p1, p0, Lcom/oplus/camera/e/e;->af:Lcom/oplus/camera/v/c;

    return-void
.end method

.method protected a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;Lcom/oplus/camera/e/d$d;I)V
    .locals 5

    const-string v0, "createNewSession"

    const-string v1, "OneCameraImpl"

    .line 2239
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    iget-object v2, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-nez v2, :cond_0

    const-string p0, "createNewSession, mCameraDevice is null"

    .line 2242
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2247
    :cond_0
    invoke-static {}, Lcom/oplus/camera/w/a;->a()Lcom/oplus/camera/w/a;

    move-result-object v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v3

    .line 2248
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v4, "capture_mode"

    .line 2247
    invoke-virtual {v2, v3, v4, p3}, Lcom/oplus/camera/w/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x4

    .line 2250
    invoke-virtual {p0, p3}, Lcom/oplus/camera/e/e;->B(I)V

    .line 2251
    invoke-direct {p0}, Lcom/oplus/camera/e/e;->Q()V

    .line 2252
    iget-object p3, p0, Lcom/oplus/camera/e/e;->ab:Landroid/os/ConditionVariable;

    invoke-virtual {p3}, Landroid/os/ConditionVariable;->close()V

    .line 2254
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 2256
    iput-object p2, p0, Lcom/oplus/camera/e/e;->E:Lcom/oplus/camera/e/d$d;

    .line 2258
    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "createNewSession, camera device has been closed"

    .line 2259
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2261
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/e/e;->E:Lcom/oplus/camera/e/d$d;

    if-eqz p2, :cond_2

    .line 2262
    invoke-interface {p2, p1}, Lcom/oplus/camera/e/d$d;->a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    .line 2265
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->build()Lcom/oplus/ocs/camera/CameraDeviceConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/oplus/ocs/camera/CameraDevice;->configure(Lcom/oplus/ocs/camera/CameraDeviceConfig;)V

    const-string p1, "launch_create_session"

    .line 2267
    invoke-static {p1}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    .line 2270
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/e/e;->ab:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 2272
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameter, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    .line 837
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPictureCallback;)V
    .locals 0

    .line 2277
    iput-object p1, p0, Lcom/oplus/camera/e/e;->ak:Lcom/oplus/ocs/camera/CameraPictureCallback;

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraRecordingCallback;Landroid/os/Handler;)V
    .locals 2

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    iget-object v0, p0, Lcom/oplus/camera/e/e;->ae:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const/4 v0, 0x1

    .line 2305
    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e;->w(Z)V

    .line 2307
    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    .line 2308
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraDevice;->startRecording(Lcom/oplus/ocs/camera/CameraRecordingCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 820
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_TEXT_VERTICES:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMakeupParam, makeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", makeValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MAKEUP_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1156
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->MAKEUP_VALUE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "TT;)V"
        }
    .end annotation

    .line 1365
    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set, illegal state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", key: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneCameraImpl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1371
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz p0, :cond_1

    .line 1372
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/CameraDevice;->setParameter(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCaptureStream, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", restartPreview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type_still_capture_raw"

    .line 1747
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/e/e;->X:Lcom/oplus/camera/e/c;

    if-eqz p1, :cond_0

    .line 1748
    iput-boolean v0, p1, Lcom/oplus/camera/e/c;->c:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1752
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFilter, filterType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filterOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", vignette: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FILTER_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1033
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FILTER_OPEN:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1034
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FILTER_WITHVIGNETTE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 0

    .line 1275
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1277
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZILjava/lang/String;)V
    .locals 2

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoNeonParam, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoFusionEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoNeonParams:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_NEON_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1083
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FUSION_EFFECT:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1084
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_NEON_PARAMS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWaterCaptureParam, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->WATERMARK_CAPTURE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1111
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->WATERMARK_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZLcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 707
    iput-boolean v0, p0, Lcom/oplus/camera/e/e;->Y:Z

    .line 708
    iget-object v1, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->BURST_SHOT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/ocs/camera/CameraDevice;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 709
    invoke-virtual {p0, v1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "com.oplus.tunning.continue.shot.first.request.num"

    .line 712
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    .line 713
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/oplus/camera/e/e;->a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    .line 1987
    iget-object v0, p0, Lcom/oplus/camera/e/e;->D:Lcom/oplus/camera/e/h;

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1989
    iget-object p1, p0, Lcom/oplus/camera/e/e;->D:Lcom/oplus/camera/e/h;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/e/h;->a(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.mediatek.smvrfeature.smvrMode"

    .line 1992
    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1994
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;J)V
    .locals 2

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBurstShot, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->BURST_SHOT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1101
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->BURST_SHOT_PATH:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1102
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->BURST_SHOT_FLAG_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZLjava/lang/String;[I)V
    .locals 2

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceBeautyParam, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", faceVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", faceBeautyParam:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FACE_BEAUTY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1072
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FACE_BEAUTY_VERSION:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 1073
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FACE_BEAUTY_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 1665
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FOCUS_PEAKING_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 1668
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 1

    .line 2091
    sget-object v0, Lcom/oplus/camera/e/b;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a([I)V
    .locals 2

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomBeautyValues, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.oplus.facebeauty.custom"

    .line 1163
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1165
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .line 2374
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_EDGE_FILTER_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 362
    iget p0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Landroid/hardware/camera2/CaptureResult;",
            ")[I"
        }
    .end annotation

    .line 1404
    invoke-static {p2, p1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 1406
    instance-of p2, p0, [I

    if-eqz p2, :cond_1

    .line 1407
    check-cast p0, [I

    .line 1408
    array-length p2, p0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0

    :cond_1
    return-object p1
.end method

.method public b(B)V
    .locals 2

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMovieHdrEnable, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MOVIE_HDR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public b(F)V
    .locals 3

    .line 2059
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomTarget, zoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_TARGET:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2063
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 5

    const-string v0, "com.oplus.mmcamera.professional.support"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1571
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 1572
    iput-boolean v1, p0, Lcom/oplus/camera/e/e;->O:Z

    goto :goto_0

    .line 1574
    :cond_0
    iput-boolean v2, p0, Lcom/oplus/camera/e/e;->O:Z

    .line 1576
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1577
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v4, v3}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1581
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/oplus/camera/e/e;->O:Z

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1582
    iget-boolean v0, p0, Lcom/oplus/camera/e/e;->P:Z

    if-eqz v0, :cond_4

    .line 1583
    sget-object v0, Lcom/oplus/camera/e/b;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v3, v1, [I

    iget v4, p0, Lcom/oplus/camera/e/e;->V:I

    aput v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1584
    sget-object v0, Lcom/oplus/camera/e/b;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v1, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 1586
    :cond_2
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1587
    iget-boolean v0, p0, Lcom/oplus/camera/e/e;->P:Z

    if-eqz v0, :cond_3

    .line 1588
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1589
    sget-object v0, Lcom/oplus/camera/e/b;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v3, v1, [I

    aput v2, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1591
    iput v2, p0, Lcom/oplus/camera/e/e;->V:I

    goto :goto_1

    .line 1593
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, v3}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1594
    sget-object v0, Lcom/oplus/camera/e/b;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v3, v1, [I

    const/4 v4, 0x2

    aput v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1598
    :goto_1
    sget-object v0, Lcom/oplus/camera/e/b;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v1, [J

    int-to-long v3, p1

    aput-wide v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1601
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->u()I

    move-result v0

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIso, mCameraRole: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", iso: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxISOValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OneCameraImpl"

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, v0, :cond_5

    int-to-float p1, p1

    int-to-float v1, v0

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 1609
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1610
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 1612
    :cond_5
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1613
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_3
    if-eqz p2, :cond_6

    .line 1617
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_6
    return-void
.end method

.method public b(J)V
    .locals 2

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNightExposureTime, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exposureTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2117
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const-string p1, "com.oplus.sensor.night.exposureTime"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2119
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [J

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2120
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    return-void
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/e/i;)V
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p1}, Lcom/oplus/camera/e/i;->a()[I

    move-result-object p1

    const-string v0, "com.oplus.control.af.region"

    .line 954
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 956
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 10

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlashMode, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    .line 1284
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1288
    :cond_0
    invoke-static {}, Lcom/oplus/camera/w/a;->a()Lcom/oplus/camera/w/a;

    move-result-object v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "flash_mode"

    invoke-virtual {v0, v1, v2, p1}, Lcom/oplus/camera/w/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1291
    iget-object v0, p0, Lcom/oplus/camera/e/e;->af:Lcom/oplus/camera/v/c;

    if-eqz v0, :cond_1

    .line 1292
    invoke-virtual {v0, p1}, Lcom/oplus/camera/v/c;->a(Ljava/lang/String;)V

    .line 1295
    :cond_1
    iput-object p1, p0, Lcom/oplus/camera/e/e;->L:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1297
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const-string v3, "torch"

    const-string v4, "auto"

    const-string v5, "off"

    const-string v6, "on"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v1, v2, :cond_5

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_4

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_3

    const v2, 0x696d3fc

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v8

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v9

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_0
    if-eqz v0, :cond_a

    if-eq v0, v9, :cond_9

    if-eq v0, v8, :cond_8

    if-eq v0, v7, :cond_7

    goto :goto_1

    .line 1311
    :cond_7
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, v3}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 1307
    :cond_8
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, v4}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 1303
    :cond_9
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, v5}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 1299
    :cond_a
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, p1, v6}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceBeautyLevel, cameraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1135
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const-string p2, "com.oplus.facebeauty.level"

    invoke-direct {p0, p2, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 1138
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [I

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public b(ZZ)V
    .locals 2

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoExposureLock, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1213
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    sget-object v0, Lcom/oplus/camera/e/b;->bA:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1217
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    new-instance v0, Lcom/oplus/camera/e/e$2;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/e/e$2;-><init>(Lcom/oplus/camera/e/e;Z)V

    invoke-virtual {p2, v0}, Lcom/oplus/camera/e/g$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b([B)V
    .locals 2

    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTuningDataEnable, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    sget-object v0, Lcom/oplus/camera/e/b;->aO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public b([I)V
    .locals 2

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackTouchRegion, region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.oplus.sod.touch.region"

    .line 2165
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2168
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 367
    iget p0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()I
    .locals 3

    .line 344
    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const-string v1, "OneCameraImpl"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLogicId, mCameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/e/e;->aj:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget p0, p0, Lcom/oplus/camera/e/e;->aj:I

    return p0

    :cond_0
    const-string p0, "getLogicId, mCameraId: -1"

    .line 349
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public c(IZ)V
    .locals 2

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusMode, focusMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-static {}, Lcom/oplus/camera/a;->a()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {}, Lcom/oplus/camera/a;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oplus/camera/e/e;->a(ILandroid/graphics/RectF;Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public c(J)V
    .locals 2

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHighPictureProExposureTime, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exposureTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2128
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const-string p1, "com.oplus.highpicture.professional.exposureTime"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2130
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [J

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2131
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    return-void
.end method

.method public c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "TT;)V"
        }
    .end annotation

    .line 1352
    iget v0, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set, illegal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneCameraImpl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1358
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz p0, :cond_1

    .line 1359
    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraDevice;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHDRMode, hdrMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_HDR_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFrontModeAutoEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    sget-object v0, Lcom/oplus/camera/e/b;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public d(I)V
    .locals 4

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAutoFocus, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    new-instance v2, Lcom/oplus/camera/e/e$11;

    invoke-direct {v2, p0}, Lcom/oplus/camera/e/e$11;-><init>(Lcom/oplus/camera/e/e;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/e/g$a;->a(Ljava/lang/Runnable;)V

    .line 1003
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1004
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1005
    new-instance v0, Lcom/oplus/camera/e/i;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-direct {v0, v2}, Lcom/oplus/camera/e/i;-><init>(Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/camera/e/i;)V

    .line 1006
    new-instance v0, Lcom/oplus/camera/e/i;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-direct {v0, v2}, Lcom/oplus/camera/e/i;-><init>(Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/i;)V

    .line 1009
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1010
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1012
    iget-object v0, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    .line 1014
    invoke-virtual {p0, p1, v2}, Lcom/oplus/camera/e/e;->c(IZ)V

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 2386
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz p0, :cond_0

    .line 2387
    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraDevice;->updateThumbnailMap(J)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1335
    iput-boolean p1, p0, Lcom/oplus/camera/e/e;->N:Z

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCloseStreamTaskFinished, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getSurfaceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    .line 1735
    invoke-virtual {v1}, Lcom/oplus/camera/e/e$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    invoke-virtual {v1}, Lcom/oplus/camera/e/e$a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedWaitCloseStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    .line 1736
    invoke-virtual {v1}, Lcom/oplus/camera/e/e$a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    .line 1734
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    iget-object v0, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    invoke-virtual {v0}, Lcom/oplus/camera/e/e$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    .line 1739
    invoke-virtual {p1}, Lcom/oplus/camera/e/e$a;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    .line 1740
    invoke-virtual {p0}, Lcom/oplus/camera/e/e$a;->b()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public e()Lcom/oplus/camera/e/h;
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/oplus/camera/e/e;->D:Lcom/oplus/camera/e/h;

    return-object p0
.end method

.method public e(I)V
    .locals 2

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAISceneMode, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1021
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.ai.scene.app.enable"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1024
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeStream, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneCameraImpl"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget p1, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/oplus/camera/e/e;->u:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1830
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    iget-object v0, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/g$a;->post(Ljava/lang/Runnable;)Z

    .line 1833
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/e/e;->ad:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureForVideo, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_FOR_VIDEO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFrameFlag, frameFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FRAME_FLAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOffsetTime, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offsetTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v0, "com.oplus.picture.offset.time"

    .line 2084
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2086
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOutCapture, outCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->REAR_MIRROR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    new-instance v1, Lcom/oplus/camera/e/e$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/e/e$7;-><init>(Lcom/oplus/camera/e/e;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/g$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1116
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.capture.request.picture.size.scale"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1119
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGestureCaptureEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_GESTURE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStarVideoEnable, mbStarVideoEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->STAR_VIDEO_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    new-instance v1, Lcom/oplus/camera/e/e$8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/e/e$8;-><init>(Lcom/oplus/camera/e/e;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/g$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(I)V
    .locals 2

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceBeautyLevel, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1145
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.facebeauty.level"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1148
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFaceDetection, cameraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startFaceDetection"

    .line 1431
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1433
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1435
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDeRedEye, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FACE_DERED_EYE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x0

    .line 718
    iput-boolean v0, p0, Lcom/oplus/camera/e/e;->Y:Z

    .line 721
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    .line 722
    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->BURST_SHOT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/ocs/camera/CameraDevice;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 725
    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method public i(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1564
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "org.codeaurora.qcamera3.exposure_metering.exposure_metering_mode"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1566
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Z)V
    .locals 3

    .line 1529
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string v0, "com.oplus.mmcamera.professional.support"

    .line 1532
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1533
    new-array v0, v1, [I

    aput v2, v0, v2

    const-string v1, "org.codeaurora.qcamera3.manualWB.partial_mwb_mode"

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1535
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1539
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_1
    return-void
.end method

.method public j(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1692
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.slogan.enable"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1694
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 1679
    iget v0, p0, Lcom/oplus/camera/e/e;->R:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/e/e;->L:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 1681
    :cond_0
    iget v0, p0, Lcom/oplus/camera/e/e;->R:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/e/e;->L:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1686
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_2
    return-void
.end method

.method public j()Z
    .locals 0

    .line 1758
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1762
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDevice;->notifyLastCaptureFrame()Z

    move-result p0

    return p0
.end method

.method public k()V
    .locals 3

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFaceDetection, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startFaceDetection"

    .line 1442
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 1444
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1446
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public k(I)V
    .locals 2

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAheadCaptureFrameNum, num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1239
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.ahead.capture.frame.num"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1242
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public k(Z)V
    .locals 3

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirror, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.mirror.enable"

    goto :goto_0

    :cond_0
    const-string v0, "com.mediatek.control.capture.flipmode"

    :goto_0
    const/4 v1, 0x1

    .line 1728
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1727
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1729
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public l(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1247
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.ahead.night.ev0"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1250
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public l(Z)V
    .locals 2

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLongShotEnable, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1229
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.longshot.enable"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1232
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public m(I)V
    .locals 2

    .line 1767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLongExposuereScene, scene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    sget-object v0, Lcom/oplus/camera/e/b;->A:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public m(Z)V
    .locals 2

    .line 1255
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-nez v0, :cond_0

    return-void

    .line 1259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZsl, zsl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 1263
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1266
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const-string p1, "com.mediatek.control.capture.zsl.mode"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1269
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 970
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 971
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public n(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1851
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.camera.3d.api.state"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1853
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1822
    iget-object p0, p0, Lcom/oplus/camera/e/e;->Z:Lcom/oplus/camera/e/e$a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e$a;->a(ZZ)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/oplus/camera/e/e;->p:Lcom/oplus/camera/e/g$a;

    new-instance v1, Lcom/oplus/camera/e/e$10;

    invoke-direct {v1, p0}, Lcom/oplus/camera/e/e$10;-><init>(Lcom/oplus/camera/e/e;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/g$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1867
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.supernight.mode"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1869
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public o(Z)V
    .locals 2

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMTKTrackFocusState, isTrackFocusOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1453
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.track.focus.config.enable"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1455
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public p()I
    .locals 0

    .line 877
    iget p0, p0, Lcom/oplus/camera/e/e;->Q:I

    return p0
.end method

.method public p(I)V
    .locals 2

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPIEnableList, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1126
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.camera.pi.enable_list"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1129
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public p(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1973
    sget-object p1, Lcom/oplus/camera/e/b;->aw:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/oplus/camera/e/e;->L:Ljava/lang/String;

    return-object p0
.end method

.method public q(I)V
    .locals 3

    .line 1874
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.rear.remosaic.enable"

    goto :goto_0

    :cond_0
    const-string v0, "com.mediatek.control.capture.remosaicenable"

    :goto_0
    const/4 v1, 0x1

    .line 1876
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1877
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public q(Z)V
    .locals 2

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVHdrRequest, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1200
    new-array p1, p1, [I

    const/4 v0, 0x0

    iget v1, p0, Lcom/oplus/camera/e/e;->T:I

    aput v1, p1, v0

    const-string v0, "com.mediatek.hdrfeature.hdrMode"

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1203
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1674
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-string v1, "off"

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public r(I)V
    .locals 3

    .line 1882
    sget-object v0, Lcom/oplus/camera/e/b;->aS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public r(Z)V
    .locals 2

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRearAicolorEnable, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1920
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.aicolor.rear.enable"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1922
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public s()V
    .locals 4

    .line 1340
    iget-object v0, p0, Lcom/oplus/camera/e/e;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/e/e;->W:Landroid/media/ImageWriter;

    if-eqz v1, :cond_0

    const-string v1, "OneCameraImpl"

    .line 1342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeImageWriter, mCameraRole: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v1, p0, Lcom/oplus/camera/e/e;->W:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    const/4 v1, 0x0

    .line 1345
    iput-object v1, p0, Lcom/oplus/camera/e/e;->W:Landroid/media/ImageWriter;

    .line 1347
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public s(I)V
    .locals 3

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureRaw10, format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    sget-object v0, Lcom/oplus/camera/e/b;->aT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public s(Z)V
    .locals 3

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoNeonEnable, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    sget-object v0, Lcom/oplus/camera/e/b;->bD:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1930
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_NEON_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public t()I
    .locals 0

    .line 1957
    iget p0, p0, Lcom/oplus/camera/e/e;->U:I

    return p0
.end method

.method public t(I)V
    .locals 2

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApertureValue, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1172
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.iris.aperture.value"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1175
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public t(Z)V
    .locals 3

    .line 1935
    sget-object v0, Lcom/oplus/camera/e/b;->bC:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1936
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BLUR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public u(I)V
    .locals 3

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBracketMode, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_BRACKET_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public u(Z)V
    .locals 2

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMtkAIShutterEnable, mtkAIShutterEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1943
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.mediatek.3afeature.aishutCapture"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1945
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public u()Z
    .locals 2

    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecordingLockStatus, mbRecordingLockStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/e/e;->ah:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    iget-boolean p0, p0, Lcom/oplus/camera/e/e;->ah:Z

    return p0
.end method

.method public v()Lcom/oplus/camera/e/c;
    .locals 0

    .line 1962
    iget-object p0, p0, Lcom/oplus/camera/e/e;->X:Lcom/oplus/camera/e/c;

    return-object p0
.end method

.method public v(I)V
    .locals 2

    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAsdSceneValue, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    sget-object v0, Lcom/oplus/camera/e/b;->bz:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public v(Z)V
    .locals 3

    .line 1979
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.ultra.resolution.mode"

    goto :goto_0

    :cond_0
    const-string v0, "com.oplus.ultra.high.resolution.enable"

    :goto_0
    const/4 v1, 0x1

    .line 1980
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1979
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1982
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    .line 1967
    iput v0, p0, Lcom/oplus/camera/e/e;->U:I

    return-void
.end method

.method public w(I)V
    .locals 3

    .line 2015
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PICTURE_EXIF_FLAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public w(Z)V
    .locals 4

    .line 2289
    iget-object v0, p0, Lcom/oplus/camera/e/e;->ae:Landroid/os/ConditionVariable;

    monitor-enter v0

    :try_start_0
    const-string v1, "OneCameraImpl"

    .line 2290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordingLockStatus, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbRecordingLockStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/e/e;->ah:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    iget-boolean v1, p0, Lcom/oplus/camera/e/e;->ah:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 2294
    iget-object v1, p0, Lcom/oplus/camera/e/e;->ae:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 2297
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/e/e;->ah:Z

    .line 2298
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public x()V
    .locals 0

    .line 2042
    iget-object p0, p0, Lcom/oplus/camera/e/e;->an:Lcom/oplus/camera/e/a/a;

    if-eqz p0, :cond_0

    .line 2043
    invoke-virtual {p0}, Lcom/oplus/camera/e/a/a;->d()V

    :cond_0
    return-void
.end method

.method public x(I)V
    .locals 2

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNightIso, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2107
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.sensor.night.sensitivity"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2109
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2110
    iget-object p1, p0, Lcom/oplus/camera/e/e;->al:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    return-void
.end method

.method public x(Z)V
    .locals 2

    .line 2020
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMsnr, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2023
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.mediatek.control.capture.singleYuvNr.mode"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2025
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public y()Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
    .locals 0

    .line 2220
    iget-object p0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDevice;->createCameraDeviceConfig()Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public y(I)V
    .locals 2

    const/4 v0, 0x1

    .line 2145
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.highpicture.professional.enable"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2147
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public y(Z)V
    .locals 2

    .line 2049
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    .line 2050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomActive, active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_ACTIVE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2053
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    .line 2314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRecording, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iget v1, p0, Lcom/oplus/camera/e/e;->u:I

    if-ne v0, v1, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/oplus/camera/e/e;->B:Lcom/oplus/ocs/camera/CameraDevice;

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/CameraDevice;->stopRecording()V

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/e/e;->ae:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    const/4 v0, 0x0

    .line 2321
    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e;->w(Z)V

    return-void
.end method

.method public z(I)V
    .locals 2

    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLSDEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2195
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.lsd.enable"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2197
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public z(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 2069
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oplus.salient.object.detection.enable"

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 2071
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method
