.class public Lcom/oplus/camera/CameraManager$o;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "o"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Lcom/oplus/camera/capmode/BaseMode;

.field protected c:Ljava/lang/String;

.field final synthetic d:Lcom/oplus/camera/CameraManager;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method protected constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 1

    .line 22418
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 22427
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$o;->a:Z

    const/4 v0, 0x0

    .line 22428
    iput-object v0, p0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    .line 22429
    iput-object v0, p0, Lcom/oplus/camera/CameraManager$o;->c:Ljava/lang/String;

    .line 22430
    iput p1, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    .line 22431
    iput-object v0, p0, Lcom/oplus/camera/CameraManager$o;->f:Ljava/lang/String;

    .line 22432
    iput p1, p0, Lcom/oplus/camera/CameraManager$o;->g:I

    .line 22433
    iput p1, p0, Lcom/oplus/camera/CameraManager$o;->h:I

    .line 22434
    iput p1, p0, Lcom/oplus/camera/CameraManager$o;->i:I

    .line 22435
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$o;->j:Z

    .line 22436
    iput-object v0, p0, Lcom/oplus/camera/CameraManager$o;->k:Lcom/oplus/camera/capmode/BaseMode;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/CameraManager$o;)I
    .locals 0

    .line 22418
    iget p0, p0, Lcom/oplus/camera/CameraManager$o;->h:I

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/CameraManager$o;I)I
    .locals 0

    .line 22418
    iput p1, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/CameraManager$o;)Lcom/oplus/camera/capmode/BaseMode;
    .locals 0

    .line 22418
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$o;->k:Lcom/oplus/camera/capmode/BaseMode;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/CameraManager$o;)I
    .locals 0

    .line 22418
    iget p0, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/oplus/camera/CameraManager$o;
    .locals 0

    .line 22521
    iput p1, p0, Lcom/oplus/camera/CameraManager$o;->g:I

    return-object p0
.end method

.method public a(Lcom/oplus/camera/capmode/BaseMode;)Lcom/oplus/camera/CameraManager$o;
    .locals 1

    .line 22546
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    monitor-enter v0

    .line 22547
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    .line 22548
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Ljava/lang/String;)Lcom/oplus/camera/CameraManager$o;
    .locals 0

    .line 22511
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$o;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/oplus/camera/CameraManager$o;
    .locals 0

    .line 22536
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$o;->j:Z

    return-object p0
.end method

.method public a()V
    .locals 5

    .line 22439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeTask"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22441
    iget v0, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "closeSession"

    .line 22454
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 22456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute, STATUS_SESSION_CLOSED after mOneCamera.endOfStream X, mAfterModeProperCameraId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/CameraManager$o;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22459
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object v0

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object v0

    iget v4, p0, Lcom/oplus/camera/CameraManager$o;->h:I

    invoke-virtual {v0, v4}, Lcom/oplus/camera/CameraManager$n;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    .line 22460
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/e/f;

    invoke-virtual {v0}, Lcom/oplus/camera/e/f;->D()Lcom/oplus/camera/capmode/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    .line 22461
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/e/f;

    invoke-virtual {v0}, Lcom/oplus/camera/e/f;->D()Lcom/oplus/camera/capmode/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22462
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v3}, Lcom/oplus/camera/CameraManager;->x(Lcom/oplus/camera/CameraManager;I)I

    const-string v0, "execute, openCamera"

    .line 22464
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 22466
    iput v0, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    .line 22467
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v3}, Lcom/oplus/camera/CameraManager;->l(I)Z

    goto :goto_0

    .line 22469
    :cond_3
    iput v3, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    const-string v0, "execute, STATUS_SESSION_CLOSED createCaptureSession"

    .line 22471
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22473
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->y(Lcom/oplus/camera/CameraManager;I)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/e/h;)Lcom/oplus/camera/e/h;

    .line 22474
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/h;)V

    .line 22476
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/CameraManager;->n(I)V

    goto :goto_0

    .line 22443
    :cond_4
    iput v2, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    const-string v0, "execute, send closeCaptureSession"

    .line 22446
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22448
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$o;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->ar()V

    const-string p0, "ModeChangeTaskDelay"

    .line 22450
    invoke-static {p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(I)Lcom/oplus/camera/CameraManager$o;
    .locals 0

    .line 22526
    iput p1, p0, Lcom/oplus/camera/CameraManager$o;->h:I

    return-object p0
.end method

.method public b(Lcom/oplus/camera/capmode/BaseMode;)Lcom/oplus/camera/CameraManager$o;
    .locals 0

    .line 22554
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$o;->k:Lcom/oplus/camera/capmode/BaseMode;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/oplus/camera/CameraManager$o;
    .locals 0

    .line 22516
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/oplus/camera/CameraManager$o;
    .locals 0

    .line 22541
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$o;->a:Z

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 22487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnCameraOpened mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeTask"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22489
    iget v0, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 22490
    iput v0, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    :cond_0
    return-void
.end method

.method public c(I)Lcom/oplus/camera/CameraManager$o;
    .locals 0

    .line 22531
    iput p1, p0, Lcom/oplus/camera/CameraManager$o;->i:I

    return-object p0
.end method

.method public c()V
    .locals 2

    .line 22495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnSessionClosed mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeTask"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 22497
    iput v0, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    return-void
.end method

.method public d()V
    .locals 2

    .line 22501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnSessionClosing mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeTask"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 22503
    iput v0, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/CameraManager$o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBeforeModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAfterModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBeforeModeProperCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/CameraManager$o;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAfterModeProperCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/CameraManager$o;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbBeforeHFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/CameraManager$o;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mbAfterHFR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/CameraManager$o;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBeforeOperatingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/CameraManager$o;->i:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
