.class public Lcom/oplus/camera/CameraManager$n;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/oplus/camera/CameraManager$o;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z


# direct methods
.method protected constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 22189
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 22191
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    const/4 p1, 0x0

    .line 22192
    iput p1, p0, Lcom/oplus/camera/CameraManager$n;->c:I

    .line 22193
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$n;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/CameraManager$n;)V
    .locals 0

    .line 22189
    invoke-direct {p0}, Lcom/oplus/camera/CameraManager$n;->k()V

    return-void
.end method

.method private k()V
    .locals 3

    .line 22222
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22223
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->h()Lcom/oplus/camera/CameraManager$o;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ModeChangeExecutor"

    const-string v2, "handleOnSessionClosing, firstTask is null "

    .line 22226
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 22228
    iput v1, p0, Lcom/oplus/camera/CameraManager$n;->c:I

    .line 22229
    monitor-exit v0

    return-void

    .line 22232
    :cond_0
    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager$o;->d()V

    .line 22233
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lcom/oplus/camera/CameraManager$o;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 22345
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22346
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 22347
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    :cond_1
    const-string v1, "ModeChangeExecutor"

    .line 22350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addModeChangeTask, task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22352
    iget v1, p0, Lcom/oplus/camera/CameraManager$n;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 22353
    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager$o;->d()V

    goto :goto_0

    .line 22354
    :cond_2
    iget v1, p0, Lcom/oplus/camera/CameraManager$n;->c:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 22355
    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager$o;->c()V

    .line 22358
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v1, v2, :cond_4

    .line 22359
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;Z)Z

    :cond_4
    const/4 v1, 0x0

    .line 22362
    iput v1, p0, Lcom/oplus/camera/CameraManager$n;->c:I

    .line 22364
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt v1, v2, :cond_5

    .line 22365
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22367
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 22368
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 22370
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22372
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->f()V

    return-void

    :catchall_0
    move-exception p0

    .line 22370
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a()Z
    .locals 2

    .line 22196
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22197
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 22198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(I)Z
    .locals 2

    .line 22216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSwitchCamera, mProperCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ci(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", properCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeExecutor"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22218
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ci(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()I
    .locals 2

    .line 22202
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22203
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 22204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(I)V
    .locals 3

    .line 22263
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->h()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    .line 22265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnSessionConfigured, cameraRole: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", firstTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModeChangeExecutor"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 22268
    iget-boolean v0, v0, Lcom/oplus/camera/CameraManager$o;->a:Z

    iput-boolean v0, p0, Lcom/oplus/camera/CameraManager$n;->d:Z

    .line 22270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnSessionConfigured, mbCurrentHFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/CameraManager$n;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 22274
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->g()V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 2

    .line 22208
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22209
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    .line 22210
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget p0, p0, Lcom/oplus/camera/CameraManager$n;->c:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 22212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d()V
    .locals 3

    .line 22237
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22238
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->h()Lcom/oplus/camera/CameraManager$o;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ModeChangeExecutor"

    const-string v2, "handleOnSessionClosed, firstTask is null "

    .line 22241
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 22243
    iput v1, p0, Lcom/oplus/camera/CameraManager$n;->c:I

    .line 22244
    monitor-exit v0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 22247
    invoke-static {v1}, Lcom/oplus/camera/CameraManager$o;->b(Lcom/oplus/camera/CameraManager$o;)Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 22248
    invoke-static {v1}, Lcom/oplus/camera/CameraManager$o;->b(Lcom/oplus/camera/CameraManager$o;)Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/BaseMode;->closeImageReader()V

    .line 22251
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager$o;->c()V

    .line 22252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22254
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$n$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$n$1;-><init>(Lcom/oplus/camera/CameraManager$n;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 22252
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public e()V
    .locals 2

    const-string v0, "ModeChangeExecutor"

    const-string v1, "handleOnCameraOpened"

    .line 22279
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22281
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->h()Lcom/oplus/camera/CameraManager$o;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 22284
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$o;->b()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 6

    .line 22289
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 22290
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->h()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    .line 22294
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 22295
    :try_start_0
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 22296
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 22298
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    .line 22301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "looperExecuteModeChangeTask, firstTask: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager$o;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ModeChangeExecutor"

    invoke-static {v5, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22303
    invoke-static {v0}, Lcom/oplus/camera/CameraManager$o;->c(Lcom/oplus/camera/CameraManager$o;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-le v3, v2, :cond_2

    .line 22310
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->g()V

    .line 22312
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->h()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22315
    invoke-static {v0, v5}, Lcom/oplus/camera/CameraManager$o;->a(Lcom/oplus/camera/CameraManager$o;I)I

    .line 22316
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager$o;->a()V

    goto :goto_1

    .line 22319
    :cond_2
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager$o;->a()V

    goto :goto_1

    .line 22305
    :cond_3
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager$o;->a()V

    .line 22329
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22330
    :try_start_1
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    .line 22331
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looperExecuteModeChangeTask, after size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ModeChangeExecutor"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_6

    .line 22336
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/oplus/camera/w/b;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 22331
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 22298
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public g()V
    .locals 2

    .line 22376
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22377
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 22378
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    const-string p0, "ModeChangeExecutor"

    const-string v1, "popFirstModeChangeTask X "

    .line 22380
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22382
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

.method public h()Lcom/oplus/camera/CameraManager$o;
    .locals 2

    .line 22388
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22389
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 22390
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/CameraManager$o;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 22392
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public i()Lcom/oplus/camera/CameraManager$o;
    .locals 2

    .line 22398
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22399
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 22400
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/CameraManager$o;

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 22403
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 22404
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public j()V
    .locals 2

    const-string v0, "ModeChangeExecutor"

    const-string v1, "release"

    .line 22408
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22410
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$n;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dL(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22411
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 22412
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$n;->b:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    .line 22414
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
