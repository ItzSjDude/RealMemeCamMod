.class public abstract Lcom/oplus/camera/m/d;
.super Ljava/lang/Object;
.source "ProcessQueueThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/m/d$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/concurrent/ExecutorService;

.field private b:I

.field private c:I

.field private volatile d:I

.field private e:Z

.field private f:Lcom/oplus/camera/m/d$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/oplus/camera/m/d;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/oplus/camera/m/d;->b:I

    .line 19
    iput v1, p0, Lcom/oplus/camera/m/d;->c:I

    .line 20
    iput v1, p0, Lcom/oplus/camera/m/d;->d:I

    .line 21
    iput-boolean v1, p0, Lcom/oplus/camera/m/d;->e:Z

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/m/d;)I
    .locals 2

    .line 13
    iget v0, p0, Lcom/oplus/camera/m/d;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oplus/camera/m/d;->c:I

    return v0
.end method

.method private a()V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/oplus/camera/m/d;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/m/d;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ProcessQueueThread"

    const-string v0, "checkAndKillProcess will kill camera process"

    .line 162
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/m/d;)Lcom/oplus/camera/m/d$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/m/d;)I
    .locals 2

    .line 13
    iget v0, p0, Lcom/oplus/camera/m/d;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oplus/camera/m/d;->b:I

    return v0
.end method

.method static synthetic d(Lcom/oplus/camera/m/d;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/oplus/camera/m/d;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/m/d$a;)V
    .locals 0

    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Lcom/oplus/camera/Storage$CameraPicture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final c(Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pictureArrive, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessQueueThread"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget v0, p0, Lcom/oplus/camera/m/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/m/d;->c:I

    const-string v0, "raw"

    .line 97
    iget-object v1, p1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lcom/oplus/camera/m/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/m/d;->b:I

    .line 100
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v0, "com.oplus.only.high.picture.size.heif.in.aps"

    .line 102
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->i:Ljava/lang/String;

    const-string v1, "panorama"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v1, "heic_8bits"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v1, "heic_10bits"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-boolean v0, p1, Lcom/oplus/camera/Storage$CameraPicture;->X:Z

    if-nez v0, :cond_8

    .line 108
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/m/d;->b(Lcom/oplus/camera/Storage$CameraPicture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    monitor-enter p0

    .line 113
    :try_start_2
    iget v0, p0, Lcom/oplus/camera/m/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/camera/m/d;->c:I

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    invoke-interface {v0}, Lcom/oplus/camera/m/d$a;->a()V

    :cond_2
    const-string v0, "raw"

    .line 119
    iget-object p1, p1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 120
    iget p1, p0, Lcom/oplus/camera/m/d;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oplus/camera/m/d;->b:I

    .line 123
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/m/d;->a()V

    .line 124
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    monitor-enter p0

    .line 113
    :try_start_4
    iget v0, p0, Lcom/oplus/camera/m/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/camera/m/d;->c:I

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    invoke-interface {v0}, Lcom/oplus/camera/m/d$a;->a()V

    :cond_4
    const-string v0, "raw"

    .line 119
    iget-object p1, p1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 120
    iget p1, p0, Lcom/oplus/camera/m/d;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oplus/camera/m/d;->b:I

    .line 123
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/m/d;->a()V

    .line 124
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 112
    :goto_0
    monitor-enter p0

    .line 113
    :try_start_5
    iget v1, p0, Lcom/oplus/camera/m/d;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/oplus/camera/m/d;->c:I

    .line 115
    iget-object v1, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    if-eqz v1, :cond_6

    .line 116
    iget-object v1, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    invoke-interface {v1}, Lcom/oplus/camera/m/d$a;->a()V

    :cond_6
    const-string v1, "raw"

    .line 119
    iget-object p1, p1, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 120
    iget p1, p0, Lcom/oplus/camera/m/d;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oplus/camera/m/d;->b:I

    .line 123
    :cond_7
    invoke-direct {p0}, Lcom/oplus/camera/m/d;->a()V

    .line 124
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 125
    throw v0

    :catchall_3
    move-exception p1

    .line 124
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/m/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oplus/camera/m/d$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/m/d$1;-><init>(Lcom/oplus/camera/m/d;Lcom/oplus/camera/Storage$CameraPicture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_1
    return-void

    :catchall_4
    move-exception p1

    .line 100
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1
.end method

.method public d()V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/oplus/camera/m/d;->b()V

    .line 39
    iget-object v0, p0, Lcom/oplus/camera/m/d;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/m/d;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public e()I
    .locals 2

    const-string v0, "ProcessQueueThread"

    const-string v1, "getSaveListRawCount"

    .line 45
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget v0, p0, Lcom/oplus/camera/m/d;->b:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget v0, p0, Lcom/oplus/camera/m/d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Z
    .locals 1

    monitor-enter p0

    .line 61
    :try_start_0
    iget v0, p0, Lcom/oplus/camera/m/d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()V
    .locals 3

    monitor-enter p0

    .line 65
    :try_start_0
    iget v0, p0, Lcom/oplus/camera/m/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/m/d;->d:I

    const-string v0, "ProcessQueueThread"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterAddFrame, mCaptureSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/m/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 3

    monitor-enter p0

    .line 71
    :try_start_0
    iget v0, p0, Lcom/oplus/camera/m/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/camera/m/d;->d:I

    const-string v0, "ProcessQueueThread"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPicReceiveFromAPS, mCaptureSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/m/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ProcessQueueThread"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageCaptureListIsEmpty, mCaptureSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/m/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/oplus/camera/m/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()V
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/m/d;->f:Lcom/oplus/camera/m/d$a;

    invoke-interface {v0}, Lcom/oplus/camera/m/d$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
